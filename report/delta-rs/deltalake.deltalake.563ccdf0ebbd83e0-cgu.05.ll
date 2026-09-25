Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.05?download=true
inline.NumInlined: 6673
inline.NumDeleted: 2611
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RNvMs4_NtNtCsonPGffhQyS_5regex5regex6stringNtB5_5Regex11captures_at:_RINvMNtNtCslw7hBPHc6qc_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEECs7p2uQeJxui2_9deltalake.exit
_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.e
  %.pre = load i64, ptr %i.b, align 8, !range !10, !noalias !11051
  %i.ba = trunc nuw i64 %.pre to i1
  %i.bb = load ptr, ptr %i.k, align 8, !noalias !11051, !nonnull !11, !noundef !11
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !11051, !nonnull !11, !align !15, !noundef !11 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !range !35, !invariant.load !11, !noalias !11051
  %i.bg = add nsw i64 %i.bf, -1
  %i.bh = and i64 %i.bg, -16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i.thread, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i
  %i.bk = phi ptr [ %i.az, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i.thread ], [ %i.bj, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i ]
  %i.bl = phi ptr [ %i.at, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i.thread ], [ %i.bd, %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !11051, !nonnull !11, !align !15, !noundef !11
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  br label %bb.h

bb.g:                                             ; preds = %_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE3getCs7p2uQeJxui2_9deltalake.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !11051, !nonnull !11, !noundef !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.br = phi ptr [ %i.bk, %bb.f ], [ %i.bj, %bb.g ]
  %i.bs = phi ptr [ %i.bl, %bb.f ], [ %i.bd, %bb.g ]
  %i.bt = phi i1 [ true, %bb.f ], [ false, %bb.g ]
  %.sroa.01.0.i = phi ptr [ %i.bo, %bb.f ], [ %i.bq, %bb.g ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !11, !noalias !11051, !nonnull !11
  %i.bw = invoke { i32, i32 } %i.bv(ptr noundef nonnull %i.br, ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.01.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 %i.g, i64 noundef range(i64 0, 1152921504606846976) %i.i)
          to label %bb.i unwind label %bb.n       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !11051 ; 5 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !11051 ; 4 uses
  %.sroa.46.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.46.0.copyload.i = load i8, ptr %.sroa.46.0..sroa_idx.i10, align 8, !noalias !11051
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11051
  %i.bx = ptrtoint ptr %.sroa.2.0.copyload.i to i64 ; 2 uses
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %i.bx, ptr %i.a, align 8, !noalias !11054
  %i.by = icmp eq ptr %.sroa.2.0.copyload.i, inttoptr (i64 2 to ptr)
  br i1 %i.by, label %.noexc10.i, label %.noexc11.i, !prof !14

bb.k:                                             ; preds = %bb.i
  %i.bz = trunc nuw i8 %.sroa.46.0.copyload.i to i1
  br i1 %i.bz, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i) ]
  invoke fastcc void @_RNvMs2_NtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtCsbvkFyIu7lgC_4core3ops8function2FnuEp6OutputB16_NtNtB2d_6marker4SyncNtB32_4SendNtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtB3x_10UnwindSafeEL_EE9put_valueCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %.sroa.3.0.copyload.i, ptr noalias noundef nonnull align 8 %.sroa.2.0.copyload.i) #40
          to label %bb.q unwind label %bb.p

bb.m:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCslw7hBPHc6qc_14regex_automata4meta5regex5CacheEECs7p2uQeJxui2_9deltalake(ptr nonnull %.sroa.2.0.copyload.i)
          to label %bb.q unwind label %bb.p

.noexc10.i:                                       ; preds = %bb.j
  invoke void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtNtCslw7hBPHc6qc_14regex_automata4util4pool5inner17THREAD_ID_DROPPED, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @215) #41
          to label %.noexc14 unwind label %bb.p

.noexc14:                                         ; preds = %.noexc10.i
  unreachable

.noexc11.i:                                       ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload.i) ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i, i64 40
  store atomic i64 %i.bx, ptr %i.ca release, align 8
  br label %bb.q

bb.n:                                             ; preds = %bb.h
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCslw7hBPHc6qc_14regex_automata4util4pool9PoolGuardNtNtNtBN_4meta5regex5CacheINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1B_NtNtB4_6marker4SyncNtB3h_4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3L_10UnwindSafeEL_EEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(32) %i.b) #37
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.p:                                             ; preds = %.noexc10.i, %bb.m, %bb.l, %bb.e, %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.cc, %bb.p ], [ %lpad.thr_comm.split-lp.i, %bb.n ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.c) #37
          to label %bb.x unwind label %bb.w

.thread:                                          ; preds = %_RINvMNtNtCslw7hBPHc6qc_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejEECs7p2uQeJxui2_9deltalake.exit, %_RNvMs4_NtNtCslw7hBPHc6qc_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.e, align 8
  br label %bb.s

