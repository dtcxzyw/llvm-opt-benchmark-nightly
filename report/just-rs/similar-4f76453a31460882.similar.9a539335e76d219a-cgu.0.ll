Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/similar-4f76453a31460882.similar.9a539335e76d219a-cgu.0?download=true
inline.NumInlined: 3444
inline.NumDeleted: 939
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtB4_5utils12OffsetLookupjEBZ_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2m_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_:bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !2952
  %i.bo = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.bk, i64 noundef range(i64 1, 9) 8) #36, !noalias !2952 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.m
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.o ], [ 0, %bb.m ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.bk) #38, !noalias !2957
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.bi, ptr %i.bq, align 8, !alias.scope !2949, !noalias !2944
  store i64 %i.bj, ptr %i.b, align 8, !alias.scope !2949, !noalias !2944
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.bo, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2949, !noalias !2944
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.bj, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2949, !noalias !2944
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2944
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2958)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !2961
  %i.br = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.bk, i64 noundef range(i64 1, 9) 8) #36, !noalias !2961 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.bk) #38
          to label %.noexc.i unwind label %bb.t, !noalias !2944

.noexc.i:                                         ; preds = %bb.r
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32.i: ; preds = %bb.w, %bb.v, %bb.t
  %.sroa.4.0..sroa_idx.i39.i = phi ptr [ %.sroa.4.0..sroa_idx.i.i, %bb.t ], [ %.sroa.4.0..sroa_idx.i40.i, %bb.v ], [ %.sroa.4.0..sroa_idx.i40.i, %bb.w ]
  %.pn.i = phi { ptr, i32 } [ %i.bv, %bb.t ], [ %i.bx, %bb.v ], [ %i.bx, %bb.w ]
  %.val22.i = load i64, ptr %i.b, align 8, !noalias !2944 ; 2 uses
  %i.bt = icmp eq i64 %.val22.i, 0
  br i1 %i.bt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32.i
  %.val23.i = load ptr, ptr %.sroa.4.0..sroa_idx.i39.i, align 8, !noalias !2944, !nonnull !5, !noundef !5
  %i.bu = shl nuw i64 %.val22.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23.i, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit.i

bb.t:                                             ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32.i

bb.u:                                             ; preds = %bb.q, %.thread.i9
  %.sroa.4.0..sroa_idx.i40.i = phi ptr [ %.sroa.4.0..sroa_idx.i37.i, %.thread.i9 ], [ %.sroa.4.0..sroa_idx.i.i, %bb.q ] ; 3 uses
  %.sroa.4.0.i.i26.i = phi i64 [ 0, %.thread.i9 ], [ %i.bj, %bb.q ]
  %.sroa.10.0.i.i27.i = phi ptr [ inttoptr (i64 8 to ptr), %.thread.i9 ], [ %i.br, %bb.q ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.bi, ptr %i.bw, align 8, !alias.scope !2958, !noalias !2944
  store i64 %.sroa.4.0.i.i26.i, ptr %i.a, align 8, !alias.scope !2958, !noalias !2944
  %.sroa.4.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i27.i, ptr %.sroa.4.0..sroa_idx.i28.i, align 8, !alias.scope !2958, !noalias !2944
  %.sroa.5.0..sroa_idx.i29.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.bj, ptr %.sroa.5.0..sroa_idx.i29.i, align 8, !alias.scope !2958, !noalias !2944
  invoke fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef align 8 dereferenceable(32) %i.a, ptr noalias nofree noundef align 8 dereferenceable(32) %i.b, i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.x unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val20.i = load i64, ptr %i.a, align 8, !noalias !2944 ; 2 uses
  %i.by = icmp eq i64 %.val20.i, 0
  br i1 %i.by, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val21.i = load ptr, ptr %.sroa.4.0..sroa_idx.i28.i, align 8, !noalias !2944, !nonnull !5, !noundef !5
  %i.bz = shl nuw i64 %.val20.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32.i

bb.x:                                             ; preds = %bb.u
  %.val18.i = load i64, ptr %i.a, align 8, !noalias !2944 ; 2 uses
  %i.ca = icmp eq i64 %.val18.i, 0
  br i1 %i.ca, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val19.i = load ptr, ptr %.sroa.4.0..sroa_idx.i28.i, align 8, !noalias !2944, !nonnull !5, !noundef !5
  %i.cb = shl nuw i64 %.val18.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19.i, i64 noundef %i.cb, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33.i: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2944
  %.val.i = load i64, ptr %i.b, align 8, !noalias !2944 ; 2 uses
  %i.cc = icmp eq i64 %.val.i, 0
  br i1 %i.cc, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.z

bb.z:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33.i
  %.val17.i = load ptr, ptr %.sroa.4.0..sroa_idx.i40.i, align 8, !noalias !2944, !nonnull !5, !noundef !5
  %i.cd = shl nuw i64 %.val.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit.i: ; preds = %bb.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32.i
  resume { ptr, i32 } %.pn.i

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2944
  br label %bb.aa

bb.aa:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupjEB13_EB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = sub nuw i64 %3, %2
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 6 uses
  %i.c = icmp ult i64 %5, %6
  %i.d = sub nuw i64 %6, %5
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 4 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 3 uses
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !5 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1
  %.sroa.047.0 = sub i64 %i.y, %i.z               ; 3 uses
  %i.aa = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not128.not = icmp ugt i64 %i.k, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !169

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #37
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not129.not = icmp samesign ugt i64 %i.t, %.sroa.047.0
  br i1 %.not129.not, label %.lr.ph268, label %bb.h, !prof !169

.lr.ph268:                                        ; preds = %bb.g
  %.not.i = icmp eq i32 %10, -1
  %i.ac = add i64 %i.h, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !5 ; 2 uses
  %i.ap = add i64 %i.q, -1
  %i.aq = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.ar = add i64 %.sroa.037.0, %5                ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #37
  unreachable

bb.i:                                             ; preds = %.lr.ph268, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread
  %.sroa.048.0267 = phi i64 [ 0, %.lr.ph268 ], [ %i.as, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread ] ; 9 uses
  %i.as = add nuw nsw i64 %.sroa.048.0267, 1
  br i1 %.not.i, label %.lr.ph252.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.au = extractvalue { i64, i32 } %i.at, 0      ; 2 uses
  %i.av = icmp eq i64 %i.au, %9
  br i1 %i.av, label %.split, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit

.split:                                           ; preds = %bb.j
  %i.aw = extractvalue { i64, i32 } %i.at, 1      ; 2 uses
  %i.ax = icmp ult i32 %i.aw, 1000000000
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp samesign ugt i32 %i.aw, %10
  br i1 %i.ay, label %.split._crit_edge, label %.lr.ph252.preheader

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit: ; preds = %bb.j
  %i.az = icmp sgt i64 %i.au, %9
  br i1 %i.az, label %.split._crit_edge, label %.lr.ph252.preheader

.lr.ph252.preheader:                              ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %.split, %bb.i
  %11 = sub nsw i64 0, %.sroa.048.0267            ; 6 uses
  br label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph252.preheader, %bb.be
  %.sroa.7.0251 = phi i64 [ %i.be, %bb.be ], [ %.sroa.048.0267, %.lr.ph252.preheader ]
  %not..sroa.11164.0250 = phi i64 [ 1, %bb.be ], [ 0, %.lr.ph252.preheader ]
  %i.ba = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0251, i64 %not..sroa.11164.0250) ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.ba, 1       ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.ba, 0       ; 10 uses
  %i.bd = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bc, i64 -1) ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 0       ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.bd, 1
  %12 = or i1 %i.bb, %i.bf
  %.not3.i.not = icmp slt i64 %i.bc, %11
  %or.cond190 = select i1 %i.bb, i1 true, i1 %.not3.i.not
  br i1 %or.cond190, label %.lr.ph265.preheader, label %bb.k

bb.k:                                             ; preds = %.lr.ph252
  %i.bg = icmp eq i64 %i.bc, %11
  br i1 %i.bg, label %._crit_edge312, label %bb.al

._crit_edge312:                                   ; preds = %bb.k
  %.pre317 = add i64 %i.i, %i.bc
  br label %._crit_edge312.a

.lr.ph265:                                        ; preds = %.lr.ph265.preheader, %bb.ag
  %not..sroa.14173.0264 = phi i64 [ 1, %bb.ag ], [ 0, %.lr.ph265.preheader ]
  %.sroa.7172.0263 = phi i64 [ %i.bl, %bb.ag ], [ %.sroa.048.0267, %.lr.ph265.preheader ]
  %i.bh = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7172.0263, i64 %not..sroa.14173.0264) ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1       ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bh, 0       ; 10 uses
  %i.bk = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bj, i64 -1) ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bk, 0       ; 2 uses
  %i.bm = extractvalue { i64, i1 } %i.bk, 1
  %13 = or i1 %i.bi, %i.bm
  %.not3.i145.not = icmp slt i64 %i.bj, %11
  %or.cond192 = select i1 %i.bi, i1 true, i1 %.not3.i145.not
  br i1 %or.cond192, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph265
  %i.bn = icmp eq i64 %i.bj, %11
  br i1 %i.bn, label %._crit_edge314, label %bb.m

._crit_edge314:                                   ; preds = %bb.l
  %.pre = add i64 %i.r, %i.bj
  br label %._crit_edge314.a

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread: ; preds = %bb.ag, %.lr.ph265
  %exitcond311.not = icmp eq i64 %.sroa.048.0267, %.sroa.047.0
  br i1 %exitcond311.not, label %.split._crit_edge, label %bb.i

bb.m:                                             ; preds = %bb.l
  %.not130 = icmp eq i64 %i.bj, %.sroa.048.0267
  %.pre315 = add i64 %i.ap, %i.bj                 ; 6 uses
  br i1 %.not130, label %._crit_edge313, label %bb.n

._crit_edge314.a:                                 ; preds = %._crit_edge314, %bb.q
  %.pre-phi = phi i64 [ %.pre, %._crit_edge314 ], [ %i.br, %bb.q ] ; 3 uses
  %i.bo = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.bo, label %bb.v, label %bb.w

._crit_edge313:                                   ; preds = %bb.m, %bb.q
  %i.bp = icmp ult i64 %.pre315, %i.t
  br i1 %i.bp, label %bb.s, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.bq = icmp ult i64 %.pre315, %i.t
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = add i64 %i.r, %i.bj                     ; 4 uses
  %i.bs = icmp ult i64 %i.br, %i.t
  br i1 %i.bs, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre315, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #37
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre315
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !5
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.br
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !5
  %i.bx = icmp ult i64 %i.bu, %i.bw
  br i1 %i.bx, label %._crit_edge314.a, label %._crit_edge313

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.br, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #37
  unreachable

bb.s:                                             ; preds = %._crit_edge313
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre315
  %i.bz = load i64, ptr %i.by, align 8, !noundef !5
  %i.ca = add i64 %i.bz, 1
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge313
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre315, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #37
  unreachable

bb.u:                                             ; preds = %bb.v, %bb.s
  %.sroa.014.0 = phi i64 [ %i.cf, %bb.v ], [ %i.ca, %bb.s ] ; 5 uses
  %i.cb = sub i64 %.sroa.014.0, %i.bj             ; 4 uses
  %i.cc = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.cd = icmp ult i64 %i.cb, %.sroa.037.0
  %or.cond = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond, label %bb.y, label %bb.x

bb.v:                                             ; preds = %._crit_edge314.a
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !5
  br label %bb.u

bb.w:                                             ; preds = %._crit_edge314.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #37
  unreachable

bb.x:                                             ; preds = %bb.u, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit
  %.sroa.020.0 = phi i64 [ %i.cu, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit ], [ %i.cb, %bb.u ]
  %.sroa.014.1 = phi i64 [ %i.ct, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit ], [ %.sroa.014.0, %bb.u ] ; 3 uses
  %i.cg = add i64 %i.bj, %i.q                     ; 3 uses
  %i.ch = icmp ult i64 %i.cg, %i.t
  br i1 %i.ch, label %bb.ad, label %bb.ae

bb.y:                                             ; preds = %bb.u
  %i.ci = sub i64 %i.aq, %.sroa.014.0             ; 2 uses
  %i.cj = sub i64 %i.ar, %i.cb                    ; 2 uses
  %i.ck = sub i64 %i.ci, %2
  %i.cl = sub i64 %i.cj, %5
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.cl, i64 %i.ck) ; 3 uses
  %.not270 = icmp eq i64 %..i, 0
  br i1 %.not270, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit, label %.lr.ph255

.lr.ph255:                                        ; preds = %bb.y
  %invariant.op258 = sub i64 %i.cj, %i.ae
  %invariant.op260 = sub i64 %i.ci, %i.ak
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph255, %bb.ac
  %.sroa.0.0.i136254 = phi i64 [ 0, %.lr.ph255 ], [ %i.cs, %bb.ac ] ; 3 uses
  %i.cm = xor i64 %.sroa.0.0.i136254, -1          ; 2 uses
  %.reass259 = add i64 %invariant.op258, %i.cm    ; 3 uses
  %i.cn = icmp ult i64 %.reass259, %i.ag
  br i1 %i.cn, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass259, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #37, !noalias !2966
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137: ; preds = %bb.z
  %.reass261 = add i64 %invariant.op260, %i.cm    ; 3 uses
  %i.co = icmp ult i64 %.reass261, %i.am
  br i1 %i.co, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit, label %bb.ab

bb.ab:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass261, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #37, !noalias !2969
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass259
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.reass261
  %.val = load i64, ptr %i.cp, align 8, !noundef !5
  %.val140 = load i64, ptr %i.cq, align 8, !noundef !5
  %i.cr = icmp eq i64 %.val, %.val140
  br i1 %i.cr, label %bb.ac, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit

bb.ac:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit
  %i.cs = add nuw i64 %.sroa.0.0.i136254, 1       ; 2 uses
  %exitcond310.not = icmp eq i64 %i.cs, %..i
  br i1 %exitcond310.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit, label %bb.z

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit, %bb.ac, %bb.y
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.y ], [ %..i, %bb.ac ], [ %.sroa.0.0.i136254, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit ] ; 2 uses
  %i.ct = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.cu = add i64 %.sroa.0.0.i136.lcssa, %i.cb
  br label %bb.x

bb.ad:                                            ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.cg
  store i64 %.sroa.014.1, ptr %i.cv, align 8
  br i1 %.not, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.x
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cg, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #37
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cw = sub i64 %i.bj, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.cw, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0267
  br i1 %.not131, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ai, %bb.ad
  %i.cx = icmp slt i64 %i.bl, %11
  %or.cond191 = select i1 %13, i1 true, i1 %i.cx
  br i1 %or.cond191, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread, label %.lr.ph265

bb.ah:                                            ; preds = %bb.af
  %i.cy = sub i64 %i.h, %i.cw                     ; 3 uses
  %i.cz = icmp ult i64 %i.cy, %i.k
  br i1 %i.cz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cy
  %i.db = load i64, ptr %i.da, align 8, !noundef !5
  %i.dc = add i64 %i.db, %.sroa.014.1
  %.not132 = icmp ult i64 %i.dc, %.sroa.025.0
  br i1 %.not132, label %bb.ag, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cy, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #37
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.dd = sub i64 %i.aq, %.sroa.014.1
  %i.de = sub i64 %i.ar, %.sroa.020.0
  br label %.split._crit_edge.sink.split

bb.al:                                            ; preds = %bb.k
  %.not133 = icmp eq i64 %i.bc, %.sroa.048.0267
  %.pre319 = add i64 %i.ac, %i.bc                 ; 6 uses
  br i1 %.not133, label %._crit_edge, label %bb.am

._crit_edge312.a:                                 ; preds = %._crit_edge312, %bb.ap
  %.pre-phi318 = phi i64 [ %.pre317, %._crit_edge312 ], [ %i.di, %bb.ap ] ; 3 uses
  %i.df = icmp ult i64 %.pre-phi318, %i.k
  br i1 %i.df, label %bb.au, label %bb.av

._crit_edge:                                      ; preds = %bb.al, %bb.ap
  %i.dg = icmp ult i64 %.pre319, %i.k
  br i1 %i.dg, label %bb.ar, label %bb.as

bb.am:                                            ; preds = %bb.al
  %i.dh = icmp ult i64 %.pre319, %i.k
  br i1 %i.dh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.di = add i64 %i.i, %i.bc                     ; 4 uses
  %i.dj = icmp ult i64 %i.di, %i.k
  br i1 %i.dj, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.am
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #37
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre319
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !5
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.di
  %i.dn = load i64, ptr %i.dm, align 8, !noundef !5
  %i.do = icmp ult i64 %i.dl, %i.dn
  br i1 %i.do, label %._crit_edge312.a, label %._crit_edge

bb.aq:                                            ; preds = %bb.an
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.di, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37
  unreachable

bb.ar:                                            ; preds = %._crit_edge
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre319
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !5
  %i.dr = add i64 %i.dq, 1
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #37
  unreachable

bb.at:                                            ; preds = %bb.au, %bb.ar
  %.sroa.04.0 = phi i64 [ %i.dx, %bb.au ], [ %i.dr, %bb.ar ] ; 6 uses
  %i.ds = sub i64 %.sroa.04.0, %i.bc              ; 3 uses
  %i.dt = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.dt, i1 false
  %i.du = icmp ult i64 %i.ds, %i.d
  %i.dv = and i1 %i.c, %.sroa.051.0
  %or.cond188 = select i1 %i.dv, i1 %i.du, i1 false
  br i1 %or.cond188, label %bb.ax, label %bb.aw

bb.au:                                            ; preds = %._crit_edge312.a
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi318
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !5
  br label %bb.at

bb.av:                                            ; preds = %._crit_edge312.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi318, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #37
  unreachable

bb.aw:                                            ; preds = %bb.at, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit
  %.sroa.04.1 = phi i64 [ %i.ek, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit ], [ %.sroa.04.0, %bb.at ] ; 2 uses
  %i.dy = add i64 %i.bc, %i.h                     ; 3 uses
  %i.dz = icmp ult i64 %i.dy, %i.k
  br i1 %i.dz, label %bb.bc, label %bb.bd

bb.ax:                                            ; preds = %bb.at
  %i.ea = add i64 %.sroa.04.0, %2                 ; 2 uses
  %i.eb = add i64 %i.ds, %5                       ; 2 uses
  %i.ec = sub i64 %3, %i.ea
  %i.ed = sub i64 %6, %i.eb
  %..i150 = tail call noundef i64 @llvm.umin.i64(i64 %i.ed, i64 %i.ec) ; 3 uses
  %.not269 = icmp eq i64 %..i150, 0
  br i1 %.not269, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ax
  %invariant.op = sub i64 %i.eb, %i.ae            ; 2 uses
  %invariant.op247 = sub i64 %i.ea, %i.ak         ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph, %bb.bb
  %.sroa.0.0.i245 = phi i64 [ 0, %.lr.ph ], [ %i.ej, %bb.bb ] ; 4 uses
  %.reass = add nuw i64 %.sroa.0.0.i245, %invariant.op ; 2 uses
  %i.ee = icmp ult i64 %.reass, %i.ag
  br i1 %i.ee, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %invariant.op)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #37, !noalias !2972
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139: ; preds = %bb.ay
  %.reass248 = add nuw i64 %.sroa.0.0.i245, %invariant.op247 ; 2 uses
  %i.ef = icmp ult i64 %.reass248, %i.am
  br i1 %i.ef, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138, label %bb.ba

bb.ba:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139
  %umax309 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %invariant.op247)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax309, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #37, !noalias !2975
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.reass248
  %.val141 = load i64, ptr %i.eg, align 8, !noundef !5
  %.val142 = load i64, ptr %i.eh, align 8, !noundef !5
  %i.ei = icmp eq i64 %.val141, %.val142
  br i1 %i.ei, label %bb.bb, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit

bb.bb:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138
  %i.ej = add nuw i64 %.sroa.0.0.i245, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.ej, %..i150
  br i1 %exitcond.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit, label %bb.ay

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138, %bb.bb, %bb.ax
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.ax ], [ %..i150, %bb.bb ], [ %.sroa.0.0.i245, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138 ]
  %i.ek = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.aw

bb.bc:                                            ; preds = %bb.aw
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dy
  store i64 %.sroa.04.1, ptr %i.el, align 8
  br i1 %.not, label %bb.be, label %bb.bf

bb.bd:                                            ; preds = %bb.aw
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.dy, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #37
  unreachable

bb.be:                                            ; preds = %bb.bf, %bb.bh, %bb.bc
  %i.em = icmp slt i64 %i.be, %11
  %or.cond189 = select i1 %12, i1 true, i1 %i.em
  br i1 %or.cond189, label %.lr.ph265.preheader, label %.lr.ph252

.lr.ph265.preheader:                              ; preds = %.lr.ph252, %bb.be
  br label %.lr.ph265

bb.bf:                                            ; preds = %bb.bc
  %i.en = sub i64 %i.bc, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.en, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0267
  br i1 %.not134.not, label %bb.bg, label %bb.be

bb.bg:                                            ; preds = %bb.bf
  %i.eo = sub i64 %i.q, %i.en                     ; 3 uses
  %i.ep = icmp ult i64 %i.eo, %i.t
  br i1 %i.ep, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.eo
  %i.er = load i64, ptr %i.eq, align 8, !noundef !5
  %i.es = add i64 %i.er, %.sroa.04.1
  %.not135 = icmp ult i64 %i.es, %.sroa.025.0
  br i1 %.not135, label %bb.be, label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.eo, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #37
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.et = add i64 %.sroa.04.0, %2
  %i.eu = add i64 %i.ds, %5
  br label %.split._crit_edge.sink.split

