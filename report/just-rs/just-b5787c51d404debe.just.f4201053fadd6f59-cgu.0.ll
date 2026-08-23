Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 597
loop-unroll.NumUnrolled: 722
begin_hunk_0_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtB4_5utils12OffsetLookupjEBZ_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2m_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just:bb.a
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !15916
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %.pre, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !15916
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %5, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !15916
  %i.au = add i64 %i.ao, 1                        ; 3 uses
  store i64 %i.au, ptr %i.an, align 8, !alias.scope !15907, !noalias !15910
  %i.av = load i64, ptr %i.am, align 8, !range !306, !alias.scope !15917, !noalias !15920, !noundef !29
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %bb.l, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit

bb.l:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit.i
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am) #74, !noalias !15920
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit

_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit.i, %bb.l
  %i.ax = load ptr, ptr %i.ar, align 8, !alias.scope !15917, !noalias !15920, !nonnull !29, !noundef !29
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %i.au ; 4 uses
  store i64 2, ptr %i.ay, align 8, !noalias !15926
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %2, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !15926
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store i64 %5, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !15926
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store i64 %.pre12, ptr %.sroa.67.0..sroa_idx.i, align 8, !noalias !15926
  %i.az = add i64 %i.ao, 2
  store i64 %i.az, ptr %i.an, align 8, !alias.scope !15917, !noalias !15920
  br label %bb.u

._crit_edge:                                      ; preds = %bb.a, %bb.b, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit24.i, %bb.i, %bb.c, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i
  %i.ba = add i64 %.pre12, %.pre                  ; 2 uses
  %i.bb = lshr i64 %i.ba, 1
  %.sroa.011.0.i8 = sub i64 %i.ba, %i.bb
  %i.bc = add nuw i64 %.sroa.011.0.i8, 1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15927
  call void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms5myersNtB2_1V3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %i.bc), !noalias !15927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15927
  invoke void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms5myersNtB2_1V3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %i.bc)
          to label %bb.o unwind label %bb.n, !noalias !15927

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24.i: ; preds = %bb.q, %bb.p, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.bh, %bb.p ], [ %i.bh, %bb.q ]
  %.val22.i = load i64, ptr %i.b, align 8, !alias.scope !15932, !noalias !15927 ; 2 uses
  %i.bd = icmp eq i64 %.val22.i, 0
  br i1 %i.bd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit.i, label %bb.m

bb.m:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val23.i = load ptr, ptr %i.be, align 8, !noalias !15927, !nonnull !29, !noundef !29
  %i.bf = shl nuw i64 %.val22.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23.i, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !15935
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit.i

bb.n:                                             ; preds = %._crit_edge
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24.i

bb.o:                                             ; preds = %._crit_edge
  invoke fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef align 8 dereferenceable(32) %i.a, ptr noalias nofree noundef align 8 dereferenceable(32) %i.b, i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.r unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val20.i = load i64, ptr %i.a, align 8, !alias.scope !15932, !noalias !15927 ; 2 uses
  %i.bi = icmp eq i64 %.val20.i, 0
  br i1 %i.bi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val21.i = load ptr, ptr %i.bj, align 8, !noalias !15927, !nonnull !29, !noundef !29
  %i.bk = shl nuw i64 %.val20.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !15938
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24.i

bb.r:                                             ; preds = %bb.o
  %.val18.i = load i64, ptr %i.a, align 8, !alias.scope !15932, !noalias !15927 ; 2 uses
  %i.bl = icmp eq i64 %.val18.i, 0
  br i1 %i.bl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit25.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val19.i = load ptr, ptr %i.bm, align 8, !noalias !15927, !nonnull !29, !noundef !29
  %i.bn = shl nuw i64 %.val18.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19.i, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !15941
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit25.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit25.i: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15927
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !15932, !noalias !15927 ; 2 uses
  %i.bo = icmp eq i64 %.val.i, 0
  br i1 %i.bo, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, label %bb.t

bb.t:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit25.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val17.i = load ptr, ptr %i.bp, align 8, !noalias !15927, !nonnull !29, !noundef !29
  %i.bq = shl nuw i64 %.val.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !15944
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24.i
  resume { ptr, i32 } %.pn.i

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit25.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15927
  br label %bb.u

bb.u:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = load i64, ptr %i.g, align 8, !noundef !29 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !29 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !29, !noundef !29 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !29 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !29 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #75
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !29, !noundef !29 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1
  %.sroa.047.0 = sub i64 %i.y, %i.z               ; 3 uses
  %i.aa = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not128.not = icmp ugt i64 %i.k, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !36

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #75
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @221, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #75
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not129.not = icmp samesign ugt i64 %i.t, %.sroa.047.0
  br i1 %.not129.not, label %.lr.ph266, label %bb.h, !prof !36

.lr.ph266:                                        ; preds = %bb.g
  %i.ac = add i64 %i.h, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !29 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !29 ; 2 uses
  %i.ap = add i64 %i.q, -1
  %i.aq = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.ar = add i64 %.sroa.037.0, %5                ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @223, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #75
  unreachable

bb.i:                                             ; preds = %.lr.ph266, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread
  %.sroa.048.0265 = phi i64 [ 0, %.lr.ph266 ], [ %i.as, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread ] ; 8 uses
  %i.as = add nuw nsw i64 %.sroa.048.0265, 1
  %i.at = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef %10)
  br i1 %i.at, label %._crit_edge, label %.lr.ph250

.lr.ph250:                                        ; preds = %bb.i, %bb.bd
  %.sroa.7.0249 = phi i64 [ %i.ay, %bb.bd ], [ %.sroa.048.0265, %bb.i ]
  %not..sroa.11163.0248 = phi i64 [ 1, %bb.bd ], [ 0, %bb.i ]
  %i.au = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0249, i64 %not..sroa.11163.0248) ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 1       ; 2 uses
  %i.aw = extractvalue { i64, i1 } %i.au, 0       ; 10 uses
  %i.ax = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aw, i64 -1) ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.ax, 0
  %i.az = extractvalue { i64, i1 } %i.ax, 1
  %.not3.i.not = icmp slt i64 %i.aw, 0
  %or.cond188 = or i1 %i.av, %.not3.i.not
  br i1 %or.cond188, label %.lr.ph263.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph250
  %i.ba = icmp eq i64 %i.aw, 0
  br i1 %i.ba, label %._crit_edge312.a, label %bb.ak

.lr.ph263:                                        ; preds = %.lr.ph263.preheader, %bb.af
  %not..sroa.14172.0262 = phi i64 [ 1, %bb.af ], [ 0, %.lr.ph263.preheader ]
  %.sroa.7171.0261 = phi i64 [ %i.bf, %bb.af ], [ %.sroa.048.0265, %.lr.ph263.preheader ]
  %i.bb = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7171.0261, i64 %not..sroa.14172.0262) ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 1       ; 2 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 0       ; 10 uses
  %i.be = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bd, i64 -1) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 0
  %i.bg = extractvalue { i64, i1 } %i.be, 1
  %.not3.i144.not = icmp slt i64 %i.bd, 0
  %or.cond190 = or i1 %i.bc, %.not3.i144.not
  br i1 %or.cond190, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph263
  %i.bh = icmp eq i64 %i.bd, 0
  br i1 %i.bh, label %._crit_edge314.a, label %bb.l

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread: ; preds = %bb.af, %.lr.ph263
  %exitcond310.not = icmp eq i64 %.sroa.048.0265, %.sroa.047.0
  br i1 %exitcond310.not, label %._crit_edge, label %bb.i

bb.l:                                             ; preds = %bb.k
  %.not130 = icmp eq i64 %i.bd, %.sroa.048.0265
  %.pre315 = add i64 %i.ap, %i.bd                 ; 6 uses
  br i1 %.not130, label %._crit_edge313, label %bb.m

._crit_edge314.a:                                 ; preds = %bb.k, %bb.p
  %.pre-phi = phi i64 [ %i.bl, %bb.p ], [ %i.r, %bb.k ] ; 3 uses
  %i.bi = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.bi, label %bb.u, label %bb.v

._crit_edge313:                                   ; preds = %bb.l, %bb.p
  %i.bj = icmp ult i64 %.pre315, %i.t
  br i1 %i.bj, label %bb.r, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.bk = icmp ult i64 %.pre315, %i.t
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = add i64 %i.r, %i.bd                     ; 4 uses
  %i.bm = icmp ult i64 %i.bl, %i.t
  br i1 %i.bm, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre315, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #75
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre315
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !29
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bl
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !29
  %i.br = icmp ult i64 %i.bo, %i.bq
  br i1 %i.br, label %._crit_edge314.a, label %._crit_edge313

bb.q:                                             ; preds = %bb.n
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bl, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #75
  unreachable

bb.r:                                             ; preds = %._crit_edge313
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre315
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !29
  %i.bu = add i64 %i.bt, 1
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge313
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre315, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #75
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.r
  %.sroa.014.0 = phi i64 [ %i.bz, %bb.u ], [ %i.bu, %bb.r ] ; 5 uses
  %i.bv = sub i64 %.sroa.014.0, %i.bd             ; 4 uses
  %i.bw = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.bx = icmp ult i64 %i.bv, %.sroa.037.0
  %or.cond = and i1 %i.bw, %i.bx
  br i1 %or.cond, label %bb.x, label %bb.w

bb.u:                                             ; preds = %._crit_edge314.a
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.bz = load i64, ptr %i.by, align 8, !noundef !29
  br label %bb.t

bb.v:                                             ; preds = %._crit_edge314.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #75
  unreachable

bb.w:                                             ; preds = %bb.t, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit
  %.sroa.020.0 = phi i64 [ %i.co, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit ], [ %i.bv, %bb.t ]
  %.sroa.014.1 = phi i64 [ %i.cn, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.014.0, %bb.t ] ; 3 uses
  %i.ca = add i64 %i.bd, %i.q                     ; 3 uses
  %i.cb = icmp ult i64 %i.ca, %i.t
  br i1 %i.cb, label %bb.ac, label %bb.ad

bb.x:                                             ; preds = %bb.t
  %i.cc = sub i64 %i.aq, %.sroa.014.0             ; 2 uses
  %i.cd = sub i64 %i.ar, %i.bv                    ; 2 uses
  %i.ce = sub i64 %i.cc, %2
  %i.cf = sub i64 %i.cd, %5
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.cf, i64 %i.ce) ; 3 uses
  %.not269 = icmp eq i64 %..i, 0
  br i1 %.not269, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.x
  %invariant.op256 = sub i64 %i.cd, %i.ae
  %invariant.op258 = sub i64 %i.cc, %i.ak
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph253, %bb.ab
  %.sroa.0.0.i136252 = phi i64 [ 0, %.lr.ph253 ], [ %i.cm, %bb.ab ] ; 3 uses
  %i.cg = xor i64 %.sroa.0.0.i136252, -1          ; 2 uses
  %.reass257 = add i64 %invariant.op256, %i.cg    ; 3 uses
  %i.ch = icmp ult i64 %.reass257, %i.ag
  br i1 %i.ch, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit137, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass257, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #75, !noalias !15947
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit137: ; preds = %bb.y
  %.reass259 = add i64 %invariant.op258, %i.cg    ; 3 uses
  %i.ci = icmp ult i64 %.reass259, %i.am
  br i1 %i.ci, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit, label %bb.aa

bb.aa:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit137
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass259, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #75, !noalias !15950
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit137
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass257
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.reass259
  %.val = load i64, ptr %i.cj, align 8, !noundef !29
  %.val140 = load i64, ptr %i.ck, align 8, !noundef !29
  %i.cl = icmp eq i64 %.val, %.val140
  br i1 %i.cl, label %bb.ab, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit

bb.ab:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit
  %i.cm = add nuw i64 %.sroa.0.0.i136252, 1       ; 2 uses
  %exitcond309.not = icmp eq i64 %i.cm, %..i
  br i1 %exitcond309.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit, label %bb.y

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit, %bb.ab, %bb.x
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.x ], [ %..i, %bb.ab ], [ %.sroa.0.0.i136252, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit ] ; 2 uses
  %i.cn = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.co = add i64 %.sroa.0.0.i136.lcssa, %i.bv
  br label %bb.w

bb.ac:                                            ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ca
  store i64 %.sroa.014.1, ptr %i.cp, align 8
  br i1 %.not, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.w
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ca, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #75
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.cq = sub i64 %i.bd, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.cq, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0265
  br i1 %.not131, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ah, %bb.ac
  %i.cr = icmp slt i64 %i.bd, 1
  %11 = or i1 %i.bg, %i.cr
  %or.cond189 = or i1 %11, %i.bc
  br i1 %or.cond189, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread, label %.lr.ph263

bb.ag:                                            ; preds = %bb.ae
  %i.cs = sub i64 %i.h, %i.cq                     ; 3 uses
  %i.ct = icmp ult i64 %i.cs, %i.k
  br i1 %i.ct, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cs
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !29
  %i.cw = add i64 %i.cv, %.sroa.014.1
  %.not132 = icmp ult i64 %i.cw, %.sroa.025.0
  br i1 %.not132, label %bb.af, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #75
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cx = sub i64 %i.aq, %.sroa.014.1
  %i.cy = sub i64 %i.ar, %.sroa.020.0
  br label %._crit_edge.sink.split

bb.ak:                                            ; preds = %bb.j
  %.not133 = icmp eq i64 %i.aw, %.sroa.048.0265
  %.pre319 = add i64 %i.ac, %i.aw                 ; 6 uses
  br i1 %.not133, label %._crit_edge311, label %bb.al

._crit_edge312.a:                                 ; preds = %bb.j, %bb.ao
  %.pre-phi318 = phi i64 [ %i.dc, %bb.ao ], [ %i.i, %bb.j ] ; 3 uses
  %i.cz = icmp ult i64 %.pre-phi318, %i.k
  br i1 %i.cz, label %bb.at, label %bb.au

._crit_edge311:                                   ; preds = %bb.ak, %bb.ao
  %i.da = icmp ult i64 %.pre319, %i.k
  br i1 %i.da, label %bb.aq, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.db = icmp ult i64 %.pre319, %i.k
  br i1 %i.db, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dc = add i64 %i.i, %i.aw                     ; 4 uses
  %i.dd = icmp ult i64 %i.dc, %i.k
  br i1 %i.dd, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.al
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #75
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre319
  %i.df = load i64, ptr %i.de, align 8, !noundef !29
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dc
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !29
  %i.di = icmp ult i64 %i.df, %i.dh
  br i1 %i.di, label %._crit_edge312.a, label %._crit_edge311

bb.ap:                                            ; preds = %bb.am
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.dc, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #75
  unreachable

bb.aq:                                            ; preds = %._crit_edge311
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre319
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !29
  %i.dl = add i64 %i.dk, 1
  br label %bb.as

bb.ar:                                            ; preds = %._crit_edge311
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @233) #75
  unreachable

bb.as:                                            ; preds = %bb.at, %bb.aq
  %.sroa.04.0 = phi i64 [ %i.dr, %bb.at ], [ %i.dl, %bb.aq ] ; 6 uses
  %i.dm = sub i64 %.sroa.04.0, %i.aw              ; 3 uses
  %i.dn = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.dn, i1 false
  %i.do = icmp ult i64 %i.dm, %i.d
  %i.dp = and i1 %i.c, %.sroa.051.0
  %or.cond186 = select i1 %i.dp, i1 %i.do, i1 false
  br i1 %or.cond186, label %bb.aw, label %bb.av

bb.at:                                            ; preds = %._crit_edge312.a
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi318
  %i.dr = load i64, ptr %i.dq, align 8, !noundef !29
  br label %bb.as

bb.au:                                            ; preds = %._crit_edge312.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi318, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #75
  unreachable

bb.av:                                            ; preds = %bb.as, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit
  %.sroa.04.1 = phi i64 [ %i.ee, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.04.0, %bb.as ] ; 2 uses
  %i.ds = add i64 %i.aw, %i.h                     ; 3 uses
  %i.dt = icmp ult i64 %i.ds, %i.k
  br i1 %i.dt, label %bb.bb, label %bb.bc

bb.aw:                                            ; preds = %bb.as
  %i.du = add i64 %.sroa.04.0, %2                 ; 2 uses
  %i.dv = add i64 %i.dm, %5                       ; 2 uses
  %i.dw = sub i64 %3, %i.du
  %i.dx = sub i64 %6, %i.dv
  %..i149 = tail call noundef i64 @llvm.umin.i64(i64 %i.dx, i64 %i.dw) ; 3 uses
  %.not268 = icmp eq i64 %..i149, 0
  br i1 %.not268, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aw
  %invariant.op = sub i64 %i.dv, %i.ae            ; 2 uses
  %invariant.op245 = sub i64 %i.du, %i.ak         ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph, %bb.ba
  %.sroa.0.0.i243 = phi i64 [ 0, %.lr.ph ], [ %i.ed, %bb.ba ] ; 4 uses
  %.reass = add nuw i64 %.sroa.0.0.i243, %invariant.op ; 2 uses
  %i.dy = icmp ult i64 %.reass, %i.ag
  br i1 %i.dy, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %invariant.op)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #75, !noalias !15953
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139: ; preds = %bb.ax
  %.reass246 = add nuw i64 %.sroa.0.0.i243, %invariant.op245 ; 2 uses
  %i.dz = icmp ult i64 %.reass246, %i.am
  br i1 %i.dz, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138, label %bb.az

bb.az:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139
  %umax308 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %invariant.op245)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax308, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #75, !noalias !15956
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.reass
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.reass246
  %.val141 = load i64, ptr %i.ea, align 8, !noundef !29
  %.val142 = load i64, ptr %i.eb, align 8, !noundef !29
  %i.ec = icmp eq i64 %.val141, %.val142
  br i1 %i.ec, label %bb.ba, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit

bb.ba:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138
  %i.ed = add nuw i64 %.sroa.0.0.i243, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.ed, %..i149
  br i1 %exitcond.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit, label %bb.ax

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138, %bb.ba, %bb.aw
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.aw ], [ %..i149, %bb.ba ], [ %.sroa.0.0.i243, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138 ]
  %i.ee = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.av

bb.bb:                                            ; preds = %bb.av
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ds
  store i64 %.sroa.04.1, ptr %i.ef, align 8
  br i1 %.not, label %bb.bd, label %bb.be

bb.bc:                                            ; preds = %bb.av
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ds, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #75
  unreachable

bb.bd:                                            ; preds = %bb.be, %bb.bg, %bb.bb
  %i.eg = icmp slt i64 %i.aw, 1
  %12 = or i1 %i.az, %i.eg
  %or.cond187 = or i1 %12, %i.av
  br i1 %or.cond187, label %.lr.ph263.preheader, label %.lr.ph250

.lr.ph263.preheader:                              ; preds = %.lr.ph250, %bb.bd
  br label %.lr.ph263

bb.be:                                            ; preds = %bb.bb
  %i.eh = sub i64 %i.aw, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.eh, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0265
  br i1 %.not134.not, label %bb.bf, label %bb.bd

bb.bf:                                            ; preds = %bb.be
  %i.ei = sub i64 %i.q, %i.eh                     ; 3 uses
  %i.ej = icmp ult i64 %i.ei, %i.t
  br i1 %i.ej, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ei
  %i.el = load i64, ptr %i.ek, align 8, !noundef !29
  %i.em = add i64 %i.el, %.sroa.04.1
  %.not135 = icmp ult i64 %i.em, %.sroa.025.0
  br i1 %.not135, label %bb.bd, label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ei, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #75
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.en = add i64 %.sroa.04.0, %2
  %i.eo = add i64 %i.dm, %5
  br label %._crit_edge.sink.split

._crit_edge.sink.split:                           ; preds = %bb.bi, %bb.aj
  %.sink396.a = phi i64 [ %i.cx, %bb.aj ], [ %i.en, %bb.bi ]
  %.sink394 = phi i64 [ %i.cy, %bb.aj ], [ %i.eo, %bb.bi ]
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink396.a, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink394, ptr %i.eq, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread, %._crit_edge.sink.split
  %.sink = phi i64 [ 1, %._crit_edge.sink.split ], [ 0, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = load i64, ptr %i.g, align 8, !noundef !29 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !29 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !29, !noundef !29 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !29 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !29 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #75
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !29, !noundef !29 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1
  %.sroa.047.0 = sub i64 %i.y, %i.z               ; 3 uses
  %i.aa = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not128.not = icmp ugt i64 %i.k, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !36

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #75
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @221, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #75
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not129.not = icmp samesign ugt i64 %i.t, %.sroa.047.0
  br i1 %.not129.not, label %.lr.ph266, label %bb.h, !prof !36

.lr.ph266:                                        ; preds = %bb.g
  %i.ac = add i64 %i.h, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i64, ptr %i.af, align 8            ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !29 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !29 ; 2 uses
  %i.ap = add i64 %i.q, -1
  %i.aq = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.ar = add i64 %.sroa.037.0, %5                ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @223, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #75
  unreachable

bb.i:                                             ; preds = %.lr.ph266, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread
  %.sroa.048.0265 = phi i64 [ 0, %.lr.ph266 ], [ %i.as, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread ] ; 8 uses
  %i.as = add nuw nsw i64 %.sroa.048.0265, 1
  %i.at = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef %10)
  br i1 %i.at, label %._crit_edge, label %.lr.ph250

.lr.ph250:                                        ; preds = %bb.i, %bb.bd
  %.sroa.7.0249 = phi i64 [ %i.ay, %bb.bd ], [ %.sroa.048.0265, %bb.i ]
  %not..sroa.11163.0248 = phi i64 [ 1, %bb.bd ], [ 0, %bb.i ]
  %i.au = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0249, i64 %not..sroa.11163.0248) ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 1       ; 2 uses
  %i.aw = extractvalue { i64, i1 } %i.au, 0       ; 10 uses
  %i.ax = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aw, i64 -1) ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.ax, 0
  %i.az = extractvalue { i64, i1 } %i.ax, 1
  %.not3.i.not = icmp slt i64 %i.aw, 0
  %or.cond188 = or i1 %i.av, %.not3.i.not
  br i1 %or.cond188, label %.lr.ph263.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph250
  %i.ba = icmp eq i64 %i.aw, 0
  br i1 %i.ba, label %._crit_edge312.a, label %bb.ak

