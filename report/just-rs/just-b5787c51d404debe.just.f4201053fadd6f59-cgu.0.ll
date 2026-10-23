Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27266
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 594
loop-unroll.NumUnrolled: 719
begin_hunk_0_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB6_4text12TextDiffSideeEB14_INtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just:bb.a
  %.val21 = load ptr, ptr %i.l, align 8, !nonnull !28, !noundef !28
  %i.m = shl nuw i64 %.val20, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !15670
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24

bb.g:                                             ; preds = %bb.d
  invoke fastcc void @_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(160) %0)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %.val18 = load i64, ptr %i.a, align 8, !alias.scope !105 ; 2 uses
  %i.n = icmp eq i64 %.val18, 0
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit25, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val19 = load ptr, ptr %i.o, align 8, !nonnull !28, !noundef !28
  %i.p = shl nuw i64 %.val18, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !15671
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit25

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit25: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load i64, ptr %i.b, align 8, !alias.scope !105 ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit26, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit25
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val17 = load ptr, ptr %i.r, align 8, !nonnull !28, !noundef !28
  %i.s = shl nuw i64 %.val, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !15672
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit26

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit26: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit25, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit: ; preds = %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VECskXtk6F4WjxZ_4just.exit24
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactIBT_mEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15917)
  %i.b = icmp uge i64 %2, %3
  %i.c = icmp uge i64 %5, %6
  %or.cond.i53 = or i1 %i.b, %i.c
  br i1 %or.cond.i53, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i.i = sub nuw i64 %6, %5
  %spec.select.i.i4.i.i.i = sub nuw i64 %3, %2
  %..i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i54 = icmp eq i64 %..i.i.i.i, 0
  br i1 %.not.i54, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !15918, !noalias !15919, !noundef !28
  %invariant.op.i.i.i.i = sub i64 %5, %i.e        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !15918, !noalias !15919, !noundef !28 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.h, align 8, !alias.scope !15917, !nonnull !28
  %i.m = load i64, ptr %i.i, align 8, !alias.scope !15916
  %invariant.op.i = sub i64 %2, %i.m              ; 2 uses
  %i.n = load i64, ptr %i.j, align 8, !alias.scope !15916 ; 3 uses
  %i.o = load ptr, ptr %i.k, align 8, !alias.scope !15916, !nonnull !28
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sroa.01.033.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.p, %bb.f ] ; 5 uses
  %i.p = add nuw i64 %.sroa.01.033.i.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15920)
  %.reass.i.i.i.i = add nuw i64 %.sroa.01.033.i.i.i.i, %invariant.op.i.i.i.i ; 2 uses
  %i.q = icmp ult i64 %.reass.i.i.i.i, %i.g
  br i1 %i.q, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %invariant.op.i.i.i.i)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @564) #74, !noalias !15921
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i: ; preds = %bb.c
  %.reass.i = add nuw i64 %.sroa.01.033.i.i.i.i, %invariant.op.i ; 2 uses
  %i.r = icmp ult i64 %.reass.i, %i.n
  br i1 %i.r, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i
  %umax17.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %invariant.op.i)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax17.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565) #74, !noalias !15922
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.reass.i.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.reass.i
  %.val.i.i.i.i.i = load i64, ptr %i.s, align 8, !noalias !15923, !noundef !28
  %.val7.i.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !15923, !noundef !28
  %i.u = icmp eq i64 %.val.i.i.i.i.i, %.val7.i.i.i.i.i
  br i1 %i.u, label %bb.f, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit

bb.f:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, %..i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread318, label %bb.c

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %.not = icmp eq i64 %.sroa.01.033.i.i.i.i, 0
  br i1 %.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread318

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.b, %bb.a, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i55317 = phi i64 [ 0, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0.0.i55321, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.v = add i64 %.sroa.0.0.i55317, %2            ; 3 uses
  %i.w = add i64 %.sroa.0.0.i55317, %5            ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15925)
  %i.x = icmp uge i64 %i.v, %3
  %i.y = icmp uge i64 %i.w, %6
  %or.cond.i56 = or i1 %i.x, %i.y
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br i1 %or.cond.i56, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge, label %.lr.ph.i.i.i.i57

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge: ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert1043 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre1044 = load i64, ptr %.phi.trans.insert1043, align 8
  %.phi.trans.insert1045 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre1046 = load ptr, ptr %.phi.trans.insert1045, align 8
  %.phi.trans.insert1047 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre1048 = load i64, ptr %.phi.trans.insert1047, align 8
  %.phi.trans.insert1049 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre1050 = load i64, ptr %.phi.trans.insert1049, align 8
  %.phi.trans.insert1051 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre1052 = load ptr, ptr %.phi.trans.insert1051, align 8
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit

.lr.ph.i.i.i.i57:                                 ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = sub nuw i64 %3, %i.v                    ; 2 uses
  %i.af = sub nuw i64 %6, %i.w                    ; 2 uses
  %i.ag = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !15925 ; 4 uses
  %i.ah = load i64, ptr %i.z, align 8, !alias.scope !15925 ; 5 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !alias.scope !15925, !nonnull !28 ; 4 uses
  %i.aj = load i64, ptr %i.ab, align 8, !alias.scope !15924 ; 4 uses
  %i.ak = load i64, ptr %i.ac, align 8, !alias.scope !15924 ; 5 uses
  %i.al = load ptr, ptr %i.ad, align 8, !alias.scope !15924, !nonnull !28 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i57
  %i.am = phi i64 [ %3, %.lr.ph.i.i.i.i57 ], [ %i.ap, %bb.k ]
  %.sroa.01.030.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i57 ], [ %i.ax, %bb.k ] ; 3 uses
  %i.an = phi i64 [ %6, %.lr.ph.i.i.i.i57 ], [ %i.ao, %bb.k ]
  %i.ao = add i64 %i.an, -1                       ; 2 uses
  %exitcond.not.i.i.i.i58 = icmp eq i64 %.sroa.01.030.i.i.i.i, %i.ae
  br i1 %exitcond.not.i.i.i.i58, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = add i64 %i.am, -1                       ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ag                    ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %i.ah
  br i1 %i.ar, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i59, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aq, i64 noundef %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @566) #74, !noalias !15926
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i59: ; preds = %bb.h
  %i.as = sub i64 %i.ap, %i.aj                    ; 3 uses
  %i.at = icmp ult i64 %i.as, %i.ak
  br i1 %i.at, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60, label %bb.j

bb.j:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i59
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.as, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @567) #74, !noalias !15927
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i59
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aq
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.as
  %.val.i.i.i.i.i61 = load i64, ptr %i.au, align 8, !noalias !15928, !noundef !28
  %.val7.i.i.i.i.i62 = load i64, ptr %i.av, align 8, !noalias !15928, !noundef !28
  %i.aw = icmp eq i64 %.val.i.i.i.i.i61, %.val7.i.i.i.i.i62
  br i1 %i.aw, label %bb.k, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit

bb.k:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60
  %i.ax = add nuw i64 %.sroa.01.030.i.i.i.i, 1    ; 2 uses
  %exitcond62.not.i.i.i.i = icmp eq i64 %i.ax, %i.af
  br i1 %exitcond62.not.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit, label %bb.g

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit: ; preds = %bb.g, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60, %bb.k, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge
  %i.ay = phi ptr [ %.pre1052, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.al, %bb.k ], [ %i.al, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.al, %bb.g ] ; 10 uses
  %i.az = phi i64 [ %.pre1050, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ak, %bb.k ], [ %i.ak, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.ak, %bb.g ] ; 24 uses
  %i.ba = phi i64 [ %.pre1048, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.aj, %bb.k ], [ %i.aj, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.aj, %bb.g ] ; 5 uses
  %i.bb = phi ptr [ %.pre1046, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ai, %bb.k ], [ %i.ai, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.ai, %bb.g ] ; 11 uses
  %i.bc = phi i64 [ %.pre1044, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ah, %bb.k ], [ %i.ah, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.ah, %bb.g ] ; 29 uses
  %i.bd = phi i64 [ %.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ag, %bb.k ], [ %i.ag, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.ag, %bb.g ] ; 8 uses
  %.sroa.0.0.i63 = phi i64 [ 0, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ae, %bb.g ], [ %.sroa.01.030.i.i.i.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.af, %bb.k ] ; 4 uses
  %i.be = sub i64 %3, %.sroa.0.0.i63              ; 9 uses
  %i.bf = sub i64 %6, %.sroa.0.0.i63              ; 9 uses
  br label %bb.m

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread318: ; preds = %bb.f, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i55321 = phi i64 [ %.sroa.01.033.i.i.i.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit ], [ %..i.i.i.i, %bb.f ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15930)
  %i.bg = load ptr, ptr %0, align 8, !alias.scope !15931, !nonnull !28, !align !35, !noundef !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15933), !noalias !15931
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !15934, !noalias !15931, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 120 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 136 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !15935, !noalias !15936, !noundef !28 ; 3 uses
  %i.bl = load i64, ptr %i.bi, align 8, !range !43, !alias.scope !15935, !noalias !15936, !noundef !28
  %i.bm = icmp eq i64 %i.bk, %i.bl
  br i1 %i.bm, label %bb.l, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit

bb.l:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread318
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi) #73, !noalias !15937
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit: ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread318, %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !15935, !noalias !15936, !nonnull !28, !noundef !28
  %i.bp = getelementptr inbounds nuw [40 x i8], ptr %i.bo, i64 %i.bk ; 4 uses
  store i64 0, ptr %i.bp, align 8, !noalias !15936
  %.sroa.4271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %2, ptr %.sroa.4271.0..sroa_idx, align 8, !noalias !15936
  %.sroa.5272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 %5, ptr %.sroa.5272.0..sroa_idx, align 8, !noalias !15936
  %.sroa.6273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i64 %.sroa.0.0.i55321, ptr %.sroa.6273.0..sroa_idx, align 8, !noalias !15936
  %i.bq = add i64 %i.bk, 1
  store i64 %i.bq, ptr %i.bj, align 8, !alias.scope !15935, !noalias !15936
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread

bb.m:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0218.0 = phi i64 [ %i.w, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0218.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.v, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit ] ; 33 uses
  %i.br = icmp ult i64 %.sroa.0.0, %i.be          ; 2 uses
  %i.bs = icmp ult i64 %.sroa.0218.0, %i.bf       ; 3 uses
  %or.cond347 = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond347, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, %bb.m
  br i1 %i.br, label %bb.az, label %bb.ba

bb.o:                                             ; preds = %bb.m
  %i.bt = sub nuw i64 %i.be, %.sroa.0.0           ; 6 uses
  %i.bu = sub nuw i64 %i.bf, %.sroa.0218.0        ; 6 uses
  %i.bv = icmp ult i64 %i.bt, 97
  %i.bw = icmp ult i64 %i.bu, 97
  %or.cond.i = or i1 %i.bw, %i.bv
  br i1 %or.cond.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bt) ; 2 uses
  %..i64 = tail call noundef i64 @llvm.umax.i64(i64 %i.bu, i64 %i.bt)
  %i.bx = shl nuw i64 %..i, 1
  %i.by = icmp slt i64 %..i, 0
  br i1 %i.by, label %bb.q, label %bb.r, !prof !44

bb.q:                                             ; preds = %bb.p
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.052.0.i = phi i64 [ -1, %bb.q ], [ %i.bx, %bb.p ]
  %i.bz = icmp ult i64 %..i64, %.sroa.052.0.i
  br i1 %i.bz, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i = icmp ule i64 %i.bu, %i.bt
  %i.ca = icmp ule i64 %i.bt, %i.bu
  %.not.i.fr = freeze i1 %.not.i
  %i.cb = sub i64 %.sroa.0218.0, %i.bd            ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.bc
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.cb
  br label %bb.t

.loopexit:                                        ; preds = %.outer, %bb.ah, %bb.w, %bb.ag
  %.sroa.525.2.i.ph.lcssa570 = phi i64 [ %.sroa.525.2.i.ph725, %bb.w ], [ %.sroa.525.2.i.ph725, %bb.ah ], [ %.sroa.525.2.i.ph725, %bb.ag ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa563 = phi i64 [ %.sroa.023.1.i.ph726, %bb.w ], [ %.sroa.023.1.i.ph726, %bb.ah ], [ %.sroa.023.1.i.ph726, %bb.ag ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa556 = phi i64 [ %.sroa.9.2.i.ph727, %bb.w ], [ %.sroa.9.2.i.ph727, %bb.ah ], [ %.sroa.9.2.i.ph727, %bb.ag ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa549 = phi i64 [ %.sroa.12.2.i.ph728, %bb.w ], [ %.sroa.12.2.i.ph728, %bb.ah ], [ %.sroa.12.2.i.ph728, %bb.ag ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, -1
  %exitcond1042 = icmp eq i64 %i.ce, 5
  br i1 %exitcond1042, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit
  %indvars.iv = phi i64 [ %i.bt, %bb.s ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.sroa.12.0.i733 = phi i64 [ undef, %bb.s ], [ %.sroa.12.2.i.ph.lcssa549, %.loopexit ]
  %.sroa.9.0.i732 = phi i64 [ undef, %bb.s ], [ %.sroa.9.2.i.ph.lcssa556, %.loopexit ]
  %.sroa.023.0.i731 = phi i64 [ 0, %bb.s ], [ %.sroa.023.1.i.ph.lcssa563, %.loopexit ]
  %.sroa.525.0.i730 = phi i64 [ undef, %bb.s ], [ %.sroa.525.2.i.ph.lcssa570, %.loopexit ]
  %.sroa.0251.0729 = phi i64 [ 0, %bb.s ], [ %i.ce, %.loopexit ] ; 9 uses
  %i.ce = add nuw nsw i64 %.sroa.0251.0729, 1     ; 2 uses
  %i.cf = icmp eq i64 %.sroa.0251.0729, 0
  %i.cg = add i64 %.sroa.0251.0729, %.sroa.0.0    ; 2 uses
  %i.ch = sub i64 %i.cg, %i.ba                    ; 4 uses
  %i.ci = icmp ult i64 %i.ch, %i.az               ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ch ; 2 uses
  %i.ck = sub i64 %i.be, %i.cg
  br label %.lr.ph

bb.u:                                             ; preds = %.loopexit
  %i.cl = trunc nuw i64 %.sroa.023.1.i.ph.lcssa563 to i1
  br i1 %i.cl, label %.loopexit445, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit

.loopexit445:                                     ; preds = %bb.ai, %bb.u
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa570, %bb.u ], [ %.sroa.0251.0729, %bb.ai ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa556, %bb.u ], [ %.us-phi639, %bb.ai ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa549, %bb.u ], [ %.sroa.01.0.i.lcssa, %bb.ai ] ; 3 uses
  %i.cm = icmp eq i64 %.sroa.525.1.i, 0
  %i.cn = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.cm, label %bb.ao, label %bb.ap

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.w
  %.sroa.0252.0613 = phi i64 [ %i.co, %bb.w ], [ %.sroa.0252.0.ph724, %.lr.ph.split ] ; 2 uses
  %i.co = add nuw nsw i64 %.sroa.0252.0613, 1     ; 2 uses
  %i.cp = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !15938
  br i1 %i.cp, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.split
  %.not736 = icmp eq i64 %.sroa.0252.0613, 0
  br i1 %.not736, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30
  %exitcond = icmp eq i64 %i.co, 5
  br i1 %exitcond, label %.loopexit, label %.lr.ph.split.split

bb.x:                                             ; preds = %bb.v
  br i1 %i.cc, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31, label %.split622.loopexit1284

.split622.loopexit1284:                           ; preds = %bb.x
  %i.cq = sub i64 %.sroa.0218.0, %i.bd
  br label %.split622

.split622:                                        ; preds = %bb.af, %.split622.loopexit1284
  %.us-phi = phi i64 [ %i.cq, %.split622.loopexit1284 ], [ %i.dg, %bb.af ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @293) #74, !noalias !15939
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31: ; preds = %bb.x
  br i1 %i.ci, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30, label %.split625

.split625:                                        ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ch, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @294) #74, !noalias !15940
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31
  %.val49 = load i64, ptr %i.cd, align 8, !noundef !28
  %.val50 = load i64, ptr %i.cj, align 8, !noundef !28
  %.not348 = icmp eq i64 %.val49, %.val50
  br i1 %.not348, label %.split629, label %bb.w

.split629.loopexit:                               ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30.us
  %.pre1054 = sub i64 %i.bf, %i.df
  br label %.split629

.split629:                                        ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30, %.split629.loopexit
  %.pre-phi = phi i64 [ %.pre1054, %.split629.loopexit ], [ %i.bu, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ] ; 2 uses
  %.us-phi635 = phi i64 [ %i.df, %.split629.loopexit ], [ %.sroa.0218.0, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ]
  %.us-phi638 = phi i64 [ %i.dd, %.split629.loopexit ], [ 1, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ] ; 2 uses
  %.us-phi639 = phi i64 [ %.sroa.0252.0613.us, %.split629.loopexit ], [ 0, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ] ; 4 uses
  %..i73 = tail call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.ck)
  %.not737 = icmp eq i64 %..i73, 0
  br i1 %.not737, label %.outer, label %.lr.ph721

.lr.ph721:                                        ; preds = %.split629
  %i.cr = sub i64 %.us-phi635, %i.bd              ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %.pre-phi) ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph721, %bb.ad
  %.sroa.01.0.i720 = phi i64 [ 0, %.lr.ph721 ], [ %i.db, %bb.ad ] ; 5 uses
  %i.cs = and i64 %.sroa.01.0.i720, 1023
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !15938
  br i1 %i.cu, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cv = add nuw i64 %i.cr, %.sroa.01.0.i720     ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.bc
  br i1 %i.cw, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit29, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %umax1024 = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.cr)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax1024, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #74, !noalias !15941
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit29: ; preds = %bb.aa
  %i.cx = add nuw i64 %i.ch, %.sroa.01.0.i720     ; 3 uses
  %i.cy = icmp ult i64 %i.cx, %i.az
end_hunk_0
begin_hunk_1_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactIBT_mEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just:bb.a

bb.au:                                            ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15959), !noalias !15943
  %i.es = load ptr, ptr %0, align 8, !alias.scope !15960, !noalias !15943, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15962), !noalias !15963
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !15964, !noalias !15963, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 120 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 136 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !15965, !noalias !15966, !noundef !28 ; 3 uses
  %i.ex = load i64, ptr %i.eu, align 8, !range !43, !alias.scope !15965, !noalias !15966, !noundef !28
  %i.ey = icmp eq i64 %i.ew, %i.ex
  br i1 %i.ey, label %bb.av, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit78

bb.av:                                            ; preds = %bb.au
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eu) #73, !noalias !15967
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit78

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit78: ; preds = %bb.au, %bb.av
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 128
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !15965, !noalias !15966, !nonnull !28, !noundef !28
  %i.fb = getelementptr inbounds nuw [40 x i8], ptr %i.fa, i64 %i.ew ; 4 uses
  store i64 1, ptr %i.fb, align 8, !noalias !15966
  %.sroa.4276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4276.0..sroa_idx, align 8, !noalias !15966
  %.sroa.5277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5277.0..sroa_idx, align 8, !noalias !15966
  %.sroa.6278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  store i64 %.sroa.0218.0, ptr %.sroa.6278.0..sroa_idx, align 8, !noalias !15966
  %i.fc = add i64 %i.ew, 1
  store i64 %i.fc, ptr %i.ev, align 8, !alias.scope !15965, !noalias !15966
  br label %bb.aq

bb.aw:                                            ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15969), !noalias !15943
  %i.fd = load ptr, ptr %0, align 8, !alias.scope !15970, !noalias !15943, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15972), !noalias !15973
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !15974, !noalias !15973, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 120 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 136 ; 3 uses
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !15975, !noalias !15976, !noundef !28 ; 4 uses
  %i.fi = load i64, ptr %i.ff, align 8, !range !43, !alias.scope !15975, !noalias !15976, !noundef !28
  %i.fj = icmp eq i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.ax, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79

bb.ax:                                            ; preds = %bb.aw
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ff) #73, !noalias !15977
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79: ; preds = %bb.aw, %bb.ax
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 128 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !15975, !noalias !15976, !nonnull !28, !noundef !28
  %i.fm = getelementptr inbounds nuw [40 x i8], ptr %i.fl, i64 %i.fh ; 4 uses
  store i64 1, ptr %i.fm, align 8, !noalias !15976
  %.sroa.4306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4306.0..sroa_idx, align 8, !noalias !15976
  %.sroa.5307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5307.0..sroa_idx, align 8, !noalias !15976
  %.sroa.6308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store i64 %.sroa.0218.0, ptr %.sroa.6308.0..sroa_idx, align 8, !noalias !15976
  %i.fn = add i64 %i.fh, 1                        ; 3 uses
  store i64 %i.fn, ptr %i.fg, align 8, !alias.scope !15975, !noalias !15976
  %i.fo = load i64, ptr %i.ff, align 8, !range !43, !alias.scope !15978, !noalias !15976, !noundef !28
  %i.fp = icmp eq i64 %i.fn, %i.fo
  br i1 %i.fp, label %bb.ay, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit80

bb.ay:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ff) #73, !noalias !15979
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit80

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit80: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79, %bb.ay
  %i.fq = load ptr, ptr %i.fk, align 8, !alias.scope !15978, !noalias !15976, !nonnull !28, !noundef !28
  %i.fr = getelementptr inbounds nuw [40 x i8], ptr %i.fq, i64 %i.fn ; 4 uses
  store i64 2, ptr %i.fr, align 8, !noalias !15976
  %.sroa.4311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4311.0..sroa_idx, align 8, !noalias !15976
  %.sroa.5312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store i64 %.sroa.0218.0, ptr %.sroa.5312.0..sroa_idx, align 8, !noalias !15976
  %.sroa.6313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6313.0..sroa_idx, align 8, !noalias !15976
  %i.fs = add i64 %i.fh, 2
  store i64 %i.fs, ptr %i.fg, align 8, !alias.scope !15978, !noalias !15976
  br label %bb.aq

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactIB18_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit: ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %.lr.ph.split.us, %bb.z, %bb.o, %bb.r, %bb.u, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit76
  %.sroa.0218.2 = phi i64 [ %.sroa.0218.0, %bb.o ], [ %.sroa.0218.0, %bb.r ], [ %.sroa.0218.0, %bb.u ], [ %i.eh, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit76 ], [ %.sroa.0218.0, %.lr.ph.split.split ], [ %.sroa.0218.0, %.lr.ph.split.us ], [ %.sroa.0218.0, %bb.z ], [ %.sroa.0218.0, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.o ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %bb.u ], [ %i.eg, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit76 ], [ %.sroa.0.0, %.lr.ph.split.split ], [ %.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.0.0, %bb.z ], [ %.sroa.0.0, %.lr.ph.split.split.us ] ; 2 uses
  %i.ft = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.fu = icmp eq i64 %.sroa.0218.2, %.sroa.0218.0
  %or.cond = select i1 %i.ft, i1 %i.fu, i1 false
  br i1 %or.cond, label %bb.n, label %bb.m

bb.az:                                            ; preds = %bb.n
  br i1 %i.bs, label %bb.bd, label %bb.bb

bb.ba:                                            ; preds = %bb.n
  br i1 %i.bs, label %.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread341

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread341: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit219.sink.split.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit81, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit184, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit183, %bb.gz, %bb.ba
  %.not26 = icmp eq i64 %.sroa.0.0.i63, 0
  br i1 %.not26, label %bb.hg, label %bb.he

bb.bb:                                            ; preds = %bb.az
  %i.fv = sub nuw i64 %i.be, %.sroa.0.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15981)
  %i.fw = load ptr, ptr %0, align 8, !alias.scope !15982, !nonnull !28, !align !35, !noundef !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15984), !noalias !15982
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !15985, !noalias !15982, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 120 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 136 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !alias.scope !15986, !noalias !15987, !noundef !28 ; 3 uses
  %i.gb = load i64, ptr %i.fy, align 8, !range !43, !alias.scope !15986, !noalias !15987, !noundef !28
  %i.gc = icmp eq i64 %i.ga, %i.gb
  br i1 %i.gc, label %bb.bc, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit81

bb.bc:                                            ; preds = %bb.bb
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fy) #73, !noalias !15988
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit81

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit81: ; preds = %bb.bb, %bb.bc
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 128
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !15986, !noalias !15987, !nonnull !28, !noundef !28
  %i.gf = getelementptr inbounds nuw [40 x i8], ptr %i.ge, i64 %i.ga ; 4 uses
  store i64 1, ptr %i.gf, align 8, !noalias !15987
  %.sroa.4281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4281.0..sroa_idx, align 8, !noalias !15987
  %.sroa.5282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store i64 %i.fv, ptr %.sroa.5282.0..sroa_idx, align 8, !noalias !15987
  %.sroa.6283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store i64 %.sroa.0218.0, ptr %.sroa.6283.0..sroa_idx, align 8, !noalias !15987
  %i.gg = add i64 %i.ga, 1
  store i64 %i.gg, ptr %i.fz, align 8, !alias.scope !15986, !noalias !15987
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread341

bb.bd:                                            ; preds = %bb.az
  %i.gh = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !15989
  br i1 %i.gh, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gi = sub nuw i64 %i.be, %.sroa.0.0           ; 22 uses
  %i.gj = sub nuw i64 %i.bf, %.sroa.0218.0        ; 22 uses
  %i.gk = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gi, i64 %i.gj) ; 2 uses
  %i.gl = extractvalue { i64, i1 } %i.gk, 1
  br i1 %i.gl, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.bf, !prof !44

bb.bf:                                            ; preds = %bb.be
  %i.gm = extractvalue { i64, i1 } %i.gk, 0
  %..i83 = tail call noundef i64 @llvm.umax.i64(i64 %i.gj, i64 %i.gi)
  %..i82 = tail call noundef i64 @llvm.umin.i64(i64 %i.gj, i64 %i.gi)
  %i.gn = add i64 %..i82, -65
  %or.cond.i27 = icmp ult i64 %i.gn, -64
  %i.go = icmp ult i64 %..i83, 512
  %or.cond1.i = or i1 %i.go, %or.cond.i27
  %i.gp = icmp ugt i64 %i.gm, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.gp
  br i1 %or.cond3.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not.i28 = icmp ugt i64 %i.gi, %i.gj
  %.val51 = load ptr, ptr %0, align 8             ; 20 uses
  %i.gq = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !28 ; 2 uses
  br i1 %.not.i28, label %bb.bh, label %bb.ec

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.gq, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gr = add i64 %i.gi, 1                        ; 11 uses
  %i.gs = add nuw i64 %i.gj, 1
  %i.gt = mul i64 %i.gr, %i.gs                    ; 29 uses
  %.not.i.i.i = icmp slt i64 %i.gt, 0
  br i1 %.not.i.i.i, label %bb.bm, label %bb.bj, !prof !42

bb.bj:                                            ; preds = %bb.bi
  %i.gu = icmp eq i64 %i.gt, 0                    ; 3 uses
  br i1 %i.gu, label %.lr.ph466.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !15990
  %i.gv = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.gt, i64 noundef range(i64 1, 9) 1) #69, !noalias !15990 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gx = ptrtoint ptr %i.gv to i64
  br label %.lr.ph466.i

bb.bm:                                            ; preds = %bb.bk, %bb.bi
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.bk ], [ 0, %bb.bi ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.gt) #70, !noalias !15991
  unreachable

.lr.ph466.i:                                      ; preds = %bb.bj, %bb.bl
  %.sroa.10.0.i.i = phi i64 [ %i.gx, %bb.bl ], [ 1, %bb.bj ]
  %i.gy = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 21 uses
  %invariant.op467.i = sub i64 %.sroa.0218.0, %i.bd ; 4 uses
  %invariant.op.i85 = sub i64 %.sroa.0.0, %i.ba   ; 3 uses
  br label %.lr.ph466.split.i

.lr.ph466.split.i:                                ; preds = %.lr.ph466.i, %..loopexit68_crit_edge.split.us.i
  %.sroa.0102.0465.i = phi i64 [ %i.gz, %..loopexit68_crit_edge.split.us.i ], [ %i.gj, %.lr.ph466.i ] ; 2 uses
  %i.gz = add i64 %.sroa.0102.0465.i, -1          ; 4 uses
  %i.ha = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.do unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15992

._crit_edge493.i:                                 ; preds = %bb.dc
  br i1 %i.mp, label %bb.bn, label %bb.bp

.lr.ph492.i:                                      ; preds = %..loopexit68_crit_edge.split.us.i, %bb.dc
  %.sroa.05.0.not491.i = phi i1 [ false, %bb.dc ], [ true, %..loopexit68_crit_edge.split.us.i ] ; 3 uses
  %.sroa.09.0490.i = phi i64 [ %.sroa.09.3.i, %bb.dc ], [ 0, %..loopexit68_crit_edge.split.us.i ] ; 13 uses
  %.sroa.038.0489.i = phi i64 [ %.sroa.038.3.i, %bb.dc ], [ 0, %..loopexit68_crit_edge.split.us.i ] ; 17 uses
  %i.hb = and i64 %.sroa.038.0489.i, 1023
  %i.hc = icmp eq i64 %i.hb, 0
  %or.cond170.i = select i1 %.sroa.05.0.not491.i, i1 %i.hc, i1 false ; 2 uses
  br i1 %or.cond170.i, label %bb.bt, label %bb.bs

bb.bn:                                            ; preds = %._crit_edge493.i
  %i.hd = add i64 %.sroa.038.3.i, %.sroa.0.0      ; 2 uses
  %i.he = sub nuw i64 %i.gi, %.sroa.038.3.i
  %i.hf = add i64 %.sroa.09.3.i, %.sroa.0218.0    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hg = load ptr, ptr %.val51, align 8, !alias.scope !15993, !noalias !15992, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 120 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 136 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !alias.scope !15994, !noalias !15992, !noundef !28 ; 3 uses
  %i.hk = load i64, ptr %i.hh, align 8, !range !43, !alias.scope !15994, !noalias !15992, !noundef !28
  %i.hl = icmp eq i64 %i.hj, %i.hk
  br i1 %i.hl, label %bb.bo, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hh) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15992

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i: ; preds = %bb.bo, %bb.bn
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 128
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !15994, !noalias !15992, !nonnull !28, !noundef !28
  %i.ho = getelementptr inbounds nuw [40 x i8], ptr %i.hn, i64 %i.hj ; 4 uses
  store i64 1, ptr %i.ho, align 8, !noalias !15992
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store i64 %i.hd, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !15992
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store i64 %i.he, ptr %.sroa.530.0..sroa_idx.i, align 8, !noalias !15992
  %.sroa.631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  store i64 %i.hf, ptr %.sroa.631.0..sroa_idx.i, align 8, !noalias !15992
  %i.hp = add i64 %i.hj, 1
  store i64 %i.hp, ptr %i.hi, align 8, !alias.scope !15994, !noalias !15992
  br i1 %i.mo, label %bb.bq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit219.sink.split.i

bb.bp:                                            ; preds = %._crit_edge493.i
  br i1 %i.mo, label %._crit_edge1056, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit219.sink.split.i

._crit_edge1056:                                  ; preds = %bb.bp
  %.pre1057 = add i64 %.sroa.038.3.i, %.sroa.0.0
  %.pre1059 = add i64 %.sroa.09.3.i, %.sroa.0218.0
  br label %bb.bq

.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cs, %bb.dg, %bb.cf, %bb.cr, %bb.ce, %.split446.us.invoke.i, %bb.df
  %lpad.loopexit.split-lp1832 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dp, %bb.dd, %bb.bt, %.lr.ph466.split.i, %.split443.us.invoke.i, %bb.ea, %.invoke.i, %bb.br, %bb.bo
  %lpad.loopexit.split-lp1857 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.gu, label %common.resume, label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi44.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp1857, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1832, %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gy, i64 noundef %i.gt, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !15995
  br label %common.resume

bb.bq:                                            ; preds = %._crit_edge1056, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i
  %.pre-phi1060 = phi i64 [ %.pre1059, %._crit_edge1056 ], [ %i.hf, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i ]
  %.pre-phi1058 = phi i64 [ %.pre1057, %._crit_edge1056 ], [ %i.hd, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i ]
  %i.hq = sub nuw i64 %i.gj, %.sroa.09.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hr = load ptr, ptr %.val51, align 8, !alias.scope !15996, !noalias !15992, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 120 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 136 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !alias.scope !15997, !noalias !15992, !noundef !28 ; 3 uses
  %i.hv = load i64, ptr %i.hs, align 8, !range !43, !alias.scope !15997, !noalias !15992, !noundef !28
  %i.hw = icmp eq i64 %i.hu, %i.hv
  br i1 %i.hw, label %bb.br, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hs) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15992

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i: ; preds = %bb.br, %bb.bq
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 128
  %i.hy = load ptr, ptr %i.hx, align 8, !alias.scope !15997, !noalias !15992, !nonnull !28, !noundef !28
  %i.hz = getelementptr inbounds nuw [40 x i8], ptr %i.hy, i64 %i.hu ; 4 uses
  store i64 2, ptr %i.hz, align 8, !noalias !15992
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store i64 %.pre-phi1058, ptr %.sroa.439.0..sroa_idx.i, align 8, !noalias !15992
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store i64 %.pre-phi1060, ptr %.sroa.540.0..sroa_idx.i, align 8, !noalias !15992
  %.sroa.641.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  store i64 %i.hq, ptr %.sroa.641.0..sroa_idx.i, align 8, !noalias !15992
  %i.ia = add i64 %i.hu, 1
  store i64 %i.ia, ptr %i.ht, align 8, !alias.scope !15997, !noalias !15992
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit219.sink.split.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit219.sink.split.i.thread: ; preds = %bb.ct, %bb.cg, %bb.dh, %.loopexit64.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gy, i64 noundef %i.gt, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !15992
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit219.sink.split.i: ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i, %bb.bp, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gy, i64 noundef %i.gt, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !15992
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread341

bb.bs:                                            ; preds = %bb.bu, %.lr.ph492.i
  %i.ib = mul i64 %.sroa.09.0490.i, %i.gr         ; 4 uses
  %i.ic = add i64 %.sroa.038.0489.i, %.sroa.0.0   ; 4 uses
  %i.id = add i64 %.sroa.09.0490.i, %.sroa.0218.0 ; 4 uses
  %i.ie = sub i64 %i.id, %i.bd                    ; 3 uses
  %i.if = icmp ult i64 %i.ie, %i.bc
  br i1 %i.if, label %bb.bv, label %.invoke.i

.invoke.i:                                        ; preds = %bb.dr, %bb.bv, %bb.bs, %bb.ch, %bb.di, %bb.eb, %.lr.ph.split.i, %11
  %i.ig = phi i64 [ %.reass.i88, %.lr.ph.split.i ], [ %.reass.i88, %bb.eb ], [ %i.az, %bb.ch ], [ %umax687.le.i, %11 ], [ %i.ie, %bb.bs ], [ %i.az, %bb.di ], [ %i.il, %bb.bv ], [ %.reass.us.i, %bb.dr ]
  %i.ih = phi i64 [ %i.bc, %.lr.ph.split.i ], [ %i.bc, %bb.eb ], [ %i.az, %bb.ch ], [ %i.bc, %11 ], [ %i.bc, %bb.bs ], [ %i.az, %bb.di ], [ %i.az, %bb.bv ], [ %i.az, %bb.dr ]
  %i.ii = phi ptr [ @261, %.lr.ph.split.i ], [ @261, %bb.eb ], [ @247, %bb.ch ], [ @252, %11 ], [ @241, %bb.bs ], [ @258, %bb.di ], [ @242, %bb.bv ], [ @262, %bb.dr ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ig, i64 noundef %i.ih, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ii) #74
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15992

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bt:                                            ; preds = %.lr.ph492.i
  %i.ij = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15992

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.ij, label %.loopexit64.i, label %bb.bs

bb.bv:                                            ; preds = %bb.bs
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ie ; 2 uses
  %i.il = sub i64 %i.ic, %i.ba                    ; 3 uses
  %i.im = icmp ult i64 %i.il, %i.az
  br i1 %i.im, label %bb.bw, label %.invoke.i

bb.bw:                                            ; preds = %bb.bv
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.il ; 2 uses
  %.val212.i = load i64, ptr %i.ik, align 8, !noalias !15992, !noundef !28
  %.val213.i = load i64, ptr %i.in, align 8, !noalias !15992, !noundef !28
  %i.io = icmp eq i64 %.val212.i, %.val213.i
  br i1 %i.io, label %bb.bx, label %._crit_edge692.i

._crit_edge692.i:                                 ; preds = %bb.bw
  %.pre.i = add nuw i64 %.sroa.09.0490.i, 1
  %.pre693.i = mul i64 %.pre.i, %i.gr
  br label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ip = add i64 %i.ib, %.sroa.038.0489.i        ; 3 uses
  %i.iq = icmp ult i64 %i.ip, %i.gt
  br i1 %i.iq, label %bb.bz, label %.split443.us.invoke.i

bb.by:                                            ; preds = %bb.ca, %._crit_edge692.i
  %.pre-phi694.i = phi i64 [ %.pre693.i, %._crit_edge692.i ], [ %i.iu, %bb.ca ] ; 3 uses
  %i.ir = add i64 %.pre-phi694.i, %.sroa.038.0489.i ; 3 uses
  %i.is = icmp ult i64 %i.ir, %i.gt
  br i1 %i.is, label %bb.cb, label %.split443.us.invoke.i

bb.bz:                                            ; preds = %bb.bx
  %i.it = add nuw i64 %.sroa.09.0490.i, 1
  %i.iu = mul i64 %i.it, %i.gr                    ; 2 uses
  %i.iv = add nuw i64 %.sroa.038.0489.i, 1
  %i.iw = add i64 %i.iv, %i.iu                    ; 3 uses
  %i.ix = icmp ult i64 %i.iw, %i.gt
  br i1 %i.ix, label %bb.ca, label %.split446.us.invoke.i

bb.ca:                                            ; preds = %bb.bz
  %i.iy = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ip
  %i.iz = load i8, ptr %i.iy, align 1, !noalias !15992, !noundef !28
  %i.ja = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.iw
  %i.jb = load i8, ptr %i.ja, align 1, !noalias !15992, !noundef !28
  %i.jc = add i8 %i.jb, 1
  %i.jd = icmp eq i8 %i.iz, %i.jc
  br i1 %i.jd, label %.preheader.i, label %bb.by

.preheader.i:                                     ; preds = %bb.ca
  %i.je = icmp ult i64 %.sroa.09.0490.i, %i.gj
  %i.jf = icmp ult i64 %.sroa.038.0489.i, %i.gi
  %or.cond177475.i = select i1 %i.je, i1 %i.jf, i1 false
  br i1 %or.cond177475.i, label %.lr.ph478.i, label %._crit_edge479.i

bb.cb:                                            ; preds = %bb.by
  %i.jg = add nuw i64 %.sroa.038.0489.i, 1        ; 3 uses
  %i.jh = add i64 %i.jg, %i.ib                    ; 3 uses
  %i.ji = icmp ult i64 %i.jh, %i.gt
  br i1 %i.ji, label %bb.cc, label %.split446.us.invoke.i

bb.cc:                                            ; preds = %bb.cb
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ir
  %i.jk = load i8, ptr %i.jj, align 1, !noalias !15992, !noundef !28
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.jh
  %i.jm = load i8, ptr %i.jl, align 1, !noalias !15992, !noundef !28
  %.not164.i = icmp ult i8 %i.jk, %i.jm
  br i1 %.not164.i, label %.preheader51.i, label %.preheader56.i

.preheader56.i:                                   ; preds = %bb.cc
  %umax.i86 = tail call i64 @llvm.umax.i64(i64 %.sroa.09.0490.i, i64 %i.gj) ; 3 uses
  %exitcond.not.i1789.not = icmp ult i64 %.sroa.09.0490.i, %i.gj
  br i1 %exitcond.not.i1789.not, label %.lr.ph1791, label %._crit_edge1792

.preheader51.i:                                   ; preds = %bb.cc
  %i.jn = icmp ult i64 %.sroa.038.0489.i, %i.gi
  br i1 %i.jn, label %.lr.ph470.i, label %._crit_edge.i

.lr.ph470.i:                                      ; preds = %.preheader51.i
  %i.jo = add i64 %.pre-phi694.i, 1
  %i.jp = add i64 %i.ib, 1
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cp, %.lr.ph470.i
  %.sroa.038.1469.i = phi i64 [ %.sroa.038.0489.i, %.lr.ph470.i ], [ %i.lb, %bb.cp ] ; 9 uses
  %i.jq = and i64 %.sroa.038.1469.i, 1023
  %i.jr = icmp eq i64 %i.jq, 0
  %or.cond173.i = and i1 %.sroa.05.0.not491.i, %i.jr
  br i1 %or.cond173.i, label %bb.cf, label %bb.ch

._crit_edge.i:                                    ; preds = %bb.cp, %bb.co, %bb.cm, %.preheader51.i
  %.sroa.038.1.lcssa.i = phi i64 [ %.sroa.038.0489.i, %.preheader51.i ], [ %i.gi, %bb.cp ], [ %.sroa.038.1469.i, %bb.co ], [ %.sroa.038.1469.i, %bb.cm ] ; 2 uses
  %i.js = sub i64 %.sroa.038.1.lcssa.i, %.sroa.038.0489.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.jt = load ptr, ptr %.val51, align 8, !alias.scope !15998, !noalias !15992, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 120 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 136 ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !alias.scope !15999, !noalias !15992, !noundef !28 ; 3 uses
  %i.jx = load i64, ptr %i.ju, align 8, !range !43, !alias.scope !15999, !noalias !15992, !noundef !28
  %i.jy = icmp eq i64 %i.jw, %i.jx
  br i1 %i.jy, label %bb.ce, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i

bb.ce:                                            ; preds = %._crit_edge.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ju) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15992

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.ce, %._crit_edge.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 128
  %i.ka = load ptr, ptr %i.jz, align 8, !alias.scope !15999, !noalias !15992, !nonnull !28, !noundef !28
  %i.kb = getelementptr inbounds nuw [40 x i8], ptr %i.ka, i64 %i.jw ; 4 uses
  store i64 1, ptr %i.kb, align 8, !noalias !15992
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store i64 %i.ic, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !15992
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store i64 %i.js, ptr %.sroa.525.0..sroa_idx.i, align 8, !noalias !15992
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  store i64 %i.id, ptr %.sroa.626.0..sroa_idx.i, align 8, !noalias !15992
  %i.kc = add i64 %i.jw, 1
  store i64 %i.kc, ptr %i.jv, align 8, !alias.scope !15999, !noalias !15992
  br label %bb.dc

bb.cf:                                            ; preds = %bb.cd
  %i.kd = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cg unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15992

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.kd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit219.sink.split.i.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cd
  %i.ke = add i64 %.sroa.038.1469.i, %invariant.op.i85 ; 2 uses
  %i.kf = icmp ult i64 %i.ke, %i.az
  br i1 %i.kf, label %bb.ci, label %.invoke.i

bb.ci:                                            ; preds = %bb.ch
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ke
  %.val210.i = load i64, ptr %i.ik, align 8, !noalias !15992, !noundef !28
  %.val211.i = load i64, ptr %i.kg, align 8, !noalias !15992, !noundef !28
  %i.kh = icmp eq i64 %.val210.i, %.val211.i
  br i1 %i.kh, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ki = add i64 %.sroa.038.1469.i, %i.ib        ; 3 uses
  %i.kj = icmp ult i64 %i.ki, %i.gt
  br i1 %i.kj, label %bb.cl, label %.split443.us.invoke.i

bb.ck:                                            ; preds = %bb.cm, %bb.ci
  %i.kk = add i64 %.sroa.038.1469.i, %.pre-phi694.i ; 2 uses
  %i.kl = icmp ult i64 %i.kk, %i.gt
  br i1 %i.kl, label %bb.cn, label %.split443.us.invoke.i

bb.cl:                                            ; preds = %bb.cj
  %i.km = add i64 %i.jo, %.sroa.038.1469.i        ; 3 uses
  %i.kn = icmp ult i64 %i.km, %i.gt
  br i1 %i.kn, label %bb.cm, label %.split446.us.invoke.i

bb.cm:                                            ; preds = %bb.cl
  %i.ko = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ki
  %i.kp = load i8, ptr %i.ko, align 1, !noalias !15992, !noundef !28
  %i.kq = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.km
  %i.kr = load i8, ptr %i.kq, align 1, !noalias !15992, !noundef !28
  %i.ks = add i8 %i.kr, 1
  %i.kt = icmp eq i8 %i.kp, %i.ks
  br i1 %i.kt, label %._crit_edge.i, label %bb.ck

bb.cn:                                            ; preds = %bb.ck
  %i.ku = add i64 %i.jp, %.sroa.038.1469.i        ; 2 uses
  %i.kv = icmp ult i64 %i.ku, %i.gt
  br i1 %i.kv, label %bb.co, label %.split446.us.invoke.i

bb.co:                                            ; preds = %bb.cn
  %i.kw = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.kk
  %i.kx = load i8, ptr %i.kw, align 1, !noalias !15992, !noundef !28
  %i.ky = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ku
  %i.kz = load i8, ptr %i.ky, align 1, !noalias !15992, !noundef !28
  %i.la = icmp ult i8 %i.kx, %i.kz
  br i1 %i.la, label %bb.cp, label %._crit_edge.i

bb.cp:                                            ; preds = %bb.co
  %i.lb = add nuw i64 %.sroa.038.1469.i, 1        ; 2 uses
  %i.lc = icmp ult i64 %i.lb, %i.gi
  br i1 %i.lc, label %bb.cd, label %._crit_edge.i

bb.cq:                                            ; preds = %bb.db
  %exitcond.not.i = icmp eq i64 %.pre-phi696.i, %umax.i86
  br i1 %exitcond.not.i, label %._crit_edge1792, label %.lr.ph1791

.lr.ph1791:                                       ; preds = %.preheader56.i, %bb.cq
  %.sroa.09.1.i1790 = phi i64 [ %.pre-phi696.i, %bb.cq ], [ %.sroa.09.0490.i, %.preheader56.i ] ; 6 uses
  br i1 %or.cond170.i, label %bb.cs, label %bb.cu

._crit_edge1792:                                  ; preds = %bb.cq, %bb.cz, %bb.db, %.preheader56.i
  %.sroa.09.1.lcssa.i = phi i64 [ %umax.i86, %.preheader56.i ], [ %umax.i86, %bb.cq ], [ %.sroa.09.1.i1790, %bb.cz ], [ %.sroa.09.1.i1790, %bb.db ] ; 2 uses
  %i.ld = sub nuw i64 %.sroa.09.1.lcssa.i, %.sroa.09.0490.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.le = load ptr, ptr %.val51, align 8, !alias.scope !16000, !noalias !15992, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 120 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 136 ; 2 uses
  %i.lh = load i64, ptr %i.lg, align 8, !alias.scope !16001, !noalias !15992, !noundef !28 ; 3 uses
  %i.li = load i64, ptr %i.lf, align 8, !range !43, !alias.scope !16001, !noalias !15992, !noundef !28
  %i.lj = icmp eq i64 %i.lh, %i.li
  br i1 %i.lj, label %bb.cr, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i

bb.cr:                                            ; preds = %._crit_edge1792
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lf) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15992

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.cr, %._crit_edge1792
  %i.lk = getelementptr inbounds nuw i8, ptr %i.le, i64 128
  %i.ll = load ptr, ptr %i.lk, align 8, !alias.scope !16001, !noalias !15992, !nonnull !28, !noundef !28
  %i.lm = getelementptr inbounds nuw [40 x i8], ptr %i.ll, i64 %i.lh ; 4 uses
  store i64 2, ptr %i.lm, align 8, !noalias !15992
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store i64 %i.ic, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !15992
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  store i64 %i.id, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !15992
  %.sroa.636.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  store i64 %i.ld, ptr %.sroa.636.0..sroa_idx.i, align 8, !noalias !15992
  %i.ln = add i64 %i.lh, 1
  store i64 %i.ln, ptr %i.lg, align 8, !alias.scope !16001, !noalias !15992
  br label %bb.dc

bb.cs:                                            ; preds = %.lr.ph1791
  %i.lo = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ct unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15992

bb.ct:                                            ; preds = %bb.cs
  br i1 %i.lo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit219.sink.split.i.thread, label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %.lr.ph1791
  %i.lp = mul i64 %.sroa.09.1.i1790, %i.gr        ; 2 uses
  %i.lq = add i64 %.sroa.09.1.i1790, %invariant.op467.i ; 2 uses
  %i.lr = icmp ult i64 %i.lq, %i.bc
  br i1 %i.lr, label %bb.cv, label %11

11:                                               ; preds = %bb.cu
  %12 = add i64 %.sroa.09.0490.i, %invariant.op467.i
  %umax687.le.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %12)
  br label %.invoke.i

bb.cv:                                            ; preds = %bb.cu
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.lq
  %.val208.i = load i64, ptr %i.ls, align 8, !noalias !15992, !noundef !28
  %.val209.i = load i64, ptr %i.in, align 8, !noalias !15992, !noundef !28
  %i.lt = icmp eq i64 %.val208.i, %.val209.i
  br i1 %i.lt, label %bb.cw, label %._crit_edge691.i

._crit_edge691.i:                                 ; preds = %bb.cv
  %.pre695.i = add i64 %.sroa.09.1.i1790, 1       ; 2 uses
  %.pre697.i = mul i64 %.pre695.i, %i.gr
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.lu = add i64 %i.lp, %.sroa.038.0489.i        ; 3 uses
  %i.lv = icmp ult i64 %i.lu, %i.gt
  br i1 %i.lv, label %bb.cy, label %.split443.us.invoke.i

bb.cx:                                            ; preds = %bb.cz, %._crit_edge691.i
  %.pre-phi698.i.a = phi i64 [ %.pre697.i, %._crit_edge691.i ], [ %i.lz, %bb.cz ]
  %.pre-phi696.i = phi i64 [ %.pre695.i, %._crit_edge691.i ], [ %i.ly, %bb.cz ] ; 2 uses
  %i.lw = add i64 %.pre-phi698.i.a, %.sroa.038.0489.i ; 3 uses
  %i.lx = icmp ult i64 %i.lw, %i.gt
  br i1 %i.lx, label %bb.da, label %.split443.us.invoke.i

bb.cy:                                            ; preds = %bb.cw
  %i.ly = add i64 %.sroa.09.1.i1790, 1            ; 2 uses
  %i.lz = mul i64 %i.ly, %i.gr                    ; 2 uses
  %i.ma = add i64 %i.lz, %i.jg                    ; 3 uses
  %i.mb = icmp ult i64 %i.ma, %i.gt
  br i1 %i.mb, label %bb.cz, label %.split446.us.invoke.i

bb.cz:                                            ; preds = %bb.cy
  %i.mc = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.lu
  %i.md = load i8, ptr %i.mc, align 1, !noalias !15992, !noundef !28
  %i.me = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ma
  %i.mf = load i8, ptr %i.me, align 1, !noalias !15992, !noundef !28
  %i.mg = add i8 %i.mf, 1
  %i.mh = icmp eq i8 %i.md, %i.mg
  br i1 %i.mh, label %._crit_edge1792, label %bb.cx

bb.da:                                            ; preds = %bb.cx
  %i.mi = add i64 %i.lp, %i.jg                    ; 3 uses
  %i.mj = icmp ult i64 %i.mi, %i.gt
  br i1 %i.mj, label %bb.db, label %.split446.us.invoke.i

bb.db:                                            ; preds = %bb.da
  %i.mk = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.lw
  %i.ml = load i8, ptr %i.mk, align 1, !noalias !15992, !noundef !28
  %i.mm = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.mi
  %i.mn = load i8, ptr %i.mm, align 1, !noalias !15992, !noundef !28
  %.not167.i = icmp ult i8 %i.ml, %i.mn
  br i1 %.not167.i, label %._crit_edge1792, label %bb.cq

bb.dc:                                            ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i
  %.sroa.038.3.i = phi i64 [ %.sroa.038.0489.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.038.1.lcssa.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.038.4.lcssa.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i ] ; 5 uses
  %.sroa.09.3.i = phi i64 [ %.sroa.09.1.lcssa.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.09.0490.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.09.4.lcssa.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i ] ; 5 uses
  %i.mo = icmp ult i64 %.sroa.09.3.i, %i.gj       ; 3 uses
  %i.mp = icmp ult i64 %.sroa.038.3.i, %i.gi      ; 2 uses
  %or.cond.i87 = select i1 %i.mo, i1 %i.mp, i1 false
  br i1 %or.cond.i87, label %.lr.ph492.i, label %._crit_edge493.i

._crit_edge479.i:                                 ; preds = %bb.dn, %bb.dm, %bb.dj, %.preheader.i
  %.sroa.038.4.lcssa.i = phi i64 [ %.sroa.038.0489.i, %.preheader.i ], [ %i.nq, %bb.dn ], [ %.sroa.038.4476.i, %bb.dj ], [ %.sroa.038.4476.i, %bb.dm ] ; 2 uses
  %.sroa.09.4.lcssa.i = phi i64 [ %.sroa.09.0490.i, %.preheader.i ], [ %i.no, %bb.dn ], [ %.sroa.09.4477.i, %bb.dj ], [ %.sroa.09.4477.i, %bb.dm ]
  %i.mq = sub nuw i64 %.sroa.038.4.lcssa.i, %.sroa.038.0489.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.mr = load ptr, ptr %.val51, align 8, !alias.scope !16002, !noalias !15992, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 120 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 136 ; 2 uses
  %i.mu = load i64, ptr %i.mt, align 8, !alias.scope !16003, !noalias !15992, !noundef !28 ; 3 uses
  %i.mv = load i64, ptr %i.ms, align 8, !range !43, !alias.scope !16003, !noalias !15992, !noundef !28
  %i.mw = icmp eq i64 %i.mu, %i.mv
  br i1 %i.mw, label %bb.dd, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i

bb.dd:                                            ; preds = %._crit_edge479.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ms) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15992

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.dd, %._crit_edge479.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mr, i64 128
  %i.my = load ptr, ptr %i.mx, align 8, !alias.scope !16003, !noalias !15992, !nonnull !28, !noundef !28
  %i.mz = getelementptr inbounds nuw [40 x i8], ptr %i.my, i64 %i.mu ; 4 uses
  store i64 0, ptr %i.mz, align 8, !noalias !15992
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  store i64 %i.ic, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !15992
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  store i64 %i.id, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !15992
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  store i64 %i.mq, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !15992
  %i.na = add i64 %i.mu, 1
  store i64 %i.na, ptr %i.mt, align 8, !alias.scope !16003, !noalias !15992
  br label %bb.dc

.lr.ph478.i:                                      ; preds = %.preheader.i, %bb.dn
  %.sroa.09.4477.i = phi i64 [ %i.no, %bb.dn ], [ %.sroa.09.0490.i, %.preheader.i ] ; 5 uses
  %.sroa.038.4476.i = phi i64 [ %i.nq, %bb.dn ], [ %.sroa.038.0489.i, %.preheader.i ] ; 6 uses
  %i.nb = and i64 %.sroa.038.4476.i, 1023
  %i.nc = icmp eq i64 %i.nb, 0
  %or.cond180.i = select i1 %.sroa.05.0.not491.i, i1 %i.nc, i1 false
  br i1 %or.cond180.i, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dh, %.lr.ph478.i
  %i.nd = mul i64 %.sroa.09.4477.i, %i.gr
  %i.ne = add i64 %.sroa.09.4477.i, %invariant.op467.i ; 2 uses
  %i.nf = icmp ult i64 %i.ne, %i.bc
  br i1 %i.nf, label %bb.di, label %bb.df

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257) #74
          to label %.noexc191.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15992

.noexc191.i:                                      ; preds = %bb.df
  unreachable

bb.dg:                                            ; preds = %.lr.ph478.i
  %i.ng = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dh unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15992

bb.dh:                                            ; preds = %bb.dg
  br i1 %i.ng, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit219.sink.split.i.thread, label %bb.de

bb.di:                                            ; preds = %bb.de
  %i.nh = add i64 %.sroa.038.4476.i, %invariant.op.i85 ; 2 uses
  %i.ni = icmp ult i64 %i.nh, %i.az
  br i1 %i.ni, label %bb.dj, label %.invoke.i

bb.dj:                                            ; preds = %bb.di
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ne
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.nh
  %.val206.i = load i64, ptr %i.nj, align 8, !noalias !15992, !noundef !28
  %.val207.i = load i64, ptr %i.nk, align 8, !noalias !15992, !noundef !28
  %i.nl = icmp eq i64 %.val206.i, %.val207.i
  br i1 %i.nl, label %bb.dk, label %._crit_edge479.i

bb.dk:                                            ; preds = %bb.dj
  %i.nm = add i64 %i.nd, %.sroa.038.4476.i        ; 3 uses
  %i.nn = icmp ult i64 %i.nm, %i.gt
  br i1 %i.nn, label %bb.dl, label %.split443.us.invoke.i

bb.dl:                                            ; preds = %bb.dk
  %i.no = add nuw i64 %.sroa.09.4477.i, 1         ; 4 uses
  %i.np = mul i64 %i.no, %i.gr
  %i.nq = add nuw i64 %.sroa.038.4476.i, 1        ; 4 uses
  %i.nr = add i64 %i.nq, %i.np                    ; 3 uses
  %i.ns = icmp ult i64 %i.nr, %i.gt
  br i1 %i.ns, label %bb.dm, label %.split446.us.invoke.i

bb.dm:                                            ; preds = %bb.dl
  %i.nt = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.nm
  %i.nu = load i8, ptr %i.nt, align 1, !noalias !15992, !noundef !28
  %i.nv = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.nr
  %i.nw = load i8, ptr %i.nv, align 1, !noalias !15992, !noundef !28
  %i.nx = add i8 %i.nw, 1
  %i.ny = icmp eq i8 %i.nu, %i.nx
  br i1 %i.ny, label %bb.dn, label %._crit_edge479.i

bb.dn:                                            ; preds = %bb.dm
  %i.nz = icmp ult i64 %i.no, %i.gj
  %i.oa = icmp ult i64 %i.nq, %i.gi
  %or.cond177.i = and i1 %i.nz, %i.oa
  br i1 %or.cond177.i, label %.lr.ph478.i, label %._crit_edge479.i

.loopexit64.i:                                    ; preds = %bb.do, %bb.dq, %bb.bu, %bb.eb
  br i1 %i.gu, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit219.sink.split.i.thread

bb.do:                                            ; preds = %.lr.ph466.split.i
  br i1 %i.ha, label %.loopexit64.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.do
  %i.ob = mul i64 %i.gz, %i.gr                    ; 2 uses
  %i.oc = mul i64 %.sroa.0102.0465.i, %i.gr       ; 2 uses
  %.reass.i88 = add i64 %i.gz, %invariant.op467.i ; 4 uses
  %i.od = icmp ult i64 %.reass.i88, %i.bc
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.reass.i88
  %.fr.i = freeze i1 %i.od
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.dz
  %.sroa.0105.0433.us.i = phi i64 [ %i.of, %bb.dz ], [ %i.gi, %.lr.ph.i ] ; 3 uses
  %i.of = add i64 %.sroa.0105.0433.us.i, -1       ; 6 uses
  %i.og = and i64 %i.of, 1023
  %i.oh = icmp eq i64 %i.og, 0
  br i1 %i.oh, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %.lr.ph.split.us.i
  %i.oi = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15992

bb.dq:                                            ; preds = %bb.dp
  br i1 %i.oi, label %.loopexit64.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %.lr.ph.split.us.i
  %.reass.us.i = add i64 %i.of, %invariant.op.i85 ; 3 uses
  %i.oj = icmp ult i64 %.reass.us.i, %i.az
  br i1 %i.oj, label %bb.ds, label %.invoke.i

bb.ds:                                            ; preds = %bb.dr
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.reass.us.i
  %.val.us.i = load i64, ptr %i.oe, align 8, !noalias !15992, !noundef !28
  %.val205.us.i = load i64, ptr %i.ok, align 8, !noalias !15992, !noundef !28
  %i.ol = icmp eq i64 %.val.us.i, %.val205.us.i
  br i1 %i.ol, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.om = add i64 %i.of, %i.oc                    ; 3 uses
  %i.on = icmp ult i64 %i.om, %i.gt
  br i1 %i.on, label %bb.du, label %.split443.us.invoke.i

bb.du:                                            ; preds = %bb.dt
  %i.oo = add i64 %.sroa.0105.0433.us.i, %i.ob    ; 3 uses
  %i.op = icmp ult i64 %i.oo, %i.gt
  br i1 %i.op, label %bb.dv, label %.split446.us.invoke.i

bb.dv:                                            ; preds = %bb.du
  %i.oq = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.om
  %i.or = load i8, ptr %i.oq, align 1, !noalias !15992, !noundef !28
  %i.os = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.oo
  %i.ot = load i8, ptr %i.os, align 1, !noalias !15992, !noundef !28
  %..i.us.i = tail call noundef i8 @llvm.umax.i8(i8 %i.ot, i8 %i.or)
  br label %bb.dy

bb.dw:                                            ; preds = %bb.ds
  %i.ou = add i64 %.sroa.0105.0433.us.i, %i.oc    ; 3 uses
  %i.ov = icmp ult i64 %i.ou, %i.gt
  br i1 %i.ov, label %bb.dx, label %.split443.us.invoke.i

bb.dx:                                            ; preds = %bb.dw
  %i.ow = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ou
  %i.ox = load i8, ptr %i.ow, align 1, !noalias !15992, !noundef !28
  %i.oy = add i8 %i.ox, 1
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dv
  %.sroa.04.0.us.i = phi i8 [ %i.oy, %bb.dx ], [ %..i.us.i, %bb.dv ]
  %i.oz = add i64 %i.of, %i.ob                    ; 3 uses
  %i.pa = icmp ult i64 %i.oz, %i.gt
  br i1 %i.pa, label %bb.dz, label %.split446.us.invoke.i

bb.dz:                                            ; preds = %bb.dy
  %i.pb = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.oz
  store i8 %.sroa.04.0.us.i, ptr %i.pb, align 1, !noalias !15992
  %.not168.us.i = icmp eq i64 %i.of, 0
  br i1 %.not168.us.i, label %..loopexit68_crit_edge.split.us.i, label %.lr.ph.split.us.i

..loopexit68_crit_edge.split.us.i:                ; preds = %bb.dz
  %.not.i89 = icmp eq i64 %i.gz, 0
  br i1 %.not.i89, label %.lr.ph492.i, label %.lr.ph466.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.pc = and i64 %i.gi, 1023
  %i.pd = icmp eq i64 %i.pc, 1
  br i1 %i.pd, label %bb.ea, label %.invoke.i

bb.ea:                                            ; preds = %.lr.ph.split.i
  %i.pe = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.eb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15992

bb.eb:                                            ; preds = %bb.ea
  br i1 %i.pe, label %.loopexit64.i, label %.invoke.i

.split443.us.invoke.i:                            ; preds = %bb.dw, %bb.dt, %bb.by, %bb.bx, %bb.cx, %bb.cw, %bb.cj, %bb.ck, %bb.dk
  %i.pf = phi i64 [ %i.ip, %bb.bx ], [ %i.lw, %bb.cx ], [ %i.nm, %bb.dk ], [ %i.ki, %bb.cj ], [ %i.gt, %bb.ck ], [ %i.lu, %bb.cw ], [ %i.ir, %bb.by ], [ %i.om, %bb.dt ], [ %i.ou, %bb.dw ]
  %i.pg = phi ptr [ @243, %bb.bx ], [ @255, %bb.cx ], [ @259, %bb.dk ], [ @248, %bb.cj ], [ @250, %bb.ck ], [ @253, %bb.cw ], [ @245, %bb.by ], [ @263, %bb.dt ], [ @265, %bb.dw ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.pf, i64 noundef %i.gt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pg) #70
          to label %.split443.us.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15992

.split443.us.cont.i:                              ; preds = %.split443.us.invoke.i
  unreachable

.split446.us.invoke.i:                            ; preds = %bb.dy, %bb.du, %bb.cb, %bb.bz, %bb.da, %bb.cy, %bb.cl, %bb.cn, %bb.dl
  %i.ph = phi i64 [ %i.iw, %bb.bz ], [ %i.mi, %bb.da ], [ %i.nr, %bb.dl ], [ %i.km, %bb.cl ], [ %i.gt, %bb.cn ], [ %i.ma, %bb.cy ], [ %i.jh, %bb.cb ], [ %i.oo, %bb.du ], [ %i.oz, %bb.dy ]
  %i.pi = phi ptr [ @244, %bb.bz ], [ @256, %bb.da ], [ @260, %bb.dl ], [ @249, %bb.cl ], [ @251, %bb.cn ], [ @254, %bb.cy ], [ @246, %bb.cb ], [ @264, %bb.du ], [ @266, %bb.dy ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ph, i64 noundef %i.gt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pi) #70
          to label %.split446.us.cont.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !15992

.split446.us.cont.i:                              ; preds = %.split446.us.invoke.i
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread.i105, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi44.i, %.thread.i ], [ %lpad.loopexit.split-lp1857, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1932, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.phi44.i106, %.thread.i105 ]
  resume { ptr, i32 } %common.resume.op

bb.ec:                                            ; preds = %bb.bg
  br i1 %i.gq, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.pj = add i64 %i.gj, 1                        ; 11 uses
  %i.pk = add i64 %i.gi, 1
  %i.pl = mul i64 %i.pk, %i.pj                    ; 29 uses
  %.not.i.i.i92 = icmp slt i64 %i.pl, 0
  br i1 %.not.i.i.i92, label %bb.eh, label %bb.ee, !prof !42

bb.ee:                                            ; preds = %bb.ed
  %i.pm = icmp eq i64 %i.pl, 0                    ; 3 uses
  br i1 %i.pm, label %.lr.ph481.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !16004
  %i.pn = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.pl, i64 noundef range(i64 1, 9) 1) #69, !noalias !16004 ; 2 uses
  %i.po = icmp eq ptr %i.pn, null
  br i1 %i.po, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.pp = ptrtoint ptr %i.pn to i64
  br label %.lr.ph481.i

bb.eh:                                            ; preds = %bb.ef, %bb.ed
  %.sroa.4.0.ph.i.i181 = phi i64 [ 1, %bb.ef ], [ 0, %bb.ed ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i181, i64 %i.pl) #70, !noalias !16005
  unreachable

.lr.ph481.i:                                      ; preds = %bb.ee, %bb.eg
  %.sroa.10.0.i.i94 = phi i64 [ %i.pp, %bb.eg ], [ 1, %bb.ee ]
  %i.pq = inttoptr i64 %.sroa.10.0.i.i94 to ptr   ; 21 uses
  %invariant.op.i109 = sub i64 %.sroa.0218.0, %i.bd ; 4 uses
  %invariant.op482.i = sub i64 %.sroa.0.0, %i.ba  ; 4 uses
  br label %.lr.ph481.split.i

.lr.ph481.split.i:                                ; preds = %.lr.ph481.i, %..loopexit68_crit_edge.split.us.i179
  %.sroa.0102.0480.i = phi i64 [ %i.pr, %..loopexit68_crit_edge.split.us.i179 ], [ %i.gi, %.lr.ph481.i ] ; 2 uses
  %i.pr = add i64 %.sroa.0102.0480.i, -1          ; 4 uses
  %i.ps = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16006

._crit_edge509.i:                                 ; preds = %bb.fx
  br i1 %i.vg, label %bb.ei, label %bb.ek

.lr.ph508.i:                                      ; preds = %..loopexit68_crit_edge.split.us.i179, %bb.fx
  %.sroa.05.0.not507.i = phi i1 [ false, %bb.fx ], [ true, %..loopexit68_crit_edge.split.us.i179 ] ; 3 uses
  %.sroa.09.0506.i = phi i64 [ %.sroa.09.3.i144, %bb.fx ], [ 0, %..loopexit68_crit_edge.split.us.i179 ] ; 14 uses
  %.sroa.039.0505.i = phi i64 [ %.sroa.039.3.i, %bb.fx ], [ 0, %..loopexit68_crit_edge.split.us.i179 ] ; 16 uses
  %i.pt = and i64 %.sroa.039.0505.i, 1023
  %i.pu = icmp eq i64 %i.pt, 0
  %or.cond170.i120 = select i1 %.sroa.05.0.not507.i, i1 %i.pu, i1 false ; 2 uses
  br i1 %or.cond170.i120, label %bb.eo, label %bb.en

bb.ei:                                            ; preds = %._crit_edge509.i
  %i.pv = add i64 %.sroa.09.3.i144, %.sroa.0.0    ; 2 uses
  %i.pw = sub nuw i64 %i.gi, %.sroa.09.3.i144
  %i.px = add i64 %.sroa.039.3.i, %.sroa.0218.0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.py = load ptr, ptr %.val51, align 8, !alias.scope !16007, !noalias !16006, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 120 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 136 ; 2 uses
  %i.qb = load i64, ptr %i.qa, align 8, !alias.scope !16008, !noalias !16006, !noundef !28 ; 3 uses
  %i.qc = load i64, ptr %i.pz, align 8, !range !43, !alias.scope !16008, !noalias !16006, !noundef !28
  %i.qd = icmp eq i64 %i.qb, %i.qc
  br i1 %i.qd, label %bb.ej, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116

bb.ej:                                            ; preds = %bb.ei
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pz) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16006

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116: ; preds = %bb.ej, %bb.ei
  %i.qe = getelementptr inbounds nuw i8, ptr %i.py, i64 128
  %i.qf = load ptr, ptr %i.qe, align 8, !alias.scope !16008, !noalias !16006, !nonnull !28, !noundef !28
  %i.qg = getelementptr inbounds nuw [40 x i8], ptr %i.qf, i64 %i.qb ; 4 uses
  store i64 1, ptr %i.qg, align 8, !noalias !16006
  %.sroa.429.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  store i64 %i.pv, ptr %.sroa.429.0..sroa_idx.i117, align 8, !noalias !16006
  %.sroa.530.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  store i64 %i.pw, ptr %.sroa.530.0..sroa_idx.i118, align 8, !noalias !16006
  %.sroa.631.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  store i64 %i.px, ptr %.sroa.631.0..sroa_idx.i119, align 8, !noalias !16006
  %i.qh = add i64 %i.qb, 1
  store i64 %i.qh, ptr %i.qa, align 8, !alias.scope !16008, !noalias !16006
  br i1 %i.vh, label %bb.el, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit

bb.ek:                                            ; preds = %._crit_edge509.i
  br i1 %i.vh, label %._crit_edge1055, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit

._crit_edge1055:                                  ; preds = %bb.ek
  %.pre1061 = add i64 %.sroa.09.3.i144, %.sroa.0.0
  %.pre1063 = add i64 %.sroa.039.3.i, %.sroa.0218.0
  br label %bb.el

.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fn, %bb.gb, %bb.fa, %bb.fm, %bb.ez, %.split446.us.invoke.i128, %bb.ga
  %lpad.loopexit.split-lp1906 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i105

.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gk, %bb.fy, %bb.eo, %.lr.ph481.split.i, %.split443.us.invoke.i126, %bb.gv, %.invoke.i121, %bb.em, %bb.ej
  %lpad.loopexit.split-lp1932 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.pm, label %common.resume, label %.thread.i105

.thread.i105:                                     ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi44.i106 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1932, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1906, %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pq, i64 noundef %i.pl, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !16009
  br label %common.resume

bb.el:                                            ; preds = %._crit_edge1055, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116
  %.pre-phi1064 = phi i64 [ %.pre1063, %._crit_edge1055 ], [ %i.px, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116 ]
  %.pre-phi1062 = phi i64 [ %.pre1061, %._crit_edge1055 ], [ %i.pv, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116 ]
  %i.qi = sub nuw i64 %i.gj, %.sroa.039.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.qj = load ptr, ptr %.val51, align 8, !alias.scope !16010, !noalias !16006, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 120 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 136 ; 2 uses
  %i.qm = load i64, ptr %i.ql, align 8, !alias.scope !16011, !noalias !16006, !noundef !28 ; 3 uses
  %i.qn = load i64, ptr %i.qk, align 8, !range !43, !alias.scope !16011, !noalias !16006, !noundef !28
  %i.qo = icmp eq i64 %i.qm, %i.qn
  br i1 %i.qo, label %bb.em, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i99

bb.em:                                            ; preds = %bb.el
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qk) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16006

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i99: ; preds = %bb.em, %bb.el
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qj, i64 128
  %i.qq = load ptr, ptr %i.qp, align 8, !alias.scope !16011, !noalias !16006, !nonnull !28, !noundef !28
  %i.qr = getelementptr inbounds nuw [40 x i8], ptr %i.qq, i64 %i.qm ; 4 uses
  store i64 2, ptr %i.qr, align 8, !noalias !16006
  %.sroa.439.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  store i64 %.pre-phi1062, ptr %.sroa.439.0..sroa_idx.i100, align 8, !noalias !16006
  %.sroa.540.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  store i64 %.pre-phi1064, ptr %.sroa.540.0..sroa_idx.i101, align 8, !noalias !16006
  %.sroa.641.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  store i64 %i.qi, ptr %.sroa.641.0..sroa_idx.i102, align 8, !noalias !16006
  %i.qs = add i64 %i.qm, 1
  store i64 %i.qs, ptr %i.ql, align 8, !alias.scope !16011, !noalias !16006
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit

bb.en:                                            ; preds = %bb.ep, %.lr.ph508.i
  %i.qt = mul i64 %.sroa.09.0506.i, %i.pj         ; 4 uses
  %i.qu = add i64 %.sroa.09.0506.i, %.sroa.0.0    ; 4 uses
  %i.qv = add i64 %.sroa.039.0505.i, %.sroa.0218.0 ; 4 uses
  %i.qw = sub i64 %i.qv, %i.bd                    ; 3 uses
  %i.qx = icmp ult i64 %i.qw, %i.bc
  br i1 %i.qx, label %bb.eq, label %.invoke.i121

.invoke.i121:                                     ; preds = %bb.gm, %bb.eq, %bb.en, %bb.fc, %bb.gd, %bb.gy, %bb.gx, %13
  %i.qy = phi i64 [ %.reass483.i, %bb.gy ], [ %.reass.i170, %bb.gx ], [ %i.bc, %bb.fc ], [ %umax703.le.i, %13 ], [ %i.qw, %bb.en ], [ %i.az, %bb.gd ], [ %i.rd, %bb.eq ], [ %.reass.us.i173, %bb.gm ]
  %i.qz = phi i64 [ %i.az, %bb.gy ], [ %i.bc, %bb.gx ], [ %i.bc, %bb.fc ], [ %i.az, %13 ], [ %i.bc, %bb.en ], [ %i.az, %bb.gd ], [ %i.az, %bb.eq ], [ %i.bc, %bb.gm ]
  %i.ra = phi ptr [ @288, %bb.gy ], [ @287, %bb.gx ], [ @273, %bb.fc ], [ @278, %13 ], [ @267, %bb.en ], [ @284, %bb.gd ], [ @268, %bb.eq ], [ @287, %bb.gm ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.qy, i64 noundef %i.qz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ra) #74
          to label %.cont.i122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16006

.cont.i122:                                       ; preds = %.invoke.i121
  unreachable

bb.eo:                                            ; preds = %.lr.ph508.i
  %i.rb = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ep unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16006

bb.ep:                                            ; preds = %bb.eo
  br i1 %i.rb, label %.loopexit64.i166, label %bb.en

bb.eq:                                            ; preds = %bb.en
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.qw ; 2 uses
  %i.rd = sub i64 %i.qu, %i.ba                    ; 3 uses
  %i.re = icmp ult i64 %i.rd, %i.az
  br i1 %i.re, label %bb.er, label %.invoke.i121

bb.er:                                            ; preds = %bb.eq
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.rd ; 2 uses
  %.val212.i123 = load i64, ptr %i.rc, align 8, !noalias !16006, !noundef !28
  %.val213.i124 = load i64, ptr %i.rf, align 8, !noalias !16006, !noundef !28
  %i.rg = icmp eq i64 %.val212.i123, %.val213.i124
  br i1 %i.rg, label %bb.es, label %._crit_edge708.i

._crit_edge708.i:                                 ; preds = %bb.er
  %.pre.i125 = add nuw i64 %.sroa.09.0506.i, 1
  %.pre709.i = mul i64 %.pre.i125, %i.pj
  br label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.rh = add i64 %i.qt, %.sroa.039.0505.i        ; 3 uses
  %i.ri = icmp ult i64 %i.rh, %i.pl
  br i1 %i.ri, label %bb.eu, label %.split443.us.invoke.i126

bb.et:                                            ; preds = %bb.ev, %._crit_edge708.i
  %.pre-phi710.i = phi i64 [ %.pre709.i, %._crit_edge708.i ], [ %i.rm, %bb.ev ] ; 3 uses
  %i.rj = add i64 %.pre-phi710.i, %.sroa.039.0505.i ; 3 uses
  %i.rk = icmp ult i64 %i.rj, %i.pl
  br i1 %i.rk, label %bb.ew, label %.split443.us.invoke.i126

bb.eu:                                            ; preds = %bb.es
  %i.rl = add nuw i64 %.sroa.09.0506.i, 1
  %i.rm = mul i64 %i.rl, %i.pj                    ; 2 uses
  %i.rn = add nuw i64 %.sroa.039.0505.i, 1
  %i.ro = add i64 %i.rn, %i.rm                    ; 3 uses
  %i.rp = icmp ult i64 %i.ro, %i.pl
  br i1 %i.rp, label %bb.ev, label %.split446.us.invoke.i128

bb.ev:                                            ; preds = %bb.eu
  %i.rq = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.rh
  %i.rr = load i8, ptr %i.rq, align 1, !noalias !16006, !noundef !28
  %i.rs = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.ro
  %i.rt = load i8, ptr %i.rs, align 1, !noalias !16006, !noundef !28
  %i.ru = add i8 %i.rt, 1
  %i.rv = icmp eq i8 %i.rr, %i.ru
  br i1 %i.rv, label %.preheader.i155, label %bb.et

.preheader.i155:                                  ; preds = %bb.ev
  %i.rw = icmp ult i64 %.sroa.09.0506.i, %i.gi
  %i.rx = icmp ult i64 %.sroa.039.0505.i, %i.gj
  %or.cond177491.i = select i1 %i.rw, i1 %i.rx, i1 false
  br i1 %or.cond177491.i, label %.lr.ph494.i, label %._crit_edge495.i

bb.ew:                                            ; preds = %bb.et
  %i.ry = add nuw i64 %.sroa.039.0505.i, 1        ; 3 uses
  %i.rz = add i64 %i.ry, %i.qt                    ; 3 uses
  %i.sa = icmp ult i64 %i.rz, %i.pl
  br i1 %i.sa, label %bb.ex, label %.split446.us.invoke.i128

bb.ex:                                            ; preds = %bb.ew
  %i.sb = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.rj
  %i.sc = load i8, ptr %i.sb, align 1, !noalias !16006, !noundef !28
  %i.sd = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.rz
  %i.se = load i8, ptr %i.sd, align 1, !noalias !16006, !noundef !28
  %.not164.i131 = icmp ult i8 %i.sc, %i.se
  br i1 %.not164.i131, label %.preheader51.i146, label %.preheader56.i132

.preheader56.i132:                                ; preds = %bb.ex
  %umax.i133 = tail call i64 @llvm.umax.i64(i64 %.sroa.09.0506.i, i64 %i.gi) ; 3 uses
  %exitcond.not.i1351781.not = icmp ult i64 %.sroa.09.0506.i, %i.gi
  br i1 %exitcond.not.i1351781.not, label %.lr.ph1783, label %._crit_edge1784

.preheader51.i146:                                ; preds = %bb.ex
  %i.sf = icmp ult i64 %.sroa.039.0505.i, %i.gj
  br i1 %i.sf, label %.lr.ph486.i, label %._crit_edge.i147

.lr.ph486.i:                                      ; preds = %.preheader51.i146
  %i.sg = add i64 %.pre-phi710.i, 1
  %i.sh = add i64 %i.qt, 1
  br label %bb.ey

bb.ey:                                            ; preds = %bb.fk, %.lr.ph486.i
  %.sroa.039.1485.i = phi i64 [ %.sroa.039.0505.i, %.lr.ph486.i ], [ %i.tt, %bb.fk ] ; 9 uses
  %i.si = and i64 %.sroa.039.1485.i, 1023
  %i.sj = icmp eq i64 %i.si, 0
  %or.cond173.i152 = and i1 %.sroa.05.0.not507.i, %i.sj
  br i1 %or.cond173.i152, label %bb.fa, label %bb.fc

._crit_edge.i147:                                 ; preds = %bb.fk, %bb.fj, %bb.fh, %.preheader51.i146
  %.sroa.039.1.lcssa.i = phi i64 [ %.sroa.039.0505.i, %.preheader51.i146 ], [ %i.gj, %bb.fk ], [ %.sroa.039.1485.i, %bb.fj ], [ %.sroa.039.1485.i, %bb.fh ] ; 2 uses
  %i.sk = sub i64 %.sroa.039.1.lcssa.i, %.sroa.039.0505.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.sl = load ptr, ptr %.val51, align 8, !alias.scope !16012, !noalias !16006, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 120 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 136 ; 2 uses
  %i.so = load i64, ptr %i.sn, align 8, !alias.scope !16013, !noalias !16006, !noundef !28 ; 3 uses
  %i.sp = load i64, ptr %i.sm, align 8, !range !43, !alias.scope !16013, !noalias !16006, !noundef !28
  %i.sq = icmp eq i64 %i.so, %i.sp
  br i1 %i.sq, label %bb.ez, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i148

bb.ez:                                            ; preds = %._crit_edge.i147
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sm) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i148 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16006

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i148: ; preds = %bb.ez, %._crit_edge.i147
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sl, i64 128
  %i.ss = load ptr, ptr %i.sr, align 8, !alias.scope !16013, !noalias !16006, !nonnull !28, !noundef !28
  %i.st = getelementptr inbounds nuw [40 x i8], ptr %i.ss, i64 %i.so ; 4 uses
  store i64 2, ptr %i.st, align 8, !noalias !16006
  %.sroa.434.0..sroa_idx.i149 = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  store i64 %i.qu, ptr %.sroa.434.0..sroa_idx.i149, align 8, !noalias !16006
  %.sroa.535.0..sroa_idx.i150 = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  store i64 %i.qv, ptr %.sroa.535.0..sroa_idx.i150, align 8, !noalias !16006
  %.sroa.636.0..sroa_idx.i151 = getelementptr inbounds nuw i8, ptr %i.st, i64 24
  store i64 %i.sk, ptr %.sroa.636.0..sroa_idx.i151, align 8, !noalias !16006
  %i.su = add i64 %i.so, 1
  store i64 %i.su, ptr %i.sn, align 8, !alias.scope !16013, !noalias !16006
  br label %bb.fx

bb.fa:                                            ; preds = %bb.ey
  %i.sv = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fb unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16006

bb.fb:                                            ; preds = %bb.fa
  br i1 %i.sv, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread344, label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.ey
  %i.sw = add i64 %.sroa.039.1485.i, %invariant.op.i109 ; 2 uses
  %i.sx = icmp ult i64 %i.sw, %i.bc
  br i1 %i.sx, label %bb.fd, label %.invoke.i121

bb.fd:                                            ; preds = %bb.fc
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.sw
  %.val210.i153 = load i64, ptr %i.sy, align 8, !noalias !16006, !noundef !28
  %.val211.i154 = load i64, ptr %i.rf, align 8, !noalias !16006, !noundef !28
  %i.sz = icmp eq i64 %.val210.i153, %.val211.i154
  br i1 %i.sz, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.ta = add i64 %.sroa.039.1485.i, %i.qt        ; 3 uses
  %i.tb = icmp ult i64 %i.ta, %i.pl
  br i1 %i.tb, label %bb.fg, label %.split443.us.invoke.i126

bb.ff:                                            ; preds = %bb.fh, %bb.fd
  %i.tc = add i64 %.sroa.039.1485.i, %.pre-phi710.i ; 2 uses
  %i.td = icmp ult i64 %i.tc, %i.pl
  br i1 %i.td, label %bb.fi, label %.split443.us.invoke.i126

bb.fg:                                            ; preds = %bb.fe
  %i.te = add i64 %i.sg, %.sroa.039.1485.i        ; 3 uses
  %i.tf = icmp ult i64 %i.te, %i.pl
  br i1 %i.tf, label %bb.fh, label %.split446.us.invoke.i128

bb.fh:                                            ; preds = %bb.fg
  %i.tg = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.ta
  %i.th = load i8, ptr %i.tg, align 1, !noalias !16006, !noundef !28
  %i.ti = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.te
  %i.tj = load i8, ptr %i.ti, align 1, !noalias !16006, !noundef !28
  %i.tk = add i8 %i.tj, 1
  %i.tl = icmp eq i8 %i.th, %i.tk
  br i1 %i.tl, label %._crit_edge.i147, label %bb.ff

bb.fi:                                            ; preds = %bb.ff
  %i.tm = add i64 %i.sh, %.sroa.039.1485.i        ; 2 uses
  %i.tn = icmp ult i64 %i.tm, %i.pl
  br i1 %i.tn, label %bb.fj, label %.split446.us.invoke.i128

bb.fj:                                            ; preds = %bb.fi
  %i.to = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.tc
  %i.tp = load i8, ptr %i.to, align 1, !noalias !16006, !noundef !28
  %i.tq = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.tm
  %i.tr = load i8, ptr %i.tq, align 1, !noalias !16006, !noundef !28
  %i.ts = icmp ult i8 %i.tp, %i.tr
  br i1 %i.ts, label %bb.fk, label %._crit_edge.i147

bb.fk:                                            ; preds = %bb.fj
  %i.tt = add nuw i64 %.sroa.039.1485.i, 1        ; 2 uses
  %i.tu = icmp ult i64 %i.tt, %i.gj
  br i1 %i.tu, label %bb.ey, label %._crit_edge.i147

bb.fl:                                            ; preds = %bb.fw
  %exitcond.not.i135 = icmp eq i64 %.pre-phi712.i, %umax.i133
  br i1 %exitcond.not.i135, label %._crit_edge1784, label %.lr.ph1783

.lr.ph1783:                                       ; preds = %.preheader56.i132, %bb.fl
  %.sroa.09.1.i1341782 = phi i64 [ %.pre-phi712.i, %bb.fl ], [ %.sroa.09.0506.i, %.preheader56.i132 ] ; 6 uses
  br i1 %or.cond170.i120, label %bb.fn, label %bb.fp

._crit_edge1784:                                  ; preds = %bb.fl, %bb.fu, %bb.fw, %.preheader56.i132
  %.sroa.09.1.lcssa.i139 = phi i64 [ %umax.i133, %.preheader56.i132 ], [ %umax.i133, %bb.fl ], [ %.sroa.09.1.i1341782, %bb.fu ], [ %.sroa.09.1.i1341782, %bb.fw ] ; 2 uses
  %i.tv = sub nuw i64 %.sroa.09.1.lcssa.i139, %.sroa.09.0506.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.tw = load ptr, ptr %.val51, align 8, !alias.scope !16014, !noalias !16006, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 120 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 136 ; 2 uses
  %i.tz = load i64, ptr %i.ty, align 8, !alias.scope !16015, !noalias !16006, !noundef !28 ; 3 uses
  %i.ua = load i64, ptr %i.tx, align 8, !range !43, !alias.scope !16015, !noalias !16006, !noundef !28
  %i.ub = icmp eq i64 %i.tz, %i.ua
  br i1 %i.ub, label %bb.fm, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i140

bb.fm:                                            ; preds = %._crit_edge1784
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.tx) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i140 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16006

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i140: ; preds = %bb.fm, %._crit_edge1784
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tw, i64 128
  %i.ud = load ptr, ptr %i.uc, align 8, !alias.scope !16015, !noalias !16006, !nonnull !28, !noundef !28
  %i.ue = getelementptr inbounds nuw [40 x i8], ptr %i.ud, i64 %i.tz ; 4 uses
  store i64 1, ptr %i.ue, align 8, !noalias !16006
  %.sroa.424.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  store i64 %i.qu, ptr %.sroa.424.0..sroa_idx.i141, align 8, !noalias !16006
  %.sroa.525.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  store i64 %i.tv, ptr %.sroa.525.0..sroa_idx.i142, align 8, !noalias !16006
  %.sroa.626.0..sroa_idx.i143 = getelementptr inbounds nuw i8, ptr %i.ue, i64 24
  store i64 %i.qv, ptr %.sroa.626.0..sroa_idx.i143, align 8, !noalias !16006
  %i.uf = add i64 %i.tz, 1
  store i64 %i.uf, ptr %i.ty, align 8, !alias.scope !16015, !noalias !16006
  br label %bb.fx

bb.fn:                                            ; preds = %.lr.ph1783
  %i.ug = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fo unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16006

bb.fo:                                            ; preds = %bb.fn
  br i1 %i.ug, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread344, label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %.lr.ph1783
  %i.uh = mul i64 %.sroa.09.1.i1341782, %i.pj     ; 2 uses
  %i.ui = add i64 %.sroa.09.1.i1341782, %invariant.op482.i ; 2 uses
  %i.uj = icmp ult i64 %i.ui, %i.az
  br i1 %i.uj, label %bb.fq, label %13

13:                                               ; preds = %bb.fp
  %14 = add i64 %.sroa.09.0506.i, %invariant.op482.i
  %umax703.le.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 %14)
  br label %.invoke.i121

bb.fq:                                            ; preds = %bb.fp
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ui
  %.val208.i136 = load i64, ptr %i.rc, align 8, !noalias !16006, !noundef !28
  %.val209.i137 = load i64, ptr %i.uk, align 8, !noalias !16006, !noundef !28
  %i.ul = icmp eq i64 %.val208.i136, %.val209.i137
  br i1 %i.ul, label %bb.fr, label %._crit_edge707.i

._crit_edge707.i:                                 ; preds = %bb.fq
  %.pre711.i = add i64 %.sroa.09.1.i1341782, 1    ; 2 uses
  %.pre713.i = mul i64 %.pre711.i, %i.pj
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.um = add i64 %i.uh, %.sroa.039.0505.i        ; 3 uses
  %i.un = icmp ult i64 %i.um, %i.pl
  br i1 %i.un, label %bb.ft, label %.split443.us.invoke.i126

bb.fs:                                            ; preds = %bb.fu, %._crit_edge707.i
  %.pre-phi714.i.a = phi i64 [ %.pre713.i, %._crit_edge707.i ], [ %i.ur, %bb.fu ]
  %.pre-phi712.i = phi i64 [ %.pre711.i, %._crit_edge707.i ], [ %i.uq, %bb.fu ] ; 2 uses
  %i.uo = add i64 %.pre-phi714.i.a, %.sroa.039.0505.i ; 3 uses
  %i.up = icmp ult i64 %i.uo, %i.pl
  br i1 %i.up, label %bb.fv, label %.split443.us.invoke.i126

bb.ft:                                            ; preds = %bb.fr
  %i.uq = add i64 %.sroa.09.1.i1341782, 1         ; 2 uses
  %i.ur = mul i64 %i.uq, %i.pj                    ; 2 uses
  %i.us = add i64 %i.ur, %i.ry                    ; 3 uses
  %i.ut = icmp ult i64 %i.us, %i.pl
  br i1 %i.ut, label %bb.fu, label %.split446.us.invoke.i128

bb.fu:                                            ; preds = %bb.ft
  %i.uu = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.um
  %i.uv = load i8, ptr %i.uu, align 1, !noalias !16006, !noundef !28
  %i.uw = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.us
  %i.ux = load i8, ptr %i.uw, align 1, !noalias !16006, !noundef !28
  %i.uy = add i8 %i.ux, 1
  %i.uz = icmp eq i8 %i.uv, %i.uy
  br i1 %i.uz, label %._crit_edge1784, label %bb.fs

bb.fv:                                            ; preds = %bb.fs
  %i.va = add i64 %i.uh, %i.ry                    ; 3 uses
  %i.vb = icmp ult i64 %i.va, %i.pl
  br i1 %i.vb, label %bb.fw, label %.split446.us.invoke.i128

bb.fw:                                            ; preds = %bb.fv
  %i.vc = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.uo
  %i.vd = load i8, ptr %i.vc, align 1, !noalias !16006, !noundef !28
  %i.ve = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.va
  %i.vf = load i8, ptr %i.ve, align 1, !noalias !16006, !noundef !28
  %.not167.i138 = icmp ult i8 %i.vd, %i.vf
  br i1 %.not167.i138, label %._crit_edge1784, label %bb.fl

bb.fx:                                            ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i157, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i140, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i148
  %.sroa.039.3.i = phi i64 [ %.sroa.039.0505.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i140 ], [ %.sroa.039.1.lcssa.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i148 ], [ %.sroa.039.4.lcssa.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i157 ] ; 5 uses
  %.sroa.09.3.i144 = phi i64 [ %.sroa.09.1.lcssa.i139, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i140 ], [ %.sroa.09.0506.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i148 ], [ %.sroa.09.4.lcssa.i156, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i157 ] ; 5 uses
  %i.vg = icmp ult i64 %.sroa.09.3.i144, %i.gi    ; 2 uses
  %i.vh = icmp ult i64 %.sroa.039.3.i, %i.gj      ; 3 uses
  %or.cond.i145 = select i1 %i.vg, i1 %i.vh, i1 false
  br i1 %or.cond.i145, label %.lr.ph508.i, label %._crit_edge509.i

._crit_edge495.i:                                 ; preds = %bb.gi, %bb.gh, %bb.ge, %.preheader.i155
  %.sroa.039.4.lcssa.i = phi i64 [ %.sroa.039.0505.i, %.preheader.i155 ], [ %i.wi, %bb.gi ], [ %.sroa.039.4492.i, %bb.ge ], [ %.sroa.039.4492.i, %bb.gh ]
  %.sroa.09.4.lcssa.i156 = phi i64 [ %.sroa.09.0506.i, %.preheader.i155 ], [ %i.wg, %bb.gi ], [ %.sroa.09.4493.i, %bb.ge ], [ %.sroa.09.4493.i, %bb.gh ] ; 2 uses
  %i.vi = sub nuw i64 %.sroa.09.4.lcssa.i156, %.sroa.09.0506.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.vj = load ptr, ptr %.val51, align 8, !alias.scope !16016, !noalias !16006, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 120 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 136 ; 2 uses
  %i.vm = load i64, ptr %i.vl, align 8, !alias.scope !16017, !noalias !16006, !noundef !28 ; 3 uses
  %i.vn = load i64, ptr %i.vk, align 8, !range !43, !alias.scope !16017, !noalias !16006, !noundef !28
  %i.vo = icmp eq i64 %i.vm, %i.vn
  br i1 %i.vo, label %bb.fy, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i157

bb.fy:                                            ; preds = %._crit_edge495.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.vk) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i157 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16006

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i157: ; preds = %bb.fy, %._crit_edge495.i
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vj, i64 128
  %i.vq = load ptr, ptr %i.vp, align 8, !alias.scope !16017, !noalias !16006, !nonnull !28, !noundef !28
  %i.vr = getelementptr inbounds nuw [40 x i8], ptr %i.vq, i64 %i.vm ; 4 uses
  store i64 0, ptr %i.vr, align 8, !noalias !16006
  %.sroa.4.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  store i64 %i.qu, ptr %.sroa.4.0..sroa_idx.i158, align 8, !noalias !16006
  %.sroa.5.0..sroa_idx.i159 = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  store i64 %i.qv, ptr %.sroa.5.0..sroa_idx.i159, align 8, !noalias !16006
  %.sroa.6.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %i.vr, i64 24
  store i64 %i.vi, ptr %.sroa.6.0..sroa_idx.i160, align 8, !noalias !16006
  %i.vs = add i64 %i.vm, 1
  store i64 %i.vs, ptr %i.vl, align 8, !alias.scope !16017, !noalias !16006
  br label %bb.fx

.lr.ph494.i:                                      ; preds = %.preheader.i155, %bb.gi
  %.sroa.09.4493.i = phi i64 [ %i.wg, %bb.gi ], [ %.sroa.09.0506.i, %.preheader.i155 ] ; 5 uses
  %.sroa.039.4492.i = phi i64 [ %i.wi, %bb.gi ], [ %.sroa.039.0505.i, %.preheader.i155 ] ; 6 uses
  %i.vt = and i64 %.sroa.039.4492.i, 1023
  %i.vu = icmp eq i64 %i.vt, 0
  %or.cond180.i161 = select i1 %.sroa.05.0.not507.i, i1 %i.vu, i1 false
  br i1 %or.cond180.i161, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.gc, %.lr.ph494.i
  %i.vv = mul i64 %.sroa.09.4493.i, %i.pj
  %i.vw = add i64 %.sroa.039.4492.i, %invariant.op.i109 ; 2 uses
  %i.vx = icmp ult i64 %i.vw, %i.bc
  br i1 %i.vx, label %bb.gd, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #74
          to label %.noexc191.i162 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16006

.noexc191.i162:                                   ; preds = %bb.ga
  unreachable

bb.gb:                                            ; preds = %.lr.ph494.i
  %i.vy = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gc unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16006

bb.gc:                                            ; preds = %bb.gb
  br i1 %i.vy, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread344, label %bb.fz

bb.gd:                                            ; preds = %bb.fz
  %i.vz = add i64 %.sroa.09.4493.i, %invariant.op482.i ; 2 uses
  %i.wa = icmp ult i64 %i.vz, %i.az
  br i1 %i.wa, label %bb.ge, label %.invoke.i121

bb.ge:                                            ; preds = %bb.gd
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.vw
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.vz
  %.val206.i163 = load i64, ptr %i.wb, align 8, !noalias !16006, !noundef !28
  %.val207.i164 = load i64, ptr %i.wc, align 8, !noalias !16006, !noundef !28
  %i.wd = icmp eq i64 %.val206.i163, %.val207.i164
  br i1 %i.wd, label %bb.gf, label %._crit_edge495.i

bb.gf:                                            ; preds = %bb.ge
  %i.we = add i64 %i.vv, %.sroa.039.4492.i        ; 3 uses
  %i.wf = icmp ult i64 %i.we, %i.pl
  br i1 %i.wf, label %bb.gg, label %.split443.us.invoke.i126

bb.gg:                                            ; preds = %bb.gf
  %i.wg = add nuw i64 %.sroa.09.4493.i, 1         ; 4 uses
  %i.wh = mul i64 %i.wg, %i.pj
  %i.wi = add nuw i64 %.sroa.039.4492.i, 1        ; 4 uses
  %i.wj = add i64 %i.wi, %i.wh                    ; 3 uses
  %i.wk = icmp ult i64 %i.wj, %i.pl
  br i1 %i.wk, label %bb.gh, label %.split446.us.invoke.i128

bb.gh:                                            ; preds = %bb.gg
  %i.wl = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.we
  %i.wm = load i8, ptr %i.wl, align 1, !noalias !16006, !noundef !28
  %i.wn = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.wj
  %i.wo = load i8, ptr %i.wn, align 1, !noalias !16006, !noundef !28
  %i.wp = add i8 %i.wo, 1
  %i.wq = icmp eq i8 %i.wm, %i.wp
  br i1 %i.wq, label %bb.gi, label %._crit_edge495.i

bb.gi:                                            ; preds = %bb.gh
  %i.wr = icmp ult i64 %i.wg, %i.gi
  %i.ws = icmp ult i64 %i.wi, %i.gj
  %or.cond177.i165 = and i1 %i.wr, %i.ws
  br i1 %or.cond177.i165, label %.lr.ph494.i, label %._crit_edge495.i

.loopexit64.i166:                                 ; preds = %bb.gj, %bb.gl, %bb.ep, %bb.gw
  br i1 %i.pm, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread344

bb.gj:                                            ; preds = %.lr.ph481.split.i
  br i1 %i.ps, label %.loopexit64.i166, label %.lr.ph.i167

.lr.ph.i167:                                      ; preds = %bb.gj
  %i.wt = mul i64 %i.pr, %i.pj                    ; 2 uses
  %i.wu = mul i64 %.sroa.0102.0480.i, %i.pj       ; 2 uses
  %.reass483.i = add i64 %i.pr, %invariant.op482.i ; 3 uses
  %i.wv = icmp ult i64 %.reass483.i, %i.az
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.reass483.i
  %.fr.i168 = freeze i1 %i.wv
  br i1 %.fr.i168, label %.lr.ph.split.us.i171, label %.lr.ph.split.i169

.lr.ph.split.us.i171:                             ; preds = %.lr.ph.i167, %bb.gu
  %.sroa.0105.0433.us.i172 = phi i64 [ %i.wx, %bb.gu ], [ %i.gj, %.lr.ph.i167 ] ; 3 uses
  %i.wx = add i64 %.sroa.0105.0433.us.i172, -1    ; 6 uses
  %i.wy = and i64 %i.wx, 1023
  %i.wz = icmp eq i64 %i.wy, 0
  br i1 %i.wz, label %bb.gk, label %bb.gm

bb.gk:                                            ; preds = %.lr.ph.split.us.i171
  %i.xa = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16006

bb.gl:                                            ; preds = %bb.gk
  br i1 %i.xa, label %.loopexit64.i166, label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %.lr.ph.split.us.i171
  %.reass.us.i173 = add i64 %i.wx, %invariant.op.i109 ; 3 uses
  %i.xb = icmp ult i64 %.reass.us.i173, %i.bc
  br i1 %i.xb, label %bb.gn, label %.invoke.i121

bb.gn:                                            ; preds = %bb.gm
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.reass.us.i173
  %.val.us.i174 = load i64, ptr %i.xc, align 8, !noalias !16006, !noundef !28
end_hunk_1
begin_hunk_2_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactIBT_mEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just:bb.a
  store i64 %i.zg, ptr %.sroa.6298.0..sroa_idx, align 8, !noalias !16041
  %i.zr = add i64 %i.zl, 1
  store i64 %i.zr, ptr %i.zk, align 8, !alias.scope !16040, !noalias !16041
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread341

bb.he:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread341
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16044)
  %i.zs = load ptr, ptr %0, align 8, !alias.scope !16045, !nonnull !28, !align !35, !noundef !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16047), !noalias !16045
  %i.zt = load ptr, ptr %i.zs, align 8, !alias.scope !16048, !noalias !16045, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 120 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 136 ; 2 uses
  %i.zw = load i64, ptr %i.zv, align 8, !alias.scope !16049, !noalias !16050, !noundef !28 ; 3 uses
  %i.zx = load i64, ptr %i.zu, align 8, !range !43, !alias.scope !16049, !noalias !16050, !noundef !28
  %i.zy = icmp eq i64 %i.zw, %i.zx
  br i1 %i.zy, label %bb.hf, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit185

bb.hf:                                            ; preds = %bb.he
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.zu) #73, !noalias !16051
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit185

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit185: ; preds = %bb.he, %bb.hf
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zt, i64 128
  %i.aaa = load ptr, ptr %i.zz, align 8, !alias.scope !16049, !noalias !16050, !nonnull !28, !noundef !28
  %i.aab = getelementptr inbounds nuw [40 x i8], ptr %i.aaa, i64 %i.zw ; 4 uses
  store i64 0, ptr %i.aab, align 8, !noalias !16050
  %.sroa.4266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  store i64 %i.be, ptr %.sroa.4266.0..sroa_idx, align 8, !noalias !16050
  %.sroa.5267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  store i64 %i.bf, ptr %.sroa.5267.0..sroa_idx, align 8, !noalias !16050
  %.sroa.6268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aab, i64 24
  store i64 %.sroa.0.0.i63, ptr %.sroa.6268.0..sroa_idx, align 8, !noalias !16050
  %i.aac = add i64 %i.zw, 1
  store i64 %i.aac, ptr %i.zv, align 8, !alias.scope !16049, !noalias !16050
  br label %bb.hg

bb.hg:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactIB1e_mEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread341, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit185
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16296)
  %i.b = icmp uge i64 %2, %3
  %i.c = icmp uge i64 %5, %6
  %or.cond.i53 = or i1 %i.b, %i.c
  br i1 %or.cond.i53, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i.i = sub nuw i64 %6, %5
  %spec.select.i.i4.i.i.i = sub nuw i64 %3, %2
  %..i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i54 = icmp eq i64 %..i.i.i.i, 0
  br i1 %.not.i54, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !16297, !noalias !16298, !noundef !28
  %invariant.op.i.i.i.i = sub i64 %5, %i.e        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !16297, !noalias !16298, !noundef !28 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.h, align 8, !alias.scope !16296, !nonnull !28
  %i.m = load i64, ptr %i.i, align 8, !alias.scope !16295
  %invariant.op.i = sub i64 %2, %i.m              ; 2 uses
  %i.n = load i64, ptr %i.j, align 8, !alias.scope !16295 ; 3 uses
  %i.o = load ptr, ptr %i.k, align 8, !alias.scope !16295, !nonnull !28
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sroa.01.033.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.p, %bb.f ] ; 5 uses
  %i.p = add nuw i64 %.sroa.01.033.i.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16299)
  %.reass.i.i.i.i = add nuw i64 %.sroa.01.033.i.i.i.i, %invariant.op.i.i.i.i ; 2 uses
  %i.q = icmp ult i64 %.reass.i.i.i.i, %i.g
  br i1 %i.q, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %invariant.op.i.i.i.i)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @564) #74, !noalias !16300
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i: ; preds = %bb.c
  %.reass.i = add nuw i64 %.sroa.01.033.i.i.i.i, %invariant.op.i ; 2 uses
  %i.r = icmp ult i64 %.reass.i, %i.n
  br i1 %i.r, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i
  %umax17.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %invariant.op.i)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax17.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565) #74, !noalias !16301
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.reass.i.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.reass.i
  %.val.i.i.i.i.i = load i64, ptr %i.s, align 8, !noalias !16302, !noundef !28
  %.val7.i.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !16302, !noundef !28
  %i.u = icmp eq i64 %.val.i.i.i.i.i, %.val7.i.i.i.i.i
  br i1 %i.u, label %bb.f, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit

bb.f:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, %..i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread318, label %bb.c

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %.not = icmp eq i64 %.sroa.01.033.i.i.i.i, 0
  br i1 %.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread318

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.b, %bb.a, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i55317 = phi i64 [ 0, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0.0.i55321, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.v = add i64 %.sroa.0.0.i55317, %2            ; 3 uses
  %i.w = add i64 %.sroa.0.0.i55317, %5            ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16304)
  %i.x = icmp uge i64 %i.v, %3
  %i.y = icmp uge i64 %i.w, %6
  %or.cond.i56 = or i1 %i.x, %i.y
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br i1 %or.cond.i56, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge, label %.lr.ph.i.i.i.i57

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge: ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert1043 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre1044 = load i64, ptr %.phi.trans.insert1043, align 8
  %.phi.trans.insert1045 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre1046 = load ptr, ptr %.phi.trans.insert1045, align 8
  %.phi.trans.insert1047 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre1048 = load i64, ptr %.phi.trans.insert1047, align 8
  %.phi.trans.insert1049 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre1050 = load i64, ptr %.phi.trans.insert1049, align 8
  %.phi.trans.insert1051 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre1052 = load ptr, ptr %.phi.trans.insert1051, align 8
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit

.lr.ph.i.i.i.i57:                                 ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = sub nuw i64 %3, %i.v                    ; 2 uses
  %i.af = sub nuw i64 %6, %i.w                    ; 2 uses
  %i.ag = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !16304 ; 4 uses
  %i.ah = load i64, ptr %i.z, align 8, !alias.scope !16304 ; 5 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !alias.scope !16304, !nonnull !28 ; 4 uses
  %i.aj = load i64, ptr %i.ab, align 8, !alias.scope !16303 ; 4 uses
  %i.ak = load i64, ptr %i.ac, align 8, !alias.scope !16303 ; 5 uses
  %i.al = load ptr, ptr %i.ad, align 8, !alias.scope !16303, !nonnull !28 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i57
  %i.am = phi i64 [ %3, %.lr.ph.i.i.i.i57 ], [ %i.ap, %bb.k ]
  %.sroa.01.030.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i57 ], [ %i.ax, %bb.k ] ; 3 uses
  %i.an = phi i64 [ %6, %.lr.ph.i.i.i.i57 ], [ %i.ao, %bb.k ]
  %i.ao = add i64 %i.an, -1                       ; 2 uses
  %exitcond.not.i.i.i.i58 = icmp eq i64 %.sroa.01.030.i.i.i.i, %i.ae
  br i1 %exitcond.not.i.i.i.i58, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = add i64 %i.am, -1                       ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ag                    ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %i.ah
  br i1 %i.ar, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i59, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aq, i64 noundef %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @566) #74, !noalias !16305
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i59: ; preds = %bb.h
  %i.as = sub i64 %i.ap, %i.aj                    ; 3 uses
  %i.at = icmp ult i64 %i.as, %i.ak
  br i1 %i.at, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60, label %bb.j

bb.j:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i59
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.as, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @567) #74, !noalias !16306
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i59
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aq
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.as
  %.val.i.i.i.i.i61 = load i64, ptr %i.au, align 8, !noalias !16307, !noundef !28
  %.val7.i.i.i.i.i62 = load i64, ptr %i.av, align 8, !noalias !16307, !noundef !28
  %i.aw = icmp eq i64 %.val.i.i.i.i.i61, %.val7.i.i.i.i.i62
  br i1 %i.aw, label %bb.k, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit

bb.k:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60
  %i.ax = add nuw i64 %.sroa.01.030.i.i.i.i, 1    ; 2 uses
  %exitcond62.not.i.i.i.i = icmp eq i64 %i.ax, %i.af
  br i1 %exitcond62.not.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit, label %bb.g

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit: ; preds = %bb.g, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60, %bb.k, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge
  %i.ay = phi ptr [ %.pre1052, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.al, %bb.k ], [ %i.al, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.al, %bb.g ] ; 10 uses
  %i.az = phi i64 [ %.pre1050, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ak, %bb.k ], [ %i.ak, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.ak, %bb.g ] ; 24 uses
  %i.ba = phi i64 [ %.pre1048, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.aj, %bb.k ], [ %i.aj, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.aj, %bb.g ] ; 5 uses
  %i.bb = phi ptr [ %.pre1046, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ai, %bb.k ], [ %i.ai, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.ai, %bb.g ] ; 11 uses
  %i.bc = phi i64 [ %.pre1044, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ah, %bb.k ], [ %i.ah, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.ah, %bb.g ] ; 29 uses
  %i.bd = phi i64 [ %.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ag, %bb.k ], [ %i.ag, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.ag, %bb.g ] ; 8 uses
  %.sroa.0.0.i63 = phi i64 [ 0, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ae, %bb.g ], [ %.sroa.01.030.i.i.i.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.af, %bb.k ] ; 4 uses
  %i.be = sub i64 %3, %.sroa.0.0.i63              ; 9 uses
  %i.bf = sub i64 %6, %.sroa.0.0.i63              ; 9 uses
  br label %bb.m

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread318: ; preds = %bb.f, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i55321 = phi i64 [ %.sroa.01.033.i.i.i.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit ], [ %..i.i.i.i, %bb.f ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16309)
  %i.bg = load ptr, ptr %0, align 8, !alias.scope !16310, !nonnull !28, !align !35, !noundef !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16312), !noalias !16310
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !16313, !noalias !16310, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 120 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 136 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !16314, !noalias !16315, !noundef !28 ; 3 uses
  %i.bl = load i64, ptr %i.bi, align 8, !range !43, !alias.scope !16314, !noalias !16315, !noundef !28
  %i.bm = icmp eq i64 %i.bk, %i.bl
  br i1 %i.bm, label %bb.l, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit

bb.l:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread318
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi) #73, !noalias !16316
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit: ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread318, %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !16314, !noalias !16315, !nonnull !28, !noundef !28
  %i.bp = getelementptr inbounds nuw [40 x i8], ptr %i.bo, i64 %i.bk ; 4 uses
  store i64 0, ptr %i.bp, align 8, !noalias !16315
  %.sroa.4271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %2, ptr %.sroa.4271.0..sroa_idx, align 8, !noalias !16315
  %.sroa.5272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 %5, ptr %.sroa.5272.0..sroa_idx, align 8, !noalias !16315
  %.sroa.6273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i64 %.sroa.0.0.i55321, ptr %.sroa.6273.0..sroa_idx, align 8, !noalias !16315
  %i.bq = add i64 %i.bk, 1
  store i64 %i.bq, ptr %i.bj, align 8, !alias.scope !16314, !noalias !16315
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread

bb.m:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0218.0 = phi i64 [ %i.w, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0218.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.v, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit ] ; 33 uses
  %i.br = icmp ult i64 %.sroa.0.0, %i.be          ; 2 uses
  %i.bs = icmp ult i64 %.sroa.0218.0, %i.bf       ; 3 uses
  %or.cond347 = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond347, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, %bb.m
  br i1 %i.br, label %bb.az, label %bb.ba

bb.o:                                             ; preds = %bb.m
  %i.bt = sub nuw i64 %i.be, %.sroa.0.0           ; 6 uses
  %i.bu = sub nuw i64 %i.bf, %.sroa.0218.0        ; 6 uses
  %i.bv = icmp ult i64 %i.bt, 97
  %i.bw = icmp ult i64 %i.bu, 97
  %or.cond.i = or i1 %i.bw, %i.bv
  br i1 %or.cond.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bt) ; 2 uses
  %..i64 = tail call noundef i64 @llvm.umax.i64(i64 %i.bu, i64 %i.bt)
  %i.bx = shl nuw i64 %..i, 1
  %i.by = icmp slt i64 %..i, 0
  br i1 %i.by, label %bb.q, label %bb.r, !prof !44

bb.q:                                             ; preds = %bb.p
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.052.0.i = phi i64 [ -1, %bb.q ], [ %i.bx, %bb.p ]
  %i.bz = icmp ult i64 %..i64, %.sroa.052.0.i
  br i1 %i.bz, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i = icmp ule i64 %i.bu, %i.bt
  %i.ca = icmp ule i64 %i.bt, %i.bu
  %.not.i.fr = freeze i1 %.not.i
  %i.cb = sub i64 %.sroa.0218.0, %i.bd            ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.bc
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.cb
  br label %bb.t

.loopexit:                                        ; preds = %.outer, %bb.ah, %bb.w, %bb.ag
  %.sroa.525.2.i.ph.lcssa570 = phi i64 [ %.sroa.525.2.i.ph725, %bb.w ], [ %.sroa.525.2.i.ph725, %bb.ah ], [ %.sroa.525.2.i.ph725, %bb.ag ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa563 = phi i64 [ %.sroa.023.1.i.ph726, %bb.w ], [ %.sroa.023.1.i.ph726, %bb.ah ], [ %.sroa.023.1.i.ph726, %bb.ag ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa556 = phi i64 [ %.sroa.9.2.i.ph727, %bb.w ], [ %.sroa.9.2.i.ph727, %bb.ah ], [ %.sroa.9.2.i.ph727, %bb.ag ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa549 = phi i64 [ %.sroa.12.2.i.ph728, %bb.w ], [ %.sroa.12.2.i.ph728, %bb.ah ], [ %.sroa.12.2.i.ph728, %bb.ag ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, -1
  %exitcond1042 = icmp eq i64 %i.ce, 5
  br i1 %exitcond1042, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit
  %indvars.iv = phi i64 [ %i.bt, %bb.s ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.sroa.12.0.i733 = phi i64 [ undef, %bb.s ], [ %.sroa.12.2.i.ph.lcssa549, %.loopexit ]
  %.sroa.9.0.i732 = phi i64 [ undef, %bb.s ], [ %.sroa.9.2.i.ph.lcssa556, %.loopexit ]
  %.sroa.023.0.i731 = phi i64 [ 0, %bb.s ], [ %.sroa.023.1.i.ph.lcssa563, %.loopexit ]
  %.sroa.525.0.i730 = phi i64 [ undef, %bb.s ], [ %.sroa.525.2.i.ph.lcssa570, %.loopexit ]
  %.sroa.0251.0729 = phi i64 [ 0, %bb.s ], [ %i.ce, %.loopexit ] ; 9 uses
  %i.ce = add nuw nsw i64 %.sroa.0251.0729, 1     ; 2 uses
  %i.cf = icmp eq i64 %.sroa.0251.0729, 0
  %i.cg = add i64 %.sroa.0251.0729, %.sroa.0.0    ; 2 uses
  %i.ch = sub i64 %i.cg, %i.ba                    ; 4 uses
  %i.ci = icmp ult i64 %i.ch, %i.az               ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ch ; 2 uses
  %i.ck = sub i64 %i.be, %i.cg
  br label %.lr.ph

bb.u:                                             ; preds = %.loopexit
  %i.cl = trunc nuw i64 %.sroa.023.1.i.ph.lcssa563 to i1
  br i1 %i.cl, label %.loopexit445, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit

.loopexit445:                                     ; preds = %bb.ai, %bb.u
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa570, %bb.u ], [ %.sroa.0251.0729, %bb.ai ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa556, %bb.u ], [ %.us-phi639, %bb.ai ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa549, %bb.u ], [ %.sroa.01.0.i.lcssa, %bb.ai ] ; 3 uses
  %i.cm = icmp eq i64 %.sroa.525.1.i, 0
  %i.cn = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.cm, label %bb.ao, label %bb.ap

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.w
  %.sroa.0252.0613 = phi i64 [ %i.co, %bb.w ], [ %.sroa.0252.0.ph724, %.lr.ph.split ] ; 2 uses
  %i.co = add nuw nsw i64 %.sroa.0252.0613, 1     ; 2 uses
  %i.cp = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !16317
  br i1 %i.cp, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.split
  %.not736 = icmp eq i64 %.sroa.0252.0613, 0
  br i1 %.not736, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30
  %exitcond = icmp eq i64 %i.co, 5
  br i1 %exitcond, label %.loopexit, label %.lr.ph.split.split

bb.x:                                             ; preds = %bb.v
  br i1 %i.cc, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31, label %.split622.loopexit1284

.split622.loopexit1284:                           ; preds = %bb.x
  %i.cq = sub i64 %.sroa.0218.0, %i.bd
  br label %.split622

.split622:                                        ; preds = %bb.af, %.split622.loopexit1284
  %.us-phi = phi i64 [ %i.cq, %.split622.loopexit1284 ], [ %i.dg, %bb.af ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @293) #74, !noalias !16318
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31: ; preds = %bb.x
  br i1 %i.ci, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30, label %.split625

.split625:                                        ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ch, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @294) #74, !noalias !16319
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31
  %.val49 = load i64, ptr %i.cd, align 8, !noundef !28
  %.val50 = load i64, ptr %i.cj, align 8, !noundef !28
  %.not348 = icmp eq i64 %.val49, %.val50
  br i1 %.not348, label %.split629, label %bb.w

.split629.loopexit:                               ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30.us
  %.pre1054 = sub i64 %i.bf, %i.df
  br label %.split629

.split629:                                        ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30, %.split629.loopexit
  %.pre-phi = phi i64 [ %.pre1054, %.split629.loopexit ], [ %i.bu, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ] ; 2 uses
  %.us-phi635 = phi i64 [ %i.df, %.split629.loopexit ], [ %.sroa.0218.0, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ]
  %.us-phi638 = phi i64 [ %i.dd, %.split629.loopexit ], [ 1, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ] ; 2 uses
  %.us-phi639 = phi i64 [ %.sroa.0252.0613.us, %.split629.loopexit ], [ 0, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ] ; 4 uses
  %..i73 = tail call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.ck)
  %.not737 = icmp eq i64 %..i73, 0
  br i1 %.not737, label %.outer, label %.lr.ph721

.lr.ph721:                                        ; preds = %.split629
  %i.cr = sub i64 %.us-phi635, %i.bd              ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %.pre-phi) ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph721, %bb.ad
  %.sroa.01.0.i720 = phi i64 [ 0, %.lr.ph721 ], [ %i.db, %bb.ad ] ; 5 uses
  %i.cs = and i64 %.sroa.01.0.i720, 1023
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !16317
  br i1 %i.cu, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cv = add nuw i64 %i.cr, %.sroa.01.0.i720     ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.bc
  br i1 %i.cw, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit29, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %umax1024 = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.cr)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax1024, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #74, !noalias !16320
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit29: ; preds = %bb.aa
  %i.cx = add nuw i64 %i.ch, %.sroa.01.0.i720     ; 3 uses
  %i.cy = icmp ult i64 %i.cx, %i.az
end_hunk_2
begin_hunk_3_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just:bb.a

bb.au:                                            ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16338), !noalias !16322
  %i.es = load ptr, ptr %0, align 8, !alias.scope !16339, !noalias !16322, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16341), !noalias !16342
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !16343, !noalias !16342, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 120 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 136 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !16344, !noalias !16345, !noundef !28 ; 3 uses
  %i.ex = load i64, ptr %i.eu, align 8, !range !43, !alias.scope !16344, !noalias !16345, !noundef !28
  %i.ey = icmp eq i64 %i.ew, %i.ex
  br i1 %i.ey, label %bb.av, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit78

bb.av:                                            ; preds = %bb.au
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eu) #73, !noalias !16346
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit78

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit78: ; preds = %bb.au, %bb.av
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 128
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !16344, !noalias !16345, !nonnull !28, !noundef !28
  %i.fb = getelementptr inbounds nuw [40 x i8], ptr %i.fa, i64 %i.ew ; 4 uses
  store i64 1, ptr %i.fb, align 8, !noalias !16345
  %.sroa.4276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4276.0..sroa_idx, align 8, !noalias !16345
  %.sroa.5277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5277.0..sroa_idx, align 8, !noalias !16345
  %.sroa.6278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  store i64 %.sroa.0218.0, ptr %.sroa.6278.0..sroa_idx, align 8, !noalias !16345
  %i.fc = add i64 %i.ew, 1
  store i64 %i.fc, ptr %i.ev, align 8, !alias.scope !16344, !noalias !16345
  br label %bb.aq

bb.aw:                                            ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16348), !noalias !16322
  %i.fd = load ptr, ptr %0, align 8, !alias.scope !16349, !noalias !16322, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16351), !noalias !16352
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !16353, !noalias !16352, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 120 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 136 ; 3 uses
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !16354, !noalias !16355, !noundef !28 ; 4 uses
  %i.fi = load i64, ptr %i.ff, align 8, !range !43, !alias.scope !16354, !noalias !16355, !noundef !28
  %i.fj = icmp eq i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.ax, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79

bb.ax:                                            ; preds = %bb.aw
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ff) #73, !noalias !16356
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79: ; preds = %bb.aw, %bb.ax
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 128 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !16354, !noalias !16355, !nonnull !28, !noundef !28
  %i.fm = getelementptr inbounds nuw [40 x i8], ptr %i.fl, i64 %i.fh ; 4 uses
  store i64 1, ptr %i.fm, align 8, !noalias !16355
  %.sroa.4306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4306.0..sroa_idx, align 8, !noalias !16355
  %.sroa.5307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5307.0..sroa_idx, align 8, !noalias !16355
  %.sroa.6308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store i64 %.sroa.0218.0, ptr %.sroa.6308.0..sroa_idx, align 8, !noalias !16355
  %i.fn = add i64 %i.fh, 1                        ; 3 uses
  store i64 %i.fn, ptr %i.fg, align 8, !alias.scope !16354, !noalias !16355
  %i.fo = load i64, ptr %i.ff, align 8, !range !43, !alias.scope !16357, !noalias !16355, !noundef !28
  %i.fp = icmp eq i64 %i.fn, %i.fo
  br i1 %i.fp, label %bb.ay, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit80

bb.ay:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ff) #73, !noalias !16358
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit80

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit80: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79, %bb.ay
  %i.fq = load ptr, ptr %i.fk, align 8, !alias.scope !16357, !noalias !16355, !nonnull !28, !noundef !28
  %i.fr = getelementptr inbounds nuw [40 x i8], ptr %i.fq, i64 %i.fn ; 4 uses
  store i64 2, ptr %i.fr, align 8, !noalias !16355
  %.sroa.4311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4311.0..sroa_idx, align 8, !noalias !16355
  %.sroa.5312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store i64 %.sroa.0218.0, ptr %.sroa.5312.0..sroa_idx, align 8, !noalias !16355
  %.sroa.6313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6313.0..sroa_idx, align 8, !noalias !16355
  %i.fs = add i64 %i.fh, 2
  store i64 %i.fs, ptr %i.fg, align 8, !alias.scope !16357, !noalias !16355
  br label %bb.aq

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQIB1G_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit: ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %.lr.ph.split.us, %bb.z, %bb.o, %bb.r, %bb.u, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit76
  %.sroa.0218.2 = phi i64 [ %.sroa.0218.0, %bb.o ], [ %.sroa.0218.0, %bb.r ], [ %.sroa.0218.0, %bb.u ], [ %i.eh, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit76 ], [ %.sroa.0218.0, %.lr.ph.split.split ], [ %.sroa.0218.0, %.lr.ph.split.us ], [ %.sroa.0218.0, %bb.z ], [ %.sroa.0218.0, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.o ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %bb.u ], [ %i.eg, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit76 ], [ %.sroa.0.0, %.lr.ph.split.split ], [ %.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.0.0, %bb.z ], [ %.sroa.0.0, %.lr.ph.split.split.us ] ; 2 uses
  %i.ft = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.fu = icmp eq i64 %.sroa.0218.2, %.sroa.0218.0
  %or.cond = select i1 %i.ft, i1 %i.fu, i1 false
  br i1 %or.cond, label %bb.n, label %bb.m

bb.az:                                            ; preds = %bb.n
  br i1 %i.bs, label %bb.bd, label %bb.bb

bb.ba:                                            ; preds = %bb.n
  br i1 %i.bs, label %.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread341

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread341: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit219.sink.split.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit81, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit184, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit183, %bb.gz, %bb.ba
  %.not26 = icmp eq i64 %.sroa.0.0.i63, 0
  br i1 %.not26, label %bb.hg, label %bb.he

bb.bb:                                            ; preds = %bb.az
  %i.fv = sub nuw i64 %i.be, %.sroa.0.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16360)
  %i.fw = load ptr, ptr %0, align 8, !alias.scope !16361, !nonnull !28, !align !35, !noundef !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16363), !noalias !16361
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !16364, !noalias !16361, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 120 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 136 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !alias.scope !16365, !noalias !16366, !noundef !28 ; 3 uses
  %i.gb = load i64, ptr %i.fy, align 8, !range !43, !alias.scope !16365, !noalias !16366, !noundef !28
  %i.gc = icmp eq i64 %i.ga, %i.gb
  br i1 %i.gc, label %bb.bc, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit81

bb.bc:                                            ; preds = %bb.bb
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fy) #73, !noalias !16367
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit81

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit81: ; preds = %bb.bb, %bb.bc
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 128
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !16365, !noalias !16366, !nonnull !28, !noundef !28
  %i.gf = getelementptr inbounds nuw [40 x i8], ptr %i.ge, i64 %i.ga ; 4 uses
  store i64 1, ptr %i.gf, align 8, !noalias !16366
  %.sroa.4281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4281.0..sroa_idx, align 8, !noalias !16366
  %.sroa.5282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store i64 %i.fv, ptr %.sroa.5282.0..sroa_idx, align 8, !noalias !16366
  %.sroa.6283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store i64 %.sroa.0218.0, ptr %.sroa.6283.0..sroa_idx, align 8, !noalias !16366
  %i.gg = add i64 %i.ga, 1
  store i64 %i.gg, ptr %i.fz, align 8, !alias.scope !16365, !noalias !16366
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread341

bb.bd:                                            ; preds = %bb.az
  %i.gh = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !16368
  br i1 %i.gh, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gi = sub nuw i64 %i.be, %.sroa.0.0           ; 22 uses
  %i.gj = sub nuw i64 %i.bf, %.sroa.0218.0        ; 22 uses
  %i.gk = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gi, i64 %i.gj) ; 2 uses
  %i.gl = extractvalue { i64, i1 } %i.gk, 1
  br i1 %i.gl, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.bf, !prof !44

bb.bf:                                            ; preds = %bb.be
  %i.gm = extractvalue { i64, i1 } %i.gk, 0
  %..i83 = tail call noundef i64 @llvm.umax.i64(i64 %i.gj, i64 %i.gi)
  %..i82 = tail call noundef i64 @llvm.umin.i64(i64 %i.gj, i64 %i.gi)
  %i.gn = add i64 %..i82, -65
  %or.cond.i27 = icmp ult i64 %i.gn, -64
  %i.go = icmp ult i64 %..i83, 512
  %or.cond1.i = or i1 %i.go, %or.cond.i27
  %i.gp = icmp ugt i64 %i.gm, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.gp
  br i1 %or.cond3.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not.i28 = icmp ugt i64 %i.gi, %i.gj
  %.val51 = load ptr, ptr %0, align 8             ; 20 uses
  %i.gq = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !28 ; 2 uses
  br i1 %.not.i28, label %bb.bh, label %bb.ec

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.gq, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gr = add i64 %i.gi, 1                        ; 11 uses
  %i.gs = add nuw i64 %i.gj, 1
  %i.gt = mul i64 %i.gr, %i.gs                    ; 29 uses
  %.not.i.i.i = icmp slt i64 %i.gt, 0
  br i1 %.not.i.i.i, label %bb.bm, label %bb.bj, !prof !42

bb.bj:                                            ; preds = %bb.bi
  %i.gu = icmp eq i64 %i.gt, 0                    ; 3 uses
  br i1 %i.gu, label %.lr.ph466.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !16369
  %i.gv = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.gt, i64 noundef range(i64 1, 9) 1) #69, !noalias !16369 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gx = ptrtoint ptr %i.gv to i64
  br label %.lr.ph466.i

bb.bm:                                            ; preds = %bb.bk, %bb.bi
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.bk ], [ 0, %bb.bi ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.gt) #70, !noalias !16370
  unreachable

.lr.ph466.i:                                      ; preds = %bb.bj, %bb.bl
  %.sroa.10.0.i.i = phi i64 [ %i.gx, %bb.bl ], [ 1, %bb.bj ]
  %i.gy = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 21 uses
  %invariant.op467.i = sub i64 %.sroa.0218.0, %i.bd ; 4 uses
  %invariant.op.i85 = sub i64 %.sroa.0.0, %i.ba   ; 3 uses
  br label %.lr.ph466.split.i

.lr.ph466.split.i:                                ; preds = %.lr.ph466.i, %..loopexit68_crit_edge.split.us.i
  %.sroa.0102.0465.i = phi i64 [ %i.gz, %..loopexit68_crit_edge.split.us.i ], [ %i.gj, %.lr.ph466.i ] ; 2 uses
  %i.gz = add i64 %.sroa.0102.0465.i, -1          ; 4 uses
  %i.ha = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.do unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16371

._crit_edge493.i:                                 ; preds = %bb.dc
  br i1 %i.mp, label %bb.bn, label %bb.bp

.lr.ph492.i:                                      ; preds = %..loopexit68_crit_edge.split.us.i, %bb.dc
  %.sroa.05.0.not491.i = phi i1 [ false, %bb.dc ], [ true, %..loopexit68_crit_edge.split.us.i ] ; 3 uses
  %.sroa.09.0490.i = phi i64 [ %.sroa.09.3.i, %bb.dc ], [ 0, %..loopexit68_crit_edge.split.us.i ] ; 13 uses
  %.sroa.038.0489.i = phi i64 [ %.sroa.038.3.i, %bb.dc ], [ 0, %..loopexit68_crit_edge.split.us.i ] ; 17 uses
  %i.hb = and i64 %.sroa.038.0489.i, 1023
  %i.hc = icmp eq i64 %i.hb, 0
  %or.cond170.i = select i1 %.sroa.05.0.not491.i, i1 %i.hc, i1 false ; 2 uses
  br i1 %or.cond170.i, label %bb.bt, label %bb.bs

bb.bn:                                            ; preds = %._crit_edge493.i
  %i.hd = add i64 %.sroa.038.3.i, %.sroa.0.0      ; 2 uses
  %i.he = sub nuw i64 %i.gi, %.sroa.038.3.i
  %i.hf = add i64 %.sroa.09.3.i, %.sroa.0218.0    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hg = load ptr, ptr %.val51, align 8, !alias.scope !16372, !noalias !16371, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 120 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 136 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !alias.scope !16373, !noalias !16371, !noundef !28 ; 3 uses
  %i.hk = load i64, ptr %i.hh, align 8, !range !43, !alias.scope !16373, !noalias !16371, !noundef !28
  %i.hl = icmp eq i64 %i.hj, %i.hk
  br i1 %i.hl, label %bb.bo, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hh) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16371

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i: ; preds = %bb.bo, %bb.bn
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 128
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !16373, !noalias !16371, !nonnull !28, !noundef !28
  %i.ho = getelementptr inbounds nuw [40 x i8], ptr %i.hn, i64 %i.hj ; 4 uses
  store i64 1, ptr %i.ho, align 8, !noalias !16371
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store i64 %i.hd, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !16371
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store i64 %i.he, ptr %.sroa.530.0..sroa_idx.i, align 8, !noalias !16371
  %.sroa.631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  store i64 %i.hf, ptr %.sroa.631.0..sroa_idx.i, align 8, !noalias !16371
  %i.hp = add i64 %i.hj, 1
  store i64 %i.hp, ptr %i.hi, align 8, !alias.scope !16373, !noalias !16371
  br i1 %i.mo, label %bb.bq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit219.sink.split.i

bb.bp:                                            ; preds = %._crit_edge493.i
  br i1 %i.mo, label %._crit_edge1056, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit219.sink.split.i

._crit_edge1056:                                  ; preds = %bb.bp
  %.pre1057 = add i64 %.sroa.038.3.i, %.sroa.0.0
  %.pre1059 = add i64 %.sroa.09.3.i, %.sroa.0218.0
  br label %bb.bq

.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cs, %bb.dg, %bb.cf, %bb.cr, %bb.ce, %.split446.us.invoke.i, %bb.df
  %lpad.loopexit.split-lp1832 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dp, %bb.dd, %bb.bt, %.lr.ph466.split.i, %.split443.us.invoke.i, %bb.ea, %.invoke.i, %bb.br, %bb.bo
  %lpad.loopexit.split-lp1857 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.gu, label %common.resume, label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi44.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp1857, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1832, %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gy, i64 noundef %i.gt, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !16374
  br label %common.resume

bb.bq:                                            ; preds = %._crit_edge1056, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i
  %.pre-phi1060 = phi i64 [ %.pre1059, %._crit_edge1056 ], [ %i.hf, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i ]
  %.pre-phi1058 = phi i64 [ %.pre1057, %._crit_edge1056 ], [ %i.hd, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i ]
  %i.hq = sub nuw i64 %i.gj, %.sroa.09.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hr = load ptr, ptr %.val51, align 8, !alias.scope !16375, !noalias !16371, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 120 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 136 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !alias.scope !16376, !noalias !16371, !noundef !28 ; 3 uses
  %i.hv = load i64, ptr %i.hs, align 8, !range !43, !alias.scope !16376, !noalias !16371, !noundef !28
  %i.hw = icmp eq i64 %i.hu, %i.hv
  br i1 %i.hw, label %bb.br, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hs) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16371

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i: ; preds = %bb.br, %bb.bq
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 128
  %i.hy = load ptr, ptr %i.hx, align 8, !alias.scope !16376, !noalias !16371, !nonnull !28, !noundef !28
  %i.hz = getelementptr inbounds nuw [40 x i8], ptr %i.hy, i64 %i.hu ; 4 uses
  store i64 2, ptr %i.hz, align 8, !noalias !16371
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store i64 %.pre-phi1058, ptr %.sroa.439.0..sroa_idx.i, align 8, !noalias !16371
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store i64 %.pre-phi1060, ptr %.sroa.540.0..sroa_idx.i, align 8, !noalias !16371
  %.sroa.641.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  store i64 %i.hq, ptr %.sroa.641.0..sroa_idx.i, align 8, !noalias !16371
  %i.ia = add i64 %i.hu, 1
  store i64 %i.ia, ptr %i.ht, align 8, !alias.scope !16376, !noalias !16371
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit219.sink.split.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit219.sink.split.i.thread: ; preds = %bb.ct, %bb.cg, %bb.dh, %.loopexit64.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gy, i64 noundef %i.gt, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !16371
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit219.sink.split.i: ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i, %bb.bp, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gy, i64 noundef %i.gt, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !16371
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread341

bb.bs:                                            ; preds = %bb.bu, %.lr.ph492.i
  %i.ib = mul i64 %.sroa.09.0490.i, %i.gr         ; 4 uses
  %i.ic = add i64 %.sroa.038.0489.i, %.sroa.0.0   ; 4 uses
  %i.id = add i64 %.sroa.09.0490.i, %.sroa.0218.0 ; 4 uses
  %i.ie = sub i64 %i.id, %i.bd                    ; 3 uses
  %i.if = icmp ult i64 %i.ie, %i.bc
  br i1 %i.if, label %bb.bv, label %.invoke.i

.invoke.i:                                        ; preds = %bb.dr, %bb.bv, %bb.bs, %bb.ch, %bb.di, %bb.eb, %.lr.ph.split.i, %11
  %i.ig = phi i64 [ %.reass.i88, %.lr.ph.split.i ], [ %.reass.i88, %bb.eb ], [ %i.az, %bb.ch ], [ %umax687.le.i, %11 ], [ %i.ie, %bb.bs ], [ %i.az, %bb.di ], [ %i.il, %bb.bv ], [ %.reass.us.i, %bb.dr ]
  %i.ih = phi i64 [ %i.bc, %.lr.ph.split.i ], [ %i.bc, %bb.eb ], [ %i.az, %bb.ch ], [ %i.bc, %11 ], [ %i.bc, %bb.bs ], [ %i.az, %bb.di ], [ %i.az, %bb.bv ], [ %i.az, %bb.dr ]
  %i.ii = phi ptr [ @261, %.lr.ph.split.i ], [ @261, %bb.eb ], [ @247, %bb.ch ], [ @252, %11 ], [ @241, %bb.bs ], [ @258, %bb.di ], [ @242, %bb.bv ], [ @262, %bb.dr ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ig, i64 noundef %i.ih, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ii) #74
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16371

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bt:                                            ; preds = %.lr.ph492.i
  %i.ij = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16371

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.ij, label %.loopexit64.i, label %bb.bs

bb.bv:                                            ; preds = %bb.bs
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ie ; 2 uses
  %i.il = sub i64 %i.ic, %i.ba                    ; 3 uses
  %i.im = icmp ult i64 %i.il, %i.az
  br i1 %i.im, label %bb.bw, label %.invoke.i

bb.bw:                                            ; preds = %bb.bv
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.il ; 2 uses
  %.val212.i = load i64, ptr %i.ik, align 8, !noalias !16371, !noundef !28
  %.val213.i = load i64, ptr %i.in, align 8, !noalias !16371, !noundef !28
  %i.io = icmp eq i64 %.val212.i, %.val213.i
  br i1 %i.io, label %bb.bx, label %._crit_edge692.i

._crit_edge692.i:                                 ; preds = %bb.bw
  %.pre.i = add nuw i64 %.sroa.09.0490.i, 1
  %.pre693.i = mul i64 %.pre.i, %i.gr
  br label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ip = add i64 %i.ib, %.sroa.038.0489.i        ; 3 uses
  %i.iq = icmp ult i64 %i.ip, %i.gt
  br i1 %i.iq, label %bb.bz, label %.split443.us.invoke.i

bb.by:                                            ; preds = %bb.ca, %._crit_edge692.i
  %.pre-phi694.i = phi i64 [ %.pre693.i, %._crit_edge692.i ], [ %i.iu, %bb.ca ] ; 3 uses
  %i.ir = add i64 %.pre-phi694.i, %.sroa.038.0489.i ; 3 uses
  %i.is = icmp ult i64 %i.ir, %i.gt
  br i1 %i.is, label %bb.cb, label %.split443.us.invoke.i

bb.bz:                                            ; preds = %bb.bx
  %i.it = add nuw i64 %.sroa.09.0490.i, 1
  %i.iu = mul i64 %i.it, %i.gr                    ; 2 uses
  %i.iv = add nuw i64 %.sroa.038.0489.i, 1
  %i.iw = add i64 %i.iv, %i.iu                    ; 3 uses
  %i.ix = icmp ult i64 %i.iw, %i.gt
  br i1 %i.ix, label %bb.ca, label %.split446.us.invoke.i

bb.ca:                                            ; preds = %bb.bz
  %i.iy = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ip
  %i.iz = load i8, ptr %i.iy, align 1, !noalias !16371, !noundef !28
  %i.ja = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.iw
  %i.jb = load i8, ptr %i.ja, align 1, !noalias !16371, !noundef !28
  %i.jc = add i8 %i.jb, 1
  %i.jd = icmp eq i8 %i.iz, %i.jc
  br i1 %i.jd, label %.preheader.i, label %bb.by

.preheader.i:                                     ; preds = %bb.ca
  %i.je = icmp ult i64 %.sroa.09.0490.i, %i.gj
  %i.jf = icmp ult i64 %.sroa.038.0489.i, %i.gi
  %or.cond177475.i = select i1 %i.je, i1 %i.jf, i1 false
  br i1 %or.cond177475.i, label %.lr.ph478.i, label %._crit_edge479.i

bb.cb:                                            ; preds = %bb.by
  %i.jg = add nuw i64 %.sroa.038.0489.i, 1        ; 3 uses
  %i.jh = add i64 %i.jg, %i.ib                    ; 3 uses
  %i.ji = icmp ult i64 %i.jh, %i.gt
  br i1 %i.ji, label %bb.cc, label %.split446.us.invoke.i

bb.cc:                                            ; preds = %bb.cb
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ir
  %i.jk = load i8, ptr %i.jj, align 1, !noalias !16371, !noundef !28
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.jh
  %i.jm = load i8, ptr %i.jl, align 1, !noalias !16371, !noundef !28
  %.not164.i = icmp ult i8 %i.jk, %i.jm
  br i1 %.not164.i, label %.preheader51.i, label %.preheader56.i

.preheader56.i:                                   ; preds = %bb.cc
  %umax.i86 = tail call i64 @llvm.umax.i64(i64 %.sroa.09.0490.i, i64 %i.gj) ; 3 uses
  %exitcond.not.i1789.not = icmp ult i64 %.sroa.09.0490.i, %i.gj
  br i1 %exitcond.not.i1789.not, label %.lr.ph1791, label %._crit_edge1792

.preheader51.i:                                   ; preds = %bb.cc
  %i.jn = icmp ult i64 %.sroa.038.0489.i, %i.gi
  br i1 %i.jn, label %.lr.ph470.i, label %._crit_edge.i

.lr.ph470.i:                                      ; preds = %.preheader51.i
  %i.jo = add i64 %.pre-phi694.i, 1
  %i.jp = add i64 %i.ib, 1
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cp, %.lr.ph470.i
  %.sroa.038.1469.i = phi i64 [ %.sroa.038.0489.i, %.lr.ph470.i ], [ %i.lb, %bb.cp ] ; 9 uses
  %i.jq = and i64 %.sroa.038.1469.i, 1023
  %i.jr = icmp eq i64 %i.jq, 0
  %or.cond173.i = and i1 %.sroa.05.0.not491.i, %i.jr
  br i1 %or.cond173.i, label %bb.cf, label %bb.ch

._crit_edge.i:                                    ; preds = %bb.cp, %bb.co, %bb.cm, %.preheader51.i
  %.sroa.038.1.lcssa.i = phi i64 [ %.sroa.038.0489.i, %.preheader51.i ], [ %i.gi, %bb.cp ], [ %.sroa.038.1469.i, %bb.co ], [ %.sroa.038.1469.i, %bb.cm ] ; 2 uses
  %i.js = sub i64 %.sroa.038.1.lcssa.i, %.sroa.038.0489.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.jt = load ptr, ptr %.val51, align 8, !alias.scope !16377, !noalias !16371, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 120 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 136 ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !alias.scope !16378, !noalias !16371, !noundef !28 ; 3 uses
  %i.jx = load i64, ptr %i.ju, align 8, !range !43, !alias.scope !16378, !noalias !16371, !noundef !28
  %i.jy = icmp eq i64 %i.jw, %i.jx
  br i1 %i.jy, label %bb.ce, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i

bb.ce:                                            ; preds = %._crit_edge.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ju) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16371

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.ce, %._crit_edge.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 128
  %i.ka = load ptr, ptr %i.jz, align 8, !alias.scope !16378, !noalias !16371, !nonnull !28, !noundef !28
  %i.kb = getelementptr inbounds nuw [40 x i8], ptr %i.ka, i64 %i.jw ; 4 uses
  store i64 1, ptr %i.kb, align 8, !noalias !16371
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store i64 %i.ic, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !16371
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store i64 %i.js, ptr %.sroa.525.0..sroa_idx.i, align 8, !noalias !16371
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  store i64 %i.id, ptr %.sroa.626.0..sroa_idx.i, align 8, !noalias !16371
  %i.kc = add i64 %i.jw, 1
  store i64 %i.kc, ptr %i.jv, align 8, !alias.scope !16378, !noalias !16371
  br label %bb.dc

bb.cf:                                            ; preds = %bb.cd
  %i.kd = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cg unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16371

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.kd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit219.sink.split.i.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cd
  %i.ke = add i64 %.sroa.038.1469.i, %invariant.op.i85 ; 2 uses
  %i.kf = icmp ult i64 %i.ke, %i.az
  br i1 %i.kf, label %bb.ci, label %.invoke.i

bb.ci:                                            ; preds = %bb.ch
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ke
  %.val210.i = load i64, ptr %i.ik, align 8, !noalias !16371, !noundef !28
  %.val211.i = load i64, ptr %i.kg, align 8, !noalias !16371, !noundef !28
  %i.kh = icmp eq i64 %.val210.i, %.val211.i
  br i1 %i.kh, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ki = add i64 %.sroa.038.1469.i, %i.ib        ; 3 uses
  %i.kj = icmp ult i64 %i.ki, %i.gt
  br i1 %i.kj, label %bb.cl, label %.split443.us.invoke.i

bb.ck:                                            ; preds = %bb.cm, %bb.ci
  %i.kk = add i64 %.sroa.038.1469.i, %.pre-phi694.i ; 2 uses
  %i.kl = icmp ult i64 %i.kk, %i.gt
  br i1 %i.kl, label %bb.cn, label %.split443.us.invoke.i

bb.cl:                                            ; preds = %bb.cj
  %i.km = add i64 %i.jo, %.sroa.038.1469.i        ; 3 uses
  %i.kn = icmp ult i64 %i.km, %i.gt
  br i1 %i.kn, label %bb.cm, label %.split446.us.invoke.i

bb.cm:                                            ; preds = %bb.cl
  %i.ko = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ki
  %i.kp = load i8, ptr %i.ko, align 1, !noalias !16371, !noundef !28
  %i.kq = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.km
  %i.kr = load i8, ptr %i.kq, align 1, !noalias !16371, !noundef !28
  %i.ks = add i8 %i.kr, 1
  %i.kt = icmp eq i8 %i.kp, %i.ks
  br i1 %i.kt, label %._crit_edge.i, label %bb.ck

bb.cn:                                            ; preds = %bb.ck
  %i.ku = add i64 %i.jp, %.sroa.038.1469.i        ; 2 uses
  %i.kv = icmp ult i64 %i.ku, %i.gt
  br i1 %i.kv, label %bb.co, label %.split446.us.invoke.i

bb.co:                                            ; preds = %bb.cn
  %i.kw = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.kk
  %i.kx = load i8, ptr %i.kw, align 1, !noalias !16371, !noundef !28
  %i.ky = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ku
  %i.kz = load i8, ptr %i.ky, align 1, !noalias !16371, !noundef !28
  %i.la = icmp ult i8 %i.kx, %i.kz
  br i1 %i.la, label %bb.cp, label %._crit_edge.i

bb.cp:                                            ; preds = %bb.co
  %i.lb = add nuw i64 %.sroa.038.1469.i, 1        ; 2 uses
  %i.lc = icmp ult i64 %i.lb, %i.gi
  br i1 %i.lc, label %bb.cd, label %._crit_edge.i

bb.cq:                                            ; preds = %bb.db
  %exitcond.not.i = icmp eq i64 %.pre-phi696.i, %umax.i86
  br i1 %exitcond.not.i, label %._crit_edge1792, label %.lr.ph1791

.lr.ph1791:                                       ; preds = %.preheader56.i, %bb.cq
  %.sroa.09.1.i1790 = phi i64 [ %.pre-phi696.i, %bb.cq ], [ %.sroa.09.0490.i, %.preheader56.i ] ; 6 uses
  br i1 %or.cond170.i, label %bb.cs, label %bb.cu

._crit_edge1792:                                  ; preds = %bb.cq, %bb.cz, %bb.db, %.preheader56.i
  %.sroa.09.1.lcssa.i = phi i64 [ %umax.i86, %.preheader56.i ], [ %umax.i86, %bb.cq ], [ %.sroa.09.1.i1790, %bb.cz ], [ %.sroa.09.1.i1790, %bb.db ] ; 2 uses
  %i.ld = sub nuw i64 %.sroa.09.1.lcssa.i, %.sroa.09.0490.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.le = load ptr, ptr %.val51, align 8, !alias.scope !16379, !noalias !16371, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 120 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 136 ; 2 uses
  %i.lh = load i64, ptr %i.lg, align 8, !alias.scope !16380, !noalias !16371, !noundef !28 ; 3 uses
  %i.li = load i64, ptr %i.lf, align 8, !range !43, !alias.scope !16380, !noalias !16371, !noundef !28
  %i.lj = icmp eq i64 %i.lh, %i.li
  br i1 %i.lj, label %bb.cr, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i

bb.cr:                                            ; preds = %._crit_edge1792
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lf) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16371

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.cr, %._crit_edge1792
  %i.lk = getelementptr inbounds nuw i8, ptr %i.le, i64 128
  %i.ll = load ptr, ptr %i.lk, align 8, !alias.scope !16380, !noalias !16371, !nonnull !28, !noundef !28
  %i.lm = getelementptr inbounds nuw [40 x i8], ptr %i.ll, i64 %i.lh ; 4 uses
  store i64 2, ptr %i.lm, align 8, !noalias !16371
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store i64 %i.ic, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !16371
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  store i64 %i.id, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !16371
  %.sroa.636.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  store i64 %i.ld, ptr %.sroa.636.0..sroa_idx.i, align 8, !noalias !16371
  %i.ln = add i64 %i.lh, 1
  store i64 %i.ln, ptr %i.lg, align 8, !alias.scope !16380, !noalias !16371
  br label %bb.dc

bb.cs:                                            ; preds = %.lr.ph1791
  %i.lo = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ct unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16371

bb.ct:                                            ; preds = %bb.cs
  br i1 %i.lo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit219.sink.split.i.thread, label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %.lr.ph1791
  %i.lp = mul i64 %.sroa.09.1.i1790, %i.gr        ; 2 uses
  %i.lq = add i64 %.sroa.09.1.i1790, %invariant.op467.i ; 2 uses
  %i.lr = icmp ult i64 %i.lq, %i.bc
  br i1 %i.lr, label %bb.cv, label %11

11:                                               ; preds = %bb.cu
  %12 = add i64 %.sroa.09.0490.i, %invariant.op467.i
  %umax687.le.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %12)
  br label %.invoke.i

bb.cv:                                            ; preds = %bb.cu
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.lq
  %.val208.i = load i64, ptr %i.ls, align 8, !noalias !16371, !noundef !28
  %.val209.i = load i64, ptr %i.in, align 8, !noalias !16371, !noundef !28
  %i.lt = icmp eq i64 %.val208.i, %.val209.i
  br i1 %i.lt, label %bb.cw, label %._crit_edge691.i

._crit_edge691.i:                                 ; preds = %bb.cv
  %.pre695.i = add i64 %.sroa.09.1.i1790, 1       ; 2 uses
  %.pre697.i = mul i64 %.pre695.i, %i.gr
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.lu = add i64 %i.lp, %.sroa.038.0489.i        ; 3 uses
  %i.lv = icmp ult i64 %i.lu, %i.gt
  br i1 %i.lv, label %bb.cy, label %.split443.us.invoke.i

bb.cx:                                            ; preds = %bb.cz, %._crit_edge691.i
  %.pre-phi698.i.a = phi i64 [ %.pre697.i, %._crit_edge691.i ], [ %i.lz, %bb.cz ]
  %.pre-phi696.i = phi i64 [ %.pre695.i, %._crit_edge691.i ], [ %i.ly, %bb.cz ] ; 2 uses
  %i.lw = add i64 %.pre-phi698.i.a, %.sroa.038.0489.i ; 3 uses
  %i.lx = icmp ult i64 %i.lw, %i.gt
  br i1 %i.lx, label %bb.da, label %.split443.us.invoke.i

bb.cy:                                            ; preds = %bb.cw
  %i.ly = add i64 %.sroa.09.1.i1790, 1            ; 2 uses
  %i.lz = mul i64 %i.ly, %i.gr                    ; 2 uses
  %i.ma = add i64 %i.lz, %i.jg                    ; 3 uses
  %i.mb = icmp ult i64 %i.ma, %i.gt
  br i1 %i.mb, label %bb.cz, label %.split446.us.invoke.i

bb.cz:                                            ; preds = %bb.cy
  %i.mc = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.lu
  %i.md = load i8, ptr %i.mc, align 1, !noalias !16371, !noundef !28
  %i.me = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ma
  %i.mf = load i8, ptr %i.me, align 1, !noalias !16371, !noundef !28
  %i.mg = add i8 %i.mf, 1
  %i.mh = icmp eq i8 %i.md, %i.mg
  br i1 %i.mh, label %._crit_edge1792, label %bb.cx

bb.da:                                            ; preds = %bb.cx
  %i.mi = add i64 %i.lp, %i.jg                    ; 3 uses
  %i.mj = icmp ult i64 %i.mi, %i.gt
  br i1 %i.mj, label %bb.db, label %.split446.us.invoke.i

bb.db:                                            ; preds = %bb.da
  %i.mk = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.lw
  %i.ml = load i8, ptr %i.mk, align 1, !noalias !16371, !noundef !28
  %i.mm = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.mi
  %i.mn = load i8, ptr %i.mm, align 1, !noalias !16371, !noundef !28
  %.not167.i = icmp ult i8 %i.ml, %i.mn
  br i1 %.not167.i, label %._crit_edge1792, label %bb.cq

bb.dc:                                            ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i
  %.sroa.038.3.i = phi i64 [ %.sroa.038.0489.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.038.1.lcssa.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.038.4.lcssa.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i ] ; 5 uses
  %.sroa.09.3.i = phi i64 [ %.sroa.09.1.lcssa.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.09.0490.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.09.4.lcssa.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i ] ; 5 uses
  %i.mo = icmp ult i64 %.sroa.09.3.i, %i.gj       ; 3 uses
  %i.mp = icmp ult i64 %.sroa.038.3.i, %i.gi      ; 2 uses
  %or.cond.i87 = select i1 %i.mo, i1 %i.mp, i1 false
  br i1 %or.cond.i87, label %.lr.ph492.i, label %._crit_edge493.i

._crit_edge479.i:                                 ; preds = %bb.dn, %bb.dm, %bb.dj, %.preheader.i
  %.sroa.038.4.lcssa.i = phi i64 [ %.sroa.038.0489.i, %.preheader.i ], [ %i.nq, %bb.dn ], [ %.sroa.038.4476.i, %bb.dj ], [ %.sroa.038.4476.i, %bb.dm ] ; 2 uses
  %.sroa.09.4.lcssa.i = phi i64 [ %.sroa.09.0490.i, %.preheader.i ], [ %i.no, %bb.dn ], [ %.sroa.09.4477.i, %bb.dj ], [ %.sroa.09.4477.i, %bb.dm ]
  %i.mq = sub nuw i64 %.sroa.038.4.lcssa.i, %.sroa.038.0489.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.mr = load ptr, ptr %.val51, align 8, !alias.scope !16381, !noalias !16371, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 120 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 136 ; 2 uses
  %i.mu = load i64, ptr %i.mt, align 8, !alias.scope !16382, !noalias !16371, !noundef !28 ; 3 uses
  %i.mv = load i64, ptr %i.ms, align 8, !range !43, !alias.scope !16382, !noalias !16371, !noundef !28
  %i.mw = icmp eq i64 %i.mu, %i.mv
  br i1 %i.mw, label %bb.dd, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i

bb.dd:                                            ; preds = %._crit_edge479.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ms) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16371

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.dd, %._crit_edge479.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mr, i64 128
  %i.my = load ptr, ptr %i.mx, align 8, !alias.scope !16382, !noalias !16371, !nonnull !28, !noundef !28
  %i.mz = getelementptr inbounds nuw [40 x i8], ptr %i.my, i64 %i.mu ; 4 uses
  store i64 0, ptr %i.mz, align 8, !noalias !16371
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  store i64 %i.ic, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !16371
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  store i64 %i.id, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !16371
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  store i64 %i.mq, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !16371
  %i.na = add i64 %i.mu, 1
  store i64 %i.na, ptr %i.mt, align 8, !alias.scope !16382, !noalias !16371
  br label %bb.dc

.lr.ph478.i:                                      ; preds = %.preheader.i, %bb.dn
  %.sroa.09.4477.i = phi i64 [ %i.no, %bb.dn ], [ %.sroa.09.0490.i, %.preheader.i ] ; 5 uses
  %.sroa.038.4476.i = phi i64 [ %i.nq, %bb.dn ], [ %.sroa.038.0489.i, %.preheader.i ] ; 6 uses
  %i.nb = and i64 %.sroa.038.4476.i, 1023
  %i.nc = icmp eq i64 %i.nb, 0
  %or.cond180.i = select i1 %.sroa.05.0.not491.i, i1 %i.nc, i1 false
  br i1 %or.cond180.i, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dh, %.lr.ph478.i
  %i.nd = mul i64 %.sroa.09.4477.i, %i.gr
  %i.ne = add i64 %.sroa.09.4477.i, %invariant.op467.i ; 2 uses
  %i.nf = icmp ult i64 %i.ne, %i.bc
  br i1 %i.nf, label %bb.di, label %bb.df

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257) #74
          to label %.noexc191.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16371

.noexc191.i:                                      ; preds = %bb.df
  unreachable

bb.dg:                                            ; preds = %.lr.ph478.i
  %i.ng = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dh unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16371

bb.dh:                                            ; preds = %bb.dg
  br i1 %i.ng, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit219.sink.split.i.thread, label %bb.de

bb.di:                                            ; preds = %bb.de
  %i.nh = add i64 %.sroa.038.4476.i, %invariant.op.i85 ; 2 uses
  %i.ni = icmp ult i64 %i.nh, %i.az
  br i1 %i.ni, label %bb.dj, label %.invoke.i

bb.dj:                                            ; preds = %bb.di
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ne
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.nh
  %.val206.i = load i64, ptr %i.nj, align 8, !noalias !16371, !noundef !28
  %.val207.i = load i64, ptr %i.nk, align 8, !noalias !16371, !noundef !28
  %i.nl = icmp eq i64 %.val206.i, %.val207.i
  br i1 %i.nl, label %bb.dk, label %._crit_edge479.i

bb.dk:                                            ; preds = %bb.dj
  %i.nm = add i64 %i.nd, %.sroa.038.4476.i        ; 3 uses
  %i.nn = icmp ult i64 %i.nm, %i.gt
  br i1 %i.nn, label %bb.dl, label %.split443.us.invoke.i

bb.dl:                                            ; preds = %bb.dk
  %i.no = add nuw i64 %.sroa.09.4477.i, 1         ; 4 uses
  %i.np = mul i64 %i.no, %i.gr
  %i.nq = add nuw i64 %.sroa.038.4476.i, 1        ; 4 uses
  %i.nr = add i64 %i.nq, %i.np                    ; 3 uses
  %i.ns = icmp ult i64 %i.nr, %i.gt
  br i1 %i.ns, label %bb.dm, label %.split446.us.invoke.i

bb.dm:                                            ; preds = %bb.dl
  %i.nt = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.nm
  %i.nu = load i8, ptr %i.nt, align 1, !noalias !16371, !noundef !28
  %i.nv = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.nr
  %i.nw = load i8, ptr %i.nv, align 1, !noalias !16371, !noundef !28
  %i.nx = add i8 %i.nw, 1
  %i.ny = icmp eq i8 %i.nu, %i.nx
  br i1 %i.ny, label %bb.dn, label %._crit_edge479.i

bb.dn:                                            ; preds = %bb.dm
  %i.nz = icmp ult i64 %i.no, %i.gj
  %i.oa = icmp ult i64 %i.nq, %i.gi
  %or.cond177.i = and i1 %i.nz, %i.oa
  br i1 %or.cond177.i, label %.lr.ph478.i, label %._crit_edge479.i

.loopexit64.i:                                    ; preds = %bb.do, %bb.dq, %bb.bu, %bb.eb
  br i1 %i.gu, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit219.sink.split.i.thread

bb.do:                                            ; preds = %.lr.ph466.split.i
  br i1 %i.ha, label %.loopexit64.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.do
  %i.ob = mul i64 %i.gz, %i.gr                    ; 2 uses
  %i.oc = mul i64 %.sroa.0102.0465.i, %i.gr       ; 2 uses
  %.reass.i88 = add i64 %i.gz, %invariant.op467.i ; 4 uses
  %i.od = icmp ult i64 %.reass.i88, %i.bc
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.reass.i88
  %.fr.i = freeze i1 %i.od
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.dz
  %.sroa.0105.0433.us.i = phi i64 [ %i.of, %bb.dz ], [ %i.gi, %.lr.ph.i ] ; 3 uses
  %i.of = add i64 %.sroa.0105.0433.us.i, -1       ; 6 uses
  %i.og = and i64 %i.of, 1023
  %i.oh = icmp eq i64 %i.og, 0
  br i1 %i.oh, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %.lr.ph.split.us.i
  %i.oi = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16371

bb.dq:                                            ; preds = %bb.dp
  br i1 %i.oi, label %.loopexit64.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %.lr.ph.split.us.i
  %.reass.us.i = add i64 %i.of, %invariant.op.i85 ; 3 uses
  %i.oj = icmp ult i64 %.reass.us.i, %i.az
  br i1 %i.oj, label %bb.ds, label %.invoke.i

bb.ds:                                            ; preds = %bb.dr
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.reass.us.i
  %.val.us.i = load i64, ptr %i.oe, align 8, !noalias !16371, !noundef !28
  %.val205.us.i = load i64, ptr %i.ok, align 8, !noalias !16371, !noundef !28
  %i.ol = icmp eq i64 %.val.us.i, %.val205.us.i
  br i1 %i.ol, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.om = add i64 %i.of, %i.oc                    ; 3 uses
  %i.on = icmp ult i64 %i.om, %i.gt
  br i1 %i.on, label %bb.du, label %.split443.us.invoke.i

bb.du:                                            ; preds = %bb.dt
  %i.oo = add i64 %.sroa.0105.0433.us.i, %i.ob    ; 3 uses
  %i.op = icmp ult i64 %i.oo, %i.gt
  br i1 %i.op, label %bb.dv, label %.split446.us.invoke.i

bb.dv:                                            ; preds = %bb.du
  %i.oq = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.om
  %i.or = load i8, ptr %i.oq, align 1, !noalias !16371, !noundef !28
  %i.os = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.oo
  %i.ot = load i8, ptr %i.os, align 1, !noalias !16371, !noundef !28
  %..i.us.i = tail call noundef i8 @llvm.umax.i8(i8 %i.ot, i8 %i.or)
  br label %bb.dy

bb.dw:                                            ; preds = %bb.ds
  %i.ou = add i64 %.sroa.0105.0433.us.i, %i.oc    ; 3 uses
  %i.ov = icmp ult i64 %i.ou, %i.gt
  br i1 %i.ov, label %bb.dx, label %.split443.us.invoke.i

bb.dx:                                            ; preds = %bb.dw
  %i.ow = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ou
  %i.ox = load i8, ptr %i.ow, align 1, !noalias !16371, !noundef !28
  %i.oy = add i8 %i.ox, 1
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dv
  %.sroa.04.0.us.i = phi i8 [ %i.oy, %bb.dx ], [ %..i.us.i, %bb.dv ]
  %i.oz = add i64 %i.of, %i.ob                    ; 3 uses
  %i.pa = icmp ult i64 %i.oz, %i.gt
  br i1 %i.pa, label %bb.dz, label %.split446.us.invoke.i

bb.dz:                                            ; preds = %bb.dy
  %i.pb = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.oz
  store i8 %.sroa.04.0.us.i, ptr %i.pb, align 1, !noalias !16371
  %.not168.us.i = icmp eq i64 %i.of, 0
  br i1 %.not168.us.i, label %..loopexit68_crit_edge.split.us.i, label %.lr.ph.split.us.i

..loopexit68_crit_edge.split.us.i:                ; preds = %bb.dz
  %.not.i89 = icmp eq i64 %i.gz, 0
  br i1 %.not.i89, label %.lr.ph492.i, label %.lr.ph466.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.pc = and i64 %i.gi, 1023
  %i.pd = icmp eq i64 %i.pc, 1
  br i1 %i.pd, label %bb.ea, label %.invoke.i

bb.ea:                                            ; preds = %.lr.ph.split.i
  %i.pe = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.eb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16371

bb.eb:                                            ; preds = %bb.ea
  br i1 %i.pe, label %.loopexit64.i, label %.invoke.i

.split443.us.invoke.i:                            ; preds = %bb.dw, %bb.dt, %bb.by, %bb.bx, %bb.cx, %bb.cw, %bb.cj, %bb.ck, %bb.dk
  %i.pf = phi i64 [ %i.ip, %bb.bx ], [ %i.lw, %bb.cx ], [ %i.nm, %bb.dk ], [ %i.ki, %bb.cj ], [ %i.gt, %bb.ck ], [ %i.lu, %bb.cw ], [ %i.ir, %bb.by ], [ %i.om, %bb.dt ], [ %i.ou, %bb.dw ]
  %i.pg = phi ptr [ @243, %bb.bx ], [ @255, %bb.cx ], [ @259, %bb.dk ], [ @248, %bb.cj ], [ @250, %bb.ck ], [ @253, %bb.cw ], [ @245, %bb.by ], [ @263, %bb.dt ], [ @265, %bb.dw ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.pf, i64 noundef %i.gt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pg) #70
          to label %.split443.us.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16371

.split443.us.cont.i:                              ; preds = %.split443.us.invoke.i
  unreachable

.split446.us.invoke.i:                            ; preds = %bb.dy, %bb.du, %bb.cb, %bb.bz, %bb.da, %bb.cy, %bb.cl, %bb.cn, %bb.dl
  %i.ph = phi i64 [ %i.iw, %bb.bz ], [ %i.mi, %bb.da ], [ %i.nr, %bb.dl ], [ %i.km, %bb.cl ], [ %i.gt, %bb.cn ], [ %i.ma, %bb.cy ], [ %i.jh, %bb.cb ], [ %i.oo, %bb.du ], [ %i.oz, %bb.dy ]
  %i.pi = phi ptr [ @244, %bb.bz ], [ @256, %bb.da ], [ @260, %bb.dl ], [ @249, %bb.cl ], [ @251, %bb.cn ], [ @254, %bb.cy ], [ @246, %bb.cb ], [ @264, %bb.du ], [ @266, %bb.dy ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ph, i64 noundef %i.gt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pi) #70
          to label %.split446.us.cont.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16371

.split446.us.cont.i:                              ; preds = %.split446.us.invoke.i
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread.i105, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi44.i, %.thread.i ], [ %lpad.loopexit.split-lp1857, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1932, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.phi44.i106, %.thread.i105 ]
  resume { ptr, i32 } %common.resume.op

bb.ec:                                            ; preds = %bb.bg
  br i1 %i.gq, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.pj = add i64 %i.gj, 1                        ; 11 uses
  %i.pk = add i64 %i.gi, 1
  %i.pl = mul i64 %i.pk, %i.pj                    ; 29 uses
  %.not.i.i.i92 = icmp slt i64 %i.pl, 0
  br i1 %.not.i.i.i92, label %bb.eh, label %bb.ee, !prof !42

bb.ee:                                            ; preds = %bb.ed
  %i.pm = icmp eq i64 %i.pl, 0                    ; 3 uses
  br i1 %i.pm, label %.lr.ph481.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !16383
  %i.pn = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.pl, i64 noundef range(i64 1, 9) 1) #69, !noalias !16383 ; 2 uses
  %i.po = icmp eq ptr %i.pn, null
  br i1 %i.po, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.pp = ptrtoint ptr %i.pn to i64
  br label %.lr.ph481.i

bb.eh:                                            ; preds = %bb.ef, %bb.ed
  %.sroa.4.0.ph.i.i181 = phi i64 [ 1, %bb.ef ], [ 0, %bb.ed ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i181, i64 %i.pl) #70, !noalias !16384
  unreachable

.lr.ph481.i:                                      ; preds = %bb.ee, %bb.eg
  %.sroa.10.0.i.i94 = phi i64 [ %i.pp, %bb.eg ], [ 1, %bb.ee ]
  %i.pq = inttoptr i64 %.sroa.10.0.i.i94 to ptr   ; 21 uses
  %invariant.op.i109 = sub i64 %.sroa.0218.0, %i.bd ; 4 uses
  %invariant.op482.i = sub i64 %.sroa.0.0, %i.ba  ; 4 uses
  br label %.lr.ph481.split.i

.lr.ph481.split.i:                                ; preds = %.lr.ph481.i, %..loopexit68_crit_edge.split.us.i179
  %.sroa.0102.0480.i = phi i64 [ %i.pr, %..loopexit68_crit_edge.split.us.i179 ], [ %i.gi, %.lr.ph481.i ] ; 2 uses
  %i.pr = add i64 %.sroa.0102.0480.i, -1          ; 4 uses
  %i.ps = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16385

._crit_edge509.i:                                 ; preds = %bb.fx
  br i1 %i.vg, label %bb.ei, label %bb.ek

.lr.ph508.i:                                      ; preds = %..loopexit68_crit_edge.split.us.i179, %bb.fx
  %.sroa.05.0.not507.i = phi i1 [ false, %bb.fx ], [ true, %..loopexit68_crit_edge.split.us.i179 ] ; 3 uses
  %.sroa.09.0506.i = phi i64 [ %.sroa.09.3.i144, %bb.fx ], [ 0, %..loopexit68_crit_edge.split.us.i179 ] ; 14 uses
  %.sroa.039.0505.i = phi i64 [ %.sroa.039.3.i, %bb.fx ], [ 0, %..loopexit68_crit_edge.split.us.i179 ] ; 16 uses
  %i.pt = and i64 %.sroa.039.0505.i, 1023
  %i.pu = icmp eq i64 %i.pt, 0
  %or.cond170.i120 = select i1 %.sroa.05.0.not507.i, i1 %i.pu, i1 false ; 2 uses
  br i1 %or.cond170.i120, label %bb.eo, label %bb.en

bb.ei:                                            ; preds = %._crit_edge509.i
  %i.pv = add i64 %.sroa.09.3.i144, %.sroa.0.0    ; 2 uses
  %i.pw = sub nuw i64 %i.gi, %.sroa.09.3.i144
  %i.px = add i64 %.sroa.039.3.i, %.sroa.0218.0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.py = load ptr, ptr %.val51, align 8, !alias.scope !16386, !noalias !16385, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 120 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 136 ; 2 uses
  %i.qb = load i64, ptr %i.qa, align 8, !alias.scope !16387, !noalias !16385, !noundef !28 ; 3 uses
  %i.qc = load i64, ptr %i.pz, align 8, !range !43, !alias.scope !16387, !noalias !16385, !noundef !28
  %i.qd = icmp eq i64 %i.qb, %i.qc
  br i1 %i.qd, label %bb.ej, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116

bb.ej:                                            ; preds = %bb.ei
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pz) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16385

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116: ; preds = %bb.ej, %bb.ei
  %i.qe = getelementptr inbounds nuw i8, ptr %i.py, i64 128
  %i.qf = load ptr, ptr %i.qe, align 8, !alias.scope !16387, !noalias !16385, !nonnull !28, !noundef !28
  %i.qg = getelementptr inbounds nuw [40 x i8], ptr %i.qf, i64 %i.qb ; 4 uses
  store i64 1, ptr %i.qg, align 8, !noalias !16385
  %.sroa.429.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  store i64 %i.pv, ptr %.sroa.429.0..sroa_idx.i117, align 8, !noalias !16385
  %.sroa.530.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  store i64 %i.pw, ptr %.sroa.530.0..sroa_idx.i118, align 8, !noalias !16385
  %.sroa.631.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  store i64 %i.px, ptr %.sroa.631.0..sroa_idx.i119, align 8, !noalias !16385
  %i.qh = add i64 %i.qb, 1
  store i64 %i.qh, ptr %i.qa, align 8, !alias.scope !16387, !noalias !16385
  br i1 %i.vh, label %bb.el, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit

bb.ek:                                            ; preds = %._crit_edge509.i
  br i1 %i.vh, label %._crit_edge1055, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit

._crit_edge1055:                                  ; preds = %bb.ek
  %.pre1061 = add i64 %.sroa.09.3.i144, %.sroa.0.0
  %.pre1063 = add i64 %.sroa.039.3.i, %.sroa.0218.0
  br label %bb.el

.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fn, %bb.gb, %bb.fa, %bb.fm, %bb.ez, %.split446.us.invoke.i128, %bb.ga
  %lpad.loopexit.split-lp1906 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i105

.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gk, %bb.fy, %bb.eo, %.lr.ph481.split.i, %.split443.us.invoke.i126, %bb.gv, %.invoke.i121, %bb.em, %bb.ej
  %lpad.loopexit.split-lp1932 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.pm, label %common.resume, label %.thread.i105

.thread.i105:                                     ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi44.i106 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1932, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1906, %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pq, i64 noundef %i.pl, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !16388
  br label %common.resume

bb.el:                                            ; preds = %._crit_edge1055, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116
  %.pre-phi1064 = phi i64 [ %.pre1063, %._crit_edge1055 ], [ %i.px, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116 ]
  %.pre-phi1062 = phi i64 [ %.pre1061, %._crit_edge1055 ], [ %i.pv, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116 ]
  %i.qi = sub nuw i64 %i.gj, %.sroa.039.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.qj = load ptr, ptr %.val51, align 8, !alias.scope !16389, !noalias !16385, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 120 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 136 ; 2 uses
  %i.qm = load i64, ptr %i.ql, align 8, !alias.scope !16390, !noalias !16385, !noundef !28 ; 3 uses
  %i.qn = load i64, ptr %i.qk, align 8, !range !43, !alias.scope !16390, !noalias !16385, !noundef !28
  %i.qo = icmp eq i64 %i.qm, %i.qn
  br i1 %i.qo, label %bb.em, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i99

bb.em:                                            ; preds = %bb.el
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qk) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16385

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i99: ; preds = %bb.em, %bb.el
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qj, i64 128
  %i.qq = load ptr, ptr %i.qp, align 8, !alias.scope !16390, !noalias !16385, !nonnull !28, !noundef !28
  %i.qr = getelementptr inbounds nuw [40 x i8], ptr %i.qq, i64 %i.qm ; 4 uses
  store i64 2, ptr %i.qr, align 8, !noalias !16385
  %.sroa.439.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  store i64 %.pre-phi1062, ptr %.sroa.439.0..sroa_idx.i100, align 8, !noalias !16385
  %.sroa.540.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  store i64 %.pre-phi1064, ptr %.sroa.540.0..sroa_idx.i101, align 8, !noalias !16385
  %.sroa.641.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  store i64 %i.qi, ptr %.sroa.641.0..sroa_idx.i102, align 8, !noalias !16385
  %i.qs = add i64 %i.qm, 1
  store i64 %i.qs, ptr %i.ql, align 8, !alias.scope !16390, !noalias !16385
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit

bb.en:                                            ; preds = %bb.ep, %.lr.ph508.i
  %i.qt = mul i64 %.sroa.09.0506.i, %i.pj         ; 4 uses
  %i.qu = add i64 %.sroa.09.0506.i, %.sroa.0.0    ; 4 uses
  %i.qv = add i64 %.sroa.039.0505.i, %.sroa.0218.0 ; 4 uses
  %i.qw = sub i64 %i.qv, %i.bd                    ; 3 uses
  %i.qx = icmp ult i64 %i.qw, %i.bc
  br i1 %i.qx, label %bb.eq, label %.invoke.i121

.invoke.i121:                                     ; preds = %bb.gm, %bb.eq, %bb.en, %bb.fc, %bb.gd, %bb.gy, %bb.gx, %13
  %i.qy = phi i64 [ %.reass483.i, %bb.gy ], [ %.reass.i170, %bb.gx ], [ %i.bc, %bb.fc ], [ %umax703.le.i, %13 ], [ %i.qw, %bb.en ], [ %i.az, %bb.gd ], [ %i.rd, %bb.eq ], [ %.reass.us.i173, %bb.gm ]
  %i.qz = phi i64 [ %i.az, %bb.gy ], [ %i.bc, %bb.gx ], [ %i.bc, %bb.fc ], [ %i.az, %13 ], [ %i.bc, %bb.en ], [ %i.az, %bb.gd ], [ %i.az, %bb.eq ], [ %i.bc, %bb.gm ]
  %i.ra = phi ptr [ @288, %bb.gy ], [ @287, %bb.gx ], [ @273, %bb.fc ], [ @278, %13 ], [ @267, %bb.en ], [ @284, %bb.gd ], [ @268, %bb.eq ], [ @287, %bb.gm ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.qy, i64 noundef %i.qz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ra) #74
          to label %.cont.i122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16385

.cont.i122:                                       ; preds = %.invoke.i121
  unreachable

bb.eo:                                            ; preds = %.lr.ph508.i
  %i.rb = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ep unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16385

bb.ep:                                            ; preds = %bb.eo
  br i1 %i.rb, label %.loopexit64.i166, label %bb.en

bb.eq:                                            ; preds = %bb.en
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.qw ; 2 uses
  %i.rd = sub i64 %i.qu, %i.ba                    ; 3 uses
  %i.re = icmp ult i64 %i.rd, %i.az
  br i1 %i.re, label %bb.er, label %.invoke.i121

bb.er:                                            ; preds = %bb.eq
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.rd ; 2 uses
  %.val212.i123 = load i64, ptr %i.rc, align 8, !noalias !16385, !noundef !28
  %.val213.i124 = load i64, ptr %i.rf, align 8, !noalias !16385, !noundef !28
  %i.rg = icmp eq i64 %.val212.i123, %.val213.i124
  br i1 %i.rg, label %bb.es, label %._crit_edge708.i

._crit_edge708.i:                                 ; preds = %bb.er
  %.pre.i125 = add nuw i64 %.sroa.09.0506.i, 1
  %.pre709.i = mul i64 %.pre.i125, %i.pj
  br label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.rh = add i64 %i.qt, %.sroa.039.0505.i        ; 3 uses
  %i.ri = icmp ult i64 %i.rh, %i.pl
  br i1 %i.ri, label %bb.eu, label %.split443.us.invoke.i126

bb.et:                                            ; preds = %bb.ev, %._crit_edge708.i
  %.pre-phi710.i = phi i64 [ %.pre709.i, %._crit_edge708.i ], [ %i.rm, %bb.ev ] ; 3 uses
  %i.rj = add i64 %.pre-phi710.i, %.sroa.039.0505.i ; 3 uses
  %i.rk = icmp ult i64 %i.rj, %i.pl
  br i1 %i.rk, label %bb.ew, label %.split443.us.invoke.i126

bb.eu:                                            ; preds = %bb.es
  %i.rl = add nuw i64 %.sroa.09.0506.i, 1
  %i.rm = mul i64 %i.rl, %i.pj                    ; 2 uses
  %i.rn = add nuw i64 %.sroa.039.0505.i, 1
  %i.ro = add i64 %i.rn, %i.rm                    ; 3 uses
  %i.rp = icmp ult i64 %i.ro, %i.pl
  br i1 %i.rp, label %bb.ev, label %.split446.us.invoke.i128

bb.ev:                                            ; preds = %bb.eu
  %i.rq = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.rh
  %i.rr = load i8, ptr %i.rq, align 1, !noalias !16385, !noundef !28
  %i.rs = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.ro
  %i.rt = load i8, ptr %i.rs, align 1, !noalias !16385, !noundef !28
  %i.ru = add i8 %i.rt, 1
  %i.rv = icmp eq i8 %i.rr, %i.ru
  br i1 %i.rv, label %.preheader.i155, label %bb.et

.preheader.i155:                                  ; preds = %bb.ev
  %i.rw = icmp ult i64 %.sroa.09.0506.i, %i.gi
  %i.rx = icmp ult i64 %.sroa.039.0505.i, %i.gj
  %or.cond177491.i = select i1 %i.rw, i1 %i.rx, i1 false
  br i1 %or.cond177491.i, label %.lr.ph494.i, label %._crit_edge495.i

bb.ew:                                            ; preds = %bb.et
  %i.ry = add nuw i64 %.sroa.039.0505.i, 1        ; 3 uses
  %i.rz = add i64 %i.ry, %i.qt                    ; 3 uses
  %i.sa = icmp ult i64 %i.rz, %i.pl
  br i1 %i.sa, label %bb.ex, label %.split446.us.invoke.i128

bb.ex:                                            ; preds = %bb.ew
  %i.sb = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.rj
  %i.sc = load i8, ptr %i.sb, align 1, !noalias !16385, !noundef !28
  %i.sd = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.rz
  %i.se = load i8, ptr %i.sd, align 1, !noalias !16385, !noundef !28
  %.not164.i131 = icmp ult i8 %i.sc, %i.se
  br i1 %.not164.i131, label %.preheader51.i146, label %.preheader56.i132

.preheader56.i132:                                ; preds = %bb.ex
  %umax.i133 = tail call i64 @llvm.umax.i64(i64 %.sroa.09.0506.i, i64 %i.gi) ; 3 uses
  %exitcond.not.i1351781.not = icmp ult i64 %.sroa.09.0506.i, %i.gi
  br i1 %exitcond.not.i1351781.not, label %.lr.ph1783, label %._crit_edge1784

.preheader51.i146:                                ; preds = %bb.ex
  %i.sf = icmp ult i64 %.sroa.039.0505.i, %i.gj
  br i1 %i.sf, label %.lr.ph486.i, label %._crit_edge.i147

.lr.ph486.i:                                      ; preds = %.preheader51.i146
  %i.sg = add i64 %.pre-phi710.i, 1
  %i.sh = add i64 %i.qt, 1
  br label %bb.ey

bb.ey:                                            ; preds = %bb.fk, %.lr.ph486.i
  %.sroa.039.1485.i = phi i64 [ %.sroa.039.0505.i, %.lr.ph486.i ], [ %i.tt, %bb.fk ] ; 9 uses
  %i.si = and i64 %.sroa.039.1485.i, 1023
  %i.sj = icmp eq i64 %i.si, 0
  %or.cond173.i152 = and i1 %.sroa.05.0.not507.i, %i.sj
  br i1 %or.cond173.i152, label %bb.fa, label %bb.fc

._crit_edge.i147:                                 ; preds = %bb.fk, %bb.fj, %bb.fh, %.preheader51.i146
  %.sroa.039.1.lcssa.i = phi i64 [ %.sroa.039.0505.i, %.preheader51.i146 ], [ %i.gj, %bb.fk ], [ %.sroa.039.1485.i, %bb.fj ], [ %.sroa.039.1485.i, %bb.fh ] ; 2 uses
  %i.sk = sub i64 %.sroa.039.1.lcssa.i, %.sroa.039.0505.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.sl = load ptr, ptr %.val51, align 8, !alias.scope !16391, !noalias !16385, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 120 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 136 ; 2 uses
  %i.so = load i64, ptr %i.sn, align 8, !alias.scope !16392, !noalias !16385, !noundef !28 ; 3 uses
  %i.sp = load i64, ptr %i.sm, align 8, !range !43, !alias.scope !16392, !noalias !16385, !noundef !28
  %i.sq = icmp eq i64 %i.so, %i.sp
  br i1 %i.sq, label %bb.ez, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i148

bb.ez:                                            ; preds = %._crit_edge.i147
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sm) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i148 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16385

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i148: ; preds = %bb.ez, %._crit_edge.i147
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sl, i64 128
  %i.ss = load ptr, ptr %i.sr, align 8, !alias.scope !16392, !noalias !16385, !nonnull !28, !noundef !28
  %i.st = getelementptr inbounds nuw [40 x i8], ptr %i.ss, i64 %i.so ; 4 uses
  store i64 2, ptr %i.st, align 8, !noalias !16385
  %.sroa.434.0..sroa_idx.i149 = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  store i64 %i.qu, ptr %.sroa.434.0..sroa_idx.i149, align 8, !noalias !16385
  %.sroa.535.0..sroa_idx.i150 = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  store i64 %i.qv, ptr %.sroa.535.0..sroa_idx.i150, align 8, !noalias !16385
  %.sroa.636.0..sroa_idx.i151 = getelementptr inbounds nuw i8, ptr %i.st, i64 24
  store i64 %i.sk, ptr %.sroa.636.0..sroa_idx.i151, align 8, !noalias !16385
  %i.su = add i64 %i.so, 1
  store i64 %i.su, ptr %i.sn, align 8, !alias.scope !16392, !noalias !16385
  br label %bb.fx

bb.fa:                                            ; preds = %bb.ey
  %i.sv = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fb unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16385

bb.fb:                                            ; preds = %bb.fa
  br i1 %i.sv, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread344, label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.ey
  %i.sw = add i64 %.sroa.039.1485.i, %invariant.op.i109 ; 2 uses
  %i.sx = icmp ult i64 %i.sw, %i.bc
  br i1 %i.sx, label %bb.fd, label %.invoke.i121

bb.fd:                                            ; preds = %bb.fc
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.sw
  %.val210.i153 = load i64, ptr %i.sy, align 8, !noalias !16385, !noundef !28
  %.val211.i154 = load i64, ptr %i.rf, align 8, !noalias !16385, !noundef !28
  %i.sz = icmp eq i64 %.val210.i153, %.val211.i154
  br i1 %i.sz, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.ta = add i64 %.sroa.039.1485.i, %i.qt        ; 3 uses
  %i.tb = icmp ult i64 %i.ta, %i.pl
  br i1 %i.tb, label %bb.fg, label %.split443.us.invoke.i126

bb.ff:                                            ; preds = %bb.fh, %bb.fd
  %i.tc = add i64 %.sroa.039.1485.i, %.pre-phi710.i ; 2 uses
  %i.td = icmp ult i64 %i.tc, %i.pl
  br i1 %i.td, label %bb.fi, label %.split443.us.invoke.i126

bb.fg:                                            ; preds = %bb.fe
  %i.te = add i64 %i.sg, %.sroa.039.1485.i        ; 3 uses
  %i.tf = icmp ult i64 %i.te, %i.pl
  br i1 %i.tf, label %bb.fh, label %.split446.us.invoke.i128

bb.fh:                                            ; preds = %bb.fg
  %i.tg = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.ta
  %i.th = load i8, ptr %i.tg, align 1, !noalias !16385, !noundef !28
  %i.ti = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.te
  %i.tj = load i8, ptr %i.ti, align 1, !noalias !16385, !noundef !28
  %i.tk = add i8 %i.tj, 1
  %i.tl = icmp eq i8 %i.th, %i.tk
  br i1 %i.tl, label %._crit_edge.i147, label %bb.ff

bb.fi:                                            ; preds = %bb.ff
  %i.tm = add i64 %i.sh, %.sroa.039.1485.i        ; 2 uses
  %i.tn = icmp ult i64 %i.tm, %i.pl
  br i1 %i.tn, label %bb.fj, label %.split446.us.invoke.i128

bb.fj:                                            ; preds = %bb.fi
  %i.to = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.tc
  %i.tp = load i8, ptr %i.to, align 1, !noalias !16385, !noundef !28
  %i.tq = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.tm
  %i.tr = load i8, ptr %i.tq, align 1, !noalias !16385, !noundef !28
  %i.ts = icmp ult i8 %i.tp, %i.tr
  br i1 %i.ts, label %bb.fk, label %._crit_edge.i147

bb.fk:                                            ; preds = %bb.fj
  %i.tt = add nuw i64 %.sroa.039.1485.i, 1        ; 2 uses
  %i.tu = icmp ult i64 %i.tt, %i.gj
  br i1 %i.tu, label %bb.ey, label %._crit_edge.i147

bb.fl:                                            ; preds = %bb.fw
  %exitcond.not.i135 = icmp eq i64 %.pre-phi712.i, %umax.i133
  br i1 %exitcond.not.i135, label %._crit_edge1784, label %.lr.ph1783

.lr.ph1783:                                       ; preds = %.preheader56.i132, %bb.fl
  %.sroa.09.1.i1341782 = phi i64 [ %.pre-phi712.i, %bb.fl ], [ %.sroa.09.0506.i, %.preheader56.i132 ] ; 6 uses
  br i1 %or.cond170.i120, label %bb.fn, label %bb.fp

._crit_edge1784:                                  ; preds = %bb.fl, %bb.fu, %bb.fw, %.preheader56.i132
  %.sroa.09.1.lcssa.i139 = phi i64 [ %umax.i133, %.preheader56.i132 ], [ %umax.i133, %bb.fl ], [ %.sroa.09.1.i1341782, %bb.fu ], [ %.sroa.09.1.i1341782, %bb.fw ] ; 2 uses
  %i.tv = sub nuw i64 %.sroa.09.1.lcssa.i139, %.sroa.09.0506.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.tw = load ptr, ptr %.val51, align 8, !alias.scope !16393, !noalias !16385, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 120 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 136 ; 2 uses
  %i.tz = load i64, ptr %i.ty, align 8, !alias.scope !16394, !noalias !16385, !noundef !28 ; 3 uses
  %i.ua = load i64, ptr %i.tx, align 8, !range !43, !alias.scope !16394, !noalias !16385, !noundef !28
  %i.ub = icmp eq i64 %i.tz, %i.ua
  br i1 %i.ub, label %bb.fm, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i140

bb.fm:                                            ; preds = %._crit_edge1784
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.tx) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i140 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16385

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i140: ; preds = %bb.fm, %._crit_edge1784
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tw, i64 128
  %i.ud = load ptr, ptr %i.uc, align 8, !alias.scope !16394, !noalias !16385, !nonnull !28, !noundef !28
  %i.ue = getelementptr inbounds nuw [40 x i8], ptr %i.ud, i64 %i.tz ; 4 uses
  store i64 1, ptr %i.ue, align 8, !noalias !16385
  %.sroa.424.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  store i64 %i.qu, ptr %.sroa.424.0..sroa_idx.i141, align 8, !noalias !16385
  %.sroa.525.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  store i64 %i.tv, ptr %.sroa.525.0..sroa_idx.i142, align 8, !noalias !16385
  %.sroa.626.0..sroa_idx.i143 = getelementptr inbounds nuw i8, ptr %i.ue, i64 24
  store i64 %i.qv, ptr %.sroa.626.0..sroa_idx.i143, align 8, !noalias !16385
  %i.uf = add i64 %i.tz, 1
  store i64 %i.uf, ptr %i.ty, align 8, !alias.scope !16394, !noalias !16385
  br label %bb.fx

bb.fn:                                            ; preds = %.lr.ph1783
  %i.ug = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fo unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16385

bb.fo:                                            ; preds = %bb.fn
  br i1 %i.ug, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread344, label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %.lr.ph1783
  %i.uh = mul i64 %.sroa.09.1.i1341782, %i.pj     ; 2 uses
  %i.ui = add i64 %.sroa.09.1.i1341782, %invariant.op482.i ; 2 uses
  %i.uj = icmp ult i64 %i.ui, %i.az
  br i1 %i.uj, label %bb.fq, label %13

13:                                               ; preds = %bb.fp
  %14 = add i64 %.sroa.09.0506.i, %invariant.op482.i
  %umax703.le.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 %14)
  br label %.invoke.i121

bb.fq:                                            ; preds = %bb.fp
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ui
  %.val208.i136 = load i64, ptr %i.rc, align 8, !noalias !16385, !noundef !28
  %.val209.i137 = load i64, ptr %i.uk, align 8, !noalias !16385, !noundef !28
  %i.ul = icmp eq i64 %.val208.i136, %.val209.i137
  br i1 %i.ul, label %bb.fr, label %._crit_edge707.i

._crit_edge707.i:                                 ; preds = %bb.fq
  %.pre711.i = add i64 %.sroa.09.1.i1341782, 1    ; 2 uses
  %.pre713.i = mul i64 %.pre711.i, %i.pj
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.um = add i64 %i.uh, %.sroa.039.0505.i        ; 3 uses
  %i.un = icmp ult i64 %i.um, %i.pl
  br i1 %i.un, label %bb.ft, label %.split443.us.invoke.i126

bb.fs:                                            ; preds = %bb.fu, %._crit_edge707.i
  %.pre-phi714.i.a = phi i64 [ %.pre713.i, %._crit_edge707.i ], [ %i.ur, %bb.fu ]
  %.pre-phi712.i = phi i64 [ %.pre711.i, %._crit_edge707.i ], [ %i.uq, %bb.fu ] ; 2 uses
  %i.uo = add i64 %.pre-phi714.i.a, %.sroa.039.0505.i ; 3 uses
  %i.up = icmp ult i64 %i.uo, %i.pl
  br i1 %i.up, label %bb.fv, label %.split443.us.invoke.i126

bb.ft:                                            ; preds = %bb.fr
  %i.uq = add i64 %.sroa.09.1.i1341782, 1         ; 2 uses
  %i.ur = mul i64 %i.uq, %i.pj                    ; 2 uses
  %i.us = add i64 %i.ur, %i.ry                    ; 3 uses
  %i.ut = icmp ult i64 %i.us, %i.pl
  br i1 %i.ut, label %bb.fu, label %.split446.us.invoke.i128

bb.fu:                                            ; preds = %bb.ft
  %i.uu = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.um
  %i.uv = load i8, ptr %i.uu, align 1, !noalias !16385, !noundef !28
  %i.uw = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.us
  %i.ux = load i8, ptr %i.uw, align 1, !noalias !16385, !noundef !28
  %i.uy = add i8 %i.ux, 1
  %i.uz = icmp eq i8 %i.uv, %i.uy
  br i1 %i.uz, label %._crit_edge1784, label %bb.fs

bb.fv:                                            ; preds = %bb.fs
  %i.va = add i64 %i.uh, %i.ry                    ; 3 uses
  %i.vb = icmp ult i64 %i.va, %i.pl
  br i1 %i.vb, label %bb.fw, label %.split446.us.invoke.i128

bb.fw:                                            ; preds = %bb.fv
  %i.vc = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.uo
  %i.vd = load i8, ptr %i.vc, align 1, !noalias !16385, !noundef !28
  %i.ve = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.va
  %i.vf = load i8, ptr %i.ve, align 1, !noalias !16385, !noundef !28
  %.not167.i138 = icmp ult i8 %i.vd, %i.vf
  br i1 %.not167.i138, label %._crit_edge1784, label %bb.fl

bb.fx:                                            ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i157, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i140, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i148
  %.sroa.039.3.i = phi i64 [ %.sroa.039.0505.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i140 ], [ %.sroa.039.1.lcssa.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i148 ], [ %.sroa.039.4.lcssa.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i157 ] ; 5 uses
  %.sroa.09.3.i144 = phi i64 [ %.sroa.09.1.lcssa.i139, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i140 ], [ %.sroa.09.0506.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i148 ], [ %.sroa.09.4.lcssa.i156, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i157 ] ; 5 uses
  %i.vg = icmp ult i64 %.sroa.09.3.i144, %i.gi    ; 2 uses
  %i.vh = icmp ult i64 %.sroa.039.3.i, %i.gj      ; 3 uses
  %or.cond.i145 = select i1 %i.vg, i1 %i.vh, i1 false
  br i1 %or.cond.i145, label %.lr.ph508.i, label %._crit_edge509.i

._crit_edge495.i:                                 ; preds = %bb.gi, %bb.gh, %bb.ge, %.preheader.i155
  %.sroa.039.4.lcssa.i = phi i64 [ %.sroa.039.0505.i, %.preheader.i155 ], [ %i.wi, %bb.gi ], [ %.sroa.039.4492.i, %bb.ge ], [ %.sroa.039.4492.i, %bb.gh ]
  %.sroa.09.4.lcssa.i156 = phi i64 [ %.sroa.09.0506.i, %.preheader.i155 ], [ %i.wg, %bb.gi ], [ %.sroa.09.4493.i, %bb.ge ], [ %.sroa.09.4493.i, %bb.gh ] ; 2 uses
  %i.vi = sub nuw i64 %.sroa.09.4.lcssa.i156, %.sroa.09.0506.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.vj = load ptr, ptr %.val51, align 8, !alias.scope !16395, !noalias !16385, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 120 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 136 ; 2 uses
  %i.vm = load i64, ptr %i.vl, align 8, !alias.scope !16396, !noalias !16385, !noundef !28 ; 3 uses
  %i.vn = load i64, ptr %i.vk, align 8, !range !43, !alias.scope !16396, !noalias !16385, !noundef !28
  %i.vo = icmp eq i64 %i.vm, %i.vn
  br i1 %i.vo, label %bb.fy, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i157

bb.fy:                                            ; preds = %._crit_edge495.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.vk) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i157 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16385

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQIBN_QINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1A_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i157: ; preds = %bb.fy, %._crit_edge495.i
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vj, i64 128
  %i.vq = load ptr, ptr %i.vp, align 8, !alias.scope !16396, !noalias !16385, !nonnull !28, !noundef !28
  %i.vr = getelementptr inbounds nuw [40 x i8], ptr %i.vq, i64 %i.vm ; 4 uses
  store i64 0, ptr %i.vr, align 8, !noalias !16385
  %.sroa.4.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  store i64 %i.qu, ptr %.sroa.4.0..sroa_idx.i158, align 8, !noalias !16385
  %.sroa.5.0..sroa_idx.i159 = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  store i64 %i.qv, ptr %.sroa.5.0..sroa_idx.i159, align 8, !noalias !16385
  %.sroa.6.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %i.vr, i64 24
  store i64 %i.vi, ptr %.sroa.6.0..sroa_idx.i160, align 8, !noalias !16385
  %i.vs = add i64 %i.vm, 1
  store i64 %i.vs, ptr %i.vl, align 8, !alias.scope !16396, !noalias !16385
  br label %bb.fx

.lr.ph494.i:                                      ; preds = %.preheader.i155, %bb.gi
  %.sroa.09.4493.i = phi i64 [ %i.wg, %bb.gi ], [ %.sroa.09.0506.i, %.preheader.i155 ] ; 5 uses
  %.sroa.039.4492.i = phi i64 [ %i.wi, %bb.gi ], [ %.sroa.039.0505.i, %.preheader.i155 ] ; 6 uses
  %i.vt = and i64 %.sroa.039.4492.i, 1023
  %i.vu = icmp eq i64 %i.vt, 0
  %or.cond180.i161 = select i1 %.sroa.05.0.not507.i, i1 %i.vu, i1 false
  br i1 %or.cond180.i161, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.gc, %.lr.ph494.i
  %i.vv = mul i64 %.sroa.09.4493.i, %i.pj
  %i.vw = add i64 %.sroa.039.4492.i, %invariant.op.i109 ; 2 uses
  %i.vx = icmp ult i64 %i.vw, %i.bc
  br i1 %i.vx, label %bb.gd, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #74
          to label %.noexc191.i162 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16385

.noexc191.i162:                                   ; preds = %bb.ga
  unreachable

bb.gb:                                            ; preds = %.lr.ph494.i
  %i.vy = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gc unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16385

bb.gc:                                            ; preds = %bb.gb
  br i1 %i.vy, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread344, label %bb.fz

bb.gd:                                            ; preds = %bb.fz
  %i.vz = add i64 %.sroa.09.4493.i, %invariant.op482.i ; 2 uses
  %i.wa = icmp ult i64 %i.vz, %i.az
  br i1 %i.wa, label %bb.ge, label %.invoke.i121

bb.ge:                                            ; preds = %bb.gd
  %i.wb = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.vw
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.vz
  %.val206.i163 = load i64, ptr %i.wb, align 8, !noalias !16385, !noundef !28
  %.val207.i164 = load i64, ptr %i.wc, align 8, !noalias !16385, !noundef !28
  %i.wd = icmp eq i64 %.val206.i163, %.val207.i164
  br i1 %i.wd, label %bb.gf, label %._crit_edge495.i

bb.gf:                                            ; preds = %bb.ge
  %i.we = add i64 %i.vv, %.sroa.039.4492.i        ; 3 uses
  %i.wf = icmp ult i64 %i.we, %i.pl
  br i1 %i.wf, label %bb.gg, label %.split443.us.invoke.i126

bb.gg:                                            ; preds = %bb.gf
  %i.wg = add nuw i64 %.sroa.09.4493.i, 1         ; 4 uses
  %i.wh = mul i64 %i.wg, %i.pj
  %i.wi = add nuw i64 %.sroa.039.4492.i, 1        ; 4 uses
  %i.wj = add i64 %i.wi, %i.wh                    ; 3 uses
  %i.wk = icmp ult i64 %i.wj, %i.pl
  br i1 %i.wk, label %bb.gh, label %.split446.us.invoke.i128

bb.gh:                                            ; preds = %bb.gg
  %i.wl = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.we
  %i.wm = load i8, ptr %i.wl, align 1, !noalias !16385, !noundef !28
  %i.wn = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.wj
  %i.wo = load i8, ptr %i.wn, align 1, !noalias !16385, !noundef !28
  %i.wp = add i8 %i.wo, 1
  %i.wq = icmp eq i8 %i.wm, %i.wp
  br i1 %i.wq, label %bb.gi, label %._crit_edge495.i

bb.gi:                                            ; preds = %bb.gh
  %i.wr = icmp ult i64 %i.wg, %i.gi
  %i.ws = icmp ult i64 %i.wi, %i.gj
  %or.cond177.i165 = and i1 %i.wr, %i.ws
  br i1 %or.cond177.i165, label %.lr.ph494.i, label %._crit_edge495.i

.loopexit64.i166:                                 ; preds = %bb.gj, %bb.gl, %bb.ep, %bb.gw
  br i1 %i.pm, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread344

bb.gj:                                            ; preds = %.lr.ph481.split.i
  br i1 %i.ps, label %.loopexit64.i166, label %.lr.ph.i167

.lr.ph.i167:                                      ; preds = %bb.gj
  %i.wt = mul i64 %i.pr, %i.pj                    ; 2 uses
  %i.wu = mul i64 %.sroa.0102.0480.i, %i.pj       ; 2 uses
  %.reass483.i = add i64 %i.pr, %invariant.op482.i ; 3 uses
  %i.wv = icmp ult i64 %.reass483.i, %i.az
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.reass483.i
  %.fr.i168 = freeze i1 %i.wv
  br i1 %.fr.i168, label %.lr.ph.split.us.i171, label %.lr.ph.split.i169

.lr.ph.split.us.i171:                             ; preds = %.lr.ph.i167, %bb.gu
  %.sroa.0105.0433.us.i172 = phi i64 [ %i.wx, %bb.gu ], [ %i.gj, %.lr.ph.i167 ] ; 3 uses
  %i.wx = add i64 %.sroa.0105.0433.us.i172, -1    ; 6 uses
  %i.wy = and i64 %i.wx, 1023
  %i.wz = icmp eq i64 %i.wy, 0
  br i1 %i.wz, label %bb.gk, label %bb.gm

bb.gk:                                            ; preds = %.lr.ph.split.us.i171
  %i.xa = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16385

bb.gl:                                            ; preds = %bb.gk
  br i1 %i.xa, label %.loopexit64.i166, label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %.lr.ph.split.us.i171
  %.reass.us.i173 = add i64 %i.wx, %invariant.op.i109 ; 3 uses
  %i.xb = icmp ult i64 %.reass.us.i173, %i.bc
  br i1 %i.xb, label %bb.gn, label %.invoke.i121

bb.gn:                                            ; preds = %bb.gm
  %i.xc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.reass.us.i173
  %.val.us.i174 = load i64, ptr %i.xc, align 8, !noalias !16385, !noundef !28
end_hunk_3
begin_hunk_4_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQIB1q_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just:bb.a
  store i64 %i.zg, ptr %.sroa.6298.0..sroa_idx, align 8, !noalias !16420
  %i.zr = add i64 %i.zl, 1
  store i64 %i.zr, ptr %i.zk, align 8, !alias.scope !16419, !noalias !16420
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread341

bb.he:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread341
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16422)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16423)
  %i.zs = load ptr, ptr %0, align 8, !alias.scope !16424, !nonnull !28, !align !35, !noundef !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16426), !noalias !16424
  %i.zt = load ptr, ptr %i.zs, align 8, !alias.scope !16427, !noalias !16424, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 120 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 136 ; 2 uses
  %i.zw = load i64, ptr %i.zv, align 8, !alias.scope !16428, !noalias !16429, !noundef !28 ; 3 uses
  %i.zx = load i64, ptr %i.zu, align 8, !range !43, !alias.scope !16428, !noalias !16429, !noundef !28
  %i.zy = icmp eq i64 %i.zw, %i.zx
  br i1 %i.zy, label %bb.hf, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit185

bb.hf:                                            ; preds = %bb.he
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.zu) #73, !noalias !16430
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit185

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit185: ; preds = %bb.he, %bb.hf
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zt, i64 128
  %i.aaa = load ptr, ptr %i.zz, align 8, !alias.scope !16428, !noalias !16429, !nonnull !28, !noundef !28
  %i.aab = getelementptr inbounds nuw [40 x i8], ptr %i.aaa, i64 %i.zw ; 4 uses
  store i64 0, ptr %i.aab, align 8, !noalias !16429
  %.sroa.4266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  store i64 %i.be, ptr %.sroa.4266.0..sroa_idx, align 8, !noalias !16429
  %.sroa.5267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  store i64 %i.bf, ptr %.sroa.5267.0..sroa_idx, align 8, !noalias !16429
  %.sroa.6268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aab, i64 24
  store i64 %.sroa.0.0.i63, ptr %.sroa.6268.0..sroa_idx, align 8, !noalias !16429
  %i.aac = add i64 %i.zw, 1
  store i64 %i.aac, ptr %i.zv, align 8, !alias.scope !16428, !noalias !16429
  br label %bb.hg

bb.hg:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQIB1M_QINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEECskXtk6F4WjxZ_4just.exit.thread341, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit185
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIBT_mEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16595)
  %i.b = icmp uge i64 %2, %3
  %i.c = icmp uge i64 %5, %6
  %or.cond.i53 = or i1 %i.b, %i.c
  br i1 %or.cond.i53, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i.i = sub nuw i64 %6, %5
  %spec.select.i.i4.i.i.i = sub nuw i64 %3, %2
  %..i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i54 = icmp eq i64 %..i.i.i.i, 0
  br i1 %.not.i54, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !16596, !noalias !16597, !noundef !28
  %invariant.op.i.i.i.i = sub i64 %5, %i.e        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !16596, !noalias !16597, !noundef !28 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.h, align 8, !alias.scope !16595, !nonnull !28
  %i.m = load i64, ptr %i.i, align 8, !alias.scope !16594
  %invariant.op.i = sub i64 %2, %i.m              ; 2 uses
  %i.n = load i64, ptr %i.j, align 8, !alias.scope !16594 ; 3 uses
  %i.o = load ptr, ptr %i.k, align 8, !alias.scope !16594, !nonnull !28
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sroa.01.033.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.p, %bb.f ] ; 5 uses
  %i.p = add nuw i64 %.sroa.01.033.i.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16598)
  %.reass.i.i.i.i = add nuw i64 %.sroa.01.033.i.i.i.i, %invariant.op.i.i.i.i ; 2 uses
  %i.q = icmp ult i64 %.reass.i.i.i.i, %i.g
  br i1 %i.q, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %invariant.op.i.i.i.i)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @564) #74, !noalias !16599
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i: ; preds = %bb.c
  %.reass.i = add nuw i64 %.sroa.01.033.i.i.i.i, %invariant.op.i ; 2 uses
  %i.r = icmp ult i64 %.reass.i, %i.n
  br i1 %i.r, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i
  %umax17.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %invariant.op.i)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax17.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565) #74, !noalias !16600
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.reass.i.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.reass.i
  %.val.i.i.i.i.i = load i64, ptr %i.s, align 8, !noalias !16601, !noundef !28
  %.val7.i.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !16601, !noundef !28
  %i.u = icmp eq i64 %.val.i.i.i.i.i, %.val7.i.i.i.i.i
  br i1 %i.u, label %bb.f, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit

bb.f:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, %..i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread311, label %bb.c

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %.not = icmp eq i64 %.sroa.01.033.i.i.i.i, 0
  br i1 %.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread311

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.b, %bb.a, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i55310 = phi i64 [ 0, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0.0.i55314, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.v = add i64 %.sroa.0.0.i55310, %2            ; 3 uses
  %i.w = add i64 %.sroa.0.0.i55310, %5            ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16603)
  %i.x = icmp uge i64 %i.v, %3
  %i.y = icmp uge i64 %i.w, %6
  %or.cond.i56 = or i1 %i.x, %i.y
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br i1 %or.cond.i56, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge, label %.lr.ph.i.i.i.i57

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge: ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert1036 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre1037 = load i64, ptr %.phi.trans.insert1036, align 8
  %.phi.trans.insert1038 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre1039 = load ptr, ptr %.phi.trans.insert1038, align 8
  %.phi.trans.insert1040 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre1041 = load i64, ptr %.phi.trans.insert1040, align 8
  %.phi.trans.insert1042 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre1043 = load i64, ptr %.phi.trans.insert1042, align 8
  %.phi.trans.insert1044 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre1045 = load ptr, ptr %.phi.trans.insert1044, align 8
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit

.lr.ph.i.i.i.i57:                                 ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = sub nuw i64 %3, %i.v                    ; 2 uses
  %i.af = sub nuw i64 %6, %i.w                    ; 2 uses
  %i.ag = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !16603 ; 4 uses
  %i.ah = load i64, ptr %i.z, align 8, !alias.scope !16603 ; 5 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !alias.scope !16603, !nonnull !28 ; 4 uses
  %i.aj = load i64, ptr %i.ab, align 8, !alias.scope !16602 ; 4 uses
  %i.ak = load i64, ptr %i.ac, align 8, !alias.scope !16602 ; 5 uses
  %i.al = load ptr, ptr %i.ad, align 8, !alias.scope !16602, !nonnull !28 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i57
  %i.am = phi i64 [ %3, %.lr.ph.i.i.i.i57 ], [ %i.ap, %bb.k ]
  %.sroa.01.030.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i57 ], [ %i.ax, %bb.k ] ; 3 uses
  %i.an = phi i64 [ %6, %.lr.ph.i.i.i.i57 ], [ %i.ao, %bb.k ]
  %i.ao = add i64 %i.an, -1                       ; 2 uses
  %exitcond.not.i.i.i.i58 = icmp eq i64 %.sroa.01.030.i.i.i.i, %i.ae
  br i1 %exitcond.not.i.i.i.i58, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = add i64 %i.am, -1                       ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ag                    ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %i.ah
  br i1 %i.ar, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i59, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aq, i64 noundef %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @566) #74, !noalias !16604
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i59: ; preds = %bb.h
  %i.as = sub i64 %i.ap, %i.aj                    ; 3 uses
  %i.at = icmp ult i64 %i.as, %i.ak
  br i1 %i.at, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60, label %bb.j

bb.j:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i59
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.as, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @567) #74, !noalias !16605
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i59
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aq
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.as
  %.val.i.i.i.i.i61 = load i64, ptr %i.au, align 8, !noalias !16606, !noundef !28
  %.val7.i.i.i.i.i62 = load i64, ptr %i.av, align 8, !noalias !16606, !noundef !28
  %i.aw = icmp eq i64 %.val.i.i.i.i.i61, %.val7.i.i.i.i.i62
  br i1 %i.aw, label %bb.k, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit

bb.k:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60
  %i.ax = add nuw i64 %.sroa.01.030.i.i.i.i, 1    ; 2 uses
  %exitcond62.not.i.i.i.i = icmp eq i64 %i.ax, %i.af
  br i1 %exitcond62.not.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit, label %bb.g

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit: ; preds = %bb.g, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60, %bb.k, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge
  %i.ay = phi ptr [ %.pre1045, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.al, %bb.k ], [ %i.al, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.al, %bb.g ] ; 10 uses
  %i.az = phi i64 [ %.pre1043, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ak, %bb.k ], [ %i.ak, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.ak, %bb.g ] ; 24 uses
  %i.ba = phi i64 [ %.pre1041, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.aj, %bb.k ], [ %i.aj, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.aj, %bb.g ] ; 5 uses
  %i.bb = phi ptr [ %.pre1039, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ai, %bb.k ], [ %i.ai, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.ai, %bb.g ] ; 11 uses
  %i.bc = phi i64 [ %.pre1037, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ah, %bb.k ], [ %i.ah, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.ah, %bb.g ] ; 29 uses
  %i.bd = phi i64 [ %.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ag, %bb.k ], [ %i.ag, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.ag, %bb.g ] ; 8 uses
  %.sroa.0.0.i63 = phi i64 [ 0, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ae, %bb.g ], [ %.sroa.01.030.i.i.i.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.af, %bb.k ] ; 4 uses
  %i.be = sub i64 %3, %.sroa.0.0.i63              ; 9 uses
  %i.bf = sub i64 %6, %.sroa.0.0.i63              ; 9 uses
  br label %bb.m

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread311: ; preds = %bb.f, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i55314 = phi i64 [ %.sroa.01.033.i.i.i.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit ], [ %..i.i.i.i, %bb.f ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16608)
  %i.bg = load ptr, ptr %0, align 8, !alias.scope !16609, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 120 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 136 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !16610, !noalias !16609, !noundef !28 ; 3 uses
  %i.bk = load i64, ptr %i.bh, align 8, !range !43, !alias.scope !16610, !noalias !16609, !noundef !28
  %i.bl = icmp eq i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.l, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit

bb.l:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread311
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh) #73, !noalias !16611
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit: ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread311, %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !16610, !noalias !16609, !nonnull !28, !noundef !28
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %i.bn, i64 %i.bj ; 4 uses
  store i64 0, ptr %i.bo, align 8, !noalias !16609
  %.sroa.4255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %2, ptr %.sroa.4255.0..sroa_idx, align 8, !noalias !16609
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !16609
  %.sroa.6256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i64 %.sroa.0.0.i55314, ptr %.sroa.6256.0..sroa_idx, align 8, !noalias !16609
  %i.bp = add i64 %i.bj, 1
  store i64 %i.bp, ptr %i.bi, align 8, !alias.scope !16610, !noalias !16609
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread

bb.m:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0211.0 = phi i64 [ %i.w, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0211.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.v, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit ] ; 33 uses
  %i.bq = icmp ult i64 %.sroa.0.0, %i.be          ; 2 uses
  %i.br = icmp ult i64 %.sroa.0211.0, %i.bf       ; 3 uses
  %or.cond340 = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %or.cond340, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, %bb.m
  br i1 %i.bq, label %bb.az, label %bb.ba

bb.o:                                             ; preds = %bb.m
  %i.bs = sub nuw i64 %i.be, %.sroa.0.0           ; 6 uses
  %i.bt = sub nuw i64 %i.bf, %.sroa.0211.0        ; 6 uses
  %i.bu = icmp ult i64 %i.bs, 97
  %i.bv = icmp ult i64 %i.bt, 97
  %or.cond.i = or i1 %i.bv, %i.bu
  br i1 %or.cond.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bs) ; 2 uses
  %..i64 = tail call noundef i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bs)
  %i.bw = shl nuw i64 %..i, 1
  %i.bx = icmp slt i64 %..i, 0
  br i1 %i.bx, label %bb.q, label %bb.r, !prof !44

bb.q:                                             ; preds = %bb.p
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.052.0.i = phi i64 [ -1, %bb.q ], [ %i.bw, %bb.p ]
  %i.by = icmp ult i64 %..i64, %.sroa.052.0.i
  br i1 %i.by, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i = icmp ule i64 %i.bt, %i.bs
  %i.bz = icmp ule i64 %i.bs, %i.bt
  %.not.i.fr = freeze i1 %.not.i
  %i.ca = sub i64 %.sroa.0211.0, %i.bd            ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bc
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ca
  br label %bb.t

.loopexit:                                        ; preds = %.outer, %bb.ah, %bb.w, %bb.ag
  %.sroa.525.2.i.ph.lcssa563 = phi i64 [ %.sroa.525.2.i.ph718, %bb.w ], [ %.sroa.525.2.i.ph718, %bb.ah ], [ %.sroa.525.2.i.ph718, %bb.ag ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa556 = phi i64 [ %.sroa.023.1.i.ph719, %bb.w ], [ %.sroa.023.1.i.ph719, %bb.ah ], [ %.sroa.023.1.i.ph719, %bb.ag ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa549 = phi i64 [ %.sroa.9.2.i.ph720, %bb.w ], [ %.sroa.9.2.i.ph720, %bb.ah ], [ %.sroa.9.2.i.ph720, %bb.ag ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa542 = phi i64 [ %.sroa.12.2.i.ph721, %bb.w ], [ %.sroa.12.2.i.ph721, %bb.ah ], [ %.sroa.12.2.i.ph721, %bb.ag ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, -1
  %exitcond1035 = icmp eq i64 %i.cd, 5
  br i1 %exitcond1035, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit
  %indvars.iv = phi i64 [ %i.bs, %bb.s ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.sroa.12.0.i726 = phi i64 [ undef, %bb.s ], [ %.sroa.12.2.i.ph.lcssa542, %.loopexit ]
  %.sroa.9.0.i725 = phi i64 [ undef, %bb.s ], [ %.sroa.9.2.i.ph.lcssa549, %.loopexit ]
  %.sroa.023.0.i724 = phi i64 [ 0, %bb.s ], [ %.sroa.023.1.i.ph.lcssa556, %.loopexit ]
  %.sroa.525.0.i723 = phi i64 [ undef, %bb.s ], [ %.sroa.525.2.i.ph.lcssa563, %.loopexit ]
  %.sroa.0244.0722 = phi i64 [ 0, %bb.s ], [ %i.cd, %.loopexit ] ; 9 uses
  %i.cd = add nuw nsw i64 %.sroa.0244.0722, 1     ; 2 uses
  %i.ce = icmp eq i64 %.sroa.0244.0722, 0
  %i.cf = add i64 %.sroa.0244.0722, %.sroa.0.0    ; 2 uses
  %i.cg = sub i64 %i.cf, %i.ba                    ; 4 uses
  %i.ch = icmp ult i64 %i.cg, %i.az               ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cg ; 2 uses
  %i.cj = sub i64 %i.be, %i.cf
  br label %.lr.ph

bb.u:                                             ; preds = %.loopexit
  %i.ck = trunc nuw i64 %.sroa.023.1.i.ph.lcssa556 to i1
  br i1 %i.ck, label %.loopexit438, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit

.loopexit438:                                     ; preds = %bb.ai, %bb.u
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa563, %bb.u ], [ %.sroa.0244.0722, %bb.ai ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa549, %bb.u ], [ %.us-phi632, %bb.ai ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa542, %bb.u ], [ %.sroa.01.0.i.lcssa, %bb.ai ] ; 3 uses
  %i.cl = icmp eq i64 %.sroa.525.1.i, 0
  %i.cm = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.cl, label %bb.ao, label %bb.ap

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.w
  %.sroa.0245.0606 = phi i64 [ %i.cn, %bb.w ], [ %.sroa.0245.0.ph717, %.lr.ph.split ] ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.0245.0606, 1     ; 2 uses
  %i.co = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !16612
  br i1 %i.co, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.split
  %.not729 = icmp eq i64 %.sroa.0245.0606, 0
  br i1 %.not729, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30
  %exitcond = icmp eq i64 %i.cn, 5
  br i1 %exitcond, label %.loopexit, label %.lr.ph.split.split

bb.x:                                             ; preds = %bb.v
  br i1 %i.cb, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31, label %.split615.loopexit1292

.split615.loopexit1292:                           ; preds = %bb.x
  %i.cp = sub i64 %.sroa.0211.0, %i.bd
  br label %.split615

.split615:                                        ; preds = %bb.af, %.split615.loopexit1292
  %.us-phi = phi i64 [ %i.cp, %.split615.loopexit1292 ], [ %i.df, %bb.af ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @293) #74, !noalias !16613
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31: ; preds = %bb.x
  br i1 %i.ch, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30, label %.split618

.split618:                                        ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cg, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @294) #74, !noalias !16614
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31
  %.val49 = load i64, ptr %i.cc, align 8, !noundef !28
  %.val50 = load i64, ptr %i.ci, align 8, !noundef !28
  %.not341 = icmp eq i64 %.val49, %.val50
  br i1 %.not341, label %.split622, label %bb.w

.split622.loopexit:                               ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30.us
  %.pre1050 = sub i64 %i.bf, %i.de
  br label %.split622

.split622:                                        ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30, %.split622.loopexit
  %.pre-phi = phi i64 [ %.pre1050, %.split622.loopexit ], [ %i.bt, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ] ; 2 uses
  %.us-phi628 = phi i64 [ %i.de, %.split622.loopexit ], [ %.sroa.0211.0, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ]
  %.us-phi631 = phi i64 [ %i.dc, %.split622.loopexit ], [ 1, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ] ; 2 uses
  %.us-phi632 = phi i64 [ %.sroa.0245.0606.us, %.split622.loopexit ], [ 0, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ] ; 4 uses
  %..i73 = tail call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.cj)
  %.not730 = icmp eq i64 %..i73, 0
  br i1 %.not730, label %.outer, label %.lr.ph714

.lr.ph714:                                        ; preds = %.split622
  %i.cq = sub i64 %.us-phi628, %i.bd              ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %.pre-phi) ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph714, %bb.ad
  %.sroa.01.0.i713 = phi i64 [ 0, %.lr.ph714 ], [ %i.da, %bb.ad ] ; 5 uses
  %i.cr = and i64 %.sroa.01.0.i713, 1023
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ct = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !16612
  br i1 %i.ct, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cu = add nuw i64 %i.cq, %.sroa.01.0.i713     ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.bc
  br i1 %i.cv, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit29, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %umax1017 = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.cq)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax1017, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #74, !noalias !16615
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit29: ; preds = %bb.aa
  %i.cw = add nuw i64 %i.cg, %.sroa.01.0.i713     ; 3 uses
  %i.cx = icmp ult i64 %i.cw, %i.az
  br i1 %i.cx, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit29
end_hunk_4
begin_hunk_5_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIBT_mEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just:bb.a
  %.sroa.4294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4294.0..sroa_idx, align 8, !noalias !16622
  %.sroa.5295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i64 %.sroa.0211.0, ptr %.sroa.5295.0..sroa_idx, align 8, !noalias !16622
  %.sroa.6296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6296.0..sroa_idx, align 8, !noalias !16622
  %i.eo = add i64 %i.ei, 1                        ; 2 uses
  store i64 %i.eo, ptr %i.eh, align 8, !alias.scope !16621, !noalias !16622
  br label %bb.aq

bb.au:                                            ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16625), !noalias !16617
  %i.ep = load ptr, ptr %0, align 8, !alias.scope !16626, !noalias !16617, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 120 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 136 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !16627, !noalias !16628, !noundef !28 ; 3 uses
  %i.et = load i64, ptr %i.eq, align 8, !range !43, !alias.scope !16627, !noalias !16628, !noundef !28
  %i.eu = icmp eq i64 %i.es, %i.et
  br i1 %i.eu, label %bb.av, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit78

bb.av:                                            ; preds = %bb.au
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eq) #73, !noalias !16629
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit78

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit78: ; preds = %bb.au, %bb.av
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 128
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !16627, !noalias !16628, !nonnull !28, !noundef !28
  %i.ex = getelementptr inbounds nuw [40 x i8], ptr %i.ew, i64 %i.es ; 4 uses
  store i64 1, ptr %i.ex, align 8, !noalias !16628
  %.sroa.4279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4279.0..sroa_idx, align 8, !noalias !16628
  %.sroa.5280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5280.0..sroa_idx, align 8, !noalias !16628
  %.sroa.6281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  store i64 %.sroa.0211.0, ptr %.sroa.6281.0..sroa_idx, align 8, !noalias !16628
  %i.ey = add i64 %i.es, 1                        ; 2 uses
  store i64 %i.ey, ptr %i.er, align 8, !alias.scope !16627, !noalias !16628
  br label %bb.aq

bb.aw:                                            ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16631), !noalias !16617
  %i.ez = load ptr, ptr %0, align 8, !alias.scope !16632, !noalias !16617, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 120 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 136 ; 3 uses
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !16633, !noalias !16634, !noundef !28 ; 4 uses
  %i.fd = load i64, ptr %i.fa, align 8, !range !43, !alias.scope !16633, !noalias !16634, !noundef !28
  %i.fe = icmp eq i64 %i.fc, %i.fd
  br i1 %i.fe, label %bb.ax, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79

bb.ax:                                            ; preds = %bb.aw
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fa) #73, !noalias !16635
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79: ; preds = %bb.aw, %bb.ax
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 128 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !alias.scope !16633, !noalias !16634, !nonnull !28, !noundef !28
  %i.fh = getelementptr inbounds nuw [40 x i8], ptr %i.fg, i64 %i.fc ; 4 uses
  store i64 1, ptr %i.fh, align 8, !noalias !16634
  %.sroa.4299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4299.0..sroa_idx, align 8, !noalias !16634
  %.sroa.5300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5300.0..sroa_idx, align 8, !noalias !16634
  %.sroa.6301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  store i64 %.sroa.0211.0, ptr %.sroa.6301.0..sroa_idx, align 8, !noalias !16634
  %i.fi = add i64 %i.fc, 1                        ; 3 uses
  store i64 %i.fi, ptr %i.fb, align 8, !alias.scope !16633, !noalias !16634
  %i.fj = load i64, ptr %i.fa, align 8, !range !43, !alias.scope !16636, !noalias !16634, !noundef !28
  %i.fk = icmp eq i64 %i.fi, %i.fj
  br i1 %i.fk, label %bb.ay, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit80

bb.ay:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fa) #73, !noalias !16637
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit80

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit80: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79, %bb.ay
  %i.fl = load ptr, ptr %i.ff, align 8, !alias.scope !16636, !noalias !16634, !nonnull !28, !noundef !28
  %i.fm = getelementptr inbounds nuw [40 x i8], ptr %i.fl, i64 %i.fi ; 4 uses
  store i64 2, ptr %i.fm, align 8, !noalias !16634
  %.sroa.4304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4304.0..sroa_idx, align 8, !noalias !16634
  %.sroa.5305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 %.sroa.0211.0, ptr %.sroa.5305.0..sroa_idx, align 8, !noalias !16634
  %.sroa.6306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6306.0..sroa_idx, align 8, !noalias !16634
  %i.fn = add i64 %i.fc, 2                        ; 2 uses
  store i64 %i.fn, ptr %i.fb, align 8, !alias.scope !16636, !noalias !16634
  br label %bb.aq

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB18_mEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit: ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %.lr.ph.split.us, %bb.z, %bb.o, %bb.r, %bb.u, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit76
  %.sroa.0211.2 = phi i64 [ %.sroa.0211.0, %bb.o ], [ %.sroa.0211.0, %bb.r ], [ %.sroa.0211.0, %bb.u ], [ %i.ef, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit76 ], [ %.sroa.0211.0, %.lr.ph.split.split ], [ %.sroa.0211.0, %.lr.ph.split.us ], [ %.sroa.0211.0, %bb.z ], [ %.sroa.0211.0, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.o ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %bb.u ], [ %i.ee, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit76 ], [ %.sroa.0.0, %.lr.ph.split.split ], [ %.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.0.0, %bb.z ], [ %.sroa.0.0, %.lr.ph.split.split.us ] ; 2 uses
  %i.fo = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.fp = icmp eq i64 %.sroa.0211.2, %.sroa.0211.0
  %or.cond = select i1 %i.fo, i1 %i.fp, i1 false
  br i1 %or.cond, label %bb.n, label %bb.m

bb.az:                                            ; preds = %bb.n
  br i1 %i.br, label %bb.bd, label %bb.bb

bb.ba:                                            ; preds = %bb.n
  br i1 %i.br, label %.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread334

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread334: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit81, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit177, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit176, %bb.gz, %bb.ba
  %.not26 = icmp eq i64 %.sroa.0.0.i63, 0
  br i1 %.not26, label %bb.hg, label %bb.he

bb.bb:                                            ; preds = %bb.az
  %i.fq = sub nuw i64 %i.be, %.sroa.0.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16639)
  %i.fr = load ptr, ptr %0, align 8, !alias.scope !16640, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 120 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 136 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !16641, !noalias !16640, !noundef !28 ; 3 uses
  %i.fv = load i64, ptr %i.fs, align 8, !range !43, !alias.scope !16641, !noalias !16640, !noundef !28
  %i.fw = icmp eq i64 %i.fu, %i.fv
  br i1 %i.fw, label %bb.bc, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit81

bb.bc:                                            ; preds = %bb.bb
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fs) #73, !noalias !16642
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit81

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit81: ; preds = %bb.bb, %bb.bc
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 128
  %i.fy = load ptr, ptr %i.fx, align 8, !alias.scope !16641, !noalias !16640, !nonnull !28, !noundef !28
  %i.fz = getelementptr inbounds nuw [40 x i8], ptr %i.fy, i64 %i.fu ; 4 uses
  store i64 1, ptr %i.fz, align 8, !noalias !16640
  %.sroa.4274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4274.0..sroa_idx, align 8, !noalias !16640
  %.sroa.5275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i64 %i.fq, ptr %.sroa.5275.0..sroa_idx, align 8, !noalias !16640
  %.sroa.6276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  store i64 %.sroa.0211.0, ptr %.sroa.6276.0..sroa_idx, align 8, !noalias !16640
  %i.ga = add i64 %i.fu, 1
  store i64 %i.ga, ptr %i.ft, align 8, !alias.scope !16641, !noalias !16640
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread334

bb.bd:                                            ; preds = %bb.az
  %i.gb = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !16643
  br i1 %i.gb, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gc = sub nuw i64 %i.be, %.sroa.0.0           ; 22 uses
  %i.gd = sub nuw i64 %i.bf, %.sroa.0211.0        ; 22 uses
  %i.ge = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gc, i64 %i.gd) ; 2 uses
  %i.gf = extractvalue { i64, i1 } %i.ge, 1
  br i1 %i.gf, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.bf, !prof !44

bb.bf:                                            ; preds = %bb.be
  %i.gg = extractvalue { i64, i1 } %i.ge, 0
  %..i83 = tail call noundef i64 @llvm.umax.i64(i64 %i.gd, i64 %i.gc)
  %..i82 = tail call noundef i64 @llvm.umin.i64(i64 %i.gd, i64 %i.gc)
  %i.gh = add i64 %..i82, -65
  %or.cond.i27 = icmp ult i64 %i.gh, -64
  %i.gi = icmp ult i64 %..i83, 512
  %or.cond1.i = or i1 %i.gi, %or.cond.i27
  %i.gj = icmp ugt i64 %i.gg, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.gj
  br i1 %or.cond3.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not.i28 = icmp ugt i64 %i.gc, %i.gd
  %.val51 = load ptr, ptr %0, align 8             ; 16 uses
  %i.gk = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !28 ; 2 uses
  br i1 %.not.i28, label %bb.bh, label %bb.ec

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.gk, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gl = add i64 %i.gc, 1                        ; 11 uses
  %i.gm = add nuw i64 %i.gd, 1
  %i.gn = mul i64 %i.gl, %i.gm                    ; 29 uses
  %.not.i.i.i = icmp slt i64 %i.gn, 0
  br i1 %.not.i.i.i, label %bb.bm, label %bb.bj, !prof !42

bb.bj:                                            ; preds = %bb.bi
  %i.go = icmp eq i64 %i.gn, 0                    ; 3 uses
  br i1 %i.go, label %.lr.ph466.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !16644
  %i.gp = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.gn, i64 noundef range(i64 1, 9) 1) #69, !noalias !16644 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gr = ptrtoint ptr %i.gp to i64
  br label %.lr.ph466.i

bb.bm:                                            ; preds = %bb.bk, %bb.bi
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.bk ], [ 0, %bb.bi ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.gn) #70, !noalias !16645
  unreachable

.lr.ph466.i:                                      ; preds = %bb.bj, %bb.bl
  %.sroa.10.0.i.i = phi i64 [ %i.gr, %bb.bl ], [ 1, %bb.bj ]
  %i.gs = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 21 uses
  %invariant.op467.i = sub i64 %.sroa.0211.0, %i.bd ; 4 uses
  %invariant.op.i85 = sub i64 %.sroa.0.0, %i.ba   ; 3 uses
  br label %.lr.ph466.split.i

.lr.ph492.i:                                      ; preds = %..loopexit68_crit_edge.split.us.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.val51, i64 120 ; 10 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.val51, i64 136 ; 6 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.val51, i64 128 ; 3 uses
  br label %bb.bn

.lr.ph466.split.i:                                ; preds = %.lr.ph466.i, %..loopexit68_crit_edge.split.us.i
  %.sroa.0102.0465.i = phi i64 [ %i.gw, %..loopexit68_crit_edge.split.us.i ], [ %i.gd, %.lr.ph466.i ] ; 2 uses
  %i.gw = add i64 %.sroa.0102.0465.i, -1          ; 4 uses
  %i.gx = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.do unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16646

._crit_edge493.i:                                 ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i
  br i1 %i.ls, label %bb.bo, label %bb.bq

bb.bn:                                            ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i, %.lr.ph492.i
  %.sroa.05.0.not491.i = phi i1 [ true, %.lr.ph492.i ], [ false, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i ] ; 3 uses
  %.sroa.09.0490.i = phi i64 [ 0, %.lr.ph492.i ], [ %.sroa.09.3.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i ] ; 14 uses
  %.sroa.038.0489.i = phi i64 [ 0, %.lr.ph492.i ], [ %.sroa.038.3.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i ] ; 18 uses
  %i.gy = and i64 %.sroa.038.0489.i, 1023
  %i.gz = icmp eq i64 %i.gy, 0
  %or.cond170.i = select i1 %.sroa.05.0.not491.i, i1 %i.gz, i1 false ; 2 uses
  br i1 %or.cond170.i, label %bb.bu, label %bb.bt

bb.bo:                                            ; preds = %._crit_edge493.i
  %i.ha = add i64 %.sroa.038.3.i, %.sroa.0.0      ; 2 uses
  %i.hb = sub nuw i64 %i.gc, %.sroa.038.3.i
  %i.hc = add i64 %.sroa.09.3.i, %.sroa.0211.0    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hd = load i64, ptr %i.gt, align 8, !range !43, !alias.scope !16647, !noalias !16646, !noundef !28
  %i.he = icmp eq i64 %i.lq, %i.hd
  br i1 %i.he, label %bb.bp, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gt) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16646

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i: ; preds = %bb.bp, %bb.bo
  %i.hf = load ptr, ptr %i.gv, align 8, !alias.scope !16647, !noalias !16646, !nonnull !28, !noundef !28
  %i.hg = getelementptr inbounds nuw [40 x i8], ptr %i.hf, i64 %i.lq ; 4 uses
  store i64 1, ptr %i.hg, align 8, !noalias !16646
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store i64 %i.ha, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !16646
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store i64 %i.hb, ptr %.sroa.525.0..sroa_idx.i, align 8, !noalias !16646
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  store i64 %i.hc, ptr %.sroa.626.0..sroa_idx.i, align 8, !noalias !16646
  %i.hh = add i64 %.sink959.i, 2                  ; 2 uses
  store i64 %i.hh, ptr %i.gu, align 8, !alias.scope !16647, !noalias !16646
  br i1 %i.lr, label %bb.br, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i

bb.bq:                                            ; preds = %._crit_edge493.i
  br i1 %i.lr, label %._crit_edge1052, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i

._crit_edge1052:                                  ; preds = %bb.bq
  %.pre1053 = add i64 %.sroa.038.3.i, %.sroa.0.0
  %.pre1055 = add i64 %.sroa.09.3.i, %.sroa.0211.0
  br label %bb.br

.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ct, %bb.dg, %bb.cg, %bb.cs, %bb.cf, %.split446.us.invoke.i, %bb.df
  %lpad.loopexit.split-lp1844 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dp, %bb.dd, %bb.bu, %.lr.ph466.split.i, %.split443.us.invoke.i, %bb.ea, %.invoke.i, %bb.bs, %bb.bp
  %lpad.loopexit.split-lp1870 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.go, label %common.resume, label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi44.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp1870, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1844, %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gs, i64 noundef %i.gn, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !16648
  br label %common.resume

bb.br:                                            ; preds = %._crit_edge1052, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i
  %.pre-phi1056 = phi i64 [ %.pre1055, %._crit_edge1052 ], [ %i.hc, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i ]
  %.pre-phi1054 = phi i64 [ %.pre1053, %._crit_edge1052 ], [ %i.ha, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i ]
  %i.hi = phi i64 [ %i.lq, %._crit_edge1052 ], [ %i.hh, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i ] ; 3 uses
  %i.hj = sub nuw i64 %i.gd, %.sroa.09.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hk = load i64, ptr %i.gt, align 8, !range !43, !alias.scope !16649, !noalias !16646, !noundef !28
  %i.hl = icmp eq i64 %i.hi, %i.hk
  br i1 %i.hl, label %bb.bs, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gt) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16646

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i: ; preds = %bb.bs, %bb.br
  %i.hm = load ptr, ptr %i.gv, align 8, !alias.scope !16649, !noalias !16646, !nonnull !28, !noundef !28
  %i.hn = getelementptr inbounds nuw [40 x i8], ptr %i.hm, i64 %i.hi ; 4 uses
  store i64 2, ptr %i.hn, align 8, !noalias !16646
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store i64 %.pre-phi1054, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !16646
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store i64 %.pre-phi1056, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !16646
  %.sroa.636.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  store i64 %i.hj, ptr %.sroa.636.0..sroa_idx.i, align 8, !noalias !16646
  %i.ho = add i64 %i.hi, 1
  store i64 %i.ho, ptr %i.gu, align 8, !alias.scope !16649, !noalias !16646
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i.thread: ; preds = %bb.cu, %bb.ch, %bb.dh, %.loopexit64.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gs, i64 noundef %i.gn, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !16646
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i: ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i, %bb.bq, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gs, i64 noundef %i.gn, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !16646
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread334

bb.bt:                                            ; preds = %bb.bv, %bb.bn
  %i.hp = mul i64 %.sroa.09.0490.i, %i.gl         ; 4 uses
  %i.hq = add i64 %.sroa.038.0489.i, %.sroa.0.0   ; 2 uses
  %i.hr = add i64 %.sroa.09.0490.i, %.sroa.0211.0 ; 7 uses
  %i.hs = sub i64 %i.hr, %i.bd                    ; 3 uses
  %i.ht = icmp ult i64 %i.hs, %i.bc
  br i1 %i.ht, label %bb.bw, label %.invoke.i

.invoke.i:                                        ; preds = %bb.dr, %bb.bw, %bb.bt, %bb.ci, %bb.di, %bb.eb, %.lr.ph.split.i, %11
  %i.hu = phi i64 [ %.reass.i88, %.lr.ph.split.i ], [ %.reass.i88, %bb.eb ], [ %i.az, %bb.ci ], [ %umax687.le.i, %11 ], [ %i.hs, %bb.bt ], [ %i.az, %bb.di ], [ %i.hz, %bb.bw ], [ %.reass.us.i, %bb.dr ]
  %i.hv = phi i64 [ %i.bc, %.lr.ph.split.i ], [ %i.bc, %bb.eb ], [ %i.az, %bb.ci ], [ %i.bc, %11 ], [ %i.bc, %bb.bt ], [ %i.az, %bb.di ], [ %i.az, %bb.bw ], [ %i.az, %bb.dr ]
  %i.hw = phi ptr [ @261, %.lr.ph.split.i ], [ @261, %bb.eb ], [ @247, %bb.ci ], [ @252, %11 ], [ @241, %bb.bt ], [ @258, %bb.di ], [ @242, %bb.bw ], [ @262, %bb.dr ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.hu, i64 noundef %i.hv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hw) #74
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16646

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bu:                                            ; preds = %bb.bn
  %i.hx = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16646

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.hx, label %.loopexit64.i, label %bb.bt

bb.bw:                                            ; preds = %bb.bt
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.hs ; 2 uses
  %i.hz = sub i64 %i.hq, %i.ba                    ; 3 uses
  %i.ia = icmp ult i64 %i.hz, %i.az
  br i1 %i.ia, label %bb.bx, label %.invoke.i

bb.bx:                                            ; preds = %bb.bw
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.hz ; 2 uses
  %.val210.i = load i64, ptr %i.hy, align 8, !noalias !16646, !noundef !28
  %.val211.i = load i64, ptr %i.ib, align 8, !noalias !16646, !noundef !28
  %i.ic = icmp eq i64 %.val210.i, %.val211.i
  br i1 %i.ic, label %bb.by, label %._crit_edge692.i

._crit_edge692.i:                                 ; preds = %bb.bx
  %.pre.i = add nuw i64 %.sroa.09.0490.i, 1
  %.pre693.i = mul i64 %.pre.i, %i.gl
  br label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.id = add i64 %i.hp, %.sroa.038.0489.i        ; 3 uses
  %i.ie = icmp ult i64 %i.id, %i.gn
  br i1 %i.ie, label %bb.ca, label %.split443.us.invoke.i

bb.bz:                                            ; preds = %bb.cb, %._crit_edge692.i
  %.pre-phi694.i = phi i64 [ %.pre693.i, %._crit_edge692.i ], [ %i.ii, %bb.cb ] ; 3 uses
  %i.if = add i64 %.pre-phi694.i, %.sroa.038.0489.i ; 3 uses
  %i.ig = icmp ult i64 %i.if, %i.gn
  br i1 %i.ig, label %bb.cc, label %.split443.us.invoke.i

bb.ca:                                            ; preds = %bb.by
  %i.ih = add nuw i64 %.sroa.09.0490.i, 1
  %i.ii = mul i64 %i.ih, %i.gl                    ; 2 uses
  %i.ij = add nuw i64 %.sroa.038.0489.i, 1
  %i.ik = add i64 %i.ij, %i.ii                    ; 3 uses
  %i.il = icmp ult i64 %i.ik, %i.gn
  br i1 %i.il, label %bb.cb, label %.split446.us.invoke.i

bb.cb:                                            ; preds = %bb.ca
  %i.im = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.id
  %i.in = load i8, ptr %i.im, align 1, !noalias !16646, !noundef !28
  %i.io = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.ik
  %i.ip = load i8, ptr %i.io, align 1, !noalias !16646, !noundef !28
  %i.iq = add i8 %i.ip, 1
  %i.ir = icmp eq i8 %i.in, %i.iq
  br i1 %i.ir, label %.preheader.i, label %bb.bz

.preheader.i:                                     ; preds = %bb.cb
  %i.is = icmp ult i64 %.sroa.09.0490.i, %i.gd
  %i.it = icmp ult i64 %.sroa.038.0489.i, %i.gc
  %or.cond177475.i = select i1 %i.is, i1 %i.it, i1 false
  br i1 %or.cond177475.i, label %.lr.ph478.i, label %._crit_edge479.i

bb.cc:                                            ; preds = %bb.bz
  %i.iu = add nuw i64 %.sroa.038.0489.i, 1        ; 3 uses
  %i.iv = add i64 %i.iu, %i.hp                    ; 3 uses
  %i.iw = icmp ult i64 %i.iv, %i.gn
  br i1 %i.iw, label %bb.cd, label %.split446.us.invoke.i

bb.cd:                                            ; preds = %bb.cc
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.if
  %i.iy = load i8, ptr %i.ix, align 1, !noalias !16646, !noundef !28
  %i.iz = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.iv
  %i.ja = load i8, ptr %i.iz, align 1, !noalias !16646, !noundef !28
  %.not164.i = icmp ult i8 %i.iy, %i.ja
  br i1 %.not164.i, label %.preheader51.i, label %.preheader56.i

.preheader56.i:                                   ; preds = %bb.cd
  %umax.i86 = tail call i64 @llvm.umax.i64(i64 %.sroa.09.0490.i, i64 %i.gd) ; 3 uses
  %exitcond.not.i1801.not = icmp ult i64 %.sroa.09.0490.i, %i.gd
  br i1 %exitcond.not.i1801.not, label %.lr.ph1803, label %._crit_edge1804

.preheader51.i:                                   ; preds = %bb.cd
  %i.jb = icmp ult i64 %.sroa.038.0489.i, %i.gc
  br i1 %i.jb, label %.lr.ph470.i, label %._crit_edge.i

.lr.ph470.i:                                      ; preds = %.preheader51.i
  %i.jc = add i64 %.pre-phi694.i, 1
  %i.jd = add i64 %i.hp, 1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cq, %.lr.ph470.i
  %.sroa.038.1469.i = phi i64 [ %.sroa.038.0489.i, %.lr.ph470.i ], [ %i.ki, %bb.cq ] ; 9 uses
  %i.je = and i64 %.sroa.038.1469.i, 1023
  %i.jf = icmp eq i64 %i.je, 0
  %or.cond173.i = and i1 %.sroa.05.0.not491.i, %i.jf
  br i1 %or.cond173.i, label %bb.cg, label %bb.ci

._crit_edge.i:                                    ; preds = %bb.cq, %bb.cp, %bb.cn, %.preheader51.i
  %.sroa.038.1.lcssa.i = phi i64 [ %.sroa.038.0489.i, %.preheader51.i ], [ %i.gc, %bb.cq ], [ %.sroa.038.1469.i, %bb.cp ], [ %.sroa.038.1469.i, %bb.cn ] ; 3 uses
  %i.jg = sub i64 %.sroa.038.1.lcssa.i, %.sroa.038.0489.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.jh = load i64, ptr %i.gu, align 8, !alias.scope !16650, !noalias !16646, !noundef !28 ; 3 uses
  %i.ji = load i64, ptr %i.gt, align 8, !range !43, !alias.scope !16650, !noalias !16646, !noundef !28
  %i.jj = icmp eq i64 %i.jh, %i.ji
  br i1 %i.jj, label %bb.cf, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i

bb.cf:                                            ; preds = %._crit_edge.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gt) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16646

bb.cg:                                            ; preds = %bb.ce
  %i.jk = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ch unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16646

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.jk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.ce
  %i.jl = add i64 %.sroa.038.1469.i, %invariant.op.i85 ; 2 uses
  %i.jm = icmp ult i64 %i.jl, %i.az
  br i1 %i.jm, label %bb.cj, label %.invoke.i

bb.cj:                                            ; preds = %bb.ci
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.jl
  %.val208.i = load i64, ptr %i.hy, align 8, !noalias !16646, !noundef !28
  %.val209.i = load i64, ptr %i.jn, align 8, !noalias !16646, !noundef !28
  %i.jo = icmp eq i64 %.val208.i, %.val209.i
  br i1 %i.jo, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.jp = add i64 %.sroa.038.1469.i, %i.hp        ; 3 uses
  %i.jq = icmp ult i64 %i.jp, %i.gn
  br i1 %i.jq, label %bb.cm, label %.split443.us.invoke.i

bb.cl:                                            ; preds = %bb.cn, %bb.cj
  %i.jr = add i64 %.sroa.038.1469.i, %.pre-phi694.i ; 2 uses
  %i.js = icmp ult i64 %i.jr, %i.gn
  br i1 %i.js, label %bb.co, label %.split443.us.invoke.i

bb.cm:                                            ; preds = %bb.ck
  %i.jt = add i64 %i.jc, %.sroa.038.1469.i        ; 3 uses
  %i.ju = icmp ult i64 %i.jt, %i.gn
  br i1 %i.ju, label %bb.cn, label %.split446.us.invoke.i

bb.cn:                                            ; preds = %bb.cm
  %i.jv = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.jp
  %i.jw = load i8, ptr %i.jv, align 1, !noalias !16646, !noundef !28
  %i.jx = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.jt
  %i.jy = load i8, ptr %i.jx, align 1, !noalias !16646, !noundef !28
  %i.jz = add i8 %i.jy, 1
  %i.ka = icmp eq i8 %i.jw, %i.jz
  br i1 %i.ka, label %._crit_edge.i, label %bb.cl

bb.co:                                            ; preds = %bb.cl
  %i.kb = add i64 %i.jd, %.sroa.038.1469.i        ; 2 uses
  %i.kc = icmp ult i64 %i.kb, %i.gn
  br i1 %i.kc, label %bb.cp, label %.split446.us.invoke.i

bb.cp:                                            ; preds = %bb.co
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.jr
  %i.ke = load i8, ptr %i.kd, align 1, !noalias !16646, !noundef !28
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.kb
  %i.kg = load i8, ptr %i.kf, align 1, !noalias !16646, !noundef !28
  %i.kh = icmp ult i8 %i.ke, %i.kg
  br i1 %i.kh, label %bb.cq, label %._crit_edge.i

bb.cq:                                            ; preds = %bb.cp
  %i.ki = add nuw i64 %.sroa.038.1469.i, 1        ; 2 uses
  %i.kj = icmp ult i64 %i.ki, %i.gc
  br i1 %i.kj, label %bb.ce, label %._crit_edge.i

bb.cr:                                            ; preds = %bb.dc
  %exitcond.not.i = icmp eq i64 %.pre-phi696.i, %umax.i86
  br i1 %exitcond.not.i, label %._crit_edge1804, label %.lr.ph1803

.lr.ph1803:                                       ; preds = %.preheader56.i, %bb.cr
  %.sroa.09.1.i1802 = phi i64 [ %.pre-phi696.i, %bb.cr ], [ %.sroa.09.0490.i, %.preheader56.i ] ; 6 uses
  br i1 %or.cond170.i, label %bb.ct, label %bb.cv

._crit_edge1804:                                  ; preds = %bb.cr, %bb.da, %bb.dc, %.preheader56.i
  %.sroa.09.1.lcssa.i = phi i64 [ %umax.i86, %.preheader56.i ], [ %umax.i86, %bb.cr ], [ %.sroa.09.1.i1802, %bb.da ], [ %.sroa.09.1.i1802, %bb.dc ] ; 3 uses
  %i.kk = sub nuw i64 %.sroa.09.1.lcssa.i, %.sroa.09.0490.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.kl = load i64, ptr %i.gu, align 8, !alias.scope !16651, !noalias !16646, !noundef !28 ; 3 uses
  %i.km = load i64, ptr %i.gt, align 8, !range !43, !alias.scope !16651, !noalias !16646, !noundef !28
  %i.kn = icmp eq i64 %i.kl, %i.km
  br i1 %i.kn, label %bb.cs, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i

bb.cs:                                            ; preds = %._crit_edge1804
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gt) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16646

bb.ct:                                            ; preds = %.lr.ph1803
  %i.ko = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cu unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16646

bb.cu:                                            ; preds = %bb.ct
  br i1 %i.ko, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i.thread, label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.lr.ph1803
  %i.kp = mul i64 %.sroa.09.1.i1802, %i.gl        ; 2 uses
  %i.kq = add i64 %.sroa.09.1.i1802, %invariant.op467.i ; 2 uses
  %i.kr = icmp ult i64 %i.kq, %i.bc
  br i1 %i.kr, label %bb.cw, label %11

11:                                               ; preds = %bb.cv
  %12 = add i64 %.sroa.09.0490.i, %invariant.op467.i
  %umax687.le.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %12)
  br label %.invoke.i

bb.cw:                                            ; preds = %bb.cv
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.kq
  %.val206.i = load i64, ptr %i.ks, align 8, !noalias !16646, !noundef !28
  %.val207.i = load i64, ptr %i.ib, align 8, !noalias !16646, !noundef !28
  %i.kt = icmp eq i64 %.val206.i, %.val207.i
  br i1 %i.kt, label %bb.cx, label %._crit_edge691.i

._crit_edge691.i:                                 ; preds = %bb.cw
  %.pre695.i = add i64 %.sroa.09.1.i1802, 1       ; 2 uses
  %.pre697.i = mul i64 %.pre695.i, %i.gl
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.ku = add i64 %i.kp, %.sroa.038.0489.i        ; 3 uses
  %i.kv = icmp ult i64 %i.ku, %i.gn
  br i1 %i.kv, label %bb.cz, label %.split443.us.invoke.i

bb.cy:                                            ; preds = %bb.da, %._crit_edge691.i
  %.pre-phi698.i.a = phi i64 [ %.pre697.i, %._crit_edge691.i ], [ %i.kz, %bb.da ]
  %.pre-phi696.i = phi i64 [ %.pre695.i, %._crit_edge691.i ], [ %i.ky, %bb.da ] ; 2 uses
  %i.kw = add i64 %.pre-phi698.i.a, %.sroa.038.0489.i ; 3 uses
  %i.kx = icmp ult i64 %i.kw, %i.gn
  br i1 %i.kx, label %bb.db, label %.split443.us.invoke.i

bb.cz:                                            ; preds = %bb.cx
  %i.ky = add i64 %.sroa.09.1.i1802, 1            ; 2 uses
  %i.kz = mul i64 %i.ky, %i.gl                    ; 2 uses
  %i.la = add i64 %i.kz, %i.iu                    ; 3 uses
  %i.lb = icmp ult i64 %i.la, %i.gn
  br i1 %i.lb, label %bb.da, label %.split446.us.invoke.i

bb.da:                                            ; preds = %bb.cz
  %i.lc = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.ku
  %i.ld = load i8, ptr %i.lc, align 1, !noalias !16646, !noundef !28
  %i.le = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.la
  %i.lf = load i8, ptr %i.le, align 1, !noalias !16646, !noundef !28
  %i.lg = add i8 %i.lf, 1
  %i.lh = icmp eq i8 %i.ld, %i.lg
  br i1 %i.lh, label %._crit_edge1804, label %bb.cy

bb.db:                                            ; preds = %bb.cy
  %i.li = add i64 %i.kp, %i.iu                    ; 3 uses
  %i.lj = icmp ult i64 %i.li, %i.gn
  br i1 %i.lj, label %bb.dc, label %.split446.us.invoke.i

bb.dc:                                            ; preds = %bb.db
  %i.lk = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.kw
  %i.ll = load i8, ptr %i.lk, align 1, !noalias !16646, !noundef !28
  %i.lm = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.li
  %i.ln = load i8, ptr %i.lm, align 1, !noalias !16646, !noundef !28
  %.not167.i = icmp ult i8 %i.ll, %i.ln
  br i1 %.not167.i, label %._crit_edge1804, label %bb.cr

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.dd, %._crit_edge479.i, %bb.cs, %._crit_edge1804, %bb.cf, %._crit_edge.i
  %.sink959.i = phi i64 [ %i.jh, %._crit_edge.i ], [ %i.lu, %._crit_edge479.i ], [ %i.lu, %bb.dd ], [ %i.jh, %bb.cf ], [ %i.kl, %bb.cs ], [ %i.kl, %._crit_edge1804 ] ; 3 uses
  %.sink956.i = phi i64 [ 1, %._crit_edge.i ], [ 0, %._crit_edge479.i ], [ 0, %bb.dd ], [ 1, %bb.cf ], [ 2, %bb.cs ], [ 2, %._crit_edge1804 ]
  %.sink953.i = phi i64 [ %i.jg, %._crit_edge.i ], [ %i.hr, %._crit_edge479.i ], [ %i.hr, %bb.dd ], [ %i.jg, %bb.cf ], [ %i.hr, %bb.cs ], [ %i.hr, %._crit_edge1804 ]
  %.sink.i = phi i64 [ %i.hr, %._crit_edge.i ], [ %i.lt, %._crit_edge479.i ], [ %i.lt, %bb.dd ], [ %i.hr, %bb.cf ], [ %i.kk, %bb.cs ], [ %i.kk, %._crit_edge1804 ]
  %.sroa.038.3.i = phi i64 [ %.sroa.038.1.lcssa.i, %._crit_edge.i ], [ %.sroa.038.4.lcssa.i, %._crit_edge479.i ], [ %.sroa.038.4.lcssa.i, %bb.dd ], [ %.sroa.038.1.lcssa.i, %bb.cf ], [ %.sroa.038.0489.i, %bb.cs ], [ %.sroa.038.0489.i, %._crit_edge1804 ] ; 5 uses
  %.sroa.09.3.i = phi i64 [ %.sroa.09.0490.i, %._crit_edge.i ], [ %.sroa.09.4.lcssa.i, %._crit_edge479.i ], [ %.sroa.09.4.lcssa.i, %bb.dd ], [ %.sroa.09.0490.i, %bb.cf ], [ %.sroa.09.1.lcssa.i, %bb.cs ], [ %.sroa.09.1.lcssa.i, %._crit_edge1804 ] ; 5 uses
  %i.lo = load ptr, ptr %i.gv, align 8, !noalias !16646, !nonnull !28, !noundef !28
  %i.lp = getelementptr inbounds nuw [40 x i8], ptr %i.lo, i64 %.sink959.i ; 4 uses
  store i64 %.sink956.i, ptr %i.lp, align 8, !noalias !16646
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store i64 %i.hq, ptr %.sroa.439.0..sroa_idx.i, align 8, !noalias !16646
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store i64 %.sink953.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !noalias !16646
  %.sroa.641.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  store i64 %.sink.i, ptr %.sroa.641.0..sroa_idx.i, align 8, !noalias !16646
  %i.lq = add i64 %.sink959.i, 1                  ; 4 uses
  store i64 %i.lq, ptr %i.gu, align 8, !noalias !16646
  %i.lr = icmp ult i64 %.sroa.09.3.i, %i.gd       ; 3 uses
  %i.ls = icmp ult i64 %.sroa.038.3.i, %i.gc      ; 2 uses
  %or.cond.i87 = select i1 %i.lr, i1 %i.ls, i1 false
  br i1 %or.cond.i87, label %bb.bn, label %._crit_edge493.i

._crit_edge479.i:                                 ; preds = %bb.dn, %bb.dm, %bb.dj, %.preheader.i
  %.sroa.038.4.lcssa.i = phi i64 [ %.sroa.038.0489.i, %.preheader.i ], [ %i.mm, %bb.dn ], [ %.sroa.038.4476.i, %bb.dj ], [ %.sroa.038.4476.i, %bb.dm ] ; 3 uses
  %.sroa.09.4.lcssa.i = phi i64 [ %.sroa.09.0490.i, %.preheader.i ], [ %i.mk, %bb.dn ], [ %.sroa.09.4477.i, %bb.dj ], [ %.sroa.09.4477.i, %bb.dm ] ; 2 uses
  %i.lt = sub nuw i64 %.sroa.038.4.lcssa.i, %.sroa.038.0489.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.lu = load i64, ptr %i.gu, align 8, !alias.scope !16652, !noalias !16646, !noundef !28 ; 3 uses
  %i.lv = load i64, ptr %i.gt, align 8, !range !43, !alias.scope !16652, !noalias !16646, !noundef !28
  %i.lw = icmp eq i64 %i.lu, %i.lv
  br i1 %i.lw, label %bb.dd, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i

bb.dd:                                            ; preds = %._crit_edge479.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gt) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16646

.lr.ph478.i:                                      ; preds = %.preheader.i, %bb.dn
  %.sroa.09.4477.i = phi i64 [ %i.mk, %bb.dn ], [ %.sroa.09.0490.i, %.preheader.i ] ; 5 uses
  %.sroa.038.4476.i = phi i64 [ %i.mm, %bb.dn ], [ %.sroa.038.0489.i, %.preheader.i ] ; 6 uses
  %i.lx = and i64 %.sroa.038.4476.i, 1023
  %i.ly = icmp eq i64 %i.lx, 0
  %or.cond180.i = select i1 %.sroa.05.0.not491.i, i1 %i.ly, i1 false
  br i1 %or.cond180.i, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dh, %.lr.ph478.i
  %i.lz = mul i64 %.sroa.09.4477.i, %i.gl
  %i.ma = add i64 %.sroa.09.4477.i, %invariant.op467.i ; 2 uses
  %i.mb = icmp ult i64 %i.ma, %i.bc
  br i1 %i.mb, label %bb.di, label %bb.df

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257) #74
          to label %.noexc189.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16646

.noexc189.i:                                      ; preds = %bb.df
  unreachable

bb.dg:                                            ; preds = %.lr.ph478.i
  %i.mc = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dh unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16646

bb.dh:                                            ; preds = %bb.dg
  br i1 %i.mc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i.thread, label %bb.de

bb.di:                                            ; preds = %bb.de
  %i.md = add i64 %.sroa.038.4476.i, %invariant.op.i85 ; 2 uses
  %i.me = icmp ult i64 %i.md, %i.az
  br i1 %i.me, label %bb.dj, label %.invoke.i

bb.dj:                                            ; preds = %bb.di
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ma
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.md
  %.val204.i = load i64, ptr %i.mf, align 8, !noalias !16646, !noundef !28
  %.val205.i = load i64, ptr %i.mg, align 8, !noalias !16646, !noundef !28
  %i.mh = icmp eq i64 %.val204.i, %.val205.i
  br i1 %i.mh, label %bb.dk, label %._crit_edge479.i

bb.dk:                                            ; preds = %bb.dj
  %i.mi = add i64 %i.lz, %.sroa.038.4476.i        ; 3 uses
  %i.mj = icmp ult i64 %i.mi, %i.gn
  br i1 %i.mj, label %bb.dl, label %.split443.us.invoke.i

bb.dl:                                            ; preds = %bb.dk
  %i.mk = add nuw i64 %.sroa.09.4477.i, 1         ; 4 uses
  %i.ml = mul i64 %i.mk, %i.gl
  %i.mm = add nuw i64 %.sroa.038.4476.i, 1        ; 4 uses
  %i.mn = add i64 %i.mm, %i.ml                    ; 3 uses
  %i.mo = icmp ult i64 %i.mn, %i.gn
  br i1 %i.mo, label %bb.dm, label %.split446.us.invoke.i

bb.dm:                                            ; preds = %bb.dl
  %i.mp = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.mi
  %i.mq = load i8, ptr %i.mp, align 1, !noalias !16646, !noundef !28
  %i.mr = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.mn
  %i.ms = load i8, ptr %i.mr, align 1, !noalias !16646, !noundef !28
  %i.mt = add i8 %i.ms, 1
  %i.mu = icmp eq i8 %i.mq, %i.mt
  br i1 %i.mu, label %bb.dn, label %._crit_edge479.i

bb.dn:                                            ; preds = %bb.dm
  %i.mv = icmp ult i64 %i.mk, %i.gd
  %i.mw = icmp ult i64 %i.mm, %i.gc
  %or.cond177.i = and i1 %i.mv, %i.mw
  br i1 %or.cond177.i, label %.lr.ph478.i, label %._crit_edge479.i

.loopexit64.i:                                    ; preds = %bb.do, %bb.dq, %bb.bv, %bb.eb
  br i1 %i.go, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i.thread

bb.do:                                            ; preds = %.lr.ph466.split.i
  br i1 %i.gx, label %.loopexit64.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.do
  %i.mx = mul i64 %i.gw, %i.gl                    ; 2 uses
  %i.my = mul i64 %.sroa.0102.0465.i, %i.gl       ; 2 uses
  %.reass.i88 = add i64 %i.gw, %invariant.op467.i ; 4 uses
  %i.mz = icmp ult i64 %.reass.i88, %i.bc
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.reass.i88
  %.fr.i = freeze i1 %i.mz
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.dz
  %.sroa.0105.0433.us.i = phi i64 [ %i.nb, %bb.dz ], [ %i.gc, %.lr.ph.i ] ; 3 uses
  %i.nb = add i64 %.sroa.0105.0433.us.i, -1       ; 6 uses
  %i.nc = and i64 %i.nb, 1023
  %i.nd = icmp eq i64 %i.nc, 0
  br i1 %i.nd, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %.lr.ph.split.us.i
  %i.ne = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16646

bb.dq:                                            ; preds = %bb.dp
  br i1 %i.ne, label %.loopexit64.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %.lr.ph.split.us.i
  %.reass.us.i = add i64 %i.nb, %invariant.op.i85 ; 3 uses
  %i.nf = icmp ult i64 %.reass.us.i, %i.az
  br i1 %i.nf, label %bb.ds, label %.invoke.i

bb.ds:                                            ; preds = %bb.dr
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.reass.us.i
  %.val.us.i = load i64, ptr %i.na, align 8, !noalias !16646, !noundef !28
  %.val203.us.i = load i64, ptr %i.ng, align 8, !noalias !16646, !noundef !28
  %i.nh = icmp eq i64 %.val.us.i, %.val203.us.i
  br i1 %i.nh, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ni = add i64 %i.nb, %i.my                    ; 3 uses
  %i.nj = icmp ult i64 %i.ni, %i.gn
  br i1 %i.nj, label %bb.du, label %.split443.us.invoke.i

bb.du:                                            ; preds = %bb.dt
  %i.nk = add i64 %.sroa.0105.0433.us.i, %i.mx    ; 3 uses
  %i.nl = icmp ult i64 %i.nk, %i.gn
  br i1 %i.nl, label %bb.dv, label %.split446.us.invoke.i

bb.dv:                                            ; preds = %bb.du
  %i.nm = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.ni
  %i.nn = load i8, ptr %i.nm, align 1, !noalias !16646, !noundef !28
  %i.no = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.nk
  %i.np = load i8, ptr %i.no, align 1, !noalias !16646, !noundef !28
  %..i.us.i = tail call noundef i8 @llvm.umax.i8(i8 %i.np, i8 %i.nn)
  br label %bb.dy

bb.dw:                                            ; preds = %bb.ds
  %i.nq = add i64 %.sroa.0105.0433.us.i, %i.my    ; 3 uses
  %i.nr = icmp ult i64 %i.nq, %i.gn
  br i1 %i.nr, label %bb.dx, label %.split443.us.invoke.i

bb.dx:                                            ; preds = %bb.dw
  %i.ns = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.nq
  %i.nt = load i8, ptr %i.ns, align 1, !noalias !16646, !noundef !28
  %i.nu = add i8 %i.nt, 1
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dv
  %.sroa.04.0.us.i = phi i8 [ %i.nu, %bb.dx ], [ %..i.us.i, %bb.dv ]
  %i.nv = add i64 %i.nb, %i.mx                    ; 3 uses
  %i.nw = icmp ult i64 %i.nv, %i.gn
  br i1 %i.nw, label %bb.dz, label %.split446.us.invoke.i

bb.dz:                                            ; preds = %bb.dy
  %i.nx = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.nv
  store i8 %.sroa.04.0.us.i, ptr %i.nx, align 1, !noalias !16646
  %.not168.us.i = icmp eq i64 %i.nb, 0
  br i1 %.not168.us.i, label %..loopexit68_crit_edge.split.us.i, label %.lr.ph.split.us.i

..loopexit68_crit_edge.split.us.i:                ; preds = %bb.dz
  %.not.i89 = icmp eq i64 %i.gw, 0
  br i1 %.not.i89, label %.lr.ph492.i, label %.lr.ph466.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ny = and i64 %i.gc, 1023
  %i.nz = icmp eq i64 %i.ny, 1
  br i1 %i.nz, label %bb.ea, label %.invoke.i

bb.ea:                                            ; preds = %.lr.ph.split.i
  %i.oa = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.eb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16646

bb.eb:                                            ; preds = %bb.ea
  br i1 %i.oa, label %.loopexit64.i, label %.invoke.i

.split443.us.invoke.i:                            ; preds = %bb.dw, %bb.dt, %bb.bz, %bb.by, %bb.cy, %bb.cx, %bb.ck, %bb.cl, %bb.dk
  %i.ob = phi i64 [ %i.id, %bb.by ], [ %i.kw, %bb.cy ], [ %i.mi, %bb.dk ], [ %i.jp, %bb.ck ], [ %i.gn, %bb.cl ], [ %i.ku, %bb.cx ], [ %i.if, %bb.bz ], [ %i.ni, %bb.dt ], [ %i.nq, %bb.dw ]
  %i.oc = phi ptr [ @243, %bb.by ], [ @255, %bb.cy ], [ @259, %bb.dk ], [ @248, %bb.ck ], [ @250, %bb.cl ], [ @253, %bb.cx ], [ @245, %bb.bz ], [ @263, %bb.dt ], [ @265, %bb.dw ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ob, i64 noundef %i.gn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oc) #70
          to label %.split443.us.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16646

.split443.us.cont.i:                              ; preds = %.split443.us.invoke.i
  unreachable

.split446.us.invoke.i:                            ; preds = %bb.dy, %bb.du, %bb.cc, %bb.ca, %bb.db, %bb.cz, %bb.cm, %bb.co, %bb.dl
  %i.od = phi i64 [ %i.ik, %bb.ca ], [ %i.li, %bb.db ], [ %i.mn, %bb.dl ], [ %i.jt, %bb.cm ], [ %i.gn, %bb.co ], [ %i.la, %bb.cz ], [ %i.iv, %bb.cc ], [ %i.nk, %bb.du ], [ %i.nv, %bb.dy ]
  %i.oe = phi ptr [ @244, %bb.ca ], [ @256, %bb.db ], [ @260, %bb.dl ], [ @249, %bb.cm ], [ @251, %bb.co ], [ @254, %bb.cz ], [ @246, %bb.cc ], [ @264, %bb.du ], [ @266, %bb.dy ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.od, i64 noundef %i.gn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oe) #70
          to label %.split446.us.cont.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16646

.split446.us.cont.i:                              ; preds = %.split446.us.invoke.i
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread.i105, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi44.i, %.thread.i ], [ %lpad.loopexit.split-lp1870, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1946, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.phi44.i106, %.thread.i105 ]
  resume { ptr, i32 } %common.resume.op

bb.ec:                                            ; preds = %bb.bg
  br i1 %i.gk, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.of = add i64 %i.gd, 1                        ; 11 uses
  %i.og = add i64 %i.gc, 1
  %i.oh = mul i64 %i.og, %i.of                    ; 29 uses
  %.not.i.i.i92 = icmp slt i64 %i.oh, 0
  br i1 %.not.i.i.i92, label %bb.eh, label %bb.ee, !prof !42

bb.ee:                                            ; preds = %bb.ed
  %i.oi = icmp eq i64 %i.oh, 0                    ; 3 uses
  br i1 %i.oi, label %.lr.ph481.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !16653
  %i.oj = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.oh, i64 noundef range(i64 1, 9) 1) #69, !noalias !16653 ; 2 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ol = ptrtoint ptr %i.oj to i64
  br label %.lr.ph481.i

bb.eh:                                            ; preds = %bb.ef, %bb.ed
  %.sroa.4.0.ph.i.i174 = phi i64 [ 1, %bb.ef ], [ 0, %bb.ed ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i174, i64 %i.oh) #70, !noalias !16654
  unreachable

.lr.ph481.i:                                      ; preds = %bb.ee, %bb.eg
  %.sroa.10.0.i.i94 = phi i64 [ %i.ol, %bb.eg ], [ 1, %bb.ee ]
  %i.om = inttoptr i64 %.sroa.10.0.i.i94 to ptr   ; 21 uses
  %invariant.op.i109 = sub i64 %.sroa.0211.0, %i.bd ; 4 uses
  %invariant.op482.i = sub i64 %.sroa.0.0, %i.ba  ; 4 uses
  br label %.lr.ph481.split.i

.lr.ph508.i:                                      ; preds = %..loopexit68_crit_edge.split.us.i172
  %i.on = getelementptr inbounds nuw i8, ptr %.val51, i64 120 ; 10 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.val51, i64 136 ; 6 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.val51, i64 128 ; 3 uses
  br label %bb.ei

.lr.ph481.split.i:                                ; preds = %.lr.ph481.i, %..loopexit68_crit_edge.split.us.i172
  %.sroa.0102.0480.i = phi i64 [ %i.oq, %..loopexit68_crit_edge.split.us.i172 ], [ %i.gc, %.lr.ph481.i ] ; 2 uses
  %i.oq = add i64 %.sroa.0102.0480.i, -1          ; 4 uses
  %i.or = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16655

._crit_edge509.i:                                 ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140
  br i1 %i.tl, label %bb.ej, label %bb.el

bb.ei:                                            ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140, %.lr.ph508.i
  %.sroa.05.0.not507.i = phi i1 [ true, %.lr.ph508.i ], [ false, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140 ] ; 3 uses
  %.sroa.09.0506.i = phi i64 [ 0, %.lr.ph508.i ], [ %.sroa.09.3.i142, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140 ] ; 15 uses
  %.sroa.039.0505.i = phi i64 [ 0, %.lr.ph508.i ], [ %.sroa.039.3.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140 ] ; 17 uses
  %i.os = and i64 %.sroa.039.0505.i, 1023
  %i.ot = icmp eq i64 %i.os, 0
  %or.cond170.i120 = select i1 %.sroa.05.0.not507.i, i1 %i.ot, i1 false ; 2 uses
  br i1 %or.cond170.i120, label %bb.ep, label %bb.eo

bb.ej:                                            ; preds = %._crit_edge509.i
  %i.ou = add i64 %.sroa.09.3.i142, %.sroa.0.0    ; 2 uses
  %i.ov = sub nuw i64 %i.gc, %.sroa.09.3.i142
  %i.ow = add i64 %.sroa.039.3.i, %.sroa.0211.0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.ox = load i64, ptr %i.on, align 8, !range !43, !alias.scope !16656, !noalias !16655, !noundef !28
  %i.oy = icmp eq i64 %i.tk, %i.ox
  br i1 %i.oy, label %bb.ek, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116

bb.ek:                                            ; preds = %bb.ej
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.on) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16655

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116: ; preds = %bb.ek, %bb.ej
  %i.oz = load ptr, ptr %i.op, align 8, !alias.scope !16656, !noalias !16655, !nonnull !28, !noundef !28
  %i.pa = getelementptr inbounds nuw [40 x i8], ptr %i.oz, i64 %i.tk ; 4 uses
  store i64 1, ptr %i.pa, align 8, !noalias !16655
  %.sroa.424.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  store i64 %i.ou, ptr %.sroa.424.0..sroa_idx.i117, align 8, !noalias !16655
  %.sroa.525.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  store i64 %i.ov, ptr %.sroa.525.0..sroa_idx.i118, align 8, !noalias !16655
  %.sroa.626.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.pa, i64 24
  store i64 %i.ow, ptr %.sroa.626.0..sroa_idx.i119, align 8, !noalias !16655
  %i.pb = add i64 %.sink971.i, 2                  ; 2 uses
  store i64 %i.pb, ptr %i.oo, align 8, !alias.scope !16656, !noalias !16655
  br i1 %i.tm, label %bb.em, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit

bb.el:                                            ; preds = %._crit_edge509.i
  br i1 %i.tm, label %._crit_edge1051, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit

._crit_edge1051:                                  ; preds = %bb.el
  %.pre1057 = add i64 %.sroa.09.3.i142, %.sroa.0.0
  %.pre1059 = add i64 %.sroa.039.3.i, %.sroa.0211.0
  br label %bb.em

.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fo, %bb.gb, %bb.fb, %bb.fn, %bb.fa, %.split446.us.invoke.i128, %bb.ga
  %lpad.loopexit.split-lp1919 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i105

.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gk, %bb.fy, %bb.ep, %.lr.ph481.split.i, %.split443.us.invoke.i126, %bb.gv, %.invoke.i121, %bb.en, %bb.ek
  %lpad.loopexit.split-lp1946 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.oi, label %common.resume, label %.thread.i105

.thread.i105:                                     ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi44.i106 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1946, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1919, %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.om, i64 noundef %i.oh, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !16657
  br label %common.resume

bb.em:                                            ; preds = %._crit_edge1051, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116
  %.pre-phi1060 = phi i64 [ %.pre1059, %._crit_edge1051 ], [ %i.ow, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116 ]
  %.pre-phi1058 = phi i64 [ %.pre1057, %._crit_edge1051 ], [ %i.ou, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116 ]
  %i.pc = phi i64 [ %i.tk, %._crit_edge1051 ], [ %i.pb, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116 ] ; 3 uses
  %i.pd = sub nuw i64 %i.gd, %.sroa.039.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.pe = load i64, ptr %i.on, align 8, !range !43, !alias.scope !16658, !noalias !16655, !noundef !28
  %i.pf = icmp eq i64 %i.pc, %i.pe
  br i1 %i.pf, label %bb.en, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i99

bb.en:                                            ; preds = %bb.em
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.on) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16655

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i99: ; preds = %bb.en, %bb.em
  %i.pg = load ptr, ptr %i.op, align 8, !alias.scope !16658, !noalias !16655, !nonnull !28, !noundef !28
  %i.ph = getelementptr inbounds nuw [40 x i8], ptr %i.pg, i64 %i.pc ; 4 uses
  store i64 2, ptr %i.ph, align 8, !noalias !16655
  %.sroa.434.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  store i64 %.pre-phi1058, ptr %.sroa.434.0..sroa_idx.i100, align 8, !noalias !16655
  %.sroa.535.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  store i64 %.pre-phi1060, ptr %.sroa.535.0..sroa_idx.i101, align 8, !noalias !16655
  %.sroa.636.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  store i64 %i.pd, ptr %.sroa.636.0..sroa_idx.i102, align 8, !noalias !16655
  %i.pi = add i64 %i.pc, 1
  store i64 %i.pi, ptr %i.oo, align 8, !alias.scope !16658, !noalias !16655
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit

bb.eo:                                            ; preds = %bb.eq, %bb.ei
  %i.pj = mul i64 %.sroa.09.0506.i, %i.of         ; 4 uses
  %i.pk = add i64 %.sroa.09.0506.i, %.sroa.0.0    ; 2 uses
  %i.pl = add i64 %.sroa.039.0505.i, %.sroa.0211.0 ; 7 uses
  %i.pm = sub i64 %i.pl, %i.bd                    ; 3 uses
  %i.pn = icmp ult i64 %i.pm, %i.bc
  br i1 %i.pn, label %bb.er, label %.invoke.i121

.invoke.i121:                                     ; preds = %bb.gm, %bb.er, %bb.eo, %bb.fd, %bb.gd, %bb.gy, %bb.gx, %13
  %i.po = phi i64 [ %.reass483.i, %bb.gy ], [ %.reass.i163, %bb.gx ], [ %i.bc, %bb.fd ], [ %umax703.le.i, %13 ], [ %i.pm, %bb.eo ], [ %i.az, %bb.gd ], [ %i.pt, %bb.er ], [ %.reass.us.i166, %bb.gm ]
  %i.pp = phi i64 [ %i.az, %bb.gy ], [ %i.bc, %bb.gx ], [ %i.bc, %bb.fd ], [ %i.az, %13 ], [ %i.bc, %bb.eo ], [ %i.az, %bb.gd ], [ %i.az, %bb.er ], [ %i.bc, %bb.gm ]
  %i.pq = phi ptr [ @288, %bb.gy ], [ @287, %bb.gx ], [ @273, %bb.fd ], [ @278, %13 ], [ @267, %bb.eo ], [ @284, %bb.gd ], [ @268, %bb.er ], [ @287, %bb.gm ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.po, i64 noundef %i.pp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pq) #74
          to label %.cont.i122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16655

.cont.i122:                                       ; preds = %.invoke.i121
  unreachable

bb.ep:                                            ; preds = %bb.ei
  %i.pr = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.eq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16655

bb.eq:                                            ; preds = %bb.ep
  br i1 %i.pr, label %.loopexit64.i159, label %bb.eo

bb.er:                                            ; preds = %bb.eo
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.pm ; 2 uses
  %i.pt = sub i64 %i.pk, %i.ba                    ; 3 uses
  %i.pu = icmp ult i64 %i.pt, %i.az
  br i1 %i.pu, label %bb.es, label %.invoke.i121

bb.es:                                            ; preds = %bb.er
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.pt ; 2 uses
  %.val210.i123 = load i64, ptr %i.ps, align 8, !noalias !16655, !noundef !28
  %.val211.i124 = load i64, ptr %i.pv, align 8, !noalias !16655, !noundef !28
  %i.pw = icmp eq i64 %.val210.i123, %.val211.i124
  br i1 %i.pw, label %bb.et, label %._crit_edge708.i

._crit_edge708.i:                                 ; preds = %bb.es
  %.pre.i125 = add nuw i64 %.sroa.09.0506.i, 1
  %.pre709.i = mul i64 %.pre.i125, %i.of
  br label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.px = add i64 %i.pj, %.sroa.039.0505.i        ; 3 uses
  %i.py = icmp ult i64 %i.px, %i.oh
  br i1 %i.py, label %bb.ev, label %.split443.us.invoke.i126

bb.eu:                                            ; preds = %bb.ew, %._crit_edge708.i
  %.pre-phi710.i = phi i64 [ %.pre709.i, %._crit_edge708.i ], [ %i.qc, %bb.ew ] ; 3 uses
  %i.pz = add i64 %.pre-phi710.i, %.sroa.039.0505.i ; 3 uses
  %i.qa = icmp ult i64 %i.pz, %i.oh
  br i1 %i.qa, label %bb.ex, label %.split443.us.invoke.i126

bb.ev:                                            ; preds = %bb.et
  %i.qb = add nuw i64 %.sroa.09.0506.i, 1
  %i.qc = mul i64 %i.qb, %i.of                    ; 2 uses
  %i.qd = add nuw i64 %.sroa.039.0505.i, 1
  %i.qe = add i64 %i.qd, %i.qc                    ; 3 uses
  %i.qf = icmp ult i64 %i.qe, %i.oh
  br i1 %i.qf, label %bb.ew, label %.split446.us.invoke.i128

bb.ew:                                            ; preds = %bb.ev
  %i.qg = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.px
  %i.qh = load i8, ptr %i.qg, align 1, !noalias !16655, !noundef !28
  %i.qi = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.qe
  %i.qj = load i8, ptr %i.qi, align 1, !noalias !16655, !noundef !28
  %i.qk = add i8 %i.qj, 1
  %i.ql = icmp eq i8 %i.qh, %i.qk
  br i1 %i.ql, label %.preheader.i152, label %bb.eu

.preheader.i152:                                  ; preds = %bb.ew
  %i.qm = icmp ult i64 %.sroa.09.0506.i, %i.gc
  %i.qn = icmp ult i64 %.sroa.039.0505.i, %i.gd
  %or.cond177491.i = select i1 %i.qm, i1 %i.qn, i1 false
  br i1 %or.cond177491.i, label %.lr.ph494.i, label %._crit_edge495.i

bb.ex:                                            ; preds = %bb.eu
  %i.qo = add nuw i64 %.sroa.039.0505.i, 1        ; 3 uses
  %i.qp = add i64 %i.qo, %i.pj                    ; 3 uses
  %i.qq = icmp ult i64 %i.qp, %i.oh
  br i1 %i.qq, label %bb.ey, label %.split446.us.invoke.i128

bb.ey:                                            ; preds = %bb.ex
  %i.qr = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.pz
  %i.qs = load i8, ptr %i.qr, align 1, !noalias !16655, !noundef !28
  %i.qt = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.qp
  %i.qu = load i8, ptr %i.qt, align 1, !noalias !16655, !noundef !28
  %.not164.i131 = icmp ult i8 %i.qs, %i.qu
  br i1 %.not164.i131, label %.preheader51.i147, label %.preheader56.i132

.preheader56.i132:                                ; preds = %bb.ey
  %umax.i133 = tail call i64 @llvm.umax.i64(i64 %.sroa.09.0506.i, i64 %i.gc) ; 3 uses
  %exitcond.not.i1351793.not = icmp ult i64 %.sroa.09.0506.i, %i.gc
  br i1 %exitcond.not.i1351793.not, label %.lr.ph1795, label %._crit_edge1796

.preheader51.i147:                                ; preds = %bb.ey
  %i.qv = icmp ult i64 %.sroa.039.0505.i, %i.gd
  br i1 %i.qv, label %.lr.ph486.i, label %._crit_edge.i148

.lr.ph486.i:                                      ; preds = %.preheader51.i147
  %i.qw = add i64 %.pre-phi710.i, 1
  %i.qx = add i64 %i.pj, 1
  br label %bb.ez

bb.ez:                                            ; preds = %bb.fl, %.lr.ph486.i
  %.sroa.039.1485.i = phi i64 [ %.sroa.039.0505.i, %.lr.ph486.i ], [ %i.sc, %bb.fl ] ; 9 uses
  %i.qy = and i64 %.sroa.039.1485.i, 1023
  %i.qz = icmp eq i64 %i.qy, 0
  %or.cond173.i149 = and i1 %.sroa.05.0.not507.i, %i.qz
  br i1 %or.cond173.i149, label %bb.fb, label %bb.fd

._crit_edge.i148:                                 ; preds = %bb.fl, %bb.fk, %bb.fi, %.preheader51.i147
  %.sroa.039.1.lcssa.i = phi i64 [ %.sroa.039.0505.i, %.preheader51.i147 ], [ %i.gd, %bb.fl ], [ %.sroa.039.1485.i, %bb.fk ], [ %.sroa.039.1485.i, %bb.fi ] ; 3 uses
  %i.ra = sub i64 %.sroa.039.1.lcssa.i, %.sroa.039.0505.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.rb = load i64, ptr %i.oo, align 8, !alias.scope !16659, !noalias !16655, !noundef !28 ; 3 uses
  %i.rc = load i64, ptr %i.on, align 8, !range !43, !alias.scope !16659, !noalias !16655, !noundef !28
  %i.rd = icmp eq i64 %i.rb, %i.rc
  br i1 %i.rd, label %bb.fa, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140

bb.fa:                                            ; preds = %._crit_edge.i148
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.on) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16655

bb.fb:                                            ; preds = %bb.ez
  %i.re = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fc unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16655

bb.fc:                                            ; preds = %bb.fb
  br i1 %i.re, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread337, label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.ez
  %i.rf = add i64 %.sroa.039.1485.i, %invariant.op.i109 ; 2 uses
  %i.rg = icmp ult i64 %i.rf, %i.bc
  br i1 %i.rg, label %bb.fe, label %.invoke.i121

bb.fe:                                            ; preds = %bb.fd
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.rf
  %.val208.i150 = load i64, ptr %i.rh, align 8, !noalias !16655, !noundef !28
  %.val209.i151 = load i64, ptr %i.pv, align 8, !noalias !16655, !noundef !28
  %i.ri = icmp eq i64 %.val208.i150, %.val209.i151
  br i1 %i.ri, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.rj = add i64 %.sroa.039.1485.i, %i.pj        ; 3 uses
  %i.rk = icmp ult i64 %i.rj, %i.oh
  br i1 %i.rk, label %bb.fh, label %.split443.us.invoke.i126

bb.fg:                                            ; preds = %bb.fi, %bb.fe
  %i.rl = add i64 %.sroa.039.1485.i, %.pre-phi710.i ; 2 uses
  %i.rm = icmp ult i64 %i.rl, %i.oh
  br i1 %i.rm, label %bb.fj, label %.split443.us.invoke.i126

bb.fh:                                            ; preds = %bb.ff
  %i.rn = add i64 %i.qw, %.sroa.039.1485.i        ; 3 uses
  %i.ro = icmp ult i64 %i.rn, %i.oh
  br i1 %i.ro, label %bb.fi, label %.split446.us.invoke.i128

bb.fi:                                            ; preds = %bb.fh
  %i.rp = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.rj
  %i.rq = load i8, ptr %i.rp, align 1, !noalias !16655, !noundef !28
  %i.rr = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.rn
  %i.rs = load i8, ptr %i.rr, align 1, !noalias !16655, !noundef !28
  %i.rt = add i8 %i.rs, 1
  %i.ru = icmp eq i8 %i.rq, %i.rt
  br i1 %i.ru, label %._crit_edge.i148, label %bb.fg

bb.fj:                                            ; preds = %bb.fg
  %i.rv = add i64 %i.qx, %.sroa.039.1485.i        ; 2 uses
  %i.rw = icmp ult i64 %i.rv, %i.oh
  br i1 %i.rw, label %bb.fk, label %.split446.us.invoke.i128

bb.fk:                                            ; preds = %bb.fj
  %i.rx = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.rl
  %i.ry = load i8, ptr %i.rx, align 1, !noalias !16655, !noundef !28
  %i.rz = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.rv
  %i.sa = load i8, ptr %i.rz, align 1, !noalias !16655, !noundef !28
  %i.sb = icmp ult i8 %i.ry, %i.sa
  br i1 %i.sb, label %bb.fl, label %._crit_edge.i148

bb.fl:                                            ; preds = %bb.fk
  %i.sc = add nuw i64 %.sroa.039.1485.i, 1        ; 2 uses
  %i.sd = icmp ult i64 %i.sc, %i.gd
  br i1 %i.sd, label %bb.ez, label %._crit_edge.i148

bb.fm:                                            ; preds = %bb.fx
  %exitcond.not.i135 = icmp eq i64 %.pre-phi712.i, %umax.i133
  br i1 %exitcond.not.i135, label %._crit_edge1796, label %.lr.ph1795

.lr.ph1795:                                       ; preds = %.preheader56.i132, %bb.fm
  %.sroa.09.1.i1341794 = phi i64 [ %.pre-phi712.i, %bb.fm ], [ %.sroa.09.0506.i, %.preheader56.i132 ] ; 6 uses
  br i1 %or.cond170.i120, label %bb.fo, label %bb.fq

._crit_edge1796:                                  ; preds = %bb.fm, %bb.fv, %bb.fx, %.preheader56.i132
  %.sroa.09.1.lcssa.i139 = phi i64 [ %umax.i133, %.preheader56.i132 ], [ %umax.i133, %bb.fm ], [ %.sroa.09.1.i1341794, %bb.fv ], [ %.sroa.09.1.i1341794, %bb.fx ] ; 3 uses
  %i.se = sub nuw i64 %.sroa.09.1.lcssa.i139, %.sroa.09.0506.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.sf = load i64, ptr %i.oo, align 8, !alias.scope !16660, !noalias !16655, !noundef !28 ; 3 uses
  %i.sg = load i64, ptr %i.on, align 8, !range !43, !alias.scope !16660, !noalias !16655, !noundef !28
  %i.sh = icmp eq i64 %i.sf, %i.sg
  br i1 %i.sh, label %bb.fn, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140

bb.fn:                                            ; preds = %._crit_edge1796
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.on) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16655

bb.fo:                                            ; preds = %.lr.ph1795
  %i.si = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fp unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16655

bb.fp:                                            ; preds = %bb.fo
  br i1 %i.si, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread337, label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %.lr.ph1795
  %i.sj = mul i64 %.sroa.09.1.i1341794, %i.of     ; 2 uses
  %i.sk = add i64 %.sroa.09.1.i1341794, %invariant.op482.i ; 2 uses
  %i.sl = icmp ult i64 %i.sk, %i.az
  br i1 %i.sl, label %bb.fr, label %13

13:                                               ; preds = %bb.fq
  %14 = add i64 %.sroa.09.0506.i, %invariant.op482.i
  %umax703.le.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 %14)
  br label %.invoke.i121

bb.fr:                                            ; preds = %bb.fq
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.sk
  %.val206.i136 = load i64, ptr %i.ps, align 8, !noalias !16655, !noundef !28
  %.val207.i137 = load i64, ptr %i.sm, align 8, !noalias !16655, !noundef !28
  %i.sn = icmp eq i64 %.val206.i136, %.val207.i137
  br i1 %i.sn, label %bb.fs, label %._crit_edge707.i

._crit_edge707.i:                                 ; preds = %bb.fr
  %.pre711.i = add i64 %.sroa.09.1.i1341794, 1    ; 2 uses
  %.pre713.i = mul i64 %.pre711.i, %i.of
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.so = add i64 %i.sj, %.sroa.039.0505.i        ; 3 uses
  %i.sp = icmp ult i64 %i.so, %i.oh
  br i1 %i.sp, label %bb.fu, label %.split443.us.invoke.i126

bb.ft:                                            ; preds = %bb.fv, %._crit_edge707.i
  %.pre-phi714.i.a = phi i64 [ %.pre713.i, %._crit_edge707.i ], [ %i.st, %bb.fv ]
  %.pre-phi712.i = phi i64 [ %.pre711.i, %._crit_edge707.i ], [ %i.ss, %bb.fv ] ; 2 uses
  %i.sq = add i64 %.pre-phi714.i.a, %.sroa.039.0505.i ; 3 uses
  %i.sr = icmp ult i64 %i.sq, %i.oh
  br i1 %i.sr, label %bb.fw, label %.split443.us.invoke.i126

bb.fu:                                            ; preds = %bb.fs
  %i.ss = add i64 %.sroa.09.1.i1341794, 1         ; 2 uses
  %i.st = mul i64 %i.ss, %i.of                    ; 2 uses
  %i.su = add i64 %i.st, %i.qo                    ; 3 uses
  %i.sv = icmp ult i64 %i.su, %i.oh
  br i1 %i.sv, label %bb.fv, label %.split446.us.invoke.i128

bb.fv:                                            ; preds = %bb.fu
  %i.sw = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.so
  %i.sx = load i8, ptr %i.sw, align 1, !noalias !16655, !noundef !28
  %i.sy = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.su
  %i.sz = load i8, ptr %i.sy, align 1, !noalias !16655, !noundef !28
  %i.ta = add i8 %i.sz, 1
  %i.tb = icmp eq i8 %i.sx, %i.ta
  br i1 %i.tb, label %._crit_edge1796, label %bb.ft

bb.fw:                                            ; preds = %bb.ft
  %i.tc = add i64 %i.sj, %i.qo                    ; 3 uses
  %i.td = icmp ult i64 %i.tc, %i.oh
  br i1 %i.td, label %bb.fx, label %.split446.us.invoke.i128

bb.fx:                                            ; preds = %bb.fw
  %i.te = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.sq
  %i.tf = load i8, ptr %i.te, align 1, !noalias !16655, !noundef !28
  %i.tg = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.tc
  %i.th = load i8, ptr %i.tg, align 1, !noalias !16655, !noundef !28
  %.not167.i138 = icmp ult i8 %i.tf, %i.th
  br i1 %.not167.i138, label %._crit_edge1796, label %bb.fm

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140: ; preds = %bb.fy, %._crit_edge495.i, %bb.fn, %._crit_edge1796, %bb.fa, %._crit_edge.i148
  %.sink971.i = phi i64 [ %i.to, %._crit_edge495.i ], [ %i.rb, %._crit_edge.i148 ], [ %i.to, %bb.fy ], [ %i.rb, %bb.fa ], [ %i.sf, %bb.fn ], [ %i.sf, %._crit_edge1796 ] ; 3 uses
  %.sink968.i = phi i64 [ 0, %._crit_edge495.i ], [ 2, %._crit_edge.i148 ], [ 0, %bb.fy ], [ 2, %bb.fa ], [ 1, %bb.fn ], [ 1, %._crit_edge1796 ]
  %.sink965.i = phi i64 [ %i.pl, %._crit_edge495.i ], [ %i.pl, %._crit_edge.i148 ], [ %i.pl, %bb.fy ], [ %i.pl, %bb.fa ], [ %i.se, %bb.fn ], [ %i.se, %._crit_edge1796 ]
  %.sink.i141 = phi i64 [ %i.tn, %._crit_edge495.i ], [ %i.ra, %._crit_edge.i148 ], [ %i.tn, %bb.fy ], [ %i.ra, %bb.fa ], [ %i.pl, %bb.fn ], [ %i.pl, %._crit_edge1796 ]
  %.sroa.039.3.i = phi i64 [ %.sroa.039.4.lcssa.i, %._crit_edge495.i ], [ %.sroa.039.1.lcssa.i, %._crit_edge.i148 ], [ %.sroa.039.4.lcssa.i, %bb.fy ], [ %.sroa.039.1.lcssa.i, %bb.fa ], [ %.sroa.039.0505.i, %bb.fn ], [ %.sroa.039.0505.i, %._crit_edge1796 ] ; 5 uses
  %.sroa.09.3.i142 = phi i64 [ %.sroa.09.4.lcssa.i153, %._crit_edge495.i ], [ %.sroa.09.0506.i, %._crit_edge.i148 ], [ %.sroa.09.4.lcssa.i153, %bb.fy ], [ %.sroa.09.0506.i, %bb.fa ], [ %.sroa.09.1.lcssa.i139, %bb.fn ], [ %.sroa.09.1.lcssa.i139, %._crit_edge1796 ] ; 5 uses
  %i.ti = load ptr, ptr %i.op, align 8, !noalias !16655, !nonnull !28, !noundef !28
  %i.tj = getelementptr inbounds nuw [40 x i8], ptr %i.ti, i64 %.sink971.i ; 4 uses
  store i64 %.sink968.i, ptr %i.tj, align 8, !noalias !16655
  %.sroa.439.0..sroa_idx.i143 = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  store i64 %i.pk, ptr %.sroa.439.0..sroa_idx.i143, align 8, !noalias !16655
  %.sroa.540.0..sroa_idx.i144 = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  store i64 %.sink965.i, ptr %.sroa.540.0..sroa_idx.i144, align 8, !noalias !16655
  %.sroa.641.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %i.tj, i64 24
  store i64 %.sink.i141, ptr %.sroa.641.0..sroa_idx.i145, align 8, !noalias !16655
  %i.tk = add i64 %.sink971.i, 1                  ; 4 uses
  store i64 %i.tk, ptr %i.oo, align 8, !noalias !16655
  %i.tl = icmp ult i64 %.sroa.09.3.i142, %i.gc    ; 2 uses
  %i.tm = icmp ult i64 %.sroa.039.3.i, %i.gd      ; 3 uses
  %or.cond.i146 = select i1 %i.tl, i1 %i.tm, i1 false
  br i1 %or.cond.i146, label %bb.ei, label %._crit_edge509.i

._crit_edge495.i:                                 ; preds = %bb.gi, %bb.gh, %bb.ge, %.preheader.i152
  %.sroa.039.4.lcssa.i = phi i64 [ %.sroa.039.0505.i, %.preheader.i152 ], [ %i.ug, %bb.gi ], [ %.sroa.039.4492.i, %bb.ge ], [ %.sroa.039.4492.i, %bb.gh ] ; 2 uses
  %.sroa.09.4.lcssa.i153 = phi i64 [ %.sroa.09.0506.i, %.preheader.i152 ], [ %i.ue, %bb.gi ], [ %.sroa.09.4493.i, %bb.ge ], [ %.sroa.09.4493.i, %bb.gh ] ; 3 uses
  %i.tn = sub nuw i64 %.sroa.09.4.lcssa.i153, %.sroa.09.0506.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.to = load i64, ptr %i.oo, align 8, !alias.scope !16661, !noalias !16655, !noundef !28 ; 3 uses
  %i.tp = load i64, ptr %i.on, align 8, !range !43, !alias.scope !16661, !noalias !16655, !noundef !28
  %i.tq = icmp eq i64 %i.to, %i.tp
  br i1 %i.tq, label %bb.fy, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140

bb.fy:                                            ; preds = %._crit_edge495.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.on) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16655

.lr.ph494.i:                                      ; preds = %.preheader.i152, %bb.gi
  %.sroa.09.4493.i = phi i64 [ %i.ue, %bb.gi ], [ %.sroa.09.0506.i, %.preheader.i152 ] ; 5 uses
  %.sroa.039.4492.i = phi i64 [ %i.ug, %bb.gi ], [ %.sroa.039.0505.i, %.preheader.i152 ] ; 6 uses
  %i.tr = and i64 %.sroa.039.4492.i, 1023
  %i.ts = icmp eq i64 %i.tr, 0
  %or.cond180.i154 = select i1 %.sroa.05.0.not507.i, i1 %i.ts, i1 false
  br i1 %or.cond180.i154, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.gc, %.lr.ph494.i
  %i.tt = mul i64 %.sroa.09.4493.i, %i.of
  %i.tu = add i64 %.sroa.039.4492.i, %invariant.op.i109 ; 2 uses
  %i.tv = icmp ult i64 %i.tu, %i.bc
  br i1 %i.tv, label %bb.gd, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #74
          to label %.noexc189.i155 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16655

.noexc189.i155:                                   ; preds = %bb.ga
  unreachable

bb.gb:                                            ; preds = %.lr.ph494.i
  %i.tw = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gc unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16655

bb.gc:                                            ; preds = %bb.gb
  br i1 %i.tw, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread337, label %bb.fz

bb.gd:                                            ; preds = %bb.fz
  %i.tx = add i64 %.sroa.09.4493.i, %invariant.op482.i ; 2 uses
  %i.ty = icmp ult i64 %i.tx, %i.az
  br i1 %i.ty, label %bb.ge, label %.invoke.i121

bb.ge:                                            ; preds = %bb.gd
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.tu
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.tx
  %.val204.i156 = load i64, ptr %i.tz, align 8, !noalias !16655, !noundef !28
  %.val205.i157 = load i64, ptr %i.ua, align 8, !noalias !16655, !noundef !28
  %i.ub = icmp eq i64 %.val204.i156, %.val205.i157
  br i1 %i.ub, label %bb.gf, label %._crit_edge495.i

bb.gf:                                            ; preds = %bb.ge
  %i.uc = add i64 %i.tt, %.sroa.039.4492.i        ; 3 uses
  %i.ud = icmp ult i64 %i.uc, %i.oh
  br i1 %i.ud, label %bb.gg, label %.split443.us.invoke.i126

bb.gg:                                            ; preds = %bb.gf
  %i.ue = add nuw i64 %.sroa.09.4493.i, 1         ; 4 uses
  %i.uf = mul i64 %i.ue, %i.of
  %i.ug = add nuw i64 %.sroa.039.4492.i, 1        ; 4 uses
  %i.uh = add i64 %i.ug, %i.uf                    ; 3 uses
  %i.ui = icmp ult i64 %i.uh, %i.oh
  br i1 %i.ui, label %bb.gh, label %.split446.us.invoke.i128

bb.gh:                                            ; preds = %bb.gg
  %i.uj = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.uc
  %i.uk = load i8, ptr %i.uj, align 1, !noalias !16655, !noundef !28
  %i.ul = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.uh
  %i.um = load i8, ptr %i.ul, align 1, !noalias !16655, !noundef !28
  %i.un = add i8 %i.um, 1
  %i.uo = icmp eq i8 %i.uk, %i.un
  br i1 %i.uo, label %bb.gi, label %._crit_edge495.i

bb.gi:                                            ; preds = %bb.gh
  %i.up = icmp ult i64 %i.ue, %i.gc
  %i.uq = icmp ult i64 %i.ug, %i.gd
  %or.cond177.i158 = and i1 %i.up, %i.uq
  br i1 %or.cond177.i158, label %.lr.ph494.i, label %._crit_edge495.i

.loopexit64.i159:                                 ; preds = %bb.gj, %bb.gl, %bb.eq, %bb.gw
  br i1 %i.oi, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread337

bb.gj:                                            ; preds = %.lr.ph481.split.i
  br i1 %i.or, label %.loopexit64.i159, label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %bb.gj
  %i.ur = mul i64 %i.oq, %i.of                    ; 2 uses
  %i.us = mul i64 %.sroa.0102.0480.i, %i.of       ; 2 uses
  %.reass483.i = add i64 %i.oq, %invariant.op482.i ; 3 uses
  %i.ut = icmp ult i64 %.reass483.i, %i.az
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.reass483.i
  %.fr.i161 = freeze i1 %i.ut
  br i1 %.fr.i161, label %.lr.ph.split.us.i164, label %.lr.ph.split.i162

.lr.ph.split.us.i164:                             ; preds = %.lr.ph.i160, %bb.gu
  %.sroa.0105.0433.us.i165 = phi i64 [ %i.uv, %bb.gu ], [ %i.gd, %.lr.ph.i160 ] ; 3 uses
  %i.uv = add i64 %.sroa.0105.0433.us.i165, -1    ; 6 uses
  %i.uw = and i64 %i.uv, 1023
  %i.ux = icmp eq i64 %i.uw, 0
  br i1 %i.ux, label %bb.gk, label %bb.gm

bb.gk:                                            ; preds = %.lr.ph.split.us.i164
  %i.uy = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16655

bb.gl:                                            ; preds = %bb.gk
  br i1 %i.uy, label %.loopexit64.i159, label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %.lr.ph.split.us.i164
  %.reass.us.i166 = add i64 %i.uv, %invariant.op.i109 ; 3 uses
  %i.uz = icmp ult i64 %.reass.us.i166, %i.bc
  br i1 %i.uz, label %bb.gn, label %.invoke.i121

bb.gn:                                            ; preds = %bb.gm
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.reass.us.i166
  %.val.us.i167 = load i64, ptr %i.va, align 8, !noalias !16655, !noundef !28
  %.val203.us.i168 = load i64, ptr %i.uu, align 8, !noalias !16655, !noundef !28
  %i.vb = icmp eq i64 %.val.us.i167, %.val203.us.i168
  br i1 %i.vb, label %bb.gr, label %bb.go
end_hunk_5
begin_hunk_6_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIBT_mEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just:bb.a
  %.sroa.5290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xh, i64 16
  store i64 %.sroa.0211.0, ptr %.sroa.5290.0..sroa_idx, align 8, !noalias !16672
  %.sroa.6291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xh, i64 24
  store i64 %i.wy, ptr %.sroa.6291.0..sroa_idx, align 8, !noalias !16672
  %i.xi = add i64 %i.xc, 1
  store i64 %i.xi, ptr %i.xb, align 8, !alias.scope !16673, !noalias !16672
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread334

bb.he:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16676)
  %i.xj = load ptr, ptr %0, align 8, !alias.scope !16677, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 120 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xj, i64 136 ; 2 uses
  %i.xm = load i64, ptr %i.xl, align 8, !alias.scope !16678, !noalias !16677, !noundef !28 ; 3 uses
  %i.xn = load i64, ptr %i.xk, align 8, !range !43, !alias.scope !16678, !noalias !16677, !noundef !28
  %i.xo = icmp eq i64 %i.xm, %i.xn
  br i1 %i.xo, label %bb.hf, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit178

bb.hf:                                            ; preds = %bb.he
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.xk) #73, !noalias !16679
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit178

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit178: ; preds = %bb.he, %bb.hf
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xj, i64 128
  %i.xq = load ptr, ptr %i.xp, align 8, !alias.scope !16678, !noalias !16677, !nonnull !28, !noundef !28
  %i.xr = getelementptr inbounds nuw [40 x i8], ptr %i.xq, i64 %i.xm ; 4 uses
  store i64 0, ptr %i.xr, align 8, !noalias !16677
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  store i64 %i.be, ptr %.sroa.4259.0..sroa_idx, align 8, !noalias !16677
  %.sroa.5260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xr, i64 16
  store i64 %i.bf, ptr %.sroa.5260.0..sroa_idx, align 8, !noalias !16677
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xr, i64 24
  store i64 %.sroa.0.0.i63, ptr %.sroa.6261.0..sroa_idx, align 8, !noalias !16677
  %i.xs = add i64 %i.xm, 1
  store i64 %i.xs, ptr %i.xl, align 8, !alias.scope !16678, !noalias !16677
  br label %bb.hg

bb.hg:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactIB1e_mEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread334, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit178
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16844)
  %i.b = icmp uge i64 %2, %3
  %i.c = icmp uge i64 %5, %6
  %or.cond.i53 = or i1 %i.b, %i.c
  br i1 %or.cond.i53, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i.i = sub nuw i64 %6, %5
  %spec.select.i.i4.i.i.i = sub nuw i64 %3, %2
  %..i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i54 = icmp eq i64 %..i.i.i.i, 0
  br i1 %.not.i54, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !16845, !noalias !16846, !noundef !28
  %invariant.op.i.i.i.i = sub i64 %5, %i.e        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !16845, !noalias !16846, !noundef !28 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.h, align 8, !alias.scope !16844, !nonnull !28
  %i.m = load i64, ptr %i.i, align 8, !alias.scope !16843
  %invariant.op.i = sub i64 %2, %i.m              ; 2 uses
  %i.n = load i64, ptr %i.j, align 8, !alias.scope !16843 ; 3 uses
  %i.o = load ptr, ptr %i.k, align 8, !alias.scope !16843, !nonnull !28
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sroa.01.033.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.p, %bb.f ] ; 5 uses
  %i.p = add nuw i64 %.sroa.01.033.i.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16847)
  %.reass.i.i.i.i = add nuw i64 %.sroa.01.033.i.i.i.i, %invariant.op.i.i.i.i ; 2 uses
  %i.q = icmp ult i64 %.reass.i.i.i.i, %i.g
  br i1 %i.q, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %invariant.op.i.i.i.i)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @564) #74, !noalias !16848
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i: ; preds = %bb.c
  %.reass.i = add nuw i64 %.sroa.01.033.i.i.i.i, %invariant.op.i ; 2 uses
  %i.r = icmp ult i64 %.reass.i, %i.n
  br i1 %i.r, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i
  %umax17.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %invariant.op.i)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax17.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565) #74, !noalias !16849
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.reass.i.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.reass.i
  %.val.i.i.i.i.i = load i64, ptr %i.s, align 8, !noalias !16850, !noundef !28
  %.val7.i.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !16850, !noundef !28
  %i.u = icmp eq i64 %.val.i.i.i.i.i, %.val7.i.i.i.i.i
  br i1 %i.u, label %bb.f, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit

bb.f:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, %..i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread311, label %bb.c

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %.not = icmp eq i64 %.sroa.01.033.i.i.i.i, 0
  br i1 %.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread311

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.b, %bb.a, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i55310 = phi i64 [ 0, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0.0.i55314, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.v = add i64 %.sroa.0.0.i55310, %2            ; 3 uses
  %i.w = add i64 %.sroa.0.0.i55310, %5            ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16852)
  %i.x = icmp uge i64 %i.v, %3
  %i.y = icmp uge i64 %i.w, %6
  %or.cond.i56 = or i1 %i.x, %i.y
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br i1 %or.cond.i56, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge, label %.lr.ph.i.i.i.i57

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge: ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert1036 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre1037 = load i64, ptr %.phi.trans.insert1036, align 8
  %.phi.trans.insert1038 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre1039 = load ptr, ptr %.phi.trans.insert1038, align 8
  %.phi.trans.insert1040 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre1041 = load i64, ptr %.phi.trans.insert1040, align 8
  %.phi.trans.insert1042 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre1043 = load i64, ptr %.phi.trans.insert1042, align 8
  %.phi.trans.insert1044 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre1045 = load ptr, ptr %.phi.trans.insert1044, align 8
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit

.lr.ph.i.i.i.i57:                                 ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = sub nuw i64 %3, %i.v                    ; 2 uses
  %i.af = sub nuw i64 %6, %i.w                    ; 2 uses
  %i.ag = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !16852 ; 4 uses
  %i.ah = load i64, ptr %i.z, align 8, !alias.scope !16852 ; 5 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !alias.scope !16852, !nonnull !28 ; 4 uses
  %i.aj = load i64, ptr %i.ab, align 8, !alias.scope !16851 ; 4 uses
  %i.ak = load i64, ptr %i.ac, align 8, !alias.scope !16851 ; 5 uses
  %i.al = load ptr, ptr %i.ad, align 8, !alias.scope !16851, !nonnull !28 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i57
  %i.am = phi i64 [ %3, %.lr.ph.i.i.i.i57 ], [ %i.ap, %bb.k ]
  %.sroa.01.030.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i57 ], [ %i.ax, %bb.k ] ; 3 uses
  %i.an = phi i64 [ %6, %.lr.ph.i.i.i.i57 ], [ %i.ao, %bb.k ]
  %i.ao = add i64 %i.an, -1                       ; 2 uses
  %exitcond.not.i.i.i.i58 = icmp eq i64 %.sroa.01.030.i.i.i.i, %i.ae
  br i1 %exitcond.not.i.i.i.i58, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = add i64 %i.am, -1                       ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ag                    ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %i.ah
  br i1 %i.ar, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i59, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aq, i64 noundef %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @566) #74, !noalias !16853
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i59: ; preds = %bb.h
  %i.as = sub i64 %i.ap, %i.aj                    ; 3 uses
  %i.at = icmp ult i64 %i.as, %i.ak
  br i1 %i.at, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60, label %bb.j

bb.j:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i59
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.as, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @567) #74, !noalias !16854
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i59
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.aq
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.as
  %.val.i.i.i.i.i61 = load i64, ptr %i.au, align 8, !noalias !16855, !noundef !28
  %.val7.i.i.i.i.i62 = load i64, ptr %i.av, align 8, !noalias !16855, !noundef !28
  %i.aw = icmp eq i64 %.val.i.i.i.i.i61, %.val7.i.i.i.i.i62
  br i1 %i.aw, label %bb.k, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit

bb.k:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60
  %i.ax = add nuw i64 %.sroa.01.030.i.i.i.i, 1    ; 2 uses
  %exitcond62.not.i.i.i.i = icmp eq i64 %i.ax, %i.af
  br i1 %exitcond62.not.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit, label %bb.g

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit: ; preds = %bb.g, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60, %bb.k, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge
  %i.ay = phi ptr [ %.pre1045, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.al, %bb.k ], [ %i.al, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.al, %bb.g ] ; 10 uses
  %i.az = phi i64 [ %.pre1043, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ak, %bb.k ], [ %i.ak, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.ak, %bb.g ] ; 24 uses
  %i.ba = phi i64 [ %.pre1041, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.aj, %bb.k ], [ %i.aj, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.aj, %bb.g ] ; 5 uses
  %i.bb = phi ptr [ %.pre1039, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ai, %bb.k ], [ %i.ai, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.ai, %bb.g ] ; 11 uses
  %i.bc = phi i64 [ %.pre1037, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ah, %bb.k ], [ %i.ah, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.ah, %bb.g ] ; 29 uses
  %i.bd = phi i64 [ %.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ag, %bb.k ], [ %i.ag, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.ag, %bb.g ] ; 8 uses
  %.sroa.0.0.i63 = phi i64 [ 0, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ae, %bb.g ], [ %.sroa.01.030.i.i.i.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.af, %bb.k ] ; 4 uses
  %i.be = sub i64 %3, %.sroa.0.0.i63              ; 9 uses
  %i.bf = sub i64 %6, %.sroa.0.0.i63              ; 9 uses
  br label %bb.m

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread311: ; preds = %bb.f, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i55314 = phi i64 [ %.sroa.01.033.i.i.i.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit ], [ %..i.i.i.i, %bb.f ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16857)
  %i.bg = load ptr, ptr %0, align 8, !alias.scope !16858, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 120 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 136 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !16859, !noalias !16858, !noundef !28 ; 3 uses
  %i.bk = load i64, ptr %i.bh, align 8, !range !43, !alias.scope !16859, !noalias !16858, !noundef !28
  %i.bl = icmp eq i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.l, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit

bb.l:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread311
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh) #73, !noalias !16860
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit: ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread311, %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !16859, !noalias !16858, !nonnull !28, !noundef !28
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %i.bn, i64 %i.bj ; 4 uses
  store i64 0, ptr %i.bo, align 8, !noalias !16858
  %.sroa.4255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %2, ptr %.sroa.4255.0..sroa_idx, align 8, !noalias !16858
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !16858
  %.sroa.6256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i64 %.sroa.0.0.i55314, ptr %.sroa.6256.0..sroa_idx, align 8, !noalias !16858
  %i.bp = add i64 %i.bj, 1
  store i64 %i.bp, ptr %i.bi, align 8, !alias.scope !16859, !noalias !16858
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit.thread

bb.m:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0211.0 = phi i64 [ %i.w, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0211.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.v, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupjEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit ] ; 33 uses
  %i.bq = icmp ult i64 %.sroa.0.0, %i.be          ; 2 uses
  %i.br = icmp ult i64 %.sroa.0211.0, %i.bf       ; 3 uses
  %or.cond340 = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %or.cond340, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, %bb.m
  br i1 %i.bq, label %bb.az, label %bb.ba

bb.o:                                             ; preds = %bb.m
  %i.bs = sub nuw i64 %i.be, %.sroa.0.0           ; 6 uses
  %i.bt = sub nuw i64 %i.bf, %.sroa.0211.0        ; 6 uses
  %i.bu = icmp ult i64 %i.bs, 97
  %i.bv = icmp ult i64 %i.bt, 97
  %or.cond.i = or i1 %i.bv, %i.bu
  br i1 %or.cond.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bs) ; 2 uses
  %..i64 = tail call noundef i64 @llvm.umax.i64(i64 %i.bt, i64 %i.bs)
  %i.bw = shl nuw i64 %..i, 1
  %i.bx = icmp slt i64 %..i, 0
  br i1 %i.bx, label %bb.q, label %bb.r, !prof !44

bb.q:                                             ; preds = %bb.p
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.052.0.i = phi i64 [ -1, %bb.q ], [ %i.bw, %bb.p ]
  %i.by = icmp ult i64 %..i64, %.sroa.052.0.i
  br i1 %i.by, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i = icmp ule i64 %i.bt, %i.bs
  %i.bz = icmp ule i64 %i.bs, %i.bt
  %.not.i.fr = freeze i1 %.not.i
  %i.ca = sub i64 %.sroa.0211.0, %i.bd            ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bc
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ca
  br label %bb.t

.loopexit:                                        ; preds = %.outer, %bb.ah, %bb.w, %bb.ag
  %.sroa.525.2.i.ph.lcssa563 = phi i64 [ %.sroa.525.2.i.ph718, %bb.w ], [ %.sroa.525.2.i.ph718, %bb.ah ], [ %.sroa.525.2.i.ph718, %bb.ag ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa556 = phi i64 [ %.sroa.023.1.i.ph719, %bb.w ], [ %.sroa.023.1.i.ph719, %bb.ah ], [ %.sroa.023.1.i.ph719, %bb.ag ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa549 = phi i64 [ %.sroa.9.2.i.ph720, %bb.w ], [ %.sroa.9.2.i.ph720, %bb.ah ], [ %.sroa.9.2.i.ph720, %bb.ag ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa542 = phi i64 [ %.sroa.12.2.i.ph721, %bb.w ], [ %.sroa.12.2.i.ph721, %bb.ah ], [ %.sroa.12.2.i.ph721, %bb.ag ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, -1
  %exitcond1035 = icmp eq i64 %i.cd, 5
  br i1 %exitcond1035, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit
  %indvars.iv = phi i64 [ %i.bs, %bb.s ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.sroa.12.0.i726 = phi i64 [ undef, %bb.s ], [ %.sroa.12.2.i.ph.lcssa542, %.loopexit ]
  %.sroa.9.0.i725 = phi i64 [ undef, %bb.s ], [ %.sroa.9.2.i.ph.lcssa549, %.loopexit ]
  %.sroa.023.0.i724 = phi i64 [ 0, %bb.s ], [ %.sroa.023.1.i.ph.lcssa556, %.loopexit ]
  %.sroa.525.0.i723 = phi i64 [ undef, %bb.s ], [ %.sroa.525.2.i.ph.lcssa563, %.loopexit ]
  %.sroa.0244.0722 = phi i64 [ 0, %bb.s ], [ %i.cd, %.loopexit ] ; 9 uses
  %i.cd = add nuw nsw i64 %.sroa.0244.0722, 1     ; 2 uses
  %i.ce = icmp eq i64 %.sroa.0244.0722, 0
  %i.cf = add i64 %.sroa.0244.0722, %.sroa.0.0    ; 2 uses
  %i.cg = sub i64 %i.cf, %i.ba                    ; 4 uses
  %i.ch = icmp ult i64 %i.cg, %i.az               ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cg ; 2 uses
  %i.cj = sub i64 %i.be, %i.cf
  br label %.lr.ph

bb.u:                                             ; preds = %.loopexit
  %i.ck = trunc nuw i64 %.sroa.023.1.i.ph.lcssa556 to i1
  br i1 %i.ck, label %.loopexit438, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit

.loopexit438:                                     ; preds = %bb.ai, %bb.u
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa563, %bb.u ], [ %.sroa.0244.0722, %bb.ai ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa549, %bb.u ], [ %.us-phi632, %bb.ai ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa542, %bb.u ], [ %.sroa.01.0.i.lcssa, %bb.ai ] ; 3 uses
  %i.cl = icmp eq i64 %.sroa.525.1.i, 0
  %i.cm = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.cl, label %bb.ao, label %bb.ap

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.w
  %.sroa.0245.0606 = phi i64 [ %i.cn, %bb.w ], [ %.sroa.0245.0.ph717, %.lr.ph.split ] ; 2 uses
  %i.cn = add nuw nsw i64 %.sroa.0245.0606, 1     ; 2 uses
  %i.co = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !16861
  br i1 %i.co, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.split
  %.not729 = icmp eq i64 %.sroa.0245.0606, 0
  br i1 %.not729, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30
  %exitcond = icmp eq i64 %i.cn, 5
  br i1 %exitcond, label %.loopexit, label %.lr.ph.split.split

bb.x:                                             ; preds = %bb.v
  br i1 %i.cb, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31, label %.split615.loopexit1292

.split615.loopexit1292:                           ; preds = %bb.x
  %i.cp = sub i64 %.sroa.0211.0, %i.bd
  br label %.split615

.split615:                                        ; preds = %bb.af, %.split615.loopexit1292
  %.us-phi = phi i64 [ %i.cp, %.split615.loopexit1292 ], [ %i.df, %bb.af ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @293) #74, !noalias !16862
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31: ; preds = %bb.x
  br i1 %i.ch, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30, label %.split618

.split618:                                        ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cg, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @294) #74, !noalias !16863
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31
  %.val49 = load i64, ptr %i.cc, align 8, !noundef !28
  %.val50 = load i64, ptr %i.ci, align 8, !noundef !28
  %.not341 = icmp eq i64 %.val49, %.val50
  br i1 %.not341, label %.split622, label %bb.w

.split622.loopexit:                               ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30.us
  %.pre1050 = sub i64 %i.bf, %i.de
  br label %.split622

.split622:                                        ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30, %.split622.loopexit
  %.pre-phi = phi i64 [ %.pre1050, %.split622.loopexit ], [ %i.bt, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ] ; 2 uses
  %.us-phi628 = phi i64 [ %i.de, %.split622.loopexit ], [ %.sroa.0211.0, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ]
  %.us-phi631 = phi i64 [ %i.dc, %.split622.loopexit ], [ 1, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ] ; 2 uses
  %.us-phi632 = phi i64 [ %.sroa.0245.0606.us, %.split622.loopexit ], [ 0, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ] ; 4 uses
  %..i73 = tail call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.cj)
  %.not730 = icmp eq i64 %..i73, 0
  br i1 %.not730, label %.outer, label %.lr.ph714

.lr.ph714:                                        ; preds = %.split622
  %i.cq = sub i64 %.us-phi628, %i.bd              ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %.pre-phi) ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph714, %bb.ad
  %.sroa.01.0.i713 = phi i64 [ 0, %.lr.ph714 ], [ %i.da, %bb.ad ] ; 5 uses
  %i.cr = and i64 %.sroa.01.0.i713, 1023
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ct = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !16861
  br i1 %i.ct, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cu = add nuw i64 %i.cq, %.sroa.01.0.i713     ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.bc
  br i1 %i.cv, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit29, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %umax1017 = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.cq)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax1017, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #74, !noalias !16864
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit29: ; preds = %bb.aa
  %i.cw = add nuw i64 %i.cg, %.sroa.01.0.i713     ; 3 uses
  %i.cx = icmp ult i64 %i.cw, %i.az
  br i1 %i.cx, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit29
end_hunk_6
begin_hunk_7_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just:bb.a
  %.sroa.4294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4294.0..sroa_idx, align 8, !noalias !16871
  %.sroa.5295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i64 %.sroa.0211.0, ptr %.sroa.5295.0..sroa_idx, align 8, !noalias !16871
  %.sroa.6296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6296.0..sroa_idx, align 8, !noalias !16871
  %i.eo = add i64 %i.ei, 1                        ; 2 uses
  store i64 %i.eo, ptr %i.eh, align 8, !alias.scope !16870, !noalias !16871
  br label %bb.aq

bb.au:                                            ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16873)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16874), !noalias !16866
  %i.ep = load ptr, ptr %0, align 8, !alias.scope !16875, !noalias !16866, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 120 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 136 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !16876, !noalias !16877, !noundef !28 ; 3 uses
  %i.et = load i64, ptr %i.eq, align 8, !range !43, !alias.scope !16876, !noalias !16877, !noundef !28
  %i.eu = icmp eq i64 %i.es, %i.et
  br i1 %i.eu, label %bb.av, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit78

bb.av:                                            ; preds = %bb.au
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eq) #73, !noalias !16878
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit78

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit78: ; preds = %bb.au, %bb.av
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 128
  %i.ew = load ptr, ptr %i.ev, align 8, !alias.scope !16876, !noalias !16877, !nonnull !28, !noundef !28
  %i.ex = getelementptr inbounds nuw [40 x i8], ptr %i.ew, i64 %i.es ; 4 uses
  store i64 1, ptr %i.ex, align 8, !noalias !16877
  %.sroa.4279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4279.0..sroa_idx, align 8, !noalias !16877
  %.sroa.5280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5280.0..sroa_idx, align 8, !noalias !16877
  %.sroa.6281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  store i64 %.sroa.0211.0, ptr %.sroa.6281.0..sroa_idx, align 8, !noalias !16877
  %i.ey = add i64 %i.es, 1                        ; 2 uses
  store i64 %i.ey, ptr %i.er, align 8, !alias.scope !16876, !noalias !16877
  br label %bb.aq

bb.aw:                                            ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16880), !noalias !16866
  %i.ez = load ptr, ptr %0, align 8, !alias.scope !16881, !noalias !16866, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 120 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 136 ; 3 uses
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !16882, !noalias !16883, !noundef !28 ; 4 uses
  %i.fd = load i64, ptr %i.fa, align 8, !range !43, !alias.scope !16882, !noalias !16883, !noundef !28
  %i.fe = icmp eq i64 %i.fc, %i.fd
  br i1 %i.fe, label %bb.ax, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79

bb.ax:                                            ; preds = %bb.aw
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fa) #73, !noalias !16884
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79: ; preds = %bb.aw, %bb.ax
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 128 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !alias.scope !16882, !noalias !16883, !nonnull !28, !noundef !28
  %i.fh = getelementptr inbounds nuw [40 x i8], ptr %i.fg, i64 %i.fc ; 4 uses
  store i64 1, ptr %i.fh, align 8, !noalias !16883
  %.sroa.4299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4299.0..sroa_idx, align 8, !noalias !16883
  %.sroa.5300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5300.0..sroa_idx, align 8, !noalias !16883
  %.sroa.6301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  store i64 %.sroa.0211.0, ptr %.sroa.6301.0..sroa_idx, align 8, !noalias !16883
  %i.fi = add i64 %i.fc, 1                        ; 3 uses
  store i64 %i.fi, ptr %i.fb, align 8, !alias.scope !16882, !noalias !16883
  %i.fj = load i64, ptr %i.fa, align 8, !range !43, !alias.scope !16885, !noalias !16883, !noundef !28
  %i.fk = icmp eq i64 %i.fi, %i.fj
  br i1 %i.fk, label %bb.ay, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit80

bb.ay:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fa) #73, !noalias !16886
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit80

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit80: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79, %bb.ay
  %i.fl = load ptr, ptr %i.ff, align 8, !alias.scope !16885, !noalias !16883, !nonnull !28, !noundef !28
  %i.fm = getelementptr inbounds nuw [40 x i8], ptr %i.fl, i64 %i.fi ; 4 uses
  store i64 2, ptr %i.fm, align 8, !noalias !16883
  %.sroa.4304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4304.0..sroa_idx, align 8, !noalias !16883
  %.sroa.5305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 %.sroa.0211.0, ptr %.sroa.5305.0..sroa_idx, align 8, !noalias !16883
  %.sroa.6306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6306.0..sroa_idx, align 8, !noalias !16883
  %i.fn = add i64 %i.fc, 2                        ; 2 uses
  store i64 %i.fn, ptr %i.fb, align 8, !alias.scope !16885, !noalias !16883
  br label %bb.aq

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupjEB17_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2v_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit: ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %.lr.ph.split.us, %bb.z, %bb.o, %bb.r, %bb.u, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit76
  %.sroa.0211.2 = phi i64 [ %.sroa.0211.0, %bb.o ], [ %.sroa.0211.0, %bb.r ], [ %.sroa.0211.0, %bb.u ], [ %i.ef, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit76 ], [ %.sroa.0211.0, %.lr.ph.split.split ], [ %.sroa.0211.0, %.lr.ph.split.us ], [ %.sroa.0211.0, %bb.z ], [ %.sroa.0211.0, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.o ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %bb.u ], [ %i.ee, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit76 ], [ %.sroa.0.0, %.lr.ph.split.split ], [ %.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.0.0, %bb.z ], [ %.sroa.0.0, %.lr.ph.split.split.us ] ; 2 uses
  %i.fo = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.fp = icmp eq i64 %.sroa.0211.2, %.sroa.0211.0
  %or.cond = select i1 %i.fo, i1 %i.fp, i1 false
  br i1 %or.cond, label %bb.n, label %bb.m

bb.az:                                            ; preds = %bb.n
  br i1 %i.br, label %bb.bd, label %bb.bb

bb.ba:                                            ; preds = %bb.n
  br i1 %i.br, label %.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread334

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread334: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit81, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit177, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit176, %bb.gz, %bb.ba
  %.not26 = icmp eq i64 %.sroa.0.0.i63, 0
  br i1 %.not26, label %bb.hg, label %bb.he

bb.bb:                                            ; preds = %bb.az
  %i.fq = sub nuw i64 %i.be, %.sroa.0.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16888)
  %i.fr = load ptr, ptr %0, align 8, !alias.scope !16889, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 120 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 136 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !16890, !noalias !16889, !noundef !28 ; 3 uses
  %i.fv = load i64, ptr %i.fs, align 8, !range !43, !alias.scope !16890, !noalias !16889, !noundef !28
  %i.fw = icmp eq i64 %i.fu, %i.fv
  br i1 %i.fw, label %bb.bc, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit81

bb.bc:                                            ; preds = %bb.bb
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fs) #73, !noalias !16891
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit81

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit81: ; preds = %bb.bb, %bb.bc
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 128
  %i.fy = load ptr, ptr %i.fx, align 8, !alias.scope !16890, !noalias !16889, !nonnull !28, !noundef !28
  %i.fz = getelementptr inbounds nuw [40 x i8], ptr %i.fy, i64 %i.fu ; 4 uses
  store i64 1, ptr %i.fz, align 8, !noalias !16889
  %.sroa.4274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4274.0..sroa_idx, align 8, !noalias !16889
  %.sroa.5275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i64 %i.fq, ptr %.sroa.5275.0..sroa_idx, align 8, !noalias !16889
  %.sroa.6276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  store i64 %.sroa.0211.0, ptr %.sroa.6276.0..sroa_idx, align 8, !noalias !16889
  %i.ga = add i64 %i.fu, 1
  store i64 %i.ga, ptr %i.ft, align 8, !alias.scope !16890, !noalias !16889
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread334

bb.bd:                                            ; preds = %bb.az
  %i.gb = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !16892
  br i1 %i.gb, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gc = sub nuw i64 %i.be, %.sroa.0.0           ; 22 uses
  %i.gd = sub nuw i64 %i.bf, %.sroa.0211.0        ; 22 uses
  %i.ge = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gc, i64 %i.gd) ; 2 uses
  %i.gf = extractvalue { i64, i1 } %i.ge, 1
  br i1 %i.gf, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.bf, !prof !44

bb.bf:                                            ; preds = %bb.be
  %i.gg = extractvalue { i64, i1 } %i.ge, 0
  %..i83 = tail call noundef i64 @llvm.umax.i64(i64 %i.gd, i64 %i.gc)
  %..i82 = tail call noundef i64 @llvm.umin.i64(i64 %i.gd, i64 %i.gc)
  %i.gh = add i64 %..i82, -65
  %or.cond.i27 = icmp ult i64 %i.gh, -64
  %i.gi = icmp ult i64 %..i83, 512
  %or.cond1.i = or i1 %i.gi, %or.cond.i27
  %i.gj = icmp ugt i64 %i.gg, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.gj
  br i1 %or.cond3.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not.i28 = icmp ugt i64 %i.gc, %i.gd
  %.val51 = load ptr, ptr %0, align 8             ; 16 uses
  %i.gk = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !28 ; 2 uses
  br i1 %.not.i28, label %bb.bh, label %bb.ec

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.gk, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gl = add i64 %i.gc, 1                        ; 11 uses
  %i.gm = add nuw i64 %i.gd, 1
  %i.gn = mul i64 %i.gl, %i.gm                    ; 29 uses
  %.not.i.i.i = icmp slt i64 %i.gn, 0
  br i1 %.not.i.i.i, label %bb.bm, label %bb.bj, !prof !42

bb.bj:                                            ; preds = %bb.bi
  %i.go = icmp eq i64 %i.gn, 0                    ; 3 uses
  br i1 %i.go, label %.lr.ph466.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !16893
  %i.gp = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.gn, i64 noundef range(i64 1, 9) 1) #69, !noalias !16893 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gr = ptrtoint ptr %i.gp to i64
  br label %.lr.ph466.i

bb.bm:                                            ; preds = %bb.bk, %bb.bi
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.bk ], [ 0, %bb.bi ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.gn) #70, !noalias !16894
  unreachable

.lr.ph466.i:                                      ; preds = %bb.bj, %bb.bl
  %.sroa.10.0.i.i = phi i64 [ %i.gr, %bb.bl ], [ 1, %bb.bj ]
  %i.gs = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 21 uses
  %invariant.op467.i = sub i64 %.sroa.0211.0, %i.bd ; 4 uses
  %invariant.op.i85 = sub i64 %.sroa.0.0, %i.ba   ; 3 uses
  br label %.lr.ph466.split.i

.lr.ph492.i:                                      ; preds = %..loopexit68_crit_edge.split.us.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.val51, i64 120 ; 10 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.val51, i64 136 ; 6 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.val51, i64 128 ; 3 uses
  br label %bb.bn

.lr.ph466.split.i:                                ; preds = %.lr.ph466.i, %..loopexit68_crit_edge.split.us.i
  %.sroa.0102.0465.i = phi i64 [ %i.gw, %..loopexit68_crit_edge.split.us.i ], [ %i.gd, %.lr.ph466.i ] ; 2 uses
  %i.gw = add i64 %.sroa.0102.0465.i, -1          ; 4 uses
  %i.gx = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.do unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16895

._crit_edge493.i:                                 ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i
  br i1 %i.ls, label %bb.bo, label %bb.bq

bb.bn:                                            ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i, %.lr.ph492.i
  %.sroa.05.0.not491.i = phi i1 [ true, %.lr.ph492.i ], [ false, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i ] ; 3 uses
  %.sroa.09.0490.i = phi i64 [ 0, %.lr.ph492.i ], [ %.sroa.09.3.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i ] ; 14 uses
  %.sroa.038.0489.i = phi i64 [ 0, %.lr.ph492.i ], [ %.sroa.038.3.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i ] ; 18 uses
  %i.gy = and i64 %.sroa.038.0489.i, 1023
  %i.gz = icmp eq i64 %i.gy, 0
  %or.cond170.i = select i1 %.sroa.05.0.not491.i, i1 %i.gz, i1 false ; 2 uses
  br i1 %or.cond170.i, label %bb.bu, label %bb.bt

bb.bo:                                            ; preds = %._crit_edge493.i
  %i.ha = add i64 %.sroa.038.3.i, %.sroa.0.0      ; 2 uses
  %i.hb = sub nuw i64 %i.gc, %.sroa.038.3.i
  %i.hc = add i64 %.sroa.09.3.i, %.sroa.0211.0    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hd = load i64, ptr %i.gt, align 8, !range !43, !alias.scope !16896, !noalias !16895, !noundef !28
  %i.he = icmp eq i64 %i.lq, %i.hd
  br i1 %i.he, label %bb.bp, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i

bb.bp:                                            ; preds = %bb.bo
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gt) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16895

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i: ; preds = %bb.bp, %bb.bo
  %i.hf = load ptr, ptr %i.gv, align 8, !alias.scope !16896, !noalias !16895, !nonnull !28, !noundef !28
  %i.hg = getelementptr inbounds nuw [40 x i8], ptr %i.hf, i64 %i.lq ; 4 uses
  store i64 1, ptr %i.hg, align 8, !noalias !16895
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store i64 %i.ha, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !16895
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  store i64 %i.hb, ptr %.sroa.525.0..sroa_idx.i, align 8, !noalias !16895
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  store i64 %i.hc, ptr %.sroa.626.0..sroa_idx.i, align 8, !noalias !16895
  %i.hh = add i64 %.sink959.i, 2                  ; 2 uses
  store i64 %i.hh, ptr %i.gu, align 8, !alias.scope !16896, !noalias !16895
  br i1 %i.lr, label %bb.br, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i

bb.bq:                                            ; preds = %._crit_edge493.i
  br i1 %i.lr, label %._crit_edge1052, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i

._crit_edge1052:                                  ; preds = %bb.bq
  %.pre1053 = add i64 %.sroa.038.3.i, %.sroa.0.0
  %.pre1055 = add i64 %.sroa.09.3.i, %.sroa.0211.0
  br label %bb.br

.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ct, %bb.dg, %bb.cg, %bb.cs, %bb.cf, %.split446.us.invoke.i, %bb.df
  %lpad.loopexit.split-lp1844 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dp, %bb.dd, %bb.bu, %.lr.ph466.split.i, %.split443.us.invoke.i, %bb.ea, %.invoke.i, %bb.bs, %bb.bp
  %lpad.loopexit.split-lp1870 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.go, label %common.resume, label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi44.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp1870, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1844, %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gs, i64 noundef %i.gn, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !16897
  br label %common.resume

bb.br:                                            ; preds = %._crit_edge1052, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i
  %.pre-phi1056 = phi i64 [ %.pre1055, %._crit_edge1052 ], [ %i.hc, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i ]
  %.pre-phi1054 = phi i64 [ %.pre1053, %._crit_edge1052 ], [ %i.ha, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i ]
  %i.hi = phi i64 [ %i.lq, %._crit_edge1052 ], [ %i.hh, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i ] ; 3 uses
  %i.hj = sub nuw i64 %i.gd, %.sroa.09.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hk = load i64, ptr %i.gt, align 8, !range !43, !alias.scope !16898, !noalias !16895, !noundef !28
  %i.hl = icmp eq i64 %i.hi, %i.hk
  br i1 %i.hl, label %bb.bs, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gt) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16895

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i: ; preds = %bb.bs, %bb.br
  %i.hm = load ptr, ptr %i.gv, align 8, !alias.scope !16898, !noalias !16895, !nonnull !28, !noundef !28
  %i.hn = getelementptr inbounds nuw [40 x i8], ptr %i.hm, i64 %i.hi ; 4 uses
  store i64 2, ptr %i.hn, align 8, !noalias !16895
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store i64 %.pre-phi1054, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !16895
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store i64 %.pre-phi1056, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !16895
  %.sroa.636.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  store i64 %i.hj, ptr %.sroa.636.0..sroa_idx.i, align 8, !noalias !16895
  %i.ho = add i64 %i.hi, 1
  store i64 %i.ho, ptr %i.gu, align 8, !alias.scope !16898, !noalias !16895
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i.thread: ; preds = %bb.cu, %bb.ch, %bb.dh, %.loopexit64.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gs, i64 noundef %i.gn, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !16895
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i: ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i, %bb.bq, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gs, i64 noundef %i.gn, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !16895
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread334

bb.bt:                                            ; preds = %bb.bv, %bb.bn
  %i.hp = mul i64 %.sroa.09.0490.i, %i.gl         ; 4 uses
  %i.hq = add i64 %.sroa.038.0489.i, %.sroa.0.0   ; 2 uses
  %i.hr = add i64 %.sroa.09.0490.i, %.sroa.0211.0 ; 7 uses
  %i.hs = sub i64 %i.hr, %i.bd                    ; 3 uses
  %i.ht = icmp ult i64 %i.hs, %i.bc
  br i1 %i.ht, label %bb.bw, label %.invoke.i

.invoke.i:                                        ; preds = %bb.dr, %bb.bw, %bb.bt, %bb.ci, %bb.di, %bb.eb, %.lr.ph.split.i, %11
  %i.hu = phi i64 [ %.reass.i88, %.lr.ph.split.i ], [ %.reass.i88, %bb.eb ], [ %i.az, %bb.ci ], [ %umax687.le.i, %11 ], [ %i.hs, %bb.bt ], [ %i.az, %bb.di ], [ %i.hz, %bb.bw ], [ %.reass.us.i, %bb.dr ]
  %i.hv = phi i64 [ %i.bc, %.lr.ph.split.i ], [ %i.bc, %bb.eb ], [ %i.az, %bb.ci ], [ %i.bc, %11 ], [ %i.bc, %bb.bt ], [ %i.az, %bb.di ], [ %i.az, %bb.bw ], [ %i.az, %bb.dr ]
  %i.hw = phi ptr [ @261, %.lr.ph.split.i ], [ @261, %bb.eb ], [ @247, %bb.ci ], [ @252, %11 ], [ @241, %bb.bt ], [ @258, %bb.di ], [ @242, %bb.bw ], [ @262, %bb.dr ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.hu, i64 noundef %i.hv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hw) #74
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16895

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bu:                                            ; preds = %bb.bn
  %i.hx = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16895

bb.bv:                                            ; preds = %bb.bu
  br i1 %i.hx, label %.loopexit64.i, label %bb.bt

bb.bw:                                            ; preds = %bb.bt
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.hs ; 2 uses
  %i.hz = sub i64 %i.hq, %i.ba                    ; 3 uses
  %i.ia = icmp ult i64 %i.hz, %i.az
  br i1 %i.ia, label %bb.bx, label %.invoke.i

bb.bx:                                            ; preds = %bb.bw
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.hz ; 2 uses
  %.val210.i = load i64, ptr %i.hy, align 8, !noalias !16895, !noundef !28
  %.val211.i = load i64, ptr %i.ib, align 8, !noalias !16895, !noundef !28
  %i.ic = icmp eq i64 %.val210.i, %.val211.i
  br i1 %i.ic, label %bb.by, label %._crit_edge692.i

._crit_edge692.i:                                 ; preds = %bb.bx
  %.pre.i = add nuw i64 %.sroa.09.0490.i, 1
  %.pre693.i = mul i64 %.pre.i, %i.gl
  br label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.id = add i64 %i.hp, %.sroa.038.0489.i        ; 3 uses
  %i.ie = icmp ult i64 %i.id, %i.gn
  br i1 %i.ie, label %bb.ca, label %.split443.us.invoke.i

bb.bz:                                            ; preds = %bb.cb, %._crit_edge692.i
  %.pre-phi694.i = phi i64 [ %.pre693.i, %._crit_edge692.i ], [ %i.ii, %bb.cb ] ; 3 uses
  %i.if = add i64 %.pre-phi694.i, %.sroa.038.0489.i ; 3 uses
  %i.ig = icmp ult i64 %i.if, %i.gn
  br i1 %i.ig, label %bb.cc, label %.split443.us.invoke.i

bb.ca:                                            ; preds = %bb.by
  %i.ih = add nuw i64 %.sroa.09.0490.i, 1
  %i.ii = mul i64 %i.ih, %i.gl                    ; 2 uses
  %i.ij = add nuw i64 %.sroa.038.0489.i, 1
  %i.ik = add i64 %i.ij, %i.ii                    ; 3 uses
  %i.il = icmp ult i64 %i.ik, %i.gn
  br i1 %i.il, label %bb.cb, label %.split446.us.invoke.i

bb.cb:                                            ; preds = %bb.ca
  %i.im = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.id
  %i.in = load i8, ptr %i.im, align 1, !noalias !16895, !noundef !28
  %i.io = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.ik
  %i.ip = load i8, ptr %i.io, align 1, !noalias !16895, !noundef !28
  %i.iq = add i8 %i.ip, 1
  %i.ir = icmp eq i8 %i.in, %i.iq
  br i1 %i.ir, label %.preheader.i, label %bb.bz

.preheader.i:                                     ; preds = %bb.cb
  %i.is = icmp ult i64 %.sroa.09.0490.i, %i.gd
  %i.it = icmp ult i64 %.sroa.038.0489.i, %i.gc
  %or.cond177475.i = select i1 %i.is, i1 %i.it, i1 false
  br i1 %or.cond177475.i, label %.lr.ph478.i, label %._crit_edge479.i

bb.cc:                                            ; preds = %bb.bz
  %i.iu = add nuw i64 %.sroa.038.0489.i, 1        ; 3 uses
  %i.iv = add i64 %i.iu, %i.hp                    ; 3 uses
  %i.iw = icmp ult i64 %i.iv, %i.gn
  br i1 %i.iw, label %bb.cd, label %.split446.us.invoke.i

bb.cd:                                            ; preds = %bb.cc
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.if
  %i.iy = load i8, ptr %i.ix, align 1, !noalias !16895, !noundef !28
  %i.iz = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.iv
  %i.ja = load i8, ptr %i.iz, align 1, !noalias !16895, !noundef !28
  %.not164.i = icmp ult i8 %i.iy, %i.ja
  br i1 %.not164.i, label %.preheader51.i, label %.preheader56.i

.preheader56.i:                                   ; preds = %bb.cd
  %umax.i86 = tail call i64 @llvm.umax.i64(i64 %.sroa.09.0490.i, i64 %i.gd) ; 3 uses
  %exitcond.not.i1801.not = icmp ult i64 %.sroa.09.0490.i, %i.gd
  br i1 %exitcond.not.i1801.not, label %.lr.ph1803, label %._crit_edge1804

.preheader51.i:                                   ; preds = %bb.cd
  %i.jb = icmp ult i64 %.sroa.038.0489.i, %i.gc
  br i1 %i.jb, label %.lr.ph470.i, label %._crit_edge.i

.lr.ph470.i:                                      ; preds = %.preheader51.i
  %i.jc = add i64 %.pre-phi694.i, 1
  %i.jd = add i64 %i.hp, 1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cq, %.lr.ph470.i
  %.sroa.038.1469.i = phi i64 [ %.sroa.038.0489.i, %.lr.ph470.i ], [ %i.ki, %bb.cq ] ; 9 uses
  %i.je = and i64 %.sroa.038.1469.i, 1023
  %i.jf = icmp eq i64 %i.je, 0
  %or.cond173.i = and i1 %.sroa.05.0.not491.i, %i.jf
  br i1 %or.cond173.i, label %bb.cg, label %bb.ci

._crit_edge.i:                                    ; preds = %bb.cq, %bb.cp, %bb.cn, %.preheader51.i
  %.sroa.038.1.lcssa.i = phi i64 [ %.sroa.038.0489.i, %.preheader51.i ], [ %i.gc, %bb.cq ], [ %.sroa.038.1469.i, %bb.cp ], [ %.sroa.038.1469.i, %bb.cn ] ; 3 uses
  %i.jg = sub i64 %.sroa.038.1.lcssa.i, %.sroa.038.0489.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.jh = load i64, ptr %i.gu, align 8, !alias.scope !16899, !noalias !16895, !noundef !28 ; 3 uses
  %i.ji = load i64, ptr %i.gt, align 8, !range !43, !alias.scope !16899, !noalias !16895, !noundef !28
  %i.jj = icmp eq i64 %i.jh, %i.ji
  br i1 %i.jj, label %bb.cf, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i

bb.cf:                                            ; preds = %._crit_edge.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gt) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16895

bb.cg:                                            ; preds = %bb.ce
  %i.jk = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ch unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16895

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.jk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.ce
  %i.jl = add i64 %.sroa.038.1469.i, %invariant.op.i85 ; 2 uses
  %i.jm = icmp ult i64 %i.jl, %i.az
  br i1 %i.jm, label %bb.cj, label %.invoke.i

bb.cj:                                            ; preds = %bb.ci
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.jl
  %.val208.i = load i64, ptr %i.hy, align 8, !noalias !16895, !noundef !28
  %.val209.i = load i64, ptr %i.jn, align 8, !noalias !16895, !noundef !28
  %i.jo = icmp eq i64 %.val208.i, %.val209.i
  br i1 %i.jo, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.jp = add i64 %.sroa.038.1469.i, %i.hp        ; 3 uses
  %i.jq = icmp ult i64 %i.jp, %i.gn
  br i1 %i.jq, label %bb.cm, label %.split443.us.invoke.i

bb.cl:                                            ; preds = %bb.cn, %bb.cj
  %i.jr = add i64 %.sroa.038.1469.i, %.pre-phi694.i ; 2 uses
  %i.js = icmp ult i64 %i.jr, %i.gn
  br i1 %i.js, label %bb.co, label %.split443.us.invoke.i

bb.cm:                                            ; preds = %bb.ck
  %i.jt = add i64 %i.jc, %.sroa.038.1469.i        ; 3 uses
  %i.ju = icmp ult i64 %i.jt, %i.gn
  br i1 %i.ju, label %bb.cn, label %.split446.us.invoke.i

bb.cn:                                            ; preds = %bb.cm
  %i.jv = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.jp
  %i.jw = load i8, ptr %i.jv, align 1, !noalias !16895, !noundef !28
  %i.jx = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.jt
  %i.jy = load i8, ptr %i.jx, align 1, !noalias !16895, !noundef !28
  %i.jz = add i8 %i.jy, 1
  %i.ka = icmp eq i8 %i.jw, %i.jz
  br i1 %i.ka, label %._crit_edge.i, label %bb.cl

bb.co:                                            ; preds = %bb.cl
  %i.kb = add i64 %i.jd, %.sroa.038.1469.i        ; 2 uses
  %i.kc = icmp ult i64 %i.kb, %i.gn
  br i1 %i.kc, label %bb.cp, label %.split446.us.invoke.i

bb.cp:                                            ; preds = %bb.co
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.jr
  %i.ke = load i8, ptr %i.kd, align 1, !noalias !16895, !noundef !28
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.kb
  %i.kg = load i8, ptr %i.kf, align 1, !noalias !16895, !noundef !28
  %i.kh = icmp ult i8 %i.ke, %i.kg
  br i1 %i.kh, label %bb.cq, label %._crit_edge.i

bb.cq:                                            ; preds = %bb.cp
  %i.ki = add nuw i64 %.sroa.038.1469.i, 1        ; 2 uses
  %i.kj = icmp ult i64 %i.ki, %i.gc
  br i1 %i.kj, label %bb.ce, label %._crit_edge.i

bb.cr:                                            ; preds = %bb.dc
  %exitcond.not.i = icmp eq i64 %.pre-phi696.i, %umax.i86
  br i1 %exitcond.not.i, label %._crit_edge1804, label %.lr.ph1803

.lr.ph1803:                                       ; preds = %.preheader56.i, %bb.cr
  %.sroa.09.1.i1802 = phi i64 [ %.pre-phi696.i, %bb.cr ], [ %.sroa.09.0490.i, %.preheader56.i ] ; 6 uses
  br i1 %or.cond170.i, label %bb.ct, label %bb.cv

._crit_edge1804:                                  ; preds = %bb.cr, %bb.da, %bb.dc, %.preheader56.i
  %.sroa.09.1.lcssa.i = phi i64 [ %umax.i86, %.preheader56.i ], [ %umax.i86, %bb.cr ], [ %.sroa.09.1.i1802, %bb.da ], [ %.sroa.09.1.i1802, %bb.dc ] ; 3 uses
  %i.kk = sub nuw i64 %.sroa.09.1.lcssa.i, %.sroa.09.0490.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.kl = load i64, ptr %i.gu, align 8, !alias.scope !16900, !noalias !16895, !noundef !28 ; 3 uses
  %i.km = load i64, ptr %i.gt, align 8, !range !43, !alias.scope !16900, !noalias !16895, !noundef !28
  %i.kn = icmp eq i64 %i.kl, %i.km
  br i1 %i.kn, label %bb.cs, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i

bb.cs:                                            ; preds = %._crit_edge1804
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gt) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16895

bb.ct:                                            ; preds = %.lr.ph1803
  %i.ko = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cu unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16895

bb.cu:                                            ; preds = %bb.ct
  br i1 %i.ko, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i.thread, label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.lr.ph1803
  %i.kp = mul i64 %.sroa.09.1.i1802, %i.gl        ; 2 uses
  %i.kq = add i64 %.sroa.09.1.i1802, %invariant.op467.i ; 2 uses
  %i.kr = icmp ult i64 %i.kq, %i.bc
  br i1 %i.kr, label %bb.cw, label %11

11:                                               ; preds = %bb.cv
  %12 = add i64 %.sroa.09.0490.i, %invariant.op467.i
  %umax687.le.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %12)
  br label %.invoke.i

bb.cw:                                            ; preds = %bb.cv
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.kq
  %.val206.i = load i64, ptr %i.ks, align 8, !noalias !16895, !noundef !28
  %.val207.i = load i64, ptr %i.ib, align 8, !noalias !16895, !noundef !28
  %i.kt = icmp eq i64 %.val206.i, %.val207.i
  br i1 %i.kt, label %bb.cx, label %._crit_edge691.i

._crit_edge691.i:                                 ; preds = %bb.cw
  %.pre695.i = add i64 %.sroa.09.1.i1802, 1       ; 2 uses
  %.pre697.i = mul i64 %.pre695.i, %i.gl
  br label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.ku = add i64 %i.kp, %.sroa.038.0489.i        ; 3 uses
  %i.kv = icmp ult i64 %i.ku, %i.gn
  br i1 %i.kv, label %bb.cz, label %.split443.us.invoke.i

bb.cy:                                            ; preds = %bb.da, %._crit_edge691.i
  %.pre-phi698.i.a = phi i64 [ %.pre697.i, %._crit_edge691.i ], [ %i.kz, %bb.da ]
  %.pre-phi696.i = phi i64 [ %.pre695.i, %._crit_edge691.i ], [ %i.ky, %bb.da ] ; 2 uses
  %i.kw = add i64 %.pre-phi698.i.a, %.sroa.038.0489.i ; 3 uses
  %i.kx = icmp ult i64 %i.kw, %i.gn
  br i1 %i.kx, label %bb.db, label %.split443.us.invoke.i

bb.cz:                                            ; preds = %bb.cx
  %i.ky = add i64 %.sroa.09.1.i1802, 1            ; 2 uses
  %i.kz = mul i64 %i.ky, %i.gl                    ; 2 uses
  %i.la = add i64 %i.kz, %i.iu                    ; 3 uses
  %i.lb = icmp ult i64 %i.la, %i.gn
  br i1 %i.lb, label %bb.da, label %.split446.us.invoke.i

bb.da:                                            ; preds = %bb.cz
  %i.lc = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.ku
  %i.ld = load i8, ptr %i.lc, align 1, !noalias !16895, !noundef !28
  %i.le = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.la
  %i.lf = load i8, ptr %i.le, align 1, !noalias !16895, !noundef !28
  %i.lg = add i8 %i.lf, 1
  %i.lh = icmp eq i8 %i.ld, %i.lg
  br i1 %i.lh, label %._crit_edge1804, label %bb.cy

bb.db:                                            ; preds = %bb.cy
  %i.li = add i64 %i.kp, %i.iu                    ; 3 uses
  %i.lj = icmp ult i64 %i.li, %i.gn
  br i1 %i.lj, label %bb.dc, label %.split446.us.invoke.i

bb.dc:                                            ; preds = %bb.db
  %i.lk = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.kw
  %i.ll = load i8, ptr %i.lk, align 1, !noalias !16895, !noundef !28
  %i.lm = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.li
  %i.ln = load i8, ptr %i.lm, align 1, !noalias !16895, !noundef !28
  %.not167.i = icmp ult i8 %i.ll, %i.ln
  br i1 %.not167.i, label %._crit_edge1804, label %bb.cr

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.dd, %._crit_edge479.i, %bb.cs, %._crit_edge1804, %bb.cf, %._crit_edge.i
  %.sink959.i = phi i64 [ %i.jh, %._crit_edge.i ], [ %i.lu, %._crit_edge479.i ], [ %i.lu, %bb.dd ], [ %i.jh, %bb.cf ], [ %i.kl, %bb.cs ], [ %i.kl, %._crit_edge1804 ] ; 3 uses
  %.sink956.i = phi i64 [ 1, %._crit_edge.i ], [ 0, %._crit_edge479.i ], [ 0, %bb.dd ], [ 1, %bb.cf ], [ 2, %bb.cs ], [ 2, %._crit_edge1804 ]
  %.sink953.i = phi i64 [ %i.jg, %._crit_edge.i ], [ %i.hr, %._crit_edge479.i ], [ %i.hr, %bb.dd ], [ %i.jg, %bb.cf ], [ %i.hr, %bb.cs ], [ %i.hr, %._crit_edge1804 ]
  %.sink.i = phi i64 [ %i.hr, %._crit_edge.i ], [ %i.lt, %._crit_edge479.i ], [ %i.lt, %bb.dd ], [ %i.hr, %bb.cf ], [ %i.kk, %bb.cs ], [ %i.kk, %._crit_edge1804 ]
  %.sroa.038.3.i = phi i64 [ %.sroa.038.1.lcssa.i, %._crit_edge.i ], [ %.sroa.038.4.lcssa.i, %._crit_edge479.i ], [ %.sroa.038.4.lcssa.i, %bb.dd ], [ %.sroa.038.1.lcssa.i, %bb.cf ], [ %.sroa.038.0489.i, %bb.cs ], [ %.sroa.038.0489.i, %._crit_edge1804 ] ; 5 uses
  %.sroa.09.3.i = phi i64 [ %.sroa.09.0490.i, %._crit_edge.i ], [ %.sroa.09.4.lcssa.i, %._crit_edge479.i ], [ %.sroa.09.4.lcssa.i, %bb.dd ], [ %.sroa.09.0490.i, %bb.cf ], [ %.sroa.09.1.lcssa.i, %bb.cs ], [ %.sroa.09.1.lcssa.i, %._crit_edge1804 ] ; 5 uses
  %i.lo = load ptr, ptr %i.gv, align 8, !noalias !16895, !nonnull !28, !noundef !28
  %i.lp = getelementptr inbounds nuw [40 x i8], ptr %i.lo, i64 %.sink959.i ; 4 uses
  store i64 %.sink956.i, ptr %i.lp, align 8, !noalias !16895
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store i64 %i.hq, ptr %.sroa.439.0..sroa_idx.i, align 8, !noalias !16895
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  store i64 %.sink953.i, ptr %.sroa.540.0..sroa_idx.i, align 8, !noalias !16895
  %.sroa.641.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  store i64 %.sink.i, ptr %.sroa.641.0..sroa_idx.i, align 8, !noalias !16895
  %i.lq = add i64 %.sink959.i, 1                  ; 4 uses
  store i64 %i.lq, ptr %i.gu, align 8, !noalias !16895
  %i.lr = icmp ult i64 %.sroa.09.3.i, %i.gd       ; 3 uses
  %i.ls = icmp ult i64 %.sroa.038.3.i, %i.gc      ; 2 uses
  %or.cond.i87 = select i1 %i.lr, i1 %i.ls, i1 false
  br i1 %or.cond.i87, label %bb.bn, label %._crit_edge493.i

._crit_edge479.i:                                 ; preds = %bb.dn, %bb.dm, %bb.dj, %.preheader.i
  %.sroa.038.4.lcssa.i = phi i64 [ %.sroa.038.0489.i, %.preheader.i ], [ %i.mm, %bb.dn ], [ %.sroa.038.4476.i, %bb.dj ], [ %.sroa.038.4476.i, %bb.dm ] ; 3 uses
  %.sroa.09.4.lcssa.i = phi i64 [ %.sroa.09.0490.i, %.preheader.i ], [ %i.mk, %bb.dn ], [ %.sroa.09.4477.i, %bb.dj ], [ %.sroa.09.4477.i, %bb.dm ] ; 2 uses
  %i.lt = sub nuw i64 %.sroa.038.4.lcssa.i, %.sroa.038.0489.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.lu = load i64, ptr %i.gu, align 8, !alias.scope !16901, !noalias !16895, !noundef !28 ; 3 uses
  %i.lv = load i64, ptr %i.gt, align 8, !range !43, !alias.scope !16901, !noalias !16895, !noundef !28
  %i.lw = icmp eq i64 %i.lu, %i.lv
  br i1 %i.lw, label %bb.dd, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i

bb.dd:                                            ; preds = %._crit_edge479.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gt) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16895

.lr.ph478.i:                                      ; preds = %.preheader.i, %bb.dn
  %.sroa.09.4477.i = phi i64 [ %i.mk, %bb.dn ], [ %.sroa.09.0490.i, %.preheader.i ] ; 5 uses
  %.sroa.038.4476.i = phi i64 [ %i.mm, %bb.dn ], [ %.sroa.038.0489.i, %.preheader.i ] ; 6 uses
  %i.lx = and i64 %.sroa.038.4476.i, 1023
  %i.ly = icmp eq i64 %i.lx, 0
  %or.cond180.i = select i1 %.sroa.05.0.not491.i, i1 %i.ly, i1 false
  br i1 %or.cond180.i, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dh, %.lr.ph478.i
  %i.lz = mul i64 %.sroa.09.4477.i, %i.gl
  %i.ma = add i64 %.sroa.09.4477.i, %invariant.op467.i ; 2 uses
  %i.mb = icmp ult i64 %i.ma, %i.bc
  br i1 %i.mb, label %bb.di, label %bb.df

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257) #74
          to label %.noexc189.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16895

.noexc189.i:                                      ; preds = %bb.df
  unreachable

bb.dg:                                            ; preds = %.lr.ph478.i
  %i.mc = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dh unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16895

bb.dh:                                            ; preds = %bb.dg
  br i1 %i.mc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i.thread, label %bb.de

bb.di:                                            ; preds = %bb.de
  %i.md = add i64 %.sroa.038.4476.i, %invariant.op.i85 ; 2 uses
  %i.me = icmp ult i64 %i.md, %i.az
  br i1 %i.me, label %bb.dj, label %.invoke.i

bb.dj:                                            ; preds = %bb.di
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ma
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.md
  %.val204.i = load i64, ptr %i.mf, align 8, !noalias !16895, !noundef !28
  %.val205.i = load i64, ptr %i.mg, align 8, !noalias !16895, !noundef !28
  %i.mh = icmp eq i64 %.val204.i, %.val205.i
  br i1 %i.mh, label %bb.dk, label %._crit_edge479.i

bb.dk:                                            ; preds = %bb.dj
  %i.mi = add i64 %i.lz, %.sroa.038.4476.i        ; 3 uses
  %i.mj = icmp ult i64 %i.mi, %i.gn
  br i1 %i.mj, label %bb.dl, label %.split443.us.invoke.i

bb.dl:                                            ; preds = %bb.dk
  %i.mk = add nuw i64 %.sroa.09.4477.i, 1         ; 4 uses
  %i.ml = mul i64 %i.mk, %i.gl
  %i.mm = add nuw i64 %.sroa.038.4476.i, 1        ; 4 uses
  %i.mn = add i64 %i.mm, %i.ml                    ; 3 uses
  %i.mo = icmp ult i64 %i.mn, %i.gn
  br i1 %i.mo, label %bb.dm, label %.split446.us.invoke.i

bb.dm:                                            ; preds = %bb.dl
  %i.mp = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.mi
  %i.mq = load i8, ptr %i.mp, align 1, !noalias !16895, !noundef !28
  %i.mr = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.mn
  %i.ms = load i8, ptr %i.mr, align 1, !noalias !16895, !noundef !28
  %i.mt = add i8 %i.ms, 1
  %i.mu = icmp eq i8 %i.mq, %i.mt
  br i1 %i.mu, label %bb.dn, label %._crit_edge479.i

bb.dn:                                            ; preds = %bb.dm
  %i.mv = icmp ult i64 %i.mk, %i.gd
  %i.mw = icmp ult i64 %i.mm, %i.gc
  %or.cond177.i = and i1 %i.mv, %i.mw
  br i1 %or.cond177.i, label %.lr.ph478.i, label %._crit_edge479.i

.loopexit64.i:                                    ; preds = %bb.do, %bb.dq, %bb.bv, %bb.eb
  br i1 %i.go, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i.thread

bb.do:                                            ; preds = %.lr.ph466.split.i
  br i1 %i.gx, label %.loopexit64.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.do
  %i.mx = mul i64 %i.gw, %i.gl                    ; 2 uses
  %i.my = mul i64 %.sroa.0102.0465.i, %i.gl       ; 2 uses
  %.reass.i88 = add i64 %i.gw, %invariant.op467.i ; 4 uses
  %i.mz = icmp ult i64 %.reass.i88, %i.bc
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.reass.i88
  %.fr.i = freeze i1 %i.mz
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.dz
  %.sroa.0105.0433.us.i = phi i64 [ %i.nb, %bb.dz ], [ %i.gc, %.lr.ph.i ] ; 3 uses
  %i.nb = add i64 %.sroa.0105.0433.us.i, -1       ; 6 uses
  %i.nc = and i64 %i.nb, 1023
  %i.nd = icmp eq i64 %i.nc, 0
  br i1 %i.nd, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %.lr.ph.split.us.i
  %i.ne = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16895

bb.dq:                                            ; preds = %bb.dp
  br i1 %i.ne, label %.loopexit64.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %.lr.ph.split.us.i
  %.reass.us.i = add i64 %i.nb, %invariant.op.i85 ; 3 uses
  %i.nf = icmp ult i64 %.reass.us.i, %i.az
  br i1 %i.nf, label %bb.ds, label %.invoke.i

bb.ds:                                            ; preds = %bb.dr
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.reass.us.i
  %.val.us.i = load i64, ptr %i.na, align 8, !noalias !16895, !noundef !28
  %.val203.us.i = load i64, ptr %i.ng, align 8, !noalias !16895, !noundef !28
  %i.nh = icmp eq i64 %.val.us.i, %.val203.us.i
  br i1 %i.nh, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ni = add i64 %i.nb, %i.my                    ; 3 uses
  %i.nj = icmp ult i64 %i.ni, %i.gn
  br i1 %i.nj, label %bb.du, label %.split443.us.invoke.i

bb.du:                                            ; preds = %bb.dt
  %i.nk = add i64 %.sroa.0105.0433.us.i, %i.mx    ; 3 uses
  %i.nl = icmp ult i64 %i.nk, %i.gn
  br i1 %i.nl, label %bb.dv, label %.split446.us.invoke.i

bb.dv:                                            ; preds = %bb.du
  %i.nm = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.ni
  %i.nn = load i8, ptr %i.nm, align 1, !noalias !16895, !noundef !28
  %i.no = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.nk
  %i.np = load i8, ptr %i.no, align 1, !noalias !16895, !noundef !28
  %..i.us.i = tail call noundef i8 @llvm.umax.i8(i8 %i.np, i8 %i.nn)
  br label %bb.dy

bb.dw:                                            ; preds = %bb.ds
  %i.nq = add i64 %.sroa.0105.0433.us.i, %i.my    ; 3 uses
  %i.nr = icmp ult i64 %i.nq, %i.gn
  br i1 %i.nr, label %bb.dx, label %.split443.us.invoke.i

bb.dx:                                            ; preds = %bb.dw
  %i.ns = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.nq
  %i.nt = load i8, ptr %i.ns, align 1, !noalias !16895, !noundef !28
  %i.nu = add i8 %i.nt, 1
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dv
  %.sroa.04.0.us.i = phi i8 [ %i.nu, %bb.dx ], [ %..i.us.i, %bb.dv ]
  %i.nv = add i64 %i.nb, %i.mx                    ; 3 uses
  %i.nw = icmp ult i64 %i.nv, %i.gn
  br i1 %i.nw, label %bb.dz, label %.split446.us.invoke.i

bb.dz:                                            ; preds = %bb.dy
  %i.nx = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.nv
  store i8 %.sroa.04.0.us.i, ptr %i.nx, align 1, !noalias !16895
  %.not168.us.i = icmp eq i64 %i.nb, 0
  br i1 %.not168.us.i, label %..loopexit68_crit_edge.split.us.i, label %.lr.ph.split.us.i

..loopexit68_crit_edge.split.us.i:                ; preds = %bb.dz
  %.not.i89 = icmp eq i64 %i.gw, 0
  br i1 %.not.i89, label %.lr.ph492.i, label %.lr.ph466.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ny = and i64 %i.gc, 1023
  %i.nz = icmp eq i64 %i.ny, 1
  br i1 %i.nz, label %bb.ea, label %.invoke.i

bb.ea:                                            ; preds = %.lr.ph.split.i
  %i.oa = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.eb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16895

bb.eb:                                            ; preds = %bb.ea
  br i1 %i.oa, label %.loopexit64.i, label %.invoke.i

.split443.us.invoke.i:                            ; preds = %bb.dw, %bb.dt, %bb.bz, %bb.by, %bb.cy, %bb.cx, %bb.ck, %bb.cl, %bb.dk
  %i.ob = phi i64 [ %i.id, %bb.by ], [ %i.kw, %bb.cy ], [ %i.mi, %bb.dk ], [ %i.jp, %bb.ck ], [ %i.gn, %bb.cl ], [ %i.ku, %bb.cx ], [ %i.if, %bb.bz ], [ %i.ni, %bb.dt ], [ %i.nq, %bb.dw ]
  %i.oc = phi ptr [ @243, %bb.by ], [ @255, %bb.cy ], [ @259, %bb.dk ], [ @248, %bb.ck ], [ @250, %bb.cl ], [ @253, %bb.cx ], [ @245, %bb.bz ], [ @263, %bb.dt ], [ @265, %bb.dw ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ob, i64 noundef %i.gn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oc) #70
          to label %.split443.us.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16895

.split443.us.cont.i:                              ; preds = %.split443.us.invoke.i
  unreachable

.split446.us.invoke.i:                            ; preds = %bb.dy, %bb.du, %bb.cc, %bb.ca, %bb.db, %bb.cz, %bb.cm, %bb.co, %bb.dl
  %i.od = phi i64 [ %i.ik, %bb.ca ], [ %i.li, %bb.db ], [ %i.mn, %bb.dl ], [ %i.jt, %bb.cm ], [ %i.gn, %bb.co ], [ %i.la, %bb.cz ], [ %i.iv, %bb.cc ], [ %i.nk, %bb.du ], [ %i.nv, %bb.dy ]
  %i.oe = phi ptr [ @244, %bb.ca ], [ @256, %bb.db ], [ @260, %bb.dl ], [ @249, %bb.cm ], [ @251, %bb.co ], [ @254, %bb.cz ], [ @246, %bb.cc ], [ @264, %bb.du ], [ @266, %bb.dy ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.od, i64 noundef %i.gn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oe) #70
          to label %.split446.us.cont.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16895

.split446.us.cont.i:                              ; preds = %.split446.us.invoke.i
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread.i105, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi44.i, %.thread.i ], [ %lpad.loopexit.split-lp1870, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1946, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.phi44.i106, %.thread.i105 ]
  resume { ptr, i32 } %common.resume.op

bb.ec:                                            ; preds = %bb.bg
  br i1 %i.gk, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.of = add i64 %i.gd, 1                        ; 11 uses
  %i.og = add i64 %i.gc, 1
  %i.oh = mul i64 %i.og, %i.of                    ; 29 uses
  %.not.i.i.i92 = icmp slt i64 %i.oh, 0
  br i1 %.not.i.i.i92, label %bb.eh, label %bb.ee, !prof !42

bb.ee:                                            ; preds = %bb.ed
  %i.oi = icmp eq i64 %i.oh, 0                    ; 3 uses
  br i1 %i.oi, label %.lr.ph481.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !16902
  %i.oj = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.oh, i64 noundef range(i64 1, 9) 1) #69, !noalias !16902 ; 2 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.ol = ptrtoint ptr %i.oj to i64
  br label %.lr.ph481.i

bb.eh:                                            ; preds = %bb.ef, %bb.ed
  %.sroa.4.0.ph.i.i174 = phi i64 [ 1, %bb.ef ], [ 0, %bb.ed ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i174, i64 %i.oh) #70, !noalias !16903
  unreachable

.lr.ph481.i:                                      ; preds = %bb.ee, %bb.eg
  %.sroa.10.0.i.i94 = phi i64 [ %i.ol, %bb.eg ], [ 1, %bb.ee ]
  %i.om = inttoptr i64 %.sroa.10.0.i.i94 to ptr   ; 21 uses
  %invariant.op.i109 = sub i64 %.sroa.0211.0, %i.bd ; 4 uses
  %invariant.op482.i = sub i64 %.sroa.0.0, %i.ba  ; 4 uses
  br label %.lr.ph481.split.i

.lr.ph508.i:                                      ; preds = %..loopexit68_crit_edge.split.us.i172
  %i.on = getelementptr inbounds nuw i8, ptr %.val51, i64 120 ; 10 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.val51, i64 136 ; 6 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.val51, i64 128 ; 3 uses
  br label %bb.ei

.lr.ph481.split.i:                                ; preds = %.lr.ph481.i, %..loopexit68_crit_edge.split.us.i172
  %.sroa.0102.0480.i = phi i64 [ %i.oq, %..loopexit68_crit_edge.split.us.i172 ], [ %i.gc, %.lr.ph481.i ] ; 2 uses
  %i.oq = add i64 %.sroa.0102.0480.i, -1          ; 4 uses
  %i.or = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16904

._crit_edge509.i:                                 ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140
  br i1 %i.tl, label %bb.ej, label %bb.el

bb.ei:                                            ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140, %.lr.ph508.i
  %.sroa.05.0.not507.i = phi i1 [ true, %.lr.ph508.i ], [ false, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140 ] ; 3 uses
  %.sroa.09.0506.i = phi i64 [ 0, %.lr.ph508.i ], [ %.sroa.09.3.i142, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140 ] ; 15 uses
  %.sroa.039.0505.i = phi i64 [ 0, %.lr.ph508.i ], [ %.sroa.039.3.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140 ] ; 17 uses
  %i.os = and i64 %.sroa.039.0505.i, 1023
  %i.ot = icmp eq i64 %i.os, 0
  %or.cond170.i120 = select i1 %.sroa.05.0.not507.i, i1 %i.ot, i1 false ; 2 uses
  br i1 %or.cond170.i120, label %bb.ep, label %bb.eo

bb.ej:                                            ; preds = %._crit_edge509.i
  %i.ou = add i64 %.sroa.09.3.i142, %.sroa.0.0    ; 2 uses
  %i.ov = sub nuw i64 %i.gc, %.sroa.09.3.i142
  %i.ow = add i64 %.sroa.039.3.i, %.sroa.0211.0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.ox = load i64, ptr %i.on, align 8, !range !43, !alias.scope !16905, !noalias !16904, !noundef !28
  %i.oy = icmp eq i64 %i.tk, %i.ox
  br i1 %i.oy, label %bb.ek, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116

bb.ek:                                            ; preds = %bb.ej
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.on) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16904

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116: ; preds = %bb.ek, %bb.ej
  %i.oz = load ptr, ptr %i.op, align 8, !alias.scope !16905, !noalias !16904, !nonnull !28, !noundef !28
  %i.pa = getelementptr inbounds nuw [40 x i8], ptr %i.oz, i64 %i.tk ; 4 uses
  store i64 1, ptr %i.pa, align 8, !noalias !16904
  %.sroa.424.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  store i64 %i.ou, ptr %.sroa.424.0..sroa_idx.i117, align 8, !noalias !16904
  %.sroa.525.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.pa, i64 16
  store i64 %i.ov, ptr %.sroa.525.0..sroa_idx.i118, align 8, !noalias !16904
  %.sroa.626.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.pa, i64 24
  store i64 %i.ow, ptr %.sroa.626.0..sroa_idx.i119, align 8, !noalias !16904
  %i.pb = add i64 %.sink971.i, 2                  ; 2 uses
  store i64 %i.pb, ptr %i.oo, align 8, !alias.scope !16905, !noalias !16904
  br i1 %i.tm, label %bb.em, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit

bb.el:                                            ; preds = %._crit_edge509.i
  br i1 %i.tm, label %._crit_edge1051, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit

._crit_edge1051:                                  ; preds = %bb.el
  %.pre1057 = add i64 %.sroa.09.3.i142, %.sroa.0.0
  %.pre1059 = add i64 %.sroa.039.3.i, %.sroa.0211.0
  br label %bb.em

.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fo, %bb.gb, %bb.fb, %bb.fn, %bb.fa, %.split446.us.invoke.i128, %bb.ga
  %lpad.loopexit.split-lp1919 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i105

.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gk, %bb.fy, %bb.ep, %.lr.ph481.split.i, %.split443.us.invoke.i126, %bb.gv, %.invoke.i121, %bb.en, %bb.ek
  %lpad.loopexit.split-lp1946 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.oi, label %common.resume, label %.thread.i105

.thread.i105:                                     ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi44.i106 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1946, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1919, %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.om, i64 noundef %i.oh, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !16906
  br label %common.resume

bb.em:                                            ; preds = %._crit_edge1051, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116
  %.pre-phi1060 = phi i64 [ %.pre1059, %._crit_edge1051 ], [ %i.ow, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116 ]
  %.pre-phi1058 = phi i64 [ %.pre1057, %._crit_edge1051 ], [ %i.ou, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116 ]
  %i.pc = phi i64 [ %i.tk, %._crit_edge1051 ], [ %i.pb, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116 ] ; 3 uses
  %i.pd = sub nuw i64 %i.gd, %.sroa.039.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.pe = load i64, ptr %i.on, align 8, !range !43, !alias.scope !16907, !noalias !16904, !noundef !28
  %i.pf = icmp eq i64 %i.pc, %i.pe
  br i1 %i.pf, label %bb.en, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i99

bb.en:                                            ; preds = %bb.em
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.on) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16904

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i99: ; preds = %bb.en, %bb.em
  %i.pg = load ptr, ptr %i.op, align 8, !alias.scope !16907, !noalias !16904, !nonnull !28, !noundef !28
  %i.ph = getelementptr inbounds nuw [40 x i8], ptr %i.pg, i64 %i.pc ; 4 uses
  store i64 2, ptr %i.ph, align 8, !noalias !16904
  %.sroa.434.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  store i64 %.pre-phi1058, ptr %.sroa.434.0..sroa_idx.i100, align 8, !noalias !16904
  %.sroa.535.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  store i64 %.pre-phi1060, ptr %.sroa.535.0..sroa_idx.i101, align 8, !noalias !16904
  %.sroa.636.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  store i64 %i.pd, ptr %.sroa.636.0..sroa_idx.i102, align 8, !noalias !16904
  %i.pi = add i64 %i.pc, 1
  store i64 %i.pi, ptr %i.oo, align 8, !alias.scope !16907, !noalias !16904
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit

bb.eo:                                            ; preds = %bb.eq, %bb.ei
  %i.pj = mul i64 %.sroa.09.0506.i, %i.of         ; 4 uses
  %i.pk = add i64 %.sroa.09.0506.i, %.sroa.0.0    ; 2 uses
  %i.pl = add i64 %.sroa.039.0505.i, %.sroa.0211.0 ; 7 uses
  %i.pm = sub i64 %i.pl, %i.bd                    ; 3 uses
  %i.pn = icmp ult i64 %i.pm, %i.bc
  br i1 %i.pn, label %bb.er, label %.invoke.i121

.invoke.i121:                                     ; preds = %bb.gm, %bb.er, %bb.eo, %bb.fd, %bb.gd, %bb.gy, %bb.gx, %13
  %i.po = phi i64 [ %.reass483.i, %bb.gy ], [ %.reass.i163, %bb.gx ], [ %i.bc, %bb.fd ], [ %umax703.le.i, %13 ], [ %i.pm, %bb.eo ], [ %i.az, %bb.gd ], [ %i.pt, %bb.er ], [ %.reass.us.i166, %bb.gm ]
  %i.pp = phi i64 [ %i.az, %bb.gy ], [ %i.bc, %bb.gx ], [ %i.bc, %bb.fd ], [ %i.az, %13 ], [ %i.bc, %bb.eo ], [ %i.az, %bb.gd ], [ %i.az, %bb.er ], [ %i.bc, %bb.gm ]
  %i.pq = phi ptr [ @288, %bb.gy ], [ @287, %bb.gx ], [ @273, %bb.fd ], [ @278, %13 ], [ @267, %bb.eo ], [ @284, %bb.gd ], [ @268, %bb.er ], [ @287, %bb.gm ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.po, i64 noundef %i.pp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pq) #74
          to label %.cont.i122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16904

.cont.i122:                                       ; preds = %.invoke.i121
  unreachable

bb.ep:                                            ; preds = %bb.ei
  %i.pr = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.eq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16904

bb.eq:                                            ; preds = %bb.ep
  br i1 %i.pr, label %.loopexit64.i159, label %bb.eo

bb.er:                                            ; preds = %bb.eo
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.pm ; 2 uses
  %i.pt = sub i64 %i.pk, %i.ba                    ; 3 uses
  %i.pu = icmp ult i64 %i.pt, %i.az
  br i1 %i.pu, label %bb.es, label %.invoke.i121

bb.es:                                            ; preds = %bb.er
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.pt ; 2 uses
  %.val210.i123 = load i64, ptr %i.ps, align 8, !noalias !16904, !noundef !28
  %.val211.i124 = load i64, ptr %i.pv, align 8, !noalias !16904, !noundef !28
  %i.pw = icmp eq i64 %.val210.i123, %.val211.i124
  br i1 %i.pw, label %bb.et, label %._crit_edge708.i

._crit_edge708.i:                                 ; preds = %bb.es
  %.pre.i125 = add nuw i64 %.sroa.09.0506.i, 1
  %.pre709.i = mul i64 %.pre.i125, %i.of
  br label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.px = add i64 %i.pj, %.sroa.039.0505.i        ; 3 uses
  %i.py = icmp ult i64 %i.px, %i.oh
  br i1 %i.py, label %bb.ev, label %.split443.us.invoke.i126

bb.eu:                                            ; preds = %bb.ew, %._crit_edge708.i
  %.pre-phi710.i = phi i64 [ %.pre709.i, %._crit_edge708.i ], [ %i.qc, %bb.ew ] ; 3 uses
  %i.pz = add i64 %.pre-phi710.i, %.sroa.039.0505.i ; 3 uses
  %i.qa = icmp ult i64 %i.pz, %i.oh
  br i1 %i.qa, label %bb.ex, label %.split443.us.invoke.i126

bb.ev:                                            ; preds = %bb.et
  %i.qb = add nuw i64 %.sroa.09.0506.i, 1
  %i.qc = mul i64 %i.qb, %i.of                    ; 2 uses
  %i.qd = add nuw i64 %.sroa.039.0505.i, 1
  %i.qe = add i64 %i.qd, %i.qc                    ; 3 uses
  %i.qf = icmp ult i64 %i.qe, %i.oh
  br i1 %i.qf, label %bb.ew, label %.split446.us.invoke.i128

bb.ew:                                            ; preds = %bb.ev
  %i.qg = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.px
  %i.qh = load i8, ptr %i.qg, align 1, !noalias !16904, !noundef !28
  %i.qi = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.qe
  %i.qj = load i8, ptr %i.qi, align 1, !noalias !16904, !noundef !28
  %i.qk = add i8 %i.qj, 1
  %i.ql = icmp eq i8 %i.qh, %i.qk
  br i1 %i.ql, label %.preheader.i152, label %bb.eu

.preheader.i152:                                  ; preds = %bb.ew
  %i.qm = icmp ult i64 %.sroa.09.0506.i, %i.gc
  %i.qn = icmp ult i64 %.sroa.039.0505.i, %i.gd
  %or.cond177491.i = select i1 %i.qm, i1 %i.qn, i1 false
  br i1 %or.cond177491.i, label %.lr.ph494.i, label %._crit_edge495.i

bb.ex:                                            ; preds = %bb.eu
  %i.qo = add nuw i64 %.sroa.039.0505.i, 1        ; 3 uses
  %i.qp = add i64 %i.qo, %i.pj                    ; 3 uses
  %i.qq = icmp ult i64 %i.qp, %i.oh
  br i1 %i.qq, label %bb.ey, label %.split446.us.invoke.i128

bb.ey:                                            ; preds = %bb.ex
  %i.qr = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.pz
  %i.qs = load i8, ptr %i.qr, align 1, !noalias !16904, !noundef !28
  %i.qt = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.qp
  %i.qu = load i8, ptr %i.qt, align 1, !noalias !16904, !noundef !28
  %.not164.i131 = icmp ult i8 %i.qs, %i.qu
  br i1 %.not164.i131, label %.preheader51.i147, label %.preheader56.i132

.preheader56.i132:                                ; preds = %bb.ey
  %umax.i133 = tail call i64 @llvm.umax.i64(i64 %.sroa.09.0506.i, i64 %i.gc) ; 3 uses
  %exitcond.not.i1351793.not = icmp ult i64 %.sroa.09.0506.i, %i.gc
  br i1 %exitcond.not.i1351793.not, label %.lr.ph1795, label %._crit_edge1796

.preheader51.i147:                                ; preds = %bb.ey
  %i.qv = icmp ult i64 %.sroa.039.0505.i, %i.gd
  br i1 %i.qv, label %.lr.ph486.i, label %._crit_edge.i148

.lr.ph486.i:                                      ; preds = %.preheader51.i147
  %i.qw = add i64 %.pre-phi710.i, 1
  %i.qx = add i64 %i.pj, 1
  br label %bb.ez

bb.ez:                                            ; preds = %bb.fl, %.lr.ph486.i
  %.sroa.039.1485.i = phi i64 [ %.sroa.039.0505.i, %.lr.ph486.i ], [ %i.sc, %bb.fl ] ; 9 uses
  %i.qy = and i64 %.sroa.039.1485.i, 1023
  %i.qz = icmp eq i64 %i.qy, 0
  %or.cond173.i149 = and i1 %.sroa.05.0.not507.i, %i.qz
  br i1 %or.cond173.i149, label %bb.fb, label %bb.fd

._crit_edge.i148:                                 ; preds = %bb.fl, %bb.fk, %bb.fi, %.preheader51.i147
  %.sroa.039.1.lcssa.i = phi i64 [ %.sroa.039.0505.i, %.preheader51.i147 ], [ %i.gd, %bb.fl ], [ %.sroa.039.1485.i, %bb.fk ], [ %.sroa.039.1485.i, %bb.fi ] ; 3 uses
  %i.ra = sub i64 %.sroa.039.1.lcssa.i, %.sroa.039.0505.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.rb = load i64, ptr %i.oo, align 8, !alias.scope !16908, !noalias !16904, !noundef !28 ; 3 uses
  %i.rc = load i64, ptr %i.on, align 8, !range !43, !alias.scope !16908, !noalias !16904, !noundef !28
  %i.rd = icmp eq i64 %i.rb, %i.rc
  br i1 %i.rd, label %bb.fa, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140

bb.fa:                                            ; preds = %._crit_edge.i148
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.on) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16904

bb.fb:                                            ; preds = %bb.ez
  %i.re = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fc unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16904

bb.fc:                                            ; preds = %bb.fb
  br i1 %i.re, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread337, label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.ez
  %i.rf = add i64 %.sroa.039.1485.i, %invariant.op.i109 ; 2 uses
  %i.rg = icmp ult i64 %i.rf, %i.bc
  br i1 %i.rg, label %bb.fe, label %.invoke.i121

bb.fe:                                            ; preds = %bb.fd
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.rf
  %.val208.i150 = load i64, ptr %i.rh, align 8, !noalias !16904, !noundef !28
  %.val209.i151 = load i64, ptr %i.pv, align 8, !noalias !16904, !noundef !28
  %i.ri = icmp eq i64 %.val208.i150, %.val209.i151
  br i1 %i.ri, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.rj = add i64 %.sroa.039.1485.i, %i.pj        ; 3 uses
  %i.rk = icmp ult i64 %i.rj, %i.oh
  br i1 %i.rk, label %bb.fh, label %.split443.us.invoke.i126

bb.fg:                                            ; preds = %bb.fi, %bb.fe
  %i.rl = add i64 %.sroa.039.1485.i, %.pre-phi710.i ; 2 uses
  %i.rm = icmp ult i64 %i.rl, %i.oh
  br i1 %i.rm, label %bb.fj, label %.split443.us.invoke.i126

bb.fh:                                            ; preds = %bb.ff
  %i.rn = add i64 %i.qw, %.sroa.039.1485.i        ; 3 uses
  %i.ro = icmp ult i64 %i.rn, %i.oh
  br i1 %i.ro, label %bb.fi, label %.split446.us.invoke.i128

bb.fi:                                            ; preds = %bb.fh
  %i.rp = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.rj
  %i.rq = load i8, ptr %i.rp, align 1, !noalias !16904, !noundef !28
  %i.rr = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.rn
  %i.rs = load i8, ptr %i.rr, align 1, !noalias !16904, !noundef !28
  %i.rt = add i8 %i.rs, 1
  %i.ru = icmp eq i8 %i.rq, %i.rt
  br i1 %i.ru, label %._crit_edge.i148, label %bb.fg

bb.fj:                                            ; preds = %bb.fg
  %i.rv = add i64 %i.qx, %.sroa.039.1485.i        ; 2 uses
  %i.rw = icmp ult i64 %i.rv, %i.oh
  br i1 %i.rw, label %bb.fk, label %.split446.us.invoke.i128

bb.fk:                                            ; preds = %bb.fj
  %i.rx = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.rl
  %i.ry = load i8, ptr %i.rx, align 1, !noalias !16904, !noundef !28
  %i.rz = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.rv
  %i.sa = load i8, ptr %i.rz, align 1, !noalias !16904, !noundef !28
  %i.sb = icmp ult i8 %i.ry, %i.sa
  br i1 %i.sb, label %bb.fl, label %._crit_edge.i148

bb.fl:                                            ; preds = %bb.fk
  %i.sc = add nuw i64 %.sroa.039.1485.i, 1        ; 2 uses
  %i.sd = icmp ult i64 %i.sc, %i.gd
  br i1 %i.sd, label %bb.ez, label %._crit_edge.i148

bb.fm:                                            ; preds = %bb.fx
  %exitcond.not.i135 = icmp eq i64 %.pre-phi712.i, %umax.i133
  br i1 %exitcond.not.i135, label %._crit_edge1796, label %.lr.ph1795

.lr.ph1795:                                       ; preds = %.preheader56.i132, %bb.fm
  %.sroa.09.1.i1341794 = phi i64 [ %.pre-phi712.i, %bb.fm ], [ %.sroa.09.0506.i, %.preheader56.i132 ] ; 6 uses
  br i1 %or.cond170.i120, label %bb.fo, label %bb.fq

._crit_edge1796:                                  ; preds = %bb.fm, %bb.fv, %bb.fx, %.preheader56.i132
  %.sroa.09.1.lcssa.i139 = phi i64 [ %umax.i133, %.preheader56.i132 ], [ %umax.i133, %bb.fm ], [ %.sroa.09.1.i1341794, %bb.fv ], [ %.sroa.09.1.i1341794, %bb.fx ] ; 3 uses
  %i.se = sub nuw i64 %.sroa.09.1.lcssa.i139, %.sroa.09.0506.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.sf = load i64, ptr %i.oo, align 8, !alias.scope !16909, !noalias !16904, !noundef !28 ; 3 uses
  %i.sg = load i64, ptr %i.on, align 8, !range !43, !alias.scope !16909, !noalias !16904, !noundef !28
  %i.sh = icmp eq i64 %i.sf, %i.sg
  br i1 %i.sh, label %bb.fn, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140

bb.fn:                                            ; preds = %._crit_edge1796
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.on) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16904

bb.fo:                                            ; preds = %.lr.ph1795
  %i.si = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fp unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16904

bb.fp:                                            ; preds = %bb.fo
  br i1 %i.si, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread337, label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %.lr.ph1795
  %i.sj = mul i64 %.sroa.09.1.i1341794, %i.of     ; 2 uses
  %i.sk = add i64 %.sroa.09.1.i1341794, %invariant.op482.i ; 2 uses
  %i.sl = icmp ult i64 %i.sk, %i.az
  br i1 %i.sl, label %bb.fr, label %13

13:                                               ; preds = %bb.fq
  %14 = add i64 %.sroa.09.0506.i, %invariant.op482.i
  %umax703.le.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 %14)
  br label %.invoke.i121

bb.fr:                                            ; preds = %bb.fq
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.sk
  %.val206.i136 = load i64, ptr %i.ps, align 8, !noalias !16904, !noundef !28
  %.val207.i137 = load i64, ptr %i.sm, align 8, !noalias !16904, !noundef !28
  %i.sn = icmp eq i64 %.val206.i136, %.val207.i137
  br i1 %i.sn, label %bb.fs, label %._crit_edge707.i

._crit_edge707.i:                                 ; preds = %bb.fr
  %.pre711.i = add i64 %.sroa.09.1.i1341794, 1    ; 2 uses
  %.pre713.i = mul i64 %.pre711.i, %i.of
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.so = add i64 %i.sj, %.sroa.039.0505.i        ; 3 uses
  %i.sp = icmp ult i64 %i.so, %i.oh
  br i1 %i.sp, label %bb.fu, label %.split443.us.invoke.i126

bb.ft:                                            ; preds = %bb.fv, %._crit_edge707.i
  %.pre-phi714.i.a = phi i64 [ %.pre713.i, %._crit_edge707.i ], [ %i.st, %bb.fv ]
  %.pre-phi712.i = phi i64 [ %.pre711.i, %._crit_edge707.i ], [ %i.ss, %bb.fv ] ; 2 uses
  %i.sq = add i64 %.pre-phi714.i.a, %.sroa.039.0505.i ; 3 uses
  %i.sr = icmp ult i64 %i.sq, %i.oh
  br i1 %i.sr, label %bb.fw, label %.split443.us.invoke.i126

bb.fu:                                            ; preds = %bb.fs
  %i.ss = add i64 %.sroa.09.1.i1341794, 1         ; 2 uses
  %i.st = mul i64 %i.ss, %i.of                    ; 2 uses
  %i.su = add i64 %i.st, %i.qo                    ; 3 uses
  %i.sv = icmp ult i64 %i.su, %i.oh
  br i1 %i.sv, label %bb.fv, label %.split446.us.invoke.i128

bb.fv:                                            ; preds = %bb.fu
  %i.sw = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.so
  %i.sx = load i8, ptr %i.sw, align 1, !noalias !16904, !noundef !28
  %i.sy = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.su
  %i.sz = load i8, ptr %i.sy, align 1, !noalias !16904, !noundef !28
  %i.ta = add i8 %i.sz, 1
  %i.tb = icmp eq i8 %i.sx, %i.ta
  br i1 %i.tb, label %._crit_edge1796, label %bb.ft

bb.fw:                                            ; preds = %bb.ft
  %i.tc = add i64 %i.sj, %i.qo                    ; 3 uses
  %i.td = icmp ult i64 %i.tc, %i.oh
  br i1 %i.td, label %bb.fx, label %.split446.us.invoke.i128

bb.fx:                                            ; preds = %bb.fw
  %i.te = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.sq
  %i.tf = load i8, ptr %i.te, align 1, !noalias !16904, !noundef !28
  %i.tg = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.tc
  %i.th = load i8, ptr %i.tg, align 1, !noalias !16904, !noundef !28
  %.not167.i138 = icmp ult i8 %i.tf, %i.th
  br i1 %.not167.i138, label %._crit_edge1796, label %bb.fm

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140: ; preds = %bb.fy, %._crit_edge495.i, %bb.fn, %._crit_edge1796, %bb.fa, %._crit_edge.i148
  %.sink971.i = phi i64 [ %i.to, %._crit_edge495.i ], [ %i.rb, %._crit_edge.i148 ], [ %i.to, %bb.fy ], [ %i.rb, %bb.fa ], [ %i.sf, %bb.fn ], [ %i.sf, %._crit_edge1796 ] ; 3 uses
  %.sink968.i = phi i64 [ 0, %._crit_edge495.i ], [ 2, %._crit_edge.i148 ], [ 0, %bb.fy ], [ 2, %bb.fa ], [ 1, %bb.fn ], [ 1, %._crit_edge1796 ]
  %.sink965.i = phi i64 [ %i.pl, %._crit_edge495.i ], [ %i.pl, %._crit_edge.i148 ], [ %i.pl, %bb.fy ], [ %i.pl, %bb.fa ], [ %i.se, %bb.fn ], [ %i.se, %._crit_edge1796 ]
  %.sink.i141 = phi i64 [ %i.tn, %._crit_edge495.i ], [ %i.ra, %._crit_edge.i148 ], [ %i.tn, %bb.fy ], [ %i.ra, %bb.fa ], [ %i.pl, %bb.fn ], [ %i.pl, %._crit_edge1796 ]
  %.sroa.039.3.i = phi i64 [ %.sroa.039.4.lcssa.i, %._crit_edge495.i ], [ %.sroa.039.1.lcssa.i, %._crit_edge.i148 ], [ %.sroa.039.4.lcssa.i, %bb.fy ], [ %.sroa.039.1.lcssa.i, %bb.fa ], [ %.sroa.039.0505.i, %bb.fn ], [ %.sroa.039.0505.i, %._crit_edge1796 ] ; 5 uses
  %.sroa.09.3.i142 = phi i64 [ %.sroa.09.4.lcssa.i153, %._crit_edge495.i ], [ %.sroa.09.0506.i, %._crit_edge.i148 ], [ %.sroa.09.4.lcssa.i153, %bb.fy ], [ %.sroa.09.0506.i, %bb.fa ], [ %.sroa.09.1.lcssa.i139, %bb.fn ], [ %.sroa.09.1.lcssa.i139, %._crit_edge1796 ] ; 5 uses
  %i.ti = load ptr, ptr %i.op, align 8, !noalias !16904, !nonnull !28, !noundef !28
  %i.tj = getelementptr inbounds nuw [40 x i8], ptr %i.ti, i64 %.sink971.i ; 4 uses
  store i64 %.sink968.i, ptr %i.tj, align 8, !noalias !16904
  %.sroa.439.0..sroa_idx.i143 = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  store i64 %i.pk, ptr %.sroa.439.0..sroa_idx.i143, align 8, !noalias !16904
  %.sroa.540.0..sroa_idx.i144 = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  store i64 %.sink965.i, ptr %.sroa.540.0..sroa_idx.i144, align 8, !noalias !16904
  %.sroa.641.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %i.tj, i64 24
  store i64 %.sink.i141, ptr %.sroa.641.0..sroa_idx.i145, align 8, !noalias !16904
  %i.tk = add i64 %.sink971.i, 1                  ; 4 uses
  store i64 %i.tk, ptr %i.oo, align 8, !noalias !16904
  %i.tl = icmp ult i64 %.sroa.09.3.i142, %i.gc    ; 2 uses
  %i.tm = icmp ult i64 %.sroa.039.3.i, %i.gd      ; 3 uses
  %or.cond.i146 = select i1 %i.tl, i1 %i.tm, i1 false
  br i1 %or.cond.i146, label %bb.ei, label %._crit_edge509.i

._crit_edge495.i:                                 ; preds = %bb.gi, %bb.gh, %bb.ge, %.preheader.i152
  %.sroa.039.4.lcssa.i = phi i64 [ %.sroa.039.0505.i, %.preheader.i152 ], [ %i.ug, %bb.gi ], [ %.sroa.039.4492.i, %bb.ge ], [ %.sroa.039.4492.i, %bb.gh ] ; 2 uses
  %.sroa.09.4.lcssa.i153 = phi i64 [ %.sroa.09.0506.i, %.preheader.i152 ], [ %i.ue, %bb.gi ], [ %.sroa.09.4493.i, %bb.ge ], [ %.sroa.09.4493.i, %bb.gh ] ; 3 uses
  %i.tn = sub nuw i64 %.sroa.09.4.lcssa.i153, %.sroa.09.0506.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.to = load i64, ptr %i.oo, align 8, !alias.scope !16910, !noalias !16904, !noundef !28 ; 3 uses
  %i.tp = load i64, ptr %i.on, align 8, !range !43, !alias.scope !16910, !noalias !16904, !noundef !28
  %i.tq = icmp eq i64 %i.to, %i.tp
  br i1 %i.tq, label %bb.fy, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140

bb.fy:                                            ; preds = %._crit_edge495.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.on) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQINtNtB7_7compact7CompactINtNtB9_4text12TextDiffSideeEB1v_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i140 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16904

.lr.ph494.i:                                      ; preds = %.preheader.i152, %bb.gi
  %.sroa.09.4493.i = phi i64 [ %i.ue, %bb.gi ], [ %.sroa.09.0506.i, %.preheader.i152 ] ; 5 uses
  %.sroa.039.4492.i = phi i64 [ %i.ug, %bb.gi ], [ %.sroa.039.0505.i, %.preheader.i152 ] ; 6 uses
  %i.tr = and i64 %.sroa.039.4492.i, 1023
  %i.ts = icmp eq i64 %i.tr, 0
  %or.cond180.i154 = select i1 %.sroa.05.0.not507.i, i1 %i.ts, i1 false
  br i1 %or.cond180.i154, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.gc, %.lr.ph494.i
  %i.tt = mul i64 %.sroa.09.4493.i, %i.of
  %i.tu = add i64 %.sroa.039.4492.i, %invariant.op.i109 ; 2 uses
  %i.tv = icmp ult i64 %i.tu, %i.bc
  br i1 %i.tv, label %bb.gd, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #74
          to label %.noexc189.i155 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16904

.noexc189.i155:                                   ; preds = %bb.ga
  unreachable

bb.gb:                                            ; preds = %.lr.ph494.i
  %i.tw = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gc unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16904

bb.gc:                                            ; preds = %bb.gb
  br i1 %i.tw, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread337, label %bb.fz

bb.gd:                                            ; preds = %bb.fz
  %i.tx = add i64 %.sroa.09.4493.i, %invariant.op482.i ; 2 uses
  %i.ty = icmp ult i64 %i.tx, %i.az
  br i1 %i.ty, label %bb.ge, label %.invoke.i121

bb.ge:                                            ; preds = %bb.gd
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.tu
  %i.ua = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.tx
  %.val204.i156 = load i64, ptr %i.tz, align 8, !noalias !16904, !noundef !28
  %.val205.i157 = load i64, ptr %i.ua, align 8, !noalias !16904, !noundef !28
  %i.ub = icmp eq i64 %.val204.i156, %.val205.i157
  br i1 %i.ub, label %bb.gf, label %._crit_edge495.i

bb.gf:                                            ; preds = %bb.ge
  %i.uc = add i64 %i.tt, %.sroa.039.4492.i        ; 3 uses
  %i.ud = icmp ult i64 %i.uc, %i.oh
  br i1 %i.ud, label %bb.gg, label %.split443.us.invoke.i126

bb.gg:                                            ; preds = %bb.gf
  %i.ue = add nuw i64 %.sroa.09.4493.i, 1         ; 4 uses
  %i.uf = mul i64 %i.ue, %i.of
  %i.ug = add nuw i64 %.sroa.039.4492.i, 1        ; 4 uses
  %i.uh = add i64 %i.ug, %i.uf                    ; 3 uses
  %i.ui = icmp ult i64 %i.uh, %i.oh
  br i1 %i.ui, label %bb.gh, label %.split446.us.invoke.i128

bb.gh:                                            ; preds = %bb.gg
  %i.uj = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.uc
  %i.uk = load i8, ptr %i.uj, align 1, !noalias !16904, !noundef !28
  %i.ul = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.uh
  %i.um = load i8, ptr %i.ul, align 1, !noalias !16904, !noundef !28
  %i.un = add i8 %i.um, 1
  %i.uo = icmp eq i8 %i.uk, %i.un
  br i1 %i.uo, label %bb.gi, label %._crit_edge495.i

bb.gi:                                            ; preds = %bb.gh
  %i.up = icmp ult i64 %i.ue, %i.gc
  %i.uq = icmp ult i64 %i.ug, %i.gd
  %or.cond177.i158 = and i1 %i.up, %i.uq
  br i1 %or.cond177.i158, label %.lr.ph494.i, label %._crit_edge495.i

.loopexit64.i159:                                 ; preds = %bb.gj, %bb.gl, %bb.eq, %bb.gw
  br i1 %i.oi, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread337

bb.gj:                                            ; preds = %.lr.ph481.split.i
  br i1 %i.or, label %.loopexit64.i159, label %.lr.ph.i160

.lr.ph.i160:                                      ; preds = %bb.gj
  %i.ur = mul i64 %i.oq, %i.of                    ; 2 uses
  %i.us = mul i64 %.sroa.0102.0480.i, %i.of       ; 2 uses
  %.reass483.i = add i64 %i.oq, %invariant.op482.i ; 3 uses
  %i.ut = icmp ult i64 %.reass483.i, %i.az
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.reass483.i
  %.fr.i161 = freeze i1 %i.ut
  br i1 %.fr.i161, label %.lr.ph.split.us.i164, label %.lr.ph.split.i162

.lr.ph.split.us.i164:                             ; preds = %.lr.ph.i160, %bb.gu
  %.sroa.0105.0433.us.i165 = phi i64 [ %i.uv, %bb.gu ], [ %i.gd, %.lr.ph.i160 ] ; 3 uses
  %i.uv = add i64 %.sroa.0105.0433.us.i165, -1    ; 6 uses
  %i.uw = and i64 %i.uv, 1023
  %i.ux = icmp eq i64 %i.uw, 0
  br i1 %i.ux, label %bb.gk, label %bb.gm

bb.gk:                                            ; preds = %.lr.ph.split.us.i164
  %i.uy = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !16904

bb.gl:                                            ; preds = %bb.gk
  br i1 %i.uy, label %.loopexit64.i159, label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %.lr.ph.split.us.i164
  %.reass.us.i166 = add i64 %i.uv, %invariant.op.i109 ; 3 uses
  %i.uz = icmp ult i64 %.reass.us.i166, %i.bc
  br i1 %i.uz, label %bb.gn, label %.invoke.i121

bb.gn:                                            ; preds = %bb.gm
  %i.va = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.reass.us.i166
  %.val.us.i167 = load i64, ptr %i.va, align 8, !noalias !16904, !noundef !28
  %.val203.us.i168 = load i64, ptr %i.uu, align 8, !noalias !16904, !noundef !28
  %i.vb = icmp eq i64 %.val.us.i167, %.val203.us.i168
  br i1 %i.vb, label %bb.gr, label %bb.go
end_hunk_7
begin_hunk_8_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just:bb.a
  %.sroa.5290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xh, i64 16
  store i64 %.sroa.0211.0, ptr %.sroa.5290.0..sroa_idx, align 8, !noalias !16921
  %.sroa.6291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xh, i64 24
  store i64 %i.wy, ptr %.sroa.6291.0..sroa_idx, align 8, !noalias !16921
  %i.xi = add i64 %i.xc, 1
  store i64 %i.xi, ptr %i.xb, align 8, !alias.scope !16922, !noalias !16921
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread334

bb.he:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread334
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16925)
  %i.xj = load ptr, ptr %0, align 8, !alias.scope !16926, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 120 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xj, i64 136 ; 2 uses
  %i.xm = load i64, ptr %i.xl, align 8, !alias.scope !16927, !noalias !16926, !noundef !28 ; 3 uses
  %i.xn = load i64, ptr %i.xk, align 8, !range !43, !alias.scope !16927, !noalias !16926, !noundef !28
  %i.xo = icmp eq i64 %i.xm, %i.xn
  br i1 %i.xo, label %bb.hf, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit178

bb.hf:                                            ; preds = %bb.he
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.xk) #73, !noalias !16928
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit178

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit178: ; preds = %bb.he, %bb.hf
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xj, i64 128
  %i.xq = load ptr, ptr %i.xp, align 8, !alias.scope !16927, !noalias !16926, !nonnull !28, !noundef !28
  %i.xr = getelementptr inbounds nuw [40 x i8], ptr %i.xq, i64 %i.xm ; 4 uses
  store i64 0, ptr %i.xr, align 8, !noalias !16926
  %.sroa.4259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  store i64 %i.be, ptr %.sroa.4259.0..sroa_idx, align 8, !noalias !16926
  %.sroa.5260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xr, i64 16
  store i64 %i.bf, ptr %.sroa.5260.0..sroa_idx, align 8, !noalias !16926
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xr, i64 24
  store i64 %.sroa.0.0.i63, ptr %.sroa.6261.0..sroa_idx, align 8, !noalias !16926
  %i.xs = add i64 %i.xm, 1
  store i64 %i.xs, ptr %i.xl, align 8, !alias.scope !16927, !noalias !16926
  br label %bb.hg

bb.hg:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupjEB1d_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2B_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread334, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit178
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17173)
  %i.b = icmp uge i64 %2, %3
  %i.c = icmp uge i64 %5, %6
  %or.cond.i53 = or i1 %i.b, %i.c
  br i1 %or.cond.i53, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i.i = sub nuw i64 %6, %5
  %spec.select.i.i4.i.i.i = sub nuw i64 %3, %2
  %..i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i54 = icmp eq i64 %..i.i.i.i, 0
  br i1 %.not.i54, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !17174, !noalias !17175, !noundef !28
  %invariant.op.i.i.i.i = sub i64 %5, %i.e        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !17174, !noalias !17175, !noundef !28 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.h, align 8, !alias.scope !17173, !nonnull !28
  %i.m = load i64, ptr %i.i, align 8, !alias.scope !17172
  %invariant.op.i = sub i64 %2, %i.m              ; 2 uses
  %i.n = load i64, ptr %i.j, align 8, !alias.scope !17172 ; 3 uses
  %i.o = load ptr, ptr %i.k, align 8, !alias.scope !17172, !nonnull !28
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sroa.01.033.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.p, %bb.f ] ; 5 uses
  %i.p = add nuw i64 %.sroa.01.033.i.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17176)
  %.reass.i.i.i.i = add nuw i64 %.sroa.01.033.i.i.i.i, %invariant.op.i.i.i.i ; 2 uses
  %i.q = icmp ult i64 %.reass.i.i.i.i, %i.g
  br i1 %i.q, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %invariant.op.i.i.i.i)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @564) #74, !noalias !17177
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i: ; preds = %bb.c
  %.reass.i = add nuw i64 %.sroa.01.033.i.i.i.i, %invariant.op.i ; 2 uses
  %i.r = icmp ult i64 %.reass.i, %i.n
  br i1 %i.r, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i
  %umax17.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %invariant.op.i)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax17.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565) #74, !noalias !17178
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.reass.i.i.i.i
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.reass.i
  %.val.i.i.i.i.i = load i32, ptr %i.s, align 4, !noalias !17179, !noundef !28
  %.val7.i.i.i.i.i = load i32, ptr %i.t, align 4, !noalias !17179, !noundef !28
  %i.u = icmp eq i32 %.val.i.i.i.i.i, %.val7.i.i.i.i.i
  br i1 %i.u, label %bb.f, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit

bb.f:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, %..i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread318, label %bb.c

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %.not = icmp eq i64 %.sroa.01.033.i.i.i.i, 0
  br i1 %.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread318

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.b, %bb.a, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i55317 = phi i64 [ 0, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0.0.i55321, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.v = add i64 %.sroa.0.0.i55317, %2            ; 3 uses
  %i.w = add i64 %.sroa.0.0.i55317, %5            ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17181)
  %i.x = icmp uge i64 %i.v, %3
  %i.y = icmp uge i64 %i.w, %6
  %or.cond.i56 = or i1 %i.x, %i.y
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br i1 %or.cond.i56, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge, label %.lr.ph.i.i.i.i57

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge: ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert1043 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre1044 = load i64, ptr %.phi.trans.insert1043, align 8
  %.phi.trans.insert1045 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre1046 = load ptr, ptr %.phi.trans.insert1045, align 8
  %.phi.trans.insert1047 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre1048 = load i64, ptr %.phi.trans.insert1047, align 8
  %.phi.trans.insert1049 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre1050 = load i64, ptr %.phi.trans.insert1049, align 8
  %.phi.trans.insert1051 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre1052 = load ptr, ptr %.phi.trans.insert1051, align 8
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit

.lr.ph.i.i.i.i57:                                 ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = sub nuw i64 %3, %i.v                    ; 2 uses
  %i.af = sub nuw i64 %6, %i.w                    ; 2 uses
  %i.ag = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !17181 ; 4 uses
  %i.ah = load i64, ptr %i.z, align 8, !alias.scope !17181 ; 5 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !alias.scope !17181, !nonnull !28 ; 4 uses
  %i.aj = load i64, ptr %i.ab, align 8, !alias.scope !17180 ; 4 uses
  %i.ak = load i64, ptr %i.ac, align 8, !alias.scope !17180 ; 5 uses
  %i.al = load ptr, ptr %i.ad, align 8, !alias.scope !17180, !nonnull !28 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i57
  %i.am = phi i64 [ %3, %.lr.ph.i.i.i.i57 ], [ %i.ap, %bb.k ]
  %.sroa.01.030.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i57 ], [ %i.ax, %bb.k ] ; 3 uses
  %i.an = phi i64 [ %6, %.lr.ph.i.i.i.i57 ], [ %i.ao, %bb.k ]
  %i.ao = add i64 %i.an, -1                       ; 2 uses
  %exitcond.not.i.i.i.i58 = icmp eq i64 %.sroa.01.030.i.i.i.i, %i.ae
  br i1 %exitcond.not.i.i.i.i58, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = add i64 %i.am, -1                       ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ag                    ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %i.ah
  br i1 %i.ar, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i59, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aq, i64 noundef %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @566) #74, !noalias !17182
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i59: ; preds = %bb.h
  %i.as = sub i64 %i.ap, %i.aj                    ; 3 uses
  %i.at = icmp ult i64 %i.as, %i.ak
  br i1 %i.at, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60, label %bb.j

bb.j:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i59
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.as, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @567) #74, !noalias !17183
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i59
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aq
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.as
  %.val.i.i.i.i.i61 = load i32, ptr %i.au, align 4, !noalias !17184, !noundef !28
  %.val7.i.i.i.i.i62 = load i32, ptr %i.av, align 4, !noalias !17184, !noundef !28
  %i.aw = icmp eq i32 %.val.i.i.i.i.i61, %.val7.i.i.i.i.i62
  br i1 %i.aw, label %bb.k, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit

bb.k:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60
  %i.ax = add nuw i64 %.sroa.01.030.i.i.i.i, 1    ; 2 uses
  %exitcond62.not.i.i.i.i = icmp eq i64 %i.ax, %i.af
  br i1 %exitcond62.not.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit, label %bb.g

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit: ; preds = %bb.g, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60, %bb.k, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge
  %i.ay = phi ptr [ %.pre1052, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.al, %bb.k ], [ %i.al, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.al, %bb.g ] ; 10 uses
  %i.az = phi i64 [ %.pre1050, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ak, %bb.k ], [ %i.ak, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.ak, %bb.g ] ; 24 uses
  %i.ba = phi i64 [ %.pre1048, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.aj, %bb.k ], [ %i.aj, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.aj, %bb.g ] ; 5 uses
  %i.bb = phi ptr [ %.pre1046, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ai, %bb.k ], [ %i.ai, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.ai, %bb.g ] ; 11 uses
  %i.bc = phi i64 [ %.pre1044, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ah, %bb.k ], [ %i.ah, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.ah, %bb.g ] ; 29 uses
  %i.bd = phi i64 [ %.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ag, %bb.k ], [ %i.ag, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.ag, %bb.g ] ; 8 uses
  %.sroa.0.0.i63 = phi i64 [ 0, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ae, %bb.g ], [ %.sroa.01.030.i.i.i.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i60 ], [ %i.af, %bb.k ] ; 4 uses
  %i.be = sub i64 %3, %.sroa.0.0.i63              ; 9 uses
  %i.bf = sub i64 %6, %.sroa.0.0.i63              ; 9 uses
  br label %bb.m

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread318: ; preds = %bb.f, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i55321 = phi i64 [ %.sroa.01.033.i.i.i.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit ], [ %..i.i.i.i, %bb.f ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17186)
  %i.bg = load ptr, ptr %0, align 8, !alias.scope !17187, !nonnull !28, !align !35, !noundef !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17188)
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !17188, !noalias !17187, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 120 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 136 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !17189, !noalias !17190, !noundef !28 ; 3 uses
  %i.bl = load i64, ptr %i.bi, align 8, !range !43, !alias.scope !17189, !noalias !17190, !noundef !28
  %i.bm = icmp eq i64 %i.bk, %i.bl
  br i1 %i.bm, label %bb.l, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit

bb.l:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread318
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bi) #73, !noalias !17191
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit: ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread318, %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 128
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !17189, !noalias !17190, !nonnull !28, !noundef !28
  %i.bp = getelementptr inbounds nuw [40 x i8], ptr %i.bo, i64 %i.bk ; 4 uses
  store i64 0, ptr %i.bp, align 8, !noalias !17190
  %.sroa.4262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %2, ptr %.sroa.4262.0..sroa_idx, align 8, !noalias !17190
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !17190
  %.sroa.6263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store i64 %.sroa.0.0.i55321, ptr %.sroa.6263.0..sroa_idx, align 8, !noalias !17190
  %i.bq = add i64 %i.bk, 1
  store i64 %i.bq, ptr %i.bj, align 8, !alias.scope !17189, !noalias !17190
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread

bb.m:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0218.0 = phi i64 [ %i.w, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0218.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit ] ; 36 uses
  %.sroa.0.0 = phi i64 [ %i.v, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit ] ; 33 uses
  %i.br = icmp ult i64 %.sroa.0.0, %i.be          ; 2 uses
  %i.bs = icmp ult i64 %.sroa.0218.0, %i.bf       ; 3 uses
  %or.cond347 = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond347, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, %bb.m
  br i1 %i.br, label %bb.az, label %bb.ba

bb.o:                                             ; preds = %bb.m
  %i.bt = sub nuw i64 %i.be, %.sroa.0.0           ; 6 uses
  %i.bu = sub nuw i64 %i.bf, %.sroa.0218.0        ; 6 uses
  %i.bv = icmp ult i64 %i.bt, 97
  %i.bw = icmp ult i64 %i.bu, 97
  %or.cond.i = or i1 %i.bw, %i.bv
  br i1 %or.cond.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bt) ; 2 uses
  %..i64 = tail call noundef i64 @llvm.umax.i64(i64 %i.bu, i64 %i.bt)
  %i.bx = shl nuw i64 %..i, 1
  %i.by = icmp slt i64 %..i, 0
  br i1 %i.by, label %bb.q, label %bb.r, !prof !44

bb.q:                                             ; preds = %bb.p
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.052.0.i = phi i64 [ -1, %bb.q ], [ %i.bx, %bb.p ]
  %i.bz = icmp ult i64 %..i64, %.sroa.052.0.i
  br i1 %i.bz, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i = icmp ule i64 %i.bu, %i.bt
  %i.ca = icmp ule i64 %i.bt, %i.bu
  %.not.i.fr = freeze i1 %.not.i
  %i.cb = sub i64 %.sroa.0218.0, %i.bd            ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.bc
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.cb
  br label %bb.t

.loopexit:                                        ; preds = %.outer, %bb.ah, %bb.w, %bb.ag
  %.sroa.525.2.i.ph.lcssa570 = phi i64 [ %.sroa.525.2.i.ph725, %bb.w ], [ %.sroa.525.2.i.ph725, %bb.ah ], [ %.sroa.525.2.i.ph725, %bb.ag ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa563 = phi i64 [ %.sroa.023.1.i.ph726, %bb.w ], [ %.sroa.023.1.i.ph726, %bb.ah ], [ %.sroa.023.1.i.ph726, %bb.ag ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa556 = phi i64 [ %.sroa.9.2.i.ph727, %bb.w ], [ %.sroa.9.2.i.ph727, %bb.ah ], [ %.sroa.9.2.i.ph727, %bb.ag ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa549 = phi i64 [ %.sroa.12.2.i.ph728, %bb.w ], [ %.sroa.12.2.i.ph728, %bb.ah ], [ %.sroa.12.2.i.ph728, %bb.ag ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, -1
  %exitcond1042 = icmp eq i64 %i.ce, 5
  br i1 %exitcond1042, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit
  %indvars.iv = phi i64 [ %i.bt, %bb.s ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.sroa.12.0.i733 = phi i64 [ undef, %bb.s ], [ %.sroa.12.2.i.ph.lcssa549, %.loopexit ]
  %.sroa.9.0.i732 = phi i64 [ undef, %bb.s ], [ %.sroa.9.2.i.ph.lcssa556, %.loopexit ]
  %.sroa.023.0.i731 = phi i64 [ 0, %bb.s ], [ %.sroa.023.1.i.ph.lcssa563, %.loopexit ]
  %.sroa.525.0.i730 = phi i64 [ undef, %bb.s ], [ %.sroa.525.2.i.ph.lcssa570, %.loopexit ]
  %.sroa.0251.0729 = phi i64 [ 0, %bb.s ], [ %i.ce, %.loopexit ] ; 9 uses
  %i.ce = add nuw nsw i64 %.sroa.0251.0729, 1     ; 2 uses
  %i.cf = icmp eq i64 %.sroa.0251.0729, 0
  %i.cg = add i64 %.sroa.0251.0729, %.sroa.0.0    ; 2 uses
  %i.ch = sub i64 %i.cg, %i.ba                    ; 4 uses
  %i.ci = icmp ult i64 %i.ch, %i.az               ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ch ; 2 uses
  %i.ck = sub i64 %i.be, %i.cg
  br label %.lr.ph

bb.u:                                             ; preds = %.loopexit
  %i.cl = trunc nuw i64 %.sroa.023.1.i.ph.lcssa563 to i1
  br i1 %i.cl, label %.loopexit445, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit

.loopexit445:                                     ; preds = %bb.ai, %bb.u
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa570, %bb.u ], [ %.sroa.0251.0729, %bb.ai ] ; 4 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa556, %bb.u ], [ %.us-phi639, %bb.ai ] ; 4 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa549, %bb.u ], [ %.sroa.01.0.i.lcssa, %bb.ai ] ; 3 uses
  %i.cm = icmp eq i64 %.sroa.525.1.i, 0
  %i.cn = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  br i1 %i.cm, label %bb.ao, label %bb.ap

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.w
  %.sroa.0252.0613 = phi i64 [ %i.co, %bb.w ], [ %.sroa.0252.0.ph724, %.lr.ph.split ] ; 2 uses
  %i.co = add nuw nsw i64 %.sroa.0252.0613, 1     ; 2 uses
  %i.cp = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !17192
  br i1 %i.cp, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.split
  %.not736 = icmp eq i64 %.sroa.0252.0613, 0
  br i1 %.not736, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30
  %exitcond = icmp eq i64 %i.co, 5
  br i1 %exitcond, label %.loopexit, label %.lr.ph.split.split

bb.x:                                             ; preds = %bb.v
  br i1 %i.cc, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31, label %.split622.loopexit1284

.split622.loopexit1284:                           ; preds = %bb.x
  %i.cq = sub i64 %.sroa.0218.0, %i.bd
  br label %.split622

.split622:                                        ; preds = %bb.af, %.split622.loopexit1284
  %.us-phi = phi i64 [ %i.cq, %.split622.loopexit1284 ], [ %i.dg, %bb.af ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @293) #74, !noalias !17193
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31: ; preds = %bb.x
  br i1 %i.ci, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30, label %.split625

.split625:                                        ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ch, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @294) #74, !noalias !17194
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31
  %.val49 = load i32, ptr %i.cd, align 4, !noundef !28
  %.val50 = load i32, ptr %i.cj, align 4, !noundef !28
  %.not348 = icmp eq i32 %.val49, %.val50
  br i1 %.not348, label %.split629, label %bb.w

.split629.loopexit:                               ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30.us
  %.pre1054 = sub i64 %i.bf, %i.df
  br label %.split629

.split629:                                        ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30, %.split629.loopexit
  %.pre-phi = phi i64 [ %.pre1054, %.split629.loopexit ], [ %i.bu, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ] ; 2 uses
  %.us-phi635 = phi i64 [ %i.df, %.split629.loopexit ], [ %.sroa.0218.0, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ]
  %.us-phi638 = phi i64 [ %i.dd, %.split629.loopexit ], [ 1, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ] ; 2 uses
  %.us-phi639 = phi i64 [ %.sroa.0252.0613.us, %.split629.loopexit ], [ 0, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ] ; 4 uses
  %..i73 = tail call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.ck)
  %.not737 = icmp eq i64 %..i73, 0
  br i1 %.not737, label %.outer, label %.lr.ph721

.lr.ph721:                                        ; preds = %.split629
  %i.cr = sub i64 %.us-phi635, %i.bd              ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %.pre-phi) ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph721, %bb.ad
  %.sroa.01.0.i720 = phi i64 [ 0, %.lr.ph721 ], [ %i.db, %bb.ad ] ; 5 uses
  %i.cs = and i64 %.sroa.01.0.i720, 1023
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cu = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !17192
  br i1 %i.cu, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cv = add nuw i64 %i.cr, %.sroa.01.0.i720     ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.bc
  br i1 %i.cw, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit29, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %umax1024 = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.cr)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax1024, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #74, !noalias !17195
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit29: ; preds = %bb.aa
  %i.cx = add nuw i64 %i.ch, %.sroa.01.0.i720     ; 3 uses
  %i.cy = icmp ult i64 %i.cx, %i.az
  br i1 %i.cy, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit, label %bb.ac
end_hunk_8
begin_hunk_9_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just:bb.a
  %i.er = add i64 %i.el, 1
  store i64 %i.er, ptr %i.ek, align 8, !alias.scope !17205, !noalias !17206
  br label %bb.aq

bb.au:                                            ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17209), !noalias !17197
  %i.es = load ptr, ptr %0, align 8, !alias.scope !17210, !noalias !17197, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17211), !noalias !17197
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !17211, !noalias !17212, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 120 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 136 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !17213, !noalias !17214, !noundef !28 ; 3 uses
  %i.ex = load i64, ptr %i.eu, align 8, !range !43, !alias.scope !17213, !noalias !17214, !noundef !28
  %i.ey = icmp eq i64 %i.ew, %i.ex
  br i1 %i.ey, label %bb.av, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit78

bb.av:                                            ; preds = %bb.au
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eu) #73, !noalias !17215
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit78

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit78: ; preds = %bb.au, %bb.av
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 128
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !17213, !noalias !17214, !nonnull !28, !noundef !28
  %i.fb = getelementptr inbounds nuw [40 x i8], ptr %i.fa, i64 %i.ew ; 4 uses
  store i64 1, ptr %i.fb, align 8, !noalias !17214
  %.sroa.4286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4286.0..sroa_idx, align 8, !noalias !17214
  %.sroa.5287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5287.0..sroa_idx, align 8, !noalias !17214
  %.sroa.6288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  store i64 %.sroa.0218.0, ptr %.sroa.6288.0..sroa_idx, align 8, !noalias !17214
  %i.fc = add i64 %i.ew, 1
  store i64 %i.fc, ptr %i.ev, align 8, !alias.scope !17213, !noalias !17214
  br label %bb.aq

bb.aw:                                            ; preds = %bb.ap
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17217), !noalias !17197
  %i.fd = load ptr, ptr %0, align 8, !alias.scope !17218, !noalias !17197, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17219), !noalias !17197
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !17219, !noalias !17220, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 120 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 136 ; 3 uses
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !17221, !noalias !17222, !noundef !28 ; 4 uses
  %i.fi = load i64, ptr %i.ff, align 8, !range !43, !alias.scope !17221, !noalias !17222, !noundef !28
  %i.fj = icmp eq i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.ax, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79

bb.ax:                                            ; preds = %bb.aw
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ff) #73, !noalias !17223
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79: ; preds = %bb.aw, %bb.ax
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 128 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !17221, !noalias !17222, !nonnull !28, !noundef !28
  %i.fm = getelementptr inbounds nuw [40 x i8], ptr %i.fl, i64 %i.fh ; 4 uses
  store i64 1, ptr %i.fm, align 8, !noalias !17222
  %.sroa.4306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4306.0..sroa_idx, align 8, !noalias !17222
  %.sroa.5307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5307.0..sroa_idx, align 8, !noalias !17222
  %.sroa.6308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store i64 %.sroa.0218.0, ptr %.sroa.6308.0..sroa_idx, align 8, !noalias !17222
  %i.fn = add i64 %i.fh, 1                        ; 3 uses
  store i64 %i.fn, ptr %i.fg, align 8, !alias.scope !17221, !noalias !17222
  %i.fo = load i64, ptr %i.ff, align 8, !range !43, !alias.scope !17224, !noalias !17222, !noundef !28
  %i.fp = icmp eq i64 %i.fn, %i.fo
  br i1 %i.fp, label %bb.ay, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit80

bb.ay:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ff) #73, !noalias !17225
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit80

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit80: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79, %bb.ay
  %i.fq = load ptr, ptr %i.fk, align 8, !alias.scope !17224, !noalias !17222, !nonnull !28, !noundef !28
  %i.fr = getelementptr inbounds nuw [40 x i8], ptr %i.fq, i64 %i.fn ; 4 uses
  store i64 2, ptr %i.fr, align 8, !noalias !17222
  %.sroa.4311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4311.0..sroa_idx, align 8, !noalias !17222
  %.sroa.5312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store i64 %.sroa.0218.0, ptr %.sroa.5312.0..sroa_idx, align 8, !noalias !17222
  %.sroa.6313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  store i64 %.sroa.9.1.i, ptr %.sroa.6313.0..sroa_idx, align 8, !noalias !17222
  %i.fs = add i64 %i.fh, 2
  store i64 %i.fs, ptr %i.fg, align 8, !alias.scope !17224, !noalias !17222
  br label %bb.aq

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit: ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %.lr.ph.split.us, %bb.z, %bb.o, %bb.r, %bb.u, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit76
  %.sroa.0218.2 = phi i64 [ %.sroa.0218.0, %bb.o ], [ %.sroa.0218.0, %bb.r ], [ %.sroa.0218.0, %bb.u ], [ %i.eh, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit76 ], [ %.sroa.0218.0, %.lr.ph.split.split ], [ %.sroa.0218.0, %.lr.ph.split.us ], [ %.sroa.0218.0, %bb.z ], [ %.sroa.0218.0, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.o ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %bb.u ], [ %i.eg, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit76 ], [ %.sroa.0.0, %.lr.ph.split.split ], [ %.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.0.0, %bb.z ], [ %.sroa.0.0, %.lr.ph.split.split.us ] ; 2 uses
  %i.ft = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.fu = icmp eq i64 %.sroa.0218.2, %.sroa.0218.0
  %or.cond = select i1 %i.ft, i1 %i.fu, i1 false
  br i1 %or.cond, label %bb.n, label %bb.m

bb.az:                                            ; preds = %bb.n
  br i1 %i.bs, label %bb.bd, label %bb.bb

bb.ba:                                            ; preds = %bb.n
  br i1 %i.bs, label %.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread341

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread341: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit81, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit184, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit183, %bb.gz, %bb.ba
  %.not26 = icmp eq i64 %.sroa.0.0.i63, 0
  br i1 %.not26, label %bb.hg, label %bb.he

bb.bb:                                            ; preds = %bb.az
  %i.fv = sub nuw i64 %i.be, %.sroa.0.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17227)
  %i.fw = load ptr, ptr %0, align 8, !alias.scope !17228, !nonnull !28, !align !35, !noundef !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17229)
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !17229, !noalias !17228, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 120 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 136 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !alias.scope !17230, !noalias !17231, !noundef !28 ; 3 uses
  %i.gb = load i64, ptr %i.fy, align 8, !range !43, !alias.scope !17230, !noalias !17231, !noundef !28
  %i.gc = icmp eq i64 %i.ga, %i.gb
  br i1 %i.gc, label %bb.bc, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit81

bb.bc:                                            ; preds = %bb.bb
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fy) #73, !noalias !17232
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit81

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit81: ; preds = %bb.bb, %bb.bc
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 128
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !17230, !noalias !17231, !nonnull !28, !noundef !28
  %i.gf = getelementptr inbounds nuw [40 x i8], ptr %i.ge, i64 %i.ga ; 4 uses
  store i64 1, ptr %i.gf, align 8, !noalias !17231
  %.sroa.4281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4281.0..sroa_idx, align 8, !noalias !17231
  %.sroa.5282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store i64 %i.fv, ptr %.sroa.5282.0..sroa_idx, align 8, !noalias !17231
  %.sroa.6283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store i64 %.sroa.0218.0, ptr %.sroa.6283.0..sroa_idx, align 8, !noalias !17231
  %i.gg = add i64 %i.ga, 1
  store i64 %i.gg, ptr %i.fz, align 8, !alias.scope !17230, !noalias !17231
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread341

bb.bd:                                            ; preds = %bb.az
  %i.gh = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !17233
  br i1 %i.gh, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gi = sub nuw i64 %i.be, %.sroa.0.0           ; 22 uses
  %i.gj = sub nuw i64 %i.bf, %.sroa.0218.0        ; 22 uses
  %i.gk = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gi, i64 %i.gj) ; 2 uses
  %i.gl = extractvalue { i64, i1 } %i.gk, 1
  br i1 %i.gl, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.bf, !prof !44

bb.bf:                                            ; preds = %bb.be
  %i.gm = extractvalue { i64, i1 } %i.gk, 0
  %..i83 = tail call noundef i64 @llvm.umax.i64(i64 %i.gj, i64 %i.gi)
  %..i82 = tail call noundef i64 @llvm.umin.i64(i64 %i.gj, i64 %i.gi)
  %i.gn = add i64 %..i82, -65
  %or.cond.i27 = icmp ult i64 %i.gn, -64
  %i.go = icmp ult i64 %..i83, 512
  %or.cond1.i = or i1 %i.go, %or.cond.i27
  %i.gp = icmp ugt i64 %i.gm, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.gp
  br i1 %or.cond3.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not.i28 = icmp ugt i64 %i.gi, %i.gj
  %.val51 = load ptr, ptr %0, align 8             ; 20 uses
  %i.gq = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !28 ; 2 uses
  br i1 %.not.i28, label %bb.bh, label %bb.ec

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.gq, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gr = add i64 %i.gi, 1                        ; 11 uses
  %i.gs = add nuw i64 %i.gj, 1
  %i.gt = mul i64 %i.gr, %i.gs                    ; 29 uses
  %.not.i.i.i = icmp slt i64 %i.gt, 0
  br i1 %.not.i.i.i, label %bb.bm, label %bb.bj, !prof !42

bb.bj:                                            ; preds = %bb.bi
  %i.gu = icmp eq i64 %i.gt, 0                    ; 3 uses
  br i1 %i.gu, label %.lr.ph466.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !17234
  %i.gv = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.gt, i64 noundef range(i64 1, 9) 1) #69, !noalias !17234 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gx = ptrtoint ptr %i.gv to i64
  br label %.lr.ph466.i

bb.bm:                                            ; preds = %bb.bk, %bb.bi
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.bk ], [ 0, %bb.bi ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.gt) #70, !noalias !17235
  unreachable

.lr.ph466.i:                                      ; preds = %bb.bj, %bb.bl
  %.sroa.10.0.i.i = phi i64 [ %i.gx, %bb.bl ], [ 1, %bb.bj ]
  %i.gy = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 21 uses
  %invariant.op467.i = sub i64 %.sroa.0218.0, %i.bd ; 4 uses
  %invariant.op.i85 = sub i64 %.sroa.0.0, %i.ba   ; 3 uses
  br label %.lr.ph466.split.i

.lr.ph466.split.i:                                ; preds = %.lr.ph466.i, %..loopexit68_crit_edge.split.us.i
  %.sroa.0102.0465.i = phi i64 [ %i.gz, %..loopexit68_crit_edge.split.us.i ], [ %i.gj, %.lr.ph466.i ] ; 2 uses
  %i.gz = add i64 %.sroa.0102.0465.i, -1          ; 4 uses
  %i.ha = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.do unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17236

._crit_edge493.i:                                 ; preds = %bb.dc
  br i1 %i.mp, label %bb.bn, label %bb.bp

.lr.ph492.i:                                      ; preds = %..loopexit68_crit_edge.split.us.i, %bb.dc
  %.sroa.05.0.not491.i = phi i1 [ false, %bb.dc ], [ true, %..loopexit68_crit_edge.split.us.i ] ; 3 uses
  %.sroa.09.0490.i = phi i64 [ %.sroa.09.3.i, %bb.dc ], [ 0, %..loopexit68_crit_edge.split.us.i ] ; 13 uses
  %.sroa.038.0489.i = phi i64 [ %.sroa.038.3.i, %bb.dc ], [ 0, %..loopexit68_crit_edge.split.us.i ] ; 17 uses
  %i.hb = and i64 %.sroa.038.0489.i, 1023
  %i.hc = icmp eq i64 %i.hb, 0
  %or.cond170.i = select i1 %.sroa.05.0.not491.i, i1 %i.hc, i1 false ; 2 uses
  br i1 %or.cond170.i, label %bb.bt, label %bb.bs

bb.bn:                                            ; preds = %._crit_edge493.i
  %i.hd = add i64 %.sroa.038.3.i, %.sroa.0.0      ; 2 uses
  %i.he = sub nuw i64 %i.gi, %.sroa.038.3.i
  %i.hf = add i64 %.sroa.09.3.i, %.sroa.0218.0    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hg = load ptr, ptr %.val51, align 8, !alias.scope !17237, !noalias !17238, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 120 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 136 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !alias.scope !17239, !noalias !17236, !noundef !28 ; 3 uses
  %i.hk = load i64, ptr %i.hh, align 8, !range !43, !alias.scope !17239, !noalias !17236, !noundef !28
  %i.hl = icmp eq i64 %i.hj, %i.hk
  br i1 %i.hl, label %bb.bo, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hh) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17236

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i: ; preds = %bb.bo, %bb.bn
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 128
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !17239, !noalias !17236, !nonnull !28, !noundef !28
  %i.ho = getelementptr inbounds nuw [40 x i8], ptr %i.hn, i64 %i.hj ; 4 uses
  store i64 1, ptr %i.ho, align 8, !noalias !17236
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store i64 %i.hd, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !17236
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store i64 %i.he, ptr %.sroa.525.0..sroa_idx.i, align 8, !noalias !17236
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  store i64 %i.hf, ptr %.sroa.626.0..sroa_idx.i, align 8, !noalias !17236
  %i.hp = add i64 %i.hj, 1
  store i64 %i.hp, ptr %i.hi, align 8, !alias.scope !17239, !noalias !17236
  br i1 %i.mo, label %bb.bq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i

bb.bp:                                            ; preds = %._crit_edge493.i
  br i1 %i.mo, label %._crit_edge1056, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i

._crit_edge1056:                                  ; preds = %bb.bp
  %.pre1057 = add i64 %.sroa.038.3.i, %.sroa.0.0
  %.pre1059 = add i64 %.sroa.09.3.i, %.sroa.0218.0
  br label %bb.bq

.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cs, %bb.dg, %bb.cf, %bb.cr, %bb.ce, %.split446.us.invoke.i, %bb.df
  %lpad.loopexit.split-lp1832 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dp, %bb.dd, %bb.bt, %.lr.ph466.split.i, %.split443.us.invoke.i, %bb.ea, %.invoke.i, %bb.br, %bb.bo
  %lpad.loopexit.split-lp1857 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.gu, label %common.resume, label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi44.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp1857, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1832, %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gy, i64 noundef %i.gt, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !17240
  br label %common.resume

bb.bq:                                            ; preds = %._crit_edge1056, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i
  %.pre-phi1060 = phi i64 [ %.pre1059, %._crit_edge1056 ], [ %i.hf, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i ]
  %.pre-phi1058 = phi i64 [ %.pre1057, %._crit_edge1056 ], [ %i.hd, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i ]
  %i.hq = sub nuw i64 %i.gj, %.sroa.09.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.hr = load ptr, ptr %.val51, align 8, !alias.scope !17241, !noalias !17242, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 120 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 136 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !alias.scope !17243, !noalias !17236, !noundef !28 ; 3 uses
  %i.hv = load i64, ptr %i.hs, align 8, !range !43, !alias.scope !17243, !noalias !17236, !noundef !28
  %i.hw = icmp eq i64 %i.hu, %i.hv
  br i1 %i.hw, label %bb.br, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hs) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17236

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i: ; preds = %bb.br, %bb.bq
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hr, i64 128
  %i.hy = load ptr, ptr %i.hx, align 8, !alias.scope !17243, !noalias !17236, !nonnull !28, !noundef !28
  %i.hz = getelementptr inbounds nuw [40 x i8], ptr %i.hy, i64 %i.hu ; 4 uses
  store i64 2, ptr %i.hz, align 8, !noalias !17236
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  store i64 %.pre-phi1058, ptr %.sroa.434.0..sroa_idx.i, align 8, !noalias !17236
  %.sroa.535.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store i64 %.pre-phi1060, ptr %.sroa.535.0..sroa_idx.i, align 8, !noalias !17236
  %.sroa.636.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  store i64 %i.hq, ptr %.sroa.636.0..sroa_idx.i, align 8, !noalias !17236
  %i.ia = add i64 %i.hu, 1
  store i64 %i.ia, ptr %i.ht, align 8, !alias.scope !17243, !noalias !17236
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i.thread: ; preds = %bb.ct, %bb.cg, %bb.dh, %.loopexit64.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gy, i64 noundef %i.gt, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !17236
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i: ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i, %bb.bp, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gy, i64 noundef %i.gt, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !17236
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread341

bb.bs:                                            ; preds = %bb.bu, %.lr.ph492.i
  %i.ib = mul i64 %.sroa.09.0490.i, %i.gr         ; 4 uses
  %i.ic = add i64 %.sroa.038.0489.i, %.sroa.0.0   ; 4 uses
  %i.id = add i64 %.sroa.09.0490.i, %.sroa.0218.0 ; 4 uses
  %i.ie = sub i64 %i.id, %i.bd                    ; 3 uses
  %i.if = icmp ult i64 %i.ie, %i.bc
  br i1 %i.if, label %bb.bv, label %.invoke.i

.invoke.i:                                        ; preds = %bb.dr, %bb.bv, %bb.bs, %bb.ch, %bb.di, %bb.eb, %.lr.ph.split.i, %11
  %i.ig = phi i64 [ %.reass.i88, %.lr.ph.split.i ], [ %.reass.i88, %bb.eb ], [ %i.az, %bb.ch ], [ %umax687.le.i, %11 ], [ %i.ie, %bb.bs ], [ %i.az, %bb.di ], [ %i.il, %bb.bv ], [ %.reass.us.i, %bb.dr ]
  %i.ih = phi i64 [ %i.bc, %.lr.ph.split.i ], [ %i.bc, %bb.eb ], [ %i.az, %bb.ch ], [ %i.bc, %11 ], [ %i.bc, %bb.bs ], [ %i.az, %bb.di ], [ %i.az, %bb.bv ], [ %i.az, %bb.dr ]
  %i.ii = phi ptr [ @261, %.lr.ph.split.i ], [ @261, %bb.eb ], [ @247, %bb.ch ], [ @252, %11 ], [ @241, %bb.bs ], [ @258, %bb.di ], [ @242, %bb.bv ], [ @262, %bb.dr ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ig, i64 noundef %i.ih, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ii) #74
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17236

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bt:                                            ; preds = %.lr.ph492.i
  %i.ij = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17236

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.ij, label %.loopexit64.i, label %bb.bs

bb.bv:                                            ; preds = %bb.bs
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.ie ; 2 uses
  %i.il = sub i64 %i.ic, %i.ba                    ; 3 uses
  %i.im = icmp ult i64 %i.il, %i.az
  br i1 %i.im, label %bb.bw, label %.invoke.i

bb.bw:                                            ; preds = %bb.bv
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.il ; 2 uses
  %.val210.i = load i32, ptr %i.ik, align 4, !noalias !17236, !noundef !28
  %.val211.i = load i32, ptr %i.in, align 4, !noalias !17236, !noundef !28
  %i.io = icmp eq i32 %.val210.i, %.val211.i
  br i1 %i.io, label %bb.bx, label %._crit_edge692.i

._crit_edge692.i:                                 ; preds = %bb.bw
  %.pre.i = add nuw i64 %.sroa.09.0490.i, 1
  %.pre693.i = mul i64 %.pre.i, %i.gr
  br label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ip = add i64 %i.ib, %.sroa.038.0489.i        ; 3 uses
  %i.iq = icmp ult i64 %i.ip, %i.gt
  br i1 %i.iq, label %bb.bz, label %.split443.us.invoke.i

bb.by:                                            ; preds = %bb.ca, %._crit_edge692.i
  %.pre-phi694.i = phi i64 [ %.pre693.i, %._crit_edge692.i ], [ %i.iu, %bb.ca ] ; 3 uses
  %i.ir = add i64 %.pre-phi694.i, %.sroa.038.0489.i ; 3 uses
  %i.is = icmp ult i64 %i.ir, %i.gt
  br i1 %i.is, label %bb.cb, label %.split443.us.invoke.i

bb.bz:                                            ; preds = %bb.bx
  %i.it = add nuw i64 %.sroa.09.0490.i, 1
  %i.iu = mul i64 %i.it, %i.gr                    ; 2 uses
  %i.iv = add nuw i64 %.sroa.038.0489.i, 1
  %i.iw = add i64 %i.iv, %i.iu                    ; 3 uses
  %i.ix = icmp ult i64 %i.iw, %i.gt
  br i1 %i.ix, label %bb.ca, label %.split446.us.invoke.i

bb.ca:                                            ; preds = %bb.bz
  %i.iy = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ip
  %i.iz = load i8, ptr %i.iy, align 1, !noalias !17236, !noundef !28
  %i.ja = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.iw
  %i.jb = load i8, ptr %i.ja, align 1, !noalias !17236, !noundef !28
  %i.jc = add i8 %i.jb, 1
  %i.jd = icmp eq i8 %i.iz, %i.jc
  br i1 %i.jd, label %.preheader.i, label %bb.by

.preheader.i:                                     ; preds = %bb.ca
  %i.je = icmp ult i64 %.sroa.09.0490.i, %i.gj
  %i.jf = icmp ult i64 %.sroa.038.0489.i, %i.gi
  %or.cond177475.i = select i1 %i.je, i1 %i.jf, i1 false
  br i1 %or.cond177475.i, label %.lr.ph478.i, label %._crit_edge479.i

bb.cb:                                            ; preds = %bb.by
  %i.jg = add nuw i64 %.sroa.038.0489.i, 1        ; 3 uses
  %i.jh = add i64 %i.jg, %i.ib                    ; 3 uses
  %i.ji = icmp ult i64 %i.jh, %i.gt
  br i1 %i.ji, label %bb.cc, label %.split446.us.invoke.i

bb.cc:                                            ; preds = %bb.cb
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ir
  %i.jk = load i8, ptr %i.jj, align 1, !noalias !17236, !noundef !28
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.jh
  %i.jm = load i8, ptr %i.jl, align 1, !noalias !17236, !noundef !28
  %.not164.i = icmp ult i8 %i.jk, %i.jm
  br i1 %.not164.i, label %.preheader51.i, label %.preheader56.i

.preheader56.i:                                   ; preds = %bb.cc
  %umax.i86 = tail call i64 @llvm.umax.i64(i64 %.sroa.09.0490.i, i64 %i.gj) ; 3 uses
  %exitcond.not.i1789.not = icmp ult i64 %.sroa.09.0490.i, %i.gj
  br i1 %exitcond.not.i1789.not, label %.lr.ph1791, label %._crit_edge1792

.preheader51.i:                                   ; preds = %bb.cc
  %i.jn = icmp ult i64 %.sroa.038.0489.i, %i.gi
  br i1 %i.jn, label %.lr.ph470.i, label %._crit_edge.i

.lr.ph470.i:                                      ; preds = %.preheader51.i
  %i.jo = add i64 %.pre-phi694.i, 1
  %i.jp = add i64 %i.ib, 1
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cp, %.lr.ph470.i
  %.sroa.038.1469.i = phi i64 [ %.sroa.038.0489.i, %.lr.ph470.i ], [ %i.lb, %bb.cp ] ; 9 uses
  %i.jq = and i64 %.sroa.038.1469.i, 1023
  %i.jr = icmp eq i64 %i.jq, 0
  %or.cond173.i = and i1 %.sroa.05.0.not491.i, %i.jr
  br i1 %or.cond173.i, label %bb.cf, label %bb.ch

._crit_edge.i:                                    ; preds = %bb.cp, %bb.co, %bb.cm, %.preheader51.i
  %.sroa.038.1.lcssa.i = phi i64 [ %.sroa.038.0489.i, %.preheader51.i ], [ %i.gi, %bb.cp ], [ %.sroa.038.1469.i, %bb.co ], [ %.sroa.038.1469.i, %bb.cm ] ; 2 uses
  %i.js = sub i64 %.sroa.038.1.lcssa.i, %.sroa.038.0489.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.jt = load ptr, ptr %.val51, align 8, !alias.scope !17244, !noalias !17245, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 120 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 136 ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !alias.scope !17246, !noalias !17236, !noundef !28 ; 3 uses
  %i.jx = load i64, ptr %i.ju, align 8, !range !43, !alias.scope !17246, !noalias !17236, !noundef !28
  %i.jy = icmp eq i64 %i.jw, %i.jx
  br i1 %i.jy, label %bb.ce, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i

bb.ce:                                            ; preds = %._crit_edge.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ju) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17236

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.ce, %._crit_edge.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 128
  %i.ka = load ptr, ptr %i.jz, align 8, !alias.scope !17246, !noalias !17236, !nonnull !28, !noundef !28
  %i.kb = getelementptr inbounds nuw [40 x i8], ptr %i.ka, i64 %i.jw ; 4 uses
  store i64 1, ptr %i.kb, align 8, !noalias !17236
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store i64 %i.ic, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !17236
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store i64 %i.js, ptr %.sroa.530.0..sroa_idx.i, align 8, !noalias !17236
  %.sroa.631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  store i64 %i.id, ptr %.sroa.631.0..sroa_idx.i, align 8, !noalias !17236
  %i.kc = add i64 %i.jw, 1
  store i64 %i.kc, ptr %i.jv, align 8, !alias.scope !17246, !noalias !17236
  br label %bb.dc

bb.cf:                                            ; preds = %bb.cd
  %i.kd = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cg unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17236

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.kd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cd
  %i.ke = add i64 %.sroa.038.1469.i, %invariant.op.i85 ; 2 uses
  %i.kf = icmp ult i64 %i.ke, %i.az
  br i1 %i.kf, label %bb.ci, label %.invoke.i

bb.ci:                                            ; preds = %bb.ch
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ke
  %.val208.i = load i32, ptr %i.ik, align 4, !noalias !17236, !noundef !28
  %.val209.i = load i32, ptr %i.kg, align 4, !noalias !17236, !noundef !28
  %i.kh = icmp eq i32 %.val208.i, %.val209.i
  br i1 %i.kh, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ki = add i64 %.sroa.038.1469.i, %i.ib        ; 3 uses
  %i.kj = icmp ult i64 %i.ki, %i.gt
  br i1 %i.kj, label %bb.cl, label %.split443.us.invoke.i

bb.ck:                                            ; preds = %bb.cm, %bb.ci
  %i.kk = add i64 %.sroa.038.1469.i, %.pre-phi694.i ; 2 uses
  %i.kl = icmp ult i64 %i.kk, %i.gt
  br i1 %i.kl, label %bb.cn, label %.split443.us.invoke.i

bb.cl:                                            ; preds = %bb.cj
  %i.km = add i64 %i.jo, %.sroa.038.1469.i        ; 3 uses
  %i.kn = icmp ult i64 %i.km, %i.gt
  br i1 %i.kn, label %bb.cm, label %.split446.us.invoke.i

bb.cm:                                            ; preds = %bb.cl
  %i.ko = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ki
  %i.kp = load i8, ptr %i.ko, align 1, !noalias !17236, !noundef !28
  %i.kq = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.km
  %i.kr = load i8, ptr %i.kq, align 1, !noalias !17236, !noundef !28
  %i.ks = add i8 %i.kr, 1
  %i.kt = icmp eq i8 %i.kp, %i.ks
  br i1 %i.kt, label %._crit_edge.i, label %bb.ck

bb.cn:                                            ; preds = %bb.ck
  %i.ku = add i64 %i.jp, %.sroa.038.1469.i        ; 2 uses
  %i.kv = icmp ult i64 %i.ku, %i.gt
  br i1 %i.kv, label %bb.co, label %.split446.us.invoke.i

bb.co:                                            ; preds = %bb.cn
  %i.kw = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.kk
  %i.kx = load i8, ptr %i.kw, align 1, !noalias !17236, !noundef !28
  %i.ky = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ku
  %i.kz = load i8, ptr %i.ky, align 1, !noalias !17236, !noundef !28
  %i.la = icmp ult i8 %i.kx, %i.kz
  br i1 %i.la, label %bb.cp, label %._crit_edge.i

bb.cp:                                            ; preds = %bb.co
  %i.lb = add nuw i64 %.sroa.038.1469.i, 1        ; 2 uses
  %i.lc = icmp ult i64 %i.lb, %i.gi
  br i1 %i.lc, label %bb.cd, label %._crit_edge.i

bb.cq:                                            ; preds = %bb.db
  %exitcond.not.i = icmp eq i64 %.pre-phi696.i, %umax.i86
  br i1 %exitcond.not.i, label %._crit_edge1792, label %.lr.ph1791

.lr.ph1791:                                       ; preds = %.preheader56.i, %bb.cq
  %.sroa.09.1.i1790 = phi i64 [ %.pre-phi696.i, %bb.cq ], [ %.sroa.09.0490.i, %.preheader56.i ] ; 6 uses
  br i1 %or.cond170.i, label %bb.cs, label %bb.cu

._crit_edge1792:                                  ; preds = %bb.cq, %bb.cz, %bb.db, %.preheader56.i
  %.sroa.09.1.lcssa.i = phi i64 [ %umax.i86, %.preheader56.i ], [ %umax.i86, %bb.cq ], [ %.sroa.09.1.i1790, %bb.cz ], [ %.sroa.09.1.i1790, %bb.db ] ; 2 uses
  %i.ld = sub nuw i64 %.sroa.09.1.lcssa.i, %.sroa.09.0490.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.le = load ptr, ptr %.val51, align 8, !alias.scope !17247, !noalias !17248, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 120 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 136 ; 2 uses
  %i.lh = load i64, ptr %i.lg, align 8, !alias.scope !17249, !noalias !17236, !noundef !28 ; 3 uses
  %i.li = load i64, ptr %i.lf, align 8, !range !43, !alias.scope !17249, !noalias !17236, !noundef !28
  %i.lj = icmp eq i64 %i.lh, %i.li
  br i1 %i.lj, label %bb.cr, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i

bb.cr:                                            ; preds = %._crit_edge1792
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lf) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17236

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.cr, %._crit_edge1792
  %i.lk = getelementptr inbounds nuw i8, ptr %i.le, i64 128
  %i.ll = load ptr, ptr %i.lk, align 8, !alias.scope !17249, !noalias !17236, !nonnull !28, !noundef !28
  %i.lm = getelementptr inbounds nuw [40 x i8], ptr %i.ll, i64 %i.lh ; 4 uses
  store i64 2, ptr %i.lm, align 8, !noalias !17236
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store i64 %i.ic, ptr %.sroa.439.0..sroa_idx.i, align 8, !noalias !17236
  %.sroa.540.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  store i64 %i.id, ptr %.sroa.540.0..sroa_idx.i, align 8, !noalias !17236
  %.sroa.641.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 24
  store i64 %i.ld, ptr %.sroa.641.0..sroa_idx.i, align 8, !noalias !17236
  %i.ln = add i64 %i.lh, 1
  store i64 %i.ln, ptr %i.lg, align 8, !alias.scope !17249, !noalias !17236
  br label %bb.dc

bb.cs:                                            ; preds = %.lr.ph1791
  %i.lo = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ct unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17236

bb.ct:                                            ; preds = %bb.cs
  br i1 %i.lo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i.thread, label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %.lr.ph1791
  %i.lp = mul i64 %.sroa.09.1.i1790, %i.gr        ; 2 uses
  %i.lq = add i64 %.sroa.09.1.i1790, %invariant.op467.i ; 2 uses
  %i.lr = icmp ult i64 %i.lq, %i.bc
  br i1 %i.lr, label %bb.cv, label %11

11:                                               ; preds = %bb.cu
  %12 = add i64 %.sroa.09.0490.i, %invariant.op467.i
  %umax687.le.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %12)
  br label %.invoke.i

bb.cv:                                            ; preds = %bb.cu
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.lq
  %.val206.i = load i32, ptr %i.ls, align 4, !noalias !17236, !noundef !28
  %.val207.i = load i32, ptr %i.in, align 4, !noalias !17236, !noundef !28
  %i.lt = icmp eq i32 %.val206.i, %.val207.i
  br i1 %i.lt, label %bb.cw, label %._crit_edge691.i

._crit_edge691.i:                                 ; preds = %bb.cv
  %.pre695.i = add i64 %.sroa.09.1.i1790, 1       ; 2 uses
  %.pre697.i = mul i64 %.pre695.i, %i.gr
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.lu = add i64 %i.lp, %.sroa.038.0489.i        ; 3 uses
  %i.lv = icmp ult i64 %i.lu, %i.gt
  br i1 %i.lv, label %bb.cy, label %.split443.us.invoke.i

bb.cx:                                            ; preds = %bb.cz, %._crit_edge691.i
  %.pre-phi698.i.a = phi i64 [ %.pre697.i, %._crit_edge691.i ], [ %i.lz, %bb.cz ]
  %.pre-phi696.i = phi i64 [ %.pre695.i, %._crit_edge691.i ], [ %i.ly, %bb.cz ] ; 2 uses
  %i.lw = add i64 %.pre-phi698.i.a, %.sroa.038.0489.i ; 3 uses
  %i.lx = icmp ult i64 %i.lw, %i.gt
  br i1 %i.lx, label %bb.da, label %.split443.us.invoke.i

bb.cy:                                            ; preds = %bb.cw
  %i.ly = add i64 %.sroa.09.1.i1790, 1            ; 2 uses
  %i.lz = mul i64 %i.ly, %i.gr                    ; 2 uses
  %i.ma = add i64 %i.lz, %i.jg                    ; 3 uses
  %i.mb = icmp ult i64 %i.ma, %i.gt
  br i1 %i.mb, label %bb.cz, label %.split446.us.invoke.i

bb.cz:                                            ; preds = %bb.cy
  %i.mc = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.lu
  %i.md = load i8, ptr %i.mc, align 1, !noalias !17236, !noundef !28
  %i.me = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ma
  %i.mf = load i8, ptr %i.me, align 1, !noalias !17236, !noundef !28
  %i.mg = add i8 %i.mf, 1
  %i.mh = icmp eq i8 %i.md, %i.mg
  br i1 %i.mh, label %._crit_edge1792, label %bb.cx

bb.da:                                            ; preds = %bb.cx
  %i.mi = add i64 %i.lp, %i.jg                    ; 3 uses
  %i.mj = icmp ult i64 %i.mi, %i.gt
  br i1 %i.mj, label %bb.db, label %.split446.us.invoke.i

bb.db:                                            ; preds = %bb.da
  %i.mk = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.lw
  %i.ml = load i8, ptr %i.mk, align 1, !noalias !17236, !noundef !28
  %i.mm = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.mi
  %i.mn = load i8, ptr %i.mm, align 1, !noalias !17236, !noundef !28
  %.not167.i = icmp ult i8 %i.ml, %i.mn
  br i1 %.not167.i, label %._crit_edge1792, label %bb.cq

bb.dc:                                            ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i
  %.sroa.038.3.i = phi i64 [ %.sroa.038.0489.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.038.1.lcssa.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.038.4.lcssa.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i ] ; 5 uses
  %.sroa.09.3.i = phi i64 [ %.sroa.09.1.lcssa.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.09.0490.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i ], [ %.sroa.09.4.lcssa.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i ] ; 5 uses
  %i.mo = icmp ult i64 %.sroa.09.3.i, %i.gj       ; 3 uses
  %i.mp = icmp ult i64 %.sroa.038.3.i, %i.gi      ; 2 uses
  %or.cond.i87 = select i1 %i.mo, i1 %i.mp, i1 false
  br i1 %or.cond.i87, label %.lr.ph492.i, label %._crit_edge493.i

._crit_edge479.i:                                 ; preds = %bb.dn, %bb.dm, %bb.dj, %.preheader.i
  %.sroa.038.4.lcssa.i = phi i64 [ %.sroa.038.0489.i, %.preheader.i ], [ %i.nq, %bb.dn ], [ %.sroa.038.4476.i, %bb.dj ], [ %.sroa.038.4476.i, %bb.dm ] ; 2 uses
  %.sroa.09.4.lcssa.i = phi i64 [ %.sroa.09.0490.i, %.preheader.i ], [ %i.no, %bb.dn ], [ %.sroa.09.4477.i, %bb.dj ], [ %.sroa.09.4477.i, %bb.dm ]
  %i.mq = sub nuw i64 %.sroa.038.4.lcssa.i, %.sroa.038.0489.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.mr = load ptr, ptr %.val51, align 8, !alias.scope !17250, !noalias !17251, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 120 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 136 ; 2 uses
  %i.mu = load i64, ptr %i.mt, align 8, !alias.scope !17252, !noalias !17236, !noundef !28 ; 3 uses
  %i.mv = load i64, ptr %i.ms, align 8, !range !43, !alias.scope !17252, !noalias !17236, !noundef !28
  %i.mw = icmp eq i64 %i.mu, %i.mv
  br i1 %i.mw, label %bb.dd, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i

bb.dd:                                            ; preds = %._crit_edge479.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ms) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17236

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.dd, %._crit_edge479.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mr, i64 128
  %i.my = load ptr, ptr %i.mx, align 8, !alias.scope !17252, !noalias !17236, !nonnull !28, !noundef !28
  %i.mz = getelementptr inbounds nuw [40 x i8], ptr %i.my, i64 %i.mu ; 4 uses
  store i64 0, ptr %i.mz, align 8, !noalias !17236
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  store i64 %i.ic, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !17236
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  store i64 %i.id, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !17236
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  store i64 %i.mq, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !17236
  %i.na = add i64 %i.mu, 1
  store i64 %i.na, ptr %i.mt, align 8, !alias.scope !17252, !noalias !17236
  br label %bb.dc

.lr.ph478.i:                                      ; preds = %.preheader.i, %bb.dn
  %.sroa.09.4477.i = phi i64 [ %i.no, %bb.dn ], [ %.sroa.09.0490.i, %.preheader.i ] ; 5 uses
  %.sroa.038.4476.i = phi i64 [ %i.nq, %bb.dn ], [ %.sroa.038.0489.i, %.preheader.i ] ; 6 uses
  %i.nb = and i64 %.sroa.038.4476.i, 1023
  %i.nc = icmp eq i64 %i.nb, 0
  %or.cond180.i = select i1 %.sroa.05.0.not491.i, i1 %i.nc, i1 false
  br i1 %or.cond180.i, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dh, %.lr.ph478.i
  %i.nd = mul i64 %.sroa.09.4477.i, %i.gr
  %i.ne = add i64 %.sroa.09.4477.i, %invariant.op467.i ; 2 uses
  %i.nf = icmp ult i64 %i.ne, %i.bc
  br i1 %i.nf, label %bb.di, label %bb.df

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257) #74
          to label %.noexc189.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17236

.noexc189.i:                                      ; preds = %bb.df
  unreachable

bb.dg:                                            ; preds = %.lr.ph478.i
  %i.ng = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dh unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17236

bb.dh:                                            ; preds = %bb.dg
  br i1 %i.ng, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i.thread, label %bb.de

bb.di:                                            ; preds = %bb.de
  %i.nh = add i64 %.sroa.038.4476.i, %invariant.op.i85 ; 2 uses
  %i.ni = icmp ult i64 %i.nh, %i.az
  br i1 %i.ni, label %bb.dj, label %.invoke.i

bb.dj:                                            ; preds = %bb.di
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.ne
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.nh
  %.val204.i = load i32, ptr %i.nj, align 4, !noalias !17236, !noundef !28
  %.val205.i = load i32, ptr %i.nk, align 4, !noalias !17236, !noundef !28
  %i.nl = icmp eq i32 %.val204.i, %.val205.i
  br i1 %i.nl, label %bb.dk, label %._crit_edge479.i

bb.dk:                                            ; preds = %bb.dj
  %i.nm = add i64 %i.nd, %.sroa.038.4476.i        ; 3 uses
  %i.nn = icmp ult i64 %i.nm, %i.gt
  br i1 %i.nn, label %bb.dl, label %.split443.us.invoke.i

bb.dl:                                            ; preds = %bb.dk
  %i.no = add nuw i64 %.sroa.09.4477.i, 1         ; 4 uses
  %i.np = mul i64 %i.no, %i.gr
  %i.nq = add nuw i64 %.sroa.038.4476.i, 1        ; 4 uses
  %i.nr = add i64 %i.nq, %i.np                    ; 3 uses
  %i.ns = icmp ult i64 %i.nr, %i.gt
  br i1 %i.ns, label %bb.dm, label %.split446.us.invoke.i

bb.dm:                                            ; preds = %bb.dl
  %i.nt = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.nm
  %i.nu = load i8, ptr %i.nt, align 1, !noalias !17236, !noundef !28
  %i.nv = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.nr
  %i.nw = load i8, ptr %i.nv, align 1, !noalias !17236, !noundef !28
  %i.nx = add i8 %i.nw, 1
  %i.ny = icmp eq i8 %i.nu, %i.nx
  br i1 %i.ny, label %bb.dn, label %._crit_edge479.i

bb.dn:                                            ; preds = %bb.dm
  %i.nz = icmp ult i64 %i.no, %i.gj
  %i.oa = icmp ult i64 %i.nq, %i.gi
  %or.cond177.i = and i1 %i.nz, %i.oa
  br i1 %or.cond177.i, label %.lr.ph478.i, label %._crit_edge479.i

.loopexit64.i:                                    ; preds = %bb.do, %bb.dq, %bb.bu, %bb.eb
  br i1 %i.gu, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit217.sink.split.i.thread

bb.do:                                            ; preds = %.lr.ph466.split.i
  br i1 %i.ha, label %.loopexit64.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.do
  %i.ob = mul i64 %i.gz, %i.gr                    ; 2 uses
  %i.oc = mul i64 %.sroa.0102.0465.i, %i.gr       ; 2 uses
  %.reass.i88 = add i64 %i.gz, %invariant.op467.i ; 4 uses
  %i.od = icmp ult i64 %.reass.i88, %i.bc
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.reass.i88
  %.fr.i = freeze i1 %i.od
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.dz
  %.sroa.0105.0433.us.i = phi i64 [ %i.of, %bb.dz ], [ %i.gi, %.lr.ph.i ] ; 3 uses
  %i.of = add i64 %.sroa.0105.0433.us.i, -1       ; 6 uses
  %i.og = and i64 %i.of, 1023
  %i.oh = icmp eq i64 %i.og, 0
  br i1 %i.oh, label %bb.dp, label %bb.dr

bb.dp:                                            ; preds = %.lr.ph.split.us.i
  %i.oi = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17236

bb.dq:                                            ; preds = %bb.dp
  br i1 %i.oi, label %.loopexit64.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %.lr.ph.split.us.i
  %.reass.us.i = add i64 %i.of, %invariant.op.i85 ; 3 uses
  %i.oj = icmp ult i64 %.reass.us.i, %i.az
  br i1 %i.oj, label %bb.ds, label %.invoke.i

bb.ds:                                            ; preds = %bb.dr
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.reass.us.i
  %.val.us.i = load i32, ptr %i.oe, align 4, !noalias !17236, !noundef !28
  %.val203.us.i = load i32, ptr %i.ok, align 4, !noalias !17236, !noundef !28
  %i.ol = icmp eq i32 %.val.us.i, %.val203.us.i
  br i1 %i.ol, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.om = add i64 %i.of, %i.oc                    ; 3 uses
  %i.on = icmp ult i64 %i.om, %i.gt
  br i1 %i.on, label %bb.du, label %.split443.us.invoke.i

bb.du:                                            ; preds = %bb.dt
  %i.oo = add i64 %.sroa.0105.0433.us.i, %i.ob    ; 3 uses
  %i.op = icmp ult i64 %i.oo, %i.gt
  br i1 %i.op, label %bb.dv, label %.split446.us.invoke.i

bb.dv:                                            ; preds = %bb.du
  %i.oq = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.om
  %i.or = load i8, ptr %i.oq, align 1, !noalias !17236, !noundef !28
  %i.os = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.oo
  %i.ot = load i8, ptr %i.os, align 1, !noalias !17236, !noundef !28
  %..i.us.i = tail call noundef i8 @llvm.umax.i8(i8 %i.ot, i8 %i.or)
  br label %bb.dy

bb.dw:                                            ; preds = %bb.ds
  %i.ou = add i64 %.sroa.0105.0433.us.i, %i.oc    ; 3 uses
  %i.ov = icmp ult i64 %i.ou, %i.gt
  br i1 %i.ov, label %bb.dx, label %.split443.us.invoke.i

bb.dx:                                            ; preds = %bb.dw
  %i.ow = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ou
  %i.ox = load i8, ptr %i.ow, align 1, !noalias !17236, !noundef !28
  %i.oy = add i8 %i.ox, 1
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dv
  %.sroa.04.0.us.i = phi i8 [ %i.oy, %bb.dx ], [ %..i.us.i, %bb.dv ]
  %i.oz = add i64 %i.of, %i.ob                    ; 3 uses
  %i.pa = icmp ult i64 %i.oz, %i.gt
  br i1 %i.pa, label %bb.dz, label %.split446.us.invoke.i

bb.dz:                                            ; preds = %bb.dy
  %i.pb = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.oz
  store i8 %.sroa.04.0.us.i, ptr %i.pb, align 1, !noalias !17236
  %.not168.us.i = icmp eq i64 %i.of, 0
  br i1 %.not168.us.i, label %..loopexit68_crit_edge.split.us.i, label %.lr.ph.split.us.i

..loopexit68_crit_edge.split.us.i:                ; preds = %bb.dz
  %.not.i89 = icmp eq i64 %i.gz, 0
  br i1 %.not.i89, label %.lr.ph492.i, label %.lr.ph466.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.pc = and i64 %i.gi, 1023
  %i.pd = icmp eq i64 %i.pc, 1
  br i1 %i.pd, label %bb.ea, label %.invoke.i

bb.ea:                                            ; preds = %.lr.ph.split.i
  %i.pe = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.eb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17236

bb.eb:                                            ; preds = %bb.ea
  br i1 %i.pe, label %.loopexit64.i, label %.invoke.i

.split443.us.invoke.i:                            ; preds = %bb.dw, %bb.dt, %bb.by, %bb.bx, %bb.cx, %bb.cw, %bb.cj, %bb.ck, %bb.dk
  %i.pf = phi i64 [ %i.ip, %bb.bx ], [ %i.lw, %bb.cx ], [ %i.nm, %bb.dk ], [ %i.ki, %bb.cj ], [ %i.gt, %bb.ck ], [ %i.lu, %bb.cw ], [ %i.ir, %bb.by ], [ %i.om, %bb.dt ], [ %i.ou, %bb.dw ]
  %i.pg = phi ptr [ @243, %bb.bx ], [ @255, %bb.cx ], [ @259, %bb.dk ], [ @248, %bb.cj ], [ @250, %bb.ck ], [ @253, %bb.cw ], [ @245, %bb.by ], [ @263, %bb.dt ], [ @265, %bb.dw ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.pf, i64 noundef %i.gt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pg) #70
          to label %.split443.us.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17236

.split443.us.cont.i:                              ; preds = %.split443.us.invoke.i
  unreachable

.split446.us.invoke.i:                            ; preds = %bb.dy, %bb.du, %bb.cb, %bb.bz, %bb.da, %bb.cy, %bb.cl, %bb.cn, %bb.dl
  %i.ph = phi i64 [ %i.iw, %bb.bz ], [ %i.mi, %bb.da ], [ %i.nr, %bb.dl ], [ %i.km, %bb.cl ], [ %i.gt, %bb.cn ], [ %i.ma, %bb.cy ], [ %i.jh, %bb.cb ], [ %i.oo, %bb.du ], [ %i.oz, %bb.dy ]
  %i.pi = phi ptr [ @244, %bb.bz ], [ @256, %bb.da ], [ @260, %bb.dl ], [ @249, %bb.cl ], [ @251, %bb.cn ], [ @254, %bb.cy ], [ @246, %bb.cb ], [ @264, %bb.du ], [ @266, %bb.dy ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ph, i64 noundef %i.gt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pi) #70
          to label %.split446.us.cont.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17236

.split446.us.cont.i:                              ; preds = %.split446.us.invoke.i
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread.i105, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi44.i, %.thread.i ], [ %lpad.loopexit.split-lp1857, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1932, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.phi44.i106, %.thread.i105 ]
  resume { ptr, i32 } %common.resume.op

bb.ec:                                            ; preds = %bb.bg
  br i1 %i.gq, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.pj = add i64 %i.gj, 1                        ; 11 uses
  %i.pk = add i64 %i.gi, 1
  %i.pl = mul i64 %i.pk, %i.pj                    ; 29 uses
  %.not.i.i.i92 = icmp slt i64 %i.pl, 0
  br i1 %.not.i.i.i92, label %bb.eh, label %bb.ee, !prof !42

bb.ee:                                            ; preds = %bb.ed
  %i.pm = icmp eq i64 %i.pl, 0                    ; 3 uses
  br i1 %i.pm, label %.lr.ph481.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !17253
  %i.pn = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.pl, i64 noundef range(i64 1, 9) 1) #69, !noalias !17253 ; 2 uses
  %i.po = icmp eq ptr %i.pn, null
  br i1 %i.po, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.pp = ptrtoint ptr %i.pn to i64
  br label %.lr.ph481.i

bb.eh:                                            ; preds = %bb.ef, %bb.ed
  %.sroa.4.0.ph.i.i181 = phi i64 [ 1, %bb.ef ], [ 0, %bb.ed ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i181, i64 %i.pl) #70, !noalias !17254
  unreachable

.lr.ph481.i:                                      ; preds = %bb.ee, %bb.eg
  %.sroa.10.0.i.i94 = phi i64 [ %i.pp, %bb.eg ], [ 1, %bb.ee ]
  %i.pq = inttoptr i64 %.sroa.10.0.i.i94 to ptr   ; 21 uses
  %invariant.op.i109 = sub i64 %.sroa.0218.0, %i.bd ; 4 uses
  %invariant.op482.i = sub i64 %.sroa.0.0, %i.ba  ; 4 uses
  br label %.lr.ph481.split.i

.lr.ph481.split.i:                                ; preds = %.lr.ph481.i, %..loopexit68_crit_edge.split.us.i179
  %.sroa.0102.0480.i = phi i64 [ %i.pr, %..loopexit68_crit_edge.split.us.i179 ], [ %i.gi, %.lr.ph481.i ] ; 2 uses
  %i.pr = add i64 %.sroa.0102.0480.i, -1          ; 4 uses
  %i.ps = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17255

._crit_edge509.i:                                 ; preds = %bb.fx
  br i1 %i.vg, label %bb.ei, label %bb.ek

.lr.ph508.i:                                      ; preds = %..loopexit68_crit_edge.split.us.i179, %bb.fx
  %.sroa.05.0.not507.i = phi i1 [ false, %bb.fx ], [ true, %..loopexit68_crit_edge.split.us.i179 ] ; 3 uses
  %.sroa.09.0506.i = phi i64 [ %.sroa.09.3.i144, %bb.fx ], [ 0, %..loopexit68_crit_edge.split.us.i179 ] ; 14 uses
  %.sroa.039.0505.i = phi i64 [ %.sroa.039.3.i, %bb.fx ], [ 0, %..loopexit68_crit_edge.split.us.i179 ] ; 16 uses
  %i.pt = and i64 %.sroa.039.0505.i, 1023
  %i.pu = icmp eq i64 %i.pt, 0
  %or.cond170.i120 = select i1 %.sroa.05.0.not507.i, i1 %i.pu, i1 false ; 2 uses
  br i1 %or.cond170.i120, label %bb.eo, label %bb.en

bb.ei:                                            ; preds = %._crit_edge509.i
  %i.pv = add i64 %.sroa.09.3.i144, %.sroa.0.0    ; 2 uses
  %i.pw = sub nuw i64 %i.gi, %.sroa.09.3.i144
  %i.px = add i64 %.sroa.039.3.i, %.sroa.0218.0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.py = load ptr, ptr %.val51, align 8, !alias.scope !17256, !noalias !17257, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 120 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 136 ; 2 uses
  %i.qb = load i64, ptr %i.qa, align 8, !alias.scope !17258, !noalias !17255, !noundef !28 ; 3 uses
  %i.qc = load i64, ptr %i.pz, align 8, !range !43, !alias.scope !17258, !noalias !17255, !noundef !28
  %i.qd = icmp eq i64 %i.qb, %i.qc
  br i1 %i.qd, label %bb.ej, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116

bb.ej:                                            ; preds = %bb.ei
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.pz) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17255

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116: ; preds = %bb.ej, %bb.ei
  %i.qe = getelementptr inbounds nuw i8, ptr %i.py, i64 128
  %i.qf = load ptr, ptr %i.qe, align 8, !alias.scope !17258, !noalias !17255, !nonnull !28, !noundef !28
  %i.qg = getelementptr inbounds nuw [40 x i8], ptr %i.qf, i64 %i.qb ; 4 uses
  store i64 1, ptr %i.qg, align 8, !noalias !17255
  %.sroa.424.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  store i64 %i.pv, ptr %.sroa.424.0..sroa_idx.i117, align 8, !noalias !17255
  %.sroa.525.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.qg, i64 16
  store i64 %i.pw, ptr %.sroa.525.0..sroa_idx.i118, align 8, !noalias !17255
  %.sroa.626.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.qg, i64 24
  store i64 %i.px, ptr %.sroa.626.0..sroa_idx.i119, align 8, !noalias !17255
  %i.qh = add i64 %i.qb, 1
  store i64 %i.qh, ptr %i.qa, align 8, !alias.scope !17258, !noalias !17255
  br i1 %i.vh, label %bb.el, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit

bb.ek:                                            ; preds = %._crit_edge509.i
  br i1 %i.vh, label %._crit_edge1055, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit

._crit_edge1055:                                  ; preds = %bb.ek
  %.pre1061 = add i64 %.sroa.09.3.i144, %.sroa.0.0
  %.pre1063 = add i64 %.sroa.039.3.i, %.sroa.0218.0
  br label %bb.el

.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fn, %bb.gb, %bb.fa, %bb.fm, %bb.ez, %.split446.us.invoke.i128, %bb.ga
  %lpad.loopexit.split-lp1906 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i105

.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gk, %bb.fy, %bb.eo, %.lr.ph481.split.i, %.split443.us.invoke.i126, %bb.gv, %.invoke.i121, %bb.em, %bb.ej
  %lpad.loopexit.split-lp1932 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.pm, label %common.resume, label %.thread.i105

.thread.i105:                                     ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi44.i106 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1932, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1906, %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pq, i64 noundef %i.pl, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !17259
  br label %common.resume

bb.el:                                            ; preds = %._crit_edge1055, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116
  %.pre-phi1064 = phi i64 [ %.pre1063, %._crit_edge1055 ], [ %i.px, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116 ]
  %.pre-phi1062 = phi i64 [ %.pre1061, %._crit_edge1055 ], [ %i.pv, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i116 ]
  %i.qi = sub nuw i64 %i.gj, %.sroa.039.3.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.qj = load ptr, ptr %.val51, align 8, !alias.scope !17260, !noalias !17261, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 120 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 136 ; 2 uses
  %i.qm = load i64, ptr %i.ql, align 8, !alias.scope !17262, !noalias !17255, !noundef !28 ; 3 uses
  %i.qn = load i64, ptr %i.qk, align 8, !range !43, !alias.scope !17262, !noalias !17255, !noundef !28
  %i.qo = icmp eq i64 %i.qm, %i.qn
  br i1 %i.qo, label %bb.em, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i99

bb.em:                                            ; preds = %bb.el
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.qk) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17255

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i99: ; preds = %bb.em, %bb.el
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qj, i64 128
  %i.qq = load ptr, ptr %i.qp, align 8, !alias.scope !17262, !noalias !17255, !nonnull !28, !noundef !28
  %i.qr = getelementptr inbounds nuw [40 x i8], ptr %i.qq, i64 %i.qm ; 4 uses
  store i64 2, ptr %i.qr, align 8, !noalias !17255
  %.sroa.434.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  store i64 %.pre-phi1062, ptr %.sroa.434.0..sroa_idx.i100, align 8, !noalias !17255
  %.sroa.535.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  store i64 %.pre-phi1064, ptr %.sroa.535.0..sroa_idx.i101, align 8, !noalias !17255
  %.sroa.636.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.qr, i64 24
  store i64 %i.qi, ptr %.sroa.636.0..sroa_idx.i102, align 8, !noalias !17255
  %i.qs = add i64 %i.qm, 1
  store i64 %i.qs, ptr %i.ql, align 8, !alias.scope !17262, !noalias !17255
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit

bb.en:                                            ; preds = %bb.ep, %.lr.ph508.i
  %i.qt = mul i64 %.sroa.09.0506.i, %i.pj         ; 4 uses
  %i.qu = add i64 %.sroa.09.0506.i, %.sroa.0.0    ; 4 uses
  %i.qv = add i64 %.sroa.039.0505.i, %.sroa.0218.0 ; 4 uses
  %i.qw = sub i64 %i.qv, %i.bd                    ; 3 uses
  %i.qx = icmp ult i64 %i.qw, %i.bc
  br i1 %i.qx, label %bb.eq, label %.invoke.i121

.invoke.i121:                                     ; preds = %bb.gm, %bb.eq, %bb.en, %bb.fc, %bb.gd, %bb.gy, %bb.gx, %13
  %i.qy = phi i64 [ %.reass483.i, %bb.gy ], [ %.reass.i170, %bb.gx ], [ %i.bc, %bb.fc ], [ %umax703.le.i, %13 ], [ %i.qw, %bb.en ], [ %i.az, %bb.gd ], [ %i.rd, %bb.eq ], [ %.reass.us.i173, %bb.gm ]
  %i.qz = phi i64 [ %i.az, %bb.gy ], [ %i.bc, %bb.gx ], [ %i.bc, %bb.fc ], [ %i.az, %13 ], [ %i.bc, %bb.en ], [ %i.az, %bb.gd ], [ %i.az, %bb.eq ], [ %i.bc, %bb.gm ]
  %i.ra = phi ptr [ @288, %bb.gy ], [ @287, %bb.gx ], [ @273, %bb.fc ], [ @278, %13 ], [ @267, %bb.en ], [ @284, %bb.gd ], [ @268, %bb.eq ], [ @287, %bb.gm ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.qy, i64 noundef %i.qz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ra) #74
          to label %.cont.i122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17255

.cont.i122:                                       ; preds = %.invoke.i121
  unreachable

bb.eo:                                            ; preds = %.lr.ph508.i
  %i.rb = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ep unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17255

bb.ep:                                            ; preds = %bb.eo
  br i1 %i.rb, label %.loopexit64.i166, label %bb.en

bb.eq:                                            ; preds = %bb.en
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.qw ; 2 uses
  %i.rd = sub i64 %i.qu, %i.ba                    ; 3 uses
  %i.re = icmp ult i64 %i.rd, %i.az
  br i1 %i.re, label %bb.er, label %.invoke.i121

bb.er:                                            ; preds = %bb.eq
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.rd ; 2 uses
  %.val210.i123 = load i32, ptr %i.rc, align 4, !noalias !17255, !noundef !28
  %.val211.i124 = load i32, ptr %i.rf, align 4, !noalias !17255, !noundef !28
  %i.rg = icmp eq i32 %.val210.i123, %.val211.i124
  br i1 %i.rg, label %bb.es, label %._crit_edge708.i

._crit_edge708.i:                                 ; preds = %bb.er
  %.pre.i125 = add nuw i64 %.sroa.09.0506.i, 1
  %.pre709.i = mul i64 %.pre.i125, %i.pj
  br label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.rh = add i64 %i.qt, %.sroa.039.0505.i        ; 3 uses
  %i.ri = icmp ult i64 %i.rh, %i.pl
  br i1 %i.ri, label %bb.eu, label %.split443.us.invoke.i126

bb.et:                                            ; preds = %bb.ev, %._crit_edge708.i
  %.pre-phi710.i = phi i64 [ %.pre709.i, %._crit_edge708.i ], [ %i.rm, %bb.ev ] ; 3 uses
  %i.rj = add i64 %.pre-phi710.i, %.sroa.039.0505.i ; 3 uses
  %i.rk = icmp ult i64 %i.rj, %i.pl
  br i1 %i.rk, label %bb.ew, label %.split443.us.invoke.i126

bb.eu:                                            ; preds = %bb.es
  %i.rl = add nuw i64 %.sroa.09.0506.i, 1
  %i.rm = mul i64 %i.rl, %i.pj                    ; 2 uses
  %i.rn = add nuw i64 %.sroa.039.0505.i, 1
  %i.ro = add i64 %i.rn, %i.rm                    ; 3 uses
  %i.rp = icmp ult i64 %i.ro, %i.pl
  br i1 %i.rp, label %bb.ev, label %.split446.us.invoke.i128

bb.ev:                                            ; preds = %bb.eu
  %i.rq = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.rh
  %i.rr = load i8, ptr %i.rq, align 1, !noalias !17255, !noundef !28
  %i.rs = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.ro
  %i.rt = load i8, ptr %i.rs, align 1, !noalias !17255, !noundef !28
  %i.ru = add i8 %i.rt, 1
  %i.rv = icmp eq i8 %i.rr, %i.ru
  br i1 %i.rv, label %.preheader.i155, label %bb.et

.preheader.i155:                                  ; preds = %bb.ev
  %i.rw = icmp ult i64 %.sroa.09.0506.i, %i.gi
  %i.rx = icmp ult i64 %.sroa.039.0505.i, %i.gj
  %or.cond177491.i = select i1 %i.rw, i1 %i.rx, i1 false
  br i1 %or.cond177491.i, label %.lr.ph494.i, label %._crit_edge495.i

bb.ew:                                            ; preds = %bb.et
  %i.ry = add nuw i64 %.sroa.039.0505.i, 1        ; 3 uses
  %i.rz = add i64 %i.ry, %i.qt                    ; 3 uses
  %i.sa = icmp ult i64 %i.rz, %i.pl
  br i1 %i.sa, label %bb.ex, label %.split446.us.invoke.i128

bb.ex:                                            ; preds = %bb.ew
  %i.sb = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.rj
  %i.sc = load i8, ptr %i.sb, align 1, !noalias !17255, !noundef !28
  %i.sd = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.rz
  %i.se = load i8, ptr %i.sd, align 1, !noalias !17255, !noundef !28
  %.not164.i131 = icmp ult i8 %i.sc, %i.se
  br i1 %.not164.i131, label %.preheader51.i146, label %.preheader56.i132

.preheader56.i132:                                ; preds = %bb.ex
  %umax.i133 = tail call i64 @llvm.umax.i64(i64 %.sroa.09.0506.i, i64 %i.gi) ; 3 uses
  %exitcond.not.i1351781.not = icmp ult i64 %.sroa.09.0506.i, %i.gi
  br i1 %exitcond.not.i1351781.not, label %.lr.ph1783, label %._crit_edge1784

.preheader51.i146:                                ; preds = %bb.ex
  %i.sf = icmp ult i64 %.sroa.039.0505.i, %i.gj
  br i1 %i.sf, label %.lr.ph486.i, label %._crit_edge.i147

.lr.ph486.i:                                      ; preds = %.preheader51.i146
  %i.sg = add i64 %.pre-phi710.i, 1
  %i.sh = add i64 %i.qt, 1
  br label %bb.ey

bb.ey:                                            ; preds = %bb.fk, %.lr.ph486.i
  %.sroa.039.1485.i = phi i64 [ %.sroa.039.0505.i, %.lr.ph486.i ], [ %i.tt, %bb.fk ] ; 9 uses
  %i.si = and i64 %.sroa.039.1485.i, 1023
  %i.sj = icmp eq i64 %i.si, 0
  %or.cond173.i152 = and i1 %.sroa.05.0.not507.i, %i.sj
  br i1 %or.cond173.i152, label %bb.fa, label %bb.fc

._crit_edge.i147:                                 ; preds = %bb.fk, %bb.fj, %bb.fh, %.preheader51.i146
  %.sroa.039.1.lcssa.i = phi i64 [ %.sroa.039.0505.i, %.preheader51.i146 ], [ %i.gj, %bb.fk ], [ %.sroa.039.1485.i, %bb.fj ], [ %.sroa.039.1485.i, %bb.fh ] ; 2 uses
  %i.sk = sub i64 %.sroa.039.1.lcssa.i, %.sroa.039.0505.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.sl = load ptr, ptr %.val51, align 8, !alias.scope !17263, !noalias !17264, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 120 ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 136 ; 2 uses
  %i.so = load i64, ptr %i.sn, align 8, !alias.scope !17265, !noalias !17255, !noundef !28 ; 3 uses
  %i.sp = load i64, ptr %i.sm, align 8, !range !43, !alias.scope !17265, !noalias !17255, !noundef !28
  %i.sq = icmp eq i64 %i.so, %i.sp
  br i1 %i.sq, label %bb.ez, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i148

bb.ez:                                            ; preds = %._crit_edge.i147
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.sm) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i148 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17255

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i148: ; preds = %bb.ez, %._crit_edge.i147
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sl, i64 128
  %i.ss = load ptr, ptr %i.sr, align 8, !alias.scope !17265, !noalias !17255, !nonnull !28, !noundef !28
  %i.st = getelementptr inbounds nuw [40 x i8], ptr %i.ss, i64 %i.so ; 4 uses
  store i64 2, ptr %i.st, align 8, !noalias !17255
  %.sroa.439.0..sroa_idx.i149 = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  store i64 %i.qu, ptr %.sroa.439.0..sroa_idx.i149, align 8, !noalias !17255
  %.sroa.540.0..sroa_idx.i150 = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  store i64 %i.qv, ptr %.sroa.540.0..sroa_idx.i150, align 8, !noalias !17255
  %.sroa.641.0..sroa_idx.i151 = getelementptr inbounds nuw i8, ptr %i.st, i64 24
  store i64 %i.sk, ptr %.sroa.641.0..sroa_idx.i151, align 8, !noalias !17255
  %i.su = add i64 %i.so, 1
  store i64 %i.su, ptr %i.sn, align 8, !alias.scope !17265, !noalias !17255
  br label %bb.fx

bb.fa:                                            ; preds = %bb.ey
  %i.sv = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fb unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17255

bb.fb:                                            ; preds = %bb.fa
  br i1 %i.sv, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread344, label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.ey
  %i.sw = add i64 %.sroa.039.1485.i, %invariant.op.i109 ; 2 uses
  %i.sx = icmp ult i64 %i.sw, %i.bc
  br i1 %i.sx, label %bb.fd, label %.invoke.i121

bb.fd:                                            ; preds = %bb.fc
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.sw
  %.val208.i153 = load i32, ptr %i.sy, align 4, !noalias !17255, !noundef !28
  %.val209.i154 = load i32, ptr %i.rf, align 4, !noalias !17255, !noundef !28
  %i.sz = icmp eq i32 %.val208.i153, %.val209.i154
  br i1 %i.sz, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.ta = add i64 %.sroa.039.1485.i, %i.qt        ; 3 uses
  %i.tb = icmp ult i64 %i.ta, %i.pl
  br i1 %i.tb, label %bb.fg, label %.split443.us.invoke.i126

bb.ff:                                            ; preds = %bb.fh, %bb.fd
  %i.tc = add i64 %.sroa.039.1485.i, %.pre-phi710.i ; 2 uses
  %i.td = icmp ult i64 %i.tc, %i.pl
  br i1 %i.td, label %bb.fi, label %.split443.us.invoke.i126

bb.fg:                                            ; preds = %bb.fe
  %i.te = add i64 %i.sg, %.sroa.039.1485.i        ; 3 uses
  %i.tf = icmp ult i64 %i.te, %i.pl
  br i1 %i.tf, label %bb.fh, label %.split446.us.invoke.i128

bb.fh:                                            ; preds = %bb.fg
  %i.tg = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.ta
  %i.th = load i8, ptr %i.tg, align 1, !noalias !17255, !noundef !28
  %i.ti = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.te
  %i.tj = load i8, ptr %i.ti, align 1, !noalias !17255, !noundef !28
  %i.tk = add i8 %i.tj, 1
  %i.tl = icmp eq i8 %i.th, %i.tk
  br i1 %i.tl, label %._crit_edge.i147, label %bb.ff

bb.fi:                                            ; preds = %bb.ff
  %i.tm = add i64 %i.sh, %.sroa.039.1485.i        ; 2 uses
  %i.tn = icmp ult i64 %i.tm, %i.pl
  br i1 %i.tn, label %bb.fj, label %.split446.us.invoke.i128

bb.fj:                                            ; preds = %bb.fi
  %i.to = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.tc
  %i.tp = load i8, ptr %i.to, align 1, !noalias !17255, !noundef !28
  %i.tq = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.tm
  %i.tr = load i8, ptr %i.tq, align 1, !noalias !17255, !noundef !28
  %i.ts = icmp ult i8 %i.tp, %i.tr
  br i1 %i.ts, label %bb.fk, label %._crit_edge.i147

bb.fk:                                            ; preds = %bb.fj
  %i.tt = add nuw i64 %.sroa.039.1485.i, 1        ; 2 uses
  %i.tu = icmp ult i64 %i.tt, %i.gj
  br i1 %i.tu, label %bb.ey, label %._crit_edge.i147

bb.fl:                                            ; preds = %bb.fw
  %exitcond.not.i135 = icmp eq i64 %.pre-phi712.i, %umax.i133
  br i1 %exitcond.not.i135, label %._crit_edge1784, label %.lr.ph1783

.lr.ph1783:                                       ; preds = %.preheader56.i132, %bb.fl
  %.sroa.09.1.i1341782 = phi i64 [ %.pre-phi712.i, %bb.fl ], [ %.sroa.09.0506.i, %.preheader56.i132 ] ; 6 uses
  br i1 %or.cond170.i120, label %bb.fn, label %bb.fp

._crit_edge1784:                                  ; preds = %bb.fl, %bb.fu, %bb.fw, %.preheader56.i132
  %.sroa.09.1.lcssa.i139 = phi i64 [ %umax.i133, %.preheader56.i132 ], [ %umax.i133, %bb.fl ], [ %.sroa.09.1.i1341782, %bb.fu ], [ %.sroa.09.1.i1341782, %bb.fw ] ; 2 uses
  %i.tv = sub nuw i64 %.sroa.09.1.lcssa.i139, %.sroa.09.0506.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.tw = load ptr, ptr %.val51, align 8, !alias.scope !17266, !noalias !17267, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 120 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 136 ; 2 uses
  %i.tz = load i64, ptr %i.ty, align 8, !alias.scope !17268, !noalias !17255, !noundef !28 ; 3 uses
  %i.ua = load i64, ptr %i.tx, align 8, !range !43, !alias.scope !17268, !noalias !17255, !noundef !28
  %i.ub = icmp eq i64 %i.tz, %i.ua
  br i1 %i.ub, label %bb.fm, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i140

bb.fm:                                            ; preds = %._crit_edge1784
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.tx) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i140 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17255

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i140: ; preds = %bb.fm, %._crit_edge1784
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tw, i64 128
  %i.ud = load ptr, ptr %i.uc, align 8, !alias.scope !17268, !noalias !17255, !nonnull !28, !noundef !28
  %i.ue = getelementptr inbounds nuw [40 x i8], ptr %i.ud, i64 %i.tz ; 4 uses
  store i64 1, ptr %i.ue, align 8, !noalias !17255
  %.sroa.429.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  store i64 %i.qu, ptr %.sroa.429.0..sroa_idx.i141, align 8, !noalias !17255
  %.sroa.530.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  store i64 %i.tv, ptr %.sroa.530.0..sroa_idx.i142, align 8, !noalias !17255
  %.sroa.631.0..sroa_idx.i143 = getelementptr inbounds nuw i8, ptr %i.ue, i64 24
  store i64 %i.qv, ptr %.sroa.631.0..sroa_idx.i143, align 8, !noalias !17255
  %i.uf = add i64 %i.tz, 1
  store i64 %i.uf, ptr %i.ty, align 8, !alias.scope !17268, !noalias !17255
  br label %bb.fx

bb.fn:                                            ; preds = %.lr.ph1783
  %i.ug = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fo unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17255

bb.fo:                                            ; preds = %bb.fn
  br i1 %i.ug, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread344, label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %.lr.ph1783
  %i.uh = mul i64 %.sroa.09.1.i1341782, %i.pj     ; 2 uses
  %i.ui = add i64 %.sroa.09.1.i1341782, %invariant.op482.i ; 2 uses
  %i.uj = icmp ult i64 %i.ui, %i.az
  br i1 %i.uj, label %bb.fq, label %13

13:                                               ; preds = %bb.fp
  %14 = add i64 %.sroa.09.0506.i, %invariant.op482.i
  %umax703.le.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 %14)
  br label %.invoke.i121

bb.fq:                                            ; preds = %bb.fp
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ui
  %.val206.i136 = load i32, ptr %i.rc, align 4, !noalias !17255, !noundef !28
  %.val207.i137 = load i32, ptr %i.uk, align 4, !noalias !17255, !noundef !28
  %i.ul = icmp eq i32 %.val206.i136, %.val207.i137
  br i1 %i.ul, label %bb.fr, label %._crit_edge707.i

._crit_edge707.i:                                 ; preds = %bb.fq
  %.pre711.i = add i64 %.sroa.09.1.i1341782, 1    ; 2 uses
  %.pre713.i = mul i64 %.pre711.i, %i.pj
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.um = add i64 %i.uh, %.sroa.039.0505.i        ; 3 uses
  %i.un = icmp ult i64 %i.um, %i.pl
  br i1 %i.un, label %bb.ft, label %.split443.us.invoke.i126

bb.fs:                                            ; preds = %bb.fu, %._crit_edge707.i
  %.pre-phi714.i.a = phi i64 [ %.pre713.i, %._crit_edge707.i ], [ %i.ur, %bb.fu ]
  %.pre-phi712.i = phi i64 [ %.pre711.i, %._crit_edge707.i ], [ %i.uq, %bb.fu ] ; 2 uses
  %i.uo = add i64 %.pre-phi714.i.a, %.sroa.039.0505.i ; 3 uses
  %i.up = icmp ult i64 %i.uo, %i.pl
  br i1 %i.up, label %bb.fv, label %.split443.us.invoke.i126

bb.ft:                                            ; preds = %bb.fr
  %i.uq = add i64 %.sroa.09.1.i1341782, 1         ; 2 uses
  %i.ur = mul i64 %i.uq, %i.pj                    ; 2 uses
  %i.us = add i64 %i.ur, %i.ry                    ; 3 uses
  %i.ut = icmp ult i64 %i.us, %i.pl
  br i1 %i.ut, label %bb.fu, label %.split446.us.invoke.i128

bb.fu:                                            ; preds = %bb.ft
  %i.uu = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.um
  %i.uv = load i8, ptr %i.uu, align 1, !noalias !17255, !noundef !28
  %i.uw = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.us
  %i.ux = load i8, ptr %i.uw, align 1, !noalias !17255, !noundef !28
  %i.uy = add i8 %i.ux, 1
  %i.uz = icmp eq i8 %i.uv, %i.uy
  br i1 %i.uz, label %._crit_edge1784, label %bb.fs

bb.fv:                                            ; preds = %bb.fs
  %i.va = add i64 %i.uh, %i.ry                    ; 3 uses
  %i.vb = icmp ult i64 %i.va, %i.pl
  br i1 %i.vb, label %bb.fw, label %.split446.us.invoke.i128

bb.fw:                                            ; preds = %bb.fv
  %i.vc = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.uo
  %i.vd = load i8, ptr %i.vc, align 1, !noalias !17255, !noundef !28
  %i.ve = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.va
  %i.vf = load i8, ptr %i.ve, align 1, !noalias !17255, !noundef !28
  %.not167.i138 = icmp ult i8 %i.vd, %i.vf
  br i1 %.not167.i138, label %._crit_edge1784, label %bb.fl

bb.fx:                                            ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i157, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i140, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i148
  %.sroa.039.3.i = phi i64 [ %.sroa.039.0505.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i140 ], [ %.sroa.039.1.lcssa.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i148 ], [ %.sroa.039.4.lcssa.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i157 ] ; 5 uses
  %.sroa.09.3.i144 = phi i64 [ %.sroa.09.1.lcssa.i139, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6deleteCskXtk6F4WjxZ_4just.exit.i140 ], [ %.sroa.09.0506.i, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook6insertCskXtk6F4WjxZ_4just.exit.i148 ], [ %.sroa.09.4.lcssa.i156, %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i157 ] ; 5 uses
  %i.vg = icmp ult i64 %.sroa.09.3.i144, %i.gi    ; 2 uses
  %i.vh = icmp ult i64 %.sroa.039.3.i, %i.gj      ; 3 uses
  %or.cond.i145 = select i1 %i.vg, i1 %i.vh, i1 false
  br i1 %or.cond.i145, label %.lr.ph508.i, label %._crit_edge509.i

._crit_edge495.i:                                 ; preds = %bb.gi, %bb.gh, %bb.ge, %.preheader.i155
  %.sroa.039.4.lcssa.i = phi i64 [ %.sroa.039.0505.i, %.preheader.i155 ], [ %i.wi, %bb.gi ], [ %.sroa.039.4492.i, %bb.ge ], [ %.sroa.039.4492.i, %bb.gh ]
  %.sroa.09.4.lcssa.i156 = phi i64 [ %.sroa.09.0506.i, %.preheader.i155 ], [ %i.wg, %bb.gi ], [ %.sroa.09.4493.i, %bb.ge ], [ %.sroa.09.4493.i, %bb.gh ] ; 2 uses
  %i.vi = sub nuw i64 %.sroa.09.4.lcssa.i156, %.sroa.09.0506.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val51) ]
  %i.vj = load ptr, ptr %.val51, align 8, !alias.scope !17269, !noalias !17270, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 120 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 136 ; 2 uses
  %i.vm = load i64, ptr %i.vl, align 8, !alias.scope !17271, !noalias !17255, !noundef !28 ; 3 uses
  %i.vn = load i64, ptr %i.vk, align 8, !range !43, !alias.scope !17271, !noalias !17255, !noundef !28
  %i.vo = icmp eq i64 %i.vm, %i.vn
  br i1 %i.vo, label %bb.fy, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i157

bb.fy:                                            ; preds = %._crit_edge495.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.vk) #73
          to label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i157 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17255

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms4hookINtB5_12NoFinishHookQQINtNtB7_7compact7CompactINtNtB7_5utils12OffsetLookupmEB1w_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEEENtB5_8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i157: ; preds = %bb.fy, %._crit_edge495.i
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vj, i64 128
  %i.vq = load ptr, ptr %i.vp, align 8, !alias.scope !17271, !noalias !17255, !nonnull !28, !noundef !28
  %i.vr = getelementptr inbounds nuw [40 x i8], ptr %i.vq, i64 %i.vm ; 4 uses
  store i64 0, ptr %i.vr, align 8, !noalias !17255
  %.sroa.4.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  store i64 %i.qu, ptr %.sroa.4.0..sroa_idx.i158, align 8, !noalias !17255
  %.sroa.5.0..sroa_idx.i159 = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  store i64 %i.qv, ptr %.sroa.5.0..sroa_idx.i159, align 8, !noalias !17255
  %.sroa.6.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %i.vr, i64 24
  store i64 %i.vi, ptr %.sroa.6.0..sroa_idx.i160, align 8, !noalias !17255
  %i.vs = add i64 %i.vm, 1
  store i64 %i.vs, ptr %i.vl, align 8, !alias.scope !17271, !noalias !17255
  br label %bb.fx

.lr.ph494.i:                                      ; preds = %.preheader.i155, %bb.gi
  %.sroa.09.4493.i = phi i64 [ %i.wg, %bb.gi ], [ %.sroa.09.0506.i, %.preheader.i155 ] ; 5 uses
  %.sroa.039.4492.i = phi i64 [ %i.wi, %bb.gi ], [ %.sroa.039.0505.i, %.preheader.i155 ] ; 6 uses
  %i.vt = and i64 %.sroa.039.4492.i, 1023
  %i.vu = icmp eq i64 %i.vt, 0
  %or.cond180.i161 = select i1 %.sroa.05.0.not507.i, i1 %i.vu, i1 false
  br i1 %or.cond180.i161, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %bb.gc, %.lr.ph494.i
  %i.vv = mul i64 %.sroa.09.4493.i, %i.pj
  %i.vw = add i64 %.sroa.039.4492.i, %invariant.op.i109 ; 2 uses
  %i.vx = icmp ult i64 %i.vw, %i.bc
  br i1 %i.vx, label %bb.gd, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #74
          to label %.noexc189.i162 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17255

.noexc189.i162:                                   ; preds = %bb.ga
  unreachable

bb.gb:                                            ; preds = %.lr.ph494.i
  %i.vy = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gc unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i129.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17255

bb.gc:                                            ; preds = %bb.gb
  br i1 %i.vy, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread344, label %bb.fz

bb.gd:                                            ; preds = %bb.fz
  %i.vz = add i64 %.sroa.09.4493.i, %invariant.op482.i ; 2 uses
  %i.wa = icmp ult i64 %i.vz, %i.az
  br i1 %i.wa, label %bb.ge, label %.invoke.i121

bb.ge:                                            ; preds = %bb.gd
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.vw
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.vz
  %.val204.i163 = load i32, ptr %i.wb, align 4, !noalias !17255, !noundef !28
  %.val205.i164 = load i32, ptr %i.wc, align 4, !noalias !17255, !noundef !28
  %i.wd = icmp eq i32 %.val204.i163, %.val205.i164
  br i1 %i.wd, label %bb.gf, label %._crit_edge495.i

bb.gf:                                            ; preds = %bb.ge
  %i.we = add i64 %i.vv, %.sroa.039.4492.i        ; 3 uses
  %i.wf = icmp ult i64 %i.we, %i.pl
  br i1 %i.wf, label %bb.gg, label %.split443.us.invoke.i126

bb.gg:                                            ; preds = %bb.gf
  %i.wg = add nuw i64 %.sroa.09.4493.i, 1         ; 4 uses
  %i.wh = mul i64 %i.wg, %i.pj
  %i.wi = add nuw i64 %.sroa.039.4492.i, 1        ; 4 uses
  %i.wj = add i64 %i.wi, %i.wh                    ; 3 uses
  %i.wk = icmp ult i64 %i.wj, %i.pl
  br i1 %i.wk, label %bb.gh, label %.split446.us.invoke.i128

bb.gh:                                            ; preds = %bb.gg
  %i.wl = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.we
  %i.wm = load i8, ptr %i.wl, align 1, !noalias !17255, !noundef !28
  %i.wn = getelementptr inbounds nuw i8, ptr %i.pq, i64 %i.wj
  %i.wo = load i8, ptr %i.wn, align 1, !noalias !17255, !noundef !28
  %i.wp = add i8 %i.wo, 1
  %i.wq = icmp eq i8 %i.wm, %i.wp
  br i1 %i.wq, label %bb.gi, label %._crit_edge495.i

bb.gi:                                            ; preds = %bb.gh
  %i.wr = icmp ult i64 %i.wg, %i.gi
  %i.ws = icmp ult i64 %i.wi, %i.gj
  %or.cond177.i165 = and i1 %i.wr, %i.ws
  br i1 %or.cond177.i165, label %.lr.ph494.i, label %._crit_edge495.i

.loopexit64.i166:                                 ; preds = %bb.gj, %bb.gl, %bb.ep, %bb.gw
  br i1 %i.pm, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread344

bb.gj:                                            ; preds = %.lr.ph481.split.i
  br i1 %i.ps, label %.loopexit64.i166, label %.lr.ph.i167

.lr.ph.i167:                                      ; preds = %bb.gj
  %i.wt = mul i64 %i.pr, %i.pj                    ; 2 uses
  %i.wu = mul i64 %.sroa.0102.0480.i, %i.pj       ; 2 uses
  %.reass483.i = add i64 %i.pr, %invariant.op482.i ; 3 uses
  %i.wv = icmp ult i64 %.reass483.i, %i.az
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.reass483.i
  %.fr.i168 = freeze i1 %i.wv
  br i1 %.fr.i168, label %.lr.ph.split.us.i171, label %.lr.ph.split.i169

.lr.ph.split.us.i171:                             ; preds = %.lr.ph.i167, %bb.gu
  %.sroa.0105.0433.us.i172 = phi i64 [ %i.wx, %bb.gu ], [ %i.gj, %.lr.ph.i167 ] ; 3 uses
  %i.wx = add i64 %.sroa.0105.0433.us.i172, -1    ; 6 uses
  %i.wy = and i64 %i.wx, 1023
  %i.wz = icmp eq i64 %i.wy, 0
  br i1 %i.wz, label %bb.gk, label %bb.gm

bb.gk:                                            ; preds = %.lr.ph.split.us.i171
  %i.xa = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i103.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17255

bb.gl:                                            ; preds = %bb.gk
  br i1 %i.xa, label %.loopexit64.i166, label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %.lr.ph.split.us.i171
  %.reass.us.i173 = add i64 %i.wx, %invariant.op.i109 ; 3 uses
  %i.xb = icmp ult i64 %.reass.us.i173, %i.bc
  br i1 %i.xb, label %bb.gn, label %.invoke.i121

bb.gn:                                            ; preds = %bb.gm
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.reass.us.i173
  %.val.us.i174 = load i32, ptr %i.xc, align 4, !noalias !17255, !noundef !28
end_hunk_9
begin_hunk_10_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just:bb.a
  %.sroa.6298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.zq, i64 24
  store i64 %i.zg, ptr %.sroa.6298.0..sroa_idx, align 8, !noalias !17289
  %i.zr = add i64 %i.zl, 1
  store i64 %i.zr, ptr %i.zk, align 8, !alias.scope !17288, !noalias !17289
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread341

bb.he:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread341
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17292)
  %i.zs = load ptr, ptr %0, align 8, !alias.scope !17293, !nonnull !28, !align !35, !noundef !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17294)
  %i.zt = load ptr, ptr %i.zs, align 8, !alias.scope !17294, !noalias !17293, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 120 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 136 ; 2 uses
  %i.zw = load i64, ptr %i.zv, align 8, !alias.scope !17295, !noalias !17296, !noundef !28 ; 3 uses
  %i.zx = load i64, ptr %i.zu, align 8, !range !43, !alias.scope !17295, !noalias !17296, !noundef !28
  %i.zy = icmp eq i64 %i.zw, %i.zx
  br i1 %i.zy, label %bb.hf, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit185

bb.hf:                                            ; preds = %bb.he
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.zu) #73, !noalias !17297
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit185

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit185: ; preds = %bb.he, %bb.hf
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zt, i64 128
  %i.aaa = load ptr, ptr %i.zz, align 8, !alias.scope !17295, !noalias !17296, !nonnull !28, !noundef !28
  %i.aab = getelementptr inbounds nuw [40 x i8], ptr %i.aaa, i64 %i.zw ; 4 uses
  store i64 0, ptr %i.aab, align 8, !noalias !17296
  %.sroa.4266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  store i64 %i.be, ptr %.sroa.4266.0..sroa_idx, align 8, !noalias !17296
  %.sroa.5267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aab, i64 16
  store i64 %i.bf, ptr %.sroa.5267.0..sroa_idx, align 8, !noalias !17296
  %.sroa.6268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aab, i64 24
  store i64 %.sroa.0.0.i63, ptr %.sroa.6268.0..sroa_idx, align 8, !noalias !17296
  %i.aac = add i64 %i.zw, 1
  store i64 %i.aac, ptr %i.zv, align 8, !alias.scope !17295, !noalias !17296
  br label %bb.hg

bb.hg:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just.exit.thread341, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit185
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17419)
  %i.b = icmp uge i64 %2, %3
  %i.c = icmp uge i64 %5, %6
  %or.cond.i51 = or i1 %i.b, %i.c
  br i1 %or.cond.i51, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i.i = sub nuw i64 %6, %5
  %spec.select.i.i4.i.i.i = sub nuw i64 %3, %2
  %..i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i52 = icmp eq i64 %..i.i.i.i, 0
  br i1 %.not.i52, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !17420, !noalias !17421, !noundef !28
  %invariant.op.i.i.i.i = sub i64 %5, %i.e        ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !17420, !noalias !17421, !noundef !28 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.h, align 8, !alias.scope !17419, !nonnull !28
  %i.m = load i64, ptr %i.i, align 8, !alias.scope !17418
  %invariant.op.i = sub i64 %2, %i.m              ; 2 uses
  %i.n = load i64, ptr %i.j, align 8, !alias.scope !17418 ; 3 uses
  %i.o = load ptr, ptr %i.k, align 8, !alias.scope !17418, !nonnull !28
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.sroa.01.033.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.p, %bb.f ] ; 5 uses
  %i.p = add nuw i64 %.sroa.01.033.i.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17422)
  %.reass.i.i.i.i = add nuw i64 %.sroa.01.033.i.i.i.i, %invariant.op.i.i.i.i ; 2 uses
  %i.q = icmp ult i64 %.reass.i.i.i.i, %i.g
  br i1 %i.q, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %invariant.op.i.i.i.i)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @564) #74, !noalias !17423
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i: ; preds = %bb.c
  %.reass.i = add nuw i64 %.sroa.01.033.i.i.i.i, %invariant.op.i ; 2 uses
  %i.r = icmp ult i64 %.reass.i, %i.n
  br i1 %i.r, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i
  %umax17.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %invariant.op.i)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax17.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565) #74, !noalias !17424
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.reass.i.i.i.i
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.reass.i
  %.val.i.i.i.i.i = load i32, ptr %i.s, align 4, !noalias !17425, !noundef !28
  %.val7.i.i.i.i.i = load i32, ptr %i.t, align 4, !noalias !17425, !noundef !28
  %i.u = icmp eq i32 %.val.i.i.i.i.i, %.val7.i.i.i.i.i
  br i1 %i.u, label %bb.f, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit

bb.f:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, %..i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread309, label %bb.c

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %.not = icmp eq i64 %.sroa.01.033.i.i.i.i, 0
  br i1 %.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread309

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.b, %bb.a, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i53308 = phi i64 [ 0, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0.0.i53312, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit ], [ 0, %bb.a ], [ 0, %bb.b ] ; 2 uses
  %i.v = add i64 %.sroa.0.0.i53308, %2            ; 3 uses
  %i.w = add i64 %.sroa.0.0.i53308, %5            ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17426)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17427)
  %i.x = icmp uge i64 %i.v, %3
  %i.y = icmp uge i64 %i.w, %6
  %or.cond.i54 = or i1 %i.x, %i.y
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  br i1 %or.cond.i54, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge, label %.lr.ph.i.i.i.i55

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge: ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert1034 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre1035 = load i64, ptr %.phi.trans.insert1034, align 8
  %.phi.trans.insert1036 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre1037 = load ptr, ptr %.phi.trans.insert1036, align 8
  %.phi.trans.insert1038 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre1039 = load i64, ptr %.phi.trans.insert1038, align 8
  %.phi.trans.insert1040 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre1041 = load i64, ptr %.phi.trans.insert1040, align 8
  %.phi.trans.insert1042 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre1043 = load ptr, ptr %.phi.trans.insert1042, align 8
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit

.lr.ph.i.i.i.i55:                                 ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = sub nuw i64 %3, %i.v                    ; 2 uses
  %i.af = sub nuw i64 %6, %i.w                    ; 2 uses
  %i.ag = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !17427 ; 4 uses
  %i.ah = load i64, ptr %i.z, align 8, !alias.scope !17427 ; 5 uses
  %i.ai = load ptr, ptr %i.aa, align 8, !alias.scope !17427, !nonnull !28 ; 4 uses
  %i.aj = load i64, ptr %i.ab, align 8, !alias.scope !17426 ; 4 uses
  %i.ak = load i64, ptr %i.ac, align 8, !alias.scope !17426 ; 5 uses
  %i.al = load ptr, ptr %i.ad, align 8, !alias.scope !17426, !nonnull !28 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i55
  %i.am = phi i64 [ %3, %.lr.ph.i.i.i.i55 ], [ %i.ap, %bb.k ]
  %.sroa.01.030.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i55 ], [ %i.ax, %bb.k ] ; 3 uses
  %i.an = phi i64 [ %6, %.lr.ph.i.i.i.i55 ], [ %i.ao, %bb.k ]
  %i.ao = add i64 %i.an, -1                       ; 2 uses
  %exitcond.not.i.i.i.i56 = icmp eq i64 %.sroa.01.030.i.i.i.i, %i.ae
  br i1 %exitcond.not.i.i.i.i56, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = add i64 %i.am, -1                       ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ag                    ; 3 uses
  %i.ar = icmp ult i64 %i.aq, %i.ah
  br i1 %i.ar, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i57, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aq, i64 noundef %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @566) #74, !noalias !17428
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i57: ; preds = %bb.h
  %i.as = sub i64 %i.ap, %i.aj                    ; 3 uses
  %i.at = icmp ult i64 %i.as, %i.ak
  br i1 %i.at, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i58, label %bb.j

bb.j:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i57
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.as, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @567) #74, !noalias !17429
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i58: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit6.i.i.i.i.i57
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aq
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.as
  %.val.i.i.i.i.i59 = load i32, ptr %i.au, align 4, !noalias !17430, !noundef !28
  %.val7.i.i.i.i.i60 = load i32, ptr %i.av, align 4, !noalias !17430, !noundef !28
  %i.aw = icmp eq i32 %.val.i.i.i.i.i59, %.val7.i.i.i.i.i60
  br i1 %i.aw, label %bb.k, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit

bb.k:                                             ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i58
  %i.ax = add nuw i64 %.sroa.01.030.i.i.i.i, 1    ; 2 uses
  %exitcond62.not.i.i.i.i = icmp eq i64 %i.ax, %i.af
  br i1 %exitcond62.not.i.i.i.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit, label %bb.g

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit: ; preds = %bb.g, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i58, %bb.k, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge
  %i.ay = phi ptr [ %.pre1043, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.al, %bb.k ], [ %i.al, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i58 ], [ %i.al, %bb.g ] ; 10 uses
  %i.az = phi i64 [ %.pre1041, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ak, %bb.k ], [ %i.ak, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i58 ], [ %i.ak, %bb.g ] ; 24 uses
  %i.ba = phi i64 [ %.pre1039, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.aj, %bb.k ], [ %i.aj, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i58 ], [ %i.aj, %bb.g ] ; 5 uses
  %i.bb = phi ptr [ %.pre1037, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ai, %bb.k ], [ %i.ai, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i58 ], [ %i.ai, %bb.g ] ; 11 uses
  %i.bc = phi i64 [ %.pre1035, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ah, %bb.k ], [ %i.ah, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i58 ], [ %i.ah, %bb.g ] ; 29 uses
  %i.bd = phi i64 [ %.pre, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ag, %bb.k ], [ %i.ag, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i58 ], [ %i.ag, %bb.g ] ; 8 uses
  %.sroa.0.0.i61 = phi i64 [ 0, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread._RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit_crit_edge ], [ %i.ae, %bb.g ], [ %.sroa.01.030.i.i.i.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit.i.i.i.i.i58 ], [ %i.af, %bb.k ] ; 4 uses
  %i.be = sub i64 %3, %.sroa.0.0.i61              ; 9 uses
  %i.bf = sub i64 %6, %.sroa.0.0.i61              ; 9 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 37 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 25 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 14 uses
  br label %bb.m

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread309: ; preds = %bb.f, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0.0.i53312 = phi i64 [ %.sroa.01.033.i.i.i.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit ], [ %..i.i.i.i, %bb.f ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !17431, !noundef !28 ; 3 uses
  %i.bm = load i64, ptr %i.bj, align 8, !range !43, !alias.scope !17431, !noundef !28
  %i.bn = icmp eq i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.l, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit

bb.l:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread309
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj) #73, !noalias !17432
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit: ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread309, %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !17431, !nonnull !28, !noundef !28
  %i.bq = getelementptr inbounds nuw [40 x i8], ptr %i.bp, i64 %i.bl ; 4 uses
  store i64 0, ptr %i.bq, align 8
  %.sroa.4262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 %2, ptr %.sroa.4262.0..sroa_idx, align 8
  %.sroa.5263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i64 %5, ptr %.sroa.5263.0..sroa_idx, align 8
  %.sroa.6264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store i64 %.sroa.0.0.i53312, ptr %.sroa.6264.0..sroa_idx, align 8
  %i.br = add i64 %i.bl, 1
  store i64 %i.br, ptr %i.bk, align 8, !alias.scope !17431
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit.thread

bb.m:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit
  %.sroa.0209.0 = phi i64 [ %i.w, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0209.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit ] ; 39 uses
  %.sroa.0.0 = phi i64 [ %i.v, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECskXtk6F4WjxZ_4just.exit ], [ %.sroa.0.2, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit ] ; 31 uses
  %i.bs = icmp ult i64 %.sroa.0.0, %i.be          ; 2 uses
  %i.bt = icmp ult i64 %.sroa.0209.0, %i.bf       ; 3 uses
  %or.cond338 = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond338, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit, %bb.m
  br i1 %i.bs, label %bb.aw, label %bb.ax

bb.o:                                             ; preds = %bb.m
  %i.bu = sub nuw i64 %i.be, %.sroa.0.0           ; 6 uses
  %i.bv = sub nuw i64 %i.bf, %.sroa.0209.0        ; 6 uses
  %i.bw = icmp ult i64 %i.bu, 97
  %i.bx = icmp ult i64 %i.bv, 97
  %or.cond.i = or i1 %i.bx, %i.bw
  br i1 %or.cond.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bu) ; 2 uses
  %..i62 = tail call noundef i64 @llvm.umax.i64(i64 %i.bv, i64 %i.bu)
  %i.by = shl nuw i64 %..i, 1
  %i.bz = icmp slt i64 %..i, 0
  br i1 %i.bz, label %bb.q, label %bb.r, !prof !44

bb.q:                                             ; preds = %bb.p
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.052.0.i = phi i64 [ -1, %bb.q ], [ %i.by, %bb.p ]
  %i.ca = icmp ult i64 %..i62, %.sroa.052.0.i
  br i1 %i.ca, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not.i = icmp ule i64 %i.bv, %i.bu
  %i.cb = icmp ule i64 %i.bu, %i.bv
  %.not.i.fr = freeze i1 %.not.i
  %i.cc = sub i64 %.sroa.0209.0, %i.bd            ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.bc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.cc
  br label %bb.t

.loopexit:                                        ; preds = %.outer, %bb.ah, %bb.w, %bb.ag
  %.sroa.525.2.i.ph.lcssa561 = phi i64 [ %.sroa.525.2.i.ph716, %bb.w ], [ %.sroa.525.2.i.ph716, %bb.ah ], [ %.sroa.525.2.i.ph716, %bb.ag ], [ %.sroa.525.3.i, %.outer ] ; 2 uses
  %.sroa.023.1.i.ph.lcssa554 = phi i64 [ %.sroa.023.1.i.ph717, %bb.w ], [ %.sroa.023.1.i.ph717, %bb.ah ], [ %.sroa.023.1.i.ph717, %bb.ag ], [ %.sroa.023.2.i, %.outer ] ; 2 uses
  %.sroa.9.2.i.ph.lcssa547 = phi i64 [ %.sroa.9.2.i.ph718, %bb.w ], [ %.sroa.9.2.i.ph718, %bb.ah ], [ %.sroa.9.2.i.ph718, %bb.ag ], [ %.sroa.9.3.i, %.outer ] ; 2 uses
  %.sroa.12.2.i.ph.lcssa540 = phi i64 [ %.sroa.12.2.i.ph719, %bb.w ], [ %.sroa.12.2.i.ph719, %bb.ah ], [ %.sroa.12.2.i.ph719, %bb.ag ], [ %.sroa.12.3.i, %.outer ] ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, -1
  %exitcond1033 = icmp eq i64 %i.cf, 5
  br i1 %exitcond1033, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit
  %indvars.iv = phi i64 [ %i.bu, %bb.s ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.sroa.12.0.i724 = phi i64 [ undef, %bb.s ], [ %.sroa.12.2.i.ph.lcssa540, %.loopexit ]
  %.sroa.9.0.i723 = phi i64 [ undef, %bb.s ], [ %.sroa.9.2.i.ph.lcssa547, %.loopexit ]
  %.sroa.023.0.i722 = phi i64 [ 0, %bb.s ], [ %.sroa.023.1.i.ph.lcssa554, %.loopexit ]
  %.sroa.525.0.i721 = phi i64 [ undef, %bb.s ], [ %.sroa.525.2.i.ph.lcssa561, %.loopexit ]
  %.sroa.0242.0720 = phi i64 [ 0, %bb.s ], [ %i.cf, %.loopexit ] ; 9 uses
  %i.cf = add nuw nsw i64 %.sroa.0242.0720, 1     ; 2 uses
  %i.cg = icmp eq i64 %.sroa.0242.0720, 0
  %i.ch = add i64 %.sroa.0242.0720, %.sroa.0.0    ; 2 uses
  %i.ci = sub i64 %i.ch, %i.ba                    ; 4 uses
  %i.cj = icmp ult i64 %i.ci, %i.az               ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ci ; 2 uses
  %i.cl = sub i64 %i.be, %i.ch
  br label %.lr.ph

bb.u:                                             ; preds = %.loopexit
  %i.cm = trunc nuw i64 %.sroa.023.1.i.ph.lcssa554 to i1
  br i1 %i.cm, label %.loopexit436, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit

.loopexit436:                                     ; preds = %bb.ai, %bb.u
  %.sroa.525.1.i = phi i64 [ %.sroa.525.2.i.ph.lcssa561, %bb.u ], [ %.sroa.0242.0720, %bb.ai ] ; 5 uses
  %.sroa.9.1.i = phi i64 [ %.sroa.9.2.i.ph.lcssa547, %bb.u ], [ %.us-phi630, %bb.ai ] ; 6 uses
  %.sroa.12.1.i = phi i64 [ %.sroa.12.2.i.ph.lcssa540, %bb.u ], [ %.sroa.01.0.i.lcssa, %bb.ai ] ; 3 uses
  %i.cn = icmp eq i64 %.sroa.525.1.i, 0
  %i.co = icmp eq i64 %.sroa.9.1.i, 0             ; 2 uses
  %.pre1044 = load i64, ptr %i.bh, align 8, !noalias !17433 ; 10 uses
  br i1 %i.cn, label %bb.ao, label %bb.ap

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.w
  %.sroa.0243.0604 = phi i64 [ %i.cp, %bb.w ], [ %.sroa.0243.0.ph715, %.lr.ph.split ] ; 2 uses
  %i.cp = add nuw nsw i64 %.sroa.0243.0604, 1     ; 2 uses
  %i.cq = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !17434
  br i1 %i.cq, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph.split.split
  %.not727 = icmp eq i64 %.sroa.0243.0604, 0
  br i1 %.not727, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30
  %exitcond = icmp eq i64 %i.cp, 5
  br i1 %exitcond, label %.loopexit, label %.lr.ph.split.split

bb.x:                                             ; preds = %bb.v
  br i1 %i.cd, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31, label %.split613.loopexit1287

.split613.loopexit1287:                           ; preds = %bb.x
  %i.cr = sub i64 %.sroa.0209.0, %i.bd
  br label %.split613

.split613:                                        ; preds = %bb.af, %.split613.loopexit1287
  %.us-phi = phi i64 [ %i.cr, %.split613.loopexit1287 ], [ %i.dh, %bb.af ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @293) #74, !noalias !17435
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31: ; preds = %bb.x
  br i1 %i.cj, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30, label %.split616

.split616:                                        ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ci, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @294) #74, !noalias !17436
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit31
  %.val49 = load i32, ptr %i.ce, align 4, !noundef !28
  %.val50 = load i32, ptr %i.ck, align 4, !noundef !28
  %.not339 = icmp eq i32 %.val49, %.val50
  br i1 %.not339, label %.split620, label %bb.w

.split620.loopexit:                               ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30.us
  %.pre1045 = sub i64 %i.bf, %i.dg
  br label %.split620

.split620:                                        ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30, %.split620.loopexit
  %.pre-phi = phi i64 [ %.pre1045, %.split620.loopexit ], [ %i.bv, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ] ; 2 uses
  %.us-phi626 = phi i64 [ %i.dg, %.split620.loopexit ], [ %.sroa.0209.0, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ]
  %.us-phi629 = phi i64 [ %i.de, %.split620.loopexit ], [ 1, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ] ; 2 uses
  %.us-phi630 = phi i64 [ %.sroa.0243.0604.us, %.split620.loopexit ], [ 0, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit30 ] ; 4 uses
  %..i71 = tail call noundef i64 @llvm.umin.i64(i64 %.pre-phi, i64 %i.cl)
  %.not728 = icmp eq i64 %..i71, 0
  br i1 %.not728, label %.outer, label %.lr.ph712

.lr.ph712:                                        ; preds = %.split620
  %i.cs = sub i64 %.us-phi626, %i.bd              ; 2 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %.pre-phi) ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph712, %bb.ad
  %.sroa.01.0.i711 = phi i64 [ 0, %.lr.ph712 ], [ %i.dc, %bb.ad ] ; 5 uses
  %i.ct = and i64 %.sroa.01.0.i711, 1023
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cv = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !17434
  br i1 %i.cv, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cw = add nuw i64 %i.cs, %.sroa.01.0.i711     ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.bc
  br i1 %i.cx, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit29, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %umax1015 = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.cs)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax1015, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #74, !noalias !17437
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit29: ; preds = %bb.aa
  %i.cy = add nuw i64 %i.ci, %.sroa.01.0.i711     ; 3 uses
  %i.cz = icmp ult i64 %i.cy, %i.az
  br i1 %i.cz, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexCskXtk6F4WjxZ_4just.exit, label %bb.ac

end_hunk_10
begin_hunk_11_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just:bb.a

bb.ao:                                            ; preds = %.loopexit436
  br i1 %i.co, label %bb.aq, label %bb.as

bb.ap:                                            ; preds = %.loopexit436
  %i.du = load i64, ptr %i.bg, align 8, !range !43, !noalias !17433, !noundef !28
  %i.dv = icmp eq i64 %.pre1044, %i.du            ; 2 uses
  br i1 %i.co, label %bb.at, label %bb.au

.sink.split.sink.split:                           ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit77, %bb.at, %bb.as
  %.pre1044.sink.ph = phi i64 [ %.pre1044, %bb.at ], [ %.pre1044, %bb.as ], [ %i.en, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit77 ]
  %.sink1493.ph = phi i64 [ 1, %bb.at ], [ 2, %bb.as ], [ 2, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit77 ]
  %.sroa.0209.0.sink.ph = phi i64 [ %.sroa.525.1.i, %bb.at ], [ %.sroa.0209.0, %bb.as ], [ %.sroa.0209.0, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit77 ]
  %.sroa.9.1.i.sink.ph = phi i64 [ %.sroa.0209.0, %bb.at ], [ %.sroa.9.1.i, %bb.as ], [ %.sroa.9.1.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit77 ]
  %.sink1490.ph = phi i64 [ 1, %bb.at ], [ 1, %bb.as ], [ 2, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit77 ]
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #73, !noalias !17433
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit77, %bb.at, %bb.as
  %.pre1044.sink = phi i64 [ %.pre1044, %bb.at ], [ %i.en, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit77 ], [ %.pre1044, %bb.as ], [ %.pre1044.sink.ph, %.sink.split.sink.split ]
  %.sink1493 = phi i64 [ 1, %bb.at ], [ 2, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit77 ], [ 2, %bb.as ], [ %.sink1493.ph, %.sink.split.sink.split ]
  %.sroa.0209.0.sink = phi i64 [ %.sroa.525.1.i, %bb.at ], [ %.sroa.0209.0, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit77 ], [ %.sroa.0209.0, %bb.as ], [ %.sroa.0209.0.sink.ph, %.sink.split.sink.split ]
  %.sroa.9.1.i.sink = phi i64 [ %.sroa.0209.0, %bb.at ], [ %.sroa.9.1.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit77 ], [ %.sroa.9.1.i, %bb.as ], [ %.sroa.9.1.i.sink.ph, %.sink.split.sink.split ]
  %.sink1490 = phi i64 [ 1, %bb.at ], [ 2, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit77 ], [ 1, %bb.as ], [ %.sink1490.ph, %.sink.split.sink.split ]
  %i.dw = load ptr, ptr %i.bi, align 8, !noalias !17433, !nonnull !28, !noundef !28
  %i.dx = getelementptr inbounds nuw [40 x i8], ptr %i.dw, i64 %.pre1044.sink ; 4 uses
  store i64 %.sink1493, ptr %i.dx, align 8, !noalias !17433
  %.sroa.4282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4282.0..sroa_idx, align 8, !noalias !17433
  %.sroa.5283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i64 %.sroa.0209.0.sink, ptr %.sroa.5283.0..sroa_idx, align 8, !noalias !17433
  %.sroa.6284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store i64 %.sroa.9.1.i.sink, ptr %.sroa.6284.0..sroa_idx, align 8, !noalias !17433
  %i.dy = add i64 %.pre1044, %.sink1490           ; 2 uses
  store i64 %i.dy, ptr %i.bh, align 8, !noalias !17433
  br label %bb.aq

bb.aq:                                            ; preds = %.sink.split, %bb.ao
  %i.dz = phi i64 [ %.pre1044, %bb.ao ], [ %i.dy, %.sink.split ] ; 3 uses
  %i.ea = add i64 %.sroa.525.1.i, %.sroa.0.0      ; 2 uses
  %i.eb = add i64 %.sroa.9.1.i, %.sroa.0209.0     ; 2 uses
  %i.ec = load i64, ptr %i.bg, align 8, !range !43, !alias.scope !17439, !noalias !17433, !noundef !28
  %i.ed = icmp eq i64 %i.dz, %i.ec
  br i1 %i.ed, label %bb.ar, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit74

bb.ar:                                            ; preds = %bb.aq
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #73, !noalias !17440
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit74

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit74: ; preds = %bb.aq, %bb.ar
  %i.ee = load ptr, ptr %i.bi, align 8, !alias.scope !17439, !noalias !17433, !nonnull !28, !noundef !28
  %i.ef = getelementptr inbounds nuw [40 x i8], ptr %i.ee, i64 %i.dz ; 4 uses
  store i64 0, ptr %i.ef, align 8, !noalias !17433
  %.sroa.4253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i64 %i.ea, ptr %.sroa.4253.0..sroa_idx, align 8, !noalias !17433
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i64 %i.eb, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !17433
  %.sroa.6254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  store i64 %.sroa.12.1.i, ptr %.sroa.6254.0..sroa_idx, align 8, !noalias !17433
  %i.eg = add i64 %i.dz, 1
  store i64 %i.eg, ptr %i.bh, align 8, !alias.scope !17439, !noalias !17433
  %i.eh = add i64 %i.ea, %.sroa.12.1.i
  %i.ei = add i64 %i.eb, %.sroa.12.1.i
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit

bb.as:                                            ; preds = %bb.ao
  %i.ej = load i64, ptr %i.bg, align 8, !range !43, !alias.scope !17441, !noalias !17433, !noundef !28
  %i.ek = icmp eq i64 %.pre1044, %i.ej
  br i1 %i.ek, label %.sink.split.sink.split, label %.sink.split

bb.at:                                            ; preds = %bb.ap
  br i1 %i.dv, label %.sink.split.sink.split, label %.sink.split

bb.au:                                            ; preds = %bb.ap
  br i1 %i.dv, label %bb.av, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit77

bb.av:                                            ; preds = %bb.au
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #73, !noalias !17442
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit77

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit77: ; preds = %bb.au, %bb.av
  %i.el = load ptr, ptr %i.bi, align 8, !alias.scope !17443, !noalias !17433, !nonnull !28, !noundef !28
  %i.em = getelementptr inbounds nuw [40 x i8], ptr %i.el, i64 %.pre1044 ; 4 uses
  store i64 1, ptr %i.em, align 8, !noalias !17433
  %.sroa.4297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4297.0..sroa_idx, align 8, !noalias !17433
  %.sroa.5298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store i64 %.sroa.525.1.i, ptr %.sroa.5298.0..sroa_idx, align 8, !noalias !17433
  %.sroa.6299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  store i64 %.sroa.0209.0, ptr %.sroa.6299.0..sroa_idx, align 8, !noalias !17433
  %i.en = add i64 %.pre1044, 1                    ; 4 uses
  store i64 %i.en, ptr %i.bh, align 8, !alias.scope !17443, !noalias !17433
  %i.eo = load i64, ptr %i.bg, align 8, !range !43, !alias.scope !17444, !noalias !17433, !noundef !28
  %i.ep = icmp eq i64 %i.en, %i.eo
  br i1 %i.ep, label %.sink.split.sink.split, label %.sink.split

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers21try_emit_front_anchorINtNtB4_5utils12OffsetLookupmEB17_INtNtB4_7compact7CompactB17_B17_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit: ; preds = %.lr.ph.split.split.us, %.lr.ph.split.split, %.lr.ph.split.us, %bb.z, %bb.o, %bb.r, %bb.u, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit74
  %.sroa.0209.2 = phi i64 [ %.sroa.0209.0, %bb.o ], [ %.sroa.0209.0, %bb.r ], [ %.sroa.0209.0, %bb.u ], [ %i.ei, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit74 ], [ %.sroa.0209.0, %.lr.ph.split.split ], [ %.sroa.0209.0, %.lr.ph.split.us ], [ %.sroa.0209.0, %bb.z ], [ %.sroa.0209.0, %.lr.ph.split.split.us ] ; 2 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %bb.o ], [ %.sroa.0.0, %bb.r ], [ %.sroa.0.0, %bb.u ], [ %i.eh, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit74 ], [ %.sroa.0.0, %.lr.ph.split.split ], [ %.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.0.0, %bb.z ], [ %.sroa.0.0, %.lr.ph.split.split.us ] ; 2 uses
  %i.eq = icmp eq i64 %.sroa.0.2, %.sroa.0.0
  %i.er = icmp eq i64 %.sroa.0209.2, %.sroa.0209.0
  %or.cond = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %or.cond, label %bb.n, label %bb.m

bb.aw:                                            ; preds = %bb.n
  br i1 %i.bt, label %bb.ba, label %bb.ay

bb.ax:                                            ; preds = %bb.n
  br i1 %i.bt, label %.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.thread332

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.thread332: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit215.sink.split.i, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit175, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit174, %bb.gu, %bb.ax
  %.not26 = icmp eq i64 %.sroa.0.0.i61, 0
  br i1 %.not26, label %bb.hb, label %bb.gz

bb.ay:                                            ; preds = %bb.aw
  %i.es = sub nuw i64 %i.be, %.sroa.0.0
  %i.et = load i64, ptr %i.bh, align 8, !alias.scope !17445, !noundef !28 ; 3 uses
  %i.eu = load i64, ptr %i.bg, align 8, !range !43, !alias.scope !17445, !noundef !28
  %i.ev = icmp eq i64 %i.et, %i.eu
  br i1 %i.ev, label %bb.az, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79

bb.az:                                            ; preds = %bb.ay
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #73, !noalias !17446
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit79: ; preds = %bb.ay, %bb.az
  %i.ew = load ptr, ptr %i.bi, align 8, !alias.scope !17445, !nonnull !28, !noundef !28
  %i.ex = getelementptr inbounds nuw [40 x i8], ptr %i.ew, i64 %i.et ; 4 uses
  store i64 1, ptr %i.ex, align 8
  %.sroa.4272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i64 %.sroa.0.0, ptr %.sroa.4272.0..sroa_idx, align 8
  %.sroa.5273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i64 %i.es, ptr %.sroa.5273.0..sroa_idx, align 8
  %.sroa.6274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  store i64 %.sroa.0209.0, ptr %.sroa.6274.0..sroa_idx, align 8
  %i.ey = add i64 %i.et, 1
  store i64 %i.ey, ptr %i.bh, align 8, !alias.scope !17445
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.thread332

bb.ba:                                            ; preds = %bb.aw
  %i.ez = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !17447
  br i1 %i.ez, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fa = sub nuw i64 %i.be, %.sroa.0.0           ; 22 uses
  %i.fb = sub nuw i64 %i.bf, %.sroa.0209.0        ; 22 uses
  %i.fc = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fa, i64 %i.fb) ; 2 uses
  %i.fd = extractvalue { i64, i1 } %i.fc, 1
  br i1 %i.fd, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.bc, !prof !44

bb.bc:                                            ; preds = %bb.bb
  %i.fe = extractvalue { i64, i1 } %i.fc, 0
  %..i81 = tail call noundef i64 @llvm.umax.i64(i64 %i.fb, i64 %i.fa)
  %..i80 = tail call noundef i64 @llvm.umin.i64(i64 %i.fb, i64 %i.fa)
  %i.ff = add i64 %..i80, -65
  %or.cond.i27 = icmp ult i64 %i.ff, -64
  %i.fg = icmp ult i64 %..i81, 512
  %or.cond1.i = or i1 %i.fg, %or.cond.i27
  %i.fh = icmp ugt i64 %i.fe, 64000000
  %or.cond3.i = select i1 %or.cond1.i, i1 true, i1 %i.fh
  br i1 %or.cond3.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not.i28 = icmp ugt i64 %i.fa, %i.fb
  br i1 %.not.i28, label %bb.be, label %bb.dy

bb.be:                                            ; preds = %bb.bd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17448)
  %i.fi = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !17449
  br i1 %i.fi, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fj = add i64 %i.fa, 1                        ; 11 uses
  %i.fk = add nuw i64 %i.fb, 1
  %i.fl = mul i64 %i.fj, %i.fk                    ; 29 uses
  %.not.i.i.i = icmp slt i64 %i.fl, 0
  br i1 %.not.i.i.i, label %bb.bj, label %bb.bg, !prof !42

bb.bg:                                            ; preds = %bb.bf
  %i.fm = icmp eq i64 %i.fl, 0                    ; 3 uses
  br i1 %i.fm, label %.lr.ph690.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !17450
  %i.fn = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.fl, i64 noundef range(i64 1, 9) 1) #69, !noalias !17450 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fp = ptrtoint ptr %i.fn to i64
  br label %.lr.ph690.i

bb.bj:                                            ; preds = %bb.bh, %bb.bf
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.bh ], [ 0, %bb.bf ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.fl) #70, !noalias !17451
  unreachable

.lr.ph690.i:                                      ; preds = %bb.bg, %bb.bi
  %.sroa.10.0.i.i = phi i64 [ %i.fp, %bb.bi ], [ 1, %bb.bg ]
  %i.fq = inttoptr i64 %.sroa.10.0.i.i to ptr     ; 21 uses
  %invariant.op691.i = sub i64 %.sroa.0209.0, %i.bd ; 4 uses
  %invariant.op.i83 = sub i64 %.sroa.0.0, %i.ba   ; 3 uses
  br label %.lr.ph690.split.i

.lr.ph690.split.i:                                ; preds = %.lr.ph690.i, %..loopexit292_crit_edge.split.us.i
  %.sroa.0102.0689.i = phi i64 [ %i.fr, %..loopexit292_crit_edge.split.us.i ], [ %i.fb, %.lr.ph690.i ] ; 2 uses
  %i.fr = add i64 %.sroa.0102.0689.i, -1          ; 4 uses
  %i.fs = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17452

._crit_edge717.i:                                 ; preds = %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i
  br i1 %i.kn, label %bb.bk, label %bb.bm

.lr.ph716.i:                                      ; preds = %..loopexit292_crit_edge.split.us.i, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i
  %.sroa.05.0.not715.i = phi i1 [ false, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i ], [ true, %..loopexit292_crit_edge.split.us.i ] ; 3 uses
  %.sroa.09.0714.i = phi i64 [ %.sroa.09.3.i, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i ], [ 0, %..loopexit292_crit_edge.split.us.i ] ; 14 uses
  %.sroa.038.0713.i = phi i64 [ %.sroa.038.3.i, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i ], [ 0, %..loopexit292_crit_edge.split.us.i ] ; 18 uses
  %i.ft = and i64 %.sroa.038.0713.i, 1023
  %i.fu = icmp eq i64 %i.ft, 0
  %or.cond170.i = select i1 %.sroa.05.0.not715.i, i1 %i.fu, i1 false ; 2 uses
  br i1 %or.cond170.i, label %bb.bq, label %bb.bp

bb.bk:                                            ; preds = %._crit_edge717.i
  %i.fv = add i64 %.sroa.038.3.i, %.sroa.0.0      ; 2 uses
  %i.fw = sub nuw i64 %i.fa, %.sroa.038.3.i
  %i.fx = add i64 %.sroa.09.3.i, %.sroa.0209.0    ; 2 uses
  %i.fy = load i64, ptr %i.bg, align 8, !range !43, !alias.scope !17453, !noundef !28
  %i.fz = icmp eq i64 %i.kl, %i.fy
  br i1 %i.fz, label %bb.bl, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #73
          to label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17452

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i: ; preds = %bb.bl, %bb.bk
  %i.ga = load ptr, ptr %i.bi, align 8, !alias.scope !17453, !nonnull !28, !noundef !28
  %i.gb = getelementptr inbounds nuw [40 x i8], ptr %i.ga, i64 %i.kl ; 4 uses
  store i64 1, ptr %i.gb, align 8, !noalias !17452
  %.sroa.4253.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i64 %i.fv, ptr %.sroa.4253.0..sroa_idx.i, align 8, !noalias !17452
  %.sroa.5254.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store i64 %i.fw, ptr %.sroa.5254.0..sroa_idx.i, align 8, !noalias !17452
  %.sroa.6255.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  store i64 %i.fx, ptr %.sroa.6255.0..sroa_idx.i, align 8, !noalias !17452
  %i.gc = add i64 %.sink1183.i, 2                 ; 2 uses
  store i64 %i.gc, ptr %i.bh, align 8, !alias.scope !17453
  br i1 %i.km, label %bb.bn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit215.sink.split.i

bb.bm:                                            ; preds = %._crit_edge717.i
  br i1 %i.km, label %._crit_edge1047, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit215.sink.split.i

._crit_edge1047:                                  ; preds = %bb.bm
  %.pre1048 = add i64 %.sroa.038.3.i, %.sroa.0.0
  %.pre1050 = add i64 %.sroa.09.3.i, %.sroa.0209.0
  br label %bb.bn

.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cp, %bb.dc, %bb.cc, %bb.co, %bb.cb, %.split670.us.invoke.i, %bb.db
  %lpad.loopexit.split-lp1846 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dl, %bb.cz, %bb.bq, %.lr.ph690.split.i, %.split667.us.invoke.i, %bb.dw, %.invoke.i, %bb.bo, %bb.bl
  %lpad.loopexit.split-lp1872 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.fm, label %common.resume, label %.thread.i

.thread.i:                                        ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi268.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp1872, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1846, %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fq, i64 noundef %i.fl, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !17454
  br label %common.resume

bb.bn:                                            ; preds = %._crit_edge1047, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i
  %.pre-phi1051 = phi i64 [ %.pre1050, %._crit_edge1047 ], [ %i.fx, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i ]
  %.pre-phi1049 = phi i64 [ %.pre1048, %._crit_edge1047 ], [ %i.fv, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i ]
  %i.gd = phi i64 [ %i.kl, %._crit_edge1047 ], [ %i.gc, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i ] ; 3 uses
  %i.ge = sub nuw i64 %i.fb, %.sroa.09.3.i
  %i.gf = load i64, ptr %i.bg, align 8, !range !43, !alias.scope !17455, !noundef !28
  %i.gg = icmp eq i64 %i.gd, %i.gf
  br i1 %i.gg, label %bb.bo, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #73
          to label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17452

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i: ; preds = %bb.bo, %bb.bn
  %i.gh = load ptr, ptr %i.bi, align 8, !alias.scope !17455, !nonnull !28, !noundef !28
  %i.gi = getelementptr inbounds nuw [40 x i8], ptr %i.gh, i64 %i.gd ; 4 uses
  store i64 2, ptr %i.gi, align 8, !noalias !17452
  %.sroa.4263.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i64 %.pre-phi1049, ptr %.sroa.4263.0..sroa_idx.i, align 8, !noalias !17452
  %.sroa.5264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store i64 %.pre-phi1051, ptr %.sroa.5264.0..sroa_idx.i, align 8, !noalias !17452
  %.sroa.6265.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  store i64 %i.ge, ptr %.sroa.6265.0..sroa_idx.i, align 8, !noalias !17452
  %i.gj = add i64 %i.gd, 1
  store i64 %i.gj, ptr %i.bh, align 8, !alias.scope !17455
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit215.sink.split.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit215.sink.split.i.thread: ; preds = %bb.cq, %bb.cd, %bb.dd, %.loopexit288.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fq, i64 noundef %i.fl, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !17452
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.thread

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit215.sink.split.i: ; preds = %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i, %bb.bm, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fq, i64 noundef %i.fl, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !17452
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.thread332

bb.bp:                                            ; preds = %bb.br, %.lr.ph716.i
  %i.gk = mul i64 %.sroa.09.0714.i, %i.fj         ; 4 uses
  %i.gl = add i64 %.sroa.038.0713.i, %.sroa.0.0   ; 2 uses
  %i.gm = add i64 %.sroa.09.0714.i, %.sroa.0209.0 ; 7 uses
  %i.gn = sub i64 %i.gm, %i.bd                    ; 3 uses
  %i.go = icmp ult i64 %i.gn, %i.bc
  br i1 %i.go, label %bb.bs, label %.invoke.i

.invoke.i:                                        ; preds = %bb.dn, %bb.bs, %bb.bp, %bb.ce, %bb.de, %bb.dx, %.lr.ph.split.i, %11
  %i.gp = phi i64 [ %.reass.i86, %.lr.ph.split.i ], [ %.reass.i86, %bb.dx ], [ %i.az, %bb.ce ], [ %umax911.le.i, %11 ], [ %i.gn, %bb.bp ], [ %i.az, %bb.de ], [ %i.gu, %bb.bs ], [ %.reass.us.i, %bb.dn ]
  %i.gq = phi i64 [ %i.bc, %.lr.ph.split.i ], [ %i.bc, %bb.dx ], [ %i.az, %bb.ce ], [ %i.bc, %11 ], [ %i.bc, %bb.bp ], [ %i.az, %bb.de ], [ %i.az, %bb.bs ], [ %i.az, %bb.dn ]
  %i.gr = phi ptr [ @261, %.lr.ph.split.i ], [ @261, %bb.dx ], [ @247, %bb.ce ], [ @252, %11 ], [ @241, %bb.bp ], [ @258, %bb.de ], [ @242, %bb.bs ], [ @262, %bb.dn ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.gp, i64 noundef %i.gq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gr) #74
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17452

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bq:                                            ; preds = %.lr.ph716.i
  %i.gs = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17452

bb.br:                                            ; preds = %bb.bq
  br i1 %i.gs, label %.loopexit288.i, label %bb.bp

bb.bs:                                            ; preds = %bb.bp
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.gn ; 2 uses
  %i.gu = sub i64 %i.gl, %i.ba                    ; 3 uses
  %i.gv = icmp ult i64 %i.gu, %i.az
  br i1 %i.gv, label %bb.bt, label %.invoke.i

bb.bt:                                            ; preds = %bb.bs
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.gu ; 2 uses
  %.val208.i = load i32, ptr %i.gt, align 4, !noalias !17452, !noundef !28
  %.val209.i = load i32, ptr %i.gw, align 4, !noalias !17452, !noundef !28
  %i.gx = icmp eq i32 %.val208.i, %.val209.i
  br i1 %i.gx, label %bb.bu, label %._crit_edge916.i

._crit_edge916.i:                                 ; preds = %bb.bt
  %.pre.i = add nuw i64 %.sroa.09.0714.i, 1
  %.pre917.i = mul i64 %.pre.i, %i.fj
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.gy = add i64 %i.gk, %.sroa.038.0713.i        ; 3 uses
  %i.gz = icmp ult i64 %i.gy, %i.fl
  br i1 %i.gz, label %bb.bw, label %.split667.us.invoke.i

bb.bv:                                            ; preds = %bb.bx, %._crit_edge916.i
  %.pre-phi918.i = phi i64 [ %.pre917.i, %._crit_edge916.i ], [ %i.hd, %bb.bx ] ; 3 uses
  %i.ha = add i64 %.pre-phi918.i, %.sroa.038.0713.i ; 3 uses
  %i.hb = icmp ult i64 %i.ha, %i.fl
  br i1 %i.hb, label %bb.by, label %.split667.us.invoke.i

bb.bw:                                            ; preds = %bb.bu
  %i.hc = add nuw i64 %.sroa.09.0714.i, 1
  %i.hd = mul i64 %i.hc, %i.fj                    ; 2 uses
  %i.he = add nuw i64 %.sroa.038.0713.i, 1
  %i.hf = add i64 %i.he, %i.hd                    ; 3 uses
  %i.hg = icmp ult i64 %i.hf, %i.fl
  br i1 %i.hg, label %bb.bx, label %.split670.us.invoke.i

bb.bx:                                            ; preds = %bb.bw
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.gy
  %i.hi = load i8, ptr %i.hh, align 1, !noalias !17452, !noundef !28
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.hf
  %i.hk = load i8, ptr %i.hj, align 1, !noalias !17452, !noundef !28
  %i.hl = add i8 %i.hk, 1
  %i.hm = icmp eq i8 %i.hi, %i.hl
  br i1 %i.hm, label %.preheader.i, label %bb.bv

.preheader.i:                                     ; preds = %bb.bx
  %i.hn = icmp ult i64 %.sroa.09.0714.i, %i.fb
  %i.ho = icmp ult i64 %.sroa.038.0713.i, %i.fa
  %or.cond177699.i = select i1 %i.hn, i1 %i.ho, i1 false
  br i1 %or.cond177699.i, label %.lr.ph702.i, label %._crit_edge703.i

bb.by:                                            ; preds = %bb.bv
  %i.hp = add nuw i64 %.sroa.038.0713.i, 1        ; 3 uses
  %i.hq = add i64 %i.hp, %i.gk                    ; 3 uses
  %i.hr = icmp ult i64 %i.hq, %i.fl
  br i1 %i.hr, label %bb.bz, label %.split670.us.invoke.i

bb.bz:                                            ; preds = %bb.by
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.ha
  %i.ht = load i8, ptr %i.hs, align 1, !noalias !17452, !noundef !28
  %i.hu = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.hq
  %i.hv = load i8, ptr %i.hu, align 1, !noalias !17452, !noundef !28
  %.not164.i = icmp ult i8 %i.ht, %i.hv
  br i1 %.not164.i, label %.preheader275.i, label %.preheader280.i

.preheader280.i:                                  ; preds = %bb.bz
  %umax.i84 = tail call i64 @llvm.umax.i64(i64 %.sroa.09.0714.i, i64 %i.fb) ; 3 uses
  %exitcond.not.i1803.not = icmp ult i64 %.sroa.09.0714.i, %i.fb
  br i1 %exitcond.not.i1803.not, label %.lr.ph1805, label %._crit_edge1806

.preheader275.i:                                  ; preds = %bb.bz
  %i.hw = icmp ult i64 %.sroa.038.0713.i, %i.fa
  br i1 %i.hw, label %.lr.ph694.i, label %._crit_edge.i

.lr.ph694.i:                                      ; preds = %.preheader275.i
  %i.hx = add i64 %.pre-phi918.i, 1
  %i.hy = add i64 %i.gk, 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cm, %.lr.ph694.i
  %.sroa.038.1693.i = phi i64 [ %.sroa.038.0713.i, %.lr.ph694.i ], [ %i.jd, %bb.cm ] ; 9 uses
  %i.hz = and i64 %.sroa.038.1693.i, 1023
  %i.ia = icmp eq i64 %i.hz, 0
  %or.cond173.i = and i1 %.sroa.05.0.not715.i, %i.ia
  br i1 %or.cond173.i, label %bb.cc, label %bb.ce

._crit_edge.i:                                    ; preds = %bb.cm, %bb.cl, %bb.cj, %.preheader275.i
  %.sroa.038.1.lcssa.i = phi i64 [ %.sroa.038.0713.i, %.preheader275.i ], [ %i.fa, %bb.cm ], [ %.sroa.038.1693.i, %bb.cl ], [ %.sroa.038.1693.i, %bb.cj ] ; 3 uses
  %i.ib = sub i64 %.sroa.038.1.lcssa.i, %.sroa.038.0713.i ; 2 uses
  %i.ic = load i64, ptr %i.bh, align 8, !alias.scope !17456, !noundef !28 ; 3 uses
  %i.id = load i64, ptr %i.bg, align 8, !range !43, !alias.scope !17456, !noundef !28
  %i.ie = icmp eq i64 %i.ic, %i.id
  br i1 %i.ie, label %bb.cb, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i

bb.cb:                                            ; preds = %._crit_edge.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #73
          to label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17452

bb.cc:                                            ; preds = %bb.ca
  %i.if = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cd unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17452

bb.cd:                                            ; preds = %bb.cc
  br i1 %i.if, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit215.sink.split.i.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.ca
  %i.ig = add i64 %.sroa.038.1693.i, %invariant.op.i83 ; 2 uses
  %i.ih = icmp ult i64 %i.ig, %i.az
  br i1 %i.ih, label %bb.cf, label %.invoke.i

bb.cf:                                            ; preds = %bb.ce
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ig
  %.val206.i = load i32, ptr %i.gt, align 4, !noalias !17452, !noundef !28
  %.val207.i = load i32, ptr %i.ii, align 4, !noalias !17452, !noundef !28
  %i.ij = icmp eq i32 %.val206.i, %.val207.i
  br i1 %i.ij, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ik = add i64 %.sroa.038.1693.i, %i.gk        ; 3 uses
  %i.il = icmp ult i64 %i.ik, %i.fl
  br i1 %i.il, label %bb.ci, label %.split667.us.invoke.i

bb.ch:                                            ; preds = %bb.cj, %bb.cf
  %i.im = add i64 %.sroa.038.1693.i, %.pre-phi918.i ; 2 uses
  %i.in = icmp ult i64 %i.im, %i.fl
  br i1 %i.in, label %bb.ck, label %.split667.us.invoke.i

bb.ci:                                            ; preds = %bb.cg
  %i.io = add i64 %i.hx, %.sroa.038.1693.i        ; 3 uses
  %i.ip = icmp ult i64 %i.io, %i.fl
  br i1 %i.ip, label %bb.cj, label %.split670.us.invoke.i

bb.cj:                                            ; preds = %bb.ci
  %i.iq = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.ik
  %i.ir = load i8, ptr %i.iq, align 1, !noalias !17452, !noundef !28
  %i.is = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.io
  %i.it = load i8, ptr %i.is, align 1, !noalias !17452, !noundef !28
  %i.iu = add i8 %i.it, 1
  %i.iv = icmp eq i8 %i.ir, %i.iu
  br i1 %i.iv, label %._crit_edge.i, label %bb.ch

bb.ck:                                            ; preds = %bb.ch
  %i.iw = add i64 %i.hy, %.sroa.038.1693.i        ; 2 uses
  %i.ix = icmp ult i64 %i.iw, %i.fl
  br i1 %i.ix, label %bb.cl, label %.split670.us.invoke.i

bb.cl:                                            ; preds = %bb.ck
  %i.iy = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.im
  %i.iz = load i8, ptr %i.iy, align 1, !noalias !17452, !noundef !28
  %i.ja = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.iw
  %i.jb = load i8, ptr %i.ja, align 1, !noalias !17452, !noundef !28
  %i.jc = icmp ult i8 %i.iz, %i.jb
  br i1 %i.jc, label %bb.cm, label %._crit_edge.i

bb.cm:                                            ; preds = %bb.cl
  %i.jd = add nuw i64 %.sroa.038.1693.i, 1        ; 2 uses
  %i.je = icmp ult i64 %i.jd, %i.fa
  br i1 %i.je, label %bb.ca, label %._crit_edge.i

bb.cn:                                            ; preds = %bb.cy
  %exitcond.not.i = icmp eq i64 %.pre-phi920.i, %umax.i84
  br i1 %exitcond.not.i, label %._crit_edge1806, label %.lr.ph1805

.lr.ph1805:                                       ; preds = %.preheader280.i, %bb.cn
  %.sroa.09.1.i1804 = phi i64 [ %.pre-phi920.i, %bb.cn ], [ %.sroa.09.0714.i, %.preheader280.i ] ; 6 uses
  br i1 %or.cond170.i, label %bb.cp, label %bb.cr

._crit_edge1806:                                  ; preds = %bb.cn, %bb.cw, %bb.cy, %.preheader280.i
  %.sroa.09.1.lcssa.i = phi i64 [ %umax.i84, %.preheader280.i ], [ %umax.i84, %bb.cn ], [ %.sroa.09.1.i1804, %bb.cw ], [ %.sroa.09.1.i1804, %bb.cy ] ; 3 uses
  %i.jf = sub nuw i64 %.sroa.09.1.lcssa.i, %.sroa.09.0714.i ; 2 uses
  %i.jg = load i64, ptr %i.bh, align 8, !alias.scope !17457, !noundef !28 ; 3 uses
  %i.jh = load i64, ptr %i.bg, align 8, !range !43, !alias.scope !17457, !noundef !28
  %i.ji = icmp eq i64 %i.jg, %i.jh
  br i1 %i.ji, label %bb.co, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i

bb.co:                                            ; preds = %._crit_edge1806
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #73
          to label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17452

bb.cp:                                            ; preds = %.lr.ph1805
  %i.jj = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.cq unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17452

bb.cq:                                            ; preds = %bb.cp
  br i1 %i.jj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit215.sink.split.i.thread, label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.lr.ph1805
  %i.jk = mul i64 %.sroa.09.1.i1804, %i.fj        ; 2 uses
  %i.jl = add i64 %.sroa.09.1.i1804, %invariant.op691.i ; 2 uses
  %i.jm = icmp ult i64 %i.jl, %i.bc
  br i1 %i.jm, label %bb.cs, label %11

11:                                               ; preds = %bb.cr
  %12 = add i64 %.sroa.09.0714.i, %invariant.op691.i
  %umax911.le.i = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %12)
  br label %.invoke.i

bb.cs:                                            ; preds = %bb.cr
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.jl
  %.val204.i = load i32, ptr %i.jn, align 4, !noalias !17452, !noundef !28
  %.val205.i = load i32, ptr %i.gw, align 4, !noalias !17452, !noundef !28
  %i.jo = icmp eq i32 %.val204.i, %.val205.i
  br i1 %i.jo, label %bb.ct, label %._crit_edge915.i

._crit_edge915.i:                                 ; preds = %bb.cs
  %.pre919.i = add i64 %.sroa.09.1.i1804, 1       ; 2 uses
  %.pre921.i = mul i64 %.pre919.i, %i.fj
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.jp = add i64 %i.jk, %.sroa.038.0713.i        ; 3 uses
  %i.jq = icmp ult i64 %i.jp, %i.fl
  br i1 %i.jq, label %bb.cv, label %.split667.us.invoke.i

bb.cu:                                            ; preds = %bb.cw, %._crit_edge915.i
  %.pre-phi922.i.a = phi i64 [ %.pre921.i, %._crit_edge915.i ], [ %i.ju, %bb.cw ]
  %.pre-phi920.i = phi i64 [ %.pre919.i, %._crit_edge915.i ], [ %i.jt, %bb.cw ] ; 2 uses
  %i.jr = add i64 %.pre-phi922.i.a, %.sroa.038.0713.i ; 3 uses
  %i.js = icmp ult i64 %i.jr, %i.fl
  br i1 %i.js, label %bb.cx, label %.split667.us.invoke.i

bb.cv:                                            ; preds = %bb.ct
  %i.jt = add i64 %.sroa.09.1.i1804, 1            ; 2 uses
  %i.ju = mul i64 %i.jt, %i.fj                    ; 2 uses
  %i.jv = add i64 %i.ju, %i.hp                    ; 3 uses
  %i.jw = icmp ult i64 %i.jv, %i.fl
  br i1 %i.jw, label %bb.cw, label %.split670.us.invoke.i

bb.cw:                                            ; preds = %bb.cv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.jp
  %i.jy = load i8, ptr %i.jx, align 1, !noalias !17452, !noundef !28
  %i.jz = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.jv
  %i.ka = load i8, ptr %i.jz, align 1, !noalias !17452, !noundef !28
  %i.kb = add i8 %i.ka, 1
  %i.kc = icmp eq i8 %i.jy, %i.kb
  br i1 %i.kc, label %._crit_edge1806, label %bb.cu

bb.cx:                                            ; preds = %bb.cu
  %i.kd = add i64 %i.jk, %i.hp                    ; 3 uses
  %i.ke = icmp ult i64 %i.kd, %i.fl
  br i1 %i.ke, label %bb.cy, label %.split670.us.invoke.i

bb.cy:                                            ; preds = %bb.cx
  %i.kf = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.jr
  %i.kg = load i8, ptr %i.kf, align 1, !noalias !17452, !noundef !28
  %i.kh = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.kd
  %i.ki = load i8, ptr %i.kh, align 1, !noalias !17452, !noundef !28
  %.not167.i = icmp ult i8 %i.kg, %i.ki
  br i1 %.not167.i, label %._crit_edge1806, label %bb.cn

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.cz, %._crit_edge703.i, %bb.co, %._crit_edge1806, %bb.cb, %._crit_edge.i
  %.sink1183.i = phi i64 [ %i.ic, %bb.cb ], [ %i.kp, %bb.cz ], [ %i.kp, %._crit_edge703.i ], [ %i.ic, %._crit_edge.i ], [ %i.jg, %._crit_edge1806 ], [ %i.jg, %bb.co ] ; 3 uses
  %.sink1180.i = phi i64 [ 1, %bb.cb ], [ 0, %bb.cz ], [ 0, %._crit_edge703.i ], [ 1, %._crit_edge.i ], [ 2, %._crit_edge1806 ], [ 2, %bb.co ]
  %.sink1177.i = phi i64 [ %i.ib, %bb.cb ], [ %i.gm, %bb.cz ], [ %i.gm, %._crit_edge703.i ], [ %i.ib, %._crit_edge.i ], [ %i.gm, %._crit_edge1806 ], [ %i.gm, %bb.co ]
  %.sink.i = phi i64 [ %i.gm, %bb.cb ], [ %i.ko, %bb.cz ], [ %i.ko, %._crit_edge703.i ], [ %i.gm, %._crit_edge.i ], [ %i.jf, %._crit_edge1806 ], [ %i.jf, %bb.co ]
  %.sroa.038.3.i = phi i64 [ %.sroa.038.1.lcssa.i, %bb.cb ], [ %.sroa.038.4.lcssa.i, %bb.cz ], [ %.sroa.038.4.lcssa.i, %._crit_edge703.i ], [ %.sroa.038.1.lcssa.i, %._crit_edge.i ], [ %.sroa.038.0713.i, %._crit_edge1806 ], [ %.sroa.038.0713.i, %bb.co ] ; 5 uses
  %.sroa.09.3.i = phi i64 [ %.sroa.09.0714.i, %bb.cb ], [ %.sroa.09.4.lcssa.i, %bb.cz ], [ %.sroa.09.4.lcssa.i, %._crit_edge703.i ], [ %.sroa.09.0714.i, %._crit_edge.i ], [ %.sroa.09.1.lcssa.i, %._crit_edge1806 ], [ %.sroa.09.1.lcssa.i, %bb.co ] ; 5 uses
  %i.kj = load ptr, ptr %i.bi, align 8, !alias.scope !17448, !nonnull !28, !noundef !28
  %i.kk = getelementptr inbounds nuw [40 x i8], ptr %i.kj, i64 %.sink1183.i ; 4 uses
  store i64 %.sink1180.i, ptr %i.kk, align 8, !noalias !17452
  %.sroa.4258.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i64 %i.gl, ptr %.sroa.4258.0..sroa_idx.i, align 8, !noalias !17452
  %.sroa.5259.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  store i64 %.sink1177.i, ptr %.sroa.5259.0..sroa_idx.i, align 8, !noalias !17452
  %.sroa.6260.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  store i64 %.sink.i, ptr %.sroa.6260.0..sroa_idx.i, align 8, !noalias !17452
  %i.kl = add i64 %.sink1183.i, 1                 ; 4 uses
  store i64 %i.kl, ptr %i.bh, align 8, !alias.scope !17448
  %i.km = icmp ult i64 %.sroa.09.3.i, %i.fb       ; 3 uses
  %i.kn = icmp ult i64 %.sroa.038.3.i, %i.fa      ; 2 uses
  %or.cond.i85 = select i1 %i.km, i1 %i.kn, i1 false
  br i1 %or.cond.i85, label %.lr.ph716.i, label %._crit_edge717.i

._crit_edge703.i:                                 ; preds = %bb.dj, %bb.di, %bb.df, %.preheader.i
  %.sroa.038.4.lcssa.i = phi i64 [ %.sroa.038.0713.i, %.preheader.i ], [ %i.lh, %bb.dj ], [ %.sroa.038.4700.i, %bb.df ], [ %.sroa.038.4700.i, %bb.di ] ; 3 uses
  %.sroa.09.4.lcssa.i = phi i64 [ %.sroa.09.0714.i, %.preheader.i ], [ %i.lf, %bb.dj ], [ %.sroa.09.4701.i, %bb.df ], [ %.sroa.09.4701.i, %bb.di ] ; 2 uses
  %i.ko = sub nuw i64 %.sroa.038.4.lcssa.i, %.sroa.038.0713.i ; 2 uses
  %i.kp = load i64, ptr %i.bh, align 8, !alias.scope !17458, !noundef !28 ; 3 uses
  %i.kq = load i64, ptr %i.bg, align 8, !range !43, !alias.scope !17458, !noundef !28
  %i.kr = icmp eq i64 %i.kp, %i.kq
  br i1 %i.kr, label %bb.cz, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i

bb.cz:                                            ; preds = %._crit_edge703.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #73
          to label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17452

.lr.ph702.i:                                      ; preds = %.preheader.i, %bb.dj
  %.sroa.09.4701.i = phi i64 [ %i.lf, %bb.dj ], [ %.sroa.09.0714.i, %.preheader.i ] ; 5 uses
  %.sroa.038.4700.i = phi i64 [ %i.lh, %bb.dj ], [ %.sroa.038.0713.i, %.preheader.i ] ; 6 uses
  %i.ks = and i64 %.sroa.038.4700.i, 1023
  %i.kt = icmp eq i64 %i.ks, 0
  %or.cond180.i = select i1 %.sroa.05.0.not715.i, i1 %i.kt, i1 false
  br i1 %or.cond180.i, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.dd, %.lr.ph702.i
  %i.ku = mul i64 %.sroa.09.4701.i, %i.fj
  %i.kv = add i64 %.sroa.09.4701.i, %invariant.op691.i ; 2 uses
  %i.kw = icmp ult i64 %i.kv, %i.bc
  br i1 %i.kw, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bb.da
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257) #74
          to label %.noexc187.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17452

.noexc187.i:                                      ; preds = %bb.db
  unreachable

bb.dc:                                            ; preds = %.lr.ph702.i
  %i.kx = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dd unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17452

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.kx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit215.sink.split.i.thread, label %bb.da

bb.de:                                            ; preds = %bb.da
  %i.ky = add i64 %.sroa.038.4700.i, %invariant.op.i83 ; 2 uses
  %i.kz = icmp ult i64 %i.ky, %i.az
  br i1 %i.kz, label %bb.df, label %.invoke.i

bb.df:                                            ; preds = %bb.de
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.kv
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ky
  %.val202.i = load i32, ptr %i.la, align 4, !noalias !17452, !noundef !28
  %.val203.i = load i32, ptr %i.lb, align 4, !noalias !17452, !noundef !28
  %i.lc = icmp eq i32 %.val202.i, %.val203.i
  br i1 %i.lc, label %bb.dg, label %._crit_edge703.i

bb.dg:                                            ; preds = %bb.df
  %i.ld = add i64 %i.ku, %.sroa.038.4700.i        ; 3 uses
  %i.le = icmp ult i64 %i.ld, %i.fl
  br i1 %i.le, label %bb.dh, label %.split667.us.invoke.i

bb.dh:                                            ; preds = %bb.dg
  %i.lf = add nuw i64 %.sroa.09.4701.i, 1         ; 4 uses
  %i.lg = mul i64 %i.lf, %i.fj
  %i.lh = add nuw i64 %.sroa.038.4700.i, 1        ; 4 uses
  %i.li = add i64 %i.lh, %i.lg                    ; 3 uses
  %i.lj = icmp ult i64 %i.li, %i.fl
  br i1 %i.lj, label %bb.di, label %.split670.us.invoke.i

bb.di:                                            ; preds = %bb.dh
  %i.lk = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.ld
  %i.ll = load i8, ptr %i.lk, align 1, !noalias !17452, !noundef !28
  %i.lm = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.li
  %i.ln = load i8, ptr %i.lm, align 1, !noalias !17452, !noundef !28
  %i.lo = add i8 %i.ln, 1
  %i.lp = icmp eq i8 %i.ll, %i.lo
  br i1 %i.lp, label %bb.dj, label %._crit_edge703.i

bb.dj:                                            ; preds = %bb.di
  %i.lq = icmp ult i64 %i.lf, %i.fb
  %i.lr = icmp ult i64 %i.lh, %i.fa
  %or.cond177.i = and i1 %i.lq, %i.lr
  br i1 %or.cond177.i, label %.lr.ph702.i, label %._crit_edge703.i

.loopexit288.i:                                   ; preds = %bb.dk, %bb.dm, %bb.br, %bb.dx
  br i1 %i.fm, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit215.sink.split.i.thread

bb.dk:                                            ; preds = %.lr.ph690.split.i
  br i1 %i.fs, label %.loopexit288.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.dk
  %i.ls = mul i64 %i.fr, %i.fj                    ; 2 uses
  %i.lt = mul i64 %.sroa.0102.0689.i, %i.fj       ; 2 uses
  %.reass.i86 = add i64 %i.fr, %invariant.op691.i ; 4 uses
  %i.lu = icmp ult i64 %.reass.i86, %i.bc
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.reass.i86
  %.fr.i = freeze i1 %i.lu
  br i1 %.fr.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.dv
  %.sroa.0105.0657.us.i = phi i64 [ %i.lw, %bb.dv ], [ %i.fa, %.lr.ph.i ] ; 3 uses
  %i.lw = add i64 %.sroa.0105.0657.us.i, -1       ; 6 uses
  %i.lx = and i64 %i.lw, 1023
  %i.ly = icmp eq i64 %i.lx, 0
  br i1 %i.ly, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %.lr.ph.split.us.i
  %i.lz = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17452

bb.dm:                                            ; preds = %bb.dl
  br i1 %i.lz, label %.loopexit288.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %.lr.ph.split.us.i
  %.reass.us.i = add i64 %i.lw, %invariant.op.i83 ; 3 uses
  %i.ma = icmp ult i64 %.reass.us.i, %i.az
  br i1 %i.ma, label %bb.do, label %.invoke.i

bb.do:                                            ; preds = %bb.dn
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.reass.us.i
  %.val.us.i = load i32, ptr %i.lv, align 4, !noalias !17452, !noundef !28
  %.val201.us.i = load i32, ptr %i.mb, align 4, !noalias !17452, !noundef !28
  %i.mc = icmp eq i32 %.val.us.i, %.val201.us.i
  br i1 %i.mc, label %bb.ds, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.md = add i64 %i.lw, %i.lt                    ; 3 uses
  %i.me = icmp ult i64 %i.md, %i.fl
  br i1 %i.me, label %bb.dq, label %.split667.us.invoke.i

bb.dq:                                            ; preds = %bb.dp
  %i.mf = add i64 %.sroa.0105.0657.us.i, %i.ls    ; 3 uses
  %i.mg = icmp ult i64 %i.mf, %i.fl
  br i1 %i.mg, label %bb.dr, label %.split670.us.invoke.i

bb.dr:                                            ; preds = %bb.dq
  %i.mh = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.md
  %i.mi = load i8, ptr %i.mh, align 1, !noalias !17452, !noundef !28
  %i.mj = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.mf
  %i.mk = load i8, ptr %i.mj, align 1, !noalias !17452, !noundef !28
  %..i.us.i = tail call noundef i8 @llvm.umax.i8(i8 %i.mk, i8 %i.mi)
  br label %bb.du

bb.ds:                                            ; preds = %bb.do
  %i.ml = add i64 %.sroa.0105.0657.us.i, %i.lt    ; 3 uses
  %i.mm = icmp ult i64 %i.ml, %i.fl
  br i1 %i.mm, label %bb.dt, label %.split667.us.invoke.i

bb.dt:                                            ; preds = %bb.ds
  %i.mn = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.ml
  %i.mo = load i8, ptr %i.mn, align 1, !noalias !17452, !noundef !28
  %i.mp = add i8 %i.mo, 1
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.dr
  %.sroa.04.0.us.i = phi i8 [ %i.mp, %bb.dt ], [ %..i.us.i, %bb.dr ]
  %i.mq = add i64 %i.lw, %i.ls                    ; 3 uses
  %i.mr = icmp ult i64 %i.mq, %i.fl
  br i1 %i.mr, label %bb.dv, label %.split670.us.invoke.i

bb.dv:                                            ; preds = %bb.du
  %i.ms = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.mq
  store i8 %.sroa.04.0.us.i, ptr %i.ms, align 1, !noalias !17452
  %.not168.us.i = icmp eq i64 %i.lw, 0
  br i1 %.not168.us.i, label %..loopexit292_crit_edge.split.us.i, label %.lr.ph.split.us.i

..loopexit292_crit_edge.split.us.i:               ; preds = %bb.dv
  %.not.i87 = icmp eq i64 %i.fr, 0
  br i1 %.not.i87, label %.lr.ph716.i, label %.lr.ph690.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.mt = and i64 %i.fa, 1023
  %i.mu = icmp eq i64 %i.mt, 1
  br i1 %i.mu, label %bb.dw, label %.invoke.i

bb.dw:                                            ; preds = %.lr.ph.split.i
  %i.mv = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.dx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17452

bb.dx:                                            ; preds = %bb.dw
  br i1 %i.mv, label %.loopexit288.i, label %.invoke.i

.split667.us.invoke.i:                            ; preds = %bb.ds, %bb.dp, %bb.bv, %bb.bu, %bb.cu, %bb.ct, %bb.cg, %bb.ch, %bb.dg
  %i.mw = phi i64 [ %i.gy, %bb.bu ], [ %i.jr, %bb.cu ], [ %i.ld, %bb.dg ], [ %i.ik, %bb.cg ], [ %i.fl, %bb.ch ], [ %i.jp, %bb.ct ], [ %i.ha, %bb.bv ], [ %i.md, %bb.dp ], [ %i.ml, %bb.ds ]
  %i.mx = phi ptr [ @243, %bb.bu ], [ @255, %bb.cu ], [ @259, %bb.dg ], [ @248, %bb.cg ], [ @250, %bb.ch ], [ @253, %bb.ct ], [ @245, %bb.bv ], [ @263, %bb.dp ], [ @265, %bb.ds ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.mw, i64 noundef %i.fl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mx) #70
          to label %.split667.us.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17452

.split667.us.cont.i:                              ; preds = %.split667.us.invoke.i
  unreachable

.split670.us.invoke.i:                            ; preds = %bb.du, %bb.dq, %bb.by, %bb.bw, %bb.cx, %bb.cv, %bb.ci, %bb.ck, %bb.dh
  %i.my = phi i64 [ %i.hf, %bb.bw ], [ %i.kd, %bb.cx ], [ %i.li, %bb.dh ], [ %i.io, %bb.ci ], [ %i.fl, %bb.ck ], [ %i.jv, %bb.cv ], [ %i.hq, %bb.by ], [ %i.mf, %bb.dq ], [ %i.mq, %bb.du ]
  %i.mz = phi ptr [ @244, %bb.bw ], [ @256, %bb.cx ], [ @260, %bb.dh ], [ @249, %bb.ci ], [ @251, %bb.ck ], [ @254, %bb.cv ], [ @246, %bb.by ], [ @264, %bb.dq ], [ @266, %bb.du ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.my, i64 noundef %i.fl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mz) #70
          to label %.split670.us.cont.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17452

.split670.us.cont.i:                              ; preds = %.split670.us.invoke.i
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread.i103, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi268.i, %.thread.i ], [ %lpad.loopexit.split-lp1872, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1948, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.phi268.i104, %.thread.i103 ]
  resume { ptr, i32 } %common.resume.op

bb.dy:                                            ; preds = %bb.bd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17459)
  %i.na = tail call noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10), !noalias !17460
  br i1 %i.na, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.thread, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.nb = add i64 %i.fb, 1                        ; 11 uses
  %i.nc = add i64 %i.fa, 1
  %i.nd = mul i64 %i.nc, %i.nb                    ; 29 uses
  %.not.i.i.i90 = icmp slt i64 %i.nd, 0
  br i1 %.not.i.i.i90, label %bb.ed, label %bb.ea, !prof !42

bb.ea:                                            ; preds = %bb.dz
  %i.ne = icmp eq i64 %i.nd, 0                    ; 3 uses
  br i1 %i.ne, label %.lr.ph705.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !17461
  %i.nf = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.nd, i64 noundef range(i64 1, 9) 1) #69, !noalias !17461 ; 2 uses
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.nh = ptrtoint ptr %i.nf to i64
  br label %.lr.ph705.i

bb.ed:                                            ; preds = %bb.eb, %bb.dz
  %.sroa.4.0.ph.i.i172 = phi i64 [ 1, %bb.eb ], [ 0, %bb.dz ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i172, i64 %i.nd) #70, !noalias !17462
  unreachable

.lr.ph705.i:                                      ; preds = %bb.ea, %bb.ec
  %.sroa.10.0.i.i92 = phi i64 [ %i.nh, %bb.ec ], [ 1, %bb.ea ]
  %i.ni = inttoptr i64 %.sroa.10.0.i.i92 to ptr   ; 21 uses
  %invariant.op.i107 = sub i64 %.sroa.0209.0, %i.bd ; 4 uses
  %invariant.op706.i = sub i64 %.sroa.0.0, %i.ba  ; 4 uses
  br label %.lr.ph705.split.i

.lr.ph705.split.i:                                ; preds = %.lr.ph705.i, %..loopexit292_crit_edge.split.us.i170
  %.sroa.0102.0704.i = phi i64 [ %i.nj, %..loopexit292_crit_edge.split.us.i170 ], [ %i.fa, %.lr.ph705.i ] ; 2 uses
  %i.nj = add i64 %.sroa.0102.0704.i, -1          ; 4 uses
  %i.nk = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17463

._crit_edge733.i:                                 ; preds = %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i138
  br i1 %i.se, label %bb.ee, label %bb.eg

.lr.ph732.i:                                      ; preds = %..loopexit292_crit_edge.split.us.i170, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i138
  %.sroa.05.0.not731.i = phi i1 [ false, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i138 ], [ true, %..loopexit292_crit_edge.split.us.i170 ] ; 3 uses
  %.sroa.09.0730.i = phi i64 [ %.sroa.09.3.i140, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i138 ], [ 0, %..loopexit292_crit_edge.split.us.i170 ] ; 15 uses
  %.sroa.039.0729.i = phi i64 [ %.sroa.039.3.i, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i138 ], [ 0, %..loopexit292_crit_edge.split.us.i170 ] ; 17 uses
  %i.nl = and i64 %.sroa.039.0729.i, 1023
  %i.nm = icmp eq i64 %i.nl, 0
  %or.cond170.i118 = select i1 %.sroa.05.0.not731.i, i1 %i.nm, i1 false ; 2 uses
  br i1 %or.cond170.i118, label %bb.ek, label %bb.ej

bb.ee:                                            ; preds = %._crit_edge733.i
  %i.nn = add i64 %.sroa.09.3.i140, %.sroa.0.0    ; 2 uses
  %i.no = sub nuw i64 %i.fa, %.sroa.09.3.i140
  %i.np = add i64 %.sroa.039.3.i, %.sroa.0209.0   ; 2 uses
  %i.nq = load i64, ptr %i.bg, align 8, !range !43, !alias.scope !17464, !noundef !28
  %i.nr = icmp eq i64 %i.sd, %i.nq
  br i1 %i.nr, label %bb.ef, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i114

bb.ef:                                            ; preds = %bb.ee
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #73
          to label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i114 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17463

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i114: ; preds = %bb.ef, %bb.ee
  %i.ns = load ptr, ptr %i.bi, align 8, !alias.scope !17464, !nonnull !28, !noundef !28
  %i.nt = getelementptr inbounds nuw [40 x i8], ptr %i.ns, i64 %i.sd ; 4 uses
  store i64 1, ptr %i.nt, align 8, !noalias !17463
  %.sroa.4253.0..sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  store i64 %i.nn, ptr %.sroa.4253.0..sroa_idx.i115, align 8, !noalias !17463
  %.sroa.5254.0..sroa_idx.i116 = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  store i64 %i.no, ptr %.sroa.5254.0..sroa_idx.i116, align 8, !noalias !17463
  %.sroa.6255.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.nt, i64 24
  store i64 %i.np, ptr %.sroa.6255.0..sroa_idx.i117, align 8, !noalias !17463
  %i.nu = add i64 %.sink1195.i, 2                 ; 2 uses
  store i64 %i.nu, ptr %i.bh, align 8, !alias.scope !17464
  br i1 %i.sf, label %bb.eh, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit

bb.eg:                                            ; preds = %._crit_edge733.i
  br i1 %i.sf, label %._crit_edge1046, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit

._crit_edge1046:                                  ; preds = %bb.eg
  %.pre1052 = add i64 %.sroa.09.3.i140, %.sroa.0.0
  %.pre1054 = add i64 %.sroa.039.3.i, %.sroa.0209.0
  br label %bb.eh

.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.fj, %bb.fw, %bb.ew, %bb.fi, %bb.ev, %.split670.us.invoke.i126, %bb.fv
  %lpad.loopexit.split-lp1921 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i103

.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gf, %bb.ft, %bb.ek, %.lr.ph705.split.i, %.split667.us.invoke.i124, %bb.gq, %.invoke.i119, %bb.ei, %bb.ef
  %lpad.loopexit.split-lp1948 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ne, label %common.resume, label %.thread.i103

.thread.i103:                                     ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi268.i104 = phi { ptr, i32 } [ %lpad.loopexit.split-lp1948, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1921, %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ni, i64 noundef %i.nd, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !17465
  br label %common.resume

bb.eh:                                            ; preds = %._crit_edge1046, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i114
  %.pre-phi1055 = phi i64 [ %.pre1054, %._crit_edge1046 ], [ %i.np, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i114 ]
  %.pre-phi1053 = phi i64 [ %.pre1052, %._crit_edge1046 ], [ %i.nn, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i114 ]
  %i.nv = phi i64 [ %i.sd, %._crit_edge1046 ], [ %i.nu, %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCskXtk6F4WjxZ_4just.exit181.i114 ] ; 3 uses
  %i.nw = sub nuw i64 %i.fb, %.sroa.039.3.i
  %i.nx = load i64, ptr %i.bg, align 8, !range !43, !alias.scope !17466, !noundef !28
  %i.ny = icmp eq i64 %i.nv, %i.nx
  br i1 %i.ny, label %bb.ei, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i97

bb.ei:                                            ; preds = %bb.eh
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #73
          to label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17463

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCskXtk6F4WjxZ_4just.exit182.i97: ; preds = %bb.ei, %bb.eh
  %i.nz = load ptr, ptr %i.bi, align 8, !alias.scope !17466, !nonnull !28, !noundef !28
  %i.oa = getelementptr inbounds nuw [40 x i8], ptr %i.nz, i64 %i.nv ; 4 uses
  store i64 2, ptr %i.oa, align 8, !noalias !17463
  %.sroa.4263.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  store i64 %.pre-phi1053, ptr %.sroa.4263.0..sroa_idx.i98, align 8, !noalias !17463
  %.sroa.5264.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  store i64 %.pre-phi1055, ptr %.sroa.5264.0..sroa_idx.i99, align 8, !noalias !17463
  %.sroa.6265.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.oa, i64 24
  store i64 %i.nw, ptr %.sroa.6265.0..sroa_idx.i100, align 8, !noalias !17463
  %i.ob = add i64 %i.nv, 1
  store i64 %i.ob, ptr %i.bh, align 8, !alias.scope !17466
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit

bb.ej:                                            ; preds = %bb.el, %.lr.ph732.i
  %i.oc = mul i64 %.sroa.09.0730.i, %i.nb         ; 4 uses
  %i.od = add i64 %.sroa.09.0730.i, %.sroa.0.0    ; 2 uses
  %i.oe = add i64 %.sroa.039.0729.i, %.sroa.0209.0 ; 7 uses
  %i.of = sub i64 %i.oe, %i.bd                    ; 3 uses
  %i.og = icmp ult i64 %i.of, %i.bc
  br i1 %i.og, label %bb.em, label %.invoke.i119

.invoke.i119:                                     ; preds = %bb.gh, %bb.em, %bb.ej, %bb.ey, %bb.fy, %bb.gt, %bb.gs, %13
  %i.oh = phi i64 [ %.reass707.i, %bb.gt ], [ %.reass.i161, %bb.gs ], [ %i.bc, %bb.ey ], [ %umax927.le.i, %13 ], [ %i.of, %bb.ej ], [ %i.az, %bb.fy ], [ %i.om, %bb.em ], [ %.reass.us.i164, %bb.gh ]
  %i.oi = phi i64 [ %i.az, %bb.gt ], [ %i.bc, %bb.gs ], [ %i.bc, %bb.ey ], [ %i.az, %13 ], [ %i.bc, %bb.ej ], [ %i.az, %bb.fy ], [ %i.az, %bb.em ], [ %i.bc, %bb.gh ]
  %i.oj = phi ptr [ @288, %bb.gt ], [ @287, %bb.gs ], [ @273, %bb.ey ], [ @278, %13 ], [ @267, %bb.ej ], [ @284, %bb.fy ], [ @268, %bb.em ], [ @287, %bb.gh ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.oh, i64 noundef %i.oi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.oj) #74
          to label %.cont.i120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17463

.cont.i120:                                       ; preds = %.invoke.i119
  unreachable

bb.ek:                                            ; preds = %.lr.ph732.i
  %i.ok = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.el unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17463

bb.el:                                            ; preds = %bb.ek
  br i1 %i.ok, label %.loopexit288.i157, label %bb.ej

bb.em:                                            ; preds = %bb.ej
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.of ; 2 uses
  %i.om = sub i64 %i.od, %i.ba                    ; 3 uses
  %i.on = icmp ult i64 %i.om, %i.az
  br i1 %i.on, label %bb.en, label %.invoke.i119

bb.en:                                            ; preds = %bb.em
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.om ; 2 uses
  %.val208.i121 = load i32, ptr %i.ol, align 4, !noalias !17463, !noundef !28
  %.val209.i122 = load i32, ptr %i.oo, align 4, !noalias !17463, !noundef !28
  %i.op = icmp eq i32 %.val208.i121, %.val209.i122
  br i1 %i.op, label %bb.eo, label %._crit_edge932.i

._crit_edge932.i:                                 ; preds = %bb.en
  %.pre.i123 = add nuw i64 %.sroa.09.0730.i, 1
  %.pre933.i = mul i64 %.pre.i123, %i.nb
  br label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.oq = add i64 %i.oc, %.sroa.039.0729.i        ; 3 uses
  %i.or = icmp ult i64 %i.oq, %i.nd
  br i1 %i.or, label %bb.eq, label %.split667.us.invoke.i124

bb.ep:                                            ; preds = %bb.er, %._crit_edge932.i
  %.pre-phi934.i = phi i64 [ %.pre933.i, %._crit_edge932.i ], [ %i.ov, %bb.er ] ; 3 uses
  %i.os = add i64 %.pre-phi934.i, %.sroa.039.0729.i ; 3 uses
  %i.ot = icmp ult i64 %i.os, %i.nd
  br i1 %i.ot, label %bb.es, label %.split667.us.invoke.i124

bb.eq:                                            ; preds = %bb.eo
  %i.ou = add nuw i64 %.sroa.09.0730.i, 1
  %i.ov = mul i64 %i.ou, %i.nb                    ; 2 uses
  %i.ow = add nuw i64 %.sroa.039.0729.i, 1
  %i.ox = add i64 %i.ow, %i.ov                    ; 3 uses
  %i.oy = icmp ult i64 %i.ox, %i.nd
  br i1 %i.oy, label %bb.er, label %.split670.us.invoke.i126

bb.er:                                            ; preds = %bb.eq
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.oq
  %i.pa = load i8, ptr %i.oz, align 1, !noalias !17463, !noundef !28
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.ox
  %i.pc = load i8, ptr %i.pb, align 1, !noalias !17463, !noundef !28
  %i.pd = add i8 %i.pc, 1
  %i.pe = icmp eq i8 %i.pa, %i.pd
  br i1 %i.pe, label %.preheader.i150, label %bb.ep

.preheader.i150:                                  ; preds = %bb.er
  %i.pf = icmp ult i64 %.sroa.09.0730.i, %i.fa
  %i.pg = icmp ult i64 %.sroa.039.0729.i, %i.fb
  %or.cond177715.i = select i1 %i.pf, i1 %i.pg, i1 false
  br i1 %or.cond177715.i, label %.lr.ph718.i, label %._crit_edge719.i

bb.es:                                            ; preds = %bb.ep
  %i.ph = add nuw i64 %.sroa.039.0729.i, 1        ; 3 uses
  %i.pi = add i64 %i.ph, %i.oc                    ; 3 uses
  %i.pj = icmp ult i64 %i.pi, %i.nd
  br i1 %i.pj, label %bb.et, label %.split670.us.invoke.i126

bb.et:                                            ; preds = %bb.es
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.os
  %i.pl = load i8, ptr %i.pk, align 1, !noalias !17463, !noundef !28
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.pi
  %i.pn = load i8, ptr %i.pm, align 1, !noalias !17463, !noundef !28
  %.not164.i129 = icmp ult i8 %i.pl, %i.pn
  br i1 %.not164.i129, label %.preheader275.i145, label %.preheader280.i130

.preheader280.i130:                               ; preds = %bb.et
  %umax.i131 = tail call i64 @llvm.umax.i64(i64 %.sroa.09.0730.i, i64 %i.fa) ; 3 uses
  %exitcond.not.i1331795.not = icmp ult i64 %.sroa.09.0730.i, %i.fa
  br i1 %exitcond.not.i1331795.not, label %.lr.ph1797, label %._crit_edge1798

.preheader275.i145:                               ; preds = %bb.et
  %i.po = icmp ult i64 %.sroa.039.0729.i, %i.fb
  br i1 %i.po, label %.lr.ph710.i, label %._crit_edge.i146

.lr.ph710.i:                                      ; preds = %.preheader275.i145
  %i.pp = add i64 %.pre-phi934.i, 1
  %i.pq = add i64 %i.oc, 1
  br label %bb.eu

bb.eu:                                            ; preds = %bb.fg, %.lr.ph710.i
  %.sroa.039.1709.i = phi i64 [ %.sroa.039.0729.i, %.lr.ph710.i ], [ %i.qv, %bb.fg ] ; 9 uses
  %i.pr = and i64 %.sroa.039.1709.i, 1023
  %i.ps = icmp eq i64 %i.pr, 0
  %or.cond173.i147 = and i1 %.sroa.05.0.not731.i, %i.ps
  br i1 %or.cond173.i147, label %bb.ew, label %bb.ey

._crit_edge.i146:                                 ; preds = %bb.fg, %bb.ff, %bb.fd, %.preheader275.i145
  %.sroa.039.1.lcssa.i = phi i64 [ %.sroa.039.0729.i, %.preheader275.i145 ], [ %i.fb, %bb.fg ], [ %.sroa.039.1709.i, %bb.ff ], [ %.sroa.039.1709.i, %bb.fd ] ; 3 uses
  %i.pt = sub i64 %.sroa.039.1.lcssa.i, %.sroa.039.0729.i ; 2 uses
  %i.pu = load i64, ptr %i.bh, align 8, !alias.scope !17467, !noundef !28 ; 3 uses
  %i.pv = load i64, ptr %i.bg, align 8, !range !43, !alias.scope !17467, !noundef !28
  %i.pw = icmp eq i64 %i.pu, %i.pv
  br i1 %i.pw, label %bb.ev, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i138

bb.ev:                                            ; preds = %._crit_edge.i146
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #73
          to label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i138 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17463

bb.ew:                                            ; preds = %bb.eu
  %i.px = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.ex unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17463

bb.ex:                                            ; preds = %bb.ew
  br i1 %i.px, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.thread335, label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.eu
  %i.py = add i64 %.sroa.039.1709.i, %invariant.op.i107 ; 2 uses
  %i.pz = icmp ult i64 %i.py, %i.bc
  br i1 %i.pz, label %bb.ez, label %.invoke.i119

bb.ez:                                            ; preds = %bb.ey
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.py
  %.val206.i148 = load i32, ptr %i.qa, align 4, !noalias !17463, !noundef !28
  %.val207.i149 = load i32, ptr %i.oo, align 4, !noalias !17463, !noundef !28
  %i.qb = icmp eq i32 %.val206.i148, %.val207.i149
  br i1 %i.qb, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.qc = add i64 %.sroa.039.1709.i, %i.oc        ; 3 uses
  %i.qd = icmp ult i64 %i.qc, %i.nd
  br i1 %i.qd, label %bb.fc, label %.split667.us.invoke.i124

bb.fb:                                            ; preds = %bb.fd, %bb.ez
  %i.qe = add i64 %.sroa.039.1709.i, %.pre-phi934.i ; 2 uses
  %i.qf = icmp ult i64 %i.qe, %i.nd
  br i1 %i.qf, label %bb.fe, label %.split667.us.invoke.i124

bb.fc:                                            ; preds = %bb.fa
  %i.qg = add i64 %i.pp, %.sroa.039.1709.i        ; 3 uses
  %i.qh = icmp ult i64 %i.qg, %i.nd
  br i1 %i.qh, label %bb.fd, label %.split670.us.invoke.i126

bb.fd:                                            ; preds = %bb.fc
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.qc
  %i.qj = load i8, ptr %i.qi, align 1, !noalias !17463, !noundef !28
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.qg
  %i.ql = load i8, ptr %i.qk, align 1, !noalias !17463, !noundef !28
  %i.qm = add i8 %i.ql, 1
  %i.qn = icmp eq i8 %i.qj, %i.qm
  br i1 %i.qn, label %._crit_edge.i146, label %bb.fb

bb.fe:                                            ; preds = %bb.fb
  %i.qo = add i64 %i.pq, %.sroa.039.1709.i        ; 2 uses
  %i.qp = icmp ult i64 %i.qo, %i.nd
  br i1 %i.qp, label %bb.ff, label %.split670.us.invoke.i126

bb.ff:                                            ; preds = %bb.fe
  %i.qq = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.qe
  %i.qr = load i8, ptr %i.qq, align 1, !noalias !17463, !noundef !28
  %i.qs = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.qo
  %i.qt = load i8, ptr %i.qs, align 1, !noalias !17463, !noundef !28
  %i.qu = icmp ult i8 %i.qr, %i.qt
  br i1 %i.qu, label %bb.fg, label %._crit_edge.i146

bb.fg:                                            ; preds = %bb.ff
  %i.qv = add nuw i64 %.sroa.039.1709.i, 1        ; 2 uses
  %i.qw = icmp ult i64 %i.qv, %i.fb
  br i1 %i.qw, label %bb.eu, label %._crit_edge.i146

bb.fh:                                            ; preds = %bb.fs
  %exitcond.not.i133 = icmp eq i64 %.pre-phi936.i, %umax.i131
  br i1 %exitcond.not.i133, label %._crit_edge1798, label %.lr.ph1797

.lr.ph1797:                                       ; preds = %.preheader280.i130, %bb.fh
  %.sroa.09.1.i1321796 = phi i64 [ %.pre-phi936.i, %bb.fh ], [ %.sroa.09.0730.i, %.preheader280.i130 ] ; 6 uses
  br i1 %or.cond170.i118, label %bb.fj, label %bb.fl

._crit_edge1798:                                  ; preds = %bb.fh, %bb.fq, %bb.fs, %.preheader280.i130
  %.sroa.09.1.lcssa.i137 = phi i64 [ %umax.i131, %.preheader280.i130 ], [ %umax.i131, %bb.fh ], [ %.sroa.09.1.i1321796, %bb.fq ], [ %.sroa.09.1.i1321796, %bb.fs ] ; 3 uses
  %i.qx = sub nuw i64 %.sroa.09.1.lcssa.i137, %.sroa.09.0730.i ; 2 uses
  %i.qy = load i64, ptr %i.bh, align 8, !alias.scope !17468, !noundef !28 ; 3 uses
  %i.qz = load i64, ptr %i.bg, align 8, !range !43, !alias.scope !17468, !noundef !28
  %i.ra = icmp eq i64 %i.qy, %i.qz
  br i1 %i.ra, label %bb.fi, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i138

bb.fi:                                            ; preds = %._crit_edge1798
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #73
          to label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i138 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17463

bb.fj:                                            ; preds = %.lr.ph1797
  %i.rb = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fk unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17463

bb.fk:                                            ; preds = %bb.fj
  br i1 %i.rb, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.thread335, label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.lr.ph1797
  %i.rc = mul i64 %.sroa.09.1.i1321796, %i.nb     ; 2 uses
  %i.rd = add i64 %.sroa.09.1.i1321796, %invariant.op706.i ; 2 uses
  %i.re = icmp ult i64 %i.rd, %i.az
  br i1 %i.re, label %bb.fm, label %13

13:                                               ; preds = %bb.fl
  %14 = add i64 %.sroa.09.0730.i, %invariant.op706.i
  %umax927.le.i = tail call i64 @llvm.umax.i64(i64 %i.az, i64 %14)
  br label %.invoke.i119

bb.fm:                                            ; preds = %bb.fl
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.rd
  %.val204.i134 = load i32, ptr %i.ol, align 4, !noalias !17463, !noundef !28
  %.val205.i135 = load i32, ptr %i.rf, align 4, !noalias !17463, !noundef !28
  %i.rg = icmp eq i32 %.val204.i134, %.val205.i135
  br i1 %i.rg, label %bb.fn, label %._crit_edge931.i

._crit_edge931.i:                                 ; preds = %bb.fm
  %.pre935.i = add i64 %.sroa.09.1.i1321796, 1    ; 2 uses
  %.pre937.i = mul i64 %.pre935.i, %i.nb
  br label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.rh = add i64 %i.rc, %.sroa.039.0729.i        ; 3 uses
  %i.ri = icmp ult i64 %i.rh, %i.nd
  br i1 %i.ri, label %bb.fp, label %.split667.us.invoke.i124

bb.fo:                                            ; preds = %bb.fq, %._crit_edge931.i
  %.pre-phi938.i.a = phi i64 [ %.pre937.i, %._crit_edge931.i ], [ %i.rm, %bb.fq ]
  %.pre-phi936.i = phi i64 [ %.pre935.i, %._crit_edge931.i ], [ %i.rl, %bb.fq ] ; 2 uses
  %i.rj = add i64 %.pre-phi938.i.a, %.sroa.039.0729.i ; 3 uses
  %i.rk = icmp ult i64 %i.rj, %i.nd
  br i1 %i.rk, label %bb.fr, label %.split667.us.invoke.i124

bb.fp:                                            ; preds = %bb.fn
  %i.rl = add i64 %.sroa.09.1.i1321796, 1         ; 2 uses
  %i.rm = mul i64 %i.rl, %i.nb                    ; 2 uses
  %i.rn = add i64 %i.rm, %i.ph                    ; 3 uses
  %i.ro = icmp ult i64 %i.rn, %i.nd
  br i1 %i.ro, label %bb.fq, label %.split670.us.invoke.i126

bb.fq:                                            ; preds = %bb.fp
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.rh
  %i.rq = load i8, ptr %i.rp, align 1, !noalias !17463, !noundef !28
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.rn
  %i.rs = load i8, ptr %i.rr, align 1, !noalias !17463, !noundef !28
  %i.rt = add i8 %i.rs, 1
  %i.ru = icmp eq i8 %i.rq, %i.rt
  br i1 %i.ru, label %._crit_edge1798, label %bb.fo

bb.fr:                                            ; preds = %bb.fo
  %i.rv = add i64 %i.rc, %i.ph                    ; 3 uses
  %i.rw = icmp ult i64 %i.rv, %i.nd
  br i1 %i.rw, label %bb.fs, label %.split670.us.invoke.i126

bb.fs:                                            ; preds = %bb.fr
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.rj
  %i.ry = load i8, ptr %i.rx, align 1, !noalias !17463, !noundef !28
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.rv
  %i.sa = load i8, ptr %i.rz, align 1, !noalias !17463, !noundef !28
  %.not167.i136 = icmp ult i8 %i.ry, %i.sa
  br i1 %.not167.i136, label %._crit_edge1798, label %bb.fh

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i138: ; preds = %bb.ft, %._crit_edge719.i, %bb.fi, %._crit_edge1798, %bb.ev, %._crit_edge.i146
  %.sink1195.i = phi i64 [ %i.sh, %bb.ft ], [ %i.pu, %bb.ev ], [ %i.sh, %._crit_edge719.i ], [ %i.pu, %._crit_edge.i146 ], [ %i.qy, %._crit_edge1798 ], [ %i.qy, %bb.fi ] ; 3 uses
  %.sink1192.i = phi i64 [ 0, %bb.ft ], [ 2, %bb.ev ], [ 0, %._crit_edge719.i ], [ 2, %._crit_edge.i146 ], [ 1, %._crit_edge1798 ], [ 1, %bb.fi ]
  %.sink1189.i = phi i64 [ %i.oe, %bb.ft ], [ %i.oe, %bb.ev ], [ %i.oe, %._crit_edge719.i ], [ %i.oe, %._crit_edge.i146 ], [ %i.qx, %._crit_edge1798 ], [ %i.qx, %bb.fi ]
  %.sink.i139 = phi i64 [ %i.sg, %bb.ft ], [ %i.pt, %bb.ev ], [ %i.sg, %._crit_edge719.i ], [ %i.pt, %._crit_edge.i146 ], [ %i.oe, %._crit_edge1798 ], [ %i.oe, %bb.fi ]
  %.sroa.039.3.i = phi i64 [ %.sroa.039.4.lcssa.i, %bb.ft ], [ %.sroa.039.1.lcssa.i, %bb.ev ], [ %.sroa.039.4.lcssa.i, %._crit_edge719.i ], [ %.sroa.039.1.lcssa.i, %._crit_edge.i146 ], [ %.sroa.039.0729.i, %._crit_edge1798 ], [ %.sroa.039.0729.i, %bb.fi ] ; 5 uses
  %.sroa.09.3.i140 = phi i64 [ %.sroa.09.4.lcssa.i151, %bb.ft ], [ %.sroa.09.0730.i, %bb.ev ], [ %.sroa.09.4.lcssa.i151, %._crit_edge719.i ], [ %.sroa.09.0730.i, %._crit_edge.i146 ], [ %.sroa.09.1.lcssa.i137, %._crit_edge1798 ], [ %.sroa.09.1.lcssa.i137, %bb.fi ] ; 5 uses
  %i.sb = load ptr, ptr %i.bi, align 8, !alias.scope !17459, !nonnull !28, !noundef !28
  %i.sc = getelementptr inbounds nuw [40 x i8], ptr %i.sb, i64 %.sink1195.i ; 4 uses
  store i64 %.sink1192.i, ptr %i.sc, align 8, !noalias !17463
  %.sroa.4258.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  store i64 %i.od, ptr %.sroa.4258.0..sroa_idx.i141, align 8, !noalias !17463
  %.sroa.5259.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.sc, i64 16
  store i64 %.sink1189.i, ptr %.sroa.5259.0..sroa_idx.i142, align 8, !noalias !17463
  %.sroa.6260.0..sroa_idx.i143 = getelementptr inbounds nuw i8, ptr %i.sc, i64 24
  store i64 %.sink.i139, ptr %.sroa.6260.0..sroa_idx.i143, align 8, !noalias !17463
  %i.sd = add i64 %.sink1195.i, 1                 ; 4 uses
  store i64 %i.sd, ptr %i.bh, align 8, !alias.scope !17459
  %i.se = icmp ult i64 %.sroa.09.3.i140, %i.fa    ; 2 uses
  %i.sf = icmp ult i64 %.sroa.039.3.i, %i.fb      ; 3 uses
  %or.cond.i144 = select i1 %i.se, i1 %i.sf, i1 false
  br i1 %or.cond.i144, label %.lr.ph732.i, label %._crit_edge733.i

._crit_edge719.i:                                 ; preds = %bb.gd, %bb.gc, %bb.fz, %.preheader.i150
  %.sroa.039.4.lcssa.i = phi i64 [ %.sroa.039.0729.i, %.preheader.i150 ], [ %i.sz, %bb.gd ], [ %.sroa.039.4716.i, %bb.fz ], [ %.sroa.039.4716.i, %bb.gc ] ; 2 uses
  %.sroa.09.4.lcssa.i151 = phi i64 [ %.sroa.09.0730.i, %.preheader.i150 ], [ %i.sx, %bb.gd ], [ %.sroa.09.4717.i, %bb.fz ], [ %.sroa.09.4717.i, %bb.gc ] ; 3 uses
  %i.sg = sub nuw i64 %.sroa.09.4.lcssa.i151, %.sroa.09.0730.i ; 2 uses
  %i.sh = load i64, ptr %i.bh, align 8, !alias.scope !17469, !noundef !28 ; 3 uses
  %i.si = load i64, ptr %i.bg, align 8, !range !43, !alias.scope !17469, !noundef !28
  %i.sj = icmp eq i64 %i.sh, %i.si
  br i1 %i.sj, label %bb.ft, label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i138

bb.ft:                                            ; preds = %._crit_edge719.i
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bg) #73
          to label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCskXtk6F4WjxZ_4just.exit.i138 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17463

.lr.ph718.i:                                      ; preds = %.preheader.i150, %bb.gd
  %.sroa.09.4717.i = phi i64 [ %i.sx, %bb.gd ], [ %.sroa.09.0730.i, %.preheader.i150 ] ; 5 uses
  %.sroa.039.4716.i = phi i64 [ %i.sz, %bb.gd ], [ %.sroa.039.0729.i, %.preheader.i150 ] ; 6 uses
  %i.sk = and i64 %.sroa.039.4716.i, 1023
  %i.sl = icmp eq i64 %i.sk, 0
  %or.cond180.i152 = select i1 %.sroa.05.0.not731.i, i1 %i.sl, i1 false
  br i1 %or.cond180.i152, label %bb.fw, label %bb.fu

bb.fu:                                            ; preds = %bb.fx, %.lr.ph718.i
  %i.sm = mul i64 %.sroa.09.4717.i, %i.nb
  %i.sn = add i64 %.sroa.039.4716.i, %invariant.op.i107 ; 2 uses
  %i.so = icmp ult i64 %i.sn, %i.bc
  br i1 %i.so, label %bb.fy, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bc, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #74
          to label %.noexc187.i153 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17463

.noexc187.i153:                                   ; preds = %bb.fv
  unreachable

bb.fw:                                            ; preds = %.lr.ph718.i
  %i.sp = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.fx unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i127.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17463

bb.fx:                                            ; preds = %bb.fw
  br i1 %i.sp, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.thread335, label %bb.fu

bb.fy:                                            ; preds = %bb.fu
  %i.sq = add i64 %.sroa.09.4717.i, %invariant.op706.i ; 2 uses
  %i.sr = icmp ult i64 %i.sq, %i.az
  br i1 %i.sr, label %bb.fz, label %.invoke.i119

bb.fz:                                            ; preds = %bb.fy
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.sn
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.sq
  %.val202.i154 = load i32, ptr %i.ss, align 4, !noalias !17463, !noundef !28
  %.val203.i155 = load i32, ptr %i.st, align 4, !noalias !17463, !noundef !28
  %i.su = icmp eq i32 %.val202.i154, %.val203.i155
  br i1 %i.su, label %bb.ga, label %._crit_edge719.i

bb.ga:                                            ; preds = %bb.fz
  %i.sv = add i64 %i.sm, %.sroa.039.4716.i        ; 3 uses
  %i.sw = icmp ult i64 %i.sv, %i.nd
  br i1 %i.sw, label %bb.gb, label %.split667.us.invoke.i124

bb.gb:                                            ; preds = %bb.ga
  %i.sx = add nuw i64 %.sroa.09.4717.i, 1         ; 4 uses
  %i.sy = mul i64 %i.sx, %i.nb
  %i.sz = add nuw i64 %.sroa.039.4716.i, 1        ; 4 uses
  %i.ta = add i64 %i.sz, %i.sy                    ; 3 uses
  %i.tb = icmp ult i64 %i.ta, %i.nd
  br i1 %i.tb, label %bb.gc, label %.split670.us.invoke.i126

bb.gc:                                            ; preds = %bb.gb
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.sv
  %i.td = load i8, ptr %i.tc, align 1, !noalias !17463, !noundef !28
  %i.te = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.ta
  %i.tf = load i8, ptr %i.te, align 1, !noalias !17463, !noundef !28
  %i.tg = add i8 %i.tf, 1
  %i.th = icmp eq i8 %i.td, %i.tg
  br i1 %i.th, label %bb.gd, label %._crit_edge719.i

bb.gd:                                            ; preds = %bb.gc
  %i.ti = icmp ult i64 %i.sx, %i.fa
  %i.tj = icmp ult i64 %i.sz, %i.fb
  %or.cond177.i156 = and i1 %i.ti, %i.tj
  br i1 %or.cond177.i156, label %.lr.ph718.i, label %._crit_edge719.i

.loopexit288.i157:                                ; preds = %bb.ge, %bb.gg, %bb.el, %bb.gr
  br i1 %i.ne, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.thread, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtB4_5utils12OffsetLookupmEB1d_INtNtB4_7compact7CompactB1d_B1d_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECskXtk6F4WjxZ_4just.exit.thread335

bb.ge:                                            ; preds = %.lr.ph705.split.i
  br i1 %i.nk, label %.loopexit288.i157, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %bb.ge
  %i.tk = mul i64 %i.nj, %i.nb                    ; 2 uses
  %i.tl = mul i64 %.sroa.0102.0704.i, %i.nb       ; 2 uses
  %.reass707.i = add i64 %i.nj, %invariant.op706.i ; 3 uses
  %i.tm = icmp ult i64 %.reass707.i, %i.az
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.reass707.i
  %.fr.i159 = freeze i1 %i.tm
  br i1 %.fr.i159, label %.lr.ph.split.us.i162, label %.lr.ph.split.i160

.lr.ph.split.us.i162:                             ; preds = %.lr.ph.i158, %bb.gp
  %.sroa.0105.0657.us.i163 = phi i64 [ %i.to, %bb.gp ], [ %i.fb, %.lr.ph.i158 ] ; 3 uses
  %i.to = add i64 %.sroa.0105.0657.us.i163, -1    ; 6 uses
  %i.tp = and i64 %i.to, 1023
  %i.tq = icmp eq i64 %i.tp, 0
  br i1 %i.tq, label %bb.gf, label %bb.gh

bb.gf:                                            ; preds = %.lr.ph.split.us.i162
  %i.tr = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %9, i32 noundef range(i32 -1, 1000000000) %10)
          to label %bb.gg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i101.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17463

bb.gg:                                            ; preds = %bb.gf
  br i1 %i.tr, label %.loopexit288.i157, label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %.lr.ph.split.us.i162
  %.reass.us.i164 = add i64 %i.to, %invariant.op.i107 ; 3 uses
  %i.ts = icmp ult i64 %.reass.us.i164, %i.bc
  br i1 %i.ts, label %bb.gi, label %.invoke.i119

bb.gi:                                            ; preds = %bb.gh
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %.reass.us.i164
  %.val.us.i165 = load i32, ptr %i.tt, align 4, !noalias !17463, !noundef !28
  %.val201.us.i166 = load i32, ptr %i.tn, align 4, !noalias !17463, !noundef !28
  %i.tu = icmp eq i32 %.val.us.i165, %.val201.us.i166
  br i1 %i.tu, label %bb.gm, label %bb.gj

end_hunk_11
begin_hunk_12_@_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand12resolve_path:bb.a
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.548.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i64 92, ptr %0, align 8
  br label %bb.aa
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand3run(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(552) %1, ptr nofree noundef nonnull align 8 captures(none) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(72) %3, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(1024) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) %5, i64 noundef range(i64 0, 384307168202282326) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 11 uses
  %.sroa.6 = alloca [104 x i8], align 8           ; 4 uses
  %.sroa.4 = alloca [912 x i8], align 8           ; 3 uses
  %i.i = alloca [1024 x i8], align 8              ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [64 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [72 x i8], align 8                ; 11 uses
  %i.o = alloca [104 x i8], align 8               ; 8 uses
  %i.p = alloca [104 x i8], align 8               ; 9 uses
  %i.q = alloca [32 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !28, !noundef !28
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !28
  %i.w = invoke { ptr, i64 } @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v)
          to label %bb.c unwind label %bb.b       ; 2 uses

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit: ; preds = %bb.ad, %.body, %bb.b
  %.pn38 = phi { ptr, i32 } [ %i.x, %bb.b ], [ %.pn36, %.body ], [ %.pn36, %bb.ad ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just11compilation11CompilationEBF_(ptr noalias nofree noundef align 8 dereferenceable(1024) %4) #71
          to label %bb.cd unwind label %bb.al

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit

bb.c:                                             ; preds = %bb.a
  %i.y = extractvalue { ptr, i64 } %i.w, 0        ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.e, label %bb.d, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.z = extractvalue { ptr, i64 } %i.w, 1
  invoke void @_RNvXNtCskXtk6F4WjxZ_4just5cleanRNtNtCsaKJjC64KgbL_3std4path4PathNtB2_5Clean5clean(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.z)
          to label %.preheader unwind label %bb.b

.preheader:                                       ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 392
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ac = load i64, ptr %i.ab, align 8, !range !91
  %switch107 = icmp slt i64 %i.ac, -9223372036854775806
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 527
  %.val46 = load i8, ptr %i.ad, align 1
  %i.ae = icmp eq i64 %6, 0
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ah = icmp eq i64 %6, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 6 uses
  %i.aj = shl nuw nsw i64 %6, 4                   ; 5 uses
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.al = trunc nuw i8 %.val46 to i1
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 976
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.ao = load i8, ptr %i.an, align 8, !range !103
  %i.ap = icmp samesign ugt i8 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %.sroa.3.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %xtraiter = and i64 %6, 1
  %i.av = icmp eq i64 %6, 1
  %unroll_iter = and i64 %6, 576460752303423486
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod344 = trunc i64 %6 to i1
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1222) #70
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.bj, %bb.e
  unreachable

bb.g:                                             ; preds = %.preheader, %bb.bu
  %i.aw = load i8, ptr %i.aa, align 8, !range !40, !noundef !28
  %i.ax = trunc nuw i8 %i.aw to i1
  %.sroa.01.0 = select i1 %i.ax, i1 %switch107, i1 false
  call void @llvm.experimental.noalias.scope.decl(metadata !63699)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !63700
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.h, align 8, !noalias !63700
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !63700
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !63700
  store i8 0, ptr %i.ak, align 8, !noalias !63700
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.af, align 8, !alias.scope !63699, !nonnull !28, !noundef !28 ; 4 uses
  %i.az = load i64, ptr %i.ag, align 8, !alias.scope !63699, !noundef !28 ; 9 uses
  %i.ba = icmp samesign ult i64 %i.az, 16
  br i1 %i.ba, label %.preheader.i.i.i.i, label %bb.j

.preheader.i.i.i.i:                               ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i, label %.loopexit35.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bb = invoke { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef 58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ay, i64 noundef range(i64 0, -9223372036854775808) %i.az)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc49:                                         ; preds = %bb.j
  %i.bc = extractvalue { i64, i64 } %i.bb, 0
  %i.bd = extractvalue { i64, i64 } %i.bb, 1
  %i.be = trunc nuw i64 %i.bc to i1
  br i1 %i.be, label %.loopexit.i, label %.loopexit35.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.k
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.bi, %bb.k ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.04.011.i.i.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !63701, !noalias !63700, !noundef !28
  %i.bh = icmp eq i8 %i.bg, 58
  br i1 %i.bh, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bi = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bi, %i.az
  br i1 %exitcond.not.i.i.i.i, label %.loopexit35.i, label %.lr.ph.i.i.i.i

bb.l:                                             ; preds = %bb.r, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit39.i, %bb.h
  %i.bj = phi i64 [ %i.ch, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit39.i ], [ %i.cr, %bb.r ], [ 0, %bb.h ] ; 7 uses
  %i.bk = invoke fastcc noundef align 8 ptr @_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile9submodule(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(904) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.s unwind label %bb.ac, !noalias !63702 ; 2 uses

.loopexit35.i:                                    ; preds = %bb.k, %.noexc49, %.preheader.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !63700
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #69, !noalias !63703
  %i.bl = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.aj, i64 noundef range(i64 1, 9) 8) #69, !noalias !63703 ; 8 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.m, label %.preheader.i.i.i38.i.preheader

.preheader.i.i.i38.i.preheader:                   ; preds = %.loopexit35.i
  br i1 %i.av, label %.preheader.i.i.i38.i.epil.preheader, label %.preheader.i.i.i38.i

bb.m:                                             ; preds = %.loopexit35.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.aj) #70
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %bb.m
  unreachable

.preheader.i.i.i38.i:                             ; preds = %.preheader.i.i.i38.i.preheader, %.preheader.i.i.i38.i
  %i.bn = phi i64 [ %i.bz, %.preheader.i.i.i38.i ], [ 0, %.preheader.i.i.i38.i.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.i.i38.i ], [ 0, %.preheader.i.i.i38.i.preheader ]
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.bn ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %.val15.i.i.i.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !63699, !noalias !63704, !nonnull !28, !noundef !28
  %i.bq = getelementptr i8, ptr %i.bo, i64 16
  %.val16.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !alias.scope !63699, !noalias !63704, !noundef !28
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bn ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.i, ptr %i.br, align 8, !noalias !63705, !captures !36
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %.val16.i.i.i.i.i.i.i, ptr %i.bs, align 8, !noalias !63706
  %i.bt = or disjoint i64 %i.bn, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.bt ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  %.val15.i.i.i.i.i.i.i.1 = load ptr, ptr %i.bv, align 8, !alias.scope !63699, !noalias !63704, !nonnull !28, !noundef !28
  %i.bw = getelementptr i8, ptr %i.bu, i64 16
  %.val16.i.i.i.i.i.i.i.1 = load i64, ptr %i.bw, align 8, !alias.scope !63699, !noalias !63704, !noundef !28
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bt ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.i.1, ptr %i.bx, align 8, !noalias !63705, !captures !36
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %.val16.i.i.i.i.i.i.i.1, ptr %i.by, align 8, !noalias !63706
  %i.bz = add nuw nsw i64 %i.bn, 2                ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i.unr-lcssa, label %.preheader.i.i.i38.i

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i.unr-lcssa: ; preds = %.preheader.i.i.i38.i
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i, label %.preheader.i.i.i38.i.epil.preheader

.preheader.i.i.i38.i.epil.preheader:              ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i.unr-lcssa, %.preheader.i.i.i38.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i38.i.preheader ], [ %i.bz, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod344)
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.epil.init ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %.val15.i.i.i.i.i.i.i.epil = load ptr, ptr %i.cb, align 8, !alias.scope !63699, !noalias !63704, !nonnull !28, !noundef !28
  %i.cc = getelementptr i8, ptr %i.ca, i64 16
  %.val16.i.i.i.i.i.i.i.epil = load i64, ptr %i.cc, align 8, !alias.scope !63699, !noalias !63704, !noundef !28
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.epil.init ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.i.epil, ptr %i.cd, align 8, !noalias !63705, !captures !36
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %.val16.i.i.i.i.i.i.i.epil, ptr %i.ce, align 8, !noalias !63706
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i: ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i.unr-lcssa, %.preheader.i.i.i38.i.epil.preheader
  invoke void @_RNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathINtNtCsj6eKBz9Db1c_4core7convert7TryFromRSReE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, 384307168202282326) %6)
          to label %bb.o unwind label %bb.n, !noalias !63700

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i, %.noexc49
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.bd, %.noexc49 ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.cf = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.az
  call void @llvm.assume(i1 %i.cf)
  br i1 %i.ah, label %bb.p, label %bb.ae

bb.n:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !63700
  br label %.body

bb.o:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i
  %i.ch = load i64, ptr %i.f, align 8, !range !37, !noalias !63700, !noundef !28 ; 3 uses
  %i.ci = icmp eq i64 %i.ch, -1
  br i1 %i.ci, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit40.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit39.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit40.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !63700
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !63700
  br label %bb.ae

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit39.i: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.421.0..sroa_idx.i, i64 24, i1 false), !noalias !63700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !63700
  store i64 %i.ch, ptr %i.h, align 8, !noalias !63700
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !63700
  br label %bb.l

bb.p:                                             ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !63700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !63707
  %.not.i.i.i = icmp samesign ult i64 %i.az, 2
  br i1 %.not.i.i.i, label %_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.p
  %i.cj = getelementptr i8, ptr %i.ay, i64 %i.az
  %i.ck = getelementptr i8, ptr %i.cj, i64 -2
  %i.cl = load i16, ptr %i.ck, align 1
  %i.cm = icmp ne i16 14906, %i.cl
  %i.cn = zext i1 %i.cm to i32
  %bcmp.i.i.fr.i.i = freeze i32 %i.cn
  %i.co = icmp eq i32 %bcmp.i.i.fr.i.i, 0
  %i.cp = add nsw i64 %i.az, -2
  %spec.select.i.i = select i1 %i.co, i64 %i.cp, i64 %i.az
  br label %_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit.i

_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i, %bb.p
  %i.cq = phi i64 [ 1, %bb.p ], [ %spec.select.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i ]
  store ptr %i.ay, ptr %i.e, align 8, !noalias !63707
  store i64 %i.cq, ptr %i.ai, align 8, !noalias !63707
  invoke void @_RNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathINtNtCsj6eKBz9Db1c_4core7convert7TryFromRSReE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef 1)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc51:                                         ; preds = %_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !63707
  %i.cr = load i64, ptr %i.g, align 8, !range !37, !noalias !63700, !noundef !28 ; 3 uses
  %i.cs = icmp eq i64 %i.cr, -1
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !63700
  br label %bb.ae

bb.r:                                             ; preds = %.noexc51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.413.0..sroa_idx.i, i64 24, i1 false), !noalias !63700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !63700
  store i64 %i.cr, ptr %i.h, align 8, !noalias !63700
  br label %bb.l

bb.s:                                             ; preds = %bb.l
  %.not30.i = icmp eq ptr %i.bk, null
  br i1 %.not30.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.al, label %bb.y, label %bb.x

bb.u:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !63708)
  call void @llvm.experimental.noalias.scope.decl(metadata !63709)
  %.val.i.i.i = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !63710, !noalias !63700, !nonnull !28, !noundef !28 ; 2 uses
  %.val1.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !63710, !noalias !63700, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63711)
  %i.ct = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ct, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %i.cv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ], [ 0, %bb.u ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i, i64 %.sroa.0.010.i.i.i.i.i ; 2 uses
  %i.cv = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63712)
  call void @llvm.experimental.noalias.scope.decl(metadata !63713)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.cu, align 8, !alias.scope !63714, !noalias !63715 ; 2 uses
  %i.cw = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.cw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !63714, !noalias !63715, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !63716
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %bb.v, %.lr.ph.i.i.i.i.i
  %i.cy = icmp eq i64 %i.cv, %.val1.i.i.i
  br i1 %i.cy, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %bb.u
  %i.cz = icmp eq i64 %i.bj, 0
  br i1 %i.cz, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.da = mul nuw i64 %i.bj, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !63715
  br label %bb.ae

bb.x:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %i.bk, i64 386
  %i.dc = load i8, ptr %i.db, align 2, !range !40, !noalias !63702, !noundef !28
  %i.dd = trunc nuw i8 %i.dc to i1
  %.sroa.77.0.copyload.i = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !63700 ; 4 uses
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !63700 ; 3 uses
  br i1 %i.dd, label %.loopexit110, label %bb.z

bb.y:                                             ; preds = %bb.t
  %.sroa.77.0.copyload9.i = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !63700
  %.sroa.8.0.copyload13.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !63700
  br label %.loopexit110

bb.z:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.77.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !63717)
  %i.de = icmp eq i64 %.sroa.8.0.copyload.i, 0
  br i1 %i.de, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i58.i, label %.lr.ph.i.i.i.i53.i

.lr.ph.i.i.i.i53.i:                               ; preds = %bb.z, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i
  %.sroa.0.010.i.i.i.i54.i = phi i64 [ %i.dg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i ], [ 0, %bb.z ] ; 2 uses
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %.sroa.77.0.copyload.i, i64 %.sroa.0.010.i.i.i.i54.i ; 2 uses
  %i.dg = add nuw nsw i64 %.sroa.0.010.i.i.i.i54.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63718)
  call void @llvm.experimental.noalias.scope.decl(metadata !63719)
  %.val.i.i.i.i.i.i55.i = load i64, ptr %i.df, align 8, !alias.scope !63720, !noalias !63721 ; 2 uses
  %i.dh = icmp eq i64 %.val.i.i.i.i.i.i55.i, 0
  br i1 %i.dh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i53.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.val1.i.i.i.i.i.i56.i = load ptr, ptr %i.di, align 8, !alias.scope !63720, !noalias !63721, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i56.i, i64 noundef %.val.i.i.i.i.i.i55.i, i64 noundef range(i64 1, -9223372036854775807) 1) #69, !noalias !63722
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i: ; preds = %bb.aa, %.lr.ph.i.i.i.i53.i
  %i.dj = icmp eq i64 %i.dg, %.sroa.8.0.copyload.i
  br i1 %i.dj, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i58.i, label %.lr.ph.i.i.i.i53.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i58.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i, %bb.z
  %i.dk = icmp eq i64 %i.bj, 0
  br i1 %i.dk, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i58.i
  %i.dl = mul nuw i64 %i.bj, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.77.0.copyload.i, i64 noundef %i.dl, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !63721
  br label %bb.ae

bb.ac:                                            ; preds = %bb.l
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h) #71, !noalias !63702
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.af, %bb.ac, %bb.n, %.thread99
  %.pn36 = phi { ptr, i32 } [ %i.dm, %bb.ac ], [ %i.do, %bb.af ], [ %.pn3198, %.thread99 ], [ %i.cg, %bb.n ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !63723)
  call void @llvm.experimental.noalias.scope.decl(metadata !63724)
  %.val.i.i = load i64, ptr %i.r, align 8, !alias.scope !63725 ; 2 uses
  %i.dn = icmp eq i64 %.val.i.i, 0
  br i1 %i.dn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit, label %bb.ad
end_hunk_12
