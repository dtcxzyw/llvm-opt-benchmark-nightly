Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.07?download=true
inline.NumInlined: 365
inline.NumDeleted: 133
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel20next_expiration_time:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %.sroa.3.0 = select i1 %i.c, i64 %i.e, i64 undef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = tail call { ptr, i64 } @_RINvXsb_NtNtCs1xwejQucwHj_5alloc5boxed4iterINtB8_3BoxSNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5LevelEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1X_8adapters3map3MapINtNtNtB1Z_3ops5range5RangejENvMBS_BQ_3newEEB10_(i64 noundef 0, i64 noundef 6) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 3 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.e = icmp eq i64 %i.d, 6
  br i1 %i.e, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxANtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5Levelj6_EIBI_SB1h_EE6unwrapB1r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !182
  store ptr %i.c, ptr %i.a, align 8, !noalias !182
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %i.d, ptr %i.f, align 8, !noalias !182
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #24
          to label %bb.e unwind label %bb.c, !noalias !182

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %.val1.i = load i64, ptr %i.f, align 8, !alias.scope !183, !noalias !182, !noundef !4 ; 2 uses
  %i.h = icmp eq i64 %.val1.i, 0
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5LevelEEB1l_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !183, !noalias !182, !nonnull !4, !noundef !4
  %i.i = mul nuw nsw i64 %.val1.i, 1040
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef 8) #29, !noalias !184
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5LevelEEB1l_.exit