.split._crit_edge.sink.split:                     ; preds = %bb.bj, %bb.ak
  %.sink399.a = phi i64 [ %i.dd, %bb.ak ], [ %i.et, %bb.bj ]
  %.sink397 = phi i64 [ %i.de, %bb.ak ], [ %i.eu, %bb.bj ]
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink399.a, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink397, ptr %i.ew, align 8
  br label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread, %.split._crit_edge.sink.split
  %.sink = phi i64 [ 1, %.split._crit_edge.sink.split ], [ 0, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread ], [ 0, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit ], [ 0, %.split ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupmEB13_EB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = sub nuw i64 %3, %2
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 6 uses
  %i.c = icmp ult i64 %5, %6
  %i.d = sub nuw i64 %6, %5
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 4 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 3 uses
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !5 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1
  %.sroa.047.0 = sub i64 %i.y, %i.z               ; 3 uses
  %i.aa = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not128.not = icmp ugt i64 %i.k, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !169

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #37
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not129.not = icmp samesign ugt i64 %i.t, %.sroa.047.0
  br i1 %.not129.not, label %.lr.ph268, label %bb.h, !prof !169

.lr.ph268:                                        ; preds = %bb.g
  %.not.i = icmp eq i32 %10, -1
  %i.ac = add i64 %i.h, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !5 ; 2 uses
  %i.ap = add i64 %i.q, -1
  %i.aq = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.ar = add i64 %.sroa.037.0, %5                ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #37
  unreachable

bb.i:                                             ; preds = %.lr.ph268, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread
  %.sroa.048.0267 = phi i64 [ 0, %.lr.ph268 ], [ %i.as, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread ] ; 9 uses
  %i.as = add nuw nsw i64 %.sroa.048.0267, 1
  br i1 %.not.i, label %.lr.ph252.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.au = extractvalue { i64, i32 } %i.at, 0      ; 2 uses
  %i.av = icmp eq i64 %i.au, %9
  br i1 %i.av, label %.split, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit

.split:                                           ; preds = %bb.j
  %i.aw = extractvalue { i64, i32 } %i.at, 1      ; 2 uses
  %i.ax = icmp ult i32 %i.aw, 1000000000
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp samesign ugt i32 %i.aw, %10
  br i1 %i.ay, label %.split._crit_edge, label %.lr.ph252.preheader

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit: ; preds = %bb.j
  %i.az = icmp sgt i64 %i.au, %9
  br i1 %i.az, label %.split._crit_edge, label %.lr.ph252.preheader

.lr.ph252.preheader:                              ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %.split, %bb.i
  %11 = sub nsw i64 0, %.sroa.048.0267            ; 6 uses
  br label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph252.preheader, %bb.be
  %.sroa.7.0251 = phi i64 [ %i.be, %bb.be ], [ %.sroa.048.0267, %.lr.ph252.preheader ]
  %not..sroa.11164.0250 = phi i64 [ 1, %bb.be ], [ 0, %.lr.ph252.preheader ]
  %i.ba = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0251, i64 %not..sroa.11164.0250) ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.ba, 1       ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.ba, 0       ; 10 uses
  %i.bd = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bc, i64 -1) ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 0       ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.bd, 1
  %12 = or i1 %i.bb, %i.bf
  %.not3.i.not = icmp slt i64 %i.bc, %11
  %or.cond190 = select i1 %i.bb, i1 true, i1 %.not3.i.not
  br i1 %or.cond190, label %.lr.ph265.preheader, label %bb.k

bb.k:                                             ; preds = %.lr.ph252
  %i.bg = icmp eq i64 %i.bc, %11
  br i1 %i.bg, label %._crit_edge312, label %bb.al

._crit_edge312:                                   ; preds = %bb.k
  %.pre317 = add i64 %i.i, %i.bc
  br label %._crit_edge312.a

.lr.ph265:                                        ; preds = %.lr.ph265.preheader, %bb.ag
  %not..sroa.14173.0264 = phi i64 [ 1, %bb.ag ], [ 0, %.lr.ph265.preheader ]
  %.sroa.7172.0263 = phi i64 [ %i.bl, %bb.ag ], [ %.sroa.048.0267, %.lr.ph265.preheader ]
  %i.bh = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7172.0263, i64 %not..sroa.14173.0264) ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1       ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bh, 0       ; 10 uses
  %i.bk = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bj, i64 -1) ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bk, 0       ; 2 uses
  %i.bm = extractvalue { i64, i1 } %i.bk, 1
  %13 = or i1 %i.bi, %i.bm
  %.not3.i145.not = icmp slt i64 %i.bj, %11
  %or.cond192 = select i1 %i.bi, i1 true, i1 %.not3.i145.not
  br i1 %or.cond192, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph265
  %i.bn = icmp eq i64 %i.bj, %11
  br i1 %i.bn, label %._crit_edge314, label %bb.m

._crit_edge314:                                   ; preds = %bb.l
  %.pre = add i64 %i.r, %i.bj
  br label %._crit_edge314.a

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread: ; preds = %bb.ag, %.lr.ph265
  %exitcond311.not = icmp eq i64 %.sroa.048.0267, %.sroa.047.0
  br i1 %exitcond311.not, label %.split._crit_edge, label %bb.i

bb.m:                                             ; preds = %bb.l
  %.not130 = icmp eq i64 %i.bj, %.sroa.048.0267
  %.pre315 = add i64 %i.ap, %i.bj                 ; 6 uses
  br i1 %.not130, label %._crit_edge313, label %bb.n

._crit_edge314.a:                                 ; preds = %._crit_edge314, %bb.q
  %.pre-phi = phi i64 [ %.pre, %._crit_edge314 ], [ %i.br, %bb.q ] ; 3 uses
  %i.bo = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.bo, label %bb.v, label %bb.w

._crit_edge313:                                   ; preds = %bb.m, %bb.q
  %i.bp = icmp ult i64 %.pre315, %i.t
  br i1 %i.bp, label %bb.s, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.bq = icmp ult i64 %.pre315, %i.t
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = add i64 %i.r, %i.bj                     ; 4 uses
  %i.bs = icmp ult i64 %i.br, %i.t
  br i1 %i.bs, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre315, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #37
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre315
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !5
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.br
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !5
  %i.bx = icmp ult i64 %i.bu, %i.bw
  br i1 %i.bx, label %._crit_edge314.a, label %._crit_edge313

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.br, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #37
  unreachable

bb.s:                                             ; preds = %._crit_edge313
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre315
  %i.bz = load i64, ptr %i.by, align 8, !noundef !5
  %i.ca = add i64 %i.bz, 1
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge313
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre315, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #37
  unreachable

bb.u:                                             ; preds = %bb.v, %bb.s
  %.sroa.014.0 = phi i64 [ %i.cf, %bb.v ], [ %i.ca, %bb.s ] ; 5 uses
  %i.cb = sub i64 %.sroa.014.0, %i.bj             ; 4 uses
  %i.cc = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.cd = icmp ult i64 %i.cb, %.sroa.037.0
  %or.cond = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond, label %bb.y, label %bb.x

bb.v:                                             ; preds = %._crit_edge314.a
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !5
  br label %bb.u

bb.w:                                             ; preds = %._crit_edge314.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #37
  unreachable

bb.x:                                             ; preds = %bb.u, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit
  %.sroa.020.0 = phi i64 [ %i.cu, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit ], [ %i.cb, %bb.u ]
  %.sroa.014.1 = phi i64 [ %i.ct, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit ], [ %.sroa.014.0, %bb.u ] ; 3 uses
  %i.cg = add i64 %i.bj, %i.q                     ; 3 uses
  %i.ch = icmp ult i64 %i.cg, %i.t
  br i1 %i.ch, label %bb.ad, label %bb.ae

bb.y:                                             ; preds = %bb.u
  %i.ci = sub i64 %i.aq, %.sroa.014.0             ; 2 uses
  %i.cj = sub i64 %i.ar, %i.cb                    ; 2 uses
  %i.ck = sub i64 %i.ci, %2
  %i.cl = sub i64 %i.cj, %5
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.cl, i64 %i.ck) ; 3 uses
  %.not270 = icmp eq i64 %..i, 0
  br i1 %.not270, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit, label %.lr.ph255

.lr.ph255:                                        ; preds = %bb.y
  %invariant.op258 = sub i64 %i.cj, %i.ae
  %invariant.op260 = sub i64 %i.ci, %i.ak
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph255, %bb.ac
  %.sroa.0.0.i136254 = phi i64 [ 0, %.lr.ph255 ], [ %i.cs, %bb.ac ] ; 3 uses
  %i.cm = xor i64 %.sroa.0.0.i136254, -1          ; 2 uses
  %.reass259 = add i64 %invariant.op258, %i.cm    ; 3 uses
  %i.cn = icmp ult i64 %.reass259, %i.ag
  br i1 %i.cn, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass259, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #37, !noalias !2978
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137: ; preds = %bb.z
  %.reass261 = add i64 %invariant.op260, %i.cm    ; 3 uses
  %i.co = icmp ult i64 %.reass261, %i.am
  br i1 %i.co, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit, label %bb.ab

bb.ab:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass261, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #37, !noalias !2981
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.reass259
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.reass261
  %.val = load i32, ptr %i.cp, align 4, !noundef !5
  %.val140 = load i32, ptr %i.cq, align 4, !noundef !5
  %i.cr = icmp eq i32 %.val, %.val140
  br i1 %i.cr, label %bb.ac, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit

bb.ac:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit
  %i.cs = add nuw i64 %.sroa.0.0.i136254, 1       ; 2 uses
  %exitcond310.not = icmp eq i64 %i.cs, %..i
  br i1 %exitcond310.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit, label %bb.z

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit, %bb.ac, %bb.y
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.y ], [ %..i, %bb.ac ], [ %.sroa.0.0.i136254, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit ] ; 2 uses
  %i.ct = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.cu = add i64 %.sroa.0.0.i136.lcssa, %i.cb
  br label %bb.x

bb.ad:                                            ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.cg
  store i64 %.sroa.014.1, ptr %i.cv, align 8
  br i1 %.not, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.x
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cg, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #37
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.cw = sub i64 %i.bj, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.cw, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0267
  br i1 %.not131, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ai, %bb.ad
  %i.cx = icmp slt i64 %i.bl, %11
  %or.cond191 = select i1 %13, i1 true, i1 %i.cx
  br i1 %or.cond191, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread, label %.lr.ph265

bb.ah:                                            ; preds = %bb.af
  %i.cy = sub i64 %i.h, %i.cw                     ; 3 uses
  %i.cz = icmp ult i64 %i.cy, %i.k
  br i1 %i.cz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cy
  %i.db = load i64, ptr %i.da, align 8, !noundef !5
  %i.dc = add i64 %i.db, %.sroa.014.1
  %.not132 = icmp ult i64 %i.dc, %.sroa.025.0
  br i1 %.not132, label %bb.ag, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cy, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #37
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.dd = sub i64 %i.aq, %.sroa.014.1
  %i.de = sub i64 %i.ar, %.sroa.020.0
  br label %.split._crit_edge.sink.split

bb.al:                                            ; preds = %bb.k
  %.not133 = icmp eq i64 %i.bc, %.sroa.048.0267
  %.pre319 = add i64 %i.ac, %i.bc                 ; 6 uses
  br i1 %.not133, label %._crit_edge, label %bb.am

._crit_edge312.a:                                 ; preds = %._crit_edge312, %bb.ap
  %.pre-phi318 = phi i64 [ %.pre317, %._crit_edge312 ], [ %i.di, %bb.ap ] ; 3 uses
  %i.df = icmp ult i64 %.pre-phi318, %i.k
  br i1 %i.df, label %bb.au, label %bb.av

._crit_edge:                                      ; preds = %bb.al, %bb.ap
  %i.dg = icmp ult i64 %.pre319, %i.k
  br i1 %i.dg, label %bb.ar, label %bb.as

bb.am:                                            ; preds = %bb.al
  %i.dh = icmp ult i64 %.pre319, %i.k
  br i1 %i.dh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.di = add i64 %i.i, %i.bc                     ; 4 uses
  %i.dj = icmp ult i64 %i.di, %i.k
  br i1 %i.dj, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.am
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #37
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre319
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !5
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.di
  %i.dn = load i64, ptr %i.dm, align 8, !noundef !5
  %i.do = icmp ult i64 %i.dl, %i.dn
  br i1 %i.do, label %._crit_edge312.a, label %._crit_edge

bb.aq:                                            ; preds = %bb.an
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.di, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37
  unreachable

bb.ar:                                            ; preds = %._crit_edge
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre319
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !5
  %i.dr = add i64 %i.dq, 1
  br label %bb.at

bb.as:                                            ; preds = %._crit_edge
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #37
  unreachable

bb.at:                                            ; preds = %bb.au, %bb.ar
  %.sroa.04.0 = phi i64 [ %i.dx, %bb.au ], [ %i.dr, %bb.ar ] ; 6 uses
  %i.ds = sub i64 %.sroa.04.0, %i.bc              ; 3 uses
  %i.dt = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.dt, i1 false
  %i.du = icmp ult i64 %i.ds, %i.d
  %i.dv = and i1 %i.c, %.sroa.051.0
  %or.cond188 = select i1 %i.dv, i1 %i.du, i1 false
  br i1 %or.cond188, label %bb.ax, label %bb.aw

bb.au:                                            ; preds = %._crit_edge312.a
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi318
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !5
  br label %bb.at

bb.av:                                            ; preds = %._crit_edge312.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi318, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #37
  unreachable

bb.aw:                                            ; preds = %bb.at, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit
  %.sroa.04.1 = phi i64 [ %i.ek, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit ], [ %.sroa.04.0, %bb.at ] ; 2 uses
  %i.dy = add i64 %i.bc, %i.h                     ; 3 uses
  %i.dz = icmp ult i64 %i.dy, %i.k
  br i1 %i.dz, label %bb.bc, label %bb.bd

bb.ax:                                            ; preds = %bb.at
  %i.ea = add i64 %.sroa.04.0, %2                 ; 2 uses
  %i.eb = add i64 %i.ds, %5                       ; 2 uses
  %i.ec = sub i64 %3, %i.ea
  %i.ed = sub i64 %6, %i.eb
  %..i150 = tail call noundef i64 @llvm.umin.i64(i64 %i.ed, i64 %i.ec) ; 3 uses
  %.not269 = icmp eq i64 %..i150, 0
  br i1 %.not269, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ax
  %invariant.op = sub i64 %i.eb, %i.ae            ; 2 uses
  %invariant.op247 = sub i64 %i.ea, %i.ak         ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph, %bb.bb
  %.sroa.0.0.i245 = phi i64 [ 0, %.lr.ph ], [ %i.ej, %bb.bb ] ; 4 uses
  %.reass = add nuw i64 %.sroa.0.0.i245, %invariant.op ; 2 uses
  %i.ee = icmp ult i64 %.reass, %i.ag
  br i1 %i.ee, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %invariant.op)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #37, !noalias !2984
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139: ; preds = %bb.ay
  %.reass248 = add nuw i64 %.sroa.0.0.i245, %invariant.op247 ; 2 uses
  %i.ef = icmp ult i64 %.reass248, %i.am
  br i1 %i.ef, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138, label %bb.ba

bb.ba:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139
  %umax309 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %invariant.op247)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax309, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #37, !noalias !2987
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.reass
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.reass248
  %.val141 = load i32, ptr %i.eg, align 4, !noundef !5
  %.val142 = load i32, ptr %i.eh, align 4, !noundef !5
  %i.ei = icmp eq i32 %.val141, %.val142
  br i1 %i.ei, label %bb.bb, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit

bb.bb:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138
  %i.ej = add nuw i64 %.sroa.0.0.i245, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.ej, %..i150
  br i1 %exitcond.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit, label %bb.ay

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138, %bb.bb, %bb.ax
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.ax ], [ %..i150, %bb.bb ], [ %.sroa.0.0.i245, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138 ]
  %i.ek = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.aw

bb.bc:                                            ; preds = %bb.aw
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dy
  store i64 %.sroa.04.1, ptr %i.el, align 8
  br i1 %.not, label %bb.be, label %bb.bf

bb.bd:                                            ; preds = %bb.aw
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.dy, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #37
  unreachable

bb.be:                                            ; preds = %bb.bf, %bb.bh, %bb.bc
  %i.em = icmp slt i64 %i.be, %11
  %or.cond189 = select i1 %12, i1 true, i1 %i.em
  br i1 %or.cond189, label %.lr.ph265.preheader, label %.lr.ph252

.lr.ph265.preheader:                              ; preds = %.lr.ph252, %bb.be
  br label %.lr.ph265

bb.bf:                                            ; preds = %bb.bc
  %i.en = sub i64 %i.bc, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.en, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0267
  br i1 %.not134.not, label %bb.bg, label %bb.be

bb.bg:                                            ; preds = %bb.bf
  %i.eo = sub i64 %i.q, %i.en                     ; 3 uses
  %i.ep = icmp ult i64 %i.eo, %i.t
  br i1 %i.ep, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.eo
  %i.er = load i64, ptr %i.eq, align 8, !noundef !5
  %i.es = add i64 %i.er, %.sroa.04.1
  %.not135 = icmp ult i64 %i.es, %.sroa.025.0
  br i1 %.not135, label %bb.be, label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.eo, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #37
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.et = add i64 %.sroa.04.0, %2
  %i.eu = add i64 %i.ds, %5
  br label %.split._crit_edge.sink.split

.split._crit_edge.sink.split:                     ; preds = %bb.bj, %bb.ak
  %.sink399.a = phi i64 [ %i.dd, %bb.ak ], [ %i.et, %bb.bj ]
  %.sink397 = phi i64 [ %i.de, %bb.ak ], [ %i.eu, %bb.bj ]
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink399.a, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink397, ptr %i.ew, align 8
  br label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread, %.split._crit_edge.sink.split
  %.sink = phi i64 [ 1, %.split._crit_edge.sink.split ], [ 0, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread ], [ 0, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit ], [ 0, %.split ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtB6_4text12TextDiffSideeEB13_EB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = sub nuw i64 %3, %2
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 6 uses
  %i.c = icmp ult i64 %5, %6
  %i.d = sub nuw i64 %6, %5
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 4 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 3 uses
  %i.f = and i64 %i.e, 1
  %.not = icmp eq i64 %i.f, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !5 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1
  %.sroa.047.0 = sub i64 %i.y, %i.z               ; 3 uses
  %i.aa = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not128.not = icmp ugt i64 %i.k, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !169

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #37
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not129.not = icmp samesign ugt i64 %i.t, %.sroa.047.0
  br i1 %.not129.not, label %.lr.ph311, label %bb.h, !prof !169

.lr.ph311:                                        ; preds = %bb.g
  %.not.i = icmp eq i32 %10, -1
  %i.ac = add i64 %i.h, -1
  %i.ad = load i64, ptr %4, align 8, !range !60
  %i.ae = trunc nuw i64 %i.ad to i1               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ag = load i64, ptr %i.af, align 8            ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5 ; 6 uses
  %i.aj = load i64, ptr %1, align 8, !range !60
  %.fr312 = freeze i64 %i.aj
  %i.ak = trunc i64 %.fr312 to i1                 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i64, ptr %i.al, align 8            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !5 ; 8 uses
  %i.ap = add i64 %i.q, -1
  %i.aq = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.ar = add i64 %.sroa.037.0, %5                ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #37
  unreachable

bb.i:                                             ; preds = %.lr.ph311, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit143.thread
  %.sroa.048.0310 = phi i64 [ 0, %.lr.ph311 ], [ %i.as, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit143.thread ] ; 9 uses
  %i.as = add nuw nsw i64 %.sroa.048.0310, 1
  br i1 %.not.i, label %.lr.ph273.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.au = extractvalue { i64, i32 } %i.at, 0      ; 2 uses
  %i.av = icmp eq i64 %i.au, %9
  br i1 %i.av, label %.split, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit

.split:                                           ; preds = %bb.j
  %i.aw = extractvalue { i64, i32 } %i.at, 1      ; 2 uses
  %i.ax = icmp ult i32 %i.aw, 1000000000
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp samesign ugt i32 %i.aw, %10
  br i1 %i.ay, label %.split._crit_edge, label %.lr.ph273.preheader

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit: ; preds = %bb.j
  %i.az = icmp sgt i64 %i.au, %9
  br i1 %i.az, label %.split._crit_edge, label %.lr.ph273.preheader

.lr.ph273.preheader:                              ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %.split, %bb.i
  %11 = sub nsw i64 0, %.sroa.048.0310            ; 6 uses
  br label %.lr.ph273

.lr.ph273:                                        ; preds = %.lr.ph273.preheader, %bb.bk
  %.sroa.7.0272 = phi i64 [ %i.be, %bb.bk ], [ %.sroa.048.0310, %.lr.ph273.preheader ]
  %not..sroa.11177.0271 = phi i64 [ 1, %bb.bk ], [ 0, %.lr.ph273.preheader ]
  %i.ba = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0272, i64 %not..sroa.11177.0271) ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.ba, 1       ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.ba, 0       ; 10 uses
  %i.bd = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bc, i64 -1) ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 0       ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.bd, 1
  %12 = or i1 %i.bb, %i.bf
  %.not3.i.not = icmp slt i64 %i.bc, %11
  %or.cond205 = select i1 %i.bb, i1 true, i1 %.not3.i.not
  br i1 %or.cond205, label %.lr.ph308.preheader, label %bb.k

bb.k:                                             ; preds = %.lr.ph273
  %i.bg = icmp eq i64 %i.bc, %11
  br i1 %i.bg, label %._crit_edge380, label %bb.ao

._crit_edge380:                                   ; preds = %bb.k
  %.pre385 = add i64 %i.i, %i.bc
  br label %._crit_edge380.a

.lr.ph308:                                        ; preds = %.lr.ph308.preheader, %bb.aj
  %not..sroa.14186.0307 = phi i64 [ 1, %bb.aj ], [ 0, %.lr.ph308.preheader ]
  %.sroa.7185.0306 = phi i64 [ %i.bl, %bb.aj ], [ %.sroa.048.0310, %.lr.ph308.preheader ]
  %i.bh = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7185.0306, i64 %not..sroa.14186.0307) ; 2 uses
  %i.bi = extractvalue { i64, i1 } %i.bh, 1       ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bh, 0       ; 10 uses
  %i.bk = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bj, i64 -1) ; 2 uses
  %i.bl = extractvalue { i64, i1 } %i.bk, 0       ; 2 uses
  %i.bm = extractvalue { i64, i1 } %i.bk, 1
  %13 = or i1 %i.bi, %i.bm
  %.not3.i139.not = icmp slt i64 %i.bj, %11
  %or.cond207 = select i1 %i.bi, i1 true, i1 %.not3.i139.not
  br i1 %or.cond207, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit143.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph308
  %i.bn = icmp eq i64 %i.bj, %11
  br i1 %i.bn, label %._crit_edge382, label %bb.m

._crit_edge382:                                   ; preds = %bb.l
  %.pre = add i64 %i.r, %i.bj
  br label %._crit_edge382.a

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit143.thread: ; preds = %bb.aj, %.lr.ph308
  %exitcond379.not = icmp eq i64 %.sroa.048.0310, %.sroa.047.0
  br i1 %exitcond379.not, label %.split._crit_edge, label %bb.i

bb.m:                                             ; preds = %bb.l
  %.not130 = icmp eq i64 %i.bj, %.sroa.048.0310
  %.pre383 = add i64 %i.ap, %i.bj                 ; 6 uses
  br i1 %.not130, label %._crit_edge381, label %bb.n

._crit_edge382.a:                                 ; preds = %._crit_edge382, %bb.q
  %.pre-phi = phi i64 [ %.pre, %._crit_edge382 ], [ %i.br, %bb.q ] ; 3 uses
  %i.bo = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.bo, label %bb.v, label %bb.w