.lr.ph263:                                        ; preds = %.lr.ph263.preheader, %bb.af
  %not..sroa.14172.0262 = phi i64 [ 1, %bb.af ], [ 0, %.lr.ph263.preheader ]
  %.sroa.7171.0261 = phi i64 [ %i.bf, %bb.af ], [ %.sroa.048.0265, %.lr.ph263.preheader ]
  %i.bb = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7171.0261, i64 %not..sroa.14172.0262) ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 1       ; 2 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 0       ; 10 uses
  %i.be = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bd, i64 -1) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 0
  %i.bg = extractvalue { i64, i1 } %i.be, 1
  %.not3.i144.not = icmp slt i64 %i.bd, 0
  %or.cond190 = or i1 %i.bc, %.not3.i144.not
  br i1 %or.cond190, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph263
  %i.bh = icmp eq i64 %i.bd, 0
  br i1 %i.bh, label %._crit_edge314.a, label %bb.l

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread: ; preds = %bb.af, %.lr.ph263
  %exitcond310.not = icmp eq i64 %.sroa.048.0265, %.sroa.047.0
  br i1 %exitcond310.not, label %._crit_edge, label %bb.i

bb.l:                                             ; preds = %bb.k
  %.not130 = icmp eq i64 %i.bd, %.sroa.048.0265
  %.pre315 = add i64 %i.ap, %i.bd                 ; 6 uses
  br i1 %.not130, label %._crit_edge313, label %bb.m

._crit_edge314.a:                                 ; preds = %bb.k, %bb.p
  %.pre-phi = phi i64 [ %i.bl, %bb.p ], [ %i.r, %bb.k ] ; 3 uses
  %i.bi = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.bi, label %bb.u, label %bb.v

._crit_edge313:                                   ; preds = %bb.l, %bb.p
  %i.bj = icmp ult i64 %.pre315, %i.t
  br i1 %i.bj, label %bb.r, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.bk = icmp ult i64 %.pre315, %i.t
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = add i64 %i.r, %i.bd                     ; 4 uses
  %i.bm = icmp ult i64 %i.bl, %i.t
  br i1 %i.bm, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre315, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #75
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre315
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !29
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bl
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !29
  %i.br = icmp ult i64 %i.bo, %i.bq
  br i1 %i.br, label %._crit_edge314.a, label %._crit_edge313

bb.q:                                             ; preds = %bb.n
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bl, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #75
  unreachable

bb.r:                                             ; preds = %._crit_edge313
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre315
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !29
  %i.bu = add i64 %i.bt, 1
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge313
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre315, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #75
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.r
  %.sroa.014.0 = phi i64 [ %i.bz, %bb.u ], [ %i.bu, %bb.r ] ; 5 uses
  %i.bv = sub i64 %.sroa.014.0, %i.bd             ; 4 uses
  %i.bw = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.bx = icmp ult i64 %i.bv, %.sroa.037.0
  %or.cond = and i1 %i.bw, %i.bx
  br i1 %or.cond, label %bb.x, label %bb.w

bb.u:                                             ; preds = %._crit_edge314.a
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.bz = load i64, ptr %i.by, align 8, !noundef !29
  br label %bb.t

bb.v:                                             ; preds = %._crit_edge314.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #75
  unreachable

bb.w:                                             ; preds = %bb.t, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit
  %.sroa.020.0 = phi i64 [ %i.co, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit ], [ %i.bv, %bb.t ]
  %.sroa.014.1 = phi i64 [ %i.cn, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.014.0, %bb.t ] ; 3 uses
  %i.ca = add i64 %i.bd, %i.q                     ; 3 uses
  %i.cb = icmp ult i64 %i.ca, %i.t
  br i1 %i.cb, label %bb.ac, label %bb.ad

bb.x:                                             ; preds = %bb.t
  %i.cc = sub i64 %i.aq, %.sroa.014.0             ; 2 uses
  %i.cd = sub i64 %i.ar, %i.bv                    ; 2 uses
  %i.ce = sub i64 %i.cc, %2
  %i.cf = sub i64 %i.cd, %5
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.cf, i64 %i.ce) ; 3 uses
  %.not269 = icmp eq i64 %..i, 0
  br i1 %.not269, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.x
  %invariant.op256 = sub i64 %i.cd, %i.ae
  %invariant.op258 = sub i64 %i.cc, %i.ak
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph253, %bb.ab
  %.sroa.0.0.i136252 = phi i64 [ 0, %.lr.ph253 ], [ %i.cm, %bb.ab ] ; 3 uses
  %i.cg = xor i64 %.sroa.0.0.i136252, -1          ; 2 uses
  %.reass257 = add i64 %invariant.op256, %i.cg    ; 3 uses
  %i.ch = icmp ult i64 %.reass257, %i.ag
  br i1 %i.ch, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit137, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass257, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #75, !noalias !15959
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit137: ; preds = %bb.y
  %.reass259 = add i64 %invariant.op258, %i.cg    ; 3 uses
  %i.ci = icmp ult i64 %.reass259, %i.am
  br i1 %i.ci, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit, label %bb.aa

bb.aa:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit137
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass259, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #75, !noalias !15962
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit137
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.reass257
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.reass259
  %.val = load i32, ptr %i.cj, align 4, !noundef !29
  %.val140 = load i32, ptr %i.ck, align 4, !noundef !29
  %i.cl = icmp eq i32 %.val, %.val140
  br i1 %i.cl, label %bb.ab, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit

bb.ab:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit
  %i.cm = add nuw i64 %.sroa.0.0.i136252, 1       ; 2 uses
  %exitcond309.not = icmp eq i64 %i.cm, %..i
  br i1 %exitcond309.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit, label %bb.y

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit, %bb.ab, %bb.x
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.x ], [ %..i, %bb.ab ], [ %.sroa.0.0.i136252, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit ] ; 2 uses
  %i.cn = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.co = add i64 %.sroa.0.0.i136.lcssa, %i.bv
  br label %bb.w

bb.ac:                                            ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ca
  store i64 %.sroa.014.1, ptr %i.cp, align 8
  br i1 %.not, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.w
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ca, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #75
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.cq = sub i64 %i.bd, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.cq, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0265
  br i1 %.not131, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ah, %bb.ac
  %i.cr = icmp slt i64 %i.bd, 1
  %11 = or i1 %i.bg, %i.cr
  %or.cond189 = or i1 %11, %i.bc
  br i1 %or.cond189, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread, label %.lr.ph263

bb.ag:                                            ; preds = %bb.ae
  %i.cs = sub i64 %i.h, %i.cq                     ; 3 uses
  %i.ct = icmp ult i64 %i.cs, %i.k
  br i1 %i.ct, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.cs
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !29
  %i.cw = add i64 %i.cv, %.sroa.014.1
  %.not132 = icmp ult i64 %i.cw, %.sroa.025.0
  br i1 %.not132, label %bb.af, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cs, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #75
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cx = sub i64 %i.aq, %.sroa.014.1
  %i.cy = sub i64 %i.ar, %.sroa.020.0
  br label %._crit_edge.sink.split

bb.ak:                                            ; preds = %bb.j
  %.not133 = icmp eq i64 %i.aw, %.sroa.048.0265
  %.pre319 = add i64 %i.ac, %i.aw                 ; 6 uses
  br i1 %.not133, label %._crit_edge311, label %bb.al

._crit_edge312.a:                                 ; preds = %bb.j, %bb.ao
  %.pre-phi318 = phi i64 [ %i.dc, %bb.ao ], [ %i.i, %bb.j ] ; 3 uses
  %i.cz = icmp ult i64 %.pre-phi318, %i.k
  br i1 %i.cz, label %bb.at, label %bb.au

._crit_edge311:                                   ; preds = %bb.ak, %bb.ao
  %i.da = icmp ult i64 %.pre319, %i.k
  br i1 %i.da, label %bb.aq, label %bb.ar

bb.al:                                            ; preds = %bb.ak
  %i.db = icmp ult i64 %.pre319, %i.k
  br i1 %i.db, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dc = add i64 %i.i, %i.aw                     ; 4 uses
  %i.dd = icmp ult i64 %i.dc, %i.k
  br i1 %i.dd, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.al
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #75
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre319
  %i.df = load i64, ptr %i.de, align 8, !noundef !29
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dc
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !29
  %i.di = icmp ult i64 %i.df, %i.dh
  br i1 %i.di, label %._crit_edge312.a, label %._crit_edge311

bb.ap:                                            ; preds = %bb.am
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.dc, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #75
  unreachable

bb.aq:                                            ; preds = %._crit_edge311
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre319
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !29
  %i.dl = add i64 %i.dk, 1
  br label %bb.as

bb.ar:                                            ; preds = %._crit_edge311
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @233) #75
  unreachable

bb.as:                                            ; preds = %bb.at, %bb.aq
  %.sroa.04.0 = phi i64 [ %i.dr, %bb.at ], [ %i.dl, %bb.aq ] ; 6 uses
  %i.dm = sub i64 %.sroa.04.0, %i.aw              ; 3 uses
  %i.dn = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.dn, i1 false
  %i.do = icmp ult i64 %i.dm, %i.d
  %i.dp = and i1 %i.c, %.sroa.051.0
  %or.cond186 = select i1 %i.dp, i1 %i.do, i1 false
  br i1 %or.cond186, label %bb.aw, label %bb.av

bb.at:                                            ; preds = %._crit_edge312.a
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi318
  %i.dr = load i64, ptr %i.dq, align 8, !noundef !29
  br label %bb.as

bb.au:                                            ; preds = %._crit_edge312.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi318, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #75
  unreachable

bb.av:                                            ; preds = %bb.as, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit
  %.sroa.04.1 = phi i64 [ %i.ee, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.04.0, %bb.as ] ; 2 uses
  %i.ds = add i64 %i.aw, %i.h                     ; 3 uses
  %i.dt = icmp ult i64 %i.ds, %i.k
  br i1 %i.dt, label %bb.bb, label %bb.bc

bb.aw:                                            ; preds = %bb.as
  %i.du = add i64 %.sroa.04.0, %2                 ; 2 uses
  %i.dv = add i64 %i.dm, %5                       ; 2 uses
  %i.dw = sub i64 %3, %i.du
  %i.dx = sub i64 %6, %i.dv
  %..i149 = tail call noundef i64 @llvm.umin.i64(i64 %i.dx, i64 %i.dw) ; 3 uses
  %.not268 = icmp eq i64 %..i149, 0
  br i1 %.not268, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aw
  %invariant.op = sub i64 %i.dv, %i.ae            ; 2 uses
  %invariant.op245 = sub i64 %i.du, %i.ak         ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph, %bb.ba
  %.sroa.0.0.i243 = phi i64 [ 0, %.lr.ph ], [ %i.ed, %bb.ba ] ; 4 uses
  %.reass = add nuw i64 %.sroa.0.0.i243, %invariant.op ; 2 uses
  %i.dy = icmp ult i64 %.reass, %i.ag
  br i1 %i.dy, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %invariant.op)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #75, !noalias !15965
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139: ; preds = %bb.ax
  %.reass246 = add nuw i64 %.sroa.0.0.i243, %invariant.op245 ; 2 uses
  %i.dz = icmp ult i64 %.reass246, %i.am
  br i1 %i.dz, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138, label %bb.az

bb.az:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139
  %umax308 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %invariant.op245)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax308, i64 noundef %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #75, !noalias !15968
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.reass
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.reass246
  %.val141 = load i32, ptr %i.ea, align 4, !noundef !29
  %.val142 = load i32, ptr %i.eb, align 4, !noundef !29
  %i.ec = icmp eq i32 %.val141, %.val142
  br i1 %i.ec, label %bb.ba, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit

bb.ba:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138
  %i.ed = add nuw i64 %.sroa.0.0.i243, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.ed, %..i149
  br i1 %exitcond.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit, label %bb.ax

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138, %bb.ba, %bb.aw
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.aw ], [ %..i149, %bb.ba ], [ %.sroa.0.0.i243, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138 ]
  %i.ee = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.av

bb.bb:                                            ; preds = %bb.av
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ds
  store i64 %.sroa.04.1, ptr %i.ef, align 8
  br i1 %.not, label %bb.bd, label %bb.be

bb.bc:                                            ; preds = %bb.av
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ds, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #75
  unreachable

bb.bd:                                            ; preds = %bb.be, %bb.bg, %bb.bb
  %i.eg = icmp slt i64 %i.aw, 1
  %12 = or i1 %i.az, %i.eg
  %or.cond187 = or i1 %12, %i.av
  br i1 %or.cond187, label %.lr.ph263.preheader, label %.lr.ph250

.lr.ph263.preheader:                              ; preds = %.lr.ph250, %bb.bd
  br label %.lr.ph263

bb.be:                                            ; preds = %bb.bb
  %i.eh = sub i64 %i.aw, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.eh, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0265
  br i1 %.not134.not, label %bb.bf, label %bb.bd

bb.bf:                                            ; preds = %bb.be
  %i.ei = sub i64 %i.q, %i.eh                     ; 3 uses
  %i.ej = icmp ult i64 %i.ei, %i.t
  br i1 %i.ej, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ei
  %i.el = load i64, ptr %i.ek, align 8, !noundef !29
  %i.em = add i64 %i.el, %.sroa.04.1
  %.not135 = icmp ult i64 %i.em, %.sroa.025.0
  br i1 %.not135, label %bb.bd, label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ei, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #75
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.en = add i64 %.sroa.04.0, %2
  %i.eo = add i64 %i.dm, %5
  br label %._crit_edge.sink.split

._crit_edge.sink.split:                           ; preds = %bb.bi, %bb.aj
  %.sink396.a = phi i64 [ %i.cx, %bb.aj ], [ %i.en, %bb.bi ]
  %.sink394 = phi i64 [ %i.cy, %bb.aj ], [ %i.eo, %bb.bi ]
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink396.a, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink394, ptr %i.eq, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread, %._crit_edge.sink.split
  %.sink = phi i64 [ 1, %._crit_edge.sink.split ], [ 0, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit148.thread ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtB6_4text12TextDiffSideeEB13_ECskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = load i64, ptr %i.g, align 8, !noundef !29 ; 4 uses
  %i.i = add i64 %i.h, 1                          ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !29 ; 16 uses
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !29, !noundef !29 ; 7 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.i
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !29 ; 4 uses
  %i.r = add i64 %i.q, 1                          ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !29 ; 16 uses
  %i.u = icmp ult i64 %i.r, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #75
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !29, !noundef !29 ; 7 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store i64 0, ptr %i.x, align 8
  %i.y = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.z = lshr i64 %i.y, 1
  %.sroa.047.0 = sub i64 %i.y, %i.z               ; 3 uses
  %i.aa = icmp ult i64 %i.k, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not128.not = icmp ugt i64 %i.k, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !36

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #75
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @221, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #75
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ab = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ab)
  %.not129.not = icmp samesign ugt i64 %i.t, %.sroa.047.0
  br i1 %.not129.not, label %.lr.ph307, label %bb.h, !prof !36

.lr.ph307:                                        ; preds = %bb.g
  %i.ac = add i64 %i.h, -1
  %i.ad = load i64, ptr %4, align 8, !range !274
  %i.ae = trunc nuw i64 %i.ad to i1               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ag = load i64, ptr %i.af, align 8            ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !29 ; 6 uses
  %i.aj = load i64, ptr %1, align 8, !range !274
  %.fr309 = freeze i64 %i.aj
  %i.ak = trunc i64 %.fr309 to i1                 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i64, ptr %i.al, align 8            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !29 ; 8 uses
  %i.ap = add i64 %i.q, -1
  %i.aq = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.ar = add i64 %.sroa.037.0, %5                ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @223, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #75
  unreachable

bb.i:                                             ; preds = %.lr.ph307, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit142.thread
  %.sroa.048.0306 = phi i64 [ 0, %.lr.ph307 ], [ %i.as, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit142.thread ] ; 8 uses
  %i.as = add nuw nsw i64 %.sroa.048.0306, 1
  %i.at = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef %10)
  br i1 %i.at, label %._crit_edge, label %.lr.ph269

.lr.ph269:                                        ; preds = %bb.i, %bb.bj
  %.sroa.7.0268 = phi i64 [ %i.ay, %bb.bj ], [ %.sroa.048.0306, %bb.i ]
  %not..sroa.11176.0267 = phi i64 [ 1, %bb.bj ], [ 0, %bb.i ]
  %i.au = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0268, i64 %not..sroa.11176.0267) ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 1       ; 2 uses
  %i.aw = extractvalue { i64, i1 } %i.au, 0       ; 10 uses
  %i.ax = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aw, i64 -1) ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.ax, 0
  %i.az = extractvalue { i64, i1 } %i.ax, 1
  %.not3.i.not = icmp slt i64 %i.aw, 0
  %or.cond203 = or i1 %i.av, %.not3.i.not
  br i1 %or.cond203, label %.lr.ph304.preheader, label %bb.j

bb.j:                                             ; preds = %.lr.ph269
  %i.ba = icmp eq i64 %i.aw, 0
  br i1 %i.ba, label %._crit_edge378.a, label %bb.an

.lr.ph304:                                        ; preds = %.lr.ph304.preheader, %bb.ai
  %not..sroa.14185.0303 = phi i64 [ 1, %bb.ai ], [ 0, %.lr.ph304.preheader ]
  %.sroa.7184.0302 = phi i64 [ %i.bf, %bb.ai ], [ %.sroa.048.0306, %.lr.ph304.preheader ]
  %i.bb = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7184.0302, i64 %not..sroa.14185.0303) ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.bb, 1       ; 2 uses
  %i.bd = extractvalue { i64, i1 } %i.bb, 0       ; 10 uses
  %i.be = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bd, i64 -1) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 0
  %i.bg = extractvalue { i64, i1 } %i.be, 1
  %.not3.i138.not = icmp slt i64 %i.bd, 0
  %or.cond205 = or i1 %i.bc, %.not3.i138.not
  br i1 %or.cond205, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit142.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph304
  %i.bh = icmp eq i64 %i.bd, 0
  br i1 %i.bh, label %._crit_edge380.a, label %bb.l

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit142.thread: ; preds = %bb.ai, %.lr.ph304
  %exitcond376.not = icmp eq i64 %.sroa.048.0306, %.sroa.047.0
  br i1 %exitcond376.not, label %._crit_edge, label %bb.i

bb.l:                                             ; preds = %bb.k
  %.not130 = icmp eq i64 %i.bd, %.sroa.048.0306
  %.pre381 = add i64 %i.ap, %i.bd                 ; 6 uses
  br i1 %.not130, label %._crit_edge379, label %bb.m

._crit_edge380.a:                                 ; preds = %bb.k, %bb.p
  %.pre-phi = phi i64 [ %i.bl, %bb.p ], [ %i.r, %bb.k ] ; 3 uses
  %i.bi = icmp ult i64 %.pre-phi, %i.t
  br i1 %i.bi, label %bb.u, label %bb.v

._crit_edge379:                                   ; preds = %bb.l, %bb.p
  %i.bj = icmp ult i64 %.pre381, %i.t
  br i1 %i.bj, label %bb.r, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.bk = icmp ult i64 %.pre381, %i.t
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = add i64 %i.r, %i.bd                     ; 4 uses
  %i.bm = icmp ult i64 %i.bl, %i.t
  br i1 %i.bm, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre381, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #75
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre381
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !29
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bl
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !29
  %i.br = icmp ult i64 %i.bo, %i.bq
  br i1 %i.br, label %._crit_edge380.a, label %._crit_edge379

bb.q:                                             ; preds = %bb.n
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bl, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #75
  unreachable

bb.r:                                             ; preds = %._crit_edge379
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre381
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !29
  %i.bu = add i64 %i.bt, 1
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge379
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre381, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #75
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.r
  %.sroa.014.0 = phi i64 [ %i.bz, %bb.u ], [ %i.bu, %bb.r ] ; 5 uses
  %i.bv = sub i64 %.sroa.014.0, %i.bd             ; 4 uses
  %i.bw = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.bx = icmp ult i64 %i.bv, %.sroa.037.0
  %or.cond = and i1 %i.bw, %i.bx
  br i1 %or.cond, label %bb.x, label %bb.w

bb.u:                                             ; preds = %._crit_edge380.a
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre-phi
  %i.bz = load i64, ptr %i.by, align 8, !noundef !29
  br label %bb.t

bb.v:                                             ; preds = %._crit_edge380.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #75
  unreachable

bb.w:                                             ; preds = %bb.t, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit
  %.sroa.020.0 = phi i64 [ %i.dw, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit ], [ %i.bv, %bb.t ]
  %.sroa.014.1 = phi i64 [ %i.dv, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.014.0, %bb.t ] ; 3 uses
  %i.ca = add i64 %i.bd, %i.q                     ; 3 uses
  %i.cb = icmp ult i64 %i.ca, %i.t
  br i1 %i.cb, label %bb.af, label %bb.ag

bb.x:                                             ; preds = %bb.t
  %i.cc = sub i64 %i.aq, %.sroa.014.0             ; 4 uses
  %i.cd = sub i64 %i.ar, %i.bv                    ; 4 uses
  %i.ce = sub i64 %i.cc, %2
  %i.cf = sub i64 %i.cd, %5
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.cf, i64 %i.ce) ; 7 uses
  %.not311 = icmp eq i64 %..i, 0
  br i1 %.not311, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph272

.lr.ph272:                                        ; preds = %bb.x
  br i1 %i.ae, label %.lr.ph272.split.us, label %.lr.ph272.split