bb.e:                                             ; preds = %bb.b
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5LevelEEB1l_.exit: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.g

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxANtNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5level5Levelj6_EIBI_SB1h_EE6unwrapB1r_.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8
  store ptr %i.c, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel4poll(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !204, !noundef !4 ; 2 uses
  %.not.i42 = icmp eq ptr %i.j, null
  br i1 %.not.i42, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit11, %bb.a
  %.lcssa = phi ptr [ %i.j, %bb.a ], [ %i.bg, %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit11 ] ; 3 uses
  %i.o = load ptr, ptr %.lcssa, align 8, !noalias !205, !noundef !4 ; 3 uses
  store ptr %i.o, ptr %i.i, align 8, !alias.scope !205
  %.not6.i = icmp eq ptr %i.o, null
  br i1 %.not6.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr null, ptr %i.p, align 8, !noalias !205
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7.sink.split

bb.c:                                             ; preds = %._crit_edge
  store ptr null, ptr %i.h, align 8, !alias.scope !205
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7.sink.split

bb.d:                                             ; preds = %.lr.ph, %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit11
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call fastcc void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel15next_expiration(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.q = load i64, ptr %i.g, align 8, !range !6, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.e, label %bb.f

_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7.sink.split: ; preds = %bb.c, %bb.b, %bb.k, %bb.l
  %.sink = phi ptr [ %i.w, %bb.k ], [ %i.w, %bb.l ], [ %.lcssa, %bb.b ], [ %.lcssa, %bb.c ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, i8 0, i64 16, i1 false), !noalias !4
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7

_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7: ; preds = %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7.sink.split, %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit
  %.sroa.0.0 = phi ptr [ null, %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit ], [ %.sink, %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7.sink.split ]
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.k, align 8, !noundef !4 ; 7 uses
  %.not3 = icmp ugt i64 %i.s, %1
  br i1 %.not3, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %1, ptr %i.f, align 8, !noalias !206
  %i.t = load i64, ptr %i.n, align 8, !alias.scope !206, !noundef !4 ; 2 uses
  %.not.i4 = icmp ugt i64 %i.t, %1
  br i1 %.not.i4, label %bb.g, label %bb.h, !prof !15

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !206
  store ptr %i.n, ptr %i.e, align 8, !noalias !206
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsX_NtNtCs3oUPovFnLWP_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !206
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.u, align 8, !noalias !206
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsX_NtNtCs3oUPovFnLWP_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !206
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @23, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = icmp ugt i64 %1, %i.t
  br i1 %i.v, label %bb.i, label %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit

bb.i:                                             ; preds = %bb.h
  store i64 %1, ptr %i.n, align 8, !alias.scope !206
  br label %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit

_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.w = load ptr, ptr %i.i, align 8, !alias.scope !207, !noundef !4 ; 4 uses
  %.not.i5 = icmp eq ptr %i.w, null
  br i1 %.not.i5, label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7, label %bb.j

bb.j:                                             ; preds = %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit
  %i.x = load ptr, ptr %i.w, align 8, !noalias !207, !noundef !4 ; 3 uses
  store ptr %i.x, ptr %i.i, align 8, !alias.scope !207
  %.not6.i6 = icmp eq ptr %i.x, null
  br i1 %.not6.i6, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr null, ptr %i.y, align 8, !noalias !207
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7.sink.split

bb.l:                                             ; preds = %bb.j
  store ptr null, ptr %i.h, align 8, !alias.scope !207
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE8pop_backB9_.exit7.sink.split

bb.m:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.z = load i64, ptr %i.l, align 8, !alias.scope !209, !noundef !4 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 6
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !208, !nonnull !4, !noundef !4 ; 2 uses
  %i.ac = getelementptr inbounds nuw [1040 x i8], ptr %i.ab, i64 %i.z ; 2 uses
  %i.ad = load i64, ptr %i.m, align 8, !alias.scope !209, !noundef !4 ; 4 uses
  %i.ae = and i64 %i.ad, 63
  %i.af = shl nuw i64 1, %i.ae
  %i.ag = xor i64 %i.af, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 1032 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !210, !noundef !4
  %i.aj = and i64 %i.ai, %i.ag
  store i64 %i.aj, ptr %i.ah, align 8, !noalias !210
  %i.ak = icmp ult i64 %i.ad, 64
  br i1 %i.ak, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.z, i64 noundef 6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #23, !noalias !210
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !210, !noundef !4 ; 2 uses
  %.not.i11.i = icmp eq ptr %i.an, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false), !noalias !210
  br i1 %.not.i11.i, label %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel18process_expiration.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p
  %.promoted.i = load ptr, ptr %i.h, align 8, !alias.scope !208
  %.promoted15.i = load ptr, ptr %i.i, align 8, !alias.scope !208
  br label %.lr.ph.i.a

bb.q:                                             ; preds = %bb.n
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef 64, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #23, !noalias !210
  unreachable

.lr.ph.i.a:                                       ; preds = %bb.aa, %.lr.ph.i
  %2 = phi ptr [ %.promoted15.i, %.lr.ph.i ], [ %4, %bb.aa ] ; 3 uses
  %.sroa.4.01214.i = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %.sroa.4.01213.i, %bb.aa ] ; 5 uses
  %.sroa.4.012.i = phi ptr [ %i.an, %.lr.ph.i ], [ %i.ao, %bb.aa ] ; 13 uses
  %i.ao = load ptr, ptr %.sroa.4.012.i, align 8, !noalias !211, !noundef !4 ; 3 uses
  %.not6.i.i = icmp eq ptr %i.ao, null            ; 2 uses
  br i1 %.not6.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr null, ptr %i.ap, align 8, !noalias !211
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.012.i, i8 0, i64 16, i1 false), !noalias !211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !210
  store ptr %.sroa.4.012.i, ptr %i.d, align 8, !noalias !210
  %i.aq = call { i64, i64 } @_RNvMs9_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerHandle12mark_pending(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, i64 noundef %i.s), !noalias !210 ; 2 uses
  %i.ar = extractvalue { i64, i64 } %i.aq, 0
  %i.as = trunc nuw i64 %i.ar to i1
  br i1 %i.as, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.at = extractvalue { i64, i64 } %i.aq, 1
  %i.au = xor i64 %i.at, %i.s
  %i.av = or i64 %i.au, 63
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.av, i64 68719476734)
  %i.aw = call range(i64 28, 59) i64 @llvm.ctlz.i64(i64 %spec.store.select.i, i1 true)
  %i.ax = xor i64 %i.aw, 62                       ; 2 uses
  %.lhs.trunc.i = trunc nuw nsw i64 %i.ax to i8
  %i.ay = udiv i8 %.lhs.trunc.i, 6
  %.zext.i = zext nneg i8 %i.ay to i64            ; 2 uses
  %i.az = icmp samesign ult i64 %i.ax, 36
  br i1 %i.az, label %bb.ab, label %bb.ac