._crit_edge381:                                   ; preds = %bb.m, %bb.q
  %i.bp = icmp ult i64 %.pre383, %i.t
  br i1 %i.bp, label %bb.s, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.bq = icmp ult i64 %.pre383, %i.t
  br i1 %i.bq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = add i64 %i.r, %i.bj                     ; 4 uses
  %i.bs = icmp ult i64 %i.br, %i.t
  br i1 %i.bs, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre383, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #37
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre383
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !5
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.br
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !5
  %i.bx = icmp ult i64 %i.bu, %i.bw
  br i1 %i.bx, label %._crit_edge382.a, label %._crit_edge381

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.br, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #37
  unreachable

bb.s:                                             ; preds = %._crit_edge381
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre383
  %i.bz = load i64, ptr %i.by, align 8, !noundef !5
  %i.ca = add i64 %i.bz, 1
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge381
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre383, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #37
  unreachable

bb.u:                                             ; preds = %bb.v, %bb.s
  %.sroa.014.0 = phi i64 [ %i.cf, %bb.v ], [ %i.ca, %bb.s ] ; 5 uses
  %i.cb = sub i64 %.sroa.014.0, %i.bj             ; 4 uses
  %i.cc = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.cd = icmp ult i64 %i.cb, %.sroa.037.0
  %or.cond = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond, label %bb.y, label %bb.x

bb.v:                                             ; preds = %._crit_edge382.a
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !5
  br label %bb.u

bb.w:                                             ; preds = %._crit_edge382.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #37
  unreachable

bb.x:                                             ; preds = %bb.u, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit
  %.sroa.020.0 = phi i64 [ %i.ec, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit ], [ %i.cb, %bb.u ]
  %.sroa.014.1 = phi i64 [ %i.eb, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit ], [ %.sroa.014.0, %bb.u ] ; 3 uses
  %i.cg = add i64 %i.bj, %i.q                     ; 3 uses
  %i.ch = icmp ult i64 %i.cg, %i.t
  br i1 %i.ch, label %bb.ag, label %bb.ah

bb.y:                                             ; preds = %bb.u
  %i.ci = sub i64 %i.aq, %.sroa.014.0             ; 4 uses
  %i.cj = sub i64 %i.ar, %i.cb                    ; 4 uses
  %i.ck = sub i64 %i.ci, %2
  %i.cl = sub i64 %i.cj, %5
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.cl, i64 %i.ck) ; 7 uses
  %.not314 = icmp eq i64 %..i, 0
  br i1 %.not314, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph276

.lr.ph276:                                        ; preds = %bb.y
  br i1 %i.ae, label %.lr.ph276.split.us, label %.lr.ph276.split

.lr.ph276.split.us:                               ; preds = %.lr.ph276, %bb.ad
  %.sroa.0.0.i136275.us = phi i64 [ %i.db, %bb.ad ], [ 0, %.lr.ph276 ] ; 4 uses
  %i.cm = xor i64 %.sroa.0.0.i136275.us, -1       ; 2 uses
  %i.cn = add i64 %i.cj, %i.cm                    ; 2 uses
  %i.co = icmp ult i64 %i.cn, %i.ag
  br i1 %i.co, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us, label %.split281.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us: ; preds = %.lr.ph276.split.us
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.cn ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %i.cr = getelementptr i8, ptr %i.cp, i64 16
  %.sroa.0.1.i.i.us = load ptr, ptr %i.cq, align 8, !noalias !2990, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i.us = load i64, ptr %i.cr, align 8, !noalias !2990, !noundef !5 ; 2 uses
  %i.cs = add i64 %i.ci, %i.cm                    ; 3 uses
  %i.ct = icmp ult i64 %i.cs, %i.am               ; 2 uses
  br i1 %i.ak, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us
  br i1 %i.ct, label %bb.aa, label %.split283.us

bb.aa:                                            ; preds = %bb.z
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.cs ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us

bb.ab:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us
  br i1 %i.ct, label %bb.ac, label %.split283.us

bb.ac:                                            ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.cs ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  %i.cy = getelementptr i8, ptr %i.cw, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us: ; preds = %bb.ac, %bb.aa
  %.sroa.5.1.i.in.i144.us = phi ptr [ %i.cy, %bb.ac ], [ %i.cv, %bb.aa ]
  %.sroa.0.1.i.in.i145.us = phi ptr [ %i.cx, %bb.ac ], [ %i.cu, %bb.aa ]
  %.sroa.5.1.i.i147.us = load i64, ptr %.sroa.5.1.i.in.i144.us, align 8, !noalias !2996, !noundef !5
  %i.cz = icmp eq i64 %.sroa.5.1.i.i.us, %.sroa.5.1.i.i147.us
  br i1 %i.cz, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us
  %.sroa.0.1.i.i146.us = load ptr, ptr %.sroa.0.1.i.in.i145.us, align 8, !noalias !2996, !nonnull !5, !noundef !5
  %bcmp.i.us = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.us, ptr nonnull readonly %.sroa.0.1.i.i146.us, i64 %.sroa.5.1.i.i.us), !alias.scope !3002
  %i.da = icmp eq i32 %bcmp.i.us, 0
  br i1 %i.da, label %bb.ad, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

bb.ad:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us
  %i.db = add nuw i64 %.sroa.0.0.i136275.us, 1    ; 2 uses
  %exitcond378.not = icmp eq i64 %i.db, %..i
  br i1 %exitcond378.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph276.split.us

.lr.ph276.split:                                  ; preds = %.lr.ph276
  br i1 %i.ak, label %.lr.ph276.split.split.us, label %.lr.ph276.split.split

.lr.ph276.split.split.us:                         ; preds = %.lr.ph276.split, %bb.ae
  %.sroa.0.0.i136275.us287 = phi i64 [ %i.do, %bb.ae ], [ 0, %.lr.ph276.split ] ; 4 uses
  %i.dc = xor i64 %.sroa.0.0.i136275.us287, -1    ; 2 uses
  %i.dd = add i64 %i.cj, %i.dc                    ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.ag
  br i1 %i.de, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us288, label %.split281.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us288: ; preds = %.lr.ph276.split.split.us
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.dd ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.sroa.0.1.i.i.us289 = load ptr, ptr %i.df, align 8, !noalias !2990, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i.us290 = load i64, ptr %i.dg, align 8, !noalias !2990, !noundef !5 ; 2 uses
  %i.dh = add i64 %i.ci, %i.dc                    ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.am
  br i1 %i.di, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us291, label %.split283.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us291: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us288
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.dh ; 2 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 16
  %.sroa.5.1.i.i147.us294 = load i64, ptr %i.dk, align 8, !noalias !2996, !noundef !5
  %i.dl = icmp eq i64 %.sroa.5.1.i.i.us290, %.sroa.5.1.i.i147.us294
  br i1 %i.dl, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us295, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us295: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us291
  %i.dm = getelementptr i8, ptr %i.dj, i64 8
  %.sroa.0.1.i.i146.us296 = load ptr, ptr %i.dm, align 8, !noalias !2996, !nonnull !5, !noundef !5
  %bcmp.i.us297 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.us289, ptr nonnull readonly %.sroa.0.1.i.i146.us296, i64 %.sroa.5.1.i.i.us290), !alias.scope !3002
  %i.dn = icmp eq i32 %bcmp.i.us297, 0
  br i1 %i.dn, label %bb.ae, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

bb.ae:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us295
  %i.do = add nuw i64 %.sroa.0.0.i136275.us287, 1 ; 2 uses
  %exitcond377.not = icmp eq i64 %i.do, %..i
  br i1 %exitcond377.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph276.split.split.us

.lr.ph276.split.split:                            ; preds = %.lr.ph276.split, %bb.af
  %.sroa.0.0.i136275 = phi i64 [ %i.ea, %bb.af ], [ 0, %.lr.ph276.split ] ; 4 uses
  %i.dp = xor i64 %.sroa.0.0.i136275, -1          ; 2 uses
  %i.dq = add i64 %i.cj, %i.dp                    ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.ag
  br i1 %i.dr, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit, label %.split281.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit: ; preds = %.lr.ph276.split.split
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.dq ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.0.1.i.i = load ptr, ptr %i.ds, align 8, !noalias !2990, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i = load i64, ptr %i.dt, align 8, !noalias !2990, !noundef !5 ; 2 uses
  %i.du = add i64 %i.ci, %i.dp                    ; 2 uses
  %i.dv = icmp ult i64 %i.du, %i.am
  br i1 %i.dv, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148, label %.split283.us

.split281.us:                                     ; preds = %.lr.ph276.split.split, %.lr.ph276.split.split.us, %.lr.ph276.split.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #37, !noalias !3006
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.du ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.sroa.5.1.i.i147 = load i64, ptr %i.dx, align 8, !noalias !2996, !noundef !5
  %i.dy = icmp eq i64 %.sroa.5.1.i.i, %.sroa.5.1.i.i147
  br i1 %i.dy, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

.split283.us:                                     ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us288, %bb.z, %bb.ab
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #37, !noalias !3007
  unreachable

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148
  %.sroa.0.1.i.i146 = load ptr, ptr %i.dw, align 8, !noalias !2996, !nonnull !5, !noundef !5
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i, ptr nonnull readonly %.sroa.0.1.i.i146, i64 %.sroa.5.1.i.i), !alias.scope !3002
  %i.dz = icmp eq i32 %bcmp.i, 0
  br i1 %i.dz, label %bb.af, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

bb.af:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit
  %i.ea = add nuw i64 %.sroa.0.0.i136275, 1       ; 2 uses
  %exitcond376.not = icmp eq i64 %i.ea, %..i
  br i1 %exitcond376.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph276.split.split

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit: ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %bb.af, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us295, %bb.ae, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us291, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us, %bb.ad, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us, %bb.y
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.y ], [ %.sroa.0.0.i136275.us, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us ], [ %.sroa.0.0.i136275.us287, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us291 ], [ %..i, %bb.ad ], [ %.sroa.0.0.i136275.us, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us ], [ %.sroa.0.0.i136275.us287, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us295 ], [ %..i, %bb.ae ], [ %.sroa.0.0.i136275, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148 ], [ %..i, %bb.af ], [ %.sroa.0.0.i136275, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ] ; 2 uses
  %i.eb = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.ec = add i64 %.sroa.0.0.i136.lcssa, %i.cb
  br label %bb.x

bb.ag:                                            ; preds = %bb.x
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.cg
  store i64 %.sroa.014.1, ptr %i.ed, align 8
  br i1 %.not, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.x
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cg, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #37
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ee = sub i64 %i.bj, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.ee, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0310
  br i1 %.not131, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.al, %bb.ag
  %i.ef = icmp slt i64 %i.bl, %11
  %or.cond206 = select i1 %13, i1 true, i1 %i.ef
  br i1 %or.cond206, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit143.thread, label %.lr.ph308

bb.ak:                                            ; preds = %bb.ai
  %i.eg = sub i64 %i.h, %i.ee                     ; 3 uses
  %i.eh = icmp ult i64 %i.eg, %i.k
  br i1 %i.eh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.eg
  %i.ej = load i64, ptr %i.ei, align 8, !noundef !5
  %i.ek = add i64 %i.ej, %.sroa.014.1
  %.not132 = icmp ult i64 %i.ek, %.sroa.025.0
  br i1 %.not132, label %bb.aj, label %bb.an

bb.am:                                            ; preds = %bb.ak
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.eg, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #37
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.el = sub i64 %i.aq, %.sroa.014.1
  %i.em = sub i64 %i.ar, %.sroa.020.0
  br label %.split._crit_edge.sink.split

bb.ao:                                            ; preds = %bb.k
  %.not133 = icmp eq i64 %i.bc, %.sroa.048.0310
  %.pre387 = add i64 %i.ac, %i.bc                 ; 6 uses
  br i1 %.not133, label %._crit_edge, label %bb.ap

._crit_edge380.a:                                 ; preds = %._crit_edge380, %bb.as
  %.pre-phi386 = phi i64 [ %.pre385, %._crit_edge380 ], [ %i.eq, %bb.as ] ; 3 uses
  %i.en = icmp ult i64 %.pre-phi386, %i.k
  br i1 %i.en, label %bb.ax, label %bb.ay

._crit_edge:                                      ; preds = %bb.ao, %bb.as
  %i.eo = icmp ult i64 %.pre387, %i.k
  br i1 %i.eo, label %bb.au, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.ep = icmp ult i64 %.pre387, %i.k
  br i1 %i.ep, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.eq = add i64 %i.i, %i.bc                     ; 4 uses
  %i.er = icmp ult i64 %i.eq, %i.k
  br i1 %i.er, label %bb.as, label %bb.at

bb.ar:                                            ; preds = %bb.ap
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre387, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #37
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre387
  %i.et = load i64, ptr %i.es, align 8, !noundef !5
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.eq
  %i.ev = load i64, ptr %i.eu, align 8, !noundef !5
  %i.ew = icmp ult i64 %i.et, %i.ev
  br i1 %i.ew, label %._crit_edge380.a, label %._crit_edge

bb.at:                                            ; preds = %bb.aq
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.eq, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37
  unreachable

bb.au:                                            ; preds = %._crit_edge
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre387
  %i.ey = load i64, ptr %i.ex, align 8, !noundef !5
  %i.ez = add i64 %i.ey, 1
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre387, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #37
  unreachable

bb.aw:                                            ; preds = %bb.ax, %bb.au
  %.sroa.04.0 = phi i64 [ %i.ff, %bb.ax ], [ %i.ez, %bb.au ] ; 6 uses
  %i.fa = sub i64 %.sroa.04.0, %i.bc              ; 3 uses
  %i.fb = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.fb, i1 false
  %i.fc = icmp ult i64 %i.fa, %i.d
  %i.fd = and i1 %i.c, %.sroa.051.0
  %or.cond203 = select i1 %i.fd, i1 %i.fc, i1 false
  br i1 %or.cond203, label %bb.ba, label %bb.az

bb.ax:                                            ; preds = %._crit_edge380.a
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi386
  %i.ff = load i64, ptr %i.fe, align 8, !noundef !5
  br label %bb.aw

bb.ay:                                            ; preds = %._crit_edge380.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi386, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #37
  unreachable

bb.az:                                            ; preds = %bb.aw, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit
  %.sroa.04.1 = phi i64 [ %i.gt, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit ], [ %.sroa.04.0, %bb.aw ] ; 2 uses
  %i.fg = add i64 %i.bc, %i.h                     ; 3 uses
  %i.fh = icmp ult i64 %i.fg, %i.k
  br i1 %i.fh, label %bb.bi, label %bb.bj

bb.ba:                                            ; preds = %bb.aw
  %i.fi = add i64 %.sroa.04.0, %2                 ; 5 uses
  %i.fj = add i64 %i.fa, %5                       ; 4 uses
  %i.fk = sub i64 %3, %i.fi
  %i.fl = sub i64 %6, %i.fj
  %..i150 = tail call noundef i64 @llvm.umin.i64(i64 %i.fl, i64 %i.fk) ; 7 uses
  %.not313 = icmp eq i64 %..i150, 0
  br i1 %.not313, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ba
  br i1 %i.ae, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.bf
  %.sroa.0.0.i244.us = phi i64 [ %i.ga, %bb.bf ], [ 0, %.lr.ph ] ; 5 uses
  %i.fm = add nuw i64 %.sroa.0.0.i244.us, %i.fj   ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %i.ag
  br i1 %i.fn, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155.us, label %.split248.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155.us: ; preds = %.lr.ph.split.us
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.fm ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 8
  %i.fq = getelementptr i8, ptr %i.fo, i64 16
  %.sroa.0.1.i.i153.us = load ptr, ptr %i.fp, align 8, !noalias !3008, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i154.us = load i64, ptr %i.fq, align 8, !noalias !3008, !noundef !5 ; 2 uses
  %i.fr = add i64 %.sroa.0.0.i244.us, %i.fi       ; 3 uses
  %i.fs = icmp ult i64 %i.fr, %i.am               ; 2 uses
  br i1 %i.ak, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155.us
  br i1 %i.fs, label %bb.bc, label %.split250.us

bb.bc:                                            ; preds = %bb.bb
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.fr ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us

bb.bd:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155.us
  br i1 %i.fs, label %bb.be, label %.split250.us

bb.be:                                            ; preds = %bb.bd
  %i.fv = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.fr ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 8
  %i.fx = getelementptr i8, ptr %i.fv, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us: ; preds = %bb.be, %bb.bc
  %.sroa.5.1.i.in.i156.us = phi ptr [ %i.fx, %bb.be ], [ %i.fu, %bb.bc ]
  %.sroa.0.1.i.in.i157.us = phi ptr [ %i.fw, %bb.be ], [ %i.ft, %bb.bc ]
  %.sroa.5.1.i.i159.us = load i64, ptr %.sroa.5.1.i.in.i156.us, align 8, !noalias !3014, !noundef !5
  %i.fy = icmp eq i64 %.sroa.5.1.i.i154.us, %.sroa.5.1.i.i159.us
  br i1 %i.fy, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163.us, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163.us: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us
  %.sroa.0.1.i.i158.us = load ptr, ptr %.sroa.0.1.i.in.i157.us, align 8, !noalias !3014, !nonnull !5, !noundef !5
  %bcmp.i162.us = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i153.us, ptr nonnull readonly %.sroa.0.1.i.i158.us, i64 %.sroa.5.1.i.i154.us), !alias.scope !3020
  %i.fz = icmp eq i32 %bcmp.i162.us, 0
  br i1 %i.fz, label %bb.bf, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

bb.bf:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163.us
  %i.ga = add nuw i64 %.sroa.0.0.i244.us, 1       ; 2 uses
  %exitcond375.not = icmp eq i64 %i.ga, %..i150
  br i1 %exitcond375.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.gb = tail call i64 @llvm.usub.sat.i64(i64 %i.am, i64 %i.fi) ; 2 uses
  br i1 %i.ak, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %invariant.gep = getelementptr [16 x i8], ptr %i.ao, i64 %i.fi
  br label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %invariant.gep496 = getelementptr [24 x i8], ptr %i.ao, i64 %i.fi
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %bb.bg
  %.sroa.0.0.i244.us253 = phi i64 [ %i.gk, %bb.bg ], [ 0, %.lr.ph.split.split.us.preheader ] ; 6 uses
  %i.gc = add nuw i64 %.sroa.0.0.i244.us253, %i.fj ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.ag
  br i1 %i.gd, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155.us254, label %.split248.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155.us254: ; preds = %.lr.ph.split.split.us
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.gc ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %.sroa.0.1.i.i153.us255 = load ptr, ptr %i.ge, align 8, !noalias !3008, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i154.us256 = load i64, ptr %i.gf, align 8, !noalias !3008, !noundef !5 ; 2 uses
  %exitcond373.not = icmp eq i64 %.sroa.0.0.i244.us253, %i.gb
  br i1 %exitcond373.not, label %.split250.us, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us257

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us257: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155.us254
  %gep497 = getelementptr [24 x i8], ptr %invariant.gep496, i64 %.sroa.0.0.i244.us253 ; 2 uses
  %i.gg = getelementptr i8, ptr %gep497, i64 16
  %.sroa.5.1.i.i159.us260 = load i64, ptr %i.gg, align 8, !noalias !3014, !noundef !5
  %i.gh = icmp eq i64 %.sroa.5.1.i.i154.us256, %.sroa.5.1.i.i159.us260
  br i1 %i.gh, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163.us261, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163.us261: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us257
  %i.gi = getelementptr i8, ptr %gep497, i64 8
  %.sroa.0.1.i.i158.us262 = load ptr, ptr %i.gi, align 8, !noalias !3014, !nonnull !5, !noundef !5
  %bcmp.i162.us263 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i153.us255, ptr nonnull readonly %.sroa.0.1.i.i158.us262, i64 %.sroa.5.1.i.i154.us256), !alias.scope !3020
  %i.gj = icmp eq i32 %bcmp.i162.us263, 0
  br i1 %i.gj, label %bb.bg, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

bb.bg:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163.us261
  %i.gk = add nuw i64 %.sroa.0.0.i244.us253, 1    ; 2 uses
  %exitcond374.not = icmp eq i64 %i.gk, %..i150
  br i1 %exitcond374.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph.split.split.us

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.bh
  %.sroa.0.0.i244 = phi i64 [ %i.gs, %bb.bh ], [ 0, %.lr.ph.split.split.preheader ] ; 6 uses
  %i.gl = add nuw i64 %.sroa.0.0.i244, %i.fj      ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.ag
  br i1 %i.gm, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155, label %.split248.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155: ; preds = %.lr.ph.split.split
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.gl ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.sroa.0.1.i.i153 = load ptr, ptr %i.gn, align 8, !noalias !3008, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i154 = load i64, ptr %i.go, align 8, !noalias !3008, !noundef !5 ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.0.0.i244, %i.gb
  br i1 %exitcond.not, label %.split250.us, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160

.split248.us:                                     ; preds = %.lr.ph.split.split, %.lr.ph.split.split.us, %.lr.ph.split.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #37, !noalias !3024
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %.sroa.0.0.i244 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %.sroa.5.1.i.i159 = load i64, ptr %i.gp, align 8, !noalias !3014, !noundef !5
  %i.gq = icmp eq i64 %.sroa.5.1.i.i154, %.sroa.5.1.i.i159
  br i1 %i.gq, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

.split250.us:                                     ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155.us254, %bb.bb, %bb.bd
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #37, !noalias !3025
  unreachable

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160
  %.sroa.0.1.i.i158 = load ptr, ptr %gep, align 8, !noalias !3014, !nonnull !5, !noundef !5
  %bcmp.i162 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i153, ptr nonnull readonly %.sroa.0.1.i.i158, i64 %.sroa.5.1.i.i154), !alias.scope !3020
  %i.gr = icmp eq i32 %bcmp.i162, 0
  br i1 %i.gr, label %bb.bh, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

bb.bh:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163
  %i.gs = add nuw i64 %.sroa.0.0.i244, 1          ; 2 uses
  %exitcond371.not = icmp eq i64 %i.gs, %..i150
  br i1 %exitcond371.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph.split.split

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit: ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163, %bb.bh, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163.us261, %bb.bg, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us257, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163.us, %bb.bf, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us, %bb.ba
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.ba ], [ %.sroa.0.0.i244.us, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us ], [ %.sroa.0.0.i244.us253, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us257 ], [ %..i150, %bb.bf ], [ %.sroa.0.0.i244.us, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163.us ], [ %.sroa.0.0.i244.us253, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163.us261 ], [ %..i150, %bb.bg ], [ %.sroa.0.0.i244, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160 ], [ %..i150, %bb.bh ], [ %.sroa.0.0.i244, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163 ]
  %i.gt = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.az