.lr.ph272.split.us:                               ; preds = %.lr.ph272, %bb.ac
  %.sroa.0.0.i136271.us = phi i64 [ %i.cv, %bb.ac ], [ 0, %.lr.ph272 ] ; 4 uses
  %i.cg = xor i64 %.sroa.0.0.i136271.us, -1       ; 2 uses
  %i.ch = add i64 %i.cd, %i.cg                    ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.ag
  br i1 %i.ci, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us, label %.split277.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us: ; preds = %.lr.ph272.split.us
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.ch ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  %i.cl = getelementptr i8, ptr %i.cj, i64 16
  %.sroa.0.1.i.i.us = load ptr, ptr %i.ck, align 8, !noalias !15971, !nonnull !29, !noundef !29
  %.sroa.5.1.i.i.us = load i64, ptr %i.cl, align 8, !noalias !15971, !noundef !29 ; 2 uses
  %i.cm = add i64 %i.cc, %i.cg                    ; 3 uses
  %i.cn = icmp ult i64 %i.cm, %i.am               ; 2 uses
  br i1 %i.ak, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us
  br i1 %i.cn, label %bb.z, label %.split279.us

bb.z:                                             ; preds = %bb.y
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.cm ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147.us

bb.aa:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us
  br i1 %i.cn, label %bb.ab, label %.split279.us

bb.ab:                                            ; preds = %bb.aa
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.cm ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %i.cs = getelementptr i8, ptr %i.cq, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147.us: ; preds = %bb.ab, %bb.z
  %.sroa.5.1.i.in.i143.us = phi ptr [ %i.cs, %bb.ab ], [ %i.cp, %bb.z ]
  %.sroa.0.1.i.in.i144.us = phi ptr [ %i.cr, %bb.ab ], [ %i.co, %bb.z ]
  %.sroa.5.1.i.i146.us = load i64, ptr %.sroa.5.1.i.in.i143.us, align 8, !noalias !15977, !noundef !29
  %i.ct = icmp eq i64 %.sroa.5.1.i.i.us, %.sroa.5.1.i.i146.us
  br i1 %i.ct, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147.us
  %.sroa.0.1.i.i145.us = load ptr, ptr %.sroa.0.1.i.in.i144.us, align 8, !noalias !15977, !nonnull !29, !noundef !29
  %bcmp.i.us = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.us, ptr nonnull readonly %.sroa.0.1.i.i145.us, i64 %.sroa.5.1.i.i.us), !alias.scope !15983
  %i.cu = icmp eq i32 %bcmp.i.us, 0
  br i1 %i.cu, label %bb.ac, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit

bb.ac:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us
  %i.cv = add nuw i64 %.sroa.0.0.i136271.us, 1    ; 2 uses
  %exitcond375.not = icmp eq i64 %i.cv, %..i
  br i1 %exitcond375.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph272.split.us

.lr.ph272.split:                                  ; preds = %.lr.ph272
  br i1 %i.ak, label %.lr.ph272.split.split.us, label %.lr.ph272.split.split

.lr.ph272.split.split.us:                         ; preds = %.lr.ph272.split, %bb.ad
  %.sroa.0.0.i136271.us283 = phi i64 [ %i.di, %bb.ad ], [ 0, %.lr.ph272.split ] ; 4 uses
  %i.cw = xor i64 %.sroa.0.0.i136271.us283, -1    ; 2 uses
  %i.cx = add i64 %i.cd, %i.cw                    ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.ag
  br i1 %i.cy, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us284, label %.split277.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us284: ; preds = %.lr.ph272.split.split.us
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.cx ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sroa.0.1.i.i.us285 = load ptr, ptr %i.cz, align 8, !noalias !15971, !nonnull !29, !noundef !29
  %.sroa.5.1.i.i.us286 = load i64, ptr %i.da, align 8, !noalias !15971, !noundef !29 ; 2 uses
  %i.db = add i64 %i.cc, %i.cw                    ; 2 uses
  %i.dc = icmp ult i64 %i.db, %i.am
  br i1 %i.dc, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147.us287, label %.split279.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147.us287: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us284
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.db ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  %.sroa.5.1.i.i146.us290 = load i64, ptr %i.de, align 8, !noalias !15977, !noundef !29
  %i.df = icmp eq i64 %.sroa.5.1.i.i.us286, %.sroa.5.1.i.i146.us290
  br i1 %i.df, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us291, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us291: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147.us287
  %i.dg = getelementptr i8, ptr %i.dd, i64 8
  %.sroa.0.1.i.i145.us292 = load ptr, ptr %i.dg, align 8, !noalias !15977, !nonnull !29, !noundef !29
  %bcmp.i.us293 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.us285, ptr nonnull readonly %.sroa.0.1.i.i145.us292, i64 %.sroa.5.1.i.i.us286), !alias.scope !15983
  %i.dh = icmp eq i32 %bcmp.i.us293, 0
  br i1 %i.dh, label %bb.ad, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit

bb.ad:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us291
  %i.di = add nuw i64 %.sroa.0.0.i136271.us283, 1 ; 2 uses
  %exitcond374.not = icmp eq i64 %i.di, %..i
  br i1 %exitcond374.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph272.split.split.us

.lr.ph272.split.split:                            ; preds = %.lr.ph272.split, %bb.ae
  %.sroa.0.0.i136271 = phi i64 [ %i.du, %bb.ae ], [ 0, %.lr.ph272.split ] ; 4 uses
  %i.dj = xor i64 %.sroa.0.0.i136271, -1          ; 2 uses
  %i.dk = add i64 %i.cd, %i.dj                    ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.ag
  br i1 %i.dl, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit, label %.split277.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit: ; preds = %.lr.ph272.split.split
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.dk ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.0.1.i.i = load ptr, ptr %i.dm, align 8, !noalias !15971, !nonnull !29, !noundef !29
  %.sroa.5.1.i.i = load i64, ptr %i.dn, align 8, !noalias !15971, !noundef !29 ; 2 uses
  %i.do = add i64 %i.cc, %i.dj                    ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.am
  br i1 %i.dp, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147, label %.split279.us

.split277.us:                                     ; preds = %.lr.ph272.split.split, %.lr.ph272.split.split.us, %.lr.ph272.split.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1648, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #75, !noalias !15987
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.do ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.sroa.5.1.i.i146 = load i64, ptr %i.dr, align 8, !noalias !15977, !noundef !29
  %i.ds = icmp eq i64 %.sroa.5.1.i.i, %.sroa.5.1.i.i146
  br i1 %i.ds, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit

.split279.us:                                     ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.us284, %bb.y, %bb.aa
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1648, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #75, !noalias !15988
  unreachable

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147
  %.sroa.0.1.i.i145 = load ptr, ptr %i.dq, align 8, !noalias !15977, !nonnull !29, !noundef !29
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i, ptr nonnull readonly %.sroa.0.1.i.i145, i64 %.sroa.5.1.i.i), !alias.scope !15983
  %i.dt = icmp eq i32 %bcmp.i, 0
  br i1 %i.dt, label %bb.ae, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit

bb.ae:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit
  %i.du = add nuw i64 %.sroa.0.0.i136271, 1       ; 2 uses
  %exitcond373.not = icmp eq i64 %i.du, %..i
  br i1 %exitcond373.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph272.split.split

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %bb.ae, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us291, %bb.ad, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147.us287, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us, %bb.ac, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147.us, %bb.x
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.x ], [ %.sroa.0.0.i136271.us, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147.us ], [ %.sroa.0.0.i136271.us283, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147.us287 ], [ %..i, %bb.ac ], [ %.sroa.0.0.i136271.us, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us ], [ %.sroa.0.0.i136271.us283, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us291 ], [ %..i, %bb.ad ], [ %.sroa.0.0.i136271, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit147 ], [ %..i, %bb.ae ], [ %.sroa.0.0.i136271, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ] ; 2 uses
  %i.dv = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.dw = add i64 %.sroa.0.0.i136.lcssa, %i.bv
  br label %bb.w

bb.af:                                            ; preds = %bb.w
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ca
  store i64 %.sroa.014.1, ptr %i.dx, align 8
  br i1 %.not, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.w
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ca, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #75
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.dy = sub i64 %i.bd, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.dy, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0306
  br i1 %.not131, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %bb.ak, %bb.af
  %i.dz = icmp slt i64 %i.bd, 1
  %11 = or i1 %i.bg, %i.dz
  %or.cond204 = or i1 %11, %i.bc
  br i1 %or.cond204, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit142.thread, label %.lr.ph304

bb.aj:                                            ; preds = %bb.ah
  %i.ea = sub i64 %i.h, %i.dy                     ; 3 uses
  %i.eb = icmp ult i64 %i.ea, %i.k
  br i1 %i.eb, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ea
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !29
  %i.ee = add i64 %i.ed, %.sroa.014.1
  %.not132 = icmp ult i64 %i.ee, %.sroa.025.0
  br i1 %.not132, label %bb.ai, label %bb.am

bb.al:                                            ; preds = %bb.aj
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ea, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #75
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.ef = sub i64 %i.aq, %.sroa.014.1
  %i.eg = sub i64 %i.ar, %.sroa.020.0
  br label %._crit_edge.sink.split

bb.an:                                            ; preds = %bb.j
  %.not133 = icmp eq i64 %i.aw, %.sroa.048.0306
  %.pre385 = add i64 %i.ac, %i.aw                 ; 6 uses
  br i1 %.not133, label %._crit_edge377, label %bb.ao

._crit_edge378.a:                                 ; preds = %bb.j, %bb.ar
  %.pre-phi384 = phi i64 [ %i.ek, %bb.ar ], [ %i.i, %bb.j ] ; 3 uses
  %i.eh = icmp ult i64 %.pre-phi384, %i.k
  br i1 %i.eh, label %bb.aw, label %bb.ax

._crit_edge377:                                   ; preds = %bb.an, %bb.ar
  %i.ei = icmp ult i64 %.pre385, %i.k
  br i1 %i.ei, label %bb.at, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.ej = icmp ult i64 %.pre385, %i.k
  br i1 %i.ej, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ek = add i64 %i.i, %i.aw                     ; 4 uses
  %i.el = icmp ult i64 %i.ek, %i.k
  br i1 %i.el, label %bb.ar, label %bb.as

bb.aq:                                            ; preds = %bb.ao
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre385, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #75
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre385
  %i.en = load i64, ptr %i.em, align 8, !noundef !29
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ek
  %i.ep = load i64, ptr %i.eo, align 8, !noundef !29
  %i.eq = icmp ult i64 %i.en, %i.ep
  br i1 %i.eq, label %._crit_edge378.a, label %._crit_edge377

bb.as:                                            ; preds = %bb.ap
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ek, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #75
  unreachable

bb.at:                                            ; preds = %._crit_edge377
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre385
  %i.es = load i64, ptr %i.er, align 8, !noundef !29
  %i.et = add i64 %i.es, 1
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge377
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre385, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @233) #75
  unreachable

bb.av:                                            ; preds = %bb.aw, %bb.at
  %.sroa.04.0 = phi i64 [ %i.ez, %bb.aw ], [ %i.et, %bb.at ] ; 6 uses
  %i.eu = sub i64 %.sroa.04.0, %i.aw              ; 3 uses
  %i.ev = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.ev, i1 false
  %i.ew = icmp ult i64 %i.eu, %i.d
  %i.ex = and i1 %i.c, %.sroa.051.0
  %or.cond201 = select i1 %i.ex, i1 %i.ew, i1 false
  br i1 %or.cond201, label %bb.az, label %bb.ay

bb.aw:                                            ; preds = %._crit_edge378.a
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.pre-phi384
  %i.ez = load i64, ptr %i.ey, align 8, !noundef !29
  br label %bb.av

bb.ax:                                            ; preds = %._crit_edge378.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi384, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #75
  unreachable

bb.ay:                                            ; preds = %bb.av, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit
  %.sroa.04.1 = phi i64 [ %i.gn, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.04.0, %bb.av ] ; 2 uses
  %i.fa = add i64 %i.aw, %i.h                     ; 3 uses
  %i.fb = icmp ult i64 %i.fa, %i.k
  br i1 %i.fb, label %bb.bh, label %bb.bi

bb.az:                                            ; preds = %bb.av
  %i.fc = add i64 %.sroa.04.0, %2                 ; 5 uses
  %i.fd = add i64 %i.eu, %5                       ; 4 uses
  %i.fe = sub i64 %3, %i.fc
  %i.ff = sub i64 %6, %i.fd
  %..i149 = tail call noundef i64 @llvm.umin.i64(i64 %i.ff, i64 %i.fe) ; 7 uses
  %.not310 = icmp eq i64 %..i149, 0
  br i1 %.not310, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.az
  br i1 %i.ae, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.be
  %.sroa.0.0.i242.us = phi i64 [ %i.fu, %bb.be ], [ 0, %.lr.ph ] ; 5 uses
  %i.fg = add nuw i64 %.sroa.0.0.i242.us, %i.fd   ; 2 uses
  %i.fh = icmp ult i64 %i.fg, %i.ag
  br i1 %i.fh, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit154.us, label %.split.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit154.us: ; preds = %.lr.ph.split.us
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.fg ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 8
  %i.fk = getelementptr i8, ptr %i.fi, i64 16
  %.sroa.0.1.i.i152.us = load ptr, ptr %i.fj, align 8, !noalias !15989, !nonnull !29, !noundef !29
  %.sroa.5.1.i.i153.us = load i64, ptr %i.fk, align 8, !noalias !15989, !noundef !29 ; 2 uses
  %i.fl = add i64 %.sroa.0.0.i242.us, %i.fc       ; 3 uses
  %i.fm = icmp ult i64 %i.fl, %i.am               ; 2 uses
  br i1 %i.ak, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit154.us
  br i1 %i.fm, label %bb.bb, label %.split246.us

bb.bb:                                            ; preds = %bb.ba
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.fl ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159.us

bb.bc:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit154.us
  br i1 %i.fm, label %bb.bd, label %.split246.us

bb.bd:                                            ; preds = %bb.bc
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.fl ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 8
  %i.fr = getelementptr i8, ptr %i.fp, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159.us: ; preds = %bb.bd, %bb.bb
  %.sroa.5.1.i.in.i155.us = phi ptr [ %i.fr, %bb.bd ], [ %i.fo, %bb.bb ]
  %.sroa.0.1.i.in.i156.us = phi ptr [ %i.fq, %bb.bd ], [ %i.fn, %bb.bb ]
  %.sroa.5.1.i.i158.us = load i64, ptr %.sroa.5.1.i.in.i155.us, align 8, !noalias !15995, !noundef !29
  %i.fs = icmp eq i64 %.sroa.5.1.i.i153.us, %.sroa.5.1.i.i158.us
  br i1 %i.fs, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit162.us, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit162.us: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159.us
  %.sroa.0.1.i.i157.us = load ptr, ptr %.sroa.0.1.i.in.i156.us, align 8, !noalias !15995, !nonnull !29, !noundef !29
  %bcmp.i161.us = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i152.us, ptr nonnull readonly %.sroa.0.1.i.i157.us, i64 %.sroa.5.1.i.i153.us), !alias.scope !16001
  %i.ft = icmp eq i32 %bcmp.i161.us, 0
  br i1 %i.ft, label %bb.be, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit

bb.be:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit162.us
  %i.fu = add nuw i64 %.sroa.0.0.i242.us, 1       ; 2 uses
  %exitcond372.not = icmp eq i64 %i.fu, %..i149
  br i1 %exitcond372.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.fv = tail call i64 @llvm.usub.sat.i64(i64 %i.am, i64 %i.fc) ; 2 uses
  br i1 %i.ak, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %invariant.gep = getelementptr [16 x i8], ptr %i.ao, i64 %i.fc
  br label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %invariant.gep491 = getelementptr [24 x i8], ptr %i.ao, i64 %i.fc
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %bb.bf
  %.sroa.0.0.i242.us249 = phi i64 [ %i.ge, %bb.bf ], [ 0, %.lr.ph.split.split.us.preheader ] ; 6 uses
  %i.fw = add nuw i64 %.sroa.0.0.i242.us249, %i.fd ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.ag
  br i1 %i.fx, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit154.us250, label %.split.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit154.us250: ; preds = %.lr.ph.split.split.us
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.fw ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %.sroa.0.1.i.i152.us251 = load ptr, ptr %i.fy, align 8, !noalias !15989, !nonnull !29, !noundef !29
  %.sroa.5.1.i.i153.us252 = load i64, ptr %i.fz, align 8, !noalias !15989, !noundef !29 ; 2 uses
  %exitcond370.not = icmp eq i64 %.sroa.0.0.i242.us249, %i.fv
  br i1 %exitcond370.not, label %.split246.us, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159.us253

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159.us253: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit154.us250
  %gep492 = getelementptr [24 x i8], ptr %invariant.gep491, i64 %.sroa.0.0.i242.us249 ; 2 uses
  %i.ga = getelementptr i8, ptr %gep492, i64 16
  %.sroa.5.1.i.i158.us256 = load i64, ptr %i.ga, align 8, !noalias !15995, !noundef !29
  %i.gb = icmp eq i64 %.sroa.5.1.i.i153.us252, %.sroa.5.1.i.i158.us256
  br i1 %i.gb, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit162.us257, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit162.us257: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159.us253
  %i.gc = getelementptr i8, ptr %gep492, i64 8
  %.sroa.0.1.i.i157.us258 = load ptr, ptr %i.gc, align 8, !noalias !15995, !nonnull !29, !noundef !29
  %bcmp.i161.us259 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i152.us251, ptr nonnull readonly %.sroa.0.1.i.i157.us258, i64 %.sroa.5.1.i.i153.us252), !alias.scope !16001
  %i.gd = icmp eq i32 %bcmp.i161.us259, 0
  br i1 %i.gd, label %bb.bf, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit

bb.bf:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit162.us257
  %i.ge = add nuw i64 %.sroa.0.0.i242.us249, 1    ; 2 uses
  %exitcond371.not = icmp eq i64 %i.ge, %..i149
  br i1 %exitcond371.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph.split.split.us

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.bg
  %.sroa.0.0.i242 = phi i64 [ %i.gm, %bb.bg ], [ 0, %.lr.ph.split.split.preheader ] ; 6 uses
  %i.gf = add nuw i64 %.sroa.0.0.i242, %i.fd      ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.ag
  br i1 %i.gg, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit154, label %.split.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit154: ; preds = %.lr.ph.split.split
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.gf ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %.sroa.0.1.i.i152 = load ptr, ptr %i.gh, align 8, !noalias !15989, !nonnull !29, !noundef !29
  %.sroa.5.1.i.i153 = load i64, ptr %i.gi, align 8, !noalias !15989, !noundef !29 ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.0.0.i242, %i.fv
  br i1 %exitcond.not, label %.split246.us, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159

.split.us:                                        ; preds = %.lr.ph.split.split, %.lr.ph.split.split.us, %.lr.ph.split.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1648, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #75, !noalias !16005
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit154
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %.sroa.0.0.i242 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %.sroa.5.1.i.i158 = load i64, ptr %i.gj, align 8, !noalias !15995, !noundef !29
  %i.gk = icmp eq i64 %.sroa.5.1.i.i153, %.sroa.5.1.i.i158
  br i1 %i.gk, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit162, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit

.split246.us:                                     ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit154, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit154.us250, %bb.ba, %bb.bc
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1648, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #75, !noalias !16006
  unreachable

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit162: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159
  %.sroa.0.1.i.i157 = load ptr, ptr %gep, align 8, !noalias !15995, !nonnull !29, !noundef !29
  %bcmp.i161 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i152, ptr nonnull readonly %.sroa.0.1.i.i157, i64 %.sroa.5.1.i.i153), !alias.scope !16001
  %i.gl = icmp eq i32 %bcmp.i161, 0
  br i1 %i.gl, label %bb.bg, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit

bb.bg:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit162
  %i.gm = add nuw i64 %.sroa.0.0.i242, 1          ; 2 uses
  %exitcond368.not = icmp eq i64 %i.gm, %..i149
  br i1 %exitcond368.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph.split.split

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit162, %bb.bg, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit162.us257, %bb.bf, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159.us253, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit162.us, %bb.be, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159.us, %bb.az
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.az ], [ %.sroa.0.0.i242.us, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159.us ], [ %.sroa.0.0.i242.us249, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159.us253 ], [ %..i149, %bb.be ], [ %.sroa.0.0.i242.us, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit162.us ], [ %.sroa.0.0.i242.us249, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit162.us257 ], [ %..i149, %bb.bf ], [ %.sroa.0.0.i242, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159 ], [ %..i149, %bb.bg ], [ %.sroa.0.0.i242, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit162 ]
  %i.gn = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.ay

bb.bh:                                            ; preds = %bb.ay
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.fa
  store i64 %.sroa.04.1, ptr %i.go, align 8
  br i1 %.not, label %bb.bj, label %bb.bk

bb.bi:                                            ; preds = %bb.ay
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.fa, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #75
  unreachable

bb.bj:                                            ; preds = %bb.bk, %bb.bm, %bb.bh
  %i.gp = icmp slt i64 %i.aw, 1
  %12 = or i1 %i.az, %i.gp
  %or.cond202 = or i1 %12, %i.av
  br i1 %or.cond202, label %.lr.ph304.preheader, label %.lr.ph269

.lr.ph304.preheader:                              ; preds = %.lr.ph269, %bb.bj
  br label %.lr.ph304

bb.bk:                                            ; preds = %bb.bh
  %i.gq = sub i64 %i.aw, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.gq, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0306
  br i1 %.not134.not, label %bb.bl, label %bb.bj