bb.q:                                             ; preds = %.noexc11.i, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11051
  %i.cd = extractvalue { i32, i32 } %i.bw, 1
  %i.ce = extractvalue { i32, i32 } %i.bw, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.ce, ptr %i.e, align 8
  store i32 %i.cd, ptr %i.cf, align 4
  %i.cg = icmp eq i32 %i.ce, 1
  br i1 %i.cg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ch = load ptr, ptr %i.l, align 8, !nonnull !11, !noundef !11
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 168
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load i64, ptr %i.ck, align 8, !range !10, !noundef !11
  %i.cm = trunc nuw i64 %i.cl to i1
  br i1 %i.cm, label %bb.t, label %bb.u

bb.s:                                             ; preds = %.thread, %bb.q
  store i64 2, ptr %0, align 8
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCslw7hBPHc6qc_14regex_automata4util8captures8CapturesECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(40) %i.c)
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = call i64 @llvm.uadd.sat.i64(i64 %i.co, i64 1)
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t
  %.sroa.3.0 = phi i64 [ %i.cp, %bb.t ], [ undef, %bb.r ]
  %.sroa.0.0 = phi i64 [ 1, %bb.t ], [ 0, %bb.r ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %3, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.w:                                             ; preds = %.body
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.x:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs7p2uQeJxui2_9deltalake.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %1, 15
  br i1 %i.b, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.c, label %bb.h, label %bb.d, !prof !14

.thread.i:                                        ; preds = %bb.b
  %i.d = icmp samesign ult i64 %1, 4
  %i.e = and i64 %1, 8
  %..i.i = add nuw nsw i64 %i.e, 8
  %.sroa.03.0.i.i = select i1 %i.d, i64 4, i64 %..i.i
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = shl nuw i64 %1, 3
  %i.g = udiv i64 %i.f, 7
  %i.h = add nsw i64 %i.g, -1
  %i.i = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.h, i1 true)
  %i.j = lshr i64 -1, %i.i                        ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 1
  %i.l = icmp samesign ugt i64 %i.j, 2305843009213693950
  br i1 %i.l, label %bb.f, label %bb.e, !prof !11059

bb.e:                                             ; preds = %bb.d, %.thread.i
  %.sroa.4.0.i.ph10.i = phi i64 [ %.sroa.03.0.i.i, %.thread.i ], [ %i.k, %bb.d ] ; 5 uses
  %i.m = shl nuw i64 %.sroa.4.0.i.ph10.i, 3       ; 3 uses
  %i.n = add nuw nsw i64 %.sroa.4.0.i.ph10.i, 16  ; 2 uses
  %i.o = add i64 %i.n, %i.m                       ; 4 uses
  %i.p = icmp ult i64 %i.o, %i.m
  %i.q = icmp ugt i64 %i.o, 9223372036854775792
  %or.cond.i.i = or i1 %i.p, %i.q
  br i1 %or.cond.i.i, label %bb.f, label %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i, !prof !32

_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i: ; preds = %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !11060
  %i.r = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 16) #33, !noalias !11060 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %bb.i

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #41, !noalias !11060
  unreachable

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i
  tail call void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.o) #42, !noalias !11060
  unreachable

bb.h:                                             ; preds = %bb.c
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #41, !noalias !11061
  unreachable

bb.i:                                             ; preds = %_RNvXs_NtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.m ; 2 uses
  %i.u = add nsw i64 %.sroa.4.0.i.ph10.i, -1      ; 2 uses
  %i.v = icmp samesign ult i64 %.sroa.4.0.i.ph10.i, 9
  %i.w = lshr i64 %.sroa.4.0.i.ph10.i, 3
  %i.x = mul nuw nsw i64 %i.w, 7
  %.sroa.07.0.i.i = select i1 %i.v, i64 %i.u, i64 %i.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, i8 -1, i64 %i.n, i1 false), !noalias !11061
  br label %_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs7p2uQeJxui2_9deltalake.exit

_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.a, %bb.i
  %.sroa.6.0 = phi i64 [ %.sroa.07.0.i.i, %bb.i ], [ 0, %bb.a ]
  %.sroa.5.0 = phi i64 [ %i.u, %bb.i ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.t, %bb.i ], [ @21, %bb.a ]
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EE16with_capacity_inCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 48, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBP_EEE16with_capacity_inCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 48, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionNtCs7p2uQeJxui2_9deltalake16ColumnPropertiesEEE16with_capacity_inB25_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 120, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema13MetadataValueEE16with_capacity_inCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 56, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE16with_capacity_inCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 56, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringxEE16with_capacity_inCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 32, i64 noundef %1)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE14insert_no_growCs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %2) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.a, align 8, !noundef !11 ; 4 uses
  %.sroa.0.07.i = and i64 %.val3, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !11064
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !16

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val3                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !11 ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !14

bb.b:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val3             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !11064
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !17

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val3
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [64 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE16with_capacity_inCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 64, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE18disconnect_sendersCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8
  %i.e = load i64, ptr %i.a, align 16, !noundef !11
  %i.f = and i64 %i.e, %i.d
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !noalias !11109 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !noalias !11109, !noundef !11 ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
end_hunk_0