bb.bi:                                            ; preds = %bb.az
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.fg
  store i64 %.sroa.04.1, ptr %i.gu, align 8
  br i1 %.not, label %bb.bk, label %bb.bl

bb.bj:                                            ; preds = %bb.az
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.fg, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #37
  unreachable

bb.bk:                                            ; preds = %bb.bl, %bb.bn, %bb.bi
  %i.gv = icmp slt i64 %i.be, %11
  %or.cond204 = select i1 %12, i1 true, i1 %i.gv
  br i1 %or.cond204, label %.lr.ph308.preheader, label %.lr.ph273

.lr.ph308.preheader:                              ; preds = %.lr.ph273, %bb.bk
  br label %.lr.ph308

bb.bl:                                            ; preds = %bb.bi
  %i.gw = sub i64 %i.bc, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.gw, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0310
  br i1 %.not134.not, label %bb.bm, label %bb.bk

bb.bm:                                            ; preds = %bb.bl
  %i.gx = sub i64 %i.q, %i.gw                     ; 3 uses
  %i.gy = icmp ult i64 %i.gx, %i.t
  br i1 %i.gy, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.gx
  %i.ha = load i64, ptr %i.gz, align 8, !noundef !5
  %i.hb = add i64 %i.ha, %.sroa.04.1
  %.not135 = icmp ult i64 %i.hb, %.sroa.025.0
  br i1 %.not135, label %bb.bk, label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.gx, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #37
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.hc = add i64 %.sroa.04.0, %2
  %i.hd = add i64 %i.fa, %5
  br label %.split._crit_edge.sink.split

.split._crit_edge.sink.split:                     ; preds = %bb.bp, %bb.an
  %.sink500.a = phi i64 [ %i.el, %bb.an ], [ %i.hc, %bb.bp ]
  %.sink498 = phi i64 [ %i.em, %bb.an ], [ %i.hd, %bb.bp ]
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink500.a, ptr %i.he, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink498, ptr %i.hf, align 8
  br label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit143.thread, %.split._crit_edge.sink.split
  %.sink = phi i64 [ 1, %.split._crit_edge.sink.split ], [ 0, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit143.thread ], [ 0, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit ], [ 0, %.split ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupmEB14_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 13 uses
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2)
  %.sroa.05.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5)
  %i.c = add i64 %.sroa.05.0, %.sroa.0.0          ; 2 uses
  %i.d = lshr i64 %i.c, 1
  %.sroa.011.0 = sub i64 %i.c, %i.d
  %i.e = add nuw i64 %.sroa.011.0, 1              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3026)
  %i.f = shl i64 %i.e, 1                          ; 6 uses
  %i.g = shl i64 %i.e, 4                          ; 6 uses
  %i.h = icmp ugt i64 %i.f, 2305843009213693951
  %.not.i5.i.i = icmp ugt i64 %i.g, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.h, %.not.i5.i.i
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.b, !prof !88

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.e, ptr %i.j, align 8, !alias.scope !3026
  store i64 0, ptr %i.b, align 8, !alias.scope !3026
  %.sroa.4.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i37, align 8, !alias.scope !3026
  %.sroa.5.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx.i38, align 8, !alias.scope !3026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !3029
  %i.k = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 9) 8) #36, !noalias !3029 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.g) #38, !noalias !3034
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.e, ptr %i.m, align 8, !alias.scope !3026
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !3026
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3026
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3035)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !3038
  %i.n = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 9) 8) #36, !noalias !3038 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.g) #38
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32: ; preds = %bb.k, %bb.j, %bb.h
  %.sroa.4.0..sroa_idx.i39 = phi ptr [ %.sroa.4.0..sroa_idx.i, %bb.h ], [ %.sroa.4.0..sroa_idx.i40, %bb.j ], [ %.sroa.4.0..sroa_idx.i40, %bb.k ]
  %.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.t, %bb.j ], [ %i.t, %bb.k ]
  %.val22 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.p = icmp eq i64 %.val22, 0
  br i1 %i.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32
  %.val23 = load ptr, ptr %.sroa.4.0..sroa_idx.i39, align 8, !nonnull !5, !noundef !5
  %i.q = shl nuw i64 %.val22, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32

bb.i:                                             ; preds = %bb.e, %.thread
  %.sroa.4.0..sroa_idx.i40 = phi ptr [ %.sroa.4.0..sroa_idx.i37, %.thread ], [ %.sroa.4.0..sroa_idx.i, %bb.e ] ; 3 uses
  %.sroa.4.0.i.i26 = phi i64 [ 0, %.thread ], [ %i.f, %bb.e ]
  %.sroa.10.0.i.i27 = phi ptr [ inttoptr (i64 8 to ptr), %.thread ], [ %i.n, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.e, ptr %i.s, align 8, !alias.scope !3035
  store i64 %.sroa.4.0.i.i26, ptr %i.a, align 8, !alias.scope !3035
  %.sroa.4.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i27, ptr %.sroa.4.0..sroa_idx.i28, align 8, !alias.scope !3035
  %.sroa.5.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx.i29, align 8, !alias.scope !3035
  invoke fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef align 8 dereferenceable(32) %i.a, ptr noalias nofree noundef align 8 dereferenceable(32) %i.b, i64 %7, i32 noundef %8)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val20 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.u = icmp eq i64 %.val20, 0
  br i1 %i.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val21 = load ptr, ptr %.sroa.4.0..sroa_idx.i28, align 8, !nonnull !5, !noundef !5
  %i.v = shl nuw i64 %.val20, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32

bb.l:                                             ; preds = %bb.i
  %.val18 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.w = icmp eq i64 %.val18, 0
  br i1 %i.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val19 = load ptr, ptr %.sroa.4.0..sroa_idx.i28, align 8, !nonnull !5, !noundef !5
  %i.x = shl nuw i64 %.val18, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.y = icmp eq i64 %.val, 0
  br i1 %i.y, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit34, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33
  %.val17 = load ptr, ptr %.sroa.4.0..sroa_idx.i40, align 8, !nonnull !5, !noundef !5
  %i.z = shl nuw i64 %.val, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit34

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit34: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit: ; preds = %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupmEB14_INtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 13 uses
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2)
  %.sroa.05.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5)
  %i.c = add i64 %.sroa.05.0, %.sroa.0.0          ; 2 uses
  %i.d = lshr i64 %i.c, 1
end_hunk_0
begin_hunk_1_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1s_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2i_NtNtB4_7capture7CaptureEEEEEB6_:bb.a
  %i.ajx = load i64, ptr %i.ajw, align 8, !alias.scope !6333, !noalias !6336, !noundef !5 ; 2 uses
  %i.ajy = icmp ult i64 %i.ajv, %i.ajx
  br i1 %i.ajy, label %bb.fu, label %.invoke1759.i213

bb.fu:                                            ; preds = %.noexc.us.i330
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.aji, i64 8
  %i.aka = load ptr, ptr %i.ajz, align 8, !alias.scope !6327, !noalias !6330, !nonnull !5, !noundef !5
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.aka, i64 %i.ajn
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajr, i64 8
  %i.akd = load ptr, ptr %i.akc, align 8, !alias.scope !6333, !noalias !6336, !nonnull !5, !noundef !5
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.ajv
  %.val231.us.i331 = load i32, ptr %i.akb, align 4, !noundef !5
  %.val232.us.i332 = load i32, ptr %i.ake, align 4, !noundef !5
  %i.akf = icmp eq i32 %.val231.us.i331, %.val232.us.i332
  br i1 %i.akf, label %bb.fy, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.akg = add i64 %i.aiv, %i.aiq                 ; 3 uses
  %i.akh = icmp ult i64 %i.akg, %i.yb
  br i1 %i.akh, label %bb.fw, label %.invoke1757.i

bb.fw:                                            ; preds = %bb.fv
  %i.aki = add i64 %.sroa.0105.0658.us.i323, %i.aip ; 3 uses
  %i.akj = icmp ult i64 %i.aki, %i.yb
  br i1 %i.akj, label %bb.fx, label %.split680.us.invoke.i222

bb.fx:                                            ; preds = %bb.fw
  %i.akk = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.akg
  %i.akl = load i8, ptr %i.akk, align 1, !noundef !5
  %i.akm = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.aki
  %i.akn = load i8, ptr %i.akm, align 1, !noundef !5
  %..i.us.i333 = tail call noundef i8 @llvm.umax.i8(i8 %i.akn, i8 %i.akl)
  br label %bb.ga

bb.fy:                                            ; preds = %bb.fu
  %i.ako = add i64 %.sroa.0105.0658.us.i323, %i.aiq ; 3 uses
  %i.akp = icmp ult i64 %i.ako, %i.yb
  br i1 %i.akp, label %bb.fz, label %.invoke1757.i

bb.fz:                                            ; preds = %bb.fy
  %i.akq = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.ako
  %i.akr = load i8, ptr %i.akq, align 1, !noundef !5
  %i.aks = add i8 %i.akr, 1
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fx
  %.sroa.04.0.us.i334 = phi i8 [ %i.aks, %bb.fz ], [ %..i.us.i333, %bb.fx ]
  %i.akt = add i64 %i.aiv, %i.aip                 ; 3 uses
  %i.aku = icmp ult i64 %i.akt, %i.yb
  br i1 %i.aku, label %bb.gb, label %.split680.us.invoke.i222

bb.gb:                                            ; preds = %bb.ga
  %i.akv = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.akt
  store i8 %.sroa.04.0.us.i334, ptr %i.akv, align 1
  %.not168.us.i335 = icmp eq i64 %i.aiv, 0
  br i1 %.not168.us.i335, label %..loopexit66_crit_edge.split.us.i336, label %.lr.ph.split.us.i322

.loopexit.split-lp.loopexit.split.us.i325:        ; preds = %bb.fs
  %lpad.loopexit67.us.i326 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i169

..loopexit66_crit_edge.split.us.i336:             ; preds = %bb.gb
  %.not.i337 = icmp eq i64 %i.yh, 0
  br i1 %.not.i337, label %.lr.ph718.i198, label %.lr.ph694.split.i306

.lr.ph.split.i314:                                ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit256.thread.i312
  %i.akw = add i64 %.sroa.088.0.i158, -1          ; 2 uses
  %i.akx = and i64 %i.akw, 1023
  %i.aky = icmp ne i64 %i.akx, 0
  %brmerge48.i315 = or i1 %.not.i98, %i.aky
  br i1 %brmerge48.i315, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.i320, label %bb.gc

bb.gc:                                            ; preds = %.lr.ph.split.i314
  %i.akz = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc315.i318 unwind label %.loopexit.split-lp.loopexit.split.i316 ; 2 uses

.noexc315.i318:                                   ; preds = %bb.gc
  %i.ala = extractvalue { i64, i32 } %i.akz, 0    ; 2 uses
  %i.alb = icmp eq i64 %i.ala, %9
  br i1 %i.alb, label %.split42.i321, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.i319

.split42.i321:                                    ; preds = %.noexc315.i318
  %i.alc = extractvalue { i64, i32 } %i.akz, 1    ; 2 uses
  %i.ald = icmp ult i32 %i.alc, 1000000000
  tail call void @llvm.assume(i1 %i.ald)
  %i.ale = icmp samesign ugt i32 %i.alc, %10
  br i1 %i.ale, label %.loopexit62.i303, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.i320

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.i319: ; preds = %.noexc315.i318
  %i.alf = icmp sgt i64 %i.ala, %9
  br i1 %i.alf, label %.loopexit62.i303, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.i320

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.i320: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.i319, %.split42.i321, %.lr.ph.split.i314
  %i.alg = add i64 %i.akw, %.sroa.0425.0          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val62) ]
  %i.alh = icmp ult i64 %i.alg, %.val63
  br i1 %i.alh, label %bb.gd, label %.invoke1759.i213

bb.gd:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.i320
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  br label %.invoke1759.i213

.split680.us.invoke.i222:                         ; preds = %bb.ga, %bb.fw, %bb.ek, %bb.ei, %bb.fh, %bb.ff, %bb.es, %bb.eu, %bb.fp
  %i.ali = phi i64 [ %i.aat, %bb.ei ], [ %i.afz, %bb.fh ], [ %i.aie, %bb.fp ], [ %i.adg, %bb.es ], [ %i.yb, %bb.eu ], [ %i.afr, %bb.ff ], [ %i.abg, %bb.ek ], [ %i.aki, %bb.fw ], [ %i.akt, %bb.ga ]
  %i.alj = phi ptr [ @77, %bb.ei ], [ @89, %bb.fh ], [ @93, %bb.fp ], [ @82, %bb.es ], [ @84, %bb.eu ], [ @87, %bb.ff ], [ @79, %bb.ek ], [ @97, %bb.fw ], [ @99, %bb.ga ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ali, i64 noundef %i.yb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.alj) #38
          to label %.split680.us.cont.i225 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i223

.split680.us.cont.i225:                           ; preds = %.split680.us.invoke.i222
  unreachable

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread505: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit289.i234, %.split34.i254, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit273.i, %.split32.i275, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit309.i294, %.split36.i302, %.loopexit62.i303
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yg) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.yg, i64 noundef %i.yb, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit: ; preds = %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_.exit.i195, %bb.ea, %bb.eb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yg) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.yg, i64 noundef %i.yb, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread502

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit145.thread, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i155, %.loopexit62.i303, %.split.i341, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i, %.loopexit62.i, %.split.i, %.split494, %bb.bb, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit145, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdftwklc2oBO_7similar.exit258.sink.split.i.thread, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread505
  %.val68 = load ptr, ptr %i.ce, align 8          ; 4 uses
  %.val69 = load i64, ptr %i.cf, align 8          ; 4 uses
  %.val70 = load ptr, ptr %i.cc, align 8          ; 4 uses
  %.val71 = load i64, ptr %i.cd, align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6341)
  %i.alk = sub i64 %i.ca, %.sroa.0.0              ; 3 uses
  %.sroa.025.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.ca, i64 %.sroa.0.0) ; 6 uses
  %i.all = sub i64 %i.cb, %.sroa.0425.0           ; 2 uses
  %.sroa.037.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.cb, i64 %.sroa.0425.0) ; 4 uses
  %i.alm = sub i64 %.sroa.025.0.i, %.sroa.037.0.i ; 3 uses
  %i.aln = and i64 %i.alm, 1
  %.not.i342 = icmp eq i64 %i.aln, 0              ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.alp = load i64, ptr %i.alo, align 8, !alias.scope !6338, !noalias !6343, !noundef !5 ; 4 uses
  %i.alq = add i64 %i.alp, 1                      ; 5 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.als = load i64, ptr %i.alr, align 8, !alias.scope !6338, !noalias !6343, !noundef !5 ; 16 uses
  %i.alt = icmp ult i64 %i.alq, %i.als
  br i1 %i.alt, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread
  %i.alu = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.alv = load ptr, ptr %i.alu, align 8, !alias.scope !6338, !noalias !6343, !nonnull !5, !noundef !5 ; 7 uses
  %i.alw = getelementptr inbounds nuw [8 x i8], ptr %i.alv, i64 %i.alq
  store i64 0, ptr %i.alw, align 8, !noalias !6345
  %i.alx = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.aly = load i64, ptr %i.alx, align 8, !alias.scope !6341, !noalias !6346, !noundef !5 ; 4 uses
  %i.alz = add i64 %i.aly, 1                      ; 5 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.amb = load i64, ptr %i.ama, align 8, !alias.scope !6341, !noalias !6346, !noundef !5 ; 16 uses
  %i.amc = icmp ult i64 %i.alz, %i.amb
  br i1 %i.amc, label %bb.gg, label %bb.gh

bb.gf:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.alq, i64 noundef %i.als, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37, !noalias !6345
  unreachable

bb.gg:                                            ; preds = %bb.ge
  %i.amd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ame = load ptr, ptr %i.amd, align 8, !alias.scope !6341, !noalias !6346, !nonnull !5, !noundef !5 ; 7 uses
  %i.amf = getelementptr inbounds nuw [8 x i8], ptr %i.ame, i64 %i.alz
  store i64 0, ptr %i.amf, align 8, !noalias !6345
  %i.amg = add i64 %.sroa.025.0.i, %.sroa.037.0.i ; 2 uses
  %i.amh = lshr i64 %i.amg, 1
  %.sroa.047.0.i = sub i64 %i.amg, %i.amh         ; 3 uses
  %i.ami = icmp ult i64 %i.als, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ami)
  %.not128.not.i = icmp ugt i64 %i.als, %.sroa.047.0.i
  br i1 %.not128.not.i, label %bb.gj, label %bb.gi, !prof !169

bb.gh:                                            ; preds = %bb.ge
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.alz, i64 noundef %i.amb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #37, !noalias !6345
  unreachable

bb.gi:                                            ; preds = %bb.gg
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #37, !noalias !6345
  unreachable

bb.gj:                                            ; preds = %bb.gg
  %i.amj = icmp ult i64 %i.amb, 1152921504606846976
  tail call void @llvm.assume(i1 %i.amj)
  %.not129.not.i = icmp samesign ugt i64 %i.amb, %.sroa.047.0.i
  br i1 %.not129.not.i, label %.lr.ph134.i, label %bb.gk, !prof !169

.lr.ph134.i:                                      ; preds = %bb.gj
  %i.amk = add i64 %i.alp, -1
  %i.aml = add i64 %i.aly, -1
  %i.amm = add i64 %.sroa.025.0.i, %.sroa.0.0     ; 2 uses
  %i.amn = add i64 %.sroa.037.0.i, %.sroa.0425.0  ; 2 uses
  br label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #37, !noalias !6345
  unreachable

bb.gl:                                            ; preds = %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit157.thread.i, %.lr.ph134.i
  %.sroa.048.0133.i = phi i64 [ 0, %.lr.ph134.i ], [ %i.amo, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit157.thread.i ] ; 11 uses
  %i.amo = add nuw nsw i64 %.sroa.048.0133.i, 1
  br i1 %.not.i98, label %.lr.ph122.i.preheader, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.amp = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now(), !noalias !6345 ; 2 uses
  %i.amq = extractvalue { i64, i32 } %i.amp, 0    ; 2 uses
  %i.amr = icmp eq i64 %i.amq, %9
  br i1 %i.amr, label %.split.i355, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i344

.split.i355:                                      ; preds = %bb.gm
  %i.ams = extractvalue { i64, i32 } %i.amp, 1    ; 2 uses
  %i.amt = icmp ult i32 %i.ams, 1000000000
  tail call void @llvm.assume(i1 %i.amt)
  %i.amu = icmp samesign ugt i32 %i.ams, %10
  br i1 %i.amu, label %bb.ir, label %.lr.ph122.i.preheader

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i344: ; preds = %bb.gm
  %i.amv = icmp sgt i64 %i.amq, %9
  br i1 %i.amv, label %bb.ir, label %.lr.ph122.i.preheader

.lr.ph122.i.preheader:                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i344, %.split.i355, %bb.gl
  %11 = sub nsw i64 0, %.sroa.048.0133.i          ; 6 uses
  %.pre221.i = sub i64 %i.alq, %.sroa.048.0133.i
  br label %.lr.ph122.i

.lr.ph122.i:                                      ; preds = %bb.il, %.lr.ph122.i.preheader
  %.sroa.7.0121.i = phi i64 [ %i.ana, %bb.il ], [ %.sroa.048.0133.i, %.lr.ph122.i.preheader ]
  %not..sroa.1118.0120.i = phi i64 [ 1, %bb.il ], [ 0, %.lr.ph122.i.preheader ]
  %i.amw = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0121.i, i64 %not..sroa.1118.0120.i) ; 2 uses
  %i.amx = extractvalue { i64, i1 } %i.amw, 1     ; 2 uses
  %i.amy = extractvalue { i64, i1 } %i.amw, 0     ; 9 uses
  %i.amz = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.amy, i64 -1) ; 2 uses
  %i.ana = extractvalue { i64, i1 } %i.amz, 0     ; 2 uses
  %i.anb = extractvalue { i64, i1 } %i.amz, 1
  %12 = or i1 %i.amx, %i.anb
  %.not3.i.not.i = icmp slt i64 %i.amy, %11
  %or.cond44.i = select i1 %i.amx, i1 true, i1 %.not3.i.not.i
  br i1 %or.cond44.i, label %bb.gn, label %.lr.ph131.i.preheader

.lr.ph131.i.preheader:                            ; preds = %.lr.ph122.i
  %13 = icmp eq i64 %i.amy, %11
  br i1 %13, label %._crit_edge216.i, label %bb.hq

bb.gn:                                            ; preds = %bb.il, %.lr.ph122.i
  %.pre.i349 = sub i64 %i.alz, %.sroa.048.0133.i
  br label %.lr.ph131.i

.lr.ph131.i:                                      ; preds = %bb.hl, %bb.gn
  %not..sroa.1427.0130.i = phi i64 [ 1, %bb.hl ], [ 0, %bb.gn ]
  %.sroa.726.0129.i = phi i64 [ %i.ang, %bb.hl ], [ %.sroa.048.0133.i, %bb.gn ]
  %i.anc = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.726.0129.i, i64 %not..sroa.1427.0130.i) ; 2 uses
  %i.and = extractvalue { i64, i1 } %i.anc, 1     ; 2 uses
  %i.ane = extractvalue { i64, i1 } %i.anc, 0     ; 9 uses
  %i.anf = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ane, i64 -1) ; 2 uses
  %i.ang = extractvalue { i64, i1 } %i.anf, 0     ; 2 uses
  %i.anh = extractvalue { i64, i1 } %i.anf, 1
  %14 = or i1 %i.and, %i.anh
  %.not3.i153.not.i = icmp slt i64 %i.ane, %11
  %or.cond46.i = select i1 %i.and, i1 true, i1 %.not3.i153.not.i
  br i1 %or.cond46.i, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit157.thread.i, label %bb.go

bb.go:                                            ; preds = %.lr.ph131.i
  %i.ani = icmp eq i64 %i.ane, %11
  br i1 %i.ani, label %._crit_edge218.i, label %bb.gp

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit157.thread.i: ; preds = %bb.hl, %.lr.ph131.i
  %exitcond215.not.i = icmp eq i64 %.sroa.048.0133.i, %.sroa.047.0.i
  br i1 %exitcond215.not.i, label %bb.ir, label %bb.gl

bb.gp:                                            ; preds = %bb.go
  %.not130.i = icmp eq i64 %i.ane, %.sroa.048.0133.i
  %.pre219.i = add i64 %i.aml, %i.ane             ; 6 uses
  br i1 %.not130.i, label %._crit_edge217.i, label %bb.gq

._crit_edge218.i:                                 ; preds = %bb.go, %bb.gt
  %.pre-phi.i = phi i64 [ %i.anm, %bb.gt ], [ %.pre.i349, %bb.go ] ; 3 uses
  %i.anj = icmp ult i64 %.pre-phi.i, %i.amb
  br i1 %i.anj, label %bb.gy, label %bb.gz

