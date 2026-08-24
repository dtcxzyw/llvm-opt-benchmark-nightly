Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/winnow-5030289b44dc7185.winnow.8d95b9a2d6b6e4b3-cgu.1?download=true
inline.NumInlined: 22
inline.NumDeleted: 18
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 1
@1 = private unnamed_addr constant [7 x i8] c"newline", align 1
@2 = private unnamed_addr constant [3 x i8] c"'`'", align 1
@3 = private unnamed_addr constant [6 x i8] c"\01`\C0\01`\00", align 1
@4 = private unnamed_addr constant [2 x i8] c"\C0\00", align 1
@5 = private unnamed_addr constant [15 x i8] c"failed to parse", align 1
@6 = private unnamed_addr constant [11 x i8] c"\08invalid \C0\00", align 1
@7 = private unnamed_addr constant [12 x i8] c"\09expected \C0\00", align 1

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define { i64, i64 } @_RNvNtCsc9EtMejYXE5_6winnow5error13char_boundary(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, %1
  br i1 %i.a, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_4find5checkjNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundarys_0E0INtNtB8_12control_flow11ControlFlowjEEB22_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %2, 1                            ; 3 uses
  %.sroa.0.0.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %1, i64 %i.b) ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundary0E0INtNtB8_12control_flow11ControlFlowjEEB2l_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.critedge.backedge.i
  %3 = phi i64 [ %4, %.critedge.backedge.i ], [ %.sroa.0.0.i, %bb.b ]
  %4 = add nsw i64 %3, -1                         ; 5 uses
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %_RNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundary0B5_.exit.i.i, label %.critedge.backedge.i

_RNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundary0B5_.exit.i.i: ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %4
  %i.d = load i8, ptr %i.c, align 1, !alias.scope !3, !noalias !6, !noundef !8
  %i.e = icmp sgt i8 %i.d, -65
  br i1 %i.e, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundary0E0INtNtB8_12control_flow11ControlFlowjEEB2l_.exit, label %.critedge.backedge.i

.critedge.backedge.i:                             ; preds = %_RNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundary0B5_.exit.i.i, %.lr.ph.i
  %.not25 = icmp eq i64 %4, 0
  br i1 %.not25, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundary0E0INtNtB8_12control_flow11ControlFlowjEEB2l_.exit, label %.lr.ph.i

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundary0E0INtNtB8_12control_flow11ControlFlowjEEB2l_.exit: ; preds = %_RNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundary0B5_.exit.i.i, %.critedge.backedge.i, %bb.b
  %.sroa.0.0.i16 = phi i64 [ 0, %bb.b ], [ %4, %_RNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundary0B5_.exit.i.i ], [ 0, %.critedge.backedge.i ] ; 3 uses
  %i.f = icmp ult i64 %i.b, %1
  br i1 %i.f, label %.lr.ph.i19, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_4find5checkjNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundarys_0E0INtNtB8_12control_flow11ControlFlowjEEB22_.exit

.lr.ph.i19:                                       ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundary0E0INtNtB8_12control_flow11ControlFlowjEEB2l_.exit, %.critedge.backedge.i20
  %i.g = phi i64 [ %i.h, %.critedge.backedge.i20 ], [ %i.b, %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundary0E0INtNtB8_12control_flow11ControlFlowjEEB2l_.exit ] ; 4 uses
  %i.h = add i64 %i.g, 1                          ; 2 uses
  %i.i = icmp ult i64 %i.g, %1
  br i1 %i.i, label %_RNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundarys_0B5_.exit.i.i, label %.critedge.backedge.i20

_RNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundarys_0B5_.exit.i.i: ; preds = %.lr.ph.i19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !9, !noalias !12, !noundef !8
  %i.l = icmp sgt i8 %i.k, -65
  br i1 %i.l, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_4find5checkjNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundarys_0E0INtNtB8_12control_flow11ControlFlowjEEB22_.exit, label %.critedge.backedge.i20

.critedge.backedge.i20:                           ; preds = %_RNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundarys_0B5_.exit.i.i, %.lr.ph.i19
  %exitcond.not.i = icmp eq i64 %i.h, %1
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_4find5checkjNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundarys_0E0INtNtB8_12control_flow11ControlFlowjEEB22_.exit, label %.lr.ph.i19

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBL_4find5checkjNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundarys_0E0INtNtB8_12control_flow11ControlFlowjEEB22_.exit: ; preds = %.critedge.backedge.i20, %_RNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundarys_0B5_.exit.i.i, %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundary0E0INtNtB8_12control_flow11ControlFlowjEEB2l_.exit, %bb.a
  %.sroa.3.0 = phi i64 [ %2, %bb.a ], [ %1, %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundary0E0INtNtB8_12control_flow11ControlFlowjEEB2l_.exit ], [ %1, %.critedge.backedge.i20 ], [ %i.g, %_RNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundarys_0B5_.exit.i.i ]
  %.sroa.0.0 = phi i64 [ %2, %bb.a ], [ %.sroa.0.0.i16, %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundary0E0INtNtB8_12control_flow11ControlFlowjEEB2l_.exit ], [ %.sroa.0.0.i16, %_RNCNvNtCsc9EtMejYXE5_6winnow5error13char_boundarys_0B5_.exit.i.i ], [ %.sroa.0.0.i16, %.critedge.backedge.i20 ]
  %i.m = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.n = insertvalue { i64, i64 } %i.m, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.n
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsc9EtMejYXE5_6winnow5error15StrContextValueNtB6_7Display3fmtBA_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !align !14, !noundef !8
  %i.b = tail call noundef zeroext i1 @_RNvXsA_NtCsc9EtMejYXE5_6winnow5errorNtB5_15StrContextValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsA_NtCsc9EtMejYXE5_6winnow5errorNtB5_15StrContextValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 4                ; 28 uses
  %i.j = load i32, ptr %0, align 8, !range !15, !noundef !8
  switch i32 %i.j, label %default.unreachable70 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