bb.bl:                                            ; preds = %bb.bk
  %i.gr = sub i64 %i.q, %i.gq                     ; 3 uses
  %i.gs = icmp ult i64 %i.gr, %i.t
  br i1 %i.gs, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.gr
  %i.gu = load i64, ptr %i.gt, align 8, !noundef !29
  %i.gv = add i64 %i.gu, %.sroa.04.1
  %.not135 = icmp ult i64 %i.gv, %.sroa.025.0
  br i1 %.not135, label %bb.bj, label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.gr, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #75
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.gw = add i64 %.sroa.04.0, %2
  %i.gx = add i64 %i.eu, %5
  br label %._crit_edge.sink.split

._crit_edge.sink.split:                           ; preds = %bb.bo, %bb.am
  %.sink495.a = phi i64 [ %i.ef, %bb.am ], [ %i.gw, %bb.bo ]
  %.sink493 = phi i64 [ %i.eg, %bb.am ], [ %i.gx, %bb.bo ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink495.a, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink493, ptr %i.gz, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit142.thread, %._crit_edge.sink.split
  %.sink = phi i64 [ 1, %._crit_edge.sink.split ], [ 0, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit142.thread ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupmEB14_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2)
  %.sroa.05.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5)
  %i.c = add i64 %.sroa.05.0, %.sroa.0.0          ; 2 uses
  %i.d = lshr i64 %i.c, 1
  %.sroa.011.0 = sub i64 %i.c, %i.d
  %i.e = add nuw i64 %.sroa.011.0, 1              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms5myersNtB2_1V3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms5myersNtB2_1V3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %i.e)
          to label %bb.d unwind label %bb.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24: ; preds = %bb.f, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.j, %bb.e ], [ %i.j, %bb.f ]
  %.val22 = load i64, ptr %i.b, align 8, !alias.scope !16007 ; 2 uses
  %i.f = icmp eq i64 %.val22, 0
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val23 = load ptr, ptr %i.g, align 8, !nonnull !29, !noundef !29
  %i.h = shl nuw i64 %.val22, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !16010
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24

bb.d:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef align 8 dereferenceable(32) %i.a, ptr noalias nofree noundef align 8 dereferenceable(32) %i.b, i64 %7, i32 noundef %8)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val20 = load i64, ptr %i.a, align 8, !alias.scope !16007 ; 2 uses
  %i.k = icmp eq i64 %.val20, 0
  br i1 %i.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val21 = load ptr, ptr %i.l, align 8, !nonnull !29, !noundef !29
  %i.m = shl nuw i64 %.val20, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !16013
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24

bb.g:                                             ; preds = %bb.d
  %.val18 = load i64, ptr %i.a, align 8, !alias.scope !16007 ; 2 uses
  %i.n = icmp eq i64 %.val18, 0
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit25, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val19 = load ptr, ptr %i.o, align 8, !nonnull !29, !noundef !29
  %i.p = shl nuw i64 %.val18, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !16016
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit25

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit25: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load i64, ptr %i.b, align 8, !alias.scope !16007 ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit26, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit25
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val17 = load ptr, ptr %i.r, align 8, !nonnull !29, !noundef !29
  %i.s = shl nuw i64 %.val, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !16019
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit26

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit26: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit25, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit: ; preds = %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupmEB14_INtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2)
  %.sroa.05.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5)
  %i.c = add i64 %.sroa.05.0, %.sroa.0.0          ; 2 uses
  %i.d = lshr i64 %i.c, 1
  %.sroa.011.0 = sub i64 %i.c, %i.d
  %i.e = add nuw i64 %.sroa.011.0, 1              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms5myersNtB2_1V3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms5myersNtB2_1V3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %i.e)
          to label %bb.d unwind label %bb.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24: ; preds = %bb.f, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.j, %bb.e ], [ %i.j, %bb.f ]
  %.val22 = load i64, ptr %i.b, align 8, !alias.scope !16007 ; 2 uses
  %i.f = icmp eq i64 %.val22, 0
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val23 = load ptr, ptr %i.g, align 8, !nonnull !29, !noundef !29
  %i.h = shl nuw i64 %.val22, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !16022
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24

bb.d:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef align 8 dereferenceable(32) %i.a, ptr noalias nofree noundef align 8 dereferenceable(32) %i.b, i64 %7, i32 noundef %8)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val20 = load i64, ptr %i.a, align 8, !alias.scope !16007 ; 2 uses
  %i.k = icmp eq i64 %.val20, 0
  br i1 %i.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val21 = load ptr, ptr %i.l, align 8, !nonnull !29, !noundef !29
  %i.m = shl nuw i64 %.val20, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !16025
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24

bb.g:                                             ; preds = %bb.d
  invoke fastcc void @_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(160) %0)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %.val18 = load i64, ptr %i.a, align 8, !alias.scope !16007 ; 2 uses
  %i.n = icmp eq i64 %.val18, 0
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit25, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val19 = load ptr, ptr %i.o, align 8, !nonnull !29, !noundef !29
  %i.p = shl nuw i64 %.val18, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !16028
end_hunk_0
begin_hunk_1_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1s_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2i_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just:bb.a
  %i.acw = load ptr, ptr %i.acv, align 8, !alias.scope !19239, !noalias !19244, !nonnull !29, !align !174, !noundef !29 ; 3 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acv, i64 8
  %i.acy = load i64, ptr %i.acx, align 8, !alias.scope !19239, !noalias !19244, !noundef !29
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acw, i64 24
  %i.ada = load i64, ptr %i.acz, align 8, !alias.scope !19245, !noalias !19248, !noundef !29
  %i.adb = sub i64 %i.acy, %i.ada                 ; 3 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acw, i64 16
  %i.add = load i64, ptr %i.adc, align 8, !alias.scope !19245, !noalias !19248, !noundef !29 ; 2 uses
  %i.ade = icmp ult i64 %i.adb, %i.add
  br i1 %i.ade, label %.noexc.us.i287, label %.invoke1717.i194

.noexc.us.i287:                                   ; preds = %bb.gr
  %i.adf = load ptr, ptr %i.acn, align 8, !alias.scope !19242, !noalias !19250, !nonnull !29, !align !174, !noundef !29 ; 3 uses
  %i.adg = load i64, ptr %i.aco, align 8, !alias.scope !19242, !noalias !19250, !noundef !29
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adf, i64 24
  %i.adi = load i64, ptr %i.adh, align 8, !alias.scope !19251, !noalias !19254, !noundef !29
  %i.adj = sub i64 %i.adg, %i.adi                 ; 3 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adf, i64 16
  %i.adl = load i64, ptr %i.adk, align 8, !alias.scope !19251, !noalias !19254, !noundef !29 ; 2 uses
  %i.adm = icmp ult i64 %i.adj, %i.adl
  br i1 %i.adm, label %bb.gs, label %.invoke1717.i194

bb.gs:                                            ; preds = %.noexc.us.i287
  %i.adn = getelementptr inbounds nuw i8, ptr %i.acw, i64 8
  %i.ado = load ptr, ptr %i.adn, align 8, !alias.scope !19245, !noalias !19248, !nonnull !29, !noundef !29
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %i.adb
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adf, i64 8
  %i.adr = load ptr, ptr %i.adq, align 8, !alias.scope !19251, !noalias !19254, !nonnull !29, !noundef !29
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.adr, i64 %i.adj
  %.val225.us.i288 = load i32, ptr %i.adp, align 4, !noundef !29
  %.val226.us.i289 = load i32, ptr %i.ads, align 4, !noundef !29
  %i.adt = icmp eq i32 %.val225.us.i288, %.val226.us.i289
  br i1 %i.adt, label %bb.gw, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.adu = add i64 %i.acp, %i.ack                 ; 3 uses
  %i.adv = icmp ult i64 %i.adu, %i.sz
  br i1 %i.adv, label %bb.gu, label %.invoke1715.i

bb.gu:                                            ; preds = %bb.gt
  %i.adw = add i64 %.sroa.0105.0639.us.i286, %i.acj ; 3 uses
  %i.adx = icmp ult i64 %i.adw, %i.sz
  br i1 %i.adx, label %bb.gv, label %.split659.us.invoke.i203

bb.gv:                                            ; preds = %bb.gu
  %i.ady = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.adu
  %i.adz = load i8, ptr %i.ady, align 1, !noundef !29
  %i.aea = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.adw
  %i.aeb = load i8, ptr %i.aea, align 1, !noundef !29
  %..i.us.i290 = tail call noundef i8 @llvm.umax.i8(i8 %i.aeb, i8 %i.adz)
  br label %bb.gy

bb.gw:                                            ; preds = %bb.gs
  %i.aec = add i64 %.sroa.0105.0639.us.i286, %i.ack ; 3 uses
  %i.aed = icmp ult i64 %i.aec, %i.sz
  br i1 %i.aed, label %bb.gx, label %.invoke1715.i

bb.gx:                                            ; preds = %bb.gw
  %i.aee = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.aec
  %i.aef = load i8, ptr %i.aee, align 1, !noundef !29
  %i.aeg = add i8 %i.aef, 1
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gv
  %.sroa.04.0.us.i291 = phi i8 [ %i.aeg, %bb.gx ], [ %..i.us.i290, %bb.gv ]
  %i.aeh = add i64 %i.acp, %i.acj                 ; 3 uses
  %i.aei = icmp ult i64 %i.aeh, %i.sz
  br i1 %i.aei, label %bb.gz, label %.split659.us.invoke.i203

bb.gz:                                            ; preds = %bb.gy
  %i.aej = getelementptr inbounds nuw i8, ptr %i.te, i64 %i.aeh
  store i8 %.sroa.04.0.us.i291, ptr %i.aej, align 1
  %.not168.us.i292 = icmp eq i64 %i.acp, 0
  br i1 %.not168.us.i292, label %..loopexit47_crit_edge.split.us.i293, label %.lr.ph.split.us.i285

.loopexit.split-lp.loopexit.split.us.i295:        ; preds = %bb.go
  %lpad.loopexit48.us.i296 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i159

..loopexit47_crit_edge.split.us.i293:             ; preds = %bb.gz
  %.not.i294 = icmp eq i64 %i.tf, 0
  br i1 %.not.i294, label %.lr.ph698.i185, label %.lr.ph673.split.i276

.lr.ph.split.i282:                                ; preds = %.lr.ph.i280
  %i.aek = add i64 %.sroa.088.0.i148, -1          ; 2 uses
  %i.ael = and i64 %i.aek, 1023
  %i.aem = icmp eq i64 %i.ael, 0
  br i1 %i.aem, label %bb.ha, label %bb.hc

bb.ha:                                            ; preds = %.lr.ph.split.i282
  %i.aen = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.hb unwind label %.loopexit.split-lp.loopexit.split.i283

bb.hb:                                            ; preds = %bb.ha
  br i1 %i.aen, label %.loopexit43.i275, label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %.lr.ph.split.i282
  %i.aeo = add i64 %i.aek, %.sroa.0378.0          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val62) ]
  %i.aep = icmp ult i64 %i.aeo, %.val63
  br i1 %i.aep, label %bb.hd, label %.invoke1717.i194

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  br label %.invoke1717.i194

.split659.us.invoke.i203:                         ; preds = %bb.gy, %bb.gu, %bb.ez, %bb.ex, %bb.ga, %bb.fy, %bb.fj, %bb.fl, %bb.gk
  %i.aeq = phi i64 [ %i.vg, %bb.ex ], [ %i.zy, %bb.ga ], [ %i.abz, %bb.gk ], [ %i.xn, %bb.fj ], [ %i.sz, %bb.fl ], [ %i.zq, %bb.fy ], [ %i.vt, %bb.ez ], [ %i.adw, %bb.gu ], [ %i.aeh, %bb.gy ]
  %i.aer = phi ptr [ @270, %bb.ex ], [ @282, %bb.ga ], [ @286, %bb.gk ], [ @275, %bb.fj ], [ @277, %bb.fl ], [ @280, %bb.fy ], [ @272, %bb.ez ], [ @290, %bb.gu ], [ @292, %bb.gy ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aeq, i64 noundef %i.sz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aer) #71
          to label %.split659.us.cont.i206 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i204

.split659.us.cont.i206:                           ; preds = %.split659.us.invoke.i203
  unreachable

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread452: ; preds = %bb.fs, %bb.fd, %bb.gf, %.loopexit43.i275
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.te, i64 noundef %i.sz, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !29
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i182, %bb.en, %bb.eo
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.te, i64 noundef %i.sz, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !29
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread449

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.bb, %bb.bc, %.loopexit43.i275, %bb.ee, %.loopexit43.i, %bb.bf, %bb.bd, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit250.sink.split.i.thread, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread452
  %.val68 = load ptr, ptr %i.ce, align 8          ; 4 uses
  %.val69 = load i64, ptr %i.cf, align 8          ; 4 uses
  %.val70 = load ptr, ptr %i.cc, align 8          ; 4 uses
  %.val71 = load i64, ptr %i.cd, align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19259)
  %.sroa.025.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.ca, i64 %.sroa.0.0) ; 6 uses
  %.sroa.037.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.cb, i64 %.sroa.0378.0) ; 4 uses
  %i.aes = sub i64 %.sroa.025.0.i, %.sroa.037.0.i ; 3 uses
  %i.aet = and i64 %i.aes, 1
  %.not.i298 = icmp eq i64 %i.aet, 0              ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aev = load i64, ptr %i.aeu, align 8, !alias.scope !19256, !noalias !19261, !noundef !29 ; 4 uses
  %i.aew = add i64 %i.aev, 1                      ; 5 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aey = load i64, ptr %i.aex, align 8, !alias.scope !19256, !noalias !19261, !noundef !29 ; 16 uses
  %i.aez = icmp ult i64 %i.aew, %i.aey
  br i1 %i.aez, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread
  %i.afa = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.afb = load ptr, ptr %i.afa, align 8, !alias.scope !19256, !noalias !19261, !nonnull !29, !noundef !29 ; 7 uses
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %i.afb, i64 %i.aew
  store i64 0, ptr %i.afc, align 8, !noalias !19263
  %i.afd = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.afe = load i64, ptr %i.afd, align 8, !alias.scope !19259, !noalias !19264, !noundef !29 ; 4 uses
  %i.aff = add i64 %i.afe, 1                      ; 5 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.afh = load i64, ptr %i.afg, align 8, !alias.scope !19259, !noalias !19264, !noundef !29 ; 16 uses
  %i.afi = icmp ult i64 %i.aff, %i.afh
  br i1 %i.afi, label %bb.hg, label %bb.hh

bb.hf:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aew, i64 noundef %i.aey, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #75, !noalias !19263
  unreachable

bb.hg:                                            ; preds = %bb.he
  %i.afj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.afk = load ptr, ptr %i.afj, align 8, !alias.scope !19259, !noalias !19264, !nonnull !29, !noundef !29 ; 7 uses
  %i.afl = getelementptr inbounds nuw [8 x i8], ptr %i.afk, i64 %i.aff
  store i64 0, ptr %i.afl, align 8, !noalias !19263
  %i.afm = add i64 %.sroa.025.0.i, %.sroa.037.0.i ; 2 uses
  %i.afn = lshr i64 %i.afm, 1
  %.sroa.047.0.i = sub i64 %i.afm, %i.afn         ; 3 uses
  %i.afo = icmp ult i64 %i.aey, 1152921504606846976
  tail call void @llvm.assume(i1 %i.afo)
  %.not128.not.i = icmp ugt i64 %i.aey, %.sroa.047.0.i
  br i1 %.not128.not.i, label %bb.hj, label %bb.hi, !prof !36

bb.hh:                                            ; preds = %bb.he
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aff, i64 noundef %i.afh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #75, !noalias !19263
  unreachable

bb.hi:                                            ; preds = %bb.hg
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @221, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #75, !noalias !19263
  unreachable

bb.hj:                                            ; preds = %bb.hg
  %i.afp = icmp ult i64 %i.afh, 1152921504606846976
  tail call void @llvm.assume(i1 %i.afp)
  %.not129.not.i = icmp samesign ugt i64 %i.afh, %.sroa.047.0.i
  br i1 %.not129.not.i, label %.lr.ph133.i, label %bb.hk, !prof !36

.lr.ph133.i:                                      ; preds = %bb.hj
  %i.afq = add i64 %i.aev, -1
  %i.afr = add i64 %i.afe, -1
  %i.afs = add i64 %.sroa.025.0.i, %.sroa.0.0     ; 2 uses
  %i.aft = add i64 %.sroa.037.0.i, %.sroa.0378.0  ; 2 uses
  br label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @223, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #75, !noalias !19263
  unreachable

bb.hl:                                            ; preds = %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit156.thread.i, %.lr.ph133.i
  %.sroa.048.0132.i = phi i64 [ 0, %.lr.ph133.i ], [ %i.afu, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit156.thread.i ] ; 8 uses
  %i.afu = add nuw nsw i64 %.sroa.048.0132.i, 1
  %i.afv = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !19263
  br i1 %i.afv, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1D_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph121.i

.lr.ph121.i:                                      ; preds = %bb.hl, %bb.jk
  %.sroa.7.0120.i = phi i64 [ %i.aga, %bb.jk ], [ %.sroa.048.0132.i, %bb.hl ]
  %not..sroa.1118.0119.i = phi i64 [ 1, %bb.jk ], [ 0, %bb.hl ]
  %i.afw = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0120.i, i64 %not..sroa.1118.0119.i) ; 2 uses
  %i.afx = extractvalue { i64, i1 } %i.afw, 1
  %i.afy = extractvalue { i64, i1 } %i.afw, 0     ; 10 uses
  %i.afz = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.afy, i64 -1) ; 2 uses
  %i.aga = extractvalue { i64, i1 } %i.afz, 0
  %i.agb = extractvalue { i64, i1 } %i.afz, 1
  %.not3.i.not.i = icmp slt i64 %i.afy, 0
  %or.cond43.i = or i1 %i.afx, %.not3.i.not.i
  br i1 %or.cond43.i, label %.lr.ph130.i.preheader, label %bb.hm

.lr.ph130.i.preheader:                            ; preds = %bb.jk, %.lr.ph121.i
  br label %.lr.ph130.i

bb.hm:                                            ; preds = %.lr.ph121.i
  %11 = icmp eq i64 %i.afy, 0
  br i1 %11, label %._crit_edge217.i, label %bb.ip

.lr.ph130.i:                                      ; preds = %.lr.ph130.i.preheader, %bb.ik
  %not..sroa.1427.0129.i = phi i64 [ 1, %bb.ik ], [ 0, %.lr.ph130.i.preheader ]
  %.sroa.726.0128.i = phi i64 [ %i.agg, %bb.ik ], [ %.sroa.048.0132.i, %.lr.ph130.i.preheader ]
  %i.agc = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.726.0128.i, i64 %not..sroa.1427.0129.i) ; 2 uses
  %i.agd = extractvalue { i64, i1 } %i.agc, 1
  %i.age = extractvalue { i64, i1 } %i.agc, 0     ; 10 uses
  %i.agf = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.age, i64 -1) ; 2 uses
  %i.agg = extractvalue { i64, i1 } %i.agf, 0
  %i.agh = extractvalue { i64, i1 } %i.agf, 1
  %.not3.i152.not.i = icmp slt i64 %i.age, 0
  %or.cond45.i = or i1 %i.agd, %.not3.i152.not.i
  br i1 %or.cond45.i, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit156.thread.i, label %bb.hn

bb.hn:                                            ; preds = %.lr.ph130.i
  %i.agi = icmp eq i64 %i.age, 0
  br i1 %i.agi, label %._crit_edge219.i, label %bb.ho

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit156.thread.i: ; preds = %bb.ik, %.lr.ph130.i
  %exitcond215.not.i = icmp eq i64 %.sroa.048.0132.i, %.sroa.047.0.i
  br i1 %exitcond215.not.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1D_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit, label %bb.hl

bb.ho:                                            ; preds = %bb.hn
  %.not130.i = icmp eq i64 %i.age, %.sroa.048.0132.i
  %.pre220.i = add i64 %i.afr, %i.age             ; 6 uses
  br i1 %.not130.i, label %._crit_edge218.i, label %bb.hp

._crit_edge219.i:                                 ; preds = %bb.hs, %bb.hn
  %.pre-phi.i = phi i64 [ %i.agm, %bb.hs ], [ %i.aff, %bb.hn ] ; 3 uses
  %i.agj = icmp ult i64 %.pre-phi.i, %i.afh
  br i1 %i.agj, label %bb.hx, label %bb.hy

._crit_edge218.i:                                 ; preds = %bb.hs, %bb.ho
  %i.agk = icmp ult i64 %.pre220.i, %i.afh
  br i1 %i.agk, label %bb.hu, label %bb.hv

bb.hp:                                            ; preds = %bb.ho
  %i.agl = icmp ult i64 %.pre220.i, %i.afh
  br i1 %i.agl, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.agm = add i64 %i.age, %i.aff                 ; 4 uses
  %i.agn = icmp ult i64 %i.agm, %i.afh
  br i1 %i.agn, label %bb.hs, label %bb.ht

bb.hr:                                            ; preds = %bb.hp
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre220.i, i64 noundef %i.afh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #75, !noalias !19263
  unreachable

bb.hs:                                            ; preds = %bb.hq
  %i.ago = getelementptr inbounds nuw [8 x i8], ptr %i.afk, i64 %.pre220.i
  %i.agp = load i64, ptr %i.ago, align 8, !noalias !19263, !noundef !29
  %i.agq = getelementptr inbounds nuw [8 x i8], ptr %i.afk, i64 %i.agm
  %i.agr = load i64, ptr %i.agq, align 8, !noalias !19263, !noundef !29
  %i.ags = icmp ult i64 %i.agp, %i.agr
  br i1 %i.ags, label %._crit_edge219.i, label %._crit_edge218.i

bb.ht:                                            ; preds = %bb.hq
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.agm, i64 noundef %i.afh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #75, !noalias !19263
  unreachable

bb.hu:                                            ; preds = %._crit_edge218.i
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %i.afk, i64 %.pre220.i
  %i.agu = load i64, ptr %i.agt, align 8, !noalias !19263, !noundef !29
  %i.agv = add i64 %i.agu, 1
  br label %bb.hw