._crit_edge217.i:                                 ; preds = %bb.gt, %bb.gp
  %i.ank = icmp ult i64 %.pre219.i, %i.amb
  br i1 %i.ank, label %bb.gv, label %bb.gw

bb.gq:                                            ; preds = %bb.gp
  %i.anl = icmp ult i64 %.pre219.i, %i.amb
  br i1 %i.anl, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.anm = add i64 %i.ane, %i.alz                 ; 4 uses
  %i.ann = icmp ult i64 %i.anm, %i.amb
  br i1 %i.ann, label %bb.gt, label %bb.gu

bb.gs:                                            ; preds = %bb.gq
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre219.i, i64 noundef %i.amb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #37, !noalias !6345
  unreachable

bb.gt:                                            ; preds = %bb.gr
  %i.ano = getelementptr inbounds nuw [8 x i8], ptr %i.ame, i64 %.pre219.i
  %i.anp = load i64, ptr %i.ano, align 8, !noalias !6345, !noundef !5
  %i.anq = getelementptr inbounds nuw [8 x i8], ptr %i.ame, i64 %i.anm
  %i.anr = load i64, ptr %i.anq, align 8, !noalias !6345, !noundef !5
  %i.ans = icmp ult i64 %i.anp, %i.anr
  br i1 %i.ans, label %._crit_edge218.i, label %._crit_edge217.i

bb.gu:                                            ; preds = %bb.gr
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.anm, i64 noundef %i.amb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #37, !noalias !6345
  unreachable

bb.gv:                                            ; preds = %._crit_edge217.i
  %i.ant = getelementptr inbounds nuw [8 x i8], ptr %i.ame, i64 %.pre219.i
  %i.anu = load i64, ptr %i.ant, align 8, !noalias !6345, !noundef !5
  %i.anv = add i64 %i.anu, 1
  br label %bb.gx

bb.gw:                                            ; preds = %._crit_edge217.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre219.i, i64 noundef %i.amb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #37, !noalias !6345
  unreachable

bb.gx:                                            ; preds = %bb.gy, %bb.gv
  %.sroa.014.0.i = phi i64 [ %i.aoa, %bb.gy ], [ %i.anv, %bb.gv ] ; 5 uses
  %i.anw = sub i64 %.sroa.014.0.i, %i.ane         ; 4 uses
  %i.anx = icmp ult i64 %.sroa.014.0.i, %.sroa.025.0.i
  %i.any = icmp ult i64 %i.anw, %.sroa.037.0.i
  %or.cond.i347 = select i1 %i.anx, i1 %i.any, i1 false
  br i1 %or.cond.i347, label %bb.hb, label %bb.ha

bb.gy:                                            ; preds = %._crit_edge218.i
  %i.anz = getelementptr inbounds nuw [8 x i8], ptr %i.ame, i64 %.pre-phi.i
  %i.aoa = load i64, ptr %i.anz, align 8, !noalias !6345, !noundef !5
  br label %bb.gx

bb.gz:                                            ; preds = %._crit_edge218.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi.i, i64 noundef %i.amb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #37, !noalias !6345
  unreachable

bb.ha:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i, %bb.gx
  %.sroa.020.0.i = phi i64 [ %i.app, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i ], [ %i.anw, %bb.gx ]
  %.sroa.014.1.i = phi i64 [ %i.apo, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i ], [ %.sroa.014.0.i, %bb.gx ] ; 3 uses
  %i.aob = add i64 %i.ane, %i.aly                 ; 3 uses
  %i.aoc = icmp ult i64 %i.aob, %i.amb
  br i1 %i.aoc, label %bb.hi, label %bb.hj

bb.hb:                                            ; preds = %bb.gx
  %i.aod = sub i64 %i.amm, %.sroa.014.0.i         ; 2 uses
  %i.aoe = sub i64 %i.amn, %i.anw                 ; 2 uses
  %i.aof = sub i64 %i.aod, %.sroa.0.0
  %i.aog = sub i64 %i.aoe, %.sroa.0425.0
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.aog, i64 %i.aof) ; 3 uses
  %.not137.i = icmp eq i64 %..i.i, 0
  br i1 %.not137.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i, label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %bb.hb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hh, %.lr.ph125.i
  %.sroa.0.0.i136124.i = phi i64 [ 0, %.lr.ph125.i ], [ %i.apn, %bb.hh ] ; 3 uses
  %i.aoh = xor i64 %.sroa.0.0.i136124.i, -1       ; 2 uses
  %i.aoi = add i64 %i.aoe, %i.aoh                 ; 3 uses
  %i.aoj = icmp ult i64 %i.aoi, %.val71
  br i1 %i.aoj, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aoi, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #37, !noalias !6347
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i: ; preds = %bb.hc
  %i.aok = add i64 %i.aod, %i.aoh                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %i.aol = icmp ult i64 %i.aok, %.val69
  br i1 %i.aol, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit158.i, label %bb.he

bb.he:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aok, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #37, !noalias !6350
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit158.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i
  %i.aom = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.aoi ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6356)
  %i.aon = load ptr, ptr %i.aom, align 8, !alias.scope !6353, !noalias !6358, !nonnull !5, !align !97, !noundef !5 ; 3 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aom, i64 8
  %i.aop = load i64, ptr %i.aoo, align 8, !alias.scope !6353, !noalias !6358, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6359)
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aon, i64 24
  %i.aor = load i64, ptr %i.aoq, align 8, !alias.scope !6359, !noalias !6362, !noundef !5
  %i.aos = sub i64 %i.aop, %i.aor                 ; 3 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aon, i64 16
  %i.aou = load i64, ptr %i.aot, align 8, !alias.scope !6359, !noalias !6362, !noundef !5 ; 2 uses
  %i.aov = icmp ult i64 %i.aos, %i.aou
  br i1 %i.aov, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139.i, label %bb.hf

bb.hf:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit158.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aos, i64 noundef %i.aou, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !6364
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit158.i
  %i.aow = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.aok ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aon, i64 8
  %i.aoy = load ptr, ptr %i.aox, align 8, !alias.scope !6359, !noalias !6362, !nonnull !5, !noundef !5
  %i.aoz = load ptr, ptr %i.aow, align 8, !alias.scope !6356, !noalias !6365, !nonnull !5, !align !97, !noundef !5 ; 3 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aow, i64 8
  %i.apb = load i64, ptr %i.apa, align 8, !alias.scope !6356, !noalias !6365, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6366)
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aoz, i64 24
  %i.apd = load i64, ptr %i.apc, align 8, !alias.scope !6366, !noalias !6369, !noundef !5
  %i.ape = sub i64 %i.apb, %i.apd                 ; 3 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aoz, i64 16
  %i.apg = load i64, ptr %i.apf, align 8, !alias.scope !6366, !noalias !6369, !noundef !5 ; 2 uses
  %i.aph = icmp ult i64 %i.ape, %i.apg
  br i1 %i.aph, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138.i, label %bb.hg

bb.hg:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ape, i64 noundef %i.apg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !6371
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139.i
  %i.api = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %i.aos
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aoz, i64 8
  %i.apk = load ptr, ptr %i.apj, align 8, !alias.scope !6366, !noalias !6369, !nonnull !5, !noundef !5
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr %i.apk, i64 %i.ape
  %.val141.i = load i32, ptr %i.api, align 4, !noalias !6345, !noundef !5
  %.val142.i = load i32, ptr %i.apl, align 4, !noalias !6345, !noundef !5
  %i.apm = icmp eq i32 %.val141.i, %.val142.i
  br i1 %i.apm, label %bb.hh, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i

bb.hh:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138.i
  %i.apn = add nuw i64 %.sroa.0.0.i136124.i, 1    ; 2 uses
  %exitcond214.not.i = icmp eq i64 %i.apn, %..i.i
  br i1 %exitcond214.not.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i, label %bb.hc

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i: ; preds = %bb.hh, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138.i, %bb.hb
  %.sroa.0.0.i136.lcssa.i = phi i64 [ 0, %bb.hb ], [ %.sroa.0.0.i136124.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138.i ], [ %..i.i, %bb.hh ] ; 2 uses
  %i.apo = add i64 %.sroa.0.0.i136.lcssa.i, %.sroa.014.0.i
  %i.app = add i64 %.sroa.0.0.i136.lcssa.i, %i.anw
  br label %bb.ha

bb.hi:                                            ; preds = %bb.ha
  %i.apq = getelementptr inbounds nuw [8 x i8], ptr %i.ame, i64 %i.aob
  store i64 %.sroa.014.1.i, ptr %i.apq, align 8, !noalias !6345
  br i1 %.not.i342, label %bb.hk, label %bb.hl

bb.hj:                                            ; preds = %bb.ha
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aob, i64 noundef %i.amb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #37, !noalias !6345
  unreachable

bb.hk:                                            ; preds = %bb.hi
  %i.apr = sub i64 %i.ane, %i.alm                 ; 2 uses
  %.sroa.024.0.i = tail call i64 @llvm.abs.i64(i64 %i.apr, i1 false)
  %.not131.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.048.0133.i
  br i1 %.not131.i, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hn, %bb.hk, %bb.hi
  %i.aps = icmp slt i64 %i.ang, %11
  %or.cond45.i = select i1 %14, i1 true, i1 %i.aps
  br i1 %or.cond45.i, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit157.thread.i, label %.lr.ph131.i

bb.hm:                                            ; preds = %bb.hk
  %i.apt = sub i64 %i.alp, %i.apr                 ; 3 uses
  %i.apu = icmp ult i64 %i.apt, %i.als
  br i1 %i.apu, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.apv = getelementptr inbounds nuw [8 x i8], ptr %i.alv, i64 %i.apt
  %i.apw = load i64, ptr %i.apv, align 8, !noalias !6345, !noundef !5
  %i.apx = add i64 %i.apw, %.sroa.014.1.i
  %.not132.i = icmp ult i64 %i.apx, %.sroa.025.0.i
  br i1 %.not132.i, label %bb.hl, label %bb.hp

bb.ho:                                            ; preds = %bb.hm
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.apt, i64 noundef %i.als, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #37, !noalias !6345
  unreachable

bb.hp:                                            ; preds = %bb.hn
  %i.apy = sub i64 %i.amm, %.sroa.014.1.i
  %i.apz = sub i64 %i.amn, %.sroa.020.0.i
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1D_12OffsetLookupmEEEB13_EB6_.exit

bb.hq:                                            ; preds = %.lr.ph131.i.preheader
  %.not133.i = icmp eq i64 %i.amy, %.sroa.048.0133.i
  %.pre223.i = add i64 %i.amk, %i.amy             ; 6 uses
  br i1 %.not133.i, label %._crit_edge.i345, label %bb.hr

._crit_edge216.i:                                 ; preds = %.lr.ph131.i.preheader, %bb.hu
  %.pre-phi222.i = phi i64 [ %i.aqd, %bb.hu ], [ %.pre221.i, %.lr.ph131.i.preheader ] ; 3 uses
  %i.aqa = icmp ult i64 %.pre-phi222.i, %i.als
  br i1 %i.aqa, label %bb.hz, label %bb.ia

._crit_edge.i345:                                 ; preds = %bb.hu, %bb.hq
  %i.aqb = icmp ult i64 %.pre223.i, %i.als
  br i1 %i.aqb, label %bb.hw, label %bb.hx

bb.hr:                                            ; preds = %bb.hq
  %i.aqc = icmp ult i64 %.pre223.i, %i.als
  br i1 %i.aqc, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.aqd = add i64 %i.amy, %i.alq                 ; 4 uses
  %i.aqe = icmp ult i64 %i.aqd, %i.als
  br i1 %i.aqe, label %bb.hu, label %bb.hv

bb.ht:                                            ; preds = %bb.hr
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre223.i, i64 noundef %i.als, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #37, !noalias !6345
  unreachable

bb.hu:                                            ; preds = %bb.hs
  %i.aqf = getelementptr inbounds nuw [8 x i8], ptr %i.alv, i64 %.pre223.i
  %i.aqg = load i64, ptr %i.aqf, align 8, !noalias !6345, !noundef !5
  %i.aqh = getelementptr inbounds nuw [8 x i8], ptr %i.alv, i64 %i.aqd
  %i.aqi = load i64, ptr %i.aqh, align 8, !noalias !6345, !noundef !5
  %i.aqj = icmp ult i64 %i.aqg, %i.aqi
  br i1 %i.aqj, label %._crit_edge216.i, label %._crit_edge.i345

bb.hv:                                            ; preds = %bb.hs
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aqd, i64 noundef %i.als, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37, !noalias !6345
  unreachable

bb.hw:                                            ; preds = %._crit_edge.i345
  %i.aqk = getelementptr inbounds nuw [8 x i8], ptr %i.alv, i64 %.pre223.i
  %i.aql = load i64, ptr %i.aqk, align 8, !noalias !6345, !noundef !5
  %i.aqm = add i64 %i.aql, 1
  br label %bb.hy

bb.hx:                                            ; preds = %._crit_edge.i345
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre223.i, i64 noundef %i.als, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #37, !noalias !6345
  unreachable

bb.hy:                                            ; preds = %bb.hz, %bb.hw
  %.sroa.04.0.i346 = phi i64 [ %i.aqr, %bb.hz ], [ %i.aqm, %bb.hw ] ; 6 uses
  %i.aqn = sub i64 %.sroa.04.0.i346, %i.amy       ; 3 uses
  %i.aqo = icmp ult i64 %.sroa.04.0.i346, %i.alk
  %i.aqp = icmp ult i64 %i.aqn, %i.all
  %or.cond42.i = select i1 %i.aqo, i1 %i.aqp, i1 false
  br i1 %or.cond42.i, label %bb.ic, label %bb.ib

bb.hz:                                            ; preds = %._crit_edge216.i
  %i.aqq = getelementptr inbounds nuw [8 x i8], ptr %i.alv, i64 %.pre-phi222.i
  %i.aqr = load i64, ptr %i.aqq, align 8, !noalias !6345, !noundef !5
  br label %bb.hy

bb.ia:                                            ; preds = %._crit_edge216.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi222.i, i64 noundef %i.als, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #37, !noalias !6345
  unreachable

bb.ib:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i, %bb.hy
  %.sroa.04.1.i = phi i64 [ %i.asc, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i ], [ %.sroa.04.0.i346, %bb.hy ] ; 2 uses
  %i.aqs = add i64 %i.amy, %i.alp                 ; 3 uses
  %i.aqt = icmp ult i64 %i.aqs, %i.als
  br i1 %i.aqt, label %bb.ij, label %bb.ik

bb.ic:                                            ; preds = %bb.hy
  %i.aqu = add i64 %.sroa.04.0.i346, %.sroa.0.0   ; 4 uses
  %i.aqv = add i64 %i.aqn, %.sroa.0425.0          ; 3 uses
  %i.aqw = sub i64 %i.ca, %i.aqu
  %i.aqx = sub i64 %i.cb, %i.aqv
  %..i159.i = tail call noundef i64 @llvm.umin.i64(i64 %i.aqx, i64 %i.aqw) ; 3 uses
  %.not136.i = icmp eq i64 %..i159.i, 0
  br i1 %.not136.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i, label %.lr.ph.i349

.lr.ph.i349:                                      ; preds = %bb.ic
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  %umax212.i = tail call i64 @llvm.umax.i64(i64 %.val69, i64 %i.aqu) ; 2 uses
  %i.aqy = sub i64 %umax212.i, %i.aqu
  %invariant.gep.i350 = getelementptr [16 x i8], ptr %.val68, i64 %i.aqu
  br label %bb.id

bb.id:                                            ; preds = %bb.ii, %.lr.ph.i349
  %.sroa.0.0.i117.i = phi i64 [ 0, %.lr.ph.i349 ], [ %i.asb, %bb.ii ] ; 5 uses
  %i.aqz = add nuw i64 %.sroa.0.0.i117.i, %i.aqv  ; 2 uses
  %i.ara = icmp ult i64 %i.aqz, %.val71
  br i1 %i.ara, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit160.i, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %umax.i351 = tail call i64 @llvm.umax.i64(i64 %.val71, i64 %i.aqv)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax.i351, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #37, !noalias !6372
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit160.i: ; preds = %bb.id
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %exitcond.not.i352 = icmp eq i64 %.sroa.0.0.i117.i, %i.aqy
  br i1 %exitcond.not.i352, label %bb.if, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit161.i

bb.if:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit160.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax212.i, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #37, !noalias !6375
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit161.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit160.i
  %i.arb = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.aqz ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6381)
  %i.arc = load ptr, ptr %i.arb, align 8, !alias.scope !6378, !noalias !6383, !nonnull !5, !align !97, !noundef !5 ; 3 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arb, i64 8
  %i.are = load i64, ptr %i.ard, align 8, !alias.scope !6378, !noalias !6383, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6384)
  %i.arf = getelementptr inbounds nuw i8, ptr %i.arc, i64 24
  %i.arg = load i64, ptr %i.arf, align 8, !alias.scope !6384, !noalias !6387, !noundef !5
  %i.arh = sub i64 %i.are, %i.arg                 ; 3 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arc, i64 16
  %i.arj = load i64, ptr %i.ari, align 8, !alias.scope !6384, !noalias !6387, !noundef !5 ; 2 uses
  %i.ark = icmp ult i64 %i.arh, %i.arj
  br i1 %i.ark, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137.i, label %bb.ig

bb.ig:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit161.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.arh, i64 noundef %i.arj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !6389
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit161.i
  %gep.i353 = getelementptr [16 x i8], ptr %invariant.gep.i350, i64 %.sroa.0.0.i117.i ; 2 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %i.arc, i64 8
  %i.arm = load ptr, ptr %i.arl, align 8, !alias.scope !6384, !noalias !6387, !nonnull !5, !noundef !5
  %i.arn = load ptr, ptr %gep.i353, align 8, !alias.scope !6381, !noalias !6390, !nonnull !5, !align !97, !noundef !5 ; 3 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %gep.i353, i64 8
  %i.arp = load i64, ptr %i.aro, align 8, !alias.scope !6381, !noalias !6390, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6391)
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arn, i64 24
  %i.arr = load i64, ptr %i.arq, align 8, !alias.scope !6391, !noalias !6394, !noundef !5
  %i.ars = sub i64 %i.arp, %i.arr                 ; 3 uses
  %i.art = getelementptr inbounds nuw i8, ptr %i.arn, i64 16
  %i.aru = load i64, ptr %i.art, align 8, !alias.scope !6391, !noalias !6394, !noundef !5 ; 2 uses
  %i.arv = icmp ult i64 %i.ars, %i.aru
  br i1 %i.arv, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i, label %bb.ih

bb.ih:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ars, i64 noundef %i.aru, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !6396
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137.i
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.arm, i64 %i.arh
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arn, i64 8
  %i.ary = load ptr, ptr %i.arx, align 8, !alias.scope !6391, !noalias !6394, !nonnull !5, !noundef !5
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %i.ary, i64 %i.ars
  %.val.i354 = load i32, ptr %i.arw, align 4, !noalias !6345, !noundef !5
  %.val140.i = load i32, ptr %i.arz, align 4, !noalias !6345, !noundef !5
  %i.asa = icmp eq i32 %.val.i354, %.val140.i
  br i1 %i.asa, label %bb.ii, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i

bb.ii:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i
  %i.asb = add nuw i64 %.sroa.0.0.i117.i, 1       ; 2 uses
  %exitcond213.not.i = icmp eq i64 %i.asb, %..i159.i
  br i1 %exitcond213.not.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i, label %bb.id

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i: ; preds = %bb.ii, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i, %bb.ic
  %.sroa.0.0.i.lcssa.i = phi i64 [ 0, %bb.ic ], [ %.sroa.0.0.i117.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i ], [ %..i159.i, %bb.ii ]
  %i.asc = add i64 %.sroa.0.0.i.lcssa.i, %.sroa.04.0.i346
  br label %bb.ib

bb.ij:                                            ; preds = %bb.ib
  %i.asd = getelementptr inbounds nuw [8 x i8], ptr %i.alv, i64 %i.aqs
  store i64 %.sroa.04.1.i, ptr %i.asd, align 8, !noalias !6345
  br i1 %.not.i342, label %bb.il, label %bb.im

bb.ik:                                            ; preds = %bb.ib
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aqs, i64 noundef %i.als, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #37, !noalias !6345
  unreachable

bb.il:                                            ; preds = %bb.io, %bb.im, %bb.ij
  %i.ase = icmp slt i64 %i.ana, %11
  %or.cond43.i = select i1 %12, i1 true, i1 %i.ase
  br i1 %or.cond43.i, label %bb.gn, label %.lr.ph122.i

bb.im:                                            ; preds = %bb.ij
  %i.asf = sub i64 %i.amy, %i.alm                 ; 2 uses
  %.sroa.010.0.i = tail call i64 @llvm.abs.i64(i64 %i.asf, i1 false)
  %.not134.not.i = icmp slt i64 %.sroa.010.0.i, %.sroa.048.0133.i
  br i1 %.not134.not.i, label %bb.in, label %bb.il

bb.in:                                            ; preds = %bb.im
  %i.asg = sub i64 %i.aly, %i.asf                 ; 3 uses
  %i.ash = icmp ult i64 %i.asg, %i.amb
  br i1 %i.ash, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %bb.in
  %i.asi = getelementptr inbounds nuw [8 x i8], ptr %i.ame, i64 %i.asg
  %i.asj = load i64, ptr %i.asi, align 8, !noalias !6345, !noundef !5
  %i.ask = add i64 %i.asj, %.sroa.04.1.i
  %.not135.i = icmp ult i64 %i.ask, %.sroa.025.0.i
  br i1 %.not135.i, label %bb.il, label %bb.iq

bb.ip:                                            ; preds = %bb.in
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.asg, i64 noundef %i.amb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #37, !noalias !6345
  unreachable

bb.iq:                                            ; preds = %bb.io
  %i.asl = add i64 %.sroa.04.0.i346, %.sroa.0.0
  %i.asm = add i64 %i.aqn, %.sroa.0425.0
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1D_12OffsetLookupmEEEB13_EB6_.exit

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1D_12OffsetLookupmEEEB13_EB6_.exit: ; preds = %bb.iq, %bb.hp
  %.sroa.7.0 = phi i64 [ %i.asm, %bb.iq ], [ %i.apz, %bb.hp ] ; 2 uses
  %.sroa.5.0 = phi i64 [ %i.asl, %bb.iq ], [ %i.apy, %bb.hp ] ; 2 uses
  tail call fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1s_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2i_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias nofree noundef align 8 dereferenceable(208) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.0.0, i64 noundef %.sroa.5.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.0425.0, i64 noundef %.sroa.7.0, ptr noalias nofree noundef align 8 dereferenceable(32) %7, ptr noalias nofree noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1s_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2i_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias nofree noundef align 8 dereferenceable(208) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.5.0, i64 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.7.0, i64 noundef %i.cb, ptr noalias nofree noundef align 8 dereferenceable(32) %7, ptr noalias nofree noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread502

