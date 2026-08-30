Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish.fish.38b934acfd6838ec-cgu.5?download=true
inline.NumInlined: 144
inline.NumDeleted: 112
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtCs3zOvCg6Ax1K_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtB5_5types11FluentValueECs4RW8js5ES7g_4fish:bb.a

bb.i:                                             ; preds = %.body.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.j:                                             ; preds = %bb.c
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21
          to label %bb.l unwind label %bb.o

bb.k:                                             ; preds = %bb.m, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.m ], [ %eh.lpad-body.i, %.body.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ak, ptr noundef nonnull align 8 dereferenceable(120) %3, i64 120, i1 false)
  br label %.thread

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs4RW8js5ES7g_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ai, ptr noundef nonnull align 8 dereferenceable(120) %3, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.n:                                             ; preds = %bb.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs4RW8js5ES7g_4fish.exit
  ret void

bb.o:                                             ; preds = %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(120) %i.b) #20
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.q:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #20
          to label %.thread unwind label %bb.p

bb.r:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i.ph = phi i64 [ %i.z, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ao, ptr noundef nonnull align 8 dereferenceable(120) %3, i64 120, i1 false)
  store i64 -1, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %2, ptr %.sroa.539.0..sroa_idx, align 8
  %i.ap = icmp ult i64 %i.g, 64051194700380388
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = load i64, ptr %0, align 8, !range !47, !alias.scope !48, !noalias !51, !noundef !5
  %i.ar = icmp eq i64 %i.g, %i.aq
  br i1 %i.ar, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEE8grow_oneCs476pBYQK2Ku_11fish_fluent(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %._crit_edge unwind label %bb.u, !noalias !51

._crit_edge:                                      ; preds = %bb.s
  %.pre = load ptr, ptr %i.d, align 8, !alias.scope !48, !noalias !51
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.r
  %i.as = phi ptr [ %.pre, %._crit_edge ], [ %i.e, %bb.r ]
  %i.at = getelementptr inbounds nuw [144 x i8], ptr %i.as, i64 %.sroa.4.0.i.i.ph ; 3 uses
  %i.au = icmp samesign ult i64 %.sroa.4.0.i.i.ph, %i.g
  br i1 %i.au, label %bb.v, label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTINtNtCs1xwejQucwHj_5alloc6borrow3CoweENtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.a) #20
          to label %.thread unwind label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 144
  %i.ax = sub nuw nsw i64 %i.g, %.sroa.4.0.i.i.ph
  %i.ay = mul nuw nsw i64 %i.ax, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr nonnull align 8 %i.at, i64 %i.ay, i1 false), !noalias !51
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.x:                                             ; preds = %bb.v, %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.at, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false)
  %i.ba = add nuw nsw i64 %i.g, 1
  store i64 %i.ba, ptr %i.f, align 8, !alias.scope !48, !noalias !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

.thread:                                          ; preds = %bb.q, %bb.k, %bb.u
  %.pn11.pn18 = phi { ptr, i32 } [ %i.am, %bb.q ], [ %eh.lpad-body, %bb.k ], [ %i.av, %bb.u ]
  resume { ptr, i32 } %.pn11.pn18
}

; Function Attrs: cold minsize nonlazybind optsize uwtable
define hidden void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE10initializeNCINvB2_11get_or_initNCNvB2_10try_insert0E0zECs4RW8js5ES7g_4fish(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load atomic i32, ptr %i.d acquire, align 8, !noalias !53
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE10initializeNCINvB18_11get_or_initNCNvB18_10try_insert0E0zE0ECs4RW8js5ES7g_4fish.exit, label %bb.b, !prof !56

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !53
  store ptr %1, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !53
  store ptr %i.c, ptr %i.b, align 8, !noalias !53
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 %i.d, i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4), !noalias !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !53
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE10initializeNCINvB18_11get_or_initNCNvB18_10try_insert0E0zE0ECs4RW8js5ES7g_4fish.exit

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE10initializeNCINvB18_11get_or_initNCNvB18_10try_insert0E0zE0ECs4RW8js5ES7g_4fish.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB3_5Error13append_to_msgcECs4RW8js5ES7g_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke noundef nonnull align 8 ptr @_RNvMs1_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE6to_mutCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1)
          to label %.noexc unwind label %bb.c     ; 5 uses

.noexc:                                           ; preds = %bb.a
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
          to label %.noexc1 unwind label %bb.c