bb.hv:                                            ; preds = %._crit_edge218.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre220.i, i64 noundef %i.afh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #75, !noalias !19263
  unreachable

bb.hw:                                            ; preds = %bb.hx, %bb.hu
  %.sroa.014.0.i = phi i64 [ %i.aha, %bb.hx ], [ %i.agv, %bb.hu ] ; 5 uses
  %i.agw = sub i64 %.sroa.014.0.i, %i.age         ; 4 uses
  %i.agx = icmp ult i64 %.sroa.014.0.i, %.sroa.025.0.i
  %i.agy = icmp ult i64 %i.agw, %.sroa.037.0.i
  %or.cond.i300 = and i1 %i.agx, %i.agy
  br i1 %or.cond.i300, label %bb.ia, label %bb.hz

bb.hx:                                            ; preds = %._crit_edge219.i
  %i.agz = getelementptr inbounds nuw [8 x i8], ptr %i.afk, i64 %.pre-phi.i
  %i.aha = load i64, ptr %i.agz, align 8, !noalias !19263, !noundef !29
  br label %bb.hw

bb.hy:                                            ; preds = %._crit_edge219.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi.i, i64 noundef %i.afh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #75, !noalias !19263
  unreachable

bb.hz:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_ECskXtk6F4WjxZ_4just.exit.i, %bb.hw
  %.sroa.020.0.i = phi i64 [ %i.aip, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_ECskXtk6F4WjxZ_4just.exit.i ], [ %i.agw, %bb.hw ]
  %.sroa.014.1.i = phi i64 [ %i.aio, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_ECskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.014.0.i, %bb.hw ] ; 3 uses
  %i.ahb = add i64 %i.age, %i.afe                 ; 3 uses
  %i.ahc = icmp ult i64 %i.ahb, %i.afh
  br i1 %i.ahc, label %bb.ih, label %bb.ii

bb.ia:                                            ; preds = %bb.hw
  %i.ahd = sub i64 %i.afs, %.sroa.014.0.i         ; 2 uses
  %i.ahe = sub i64 %i.aft, %i.agw                 ; 2 uses
  %i.ahf = sub i64 %i.ahd, %.sroa.0.0
  %i.ahg = sub i64 %i.ahe, %.sroa.0378.0
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ahg, i64 %i.ahf) ; 3 uses
  %.not137.i = icmp eq i64 %..i.i, 0
  br i1 %.not137.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_ECskXtk6F4WjxZ_4just.exit.i, label %.lr.ph124.i

.lr.ph124.i:                                      ; preds = %bb.ia
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ig, %.lr.ph124.i
  %.sroa.0.0.i136123.i = phi i64 [ 0, %.lr.ph124.i ], [ %i.ain, %bb.ig ] ; 3 uses
  %i.ahh = xor i64 %.sroa.0.0.i136123.i, -1       ; 2 uses
  %i.ahi = add i64 %i.ahe, %i.ahh                 ; 3 uses
  %i.ahj = icmp ult i64 %i.ahi, %.val71
  br i1 %i.ahj, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ahi, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #75, !noalias !19265
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.ib
  %i.ahk = add i64 %i.ahd, %i.ahh                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %i.ahl = icmp ult i64 %i.ahk, %.val69
  br i1 %i.ahl, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit157.i, label %bb.id

bb.id:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ahk, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #75, !noalias !19268
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit157.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i
  %i.ahm = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.ahi ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19274)
  %i.ahn = load ptr, ptr %i.ahm, align 8, !alias.scope !19271, !noalias !19276, !nonnull !29, !align !174, !noundef !29 ; 3 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahm, i64 8
  %i.ahp = load i64, ptr %i.aho, align 8, !alias.scope !19271, !noalias !19276, !noundef !29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19277)
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahn, i64 24
  %i.ahr = load i64, ptr %i.ahq, align 8, !alias.scope !19277, !noalias !19280, !noundef !29
  %i.ahs = sub i64 %i.ahp, %i.ahr                 ; 3 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahn, i64 16
  %i.ahu = load i64, ptr %i.aht, align 8, !alias.scope !19277, !noalias !19280, !noundef !29 ; 2 uses
  %i.ahv = icmp ult i64 %i.ahs, %i.ahu
  br i1 %i.ahv, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139.i, label %bb.ie

bb.ie:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit157.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ahs, i64 noundef %i.ahu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #75, !noalias !19282
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit157.i
  %i.ahw = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.ahk ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahn, i64 8
  %i.ahy = load ptr, ptr %i.ahx, align 8, !alias.scope !19277, !noalias !19280, !nonnull !29, !noundef !29
  %i.ahz = load ptr, ptr %i.ahw, align 8, !alias.scope !19274, !noalias !19283, !nonnull !29, !align !174, !noundef !29 ; 3 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahw, i64 8
  %i.aib = load i64, ptr %i.aia, align 8, !alias.scope !19274, !noalias !19283, !noundef !29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19284)
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahz, i64 24
  %i.aid = load i64, ptr %i.aic, align 8, !alias.scope !19284, !noalias !19287, !noundef !29
  %i.aie = sub i64 %i.aib, %i.aid                 ; 3 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %i.aig = load i64, ptr %i.aif, align 8, !alias.scope !19284, !noalias !19287, !noundef !29 ; 2 uses
  %i.aih = icmp ult i64 %i.aie, %i.aig
  br i1 %i.aih, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138.i, label %bb.if

bb.if:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aie, i64 noundef %i.aig, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #75, !noalias !19289
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit139.i
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.ahy, i64 %i.ahs
  %i.aij = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8
  %i.aik = load ptr, ptr %i.aij, align 8, !alias.scope !19284, !noalias !19287, !nonnull !29, !noundef !29
  %i.ail = getelementptr inbounds nuw [4 x i8], ptr %i.aik, i64 %i.aie
  %.val141.i = load i32, ptr %i.aii, align 4, !noalias !19263, !noundef !29
  %.val142.i = load i32, ptr %i.ail, align 4, !noalias !19263, !noundef !29
  %i.aim = icmp eq i32 %.val141.i, %.val142.i
  br i1 %i.aim, label %bb.ig, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_ECskXtk6F4WjxZ_4just.exit.i

bb.ig:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138.i
  %i.ain = add nuw i64 %.sroa.0.0.i136123.i, 1    ; 2 uses
  %exitcond214.not.i = icmp eq i64 %i.ain, %..i.i
  br i1 %exitcond214.not.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_ECskXtk6F4WjxZ_4just.exit.i, label %bb.ib

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_ECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.ig, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138.i, %bb.ia
  %.sroa.0.0.i136.lcssa.i = phi i64 [ 0, %bb.ia ], [ %.sroa.0.0.i136123.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit138.i ], [ %..i.i, %bb.ig ] ; 2 uses
  %i.aio = add i64 %.sroa.0.0.i136.lcssa.i, %.sroa.014.0.i
  %i.aip = add i64 %.sroa.0.0.i136.lcssa.i, %i.agw
  br label %bb.hz

bb.ih:                                            ; preds = %bb.hz
  %i.aiq = getelementptr inbounds nuw [8 x i8], ptr %i.afk, i64 %i.ahb
  store i64 %.sroa.014.1.i, ptr %i.aiq, align 8, !noalias !19263
  br i1 %.not.i298, label %bb.ij, label %bb.ik

bb.ii:                                            ; preds = %bb.hz
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ahb, i64 noundef %i.afh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #75, !noalias !19263
  unreachable

bb.ij:                                            ; preds = %bb.ih
  %i.air = sub i64 %i.age, %i.aes                 ; 2 uses
  %.sroa.024.0.i = tail call i64 @llvm.abs.i64(i64 %i.air, i1 false)
  %.not131.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.048.0132.i
  br i1 %.not131.i, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.im, %bb.ij, %bb.ih
  %i.ais = icmp slt i64 %i.age, 1
  %12 = or i1 %i.ais, %i.agh
  br i1 %12, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit156.thread.i, label %.lr.ph130.i

bb.il:                                            ; preds = %bb.ij
  %i.ait = sub i64 %i.aev, %i.air                 ; 3 uses
  %i.aiu = icmp ult i64 %i.ait, %i.aey
  br i1 %i.aiu, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.aiv = getelementptr inbounds nuw [8 x i8], ptr %i.afb, i64 %i.ait
  %i.aiw = load i64, ptr %i.aiv, align 8, !noalias !19263, !noundef !29
  %i.aix = add i64 %i.aiw, %.sroa.014.1.i
  %.not132.i = icmp ult i64 %i.aix, %.sroa.025.0.i
  br i1 %.not132.i, label %bb.ik, label %bb.io

bb.in:                                            ; preds = %bb.il
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ait, i64 noundef %i.aey, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #75, !noalias !19263
  unreachable

bb.io:                                            ; preds = %bb.im
  %i.aiy = sub i64 %i.afs, %.sroa.014.1.i
  %i.aiz = sub i64 %i.aft, %.sroa.020.0.i
  br label %bb.jq

bb.ip:                                            ; preds = %bb.hm
  %.not133.i = icmp eq i64 %i.afy, %.sroa.048.0132.i
  %.pre224.i = add i64 %i.afq, %i.afy             ; 6 uses
  br i1 %.not133.i, label %._crit_edge216.i, label %bb.iq

._crit_edge217.i:                                 ; preds = %bb.it, %bb.hm
  %.pre-phi223.i = phi i64 [ %i.ajd, %bb.it ], [ %i.aew, %bb.hm ] ; 3 uses
  %i.aja = icmp ult i64 %.pre-phi223.i, %i.aey
  br i1 %i.aja, label %bb.iy, label %bb.iz

._crit_edge216.i:                                 ; preds = %bb.it, %bb.ip
  %i.ajb = icmp ult i64 %.pre224.i, %i.aey
  br i1 %i.ajb, label %bb.iv, label %bb.iw

bb.iq:                                            ; preds = %bb.ip
  %i.ajc = icmp ult i64 %.pre224.i, %i.aey
  br i1 %i.ajc, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.ajd = add i64 %i.afy, %i.aew                 ; 4 uses
  %i.aje = icmp ult i64 %i.ajd, %i.aey
  br i1 %i.aje, label %bb.it, label %bb.iu

bb.is:                                            ; preds = %bb.iq
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre224.i, i64 noundef %i.aey, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #75, !noalias !19263
  unreachable

bb.it:                                            ; preds = %bb.ir
  %i.ajf = getelementptr inbounds nuw [8 x i8], ptr %i.afb, i64 %.pre224.i
  %i.ajg = load i64, ptr %i.ajf, align 8, !noalias !19263, !noundef !29
  %i.ajh = getelementptr inbounds nuw [8 x i8], ptr %i.afb, i64 %i.ajd
  %i.aji = load i64, ptr %i.ajh, align 8, !noalias !19263, !noundef !29
  %i.ajj = icmp ult i64 %i.ajg, %i.aji
  br i1 %i.ajj, label %._crit_edge217.i, label %._crit_edge216.i

bb.iu:                                            ; preds = %bb.ir
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ajd, i64 noundef %i.aey, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #75, !noalias !19263
  unreachable

bb.iv:                                            ; preds = %._crit_edge216.i
  %i.ajk = getelementptr inbounds nuw [8 x i8], ptr %i.afb, i64 %.pre224.i
  %i.ajl = load i64, ptr %i.ajk, align 8, !noalias !19263, !noundef !29
  %i.ajm = add i64 %i.ajl, 1
  br label %bb.ix

bb.iw:                                            ; preds = %._crit_edge216.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre224.i, i64 noundef %i.aey, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @233) #75, !noalias !19263
  unreachable

bb.ix:                                            ; preds = %bb.iy, %bb.iv
  %.sroa.04.0.i299 = phi i64 [ %i.ajr, %bb.iy ], [ %i.ajm, %bb.iv ] ; 6 uses
  %i.ajn = sub i64 %.sroa.04.0.i299, %i.afy       ; 3 uses
  %i.ajo = icmp ult i64 %.sroa.04.0.i299, %.pre
  %i.ajp = icmp ult i64 %i.ajn, %.pre1504
  %or.cond41.i = select i1 %i.ajo, i1 %i.ajp, i1 false
  br i1 %or.cond41.i, label %bb.jb, label %bb.ja

bb.iy:                                            ; preds = %._crit_edge217.i
  %i.ajq = getelementptr inbounds nuw [8 x i8], ptr %i.afb, i64 %.pre-phi223.i
  %i.ajr = load i64, ptr %i.ajq, align 8, !noalias !19263, !noundef !29
  br label %bb.ix

bb.iz:                                            ; preds = %._crit_edge217.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi223.i, i64 noundef %i.aey, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #75, !noalias !19263
  unreachable

bb.ja:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_ECskXtk6F4WjxZ_4just.exit.i, %bb.ix
  %.sroa.04.1.i = phi i64 [ %i.alc, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_ECskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.04.0.i299, %bb.ix ] ; 2 uses
  %i.ajs = add i64 %i.afy, %i.aev                 ; 3 uses
  %i.ajt = icmp ult i64 %i.ajs, %i.aey
  br i1 %i.ajt, label %bb.ji, label %bb.jj

bb.jb:                                            ; preds = %bb.ix
  %i.aju = add i64 %.sroa.04.0.i299, %.sroa.0.0   ; 4 uses
  %i.ajv = add i64 %i.ajn, %.sroa.0378.0          ; 3 uses
  %i.ajw = sub i64 %i.ca, %i.aju
  %i.ajx = sub i64 %i.cb, %i.ajv
  %..i158.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ajx, i64 %i.ajw) ; 3 uses
  %.not136.i = icmp eq i64 %..i158.i, 0
  br i1 %.not136.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_ECskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i303

.lr.ph.i303:                                      ; preds = %bb.jb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  %umax212.i = tail call i64 @llvm.umax.i64(i64 %.val69, i64 %i.aju) ; 2 uses
  %i.ajy = sub i64 %umax212.i, %i.aju
  %invariant.gep.i304 = getelementptr [16 x i8], ptr %.val68, i64 %i.aju
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jh, %.lr.ph.i303
  %.sroa.0.0.i116.i = phi i64 [ 0, %.lr.ph.i303 ], [ %i.alb, %bb.jh ] ; 5 uses
  %i.ajz = add nuw i64 %.sroa.0.0.i116.i, %i.ajv  ; 2 uses
  %i.aka = icmp ult i64 %i.ajz, %.val71
  br i1 %i.aka, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159.i, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %umax.i305 = tail call i64 @llvm.umax.i64(i64 %.val71, i64 %i.ajv)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax.i305, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #75, !noalias !19290
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159.i: ; preds = %bb.jc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %exitcond.not.i306 = icmp eq i64 %.sroa.0.0.i116.i, %i.ajy
  br i1 %exitcond.not.i306, label %bb.je, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit160.i

bb.je:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax212.i, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #75, !noalias !19293
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit160.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159.i
  %i.akb = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.ajz ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19299)
  %i.akc = load ptr, ptr %i.akb, align 8, !alias.scope !19296, !noalias !19301, !nonnull !29, !align !174, !noundef !29 ; 3 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %i.akb, i64 8
  %i.ake = load i64, ptr %i.akd, align 8, !alias.scope !19296, !noalias !19301, !noundef !29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19302)
  %i.akf = getelementptr inbounds nuw i8, ptr %i.akc, i64 24
  %i.akg = load i64, ptr %i.akf, align 8, !alias.scope !19302, !noalias !19305, !noundef !29
  %i.akh = sub i64 %i.ake, %i.akg                 ; 3 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akc, i64 16
  %i.akj = load i64, ptr %i.aki, align 8, !alias.scope !19302, !noalias !19305, !noundef !29 ; 2 uses
  %i.akk = icmp ult i64 %i.akh, %i.akj
  br i1 %i.akk, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit137.i, label %bb.jf

bb.jf:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit160.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.akh, i64 noundef %i.akj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #75, !noalias !19307
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit137.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit160.i
  %gep.i307 = getelementptr [16 x i8], ptr %invariant.gep.i304, i64 %.sroa.0.0.i116.i ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akc, i64 8
  %i.akm = load ptr, ptr %i.akl, align 8, !alias.scope !19302, !noalias !19305, !nonnull !29, !noundef !29
  %i.akn = load ptr, ptr %gep.i307, align 8, !alias.scope !19299, !noalias !19308, !nonnull !29, !align !174, !noundef !29 ; 3 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %gep.i307, i64 8
  %i.akp = load i64, ptr %i.ako, align 8, !alias.scope !19299, !noalias !19308, !noundef !29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19309)
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akn, i64 24
  %i.akr = load i64, ptr %i.akq, align 8, !alias.scope !19309, !noalias !19312, !noundef !29
  %i.aks = sub i64 %i.akp, %i.akr                 ; 3 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akn, i64 16
  %i.aku = load i64, ptr %i.akt, align 8, !alias.scope !19309, !noalias !19312, !noundef !29 ; 2 uses
  %i.akv = icmp ult i64 %i.aks, %i.aku
  br i1 %i.akv, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i, label %bb.jg

bb.jg:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit137.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aks, i64 noundef %i.aku, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #75, !noalias !19314
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit137.i
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %i.akm, i64 %i.akh
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akn, i64 8
  %i.aky = load ptr, ptr %i.akx, align 8, !alias.scope !19309, !noalias !19312, !nonnull !29, !noundef !29
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr %i.aky, i64 %i.aks
  %.val.i308 = load i32, ptr %i.akw, align 4, !noalias !19263, !noundef !29
  %.val140.i = load i32, ptr %i.akz, align 4, !noalias !19263, !noundef !29
  %i.ala = icmp eq i32 %.val.i308, %.val140.i
  br i1 %i.ala, label %bb.jh, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_ECskXtk6F4WjxZ_4just.exit.i

bb.jh:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i
  %i.alb = add nuw i64 %.sroa.0.0.i116.i, 1       ; 2 uses
  %exitcond213.not.i = icmp eq i64 %i.alb, %..i158.i
  br i1 %exitcond213.not.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_ECskXtk6F4WjxZ_4just.exit.i, label %bb.jc

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_ECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.jh, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i, %bb.jb
  %.sroa.0.0.i.lcssa.i = phi i64 [ 0, %bb.jb ], [ %.sroa.0.0.i116.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i ], [ %..i158.i, %bb.jh ]
  %i.alc = add i64 %.sroa.0.0.i.lcssa.i, %.sroa.04.0.i299
  br label %bb.ja

bb.ji:                                            ; preds = %bb.ja
  %i.ald = getelementptr inbounds nuw [8 x i8], ptr %i.afb, i64 %i.ajs
  store i64 %.sroa.04.1.i, ptr %i.ald, align 8, !noalias !19263
  br i1 %.not.i298, label %bb.jk, label %bb.jl

bb.jj:                                            ; preds = %bb.ja
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ajs, i64 noundef %i.aey, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #75, !noalias !19263
  unreachable

bb.jk:                                            ; preds = %bb.jn, %bb.jl, %bb.ji
  %i.ale = icmp slt i64 %i.afy, 1
  %13 = or i1 %i.ale, %i.agb
  br i1 %13, label %.lr.ph130.i.preheader, label %.lr.ph121.i

bb.jl:                                            ; preds = %bb.ji
  %i.alf = sub i64 %i.afy, %i.aes                 ; 2 uses
  %.sroa.010.0.i = tail call i64 @llvm.abs.i64(i64 %i.alf, i1 false)
  %.not134.not.i = icmp slt i64 %.sroa.010.0.i, %.sroa.048.0132.i
  br i1 %.not134.not.i, label %bb.jm, label %bb.jk

bb.jm:                                            ; preds = %bb.jl
  %i.alg = sub i64 %i.afe, %i.alf                 ; 3 uses
  %i.alh = icmp ult i64 %i.alg, %i.afh
  br i1 %i.alh, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  %i.ali = getelementptr inbounds nuw [8 x i8], ptr %i.afk, i64 %i.alg
  %i.alj = load i64, ptr %i.ali, align 8, !noalias !19263, !noundef !29
  %i.alk = add i64 %i.alj, %.sroa.04.1.i
  %.not135.i = icmp ult i64 %i.alk, %.sroa.025.0.i
  br i1 %.not135.i, label %bb.jk, label %bb.jp

bb.jo:                                            ; preds = %bb.jm
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.alg, i64 noundef %i.afh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #75, !noalias !19263
  unreachable

bb.jp:                                            ; preds = %bb.jn
  %i.all = add i64 %.sroa.04.0.i299, %.sroa.0.0
  %i.alm = add i64 %i.ajn, %.sroa.0378.0
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.io
  %.sroa.7.0.ph = phi i64 [ %i.alm, %bb.jp ], [ %i.aiz, %bb.io ] ; 2 uses
  %.sroa.5.0.ph = phi i64 [ %i.all, %bb.jp ], [ %i.aiy, %bb.io ] ; 2 uses
  tail call fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1s_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2i_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(208) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.0.0, i64 noundef %.sroa.5.0.ph, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.0378.0, i64 noundef %.sroa.7.0.ph, ptr noalias nofree noundef align 8 dereferenceable(32) %7, ptr noalias nofree noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1s_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2i_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(208) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.5.0.ph, i64 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.7.0.ph, i64 noundef %i.cb, ptr noalias nofree noundef align 8 dereferenceable(32) %7, ptr noalias nofree noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread449

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1D_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit156.thread.i, %bb.hl
  tail call fastcc void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB4_5utils12OffsetLookupmEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.0.0.copyload.i309 = load i64, ptr %0, align 8, !alias.scope !19315
  %i.aln = trunc nuw i64 %.sroa.0.0.copyload.i309 to i1
  br i1 %i.aln, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1D_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.6.0.copyload.i314 = load i64, ptr %.sroa.6.0..sroa_idx.i129, align 8, !alias.scope !19315
  %i.alo = add i64 %.sroa.6.0.copyload.i314, %.pre
  br label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit315