bb.ir:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i344, %.split.i355, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit157.thread.i
  tail call fastcc void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB4_5utils12OffsetLookupmEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.0.0.copyload.i356 = load i64, ptr %0, align 8, !alias.scope !6397
  %i.asn = trunc nuw i64 %.sroa.0.0.copyload.i356 to i1
  br i1 %i.asn, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  %.sroa.6.0.copyload.i361 = load i64, ptr %.sroa.6.0..sroa_idx.i133, align 8, !alias.scope !6397
  %i.aso = add i64 %.sroa.6.0.copyload.i361, %i.alk
  br label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_.exit362

bb.it:                                            ; preds = %bb.ir
  store i64 %.sroa.0.0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !6397
  store i64 %.sroa.0425.0, ptr %.sroa.7.0..sroa_idx.i134, align 8, !alias.scope !6397
  br label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_.exit362

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_.exit362: ; preds = %bb.is, %bb.it
  %.sink.i360 = phi i64 [ %i.aso, %bb.is ], [ %i.alk, %bb.it ]
  store i64 1, ptr %0, align 8, !alias.scope !6397
  store i64 %.sink.i360, ptr %.sroa.6.0..sroa_idx.i133, align 8, !alias.scope !6397
  tail call fastcc void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB4_5utils12OffsetLookupmEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.01.0.copyload.i363 = load i64, ptr %i.cg, align 8, !alias.scope !6400
  %.sroa.52.0.copyload.i365 = load i64, ptr %.sroa.52.0..sroa_idx.i124, align 8, !alias.scope !6400
  %.sroa.6.0.copyload.i367 = load i64, ptr %.sroa.6.0..sroa_idx.i126, align 8, !alias.scope !6400
  %.sroa.7.0.copyload.i369 = load i64, ptr %.sroa.7.0..sroa_idx.i128, align 8, !alias.scope !6400
  %i.asp = trunc nuw i64 %.sroa.01.0.copyload.i363 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i370 = select i1 %i.asp, i64 %.sroa.52.0.copyload.i365, i64 %.sroa.0.0
  %.sroa.5.sroa.5.0.i371 = select i1 %i.asp, i64 %.sroa.6.0.copyload.i367, i64 %.sroa.0425.0
  %i.asq = select i1 %i.asp, i64 %.sroa.7.0.copyload.i369, i64 0
  %.sroa.5.sroa.6.0.i372 = add i64 %i.asq, %i.all
  store i64 1, ptr %i.cg, align 8, !alias.scope !6400
  store i64 %.sroa.5.sroa.0.0.i370, ptr %.sroa.52.0..sroa_idx.i124, align 8, !alias.scope !6400
  store i64 %.sroa.5.sroa.5.0.i371, ptr %.sroa.6.0..sroa_idx.i126, align 8, !alias.scope !6400
  store i64 %.sroa.5.sroa.6.0.i372, ptr %.sroa.7.0..sroa_idx.i128, align 8, !alias.scope !6400
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread502

.thread:                                          ; preds = %bb.av
  %i.asr = sub nuw i64 %i.cb, %.sroa.0425.0
  tail call fastcc void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB4_5utils12OffsetLookupmEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.01.0.copyload.i373 = load i64, ptr %i.cg, align 8, !alias.scope !6403
  %.sroa.52.0.copyload.i375 = load i64, ptr %.sroa.52.0..sroa_idx.i124, align 8, !alias.scope !6403
  %.sroa.6.0.copyload.i377 = load i64, ptr %.sroa.6.0..sroa_idx.i126, align 8, !alias.scope !6403
  %.sroa.7.0.copyload.i379 = load i64, ptr %.sroa.7.0..sroa_idx.i128, align 8, !alias.scope !6403
  %i.ass = trunc nuw i64 %.sroa.01.0.copyload.i373 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i380 = select i1 %i.ass, i64 %.sroa.52.0.copyload.i375, i64 %.sroa.0.0
  %.sroa.5.sroa.5.0.i381 = select i1 %i.ass, i64 %.sroa.6.0.copyload.i377, i64 %.sroa.0425.0
  %i.ast = select i1 %i.ass, i64 %.sroa.7.0.copyload.i379, i64 0
  %.sroa.5.sroa.6.0.i382 = add i64 %i.asr, %i.ast
  store i64 1, ptr %i.cg, align 8, !alias.scope !6403
  store i64 %.sroa.5.sroa.0.0.i380, ptr %.sroa.52.0..sroa_idx.i124, align 8, !alias.scope !6403
  store i64 %.sroa.5.sroa.5.0.i381, ptr %.sroa.6.0..sroa_idx.i126, align 8, !alias.scope !6403
  store i64 %.sroa.5.sroa.6.0.i382, ptr %.sroa.7.0..sroa_idx.i128, align 8, !alias.scope !6403
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread502

bb.iu:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread502
  store i64 0, ptr %0, align 8, !alias.scope !6406
  store i64 0, ptr %i.cg, align 8, !alias.scope !6406
  %.sroa.01.0.copyload.i383 = load i64, ptr %i.ch, align 8, !alias.scope !6411
  %.sroa.52.0.copyload.i385 = load i64, ptr %.sroa.52.0..sroa_idx.i114, align 8, !alias.scope !6411
  %.sroa.6.0.copyload.i387 = load i64, ptr %.sroa.6.0..sroa_idx.i116, align 8, !alias.scope !6411
  %.sroa.7.0.copyload.i389 = load i64, ptr %.sroa.7.0..sroa_idx.i118, align 8, !alias.scope !6411
  %i.asu = trunc nuw i64 %.sroa.01.0.copyload.i383 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i390 = select i1 %i.asu, i64 %.sroa.52.0.copyload.i385, i64 %i.ca
  %.sroa.5.sroa.5.0.i391 = select i1 %i.asu, i64 %.sroa.6.0.copyload.i387, i64 %i.cb
  %i.asv = select i1 %i.asu, i64 %.sroa.7.0.copyload.i389, i64 0
  %.sroa.5.sroa.6.0.i392 = add i64 %i.asv, %.sroa.0.0.i88
  store i64 1, ptr %i.ch, align 8, !alias.scope !6411
  store i64 %.sroa.5.sroa.0.0.i390, ptr %.sroa.52.0..sroa_idx.i114, align 8, !alias.scope !6411
  store i64 %.sroa.5.sroa.5.0.i391, ptr %.sroa.6.0..sroa_idx.i116, align 8, !alias.scope !6411
  store i64 %.sroa.5.sroa.6.0.i392, ptr %.sroa.7.0..sroa_idx.i118, align 8, !alias.scope !6411
  br label %bb.iv

bb.iv:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread502, %bb.iu
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2o_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6415)
  %i.a = icmp uge i64 %2, %3
  %i.b = icmp uge i64 %5, %6
  %or.cond.i72 = or i1 %i.a, %i.b
  br i1 %or.cond.i72, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i.i = sub nuw i64 %6, %5
  %spec.select.i.i4.i.i.i = sub nuw i64 %3, %2
  %..i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i73 = icmp eq i64 %..i.i.i.i, 0
  br i1 %.not.i73, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val8.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !6415, !noalias !6417, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val6.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !6412, !noalias !6415 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !6412, !noalias !6415, !nonnull !5
  %.val7.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !6415, !noalias !6412, !nonnull !5
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.val6.i.i.i.i.i, i64 %2) ; 2 uses
  %umax20.i = tail call i64 @llvm.umax.i64(i64 %.val8.i.i.i.i.i, i64 %5) ; 2 uses
  %i.g = sub i64 %umax20.i, %5
  %i.h = sub i64 %umax.i, %2
  %invariant.gep.i = getelementptr [16 x i8], ptr %.val7.i.i.i.i.i, i64 %5
  %invariant.gep29.i = getelementptr [16 x i8], ptr %.val.i.i.i.i.i, i64 %2
  br label %bb.c

bb.c:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i
  %.sroa.01.041.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.i, %bb.p ] ; 7 uses
  %i.i = add nuw i64 %.sroa.01.041.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.01.041.i.i.i.i, %i.g
  br i1 %exitcond.not.i, label %bb.d, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax20.i, i64 noundef range(i64 0, 576460752303423488) %.val8.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #37, !noalias !6426
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i: ; preds = %bb.c
  %exitcond21.not.i = icmp eq i64 %.sroa.01.041.i.i.i.i, %i.h
  br i1 %exitcond21.not.i, label %bb.e, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit9.i.i.i.i.i

bb.e:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, 576460752303423488) %.val6.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #37, !noalias !6429
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit9.i.i.i.i.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.sroa.01.041.i.i.i.i ; 2 uses
  %gep30.i = getelementptr [16 x i8], ptr %invariant.gep29.i, i64 %.sroa.01.041.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6435)
  %i.j = load ptr, ptr %gep.i, align 8, !alias.scope !6432, !noalias !6437, !nonnull !5, !align !97, !noundef !5 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !6432, !noalias !6437, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6444), !noalias !6447
  %i.m = load i64, ptr %i.j, align 8, !range !60, !alias.scope !6448, !noalias !6449, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !6448, !noalias !6449, !noundef !5
  %i.q = icmp ult i64 %i.l, %i.p                  ; 2 uses
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit9.i.i.i.i.i
  br i1 %i.q, label %bb.i, label %bb.j

bb.g:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit9.i.i.i.i.i
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !6448, !noalias !6449, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.l ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !6448, !noalias !6449, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.l ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = getelementptr i8, ptr %i.x, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2o_NtNtB4_7capture7CaptureEEEEEB6_:bb.a
  %i.aqj = getelementptr i8, ptr %i.aqh, i64 16
  br label %.noexc181.us.i385

.noexc181.us.i385:                                ; preds = %bb.jo, %bb.jm
  %.sroa.5.1.i.in.i350.us.i386 = phi ptr [ %i.aqj, %bb.jo ], [ %i.aqe, %bb.jm ]
  %.sroa.0.1.i.in.i351.us.i387 = phi ptr [ %i.aqi, %bb.jo ], [ %i.aqd, %bb.jm ]
  %.sroa.5.1.i.i353.us.i388 = load i64, ptr %.sroa.5.1.i.in.i350.us.i386, align 8, !noalias !6989, !noundef !5
  %i.aqk = icmp eq i64 %.sroa.5.1.i.i347.us.i384, %.sroa.5.1.i.i353.us.i388
  br i1 %i.aqk, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.us.i395, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.thread.us.i389

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.us.i395: ; preds = %.noexc181.us.i385
  %.sroa.0.1.i.i352.us.i396 = load ptr, ptr %.sroa.0.1.i.in.i351.us.i387, align 8, !noalias !6989, !nonnull !5, !noundef !5
  %bcmp.i357.us.i397 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i346.us.i383, ptr nonnull readonly %.sroa.0.1.i.i352.us.i396, i64 %.sroa.5.1.i.i347.us.i384), !alias.scope !6990
  %i.aql = icmp eq i32 %bcmp.i357.us.i397, 0
  br i1 %i.aql, label %bb.jr, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.thread.us.i389

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.thread.us.i389: ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.us.i395, %.noexc181.us.i385
  %i.aqm = add i64 %i.aoq, %i.aol                 ; 3 uses
  %i.aqn = icmp ult i64 %i.aqm, %i.aca
  br i1 %i.aqn, label %bb.jp, label %.invoke1088.i248

bb.jp:                                            ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.thread.us.i389
  %i.aqo = add i64 %.sroa.0105.0459.us.i373, %i.aok ; 3 uses
  %i.aqp = icmp ult i64 %i.aqo, %i.aca
  br i1 %i.aqp, label %bb.jq, label %.split477.us.invoke.i250

bb.jq:                                            ; preds = %bb.jp
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.aqm
  %i.aqr = load i8, ptr %i.aqq, align 1, !noundef !5
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.aqo
  %i.aqt = load i8, ptr %i.aqs, align 1, !noundef !5
  %..i.us.i390 = tail call noundef i8 @llvm.umax.i8(i8 %i.aqt, i8 %i.aqr)
  br label %bb.jt

bb.jr:                                            ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.us.i395
  %i.aqu = add i64 %.sroa.0105.0459.us.i373, %i.aol ; 3 uses
  %i.aqv = icmp ult i64 %i.aqu, %i.aca
  br i1 %i.aqv, label %bb.js, label %.invoke1088.i248

bb.js:                                            ; preds = %bb.jr
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.aqu
  %i.aqx = load i8, ptr %i.aqw, align 1, !noundef !5
  %i.aqy = add i8 %i.aqx, 1
  br label %bb.jt

bb.jt:                                            ; preds = %bb.js, %bb.jq
  %.sroa.04.0.us.i391 = phi i8 [ %i.aqy, %bb.js ], [ %..i.us.i390, %bb.jq ]
  %i.aqz = add i64 %i.aoq, %i.aok                 ; 3 uses
  %i.ara = icmp ult i64 %i.aqz, %i.aca
  br i1 %i.ara, label %bb.ju, label %.split477.us.invoke.i250

bb.ju:                                            ; preds = %bb.jt
  %i.arb = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.aqz
  store i8 %.sroa.04.0.us.i391, ptr %i.arb, align 1
  %.not168.us.i392 = icmp eq i64 %i.aoq, 0
  br i1 %.not168.us.i392, label %..loopexit77_crit_edge.split.us.i393, label %.lr.ph.split.us.i372

.loopexit.split-lp.loopexit.split.us.i375:        ; preds = %bb.jf
  %lpad.loopexit78.us.i376 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i190

..loopexit77_crit_edge.split.us.i393:             ; preds = %bb.ju
  %.not.i394 = icmp eq i64 %i.acg, 0
  br i1 %.not.i394, label %.lr.ph515.i219, label %.lr.ph491.split.i356

.lr.ph.split.i364:                                ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit227.thread.i362
  %i.arc = add i64 %.sroa.088.0.i179, -1          ; 2 uses
  %i.ard = and i64 %i.arc, 1023
  %i.are = icmp ne i64 %i.ard, 0
  %brmerge59.i365 = or i1 %.not.i106, %i.are
  br i1 %brmerge59.i365, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.thread.i370, label %bb.jv

bb.jv:                                            ; preds = %.lr.ph.split.i364
  %i.arf = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc338.i368 unwind label %.loopexit.split-lp.loopexit.split.i366 ; 2 uses

.noexc338.i368:                                   ; preds = %bb.jv
  %i.arg = extractvalue { i64, i32 } %i.arf, 0    ; 2 uses
  %i.arh = icmp eq i64 %i.arg, %9
  br i1 %i.arh, label %.split46.i371, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.i369

.split46.i371:                                    ; preds = %.noexc338.i368
  %i.ari = extractvalue { i64, i32 } %i.arf, 1    ; 2 uses
  %i.arj = icmp ult i32 %i.ari, 1000000000
  tail call void @llvm.assume(i1 %i.arj)
  %i.ark = icmp samesign ugt i32 %i.ari, %10
  br i1 %i.ark, label %.loopexit73.i353, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.thread.i370

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.i369: ; preds = %.noexc338.i368
  %i.arl = icmp sgt i64 %i.arg, %9
  br i1 %i.arl, label %.loopexit73.i353, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.thread.i370

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.thread.i370: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.i369, %.split46.i371, %.lr.ph.split.i364
  %i.arm = add i64 %i.arc, %.sroa.0490.0          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val62) ]
  %i.arn = icmp ult i64 %i.arm, %.val63
  br i1 %i.arn, label %bb.jw, label %.invoke1090.i234

bb.jw:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.thread.i370
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  br label %.invoke1090.i234

.split477.us.invoke.i250:                         ; preds = %bb.jt, %bb.jp, %bb.hd, %bb.ha, %bb.im, %bb.ik, %bb.hr, %bb.ht, %bb.jb
  %i.aro = phi i64 [ %i.aff, %bb.ha ], [ %i.alh, %bb.im ], [ %i.anz, %bb.jb ], [ %i.aid, %bb.hr ], [ %i.aca, %bb.ht ], [ %i.akz, %bb.ik ], [ %i.afs, %bb.hd ], [ %i.aqo, %bb.jp ], [ %i.aqz, %bb.jt ]
  %i.arp = phi ptr [ @77, %bb.ha ], [ @89, %bb.im ], [ @93, %bb.jb ], [ @82, %bb.hr ], [ @84, %bb.ht ], [ @87, %bb.ik ], [ @79, %bb.hd ], [ @97, %bb.jp ], [ @99, %bb.jt ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aro, i64 noundef %i.aca, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.arp) #38
          to label %.split477.us.cont.i253 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i251

.split477.us.cont.i253:                           ; preds = %.split477.us.invoke.i250
  unreachable

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread572: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit282.i262, %.split36.i287, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit251.i, %.split33.i309, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit317.i331, %.split39.i352, %.loopexit73.i353
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acf) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.acf, i64 noundef %i.aca, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit: ; preds = %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_.exit.i216, %bb.gm, %bb.gn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acf) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.acf, i64 noundef %i.aca, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread569

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit161.thread, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i176, %.loopexit73.i353, %.split.i401, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i, %.loopexit73.i, %.split.i, %.split561, %bb.cg, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit161, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdftwklc2oBO_7similar.exit229.sink.split.i.thread, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread572
  %.val68 = load ptr, ptr %i.da, align 8          ; 4 uses
  %.val69 = load i64, ptr %i.db, align 8          ; 4 uses
  %.val70 = load ptr, ptr %i.cy, align 8          ; 4 uses
  %.val71 = load i64, ptr %i.cz, align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6997)
  %i.arq = sub i64 %i.cw, %.sroa.0.0              ; 3 uses
  %.sroa.025.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.cw, i64 %.sroa.0.0) ; 6 uses
  %i.arr = sub i64 %i.cx, %.sroa.0490.0           ; 2 uses
  %.sroa.037.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.cx, i64 %.sroa.0490.0) ; 4 uses
  %i.ars = sub i64 %.sroa.025.0.i, %.sroa.037.0.i ; 3 uses
  %i.art = and i64 %i.ars, 1
  %.not.i402 = icmp eq i64 %i.art, 0              ; 2 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.arv = load i64, ptr %i.aru, align 8, !alias.scope !6994, !noalias !6999, !noundef !5 ; 4 uses
  %i.arw = add i64 %i.arv, 1                      ; 5 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ary = load i64, ptr %i.arx, align 8, !alias.scope !6994, !noalias !6999, !noundef !5 ; 16 uses
  %i.arz = icmp ult i64 %i.arw, %i.ary
  br i1 %i.arz, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread
  %i.asa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.asb = load ptr, ptr %i.asa, align 8, !alias.scope !6994, !noalias !6999, !nonnull !5, !noundef !5 ; 7 uses
  %i.asc = getelementptr inbounds nuw [8 x i8], ptr %i.asb, i64 %i.arw
  store i64 0, ptr %i.asc, align 8, !noalias !7001
  %i.asd = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ase = load i64, ptr %i.asd, align 8, !alias.scope !6997, !noalias !7002, !noundef !5 ; 4 uses
  %i.asf = add i64 %i.ase, 1                      ; 5 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ash = load i64, ptr %i.asg, align 8, !alias.scope !6997, !noalias !7002, !noundef !5 ; 16 uses
  %i.asi = icmp ult i64 %i.asf, %i.ash
  br i1 %i.asi, label %bb.jz, label %bb.ka

bb.jy:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.arw, i64 noundef %i.ary, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37, !noalias !7001
  unreachable

bb.jz:                                            ; preds = %bb.jx
  %i.asj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ask = load ptr, ptr %i.asj, align 8, !alias.scope !6997, !noalias !7002, !nonnull !5, !noundef !5 ; 7 uses
  %i.asl = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.asf
  store i64 0, ptr %i.asl, align 8, !noalias !7001
  %i.asm = add i64 %.sroa.025.0.i, %.sroa.037.0.i ; 2 uses
  %i.asn = lshr i64 %i.asm, 1
  %.sroa.047.0.i = sub i64 %i.asm, %i.asn         ; 3 uses
  %i.aso = icmp ult i64 %i.ary, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aso)
  %.not128.not.i = icmp ugt i64 %i.ary, %.sroa.047.0.i
  br i1 %.not128.not.i, label %bb.kc, label %bb.kb, !prof !169

bb.ka:                                            ; preds = %bb.jx
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.asf, i64 noundef %i.ash, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #37, !noalias !7001
  unreachable

bb.kb:                                            ; preds = %bb.jz
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #37, !noalias !7001
  unreachable

bb.kc:                                            ; preds = %bb.jz
  %i.asp = icmp ult i64 %i.ash, 1152921504606846976
  tail call void @llvm.assume(i1 %i.asp)
  %.not129.not.i = icmp samesign ugt i64 %i.ash, %.sroa.047.0.i
  br i1 %.not129.not.i, label %.lr.ph126.i, label %bb.kd, !prof !169

.lr.ph126.i:                                      ; preds = %bb.kc
  %i.asq = add i64 %i.arv, -1
  %i.asr = add i64 %i.ase, -1
  %i.ass = add i64 %.sroa.025.0.i, %.sroa.0.0     ; 2 uses
  %i.ast = add i64 %.sroa.037.0.i, %.sroa.0490.0  ; 2 uses
  br label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #37, !noalias !7001
  unreachable

bb.ke:                                            ; preds = %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit150.thread.i, %.lr.ph126.i
  %.sroa.048.0125.i = phi i64 [ 0, %.lr.ph126.i ], [ %i.asu, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit150.thread.i ] ; 11 uses
  %i.asu = add nuw nsw i64 %.sroa.048.0125.i, 1
  br i1 %.not.i106, label %.lr.ph113.i.preheader, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.asv = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now(), !noalias !7001 ; 2 uses
  %i.asw = extractvalue { i64, i32 } %i.asv, 0    ; 2 uses
  %i.asx = icmp eq i64 %i.asw, %9
  br i1 %i.asx, label %.split.i420, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i404

.split.i420:                                      ; preds = %bb.kf
  %i.asy = extractvalue { i64, i32 } %i.asv, 1    ; 2 uses
  %i.asz = icmp ult i32 %i.asy, 1000000000
  tail call void @llvm.assume(i1 %i.asz)
  %i.ata = icmp samesign ugt i32 %i.asy, %10
  br i1 %i.ata, label %bb.na, label %.lr.ph113.i.preheader

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i404: ; preds = %bb.kf
  %i.atb = icmp sgt i64 %i.asw, %9
  br i1 %i.atb, label %bb.na, label %.lr.ph113.i.preheader