.noexc1:                                          ; preds = %.noexc
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !57, !noundef !5 ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !range !47, !alias.scope !57, !noundef !5
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.noexc1
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #22
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorECs4RW8js5ES7g_4fish(ptr noalias nofree noundef align 8 dereferenceable(72) %1) #20
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %.noexc1, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !57, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.c
  store i32 %2, ptr %i.i, align 4
  %i.j = add i64 %i.c, 1
  store i64 %i.j, ptr %i.b, align 8, !alias.scope !57
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtB1g_8LruEntryB1F_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1J_11wait_handle10WaitHandleEEEENtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs4RW8js5ES7g_4fish(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 5 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner12free_bucketsNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs4RW8js5ES7g_4fish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.d = icmp eq i64 %i.b, -1
  br i1 %i.d, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i64 %3, -1                           ; 2 uses
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i64 %i.b, 1
  %i.h = mul nuw i64 %i.g, %2                     ; 2 uses
  %i.i = add i64 %i.h, %i.e                       ; 2 uses
  %i.j = icmp uge i64 %i.i, %i.h
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub i64 0, %3
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = icmp ugt i64 %i.b, -18
  br i1 %i.m, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23, !noalias !66
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = add nuw i64 %i.b, 17
  %i.o = add i64 %i.n, %i.l                       ; 3 uses
  %i.p = icmp uge i64 %i.o, %i.l
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp slt i64 %i.e, 0
  br i1 %i.q, label %_RNvMs1_NtCs25YkazkrsH5_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, label %bb.i

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #23, !noalias !66
  unreachable

_RNvMs1_NtCs25YkazkrsH5_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.f
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #23, !noalias !66
  unreachable

bb.h:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #23
  unreachable

bb.i:                                             ; preds = %bb.f
  %4 = sub nuw i64 -9223372036854775808, %3
  %5 = icmp ule i64 %i.o, %4
  tail call void @llvm.assume(i1 %5)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.r = sub nsw i64 0, %i.l
  %i.s = getelementptr inbounds i8, ptr %.val, i64 %i.r
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %3) #24
  br label %_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner12free_bucketsNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs4RW8js5ES7g_4fish.exit

_RINvMsa_NtCs25YkazkrsH5_9hashbrown3rawNtB6_13RawTableInner12free_bucketsNtNtNtNtCshZ5T49Ks0oD_14allocator_api26stable5alloc6global6GlobalECs4RW8js5ES7g_4fish.exit: ; preds = %bb.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !41, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs4RW8js5ES7g_4fish.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECs4RW8js5ES7g_4fish.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs25YkazkrsH5_9hashbrown3raw8RawDrainTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtB2_8non_null7NonNullINtB1l_8LruEntryB1K_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1O_11wait_handle10WaitHandleEEEEEECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !75, !noundef !5 ; 7 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.thread.i.i, label %bb.b

.thread.i.i:                                      ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.e, align 8, !alias.scope !75
  br label %_RNvXsJ_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawDrainTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1l_11wait_handle10WaitHandleEEEEENtNtNtB1V_3ops4drop4Drop4dropCs4RW8js5ES7g_4fish.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !alias.scope !75, !nonnull !5, !noundef !5
  %i.g = icmp eq i64 %i.c, -1
  br i1 %i.g, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.h = add nuw i64 %i.c, 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.f, i8 -1, i64 %i.h, i1 false), !noalias !75
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.i, align 8, !alias.scope !75
  %i.j = icmp ult i64 %i.c, 8
  br i1 %i.j, label %_RNvXsJ_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawDrainTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1l_11wait_handle10WaitHandleEEEEENtNtNtB1V_3ops4drop4Drop4dropCs4RW8js5ES7g_4fish.exit, label %bb.g

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp ult i64 %i.c, -17
  br i1 %.not.i.i, label %bb.c, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !noalias !75
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !noalias !75
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.k = add nuw i64 %i.c, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  br label %_RNvXsJ_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawDrainTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1l_11wait_handle10WaitHandleEEEEENtNtNtB1V_3ops4drop4Drop4dropCs4RW8js5ES7g_4fish.exit

_RNvXsJ_NtCs25YkazkrsH5_9hashbrown3rawINtB5_8RawDrainTINtCskOHnqPTvc0z_3lru6KeyRefNtNtCs8frGy5WneL6_4fish4proc3PidEINtNtNtCs3oUPovFnLWP_4core3ptr8non_null7NonNullINtBS_8LruEntryB1h_INtNtCs1xwejQucwHj_5alloc2rc2RcNtNtB1l_11wait_handle10WaitHandleEEEEENtNtNtB1V_3ops4drop4Drop4dropCs4RW8js5ES7g_4fish.exit: ; preds = %.thread.i.i, %bb.c, %bb.g
  %.sroa.0.0.i.i = phi i64 [ %i.c, %bb.c ], [ %i.m, %bb.g ], [ 0, %.thread.i.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.0.i.i, ptr %i.n, align 8, !alias.scope !75
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !69, !nonnull !5, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs3zOvCg6Ax1K_13fluent_bundle5types11FluentValueECs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !76, !noundef !5 ; 3 uses
  %i.b = icmp ne i64 %i.a, 3
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %i.d = icmp samesign ugt i64 %i.a, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit [
    i64 0, label %bb.b
    i64 1, label %bb.f
    i64 2, label %bb.j
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit: ; preds = %bb.m, %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i.i.i, %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !range !41, !alias.scope !77, !noundef !5
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.o, %bb.h, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.i, %bb.d ], [ %i.x, %bb.o ], [ %i.x, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !range !41, !alias.scope !80, !noundef !5
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs4RW8js5ES7g_4fish.exit.i.i.i: ; preds = %bb.g
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs4RW8js5ES7g_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit

bb.j:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.p, align 8             ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.q, align 8, !nonnull !5, !align !87, !noundef !5 ; 5 uses
  %i.r = load ptr, ptr %.val1, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.r(ptr noundef nonnull %.val)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !47, !invariant.load !5 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !88, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECs4RW8js5ES7g_4fish.exit

bb.n:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !47, !invariant.load !5 ; 2 uses
end_hunk_0