bb.js:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1D_12OffsetLookupmEEEB13_ECskXtk6F4WjxZ_4just.exit
  store i64 %.sroa.0.0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !19315
  store i64 %.sroa.0378.0, ptr %.sroa.7.0..sroa_idx.i130, align 8, !alias.scope !19315
  br label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit315

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit315: ; preds = %bb.jr, %bb.js
  %.sink.i313 = phi i64 [ %i.alo, %bb.jr ], [ %.pre, %bb.js ]
  store i64 1, ptr %0, align 8, !alias.scope !19315
  store i64 %.sink.i313, ptr %.sroa.6.0..sroa_idx.i129, align 8, !alias.scope !19315
  tail call fastcc void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB4_5utils12OffsetLookupmEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.01.0.copyload.i316 = load i64, ptr %i.cg, align 8, !alias.scope !19318
  %.sroa.52.0.copyload.i318 = load i64, ptr %.sroa.52.0..sroa_idx.i120, align 8, !alias.scope !19318
  %.sroa.6.0.copyload.i320 = load i64, ptr %.sroa.6.0..sroa_idx.i122, align 8, !alias.scope !19318
  %.sroa.7.0.copyload.i322 = load i64, ptr %.sroa.7.0..sroa_idx.i124, align 8, !alias.scope !19318
  %i.alp = trunc nuw i64 %.sroa.01.0.copyload.i316 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i323 = select i1 %i.alp, i64 %.sroa.52.0.copyload.i318, i64 %.sroa.0.0
  %.sroa.5.sroa.5.0.i324 = select i1 %i.alp, i64 %.sroa.6.0.copyload.i320, i64 %.sroa.0378.0
  %i.alq = select i1 %i.alp, i64 %.sroa.7.0.copyload.i322, i64 0
  %.sroa.5.sroa.6.0.i325 = add i64 %i.alq, %.pre1504
  store i64 1, ptr %i.cg, align 8, !alias.scope !19318
  store i64 %.sroa.5.sroa.0.0.i323, ptr %.sroa.52.0..sroa_idx.i120, align 8, !alias.scope !19318
  store i64 %.sroa.5.sroa.5.0.i324, ptr %.sroa.6.0..sroa_idx.i122, align 8, !alias.scope !19318
  store i64 %.sroa.5.sroa.6.0.i325, ptr %.sroa.7.0..sroa_idx.i124, align 8, !alias.scope !19318
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread449

.thread:                                          ; preds = %bb.ax
  %i.alr = sub nuw i64 %i.cb, %.sroa.0378.0
  tail call fastcc void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB4_5utils12OffsetLookupmEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.01.0.copyload.i326 = load i64, ptr %i.cg, align 8, !alias.scope !19321
  %.sroa.52.0.copyload.i328 = load i64, ptr %.sroa.52.0..sroa_idx.i120, align 8, !alias.scope !19321
  %.sroa.6.0.copyload.i330 = load i64, ptr %.sroa.6.0..sroa_idx.i122, align 8, !alias.scope !19321
  %.sroa.7.0.copyload.i332 = load i64, ptr %.sroa.7.0..sroa_idx.i124, align 8, !alias.scope !19321
  %i.als = trunc nuw i64 %.sroa.01.0.copyload.i326 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i333 = select i1 %i.als, i64 %.sroa.52.0.copyload.i328, i64 %.sroa.0.0
  %.sroa.5.sroa.5.0.i334 = select i1 %i.als, i64 %.sroa.6.0.copyload.i330, i64 %.sroa.0378.0
  %i.alt = select i1 %i.als, i64 %.sroa.7.0.copyload.i332, i64 0
  %.sroa.5.sroa.6.0.i335 = add i64 %i.alr, %i.alt
  store i64 1, ptr %i.cg, align 8, !alias.scope !19321
  store i64 %.sroa.5.sroa.0.0.i333, ptr %.sroa.52.0..sroa_idx.i120, align 8, !alias.scope !19321
  store i64 %.sroa.5.sroa.5.0.i334, ptr %.sroa.6.0..sroa_idx.i122, align 8, !alias.scope !19321
  store i64 %.sroa.5.sroa.6.0.i335, ptr %.sroa.7.0..sroa_idx.i124, align 8, !alias.scope !19321
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread449

bb.jt:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread449
  store i64 0, ptr %0, align 8, !alias.scope !19324
  store i64 0, ptr %i.cg, align 8, !alias.scope !19324
  %.sroa.01.0.copyload.i336 = load i64, ptr %i.ch, align 8, !alias.scope !19329
  %.sroa.52.0.copyload.i338 = load i64, ptr %.sroa.52.0..sroa_idx.i110, align 8, !alias.scope !19329
  %.sroa.6.0.copyload.i340 = load i64, ptr %.sroa.6.0..sroa_idx.i112, align 8, !alias.scope !19329
  %.sroa.7.0.copyload.i342 = load i64, ptr %.sroa.7.0..sroa_idx.i114, align 8, !alias.scope !19329
  %i.alu = trunc nuw i64 %.sroa.01.0.copyload.i336 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i343 = select i1 %i.alu, i64 %.sroa.52.0.copyload.i338, i64 %i.ca
  %.sroa.5.sroa.5.0.i344 = select i1 %i.alu, i64 %.sroa.6.0.copyload.i340, i64 %i.cb
  %i.alv = select i1 %i.alu, i64 %.sroa.7.0.copyload.i342, i64 0
  %.sroa.5.sroa.6.0.i345 = add i64 %i.alv, %.sroa.0.0.i88
  store i64 1, ptr %i.ch, align 8, !alias.scope !19329
  store i64 %.sroa.5.sroa.0.0.i343, ptr %.sroa.52.0..sroa_idx.i110, align 8, !alias.scope !19329
  store i64 %.sroa.5.sroa.5.0.i344, ptr %.sroa.6.0..sroa_idx.i112, align 8, !alias.scope !19329
  store i64 %.sroa.5.sroa.6.0.i345, ptr %.sroa.7.0..sroa_idx.i114, align 8, !alias.scope !19329
  br label %bb.ju

bb.ju:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread449, %bb.jt
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2o_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19333)
  %i.a = icmp uge i64 %2, %3
  %i.b = icmp uge i64 %5, %6
  %or.cond.i72 = or i1 %i.a, %i.b
  br i1 %or.cond.i72, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i.i = sub nuw i64 %6, %5
  %spec.select.i.i4.i.i.i = sub nuw i64 %3, %2
  %..i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i73 = icmp eq i64 %..i.i.i.i, 0
  br i1 %.not.i73, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val8.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !19333, !noalias !19335, !noundef !29 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val6.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !19330, !noalias !19333 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !19330, !noalias !19333, !nonnull !29
  %.val7.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !19333, !noalias !19330, !nonnull !29
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
  br i1 %exitcond.not.i, label %bb.d, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax20.i, i64 noundef range(i64 0, 576460752303423488) %.val8.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @564) #75, !noalias !19344
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %bb.c
  %exitcond21.not.i = icmp eq i64 %.sroa.01.041.i.i.i.i, %i.h
  br i1 %exitcond21.not.i, label %bb.e, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit9.i.i.i.i.i

bb.e:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, 576460752303423488) %.val6.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @565) #75, !noalias !19347
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit9.i.i.i.i.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.sroa.01.041.i.i.i.i ; 2 uses
  %gep30.i = getelementptr [16 x i8], ptr %invariant.gep29.i, i64 %.sroa.01.041.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19353)
  %i.j = load ptr, ptr %gep.i, align 8, !alias.scope !19350, !noalias !19355, !nonnull !29, !align !174, !noundef !29 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !19350, !noalias !19355, !noundef !29 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19362), !noalias !19365
  %i.m = load i64, ptr %i.j, align 8, !range !274, !alias.scope !19366, !noalias !19367, !noundef !29
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !19366, !noalias !19367, !noundef !29
  %i.q = icmp ult i64 %i.l, %i.p                  ; 2 uses
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit9.i.i.i.i.i
  br i1 %i.q, label %bb.i, label %bb.j

bb.g:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit9.i.i.i.i.i
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !19366, !noalias !19367, !nonnull !29, !noundef !29
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.l ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !19366, !noalias !19367, !nonnull !29, !noundef !29
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.l ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %i.z = getelementptr i8, ptr %i.x, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
end_hunk_1
begin_hunk_2_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2o_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just:bb.a
bb.kj:                                            ; preds = %.noexc.us.i336
  br i1 %i.ajo, label %bb.kk, label %.invoke1050.i216

bb.kk:                                            ; preds = %bb.kj
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  %i.ajq = load ptr, ptr %i.ajp, align 8, !alias.scope !19910, !noalias !19911, !nonnull !29, !noundef !29
  %i.ajr = getelementptr inbounds nuw [16 x i8], ptr %i.ajq, i64 %i.ajj ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajr, i64 8
  br label %.noexc181.us.i341

bb.kl:                                            ; preds = %.noexc.us.i336
  br i1 %i.ajo, label %bb.km, label %.invoke1050.i216

bb.km:                                            ; preds = %bb.kl
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  %i.aju = load ptr, ptr %i.ajt, align 8, !alias.scope !19910, !noalias !19911, !nonnull !29, !noundef !29
  %i.ajv = getelementptr inbounds nuw [24 x i8], ptr %i.aju, i64 %i.ajj ; 2 uses
  %i.ajw = getelementptr i8, ptr %i.ajv, i64 8
  %i.ajx = getelementptr i8, ptr %i.ajv, i64 16
  br label %.noexc181.us.i341

.noexc181.us.i341:                                ; preds = %bb.km, %bb.kk
  %.sroa.5.1.i.in.i324.us.i342 = phi ptr [ %i.ajx, %bb.km ], [ %i.ajs, %bb.kk ]
  %.sroa.0.1.i.in.i325.us.i343 = phi ptr [ %i.ajw, %bb.km ], [ %i.ajr, %bb.kk ]
  %.sroa.5.1.i.i327.us.i344 = load i64, ptr %.sroa.5.1.i.in.i324.us.i342, align 8, !noalias !19913, !noundef !29
  %i.ajy = icmp eq i64 %.sroa.5.1.i.i321.us.i340, %.sroa.5.1.i.i327.us.i344
  br i1 %i.ajy, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit.us.i351, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit.thread.us.i345

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit.us.i351: ; preds = %.noexc181.us.i341
  %.sroa.0.1.i.i326.us.i352 = load ptr, ptr %.sroa.0.1.i.in.i325.us.i343, align 8, !noalias !19913, !nonnull !29, !noundef !29
  %bcmp.i331.us.i353 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i320.us.i339, ptr nonnull readonly %.sroa.0.1.i.i326.us.i352, i64 %.sroa.5.1.i.i321.us.i340), !alias.scope !19914
  %i.ajz = icmp eq i32 %bcmp.i331.us.i353, 0
  br i1 %i.ajz, label %bb.kp, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit.thread.us.i345

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit.thread.us.i345: ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit.us.i351, %.noexc181.us.i341
  %i.aka = add i64 %i.aik, %i.aif                 ; 3 uses
  %i.akb = icmp ult i64 %i.aka, %i.wy
  br i1 %i.akb, label %bb.kn, label %.invoke1046.i228

bb.kn:                                            ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit.thread.us.i345
  %i.akc = add i64 %.sroa.0105.0440.us.i335, %i.aie ; 3 uses
  %i.akd = icmp ult i64 %i.akc, %i.wy
  br i1 %i.akd, label %bb.ko, label %.split456.us.invoke.i230

bb.ko:                                            ; preds = %bb.kn
  %i.ake = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.aka
  %i.akf = load i8, ptr %i.ake, align 1, !noundef !29
  %i.akg = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.akc
  %i.akh = load i8, ptr %i.akg, align 1, !noundef !29
  %..i.us.i346 = tail call noundef i8 @llvm.umax.i8(i8 %i.akh, i8 %i.akf)
  br label %bb.kr

bb.kp:                                            ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqCskXtk6F4WjxZ_4just.exit.us.i351
  %i.aki = add i64 %.sroa.0105.0440.us.i335, %i.aif ; 3 uses
  %i.akj = icmp ult i64 %i.aki, %i.wy
  br i1 %i.akj, label %bb.kq, label %.invoke1046.i228

bb.kq:                                            ; preds = %bb.kp
  %i.akk = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.aki
  %i.akl = load i8, ptr %i.akk, align 1, !noundef !29
  %i.akm = add i8 %i.akl, 1
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %bb.ko
  %.sroa.04.0.us.i347 = phi i8 [ %i.akm, %bb.kq ], [ %..i.us.i346, %bb.ko ]
  %i.akn = add i64 %i.aik, %i.aie                 ; 3 uses
  %i.ako = icmp ult i64 %i.akn, %i.wy
  br i1 %i.ako, label %bb.ks, label %.split456.us.invoke.i230

bb.ks:                                            ; preds = %bb.kr
  %i.akp = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.akn
  store i8 %.sroa.04.0.us.i347, ptr %i.akp, align 1
  %.not168.us.i348 = icmp eq i64 %i.aik, 0
  br i1 %.not168.us.i348, label %..loopexit58_crit_edge.split.us.i349, label %.lr.ph.split.us.i334

.loopexit.split-lp.loopexit.split.us.i354:        ; preds = %bb.kb
  %lpad.loopexit59.us.i355 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i179

..loopexit58_crit_edge.split.us.i349:             ; preds = %bb.ks
  %.not.i350 = icmp eq i64 %i.xe, 0
  br i1 %.not.i350, label %.lr.ph495.i205, label %.lr.ph470.split.i325

.lr.ph.split.i331:                                ; preds = %.lr.ph.i329
  %i.akq = add i64 %.sroa.088.0.i168, -1          ; 2 uses
  %i.akr = and i64 %i.akq, 1023
  %i.aks = icmp eq i64 %i.akr, 0
  br i1 %i.aks, label %bb.kt, label %bb.kv

bb.kt:                                            ; preds = %.lr.ph.split.i331
  %i.akt = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ku unwind label %.loopexit.split-lp.loopexit.split.i332

bb.ku:                                            ; preds = %bb.kt
  br i1 %i.akt, label %.loopexit54.i324, label %bb.kv

bb.kv:                                            ; preds = %bb.ku, %.lr.ph.split.i331
  %i.aku = add i64 %i.akq, %.sroa.0442.0          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val62) ]
  %i.akv = icmp ult i64 %i.aku, %.val63
  br i1 %i.akv, label %bb.kw, label %.invoke1048.i214

bb.kw:                                            ; preds = %bb.kv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  br label %.invoke1048.i214

.split456.us.invoke.i230:                         ; preds = %bb.kr, %bb.kn, %bb.hs, %bb.hp, %bb.jf, %bb.jd, %bb.ii, %bb.ik, %bb.jw
  %i.akw = phi i64 [ %i.zs, %bb.hp ], [ %i.afi, %bb.jf ], [ %i.ahu, %bb.jw ], [ %i.ack, %bb.ii ], [ %i.wy, %bb.ik ], [ %i.afa, %bb.jd ], [ %i.aaf, %bb.hs ], [ %i.akc, %bb.kn ], [ %i.akn, %bb.kr ]
  %i.akx = phi ptr [ @270, %bb.hp ], [ @282, %bb.jf ], [ @286, %bb.jw ], [ @275, %bb.ii ], [ @277, %bb.ik ], [ @280, %bb.jd ], [ @272, %bb.hs ], [ @290, %bb.kn ], [ @292, %bb.kr ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.akw, i64 noundef %i.wy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.akx) #71
          to label %.split456.us.cont.i233 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i231

.split456.us.cont.i233:                           ; preds = %.split456.us.invoke.i230
  unreachable

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread518: ; preds = %bb.ir, %bb.hw, %bb.jk, %.loopexit54.i324
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xd, i64 noundef %i.wy, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !29
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i202, %bb.gz, %bb.ha
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xd, i64 noundef %i.wy, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !29
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread515

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.cg, %bb.ch, %.loopexit54.i324, %bb.gq, %.loopexit54.i, %bb.ck, %bb.ci, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit221.sink.split.i.thread, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread518
  %.val68 = load ptr, ptr %i.da, align 8          ; 4 uses
  %.val69 = load i64, ptr %i.db, align 8          ; 4 uses
  %.val70 = load ptr, ptr %i.cy, align 8          ; 4 uses
  %.val71 = load i64, ptr %i.cz, align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19921)
  %.sroa.025.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.cw, i64 %.sroa.0.0) ; 6 uses
  %.sroa.037.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.cx, i64 %.sroa.0442.0) ; 4 uses
  %i.aky = sub i64 %.sroa.025.0.i, %.sroa.037.0.i ; 3 uses
  %i.akz = and i64 %i.aky, 1
  %.not.i357 = icmp eq i64 %i.akz, 0              ; 2 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.alb = load i64, ptr %i.ala, align 8, !alias.scope !19918, !noalias !19923, !noundef !29 ; 4 uses
  %i.alc = add i64 %i.alb, 1                      ; 5 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ale = load i64, ptr %i.ald, align 8, !alias.scope !19918, !noalias !19923, !noundef !29 ; 16 uses
  %i.alf = icmp ult i64 %i.alc, %i.ale
  br i1 %i.alf, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread
  %i.alg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.alh = load ptr, ptr %i.alg, align 8, !alias.scope !19918, !noalias !19923, !nonnull !29, !noundef !29 ; 7 uses
  %i.ali = getelementptr inbounds nuw [8 x i8], ptr %i.alh, i64 %i.alc
  store i64 0, ptr %i.ali, align 8, !noalias !19925
  %i.alj = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.alk = load i64, ptr %i.alj, align 8, !alias.scope !19921, !noalias !19926, !noundef !29 ; 4 uses
  %i.all = add i64 %i.alk, 1                      ; 5 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aln = load i64, ptr %i.alm, align 8, !alias.scope !19921, !noalias !19926, !noundef !29 ; 16 uses
  %i.alo = icmp ult i64 %i.all, %i.aln
  br i1 %i.alo, label %bb.kz, label %bb.la

bb.ky:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.alc, i64 noundef %i.ale, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @219) #75, !noalias !19925
  unreachable

bb.kz:                                            ; preds = %bb.kx
  %i.alp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.alq = load ptr, ptr %i.alp, align 8, !alias.scope !19921, !noalias !19926, !nonnull !29, !noundef !29 ; 7 uses
  %i.alr = getelementptr inbounds nuw [8 x i8], ptr %i.alq, i64 %i.all
  store i64 0, ptr %i.alr, align 8, !noalias !19925
  %i.als = add i64 %.sroa.025.0.i, %.sroa.037.0.i ; 2 uses
  %i.alt = lshr i64 %i.als, 1
  %.sroa.047.0.i = sub i64 %i.als, %i.alt         ; 3 uses
  %i.alu = icmp ult i64 %i.ale, 1152921504606846976
  tail call void @llvm.assume(i1 %i.alu)
  %.not128.not.i = icmp ugt i64 %i.ale, %.sroa.047.0.i
  br i1 %.not128.not.i, label %bb.lc, label %bb.lb, !prof !36

bb.la:                                            ; preds = %bb.kx
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.all, i64 noundef %i.aln, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @220) #75, !noalias !19925
  unreachable

bb.lb:                                            ; preds = %bb.kz
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @221, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #75, !noalias !19925
  unreachable

bb.lc:                                            ; preds = %bb.kz
  %i.alv = icmp ult i64 %i.aln, 1152921504606846976
  tail call void @llvm.assume(i1 %i.alv)
  %.not129.not.i = icmp samesign ugt i64 %i.aln, %.sroa.047.0.i
  br i1 %.not129.not.i, label %.lr.ph125.i, label %bb.ld, !prof !36

.lr.ph125.i:                                      ; preds = %bb.lc
  %i.alw = add i64 %i.alb, -1
  %i.alx = add i64 %i.alk, -1
  %i.aly = add i64 %.sroa.025.0.i, %.sroa.0.0     ; 2 uses
  %i.alz = add i64 %.sroa.037.0.i, %.sroa.0442.0  ; 2 uses
  br label %bb.le

bb.ld:                                            ; preds = %bb.lc
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @223, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #75, !noalias !19925
  unreachable

bb.le:                                            ; preds = %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit149.thread.i, %.lr.ph125.i
  %.sroa.048.0124.i = phi i64 [ 0, %.lr.ph125.i ], [ %i.ama, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit149.thread.i ] ; 8 uses
  %i.ama = add nuw nsw i64 %.sroa.048.0124.i, 1
  %i.amb = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !19925
  br i1 %i.amb, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit, label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %bb.le, %bb.nt
  %.sroa.7.0111.i = phi i64 [ %i.amg, %bb.nt ], [ %.sroa.048.0124.i, %bb.le ]
  %not..sroa.1118.0110.i = phi i64 [ 1, %bb.nt ], [ 0, %bb.le ]
  %i.amc = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0111.i, i64 %not..sroa.1118.0110.i) ; 2 uses
  %i.amd = extractvalue { i64, i1 } %i.amc, 1
  %i.ame = extractvalue { i64, i1 } %i.amc, 0     ; 10 uses
  %i.amf = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ame, i64 -1) ; 2 uses
  %i.amg = extractvalue { i64, i1 } %i.amf, 0
  %i.amh = extractvalue { i64, i1 } %i.amf, 1
  %.not3.i.not.i = icmp slt i64 %i.ame, 0
  %or.cond45.i = or i1 %i.amd, %.not3.i.not.i
  br i1 %or.cond45.i, label %.lr.ph122.i.preheader, label %bb.lf

.lr.ph122.i.preheader:                            ; preds = %bb.nt, %.lr.ph112.i
  br label %.lr.ph122.i

bb.lf:                                            ; preds = %.lr.ph112.i
  %11 = icmp eq i64 %i.ame, 0
  br i1 %11, label %._crit_edge188.i, label %bb.mq