.lr.ph113.i.preheader:                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i404, %.split.i420, %bb.ke
  %11 = sub nsw i64 0, %.sroa.048.0125.i          ; 6 uses
  %.pre192.i = sub i64 %i.arw, %.sroa.048.0125.i
  br label %.lr.ph113.i

.lr.ph113.i:                                      ; preds = %bb.mu, %.lr.ph113.i.preheader
  %.sroa.7.0112.i = phi i64 [ %i.atg, %bb.mu ], [ %.sroa.048.0125.i, %.lr.ph113.i.preheader ]
  %not..sroa.1118.0111.i = phi i64 [ 1, %bb.mu ], [ 0, %.lr.ph113.i.preheader ]
  %i.atc = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0112.i, i64 %not..sroa.1118.0111.i) ; 2 uses
  %i.atd = extractvalue { i64, i1 } %i.atc, 1     ; 2 uses
  %i.ate = extractvalue { i64, i1 } %i.atc, 0     ; 9 uses
  %i.atf = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ate, i64 -1) ; 2 uses
  %i.atg = extractvalue { i64, i1 } %i.atf, 0     ; 2 uses
  %i.ath = extractvalue { i64, i1 } %i.atf, 1
  %12 = or i1 %i.atd, %i.ath
  %.not3.i.not.i = icmp slt i64 %i.ate, %11
  %or.cond46.i = select i1 %i.atd, i1 true, i1 %.not3.i.not.i
  br i1 %or.cond46.i, label %bb.kg, label %.lr.ph123.i.preheader

.lr.ph123.i.preheader:                            ; preds = %.lr.ph113.i
  %13 = icmp eq i64 %i.ate, %11
  br i1 %13, label %._crit_edge187.i, label %bb.lr

bb.kg:                                            ; preds = %bb.mu, %.lr.ph113.i
  %.pre.i = sub i64 %i.asf, %.sroa.048.0125.i
  br label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %bb.lm, %bb.kg
  %not..sroa.1427.0122.i = phi i64 [ 1, %bb.lm ], [ 0, %bb.kg ]
  %.sroa.726.0121.i = phi i64 [ %i.atm, %bb.lm ], [ %.sroa.048.0125.i, %bb.kg ]
  %i.ati = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.726.0121.i, i64 %not..sroa.1427.0122.i) ; 2 uses
  %i.atj = extractvalue { i64, i1 } %i.ati, 1     ; 2 uses
  %i.atk = extractvalue { i64, i1 } %i.ati, 0     ; 9 uses
  %i.atl = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.atk, i64 -1) ; 2 uses
  %i.atm = extractvalue { i64, i1 } %i.atl, 0     ; 2 uses
  %i.atn = extractvalue { i64, i1 } %i.atl, 1
  %14 = or i1 %i.atj, %i.atn
  %.not3.i146.not.i = icmp slt i64 %i.atk, %11
  %or.cond48.i = select i1 %i.atj, i1 true, i1 %.not3.i146.not.i
  br i1 %or.cond48.i, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit150.thread.i, label %bb.kh

bb.kh:                                            ; preds = %.lr.ph123.i
  %i.ato = icmp eq i64 %i.atk, %11
  br i1 %i.ato, label %._crit_edge189.i, label %bb.ki

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit150.thread.i: ; preds = %bb.lm, %.lr.ph123.i
  %exitcond186.not.i = icmp eq i64 %.sroa.048.0125.i, %.sroa.047.0.i
  br i1 %exitcond186.not.i, label %bb.na, label %bb.ke

bb.ki:                                            ; preds = %bb.kh
  %.not130.i = icmp eq i64 %i.atk, %.sroa.048.0125.i
  %.pre190.i = add i64 %i.asr, %i.atk             ; 6 uses
  br i1 %.not130.i, label %._crit_edge188.i, label %bb.kj

._crit_edge189.i:                                 ; preds = %bb.kh, %bb.km
  %.pre-phi.i = phi i64 [ %i.ats, %bb.km ], [ %.pre.i, %bb.kh ] ; 3 uses
  %i.atp = icmp ult i64 %.pre-phi.i, %i.ash
  br i1 %i.atp, label %bb.kr, label %bb.ks

._crit_edge188.i:                                 ; preds = %bb.km, %bb.ki
  %i.atq = icmp ult i64 %.pre190.i, %i.ash
  br i1 %i.atq, label %bb.ko, label %bb.kp

bb.kj:                                            ; preds = %bb.ki
  %i.atr = icmp ult i64 %.pre190.i, %i.ash
  br i1 %i.atr, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.ats = add i64 %i.atk, %i.asf                 ; 4 uses
  %i.att = icmp ult i64 %i.ats, %i.ash
  br i1 %i.att, label %bb.km, label %bb.kn

bb.kl:                                            ; preds = %bb.kj
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre190.i, i64 noundef %i.ash, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #37, !noalias !7001
  unreachable

bb.km:                                            ; preds = %bb.kk
  %i.atu = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %.pre190.i
  %i.atv = load i64, ptr %i.atu, align 8, !noalias !7001, !noundef !5
  %i.atw = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.ats
  %i.atx = load i64, ptr %i.atw, align 8, !noalias !7001, !noundef !5
  %i.aty = icmp ult i64 %i.atv, %i.atx
  br i1 %i.aty, label %._crit_edge189.i, label %._crit_edge188.i

bb.kn:                                            ; preds = %bb.kk
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ats, i64 noundef %i.ash, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #37, !noalias !7001
  unreachable

bb.ko:                                            ; preds = %._crit_edge188.i
  %i.atz = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %.pre190.i
  %i.aua = load i64, ptr %i.atz, align 8, !noalias !7001, !noundef !5
  %i.aub = add i64 %i.aua, 1
  br label %bb.kq

bb.kp:                                            ; preds = %._crit_edge188.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre190.i, i64 noundef %i.ash, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #37, !noalias !7001
  unreachable

bb.kq:                                            ; preds = %bb.kr, %bb.ko
  %.sroa.014.0.i = phi i64 [ %i.aug, %bb.kr ], [ %i.aub, %bb.ko ] ; 5 uses
  %i.auc = sub i64 %.sroa.014.0.i, %i.atk         ; 4 uses
  %i.aud = icmp ult i64 %.sroa.014.0.i, %.sroa.025.0.i
  %i.aue = icmp ult i64 %i.auc, %.sroa.037.0.i
  %or.cond.i407 = select i1 %i.aud, i1 %i.aue, i1 false
  br i1 %or.cond.i407, label %bb.ku, label %bb.kt

bb.kr:                                            ; preds = %._crit_edge189.i
  %i.auf = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %.pre-phi.i
  %i.aug = load i64, ptr %i.auf, align 8, !noalias !7001, !noundef !5
  br label %bb.kq

bb.ks:                                            ; preds = %._crit_edge189.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi.i, i64 noundef %i.ash, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #37, !noalias !7001
  unreachable

bb.kt:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i, %bb.kq
  %.sroa.020.0.i = phi i64 [ %i.awg, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i ], [ %i.auc, %bb.kq ]
  %.sroa.014.1.i = phi i64 [ %i.awf, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i ], [ %.sroa.014.0.i, %bb.kq ] ; 3 uses
  %i.auh = add i64 %i.atk, %i.ase                 ; 3 uses
  %i.aui = icmp ult i64 %i.auh, %i.ash
  br i1 %i.aui, label %bb.lj, label %bb.lk

bb.ku:                                            ; preds = %bb.kq
  %i.auj = sub i64 %i.ass, %.sroa.014.0.i         ; 2 uses
  %i.auk = sub i64 %i.ast, %i.auc                 ; 2 uses
  %i.aul = sub i64 %i.auj, %.sroa.0.0
  %i.aum = sub i64 %i.auk, %.sroa.0490.0
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.aum, i64 %i.aul) ; 3 uses
  %.not128.i = icmp eq i64 %..i.i, 0
  br i1 %.not128.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i, label %.lr.ph116.i

.lr.ph116.i:                                      ; preds = %bb.ku
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  br label %bb.kv

bb.kv:                                            ; preds = %bb.li, %.lr.ph116.i
  %.sroa.0.0.i136115.i = phi i64 [ 0, %.lr.ph116.i ], [ %i.awe, %bb.li ] ; 4 uses
  %i.aun = xor i64 %.sroa.0.0.i136115.i, -1       ; 2 uses
  %i.auo = add i64 %i.auk, %i.aun                 ; 3 uses
  %i.aup = icmp ult i64 %i.auo, %.val71
  br i1 %i.aup, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.auo, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #37, !noalias !7003
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i: ; preds = %bb.kv
  %i.auq = add i64 %i.auj, %i.aun                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %i.aur = icmp ult i64 %i.auq, %.val69
  br i1 %i.aur, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit151.i, label %bb.kx

bb.kx:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.auq, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #37, !noalias !7006
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit151.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i
  %i.aus = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.auo ; 2 uses
  %i.aut = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.auq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7012)
  %i.auu = load ptr, ptr %i.aus, align 8, !alias.scope !7009, !noalias !7014, !nonnull !5, !align !97, !noundef !5 ; 4 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %i.aus, i64 8
  %i.auw = load i64, ptr %i.auv, align 8, !alias.scope !7009, !noalias !7014, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7018), !noalias !7021
  %i.aux = load i64, ptr %i.auu, align 8, !range !60, !alias.scope !7022, !noalias !7023, !noundef !5
  %i.auy = trunc nuw i64 %i.aux to i1
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auu, i64 24
  %i.ava = load i64, ptr %i.auz, align 8, !alias.scope !7022, !noalias !7023, !noundef !5
  %i.avb = icmp ult i64 %i.auw, %i.ava            ; 2 uses
  br i1 %i.auy, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit151.i
  br i1 %i.avb, label %bb.lb, label %bb.lc

bb.kz:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit151.i
  br i1 %i.avb, label %bb.la, label %bb.lc

bb.la:                                            ; preds = %bb.kz
  %i.avc = getelementptr inbounds nuw i8, ptr %i.auu, i64 16
  %i.avd = load ptr, ptr %i.avc, align 8, !alias.scope !7022, !noalias !7023, !nonnull !5, !noundef !5
  %i.ave = getelementptr inbounds nuw [16 x i8], ptr %i.avd, i64 %i.auw ; 2 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %i.ave, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i409

bb.lb:                                            ; preds = %bb.ky
  %i.avg = getelementptr inbounds nuw i8, ptr %i.auu, i64 16
  %i.avh = load ptr, ptr %i.avg, align 8, !alias.scope !7022, !noalias !7023, !nonnull !5, !noundef !5
  %i.avi = getelementptr inbounds nuw [24 x i8], ptr %i.avh, i64 %i.auw ; 2 uses
  %i.avj = getelementptr i8, ptr %i.avi, i64 8
  %i.avk = getelementptr i8, ptr %i.avi, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i409

bb.lc:                                            ; preds = %bb.kz, %bb.ky
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !7025
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i409: ; preds = %bb.lb, %bb.la
  %.sroa.5.1.i.in.i.i410 = phi ptr [ %i.avk, %bb.lb ], [ %i.avf, %bb.la ]
  %.sroa.0.1.i.in.i.i411 = phi ptr [ %i.avj, %bb.lb ], [ %i.ave, %bb.la ]
  %.sroa.0.1.i.i.i412 = load ptr, ptr %.sroa.0.1.i.in.i.i411, align 8, !noalias !7026, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i.i413 = load i64, ptr %.sroa.5.1.i.in.i.i410, align 8, !noalias !7026, !noundef !5 ; 2 uses
  %i.avl = load ptr, ptr %i.aut, align 8, !alias.scope !7012, !noalias !7027, !nonnull !5, !align !97, !noundef !5 ; 4 uses
  %i.avm = getelementptr inbounds nuw i8, ptr %i.aut, i64 8
  %i.avn = load i64, ptr %i.avm, align 8, !alias.scope !7012, !noalias !7027, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7031), !noalias !7021
  %i.avo = load i64, ptr %i.avl, align 8, !range !60, !alias.scope !7034, !noalias !7035, !noundef !5
  %i.avp = trunc nuw i64 %i.avo to i1
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avl, i64 24
  %i.avr = load i64, ptr %i.avq, align 8, !alias.scope !7034, !noalias !7035, !noundef !5
  %i.avs = icmp ult i64 %i.avn, %i.avr            ; 2 uses
  br i1 %i.avp, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i409
  br i1 %i.avs, label %bb.lg, label %bb.lh

bb.le:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i409
  br i1 %i.avs, label %bb.lf, label %bb.lh

bb.lf:                                            ; preds = %bb.le
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avl, i64 16
  %i.avu = load ptr, ptr %i.avt, align 8, !alias.scope !7034, !noalias !7035, !nonnull !5, !noundef !5
  %i.avv = getelementptr inbounds nuw [16 x i8], ptr %i.avu, i64 %i.avn ; 2 uses
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avv, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit156.i

bb.lg:                                            ; preds = %bb.ld
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avl, i64 16
  %i.avy = load ptr, ptr %i.avx, align 8, !alias.scope !7034, !noalias !7035, !nonnull !5, !noundef !5
  %i.avz = getelementptr inbounds nuw [24 x i8], ptr %i.avy, i64 %i.avn ; 2 uses
  %i.awa = getelementptr i8, ptr %i.avz, i64 8
  %i.awb = getelementptr i8, ptr %i.avz, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit156.i

bb.lh:                                            ; preds = %bb.le, %bb.ld
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !7037
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit156.i: ; preds = %bb.lg, %bb.lf
  %.sroa.5.1.i.in.i152.i = phi ptr [ %i.awb, %bb.lg ], [ %i.avw, %bb.lf ]
  %.sroa.0.1.i.in.i153.i = phi ptr [ %i.awa, %bb.lg ], [ %i.avv, %bb.lf ]
  %.sroa.5.1.i.i155.i = load i64, ptr %.sroa.5.1.i.in.i152.i, align 8, !noalias !7038, !noundef !5
  %i.awc = icmp eq i64 %.sroa.5.1.i.i.i413, %.sroa.5.1.i.i155.i
  br i1 %i.awc, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit156.i
  %.sroa.0.1.i.i154.i = load ptr, ptr %.sroa.0.1.i.in.i153.i, align 8, !noalias !7038, !nonnull !5, !noundef !5
  %bcmp.i.i414 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.i412, ptr nonnull readonly %.sroa.0.1.i.i154.i, i64 %.sroa.5.1.i.i.i413), !alias.scope !7039, !noalias !7043
  %i.awd = icmp eq i32 %bcmp.i.i414, 0
  br i1 %i.awd, label %bb.li, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i

bb.li:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i
  %i.awe = add nuw i64 %.sroa.0.0.i136115.i, 1    ; 2 uses
  %exitcond185.not.i = icmp eq i64 %i.awe, %..i.i
  br i1 %exitcond185.not.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i, label %bb.kv

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i: ; preds = %bb.li, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit156.i, %bb.ku
  %.sroa.0.0.i136.lcssa.i = phi i64 [ 0, %bb.ku ], [ %.sroa.0.0.i136115.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i ], [ %..i.i, %bb.li ], [ %.sroa.0.0.i136115.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit156.i ] ; 2 uses
  %i.awf = add i64 %.sroa.0.0.i136.lcssa.i, %.sroa.014.0.i
  %i.awg = add i64 %.sroa.0.0.i136.lcssa.i, %i.auc
  br label %bb.kt

bb.lj:                                            ; preds = %bb.kt
  %i.awh = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.auh
  store i64 %.sroa.014.1.i, ptr %i.awh, align 8, !noalias !7001
  br i1 %.not.i402, label %bb.ll, label %bb.lm

bb.lk:                                            ; preds = %bb.kt
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.auh, i64 noundef %i.ash, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #37, !noalias !7001
  unreachable

bb.ll:                                            ; preds = %bb.lj
  %i.awi = sub i64 %i.atk, %i.ars                 ; 2 uses
  %.sroa.024.0.i = tail call i64 @llvm.abs.i64(i64 %i.awi, i1 false)
  %.not131.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.048.0125.i
  br i1 %.not131.i, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.lo, %bb.ll, %bb.lj
  %i.awj = icmp slt i64 %i.atm, %11
  %or.cond47.i = select i1 %14, i1 true, i1 %i.awj
  br i1 %or.cond47.i, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit150.thread.i, label %.lr.ph123.i

bb.ln:                                            ; preds = %bb.ll
  %i.awk = sub i64 %i.arv, %i.awi                 ; 3 uses
  %i.awl = icmp ult i64 %i.awk, %i.ary
  br i1 %i.awl, label %bb.lo, label %bb.lp

bb.lo:                                            ; preds = %bb.ln
  %i.awm = getelementptr inbounds nuw [8 x i8], ptr %i.asb, i64 %i.awk
  %i.awn = load i64, ptr %i.awm, align 8, !noalias !7001, !noundef !5
  %i.awo = add i64 %i.awn, %.sroa.014.1.i
  %.not132.i = icmp ult i64 %i.awo, %.sroa.025.0.i
  br i1 %.not132.i, label %bb.lm, label %bb.lq

bb.lp:                                            ; preds = %bb.ln
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.awk, i64 noundef %i.ary, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #37, !noalias !7001
  unreachable

bb.lq:                                            ; preds = %bb.lo
  %i.awp = sub i64 %i.ass, %.sroa.014.1.i
  %i.awq = sub i64 %i.ast, %.sroa.020.0.i
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit

bb.lr:                                            ; preds = %.lr.ph123.i.preheader
  %.not133.i = icmp eq i64 %i.ate, %.sroa.048.0125.i
  %.pre194.i = add i64 %i.asq, %i.ate             ; 6 uses
  br i1 %.not133.i, label %._crit_edge.i405, label %bb.ls

._crit_edge187.i:                                 ; preds = %.lr.ph123.i.preheader, %bb.lv
  %.pre-phi193.i = phi i64 [ %i.awu, %bb.lv ], [ %.pre192.i, %.lr.ph123.i.preheader ] ; 3 uses
  %i.awr = icmp ult i64 %.pre-phi193.i, %i.ary
  br i1 %i.awr, label %bb.ma, label %bb.mb

._crit_edge.i405:                                 ; preds = %bb.lv, %bb.lr
  %i.aws = icmp ult i64 %.pre194.i, %i.ary
  br i1 %i.aws, label %bb.lx, label %bb.ly

bb.ls:                                            ; preds = %bb.lr
  %i.awt = icmp ult i64 %.pre194.i, %i.ary
  br i1 %i.awt, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.awu = add i64 %i.ate, %i.arw                 ; 4 uses
  %i.awv = icmp ult i64 %i.awu, %i.ary
  br i1 %i.awv, label %bb.lv, label %bb.lw

bb.lu:                                            ; preds = %bb.ls
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre194.i, i64 noundef %i.ary, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #37, !noalias !7001
  unreachable

bb.lv:                                            ; preds = %bb.lt
  %i.aww = getelementptr inbounds nuw [8 x i8], ptr %i.asb, i64 %.pre194.i
  %i.awx = load i64, ptr %i.aww, align 8, !noalias !7001, !noundef !5
  %i.awy = getelementptr inbounds nuw [8 x i8], ptr %i.asb, i64 %i.awu
  %i.awz = load i64, ptr %i.awy, align 8, !noalias !7001, !noundef !5
  %i.axa = icmp ult i64 %i.awx, %i.awz
  br i1 %i.axa, label %._crit_edge187.i, label %._crit_edge.i405

bb.lw:                                            ; preds = %bb.lt
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.awu, i64 noundef %i.ary, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37, !noalias !7001
  unreachable

bb.lx:                                            ; preds = %._crit_edge.i405
  %i.axb = getelementptr inbounds nuw [8 x i8], ptr %i.asb, i64 %.pre194.i
  %i.axc = load i64, ptr %i.axb, align 8, !noalias !7001, !noundef !5
  %i.axd = add i64 %i.axc, 1
  br label %bb.lz

bb.ly:                                            ; preds = %._crit_edge.i405
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre194.i, i64 noundef %i.ary, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #37, !noalias !7001
  unreachable

bb.lz:                                            ; preds = %bb.ma, %bb.lx
  %.sroa.04.0.i406 = phi i64 [ %i.axi, %bb.ma ], [ %i.axd, %bb.lx ] ; 6 uses
  %i.axe = sub i64 %.sroa.04.0.i406, %i.ate       ; 3 uses
  %i.axf = icmp ult i64 %.sroa.04.0.i406, %i.arq
  %i.axg = icmp ult i64 %i.axe, %i.arr
  %or.cond44.i = select i1 %i.axf, i1 %i.axg, i1 false
  br i1 %or.cond44.i, label %bb.md, label %bb.mc

bb.ma:                                            ; preds = %._crit_edge187.i
  %i.axh = getelementptr inbounds nuw [8 x i8], ptr %i.asb, i64 %.pre-phi193.i
  %i.axi = load i64, ptr %i.axh, align 8, !noalias !7001, !noundef !5
  br label %bb.lz

bb.mb:                                            ; preds = %._crit_edge187.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi193.i, i64 noundef %i.ary, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #37, !noalias !7001
  unreachable

bb.mc:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i, %bb.lz
  %.sroa.04.1.i = phi i64 [ %i.aze, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i ], [ %.sroa.04.0.i406, %bb.lz ] ; 2 uses
  %i.axj = add i64 %i.ate, %i.arv                 ; 3 uses
  %i.axk = icmp ult i64 %i.axj, %i.ary
  br i1 %i.axk, label %bb.ms, label %bb.mt

bb.md:                                            ; preds = %bb.lz
  %i.axl = add i64 %.sroa.04.0.i406, %.sroa.0.0   ; 4 uses
  %i.axm = add i64 %i.axe, %.sroa.0490.0          ; 3 uses
  %i.axn = sub i64 %i.cw, %i.axl
  %i.axo = sub i64 %i.cx, %i.axm
  %..i158.i = tail call noundef i64 @llvm.umin.i64(i64 %i.axo, i64 %i.axn) ; 3 uses
  %.not127.i = icmp eq i64 %..i158.i, 0
  br i1 %.not127.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i, label %.lr.ph.i415

.lr.ph.i415:                                      ; preds = %bb.md
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  %umax183.i = tail call i64 @llvm.umax.i64(i64 %.val69, i64 %i.axl) ; 2 uses
  %i.axp = sub i64 %umax183.i, %i.axl
  %invariant.gep.i416 = getelementptr [16 x i8], ptr %.val68, i64 %i.axl
  br label %bb.me