default.unreachable70:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !range !16, !noundef !8 ; 9 uses
  switch i32 %i.l, label %bb.e [
    i32 10, label %bb.f
    i32 96, label %bb.g
  ]

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRReNtB6_7Display3fmtCsc9EtMejYXE5_6winnow, ptr %.sroa.412.0..sroa_idx, align 8
  %i.n = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !8, !align !14, !noundef !8
  %i.q = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noundef nonnull @3, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRReNtB6_7Display3fmtCsc9EtMejYXE5_6winnow, ptr %.sroa.48.0..sroa_idx, align 8
  %i.s = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !8, !align !14, !noundef !8
  %i.v = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u, ptr noundef nonnull @4, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.w = icmp samesign ult i32 %i.l, 32
  %i.x = icmp eq i32 %i.l, 127
  %or.cond5 = or i1 %i.w, %i.x
  br i1 %or.cond5, label %bb.j, label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.y = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 7, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.z = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 3, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.c, %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc16escape_debug_ext.exit, %bb.i, %bb.g, %bb.f
  %.sroa.0.0.in = phi i1 [ %i.bd, %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc16escape_debug_ext.exit ], [ %i.ad, %bb.i ], [ %i.y, %bb.f ], [ %i.z, %bb.g ], [ %i.q, %bb.c ], [ %i.v, %bb.d ]
  ret i1 %.sroa.0.0.in

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.k, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRcNtB6_7Display3fmtCsc9EtMejYXE5_6winnow, ptr %.sroa.416.0..sroa_idx, align 8
  %i.aa = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !8, !align !14, !noundef !8
  %i.ad = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac, ptr noundef nonnull @3, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.h

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  switch i32 %i.l, label %bb.r [
    i32 0, label %bb.k
    i32 9, label %bb.l
    i32 13, label %bb.m
    i32 10, label %bb.n
    i32 92, label %bb.o
    i32 34, label %bb.p
    i32 39, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  store i8 92, ptr %i.i, align 4, !alias.scope !17
  %.sroa.044.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 48, ptr %.sroa.044.sroa.4.0..sroa_idx.i, align 1, !alias.scope !17
  %.sroa.044.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i64 0, ptr %.sroa.044.sroa.5.0..sroa_idx.i, align 2, !alias.scope !17
  br label %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc16escape_debug_ext.exit

bb.l:                                             ; preds = %bb.j
  store i8 92, ptr %i.i, align 4, !alias.scope !17
  %.sroa.033.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 116, ptr %.sroa.033.sroa.4.0..sroa_idx.i, align 1, !alias.scope !17
  %.sroa.033.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i64 0, ptr %.sroa.033.sroa.5.0..sroa_idx.i, align 2, !alias.scope !17
  br label %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc16escape_debug_ext.exit

bb.m:                                             ; preds = %bb.j
  store i8 92, ptr %i.i, align 4, !alias.scope !17
  %.sroa.022.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 114, ptr %.sroa.022.sroa.4.0..sroa_idx.i, align 1, !alias.scope !17
  %.sroa.022.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i64 0, ptr %.sroa.022.sroa.5.0..sroa_idx.i, align 2, !alias.scope !17
  br label %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc16escape_debug_ext.exit

bb.n:                                             ; preds = %bb.j
  store i8 92, ptr %i.i, align 4, !alias.scope !17
  %.sroa.011.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 110, ptr %.sroa.011.sroa.4.0..sroa_idx.i, align 1, !alias.scope !17
  %.sroa.011.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i64 0, ptr %.sroa.011.sroa.5.0..sroa_idx.i, align 2, !alias.scope !17
  br label %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc16escape_debug_ext.exit

bb.o:                                             ; preds = %bb.j
  store i8 92, ptr %i.i, align 4, !alias.scope !17
  %.sroa.02.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 92, ptr %.sroa.02.sroa.4.0..sroa_idx.i, align 1, !alias.scope !17
  %.sroa.02.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i64 0, ptr %.sroa.02.sroa.5.0..sroa_idx.i, align 2, !alias.scope !17
  br label %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc16escape_debug_ext.exit

bb.p:                                             ; preds = %bb.j
  store i8 92, ptr %i.i, align 4, !alias.scope !17
  %.sroa.055.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 34, ptr %.sroa.055.sroa.4.0..sroa_idx.i, align 1, !alias.scope !17
  %.sroa.055.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i64 0, ptr %.sroa.055.sroa.5.0..sroa_idx.i, align 2, !alias.scope !17
  br label %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc16escape_debug_ext.exit

bb.q:                                             ; preds = %bb.j
  store i8 92, ptr %i.i, align 4, !alias.scope !17
  %.sroa.066.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 39, ptr %.sroa.066.sroa.4.0..sroa_idx.i, align 1, !alias.scope !17
  %.sroa.066.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 2
end_hunk_0