.lr.ph122.i:                                      ; preds = %.lr.ph122.i.preheader, %bb.ml
  %not..sroa.1427.0121.i = phi i64 [ 1, %bb.ml ], [ 0, %.lr.ph122.i.preheader ]
  %.sroa.726.0120.i = phi i64 [ %i.amm, %bb.ml ], [ %.sroa.048.0124.i, %.lr.ph122.i.preheader ]
  %i.ami = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.726.0120.i, i64 %not..sroa.1427.0121.i) ; 2 uses
  %i.amj = extractvalue { i64, i1 } %i.ami, 1
  %i.amk = extractvalue { i64, i1 } %i.ami, 0     ; 10 uses
  %i.aml = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.amk, i64 -1) ; 2 uses
  %i.amm = extractvalue { i64, i1 } %i.aml, 0
  %i.amn = extractvalue { i64, i1 } %i.aml, 1
  %.not3.i145.not.i = icmp slt i64 %i.amk, 0
  %or.cond47.i = or i1 %i.amj, %.not3.i145.not.i
  br i1 %or.cond47.i, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit149.thread.i, label %bb.lg

bb.lg:                                            ; preds = %.lr.ph122.i
  %i.amo = icmp eq i64 %i.amk, 0
  br i1 %i.amo, label %._crit_edge190.i, label %bb.lh

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit149.thread.i: ; preds = %bb.ml, %.lr.ph122.i
  %exitcond186.not.i = icmp eq i64 %.sroa.048.0124.i, %.sroa.047.0.i
  br i1 %exitcond186.not.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit, label %bb.le

bb.lh:                                            ; preds = %bb.lg
  %.not130.i = icmp eq i64 %i.amk, %.sroa.048.0124.i
  %.pre191.i = add i64 %i.alx, %i.amk             ; 6 uses
  br i1 %.not130.i, label %._crit_edge189.i, label %bb.li

._crit_edge190.i:                                 ; preds = %bb.ll, %bb.lg
  %.pre-phi.i = phi i64 [ %i.ams, %bb.ll ], [ %i.all, %bb.lg ] ; 3 uses
  %i.amp = icmp ult i64 %.pre-phi.i, %i.aln
  br i1 %i.amp, label %bb.lq, label %bb.lr

._crit_edge189.i:                                 ; preds = %bb.ll, %bb.lh
  %i.amq = icmp ult i64 %.pre191.i, %i.aln
  br i1 %i.amq, label %bb.ln, label %bb.lo

bb.li:                                            ; preds = %bb.lh
  %i.amr = icmp ult i64 %.pre191.i, %i.aln
  br i1 %i.amr, label %bb.lj, label %bb.lk

bb.lj:                                            ; preds = %bb.li
  %i.ams = add i64 %i.amk, %i.all                 ; 4 uses
  %i.amt = icmp ult i64 %i.ams, %i.aln
  br i1 %i.amt, label %bb.ll, label %bb.lm

bb.lk:                                            ; preds = %bb.li
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre191.i, i64 noundef %i.aln, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #75, !noalias !19925
  unreachable

bb.ll:                                            ; preds = %bb.lj
  %i.amu = getelementptr inbounds nuw [8 x i8], ptr %i.alq, i64 %.pre191.i
  %i.amv = load i64, ptr %i.amu, align 8, !noalias !19925, !noundef !29
  %i.amw = getelementptr inbounds nuw [8 x i8], ptr %i.alq, i64 %i.ams
  %i.amx = load i64, ptr %i.amw, align 8, !noalias !19925, !noundef !29
  %i.amy = icmp ult i64 %i.amv, %i.amx
  br i1 %i.amy, label %._crit_edge190.i, label %._crit_edge189.i

bb.lm:                                            ; preds = %bb.lj
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ams, i64 noundef %i.aln, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #75, !noalias !19925
  unreachable

bb.ln:                                            ; preds = %._crit_edge189.i
  %i.amz = getelementptr inbounds nuw [8 x i8], ptr %i.alq, i64 %.pre191.i
  %i.ana = load i64, ptr %i.amz, align 8, !noalias !19925, !noundef !29
  %i.anb = add i64 %i.ana, 1
  br label %bb.lp

bb.lo:                                            ; preds = %._crit_edge189.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre191.i, i64 noundef %i.aln, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #75, !noalias !19925
  unreachable

bb.lp:                                            ; preds = %bb.lq, %bb.ln
  %.sroa.014.0.i = phi i64 [ %i.ang, %bb.lq ], [ %i.anb, %bb.ln ] ; 5 uses
  %i.anc = sub i64 %.sroa.014.0.i, %i.amk         ; 4 uses
  %i.and = icmp ult i64 %.sroa.014.0.i, %.sroa.025.0.i
  %i.ane = icmp ult i64 %i.anc, %.sroa.037.0.i
  %or.cond.i359 = and i1 %i.and, %i.ane
  br i1 %or.cond.i359, label %bb.lt, label %bb.ls

bb.lq:                                            ; preds = %._crit_edge190.i
  %i.anf = getelementptr inbounds nuw [8 x i8], ptr %i.alq, i64 %.pre-phi.i
  %i.ang = load i64, ptr %i.anf, align 8, !noalias !19925, !noundef !29
  br label %bb.lp

bb.lr:                                            ; preds = %._crit_edge190.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi.i, i64 noundef %i.aln, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #75, !noalias !19925
  unreachable

bb.ls:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECskXtk6F4WjxZ_4just.exit.i, %bb.lp
  %.sroa.020.0.i = phi i64 [ %i.apg, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECskXtk6F4WjxZ_4just.exit.i ], [ %i.anc, %bb.lp ]
  %.sroa.014.1.i = phi i64 [ %i.apf, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.014.0.i, %bb.lp ] ; 3 uses
  %i.anh = add i64 %i.amk, %i.alk                 ; 3 uses
  %i.ani = icmp ult i64 %i.anh, %i.aln
  br i1 %i.ani, label %bb.mi, label %bb.mj

bb.lt:                                            ; preds = %bb.lp
  %i.anj = sub i64 %i.aly, %.sroa.014.0.i         ; 2 uses
  %i.ank = sub i64 %i.alz, %i.anc                 ; 2 uses
  %i.anl = sub i64 %i.anj, %.sroa.0.0
  %i.anm = sub i64 %i.ank, %.sroa.0442.0
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.anm, i64 %i.anl) ; 3 uses
  %.not128.i = icmp eq i64 %..i.i, 0
  br i1 %.not128.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECskXtk6F4WjxZ_4just.exit.i, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %bb.lt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  br label %bb.lu

bb.lu:                                            ; preds = %bb.mh, %.lr.ph115.i
  %.sroa.0.0.i136114.i = phi i64 [ 0, %.lr.ph115.i ], [ %i.ape, %bb.mh ] ; 4 uses
  %i.ann = xor i64 %.sroa.0.0.i136114.i, -1       ; 2 uses
  %i.ano = add i64 %i.ank, %i.ann                 ; 3 uses
  %i.anp = icmp ult i64 %i.ano, %.val71
  br i1 %i.anp, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ano, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #75, !noalias !19927
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.lu
  %i.anq = add i64 %i.anj, %i.ann                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %i.anr = icmp ult i64 %i.anq, %.val69
  br i1 %i.anr, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit150.i, label %bb.lw

bb.lw:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.anq, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #75, !noalias !19930
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit150.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i
  %i.ans = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.ano ; 2 uses
  %i.ant = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.anq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19936)
  %i.anu = load ptr, ptr %i.ans, align 8, !alias.scope !19933, !noalias !19938, !nonnull !29, !align !174, !noundef !29 ; 4 uses
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ans, i64 8
  %i.anw = load i64, ptr %i.anv, align 8, !alias.scope !19933, !noalias !19938, !noundef !29 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19942), !noalias !19945
  %i.anx = load i64, ptr %i.anu, align 8, !range !274, !alias.scope !19946, !noalias !19947, !noundef !29
  %i.any = trunc nuw i64 %i.anx to i1
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anu, i64 24
  %i.aoa = load i64, ptr %i.anz, align 8, !alias.scope !19946, !noalias !19947, !noundef !29
  %i.aob = icmp ult i64 %i.anw, %i.aoa            ; 2 uses
  br i1 %i.any, label %bb.lx, label %bb.ly

bb.lx:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit150.i
  br i1 %i.aob, label %bb.ma, label %bb.mb

bb.ly:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit150.i
  br i1 %i.aob, label %bb.lz, label %bb.mb

bb.lz:                                            ; preds = %bb.ly
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anu, i64 16
  %i.aod = load ptr, ptr %i.aoc, align 8, !alias.scope !19946, !noalias !19947, !nonnull !29, !noundef !29
  %i.aoe = getelementptr inbounds nuw [16 x i8], ptr %i.aod, i64 %i.anw ; 2 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoe, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i362

bb.ma:                                            ; preds = %bb.lx
  %i.aog = getelementptr inbounds nuw i8, ptr %i.anu, i64 16
  %i.aoh = load ptr, ptr %i.aog, align 8, !alias.scope !19946, !noalias !19947, !nonnull !29, !noundef !29
  %i.aoi = getelementptr inbounds nuw [24 x i8], ptr %i.aoh, i64 %i.anw ; 2 uses
  %i.aoj = getelementptr i8, ptr %i.aoi, i64 8
  %i.aok = getelementptr i8, ptr %i.aoi, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i362

bb.mb:                                            ; preds = %bb.ly, %bb.lx
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1648, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #75, !noalias !19949
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i362: ; preds = %bb.ma, %bb.lz
  %.sroa.5.1.i.in.i.i363 = phi ptr [ %i.aok, %bb.ma ], [ %i.aof, %bb.lz ]
  %.sroa.0.1.i.in.i.i364 = phi ptr [ %i.aoj, %bb.ma ], [ %i.aoe, %bb.lz ]
  %.sroa.0.1.i.i.i365 = load ptr, ptr %.sroa.0.1.i.in.i.i364, align 8, !noalias !19950, !nonnull !29, !noundef !29
  %.sroa.5.1.i.i.i366 = load i64, ptr %.sroa.5.1.i.in.i.i363, align 8, !noalias !19950, !noundef !29 ; 2 uses
  %i.aol = load ptr, ptr %i.ant, align 8, !alias.scope !19936, !noalias !19951, !nonnull !29, !align !174, !noundef !29 ; 4 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.ant, i64 8
  %i.aon = load i64, ptr %i.aom, align 8, !alias.scope !19936, !noalias !19951, !noundef !29 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19955), !noalias !19945
  %i.aoo = load i64, ptr %i.aol, align 8, !range !274, !alias.scope !19958, !noalias !19959, !noundef !29
  %i.aop = trunc nuw i64 %i.aoo to i1
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aol, i64 24
  %i.aor = load i64, ptr %i.aoq, align 8, !alias.scope !19958, !noalias !19959, !noundef !29
  %i.aos = icmp ult i64 %i.aon, %i.aor            ; 2 uses
  br i1 %i.aop, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i362
  br i1 %i.aos, label %bb.mf, label %bb.mg

bb.md:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i362
  br i1 %i.aos, label %bb.me, label %bb.mg

bb.me:                                            ; preds = %bb.md
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aol, i64 16
  %i.aou = load ptr, ptr %i.aot, align 8, !alias.scope !19958, !noalias !19959, !nonnull !29, !noundef !29
  %i.aov = getelementptr inbounds nuw [16 x i8], ptr %i.aou, i64 %i.aon ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit155.i

bb.mf:                                            ; preds = %bb.mc
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aol, i64 16
  %i.aoy = load ptr, ptr %i.aox, align 8, !alias.scope !19958, !noalias !19959, !nonnull !29, !noundef !29
  %i.aoz = getelementptr inbounds nuw [24 x i8], ptr %i.aoy, i64 %i.aon ; 2 uses
  %i.apa = getelementptr i8, ptr %i.aoz, i64 8
  %i.apb = getelementptr i8, ptr %i.aoz, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit155.i

bb.mg:                                            ; preds = %bb.md, %bb.mc
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1648, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #75, !noalias !19961
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit155.i: ; preds = %bb.mf, %bb.me
  %.sroa.5.1.i.in.i151.i = phi ptr [ %i.apb, %bb.mf ], [ %i.aow, %bb.me ]
  %.sroa.0.1.i.in.i152.i = phi ptr [ %i.apa, %bb.mf ], [ %i.aov, %bb.me ]
  %.sroa.5.1.i.i154.i = load i64, ptr %.sroa.5.1.i.in.i151.i, align 8, !noalias !19962, !noundef !29
  %i.apc = icmp eq i64 %.sroa.5.1.i.i.i366, %.sroa.5.1.i.i154.i
  br i1 %i.apc, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECskXtk6F4WjxZ_4just.exit.i

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit155.i
  %.sroa.0.1.i.i153.i = load ptr, ptr %.sroa.0.1.i.in.i152.i, align 8, !noalias !19962, !nonnull !29, !noundef !29
  %bcmp.i.i367 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.i365, ptr nonnull readonly %.sroa.0.1.i.i153.i, i64 %.sroa.5.1.i.i.i366), !alias.scope !19963, !noalias !19967
  %i.apd = icmp eq i32 %bcmp.i.i367, 0
  br i1 %i.apd, label %bb.mh, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECskXtk6F4WjxZ_4just.exit.i

bb.mh:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i
  %i.ape = add nuw i64 %.sroa.0.0.i136114.i, 1    ; 2 uses
  %exitcond185.not.i = icmp eq i64 %i.ape, %..i.i
  br i1 %exitcond185.not.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECskXtk6F4WjxZ_4just.exit.i, label %bb.lu

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.mh, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit155.i, %bb.lt
  %.sroa.0.0.i136.lcssa.i = phi i64 [ 0, %bb.lt ], [ %.sroa.0.0.i136114.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i ], [ %..i.i, %bb.mh ], [ %.sroa.0.0.i136114.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit155.i ] ; 2 uses
  %i.apf = add i64 %.sroa.0.0.i136.lcssa.i, %.sroa.014.0.i
  %i.apg = add i64 %.sroa.0.0.i136.lcssa.i, %i.anc
  br label %bb.ls

bb.mi:                                            ; preds = %bb.ls
  %i.aph = getelementptr inbounds nuw [8 x i8], ptr %i.alq, i64 %i.anh
  store i64 %.sroa.014.1.i, ptr %i.aph, align 8, !noalias !19925
  br i1 %.not.i357, label %bb.mk, label %bb.ml

bb.mj:                                            ; preds = %bb.ls
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.anh, i64 noundef %i.aln, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @229) #75, !noalias !19925
  unreachable

bb.mk:                                            ; preds = %bb.mi
  %i.api = sub i64 %i.amk, %i.aky                 ; 2 uses
  %.sroa.024.0.i = tail call i64 @llvm.abs.i64(i64 %i.api, i1 false)
  %.not131.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.048.0124.i
  br i1 %.not131.i, label %bb.ml, label %bb.mm

bb.ml:                                            ; preds = %bb.mn, %bb.mk, %bb.mi
  %i.apj = icmp slt i64 %i.amk, 1
  %12 = or i1 %i.apj, %i.amn
  br i1 %12, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit149.thread.i, label %.lr.ph122.i

bb.mm:                                            ; preds = %bb.mk
  %i.apk = sub i64 %i.alb, %i.api                 ; 3 uses
  %i.apl = icmp ult i64 %i.apk, %i.ale
  br i1 %i.apl, label %bb.mn, label %bb.mo

bb.mn:                                            ; preds = %bb.mm
  %i.apm = getelementptr inbounds nuw [8 x i8], ptr %i.alh, i64 %i.apk
  %i.apn = load i64, ptr %i.apm, align 8, !noalias !19925, !noundef !29
  %i.apo = add i64 %i.apn, %.sroa.014.1.i
  %.not132.i = icmp ult i64 %i.apo, %.sroa.025.0.i
  br i1 %.not132.i, label %bb.ml, label %bb.mp

bb.mo:                                            ; preds = %bb.mm
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.apk, i64 noundef %i.ale, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @230) #75, !noalias !19925
  unreachable

bb.mp:                                            ; preds = %bb.mn
  %i.app = sub i64 %i.aly, %.sroa.014.1.i
  %i.apq = sub i64 %i.alz, %.sroa.020.0.i
  br label %bb.nz

bb.mq:                                            ; preds = %bb.lf
  %.not133.i = icmp eq i64 %i.ame, %.sroa.048.0124.i
  %.pre195.i = add i64 %i.alw, %i.ame             ; 6 uses
  br i1 %.not133.i, label %._crit_edge187.i, label %bb.mr

._crit_edge188.i:                                 ; preds = %bb.mu, %bb.lf
  %.pre-phi194.i = phi i64 [ %i.apu, %bb.mu ], [ %i.alc, %bb.lf ] ; 3 uses
  %i.apr = icmp ult i64 %.pre-phi194.i, %i.ale
  br i1 %i.apr, label %bb.mz, label %bb.na

._crit_edge187.i:                                 ; preds = %bb.mu, %bb.mq
  %i.aps = icmp ult i64 %.pre195.i, %i.ale
  br i1 %i.aps, label %bb.mw, label %bb.mx

bb.mr:                                            ; preds = %bb.mq
  %i.apt = icmp ult i64 %.pre195.i, %i.ale
  br i1 %i.apt, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr
  %i.apu = add i64 %i.ame, %i.alc                 ; 4 uses
  %i.apv = icmp ult i64 %i.apu, %i.ale
  br i1 %i.apv, label %bb.mu, label %bb.mv

bb.mt:                                            ; preds = %bb.mr
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre195.i, i64 noundef %i.ale, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @231) #75, !noalias !19925
  unreachable

bb.mu:                                            ; preds = %bb.ms
  %i.apw = getelementptr inbounds nuw [8 x i8], ptr %i.alh, i64 %.pre195.i
  %i.apx = load i64, ptr %i.apw, align 8, !noalias !19925, !noundef !29
  %i.apy = getelementptr inbounds nuw [8 x i8], ptr %i.alh, i64 %i.apu
  %i.apz = load i64, ptr %i.apy, align 8, !noalias !19925, !noundef !29
  %i.aqa = icmp ult i64 %i.apx, %i.apz
  br i1 %i.aqa, label %._crit_edge188.i, label %._crit_edge187.i

bb.mv:                                            ; preds = %bb.ms
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.apu, i64 noundef %i.ale, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #75, !noalias !19925
  unreachable

bb.mw:                                            ; preds = %._crit_edge187.i
  %i.aqb = getelementptr inbounds nuw [8 x i8], ptr %i.alh, i64 %.pre195.i
  %i.aqc = load i64, ptr %i.aqb, align 8, !noalias !19925, !noundef !29
  %i.aqd = add i64 %i.aqc, 1
  br label %bb.my

bb.mx:                                            ; preds = %._crit_edge187.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre195.i, i64 noundef %i.ale, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @233) #75, !noalias !19925
  unreachable

bb.my:                                            ; preds = %bb.mz, %bb.mw
  %.sroa.04.0.i358 = phi i64 [ %i.aqi, %bb.mz ], [ %i.aqd, %bb.mw ] ; 6 uses
  %i.aqe = sub i64 %.sroa.04.0.i358, %i.ame       ; 3 uses
  %i.aqf = icmp ult i64 %.sroa.04.0.i358, %.pre
  %i.aqg = icmp ult i64 %i.aqe, %.pre1427
  %or.cond43.i = select i1 %i.aqf, i1 %i.aqg, i1 false
  br i1 %or.cond43.i, label %bb.nc, label %bb.nb

bb.mz:                                            ; preds = %._crit_edge188.i
  %i.aqh = getelementptr inbounds nuw [8 x i8], ptr %i.alh, i64 %.pre-phi194.i
  %i.aqi = load i64, ptr %i.aqh, align 8, !noalias !19925, !noundef !29
  br label %bb.my

bb.na:                                            ; preds = %._crit_edge188.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi194.i, i64 noundef %i.ale, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @234) #75, !noalias !19925
  unreachable

bb.nb:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECskXtk6F4WjxZ_4just.exit.i, %bb.my
  %.sroa.04.1.i = phi i64 [ %i.ase, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.04.0.i358, %bb.my ] ; 2 uses
  %i.aqj = add i64 %i.ame, %i.alb                 ; 3 uses
  %i.aqk = icmp ult i64 %i.aqj, %i.ale
  br i1 %i.aqk, label %bb.nr, label %bb.ns

bb.nc:                                            ; preds = %bb.my
  %i.aql = add i64 %.sroa.04.0.i358, %.sroa.0.0   ; 4 uses
  %i.aqm = add i64 %i.aqe, %.sroa.0442.0          ; 3 uses
  %i.aqn = sub i64 %i.cw, %i.aql
  %i.aqo = sub i64 %i.cx, %i.aqm
  %..i157.i = tail call noundef i64 @llvm.umin.i64(i64 %i.aqo, i64 %i.aqn) ; 3 uses
  %.not127.i = icmp eq i64 %..i157.i, 0
  br i1 %.not127.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i368

.lr.ph.i368:                                      ; preds = %bb.nc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  %umax183.i = tail call i64 @llvm.umax.i64(i64 %.val69, i64 %i.aql) ; 2 uses
  %i.aqp = sub i64 %umax183.i, %i.aql
  %invariant.gep.i369 = getelementptr [16 x i8], ptr %.val68, i64 %i.aql
  br label %bb.nd