bb.u:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !210
  store ptr %.sroa.4.012.i, ptr %i.c, align 8, !noalias !213
  %i.ba = icmp eq ptr %.sroa.4.01214.i, %.sroa.4.012.i
  br i1 %i.ba, label %bb.w, label %bb.v, !prof !17

bb.v:                                             ; preds = %bb.u
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i, i64 8
  store ptr %.sroa.4.01214.i, ptr %i.bb, align 8, !noalias !213
  store ptr null, ptr %.sroa.4.012.i, align 8, !noalias !213
  %.not1.i.i = icmp eq ptr %.sroa.4.01214.i, null
  br i1 %.not1.i.i, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.u
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedINtNtB4_6option6OptionINtNtNtB4_3ptr8non_null7NonNullNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5entry11TimerSharedEEBM_EB1L_(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #23, !noalias !209
  unreachable

bb.x:                                             ; preds = %bb.v
  store ptr %.sroa.4.012.i, ptr %.sroa.4.01214.i, align 8, !noalias !213
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  store ptr %.sroa.4.012.i, ptr %i.h, align 8, !alias.scope !214
  %.not2.i.i = icmp eq ptr %2, null
  br i1 %.not2.i.i, label %bb.z, label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE10push_frontB9_.exit.i

bb.z:                                             ; preds = %bb.y
  store ptr %.sroa.4.012.i, ptr %i.i, align 8, !alias.scope !214
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE10push_frontB9_.exit.i

_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE10push_frontB9_.exit.i: ; preds = %bb.z, %bb.y
  %3 = phi ptr [ %2, %bb.y ], [ %.sroa.4.012.i, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !210
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE10push_frontB9_.exit.i
  %4 = phi ptr [ %2, %bb.ab ], [ %3, %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE10push_frontB9_.exit.i ]
  %.sroa.4.01213.i = phi ptr [ %.sroa.4.01214.i, %bb.ab ], [ %.sroa.4.012.i, %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE10push_frontB9_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !210
  br i1 %.not6.i.i, label %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel18process_expiration.exit, label %.lr.ph.i.a

bb.ab:                                            ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw [1040 x i8], ptr %i.ab, i64 %.zext.i
  call void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5levelNtB2_5Level9add_entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(1040) %i.bc, ptr noundef nonnull %.sroa.4.012.i), !noalias !210
  br label %bb.aa

bb.ac:                                            ; preds = %bb.t
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.zext.i, i64 noundef 6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #23, !noalias !210
  unreachable

_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel18process_expiration.exit: ; preds = %bb.aa, %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.s, ptr %i.b, align 8, !noalias !215
  %i.bd = load i64, ptr %i.n, align 8, !alias.scope !215, !noundef !4 ; 2 uses
  %.not.i8 = icmp ugt i64 %i.bd, %i.s
  br i1 %.not.i8, label %bb.ad, label %bb.ae, !prof !15

bb.ad:                                            ; preds = %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel18process_expiration.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !215
  store ptr %i.n, ptr %i.a, align 8, !noalias !215
  %.sroa.42.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsX_NtNtCs3oUPovFnLWP_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i9, align 8, !noalias !215
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.be, align 8, !noalias !215
  %.sroa.46.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsX_NtNtCs3oUPovFnLWP_4core3fmt3numyNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i10, align 8, !noalias !215
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #23
  unreachable

bb.ae:                                            ; preds = %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel18process_expiration.exit
  %i.bf = icmp ugt i64 %i.s, %i.bd
  br i1 %i.bf, label %bb.af, label %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit11

bb.af:                                            ; preds = %bb.ae
  store i64 %i.s, ptr %i.n, align 8, !alias.scope !215
  br label %_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit11

_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel11set_elapsed.exit11: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bg = load ptr, ptr %i.i, align 8, !alias.scope !216, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %bb.d, label %._crit_edge
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel6insert(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = call noundef i64 @_RNvMs9_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerHandle9sync_when(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.not = icmp ugt i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = xor i64 %i.d, %i.b
  %i.f = or i64 %i.e, 63
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.f, i64 68719476734)
  %i.g = call range(i64 28, 59) i64 @llvm.ctlz.i64(i64 %spec.store.select, i1 true)
  %i.h = xor i64 %i.g, 62                         ; 2 uses
  %.lhs.trunc = trunc nuw nsw i64 %i.h to i8
  %i.i = udiv i8 %.lhs.trunc, 6
  %.zext = zext nneg i8 %i.i to i64               ; 2 uses
  %i.j = icmp samesign ult i64 %i.h, 36
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw [1040 x i8], ptr %i.k, i64 %.zext
  call void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5levelNtB2_5Level9add_entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(1040) %i.l, ptr noundef nonnull %1)
  %i.m = inttoptr i64 %i.b to ptr
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.zext, i64 noundef 6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #23
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.3.0 = phi ptr [ %i.m, %bb.c ], [ %1, %bb.a ]
  %.sroa.0.0 = phi i64 [ 0, %bb.c ], [ 1, %bb.a ]
  %i.n = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.o = insertvalue { i64, ptr } %i.n, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel6remove(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RNvMs6_NtNtNtCslghKHtsL3a4_5tokio7runtime4time5entryNtB5_11TimerShared15registered_when(ptr noundef nonnull align 8 %1) ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.d = load ptr, ptr %1, align 8, !noalias !219, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !219, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.f, ptr %i.g, align 8, !noalias !219
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !219, !noundef !4
  %.not6.i = icmp eq ptr %i.h, %1
  br i1 %.not6.i, label %bb.f, label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE6removeB9_.exit

bb.e:                                             ; preds = %bb.f, %bb.c
  %i.i = phi ptr [ %i.k, %bb.f ], [ %i.f, %bb.c ] ; 2 uses
  %.not7.i = icmp eq ptr %i.i, null
  br i1 %.not7.i, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !219, !noundef !4 ; 2 uses
  store ptr %i.k, ptr %i.c, align 8, !alias.scope !219
  br label %bb.e

bb.g:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %1, align 8, !noalias !219, !noundef !4
  store ptr %i.l, ptr %i.i, align 8, !noalias !219
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !219, !noundef !4
  %.not9.i = icmp eq ptr %i.n, %1
  br i1 %.not9.i, label %bb.j, label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE6removeB9_.exit

bb.i:                                             ; preds = %bb.j, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false), !noalias !219
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE6removeB9_.exit

bb.j:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %1, align 8, !noalias !219, !noundef !4
  store ptr %i.o, ptr %i.m, align 8, !alias.scope !219
  br label %bb.i

bb.k:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noundef !4
  %i.r = xor i64 %i.q, %i.a
  %i.s = or i64 %i.r, 63
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.s, i64 68719476734)
  %i.t = tail call range(i64 28, 59) i64 @llvm.ctlz.i64(i64 %spec.store.select, i1 true)
  %i.u = xor i64 %i.t, 62                         ; 2 uses
  %.lhs.trunc = trunc nuw nsw i64 %i.u to i8
  %i.v = udiv i8 %.lhs.trunc, 6
  %.zext = zext nneg i8 %i.v to i64               ; 2 uses
  %i.w = icmp samesign ult i64 %i.u, 36
  br i1 %i.w, label %bb.l, label %bb.m

_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE6removeB9_.exit: ; preds = %bb.i, %bb.h, %bb.d, %bb.l
  ret void

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw [1040 x i8], ptr %i.x, i64 %.zext
  tail call void @_RNvMNtNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheel5levelNtB2_5Level12remove_entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(1040) %i.y, ptr noundef nonnull %1)
  br label %_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListNtNtNtNtB9_7runtime4time5entry11TimerSharedE6removeB9_.exit

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.zext, i64 noundef 6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel7poll_at(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime4time5wheelNtB2_5Wheel15next_expiration(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.b = load i64, ptr %i.a, align 8, !range !6, !noundef !4 ; 2 uses
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %.sroa.3.0 = select i1 %i.c, i64 %i.e, i64 undef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = insertvalue { i64, i64 } poison, i64 %i.b, 0
  %i.g = insertvalue { i64, i64 } %i.f, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime7metrics7runtimeNtB2_14RuntimeMetrics15num_alive_tasks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = trunc nuw i64 %.val to i1
  br i1 %i.b, label %bb.b, label %bb.c
end_hunk_0