bb.me:                                            ; preds = %bb.mr, %.lr.ph.i415
  %.sroa.0.0.i107.i = phi i64 [ 0, %.lr.ph.i415 ], [ %i.azd, %bb.mr ] ; 6 uses
  %i.axq = add nuw i64 %.sroa.0.0.i107.i, %i.axm  ; 2 uses
  %i.axr = icmp ult i64 %i.axq, %.val71
  br i1 %i.axr, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit159.i, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %umax.i417 = tail call i64 @llvm.umax.i64(i64 %.val71, i64 %i.axm)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax.i417, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #37, !noalias !7044
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit159.i: ; preds = %bb.me
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %exitcond.not.i418 = icmp eq i64 %.sroa.0.0.i107.i, %i.axp
  br i1 %exitcond.not.i418, label %bb.mg, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit160.i

bb.mg:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit159.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax183.i, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #37, !noalias !7047
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit160.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit159.i
  %i.axs = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.axq ; 2 uses
  %gep.i419 = getelementptr [16 x i8], ptr %invariant.gep.i416, i64 %.sroa.0.0.i107.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7053)
  %i.axt = load ptr, ptr %i.axs, align 8, !alias.scope !7050, !noalias !7055, !nonnull !5, !align !97, !noundef !5 ; 4 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axs, i64 8
  %i.axv = load i64, ptr %i.axu, align 8, !alias.scope !7050, !noalias !7055, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7059), !noalias !7062
  %i.axw = load i64, ptr %i.axt, align 8, !range !60, !alias.scope !7063, !noalias !7064, !noundef !5
  %i.axx = trunc nuw i64 %i.axw to i1
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axt, i64 24
  %i.axz = load i64, ptr %i.axy, align 8, !alias.scope !7063, !noalias !7064, !noundef !5
  %i.aya = icmp ult i64 %i.axv, %i.axz            ; 2 uses
  br i1 %i.axx, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit160.i
  br i1 %i.aya, label %bb.mk, label %bb.ml

bb.mi:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit160.i
  br i1 %i.aya, label %bb.mj, label %bb.ml

bb.mj:                                            ; preds = %bb.mi
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axt, i64 16
  %i.ayc = load ptr, ptr %i.ayb, align 8, !alias.scope !7063, !noalias !7064, !nonnull !5, !noundef !5
  %i.ayd = getelementptr inbounds nuw [16 x i8], ptr %i.ayc, i64 %i.axv ; 2 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayd, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit165.i

bb.mk:                                            ; preds = %bb.mh
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axt, i64 16
  %i.ayg = load ptr, ptr %i.ayf, align 8, !alias.scope !7063, !noalias !7064, !nonnull !5, !noundef !5
  %i.ayh = getelementptr inbounds nuw [24 x i8], ptr %i.ayg, i64 %i.axv ; 2 uses
  %i.ayi = getelementptr i8, ptr %i.ayh, i64 8
  %i.ayj = getelementptr i8, ptr %i.ayh, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit165.i

bb.ml:                                            ; preds = %bb.mi, %bb.mh
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !7066
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit165.i: ; preds = %bb.mk, %bb.mj
  %.sroa.5.1.i.in.i161.i = phi ptr [ %i.ayj, %bb.mk ], [ %i.aye, %bb.mj ]
  %.sroa.0.1.i.in.i162.i = phi ptr [ %i.ayi, %bb.mk ], [ %i.ayd, %bb.mj ]
  %.sroa.0.1.i.i163.i = load ptr, ptr %.sroa.0.1.i.in.i162.i, align 8, !noalias !7067, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i164.i = load i64, ptr %.sroa.5.1.i.in.i161.i, align 8, !noalias !7067, !noundef !5 ; 2 uses
  %i.ayk = load ptr, ptr %gep.i419, align 8, !alias.scope !7053, !noalias !7068, !nonnull !5, !align !97, !noundef !5 ; 4 uses
  %i.ayl = getelementptr inbounds nuw i8, ptr %gep.i419, i64 8
  %i.aym = load i64, ptr %i.ayl, align 8, !alias.scope !7053, !noalias !7068, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7072), !noalias !7062
  %i.ayn = load i64, ptr %i.ayk, align 8, !range !60, !alias.scope !7075, !noalias !7076, !noundef !5
  %i.ayo = trunc nuw i64 %i.ayn to i1
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayk, i64 24
  %i.ayq = load i64, ptr %i.ayp, align 8, !alias.scope !7075, !noalias !7076, !noundef !5
  %i.ayr = icmp ult i64 %i.aym, %i.ayq            ; 2 uses
  br i1 %i.ayo, label %bb.mm, label %bb.mn

bb.mm:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit165.i
  br i1 %i.ayr, label %bb.mp, label %bb.mq

bb.mn:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit165.i
  br i1 %i.ayr, label %bb.mo, label %bb.mq

bb.mo:                                            ; preds = %bb.mn
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayk, i64 16
  %i.ayt = load ptr, ptr %i.ays, align 8, !alias.scope !7075, !noalias !7076, !nonnull !5, !noundef !5
  %i.ayu = getelementptr inbounds nuw [16 x i8], ptr %i.ayt, i64 %i.aym ; 2 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit170.i

bb.mp:                                            ; preds = %bb.mm
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayk, i64 16
  %i.ayx = load ptr, ptr %i.ayw, align 8, !alias.scope !7075, !noalias !7076, !nonnull !5, !noundef !5
  %i.ayy = getelementptr inbounds nuw [24 x i8], ptr %i.ayx, i64 %i.aym ; 2 uses
  %i.ayz = getelementptr i8, ptr %i.ayy, i64 8
  %i.aza = getelementptr i8, ptr %i.ayy, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit170.i

bb.mq:                                            ; preds = %bb.mn, %bb.mm
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !7078
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit170.i: ; preds = %bb.mp, %bb.mo
  %.sroa.5.1.i.in.i166.i = phi ptr [ %i.aza, %bb.mp ], [ %i.ayv, %bb.mo ]
  %.sroa.0.1.i.in.i167.i = phi ptr [ %i.ayz, %bb.mp ], [ %i.ayu, %bb.mo ]
  %.sroa.5.1.i.i169.i = load i64, ptr %.sroa.5.1.i.in.i166.i, align 8, !noalias !7079, !noundef !5
  %i.azb = icmp eq i64 %.sroa.5.1.i.i164.i, %.sroa.5.1.i.i169.i
  br i1 %i.azb, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit173.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit173.i: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit170.i
  %.sroa.0.1.i.i168.i = load ptr, ptr %.sroa.0.1.i.in.i167.i, align 8, !noalias !7079, !nonnull !5, !noundef !5
  %bcmp.i172.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i163.i, ptr nonnull readonly %.sroa.0.1.i.i168.i, i64 %.sroa.5.1.i.i164.i), !alias.scope !7080, !noalias !7084
  %i.azc = icmp eq i32 %bcmp.i172.i, 0
  br i1 %i.azc, label %bb.mr, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i

bb.mr:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit173.i
  %i.azd = add nuw i64 %.sroa.0.0.i107.i, 1       ; 2 uses
  %exitcond184.not.i = icmp eq i64 %i.azd, %..i158.i
  br i1 %exitcond184.not.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i, label %bb.me

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i: ; preds = %bb.mr, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit173.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit170.i, %bb.md
  %.sroa.0.0.i.lcssa.i = phi i64 [ 0, %bb.md ], [ %.sroa.0.0.i107.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit173.i ], [ %..i158.i, %bb.mr ], [ %.sroa.0.0.i107.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit170.i ]
  %i.aze = add i64 %.sroa.0.0.i.lcssa.i, %.sroa.04.0.i406
  br label %bb.mc

bb.ms:                                            ; preds = %bb.mc
  %i.azf = getelementptr inbounds nuw [8 x i8], ptr %i.asb, i64 %i.axj
  store i64 %.sroa.04.1.i, ptr %i.azf, align 8, !noalias !7001
  br i1 %.not.i402, label %bb.mu, label %bb.mv

bb.mt:                                            ; preds = %bb.mc
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.axj, i64 noundef %i.ary, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #37, !noalias !7001
  unreachable

bb.mu:                                            ; preds = %bb.mx, %bb.mv, %bb.ms
  %i.azg = icmp slt i64 %i.atg, %11
  %or.cond45.i = select i1 %12, i1 true, i1 %i.azg
  br i1 %or.cond45.i, label %bb.kg, label %.lr.ph113.i

bb.mv:                                            ; preds = %bb.ms
  %i.azh = sub i64 %i.ate, %i.ars                 ; 2 uses
  %.sroa.010.0.i = tail call i64 @llvm.abs.i64(i64 %i.azh, i1 false)
  %.not134.not.i = icmp slt i64 %.sroa.010.0.i, %.sroa.048.0125.i
  br i1 %.not134.not.i, label %bb.mw, label %bb.mu

bb.mw:                                            ; preds = %bb.mv
  %i.azi = sub i64 %i.ase, %i.azh                 ; 3 uses
  %i.azj = icmp ult i64 %i.azi, %i.ash
  br i1 %i.azj, label %bb.mx, label %bb.my

bb.mx:                                            ; preds = %bb.mw
  %i.azk = getelementptr inbounds nuw [8 x i8], ptr %i.ask, i64 %i.azi
  %i.azl = load i64, ptr %i.azk, align 8, !noalias !7001, !noundef !5
  %i.azm = add i64 %i.azl, %.sroa.04.1.i
  %.not135.i = icmp ult i64 %i.azm, %.sroa.025.0.i
  br i1 %.not135.i, label %bb.mu, label %bb.mz

bb.my:                                            ; preds = %bb.mw
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.azi, i64 noundef %i.ash, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #37, !noalias !7001
  unreachable

bb.mz:                                            ; preds = %bb.mx
  %i.azn = add i64 %.sroa.04.0.i406, %.sroa.0.0
  %i.azo = add i64 %i.axe, %.sroa.0490.0
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit: ; preds = %bb.mz, %bb.lq
  %.sroa.7.0 = phi i64 [ %i.azo, %bb.mz ], [ %i.awq, %bb.lq ] ; 2 uses
  %.sroa.5.0 = phi i64 [ %i.azn, %bb.mz ], [ %i.awp, %bb.lq ] ; 2 uses
  tail call fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2o_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias nofree noundef align 8 dereferenceable(208) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.0.0, i64 noundef %.sroa.5.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.0490.0, i64 noundef %.sroa.7.0, ptr noalias nofree noundef align 8 dereferenceable(32) %7, ptr noalias nofree noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2o_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias nofree noundef align 8 dereferenceable(208) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.5.0, i64 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.7.0, i64 noundef %i.cx, ptr noalias nofree noundef align 8 dereferenceable(32) %7, ptr noalias nofree noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread569

bb.na:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i404, %.split.i420, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit150.thread.i
  tail call fastcc void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB6_4text12TextDiffSideeEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.0.0.copyload.i421 = load i64, ptr %0, align 8, !alias.scope !7085
  %i.azp = trunc nuw i64 %.sroa.0.0.copyload.i421 to i1
  br i1 %i.azp, label %bb.nb, label %bb.nc

bb.nb:                                            ; preds = %bb.na
  %.sroa.6.0.copyload.i426 = load i64, ptr %.sroa.6.0..sroa_idx.i149, align 8, !alias.scope !7085
  %i.azq = add i64 %.sroa.6.0.copyload.i426, %i.arq
  br label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_.exit427

bb.nc:                                            ; preds = %bb.na
  store i64 %.sroa.0.0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !7085
  store i64 %.sroa.0490.0, ptr %.sroa.7.0..sroa_idx.i150, align 8, !alias.scope !7085
  br label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_.exit427

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_.exit427: ; preds = %bb.nb, %bb.nc
  %.sink.i425 = phi i64 [ %i.azq, %bb.nb ], [ %i.arq, %bb.nc ]
  store i64 1, ptr %0, align 8, !alias.scope !7085
  store i64 %.sink.i425, ptr %.sroa.6.0..sroa_idx.i149, align 8, !alias.scope !7085
  tail call fastcc void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB6_4text12TextDiffSideeEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.01.0.copyload.i428 = load i64, ptr %i.dc, align 8, !alias.scope !7088
  %.sroa.52.0.copyload.i430 = load i64, ptr %.sroa.52.0..sroa_idx.i140, align 8, !alias.scope !7088
  %.sroa.6.0.copyload.i432 = load i64, ptr %.sroa.6.0..sroa_idx.i142, align 8, !alias.scope !7088
  %.sroa.7.0.copyload.i434 = load i64, ptr %.sroa.7.0..sroa_idx.i144, align 8, !alias.scope !7088
  %i.azr = trunc nuw i64 %.sroa.01.0.copyload.i428 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i435 = select i1 %i.azr, i64 %.sroa.52.0.copyload.i430, i64 %.sroa.0.0
  %.sroa.5.sroa.5.0.i436 = select i1 %i.azr, i64 %.sroa.6.0.copyload.i432, i64 %.sroa.0490.0
  %i.azs = select i1 %i.azr, i64 %.sroa.7.0.copyload.i434, i64 0
  %.sroa.5.sroa.6.0.i437 = add i64 %i.azs, %i.arr
  store i64 1, ptr %i.dc, align 8, !alias.scope !7088
  store i64 %.sroa.5.sroa.0.0.i435, ptr %.sroa.52.0..sroa_idx.i140, align 8, !alias.scope !7088
  store i64 %.sroa.5.sroa.5.0.i436, ptr %.sroa.6.0..sroa_idx.i142, align 8, !alias.scope !7088
  store i64 %.sroa.5.sroa.6.0.i437, ptr %.sroa.7.0..sroa_idx.i144, align 8, !alias.scope !7088
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread569

.thread:                                          ; preds = %bb.ca
  %i.azt = sub nuw i64 %i.cx, %.sroa.0490.0
  tail call fastcc void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB6_4text12TextDiffSideeEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.01.0.copyload.i438 = load i64, ptr %i.dc, align 8, !alias.scope !7091
  %.sroa.52.0.copyload.i440 = load i64, ptr %.sroa.52.0..sroa_idx.i140, align 8, !alias.scope !7091
  %.sroa.6.0.copyload.i442 = load i64, ptr %.sroa.6.0..sroa_idx.i142, align 8, !alias.scope !7091
  %.sroa.7.0.copyload.i444 = load i64, ptr %.sroa.7.0..sroa_idx.i144, align 8, !alias.scope !7091
  %i.azu = trunc nuw i64 %.sroa.01.0.copyload.i438 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i445 = select i1 %i.azu, i64 %.sroa.52.0.copyload.i440, i64 %.sroa.0.0
  %.sroa.5.sroa.5.0.i446 = select i1 %i.azu, i64 %.sroa.6.0.copyload.i442, i64 %.sroa.0490.0
  %i.azv = select i1 %i.azu, i64 %.sroa.7.0.copyload.i444, i64 0
  %.sroa.5.sroa.6.0.i447 = add i64 %i.azt, %i.azv
  store i64 1, ptr %i.dc, align 8, !alias.scope !7091
  store i64 %.sroa.5.sroa.0.0.i445, ptr %.sroa.52.0..sroa_idx.i140, align 8, !alias.scope !7091
  store i64 %.sroa.5.sroa.5.0.i446, ptr %.sroa.6.0..sroa_idx.i142, align 8, !alias.scope !7091
  store i64 %.sroa.5.sroa.6.0.i447, ptr %.sroa.7.0..sroa_idx.i144, align 8, !alias.scope !7091
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread569

bb.nd:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread569
  store i64 0, ptr %0, align 8, !alias.scope !7094
  store i64 0, ptr %i.dc, align 8, !alias.scope !7094
  %.sroa.01.0.copyload.i448 = load i64, ptr %i.dd, align 8, !alias.scope !7099
  %.sroa.52.0.copyload.i450 = load i64, ptr %.sroa.52.0..sroa_idx.i130, align 8, !alias.scope !7099
  %.sroa.6.0.copyload.i452 = load i64, ptr %.sroa.6.0..sroa_idx.i132, align 8, !alias.scope !7099
  %.sroa.7.0.copyload.i454 = load i64, ptr %.sroa.7.0..sroa_idx.i134, align 8, !alias.scope !7099
  %i.azw = trunc nuw i64 %.sroa.01.0.copyload.i448 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i455 = select i1 %i.azw, i64 %.sroa.52.0.copyload.i450, i64 %i.cw
  %.sroa.5.sroa.5.0.i456 = select i1 %i.azw, i64 %.sroa.6.0.copyload.i452, i64 %i.cx
  %i.azx = select i1 %i.azw, i64 %.sroa.7.0.copyload.i454, i64 0
  %.sroa.5.sroa.6.0.i457 = add i64 %i.azx, %.sroa.0.0.i93
  store i64 1, ptr %i.dd, align 8, !alias.scope !7099
  store i64 %.sroa.5.sroa.0.0.i455, ptr %.sroa.52.0..sroa_idx.i130, align 8, !alias.scope !7099
  store i64 %.sroa.5.sroa.5.0.i456, ptr %.sroa.6.0..sroa_idx.i132, align 8, !alias.scope !7099
  store i64 %.sroa.5.sroa.6.0.i457, ptr %.sroa.7.0..sroa_idx.i134, align 8, !alias.scope !7099
  br label %bb.ne

bb.ne:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread569, %bb.nd
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtB6_4text12TextDiffSideeEB13_EB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp uge i64 %1, %2
  %i.b = icmp uge i64 %4, %5
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtB27_4text12TextDiffSideeEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3F_5count0EB27_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i = sub nuw i64 %5, %4
  %spec.select.i.i4.i.i = sub nuw i64 %2, %1
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i, i64 %spec.select.i.i.i.i) ; 9 uses
  %.not = icmp eq i64 %..i.i.i, 0
  br i1 %.not, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtB27_4text12TextDiffSideeEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3F_5count0EB27_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.c = load i64, ptr %3, align 8, !range !60, !alias.scope !7100, !noalias !7105, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !7100, !noalias !7105, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.g, align 8, !nonnull !5 ; 2 uses
  %i.k = load i64, ptr %0, align 8, !range !60
  %.fr = freeze i64 %i.k
  %i.l = trunc i64 %.fr to i1                     ; 2 uses
  %i.m = load i64, ptr %i.h, align 8
  %i.n = load ptr, ptr %i.i, align 8, !nonnull !5 ; 4 uses
  %i.o = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %4) ; 4 uses
  %i.p = tail call i64 @llvm.usub.sat.i64(i64 %i.m, i64 %1) ; 4 uses
  br i1 %i.d, label %.lr.ph.split.us.i.i.i.preheader, label %.lr.ph.split.i.i.i.preheader

.lr.ph.split.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i
  %invariant.gep65 = getelementptr [16 x i8], ptr %i.j, i64 %4 ; 2 uses
  br i1 %i.l, label %.lr.ph.split.i.i.i.us.preheader, label %.lr.ph.split.i.i.i.preheader25

.lr.ph.split.i.i.i.preheader25:                   ; preds = %.lr.ph.split.i.i.i.preheader
  %invariant.gep63 = getelementptr [16 x i8], ptr %i.n, i64 %1
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i.us.preheader:                  ; preds = %.lr.ph.split.i.i.i.preheader
  %invariant.gep67 = getelementptr [24 x i8], ptr %i.n, i64 %1
  br label %.lr.ph.split.i.i.i.us

.lr.ph.split.i.i.i.us:                            ; preds = %.lr.ph.split.i.i.i.us.preheader, %bb.c
  %.sroa.01.023.i.i.i.us = phi i64 [ %i.q, %bb.c ], [ 0, %.lr.ph.split.i.i.i.us.preheader ] ; 7 uses
  %i.q = add nuw i64 %.sroa.01.023.i.i.i.us, 1    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7119), !noalias !7120
  %exitcond33.not = icmp eq i64 %.sroa.01.023.i.i.i.us, %i.o
  br i1 %exitcond33.not, label %.split.us.i.i.i, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.us: ; preds = %.lr.ph.split.i.i.i.us
  %gep66 = getelementptr [16 x i8], ptr %invariant.gep65, i64 %.sroa.01.023.i.i.i.us ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %gep66, i64 8
  %.sroa.0.1.i.i.i.i.i.i.us = load ptr, ptr %gep66, align 8, !noalias !7121, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i.i.i.i.i.us = load i64, ptr %i.r, align 8, !noalias !7121, !noundef !5 ; 2 uses
  %exitcond35.not = icmp eq i64 %.sroa.01.023.i.i.i.us, %i.p
  br i1 %exitcond35.not, label %.split28.us.i.i.i, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i.us: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.us
  %gep68 = getelementptr [24 x i8], ptr %invariant.gep67, i64 %.sroa.01.023.i.i.i.us ; 2 uses
  %i.s = getelementptr i8, ptr %gep68, i64 16
  %.sroa.5.1.i.i9.i.i.i.i.us = load i64, ptr %i.s, align 8, !noalias !7122, !noundef !5
  %i.t = icmp eq i64 %.sroa.5.1.i.i.i.i.i.i.us, %.sroa.5.1.i.i9.i.i.i.i.us
  br i1 %i.t, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtB27_4text12TextDiffSideeEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3F_5count0EB27_.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i.us
  %i.u = getelementptr i8, ptr %gep68, i64 8
  %.sroa.0.1.i.i8.i.i.i.i.us = load ptr, ptr %i.u, align 8, !noalias !7122, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i.us = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.i.i.i.i.us, ptr nonnull readonly %.sroa.0.1.i.i8.i.i.i.i.us, i64 %.sroa.5.1.i.i.i.i.i.i.us), !alias.scope !7128, !noalias !7132
  %i.v = icmp eq i32 %bcmp.i.i.i.i.i.us, 0
  br i1 %i.v, label %bb.c, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtB27_4text12TextDiffSideeEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3F_5count0EB27_.exit

bb.c:                                             ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us
  %exitcond.not.i.i.i.us = icmp eq i64 %i.q, %..i.i.i
  br i1 %exitcond.not.i.i.i.us, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtB27_4text12TextDiffSideeEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3F_5count0EB27_.exit, label %.lr.ph.split.i.i.i.us

.lr.ph.split.us.i.i.i.preheader:                  ; preds = %.lr.ph.i.i.i
  %invariant.gep73 = getelementptr [24 x i8], ptr %i.j, i64 %4 ; 2 uses
  br i1 %i.l, label %.lr.ph.split.us.i.i.i.us.preheader, label %.lr.ph.split.us.i.i.i.preheader16

.lr.ph.split.us.i.i.i.preheader16:                ; preds = %.lr.ph.split.us.i.i.i.preheader
  %invariant.gep71 = getelementptr [16 x i8], ptr %i.n, i64 %1
  br label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i.us.preheader:               ; preds = %.lr.ph.split.us.i.i.i.preheader
  %invariant.gep75 = getelementptr [24 x i8], ptr %i.n, i64 %1
end_hunk_2