bb.nd:                                            ; preds = %bb.nq, %.lr.ph.i368
  %.sroa.0.0.i106.i = phi i64 [ 0, %.lr.ph.i368 ], [ %i.asd, %bb.nq ] ; 6 uses
  %i.aqq = add nuw i64 %.sroa.0.0.i106.i, %i.aqm  ; 2 uses
  %i.aqr = icmp ult i64 %i.aqq, %.val71
  br i1 %i.aqr, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit158.i, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %umax.i370 = tail call i64 @llvm.umax.i64(i64 %.val71, i64 %i.aqm)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax.i370, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #75, !noalias !19968
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit158.i: ; preds = %bb.nd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %exitcond.not.i371 = icmp eq i64 %.sroa.0.0.i106.i, %i.aqp
  br i1 %exitcond.not.i371, label %bb.nf, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159.i

bb.nf:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit158.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax183.i, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #75, !noalias !19971
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit158.i
  %i.aqs = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.aqq ; 2 uses
  %gep.i372 = getelementptr [16 x i8], ptr %invariant.gep.i369, i64 %.sroa.0.0.i106.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19977)
  %i.aqt = load ptr, ptr %i.aqs, align 8, !alias.scope !19974, !noalias !19979, !nonnull !29, !align !174, !noundef !29 ; 4 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqs, i64 8
  %i.aqv = load i64, ptr %i.aqu, align 8, !alias.scope !19974, !noalias !19979, !noundef !29 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19983), !noalias !19986
  %i.aqw = load i64, ptr %i.aqt, align 8, !range !274, !alias.scope !19987, !noalias !19988, !noundef !29
  %i.aqx = trunc nuw i64 %i.aqw to i1
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqt, i64 24
  %i.aqz = load i64, ptr %i.aqy, align 8, !alias.scope !19987, !noalias !19988, !noundef !29
  %i.ara = icmp ult i64 %i.aqv, %i.aqz            ; 2 uses
  br i1 %i.aqx, label %bb.ng, label %bb.nh

bb.ng:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159.i
  br i1 %i.ara, label %bb.nj, label %bb.nk

bb.nh:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit159.i
  br i1 %i.ara, label %bb.ni, label %bb.nk

bb.ni:                                            ; preds = %bb.nh
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqt, i64 16
  %i.arc = load ptr, ptr %i.arb, align 8, !alias.scope !19987, !noalias !19988, !nonnull !29, !noundef !29
  %i.ard = getelementptr inbounds nuw [16 x i8], ptr %i.arc, i64 %i.aqv ; 2 uses
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit164.i

bb.nj:                                            ; preds = %bb.ng
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqt, i64 16
  %i.arg = load ptr, ptr %i.arf, align 8, !alias.scope !19987, !noalias !19988, !nonnull !29, !noundef !29
  %i.arh = getelementptr inbounds nuw [24 x i8], ptr %i.arg, i64 %i.aqv ; 2 uses
  %i.ari = getelementptr i8, ptr %i.arh, i64 8
  %i.arj = getelementptr i8, ptr %i.arh, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit164.i

bb.nk:                                            ; preds = %bb.nh, %bb.ng
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1648, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #75, !noalias !19990
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit164.i: ; preds = %bb.nj, %bb.ni
  %.sroa.5.1.i.in.i160.i = phi ptr [ %i.arj, %bb.nj ], [ %i.are, %bb.ni ]
  %.sroa.0.1.i.in.i161.i = phi ptr [ %i.ari, %bb.nj ], [ %i.ard, %bb.ni ]
  %.sroa.0.1.i.i162.i = load ptr, ptr %.sroa.0.1.i.in.i161.i, align 8, !noalias !19991, !nonnull !29, !noundef !29
  %.sroa.5.1.i.i163.i = load i64, ptr %.sroa.5.1.i.in.i160.i, align 8, !noalias !19991, !noundef !29 ; 2 uses
  %i.ark = load ptr, ptr %gep.i372, align 8, !alias.scope !19977, !noalias !19992, !nonnull !29, !align !174, !noundef !29 ; 4 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %gep.i372, i64 8
  %i.arm = load i64, ptr %i.arl, align 8, !alias.scope !19977, !noalias !19992, !noundef !29 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19993)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19996), !noalias !19986
  %i.arn = load i64, ptr %i.ark, align 8, !range !274, !alias.scope !19999, !noalias !20000, !noundef !29
  %i.aro = trunc nuw i64 %i.arn to i1
  %i.arp = getelementptr inbounds nuw i8, ptr %i.ark, i64 24
  %i.arq = load i64, ptr %i.arp, align 8, !alias.scope !19999, !noalias !20000, !noundef !29
  %i.arr = icmp ult i64 %i.arm, %i.arq            ; 2 uses
  br i1 %i.aro, label %bb.nl, label %bb.nm

bb.nl:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit164.i
  br i1 %i.arr, label %bb.no, label %bb.np

bb.nm:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit164.i
  br i1 %i.arr, label %bb.nn, label %bb.np

bb.nn:                                            ; preds = %bb.nm
  %i.ars = getelementptr inbounds nuw i8, ptr %i.ark, i64 16
  %i.art = load ptr, ptr %i.ars, align 8, !alias.scope !19999, !noalias !20000, !nonnull !29, !noundef !29
  %i.aru = getelementptr inbounds nuw [16 x i8], ptr %i.art, i64 %i.arm ; 2 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit169.i

bb.no:                                            ; preds = %bb.nl
  %i.arw = getelementptr inbounds nuw i8, ptr %i.ark, i64 16
  %i.arx = load ptr, ptr %i.arw, align 8, !alias.scope !19999, !noalias !20000, !nonnull !29, !noundef !29
  %i.ary = getelementptr inbounds nuw [24 x i8], ptr %i.arx, i64 %i.arm ; 2 uses
  %i.arz = getelementptr i8, ptr %i.ary, i64 8
  %i.asa = getelementptr i8, ptr %i.ary, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit169.i

bb.np:                                            ; preds = %bb.nm, %bb.nl
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1648, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #75, !noalias !20002
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit169.i: ; preds = %bb.no, %bb.nn
  %.sroa.5.1.i.in.i165.i = phi ptr [ %i.asa, %bb.no ], [ %i.arv, %bb.nn ]
  %.sroa.0.1.i.in.i166.i = phi ptr [ %i.arz, %bb.no ], [ %i.aru, %bb.nn ]
  %.sroa.5.1.i.i168.i = load i64, ptr %.sroa.5.1.i.in.i165.i, align 8, !noalias !20003, !noundef !29
  %i.asb = icmp eq i64 %.sroa.5.1.i.i163.i, %.sroa.5.1.i.i168.i
  br i1 %i.asb, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit172.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECskXtk6F4WjxZ_4just.exit.i

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit172.i: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit169.i
  %.sroa.0.1.i.i167.i = load ptr, ptr %.sroa.0.1.i.in.i166.i, align 8, !noalias !20003, !nonnull !29, !noundef !29
  %bcmp.i171.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i162.i, ptr nonnull readonly %.sroa.0.1.i.i167.i, i64 %.sroa.5.1.i.i163.i), !alias.scope !20004, !noalias !20008
  %i.asc = icmp eq i32 %bcmp.i171.i, 0
  br i1 %i.asc, label %bb.nq, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECskXtk6F4WjxZ_4just.exit.i

bb.nq:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit172.i
  %i.asd = add nuw i64 %.sroa.0.0.i106.i, 1       ; 2 uses
  %exitcond184.not.i = icmp eq i64 %i.asd, %..i157.i
  br i1 %exitcond184.not.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECskXtk6F4WjxZ_4just.exit.i, label %bb.nd

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_ECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.nq, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit172.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit169.i, %bb.nc
  %.sroa.0.0.i.lcssa.i = phi i64 [ 0, %bb.nc ], [ %.sroa.0.0.i106.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit172.i ], [ %..i157.i, %bb.nq ], [ %.sroa.0.0.i106.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit169.i ]
  %i.ase = add i64 %.sroa.0.0.i.lcssa.i, %.sroa.04.0.i358
  br label %bb.nb

bb.nr:                                            ; preds = %bb.nb
  %i.asf = getelementptr inbounds nuw [8 x i8], ptr %i.alh, i64 %i.aqj
  store i64 %.sroa.04.1.i, ptr %i.asf, align 8, !noalias !19925
  br i1 %.not.i357, label %bb.nt, label %bb.nu

bb.ns:                                            ; preds = %bb.nb
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aqj, i64 noundef %i.ale, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #75, !noalias !19925
  unreachable

bb.nt:                                            ; preds = %bb.nw, %bb.nu, %bb.nr
  %i.asg = icmp slt i64 %i.ame, 1
  %13 = or i1 %i.asg, %i.amh
  br i1 %13, label %.lr.ph122.i.preheader, label %.lr.ph112.i

bb.nu:                                            ; preds = %bb.nr
  %i.ash = sub i64 %i.ame, %i.aky                 ; 2 uses
  %.sroa.010.0.i = tail call i64 @llvm.abs.i64(i64 %i.ash, i1 false)
  %.not134.not.i = icmp slt i64 %.sroa.010.0.i, %.sroa.048.0124.i
  br i1 %.not134.not.i, label %bb.nv, label %bb.nt

bb.nv:                                            ; preds = %bb.nu
  %i.asi = sub i64 %i.alk, %i.ash                 ; 3 uses
  %i.asj = icmp ult i64 %i.asi, %i.aln
  br i1 %i.asj, label %bb.nw, label %bb.nx

bb.nw:                                            ; preds = %bb.nv
  %i.ask = getelementptr inbounds nuw [8 x i8], ptr %i.alq, i64 %i.asi
  %i.asl = load i64, ptr %i.ask, align 8, !noalias !19925, !noundef !29
  %i.asm = add i64 %i.asl, %.sroa.04.1.i
  %.not135.i = icmp ult i64 %i.asm, %.sroa.025.0.i
  br i1 %.not135.i, label %bb.nt, label %bb.ny

bb.nx:                                            ; preds = %bb.nv
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.asi, i64 noundef %i.aln, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @236) #75, !noalias !19925
  unreachable

bb.ny:                                            ; preds = %bb.nw
  %i.asn = add i64 %.sroa.04.0.i358, %.sroa.0.0
  %i.aso = add i64 %i.aqe, %.sroa.0442.0
  br label %bb.nz

bb.nz:                                            ; preds = %bb.ny, %bb.mp
  %.sroa.7.0.ph = phi i64 [ %i.aso, %bb.ny ], [ %i.apq, %bb.mp ] ; 2 uses
  %.sroa.5.0.ph = phi i64 [ %i.asn, %bb.ny ], [ %i.app, %bb.mp ] ; 2 uses
  tail call fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2o_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(208) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.0.0, i64 noundef %.sroa.5.0.ph, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.0442.0, i64 noundef %.sroa.7.0.ph, ptr noalias nofree noundef align 8 dereferenceable(32) %7, ptr noalias nofree noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2o_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(208) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.5.0.ph, i64 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.7.0.ph, i64 noundef %i.cx, ptr noalias nofree noundef align 8 dereferenceable(32) %7, ptr noalias nofree noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread515

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCskXtk6F4WjxZ_4just.exit149.thread.i, %bb.le
  tail call fastcc void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB6_4text12TextDiffSideeEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.0.0.copyload.i373 = load i64, ptr %0, align 8, !alias.scope !20009
  %i.asp = trunc nuw i64 %.sroa.0.0.copyload.i373 to i1
  br i1 %i.asp, label %bb.oa, label %bb.ob

bb.oa:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.6.0.copyload.i378 = load i64, ptr %.sroa.6.0..sroa_idx.i145, align 8, !alias.scope !20009
  %i.asq = add i64 %.sroa.6.0.copyload.i378, %.pre
  br label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit379

bb.ob:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_ECskXtk6F4WjxZ_4just.exit
  store i64 %.sroa.0.0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !20009
  store i64 %.sroa.0442.0, ptr %.sroa.7.0..sroa_idx.i146, align 8, !alias.scope !20009
  br label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit379

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit379: ; preds = %bb.oa, %bb.ob
  %.sink.i377 = phi i64 [ %i.asq, %bb.oa ], [ %.pre, %bb.ob ]
  store i64 1, ptr %0, align 8, !alias.scope !20009
  store i64 %.sink.i377, ptr %.sroa.6.0..sroa_idx.i145, align 8, !alias.scope !20009
  tail call fastcc void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB6_4text12TextDiffSideeEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.01.0.copyload.i380 = load i64, ptr %i.dc, align 8, !alias.scope !20012
  %.sroa.52.0.copyload.i382 = load i64, ptr %.sroa.52.0..sroa_idx.i136, align 8, !alias.scope !20012
  %.sroa.6.0.copyload.i384 = load i64, ptr %.sroa.6.0..sroa_idx.i138, align 8, !alias.scope !20012
  %.sroa.7.0.copyload.i386 = load i64, ptr %.sroa.7.0..sroa_idx.i140, align 8, !alias.scope !20012
  %i.asr = trunc nuw i64 %.sroa.01.0.copyload.i380 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i387 = select i1 %i.asr, i64 %.sroa.52.0.copyload.i382, i64 %.sroa.0.0
  %.sroa.5.sroa.5.0.i388 = select i1 %i.asr, i64 %.sroa.6.0.copyload.i384, i64 %.sroa.0442.0
  %i.ass = select i1 %i.asr, i64 %.sroa.7.0.copyload.i386, i64 0
  %.sroa.5.sroa.6.0.i389 = add i64 %i.ass, %.pre1427
  store i64 1, ptr %i.dc, align 8, !alias.scope !20012
  store i64 %.sroa.5.sroa.0.0.i387, ptr %.sroa.52.0..sroa_idx.i136, align 8, !alias.scope !20012
  store i64 %.sroa.5.sroa.5.0.i388, ptr %.sroa.6.0..sroa_idx.i138, align 8, !alias.scope !20012
  store i64 %.sroa.5.sroa.6.0.i389, ptr %.sroa.7.0..sroa_idx.i140, align 8, !alias.scope !20012
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread515

.thread:                                          ; preds = %bb.cc
  %i.ast = sub nuw i64 %i.cx, %.sroa.0442.0
  tail call fastcc void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB6_4text12TextDiffSideeEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.01.0.copyload.i390 = load i64, ptr %i.dc, align 8, !alias.scope !20015
  %.sroa.52.0.copyload.i392 = load i64, ptr %.sroa.52.0..sroa_idx.i136, align 8, !alias.scope !20015
  %.sroa.6.0.copyload.i394 = load i64, ptr %.sroa.6.0..sroa_idx.i138, align 8, !alias.scope !20015
  %.sroa.7.0.copyload.i396 = load i64, ptr %.sroa.7.0..sroa_idx.i140, align 8, !alias.scope !20015
  %i.asu = trunc nuw i64 %.sroa.01.0.copyload.i390 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i397 = select i1 %i.asu, i64 %.sroa.52.0.copyload.i392, i64 %.sroa.0.0
  %.sroa.5.sroa.5.0.i398 = select i1 %i.asu, i64 %.sroa.6.0.copyload.i394, i64 %.sroa.0442.0
  %i.asv = select i1 %i.asu, i64 %.sroa.7.0.copyload.i396, i64 0
  %.sroa.5.sroa.6.0.i399 = add i64 %i.ast, %i.asv
  store i64 1, ptr %i.dc, align 8, !alias.scope !20015
  store i64 %.sroa.5.sroa.0.0.i397, ptr %.sroa.52.0..sroa_idx.i136, align 8, !alias.scope !20015
  store i64 %.sroa.5.sroa.5.0.i398, ptr %.sroa.6.0..sroa_idx.i138, align 8, !alias.scope !20015
  store i64 %.sroa.5.sroa.6.0.i399, ptr %.sroa.7.0..sroa_idx.i140, align 8, !alias.scope !20015
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread515

bb.oc:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread515
  store i64 0, ptr %0, align 8, !alias.scope !20018
  store i64 0, ptr %i.dc, align 8, !alias.scope !20018
  %.sroa.01.0.copyload.i400 = load i64, ptr %i.dd, align 8, !alias.scope !20023
  %.sroa.52.0.copyload.i402 = load i64, ptr %.sroa.52.0..sroa_idx.i126, align 8, !alias.scope !20023
  %.sroa.6.0.copyload.i404 = load i64, ptr %.sroa.6.0..sroa_idx.i128, align 8, !alias.scope !20023
  %.sroa.7.0.copyload.i406 = load i64, ptr %.sroa.7.0..sroa_idx.i130, align 8, !alias.scope !20023
  %i.asw = trunc nuw i64 %.sroa.01.0.copyload.i400 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i407 = select i1 %i.asw, i64 %.sroa.52.0.copyload.i402, i64 %i.cw
  %.sroa.5.sroa.5.0.i408 = select i1 %i.asw, i64 %.sroa.6.0.copyload.i404, i64 %i.cx
  %i.asx = select i1 %i.asw, i64 %.sroa.7.0.copyload.i406, i64 0
  %.sroa.5.sroa.6.0.i409 = add i64 %i.asx, %.sroa.0.0.i93
  store i64 1, ptr %i.dd, align 8, !alias.scope !20023
  store i64 %.sroa.5.sroa.0.0.i407, ptr %.sroa.52.0..sroa_idx.i126, align 8, !alias.scope !20023
  store i64 %.sroa.5.sroa.5.0.i408, ptr %.sroa.6.0..sroa_idx.i128, align 8, !alias.scope !20023
  store i64 %.sroa.5.sroa.6.0.i409, ptr %.sroa.7.0..sroa_idx.i130, align 8, !alias.scope !20023
  br label %bb.od

bb.od:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread515, %bb.oc
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtB6_4text12TextDiffSideeEB13_ECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp uge i64 %1, %2
  %i.b = icmp uge i64 %4, %5
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtB27_4text12TextDiffSideeEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3F_5count0ECskXtk6F4WjxZ_4just.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i = sub nuw i64 %5, %4
  %spec.select.i.i4.i.i = sub nuw i64 %2, %1
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i, i64 %spec.select.i.i.i.i) ; 9 uses
  %.not = icmp eq i64 %..i.i.i, 0
  br i1 %.not, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtB27_4text12TextDiffSideeEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3F_5count0ECskXtk6F4WjxZ_4just.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.c = load i64, ptr %3, align 8, !range !274, !alias.scope !20024, !noalias !20029, !noundef !29
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !20024, !noalias !20029, !noundef !29
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.g, align 8, !nonnull !29 ; 2 uses
  %i.k = load i64, ptr %0, align 8, !range !274
  %.fr = freeze i64 %i.k
  %i.l = trunc i64 %.fr to i1                     ; 2 uses
  %i.m = load i64, ptr %i.h, align 8
  %i.n = load ptr, ptr %i.i, align 8, !nonnull !29 ; 4 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20043), !noalias !20044
  %exitcond33.not = icmp eq i64 %.sroa.01.023.i.i.i.us, %i.o
  br i1 %exitcond33.not, label %.split.us.i.i.i, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.us: ; preds = %.lr.ph.split.i.i.i.us
  %gep66 = getelementptr [16 x i8], ptr %invariant.gep65, i64 %.sroa.01.023.i.i.i.us ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %gep66, i64 8
  %.sroa.0.1.i.i.i.i.i.i.us = load ptr, ptr %gep66, align 8, !noalias !20045, !nonnull !29, !noundef !29
  %.sroa.5.1.i.i.i.i.i.i.us = load i64, ptr %i.r, align 8, !noalias !20045, !noundef !29 ; 2 uses
  %exitcond35.not = icmp eq i64 %.sroa.01.023.i.i.i.us, %i.p
  br i1 %exitcond35.not, label %.split28.us.i.i.i, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i.i.i.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i.i.i.us: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.us
  %gep68 = getelementptr [24 x i8], ptr %invariant.gep67, i64 %.sroa.01.023.i.i.i.us ; 2 uses
  %i.s = getelementptr i8, ptr %gep68, i64 16
  %.sroa.5.1.i.i9.i.i.i.i.us = load i64, ptr %i.s, align 8, !noalias !20046, !noundef !29
  %i.t = icmp eq i64 %.sroa.5.1.i.i.i.i.i.i.us, %.sroa.5.1.i.i9.i.i.i.i.us
  br i1 %i.t, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtB27_4text12TextDiffSideeEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3F_5count0ECskXtk6F4WjxZ_4just.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit10.i.i.i.i.us
  %i.u = getelementptr i8, ptr %gep68, i64 8
  %.sroa.0.1.i.i8.i.i.i.i.us = load ptr, ptr %i.u, align 8, !noalias !20046, !nonnull !29, !noundef !29
  %bcmp.i.i.i.i.i.us = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.i.i.i.i.us, ptr nonnull readonly %.sroa.0.1.i.i8.i.i.i.i.us, i64 %.sroa.5.1.i.i.i.i.i.i.us), !alias.scope !20052, !noalias !20056
  %i.v = icmp eq i32 %bcmp.i.i.i.i.i.us, 0
  br i1 %i.v, label %bb.c, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtB27_4text12TextDiffSideeEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3F_5count0ECskXtk6F4WjxZ_4just.exit

bb.c:                                             ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us
  %exitcond.not.i.i.i.us = icmp eq i64 %i.q, %..i.i.i
  br i1 %exitcond.not.i.i.i.us, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtB27_4text12TextDiffSideeEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3F_5count0ECskXtk6F4WjxZ_4just.exit, label %.lr.ph.split.i.i.i.us

.lr.ph.split.us.i.i.i.preheader:                  ; preds = %.lr.ph.i.i.i
  %invariant.gep73 = getelementptr [24 x i8], ptr %i.j, i64 %4 ; 2 uses
  br i1 %i.l, label %.lr.ph.split.us.i.i.i.us.preheader, label %.lr.ph.split.us.i.i.i.preheader16

.lr.ph.split.us.i.i.i.preheader16:                ; preds = %.lr.ph.split.us.i.i.i.preheader
  %invariant.gep71 = getelementptr [16 x i8], ptr %i.n, i64 %1
  br label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i.us.preheader:               ; preds = %.lr.ph.split.us.i.i.i.preheader
  %invariant.gep75 = getelementptr [24 x i8], ptr %i.n, i64 %1
end_hunk_2
