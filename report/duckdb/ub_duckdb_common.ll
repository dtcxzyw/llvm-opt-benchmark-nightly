begin_hunk_0
inline.NumInlined: 29987
inline.NumDeleted: 10454
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1_@_ZN6duckdb14CompressedFile8ReadDataEPvl:bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.z, i64 %i.ac, i1 false)
  %i.am = load ptr, ptr %i.j, align 8, !tbaa !31  ; 2 uses
  store ptr %i.am, ptr %i.f, align 8, !tbaa !1178
  %i.an = load ptr, ptr %i.l, align 8, !tbaa !885 ; 3 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %bb.g, label %_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEptEv.exit, !prof !76

end_hunk_1
begin_hunk_2_@_ZN6duckdb14CompressedFile8ReadDataEPvl:bb.a
  %i.au = getelementptr inbounds i8, ptr %i.am, i64 %i.ac
  %i.av = load i64, ptr %i.k, align 8, !tbaa !1173
  %i.aw = sub i64 %i.av, %i.ac
  %9 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %10 = load ptr, ptr %9, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 40
  %13 = load ptr, ptr %12, align 8
  %i.ax = tail call noundef i64 %13(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(80) %i.an, ptr noundef %i.au, i64 noundef %i.aw) ; 2 uses
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !1178 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.ac
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ax ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdb14CompressedFile8ReadDataEPvl:bb.a
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !31  ; 3 uses
  store ptr %i.bg, ptr %i.f, align 8, !tbaa !1178
  store ptr %i.bg, ptr %i.e, align 8, !tbaa !1179
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !885 ; 3 uses
  %.not.i36 = icmp eq ptr %i.bh, null
  br i1 %.not.i36, label %bb.n, label %_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEptEv.exit43, !prof !76

end_hunk_3
begin_hunk_4_@_ZN6duckdb14CompressedFile8ReadDataEPvl:bb.a

_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEptEv.exit43: ; preds = %bb.m
  %i.bo = load i64, ptr %i.k, align 8, !tbaa !1173
  %14 = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %15 = load ptr, ptr %14, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 40
  %18 = load ptr, ptr %17, align 8
  %i.bp = tail call noundef i64 %18(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(80) %i.bh, ptr noundef %i.bg, i64 noundef %i.bo) ; 2 uses
  %i.bq = icmp slt i64 %i.bp, 1
  br i1 %i.bq, label %bb.s, label %_ZN6duckdb10unique_ptrINS_13StreamWrapperESt14default_deleteIS1_ELb1EE5resetEPS1_.exit46

end_hunk_4
begin_hunk_5_@_ZN6duckdb14CompressedFile8ReadDataEPvl:bb.a
  br label %_ZN6duckdb10unique_ptrINS_13StreamWrapperESt14default_deleteIS1_ELb1EE5resetEPS1_.exit56.backedge

_ZN6duckdb10unique_ptrINS_13StreamWrapperESt14default_deleteIS1_ELb1EE5resetEPS1_.exit56.backedge: ; preds = %_ZNKSt14default_deleteIN6duckdb13StreamWrapperEEclEPS1_.exit.i.i.i55, %bb.z, %_ZNK6duckdb10unique_ptrINS_13StreamWrapperESt14default_deleteIS1_ELb1EEptEv.exit
  br label %_ZN6duckdb10unique_ptrINS_13StreamWrapperESt14default_deleteIS1_ELb1EE5resetEPS1_.exit56, !llvm.loop !1187

.thread.sink.split:                               ; preds = %bb.s, %bb.l
  %.sink95 = phi ptr [ %i.bc, %bb.l ], [ %i.br, %bb.s ] ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN6duckdb10FileHandle4ReadENS_12QueryContextEPvm:bb.a

_ZN6duckdb12optional_ptrINS_13ClientContextELb1EEptEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1188 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZNK6duckdb10unique_ptrINS_10ClientDataESt14default_deleteIS1_ELb1EEptEv.exit, !prof !76

end_hunk_6
begin_hunk_7_@_ZN6duckdb10FileHandle4ReadENS_12QueryContextEPvm:bb.a
  unreachable

_ZNK6duckdb10unique_ptrINS_10ClientDataESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %_ZN6duckdb12optional_ptrINS_13ClientContextELb1EEptEv.exit
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !1190 ; 2 uses
  %.not.i10 = icmp eq ptr %i.i, null
  br i1 %.not.i10, label %bb.g, label %_ZNK6duckdb10shared_ptrINS_13QueryProfilerELb1EEptEv.exit, !prof !76

end_hunk_7
begin_hunk_8_@_ZN6duckdb10FileHandle4ReadENS_12QueryContextEPvm:bb.a

bb.l:                                             ; preds = %_ZNK6duckdb10shared_ptrINS_13QueryProfilerELb1EEptEv.exit, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8
end_hunk_8
begin_hunk_9_@_ZN6duckdb20CompressedFileSystem5ResetERNS_10FileHandleE:bb.a

_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 304
  %i.m = load ptr, ptr %i.l, align 8
end_hunk_9
begin_hunk_10_@_ZN6duckdb10FileHandle5ResetEv
define void @_ZN6duckdb10FileHandle5ResetEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_10
begin_hunk_11_@_ZN6duckdb20CompressedFileSystem11GetFileSizeERNS_10FileHandleE:bb.a

_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
end_hunk_11
begin_hunk_12_@_ZN6duckdb10FileHandle11GetFileSizeEv
define noundef i64 @_ZN6duckdb10FileHandle11GetFileSizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_12
begin_hunk_13_@_ZN6duckdb20CompressedFileSystem10OnDiskFileERNS_10FileHandleE:bb.a

_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 336
  %i.m = load ptr, ptr %i.l, align 8
end_hunk_13
begin_hunk_14_@_ZN6duckdb10FileHandle10OnDiskFileEv
define noundef zeroext i1 @_ZN6duckdb10FileHandle10OnDiskFileEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_14
begin_hunk_15_@_ZN6duckdb10FileHandle4ReadENS_12QueryContextEPvmm:bb.a

_ZN6duckdb12optional_ptrINS_13ClientContextELb1EEptEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1188 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZNK6duckdb10unique_ptrINS_10ClientDataESt14default_deleteIS1_ELb1EEptEv.exit, !prof !76

end_hunk_15
begin_hunk_16_@_ZN6duckdb10FileHandle4ReadENS_12QueryContextEPvmm:bb.a
  unreachable

_ZNK6duckdb10unique_ptrINS_10ClientDataESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %_ZN6duckdb12optional_ptrINS_13ClientContextELb1EEptEv.exit
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !1190 ; 2 uses
  %.not.i11 = icmp eq ptr %i.i, null
  br i1 %.not.i11, label %bb.g, label %_ZNK6duckdb10shared_ptrINS_13QueryProfilerELb1EEptEv.exit, !prof !76

end_hunk_16
begin_hunk_17_@_ZN6duckdb10FileHandle4ReadENS_12QueryContextEPvmm:bb.a

bb.l:                                             ; preds = %_ZNK6duckdb10shared_ptrINS_13QueryProfilerELb1EEptEv.exit, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
end_hunk_17
begin_hunk_18_@_ZN6duckdb10FileHandle5WriteENS_12QueryContextEPvmm:bb.a

_ZN6duckdb12optional_ptrINS_13ClientContextELb1EEptEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1188 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZNK6duckdb10unique_ptrINS_10ClientDataESt14default_deleteIS1_ELb1EEptEv.exit, !prof !76

end_hunk_18
begin_hunk_19_@_ZN6duckdb10FileHandle5WriteENS_12QueryContextEPvmm:bb.a
  unreachable

_ZNK6duckdb10unique_ptrINS_10ClientDataESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %_ZN6duckdb12optional_ptrINS_13ClientContextELb1EEptEv.exit
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !1190 ; 2 uses
  %.not.i11 = icmp eq ptr %i.i, null
  br i1 %.not.i11, label %bb.g, label %_ZNK6duckdb10shared_ptrINS_13QueryProfilerELb1EEptEv.exit, !prof !76

end_hunk_19
begin_hunk_20_@_ZN6duckdb10FileHandle5WriteENS_12QueryContextEPvmm:bb.a

bb.l:                                             ; preds = %_ZNK6duckdb10shared_ptrINS_13QueryProfilerELb1EEptEv.exit, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
end_hunk_20
begin_hunk_21_@_ZN6duckdb10FileSystem5ResetERNS_10FileHandleE
define void @_ZN6duckdb10FileSystem5ResetERNS_10FileHandleE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_21
begin_hunk_22_@_ZN6duckdb10FileHandle4SeekEm
define void @_ZN6duckdb10FileHandle4SeekEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_22
begin_hunk_23_@_ZN6duckdb10FileHandle4ReadEPvm
define noundef i64 @_ZN6duckdb10FileHandle4ReadEPvm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_23
begin_hunk_24_@_ZN6duckdb10FileHandle4TrimEmm
define noundef zeroext i1 @_ZN6duckdb10FileHandle4TrimEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_24
begin_hunk_25_@_ZN6duckdb10FileHandle5WriteEPvm
define noundef i64 @_ZN6duckdb10FileHandle5WriteEPvm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_25
begin_hunk_26_@_ZN6duckdb10FileHandle5WriteENS_12QueryContextEPvm:bb.a

_ZN6duckdb12optional_ptrINS_13ClientContextELb1EEptEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1188 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %_ZNK6duckdb10unique_ptrINS_10ClientDataESt14default_deleteIS1_ELb1EEptEv.exit, !prof !76

end_hunk_26
begin_hunk_27_@_ZN6duckdb10FileHandle5WriteENS_12QueryContextEPvm:bb.a
  unreachable

_ZNK6duckdb10unique_ptrINS_10ClientDataESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %_ZN6duckdb12optional_ptrINS_13ClientContextELb1EEptEv.exit
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !1190 ; 2 uses
  %.not.i10 = icmp eq ptr %i.i, null
  br i1 %.not.i10, label %bb.g, label %_ZNK6duckdb10shared_ptrINS_13QueryProfilerELb1EEptEv.exit, !prof !76

end_hunk_27
begin_hunk_28_@_ZN6duckdb10FileHandle5WriteENS_12QueryContextEPvm:bb.a

bb.l:                                             ; preds = %_ZNK6duckdb10shared_ptrINS_13QueryProfilerELb1EEptEv.exit, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
end_hunk_28
begin_hunk_29_@_ZN6duckdb10FileHandle4ReadEPvmm
define void @_ZN6duckdb10FileHandle4ReadEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_29
begin_hunk_30_@_ZN6duckdb10FileHandle12SeekPositionEv
define noundef i64 @_ZN6duckdb10FileHandle12SeekPositionEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_30
begin_hunk_31_@_ZN6duckdb10FileHandle7CanSeekEv
define noundef zeroext i1 @_ZN6duckdb10FileHandle7CanSeekEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_31
begin_hunk_32_@_ZN6duckdb10FileHandle6IsPipeEv
define noundef zeroext i1 @_ZN6duckdb10FileHandle6IsPipeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
end_hunk_32
begin_hunk_33_@_ZN6duckdb10FileHandle8ReadLineB5cxx11Ev:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
end_hunk_33
begin_hunk_34_@_ZN6duckdb10FileHandle4SyncEv
define void @_ZN6duckdb10FileHandle4SyncEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_34
begin_hunk_35_@_ZN6duckdb10FileHandle8TruncateEl
define void @_ZN6duckdb10FileHandle8TruncateEl(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_35
begin_hunk_36_@_ZN6duckdb10FileHandle7GetTypeEv
define noundef i32 @_ZN6duckdb10FileHandle7GetTypeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_36
begin_hunk_37_@_ZN6duckdb10FileHandle5StatsEv
define void @_ZN6duckdb10FileHandle5StatsEv(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::FileMetadata") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_37
begin_hunk_38_@_ZN6duckdb18MiniZStreamWrapper5CloseEv:bb.a

_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
end_hunk_38
begin_hunk_39_@_ZN6duckdb18MiniZStreamWrapper10InitializeENS_12QueryContextERNS_14CompressedFileEb:bb.a

_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEptEv.exit60: ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !34
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 296
  %i.bh = load ptr, ptr %i.bg, align 8
end_hunk_39
begin_hunk_40_@_ZN6duckdb18MiniZStreamWrapper10InitializeENS_12QueryContextERNS_14CompressedFileEb:bb.a

_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEptEv.exit76: ; preds = %bb.ah
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !34
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 296
  %i.ch = load ptr, ptr %i.cg, align 8
end_hunk_40
begin_hunk_41_@_ZN6duckdb18MiniZStreamWrapper10InitializeENS_12QueryContextERNS_14CompressedFileEb:bb.a

_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEptEv.exit91: ; preds = %bb.av
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !34
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 296
  %i.dg = load ptr, ptr %i.df, align 8
end_hunk_41
begin_hunk_42_@_ZN6duckdb18MiniZStreamWrapper5WriteERNS_14CompressedFileERNS_10StreamDataEPhl:bb.a
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !34
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8
end_hunk_42
begin_hunk_43_@_ZNK6duckdb18MiniZStreamWrapper11FlushStreamEv:bb.a
  %i.bm = ptrtoint ptr %i.ba to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !34
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8
end_hunk_43
begin_hunk_44_@_ZN6duckdb14PipeFileSystem19GetLastModifiedTimeERNS_10FileHandleE:bb.a

_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEdeEv.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8
end_hunk_44
begin_hunk_45_@_ZN6duckdb17VirtualFileSystem16OpenFileExtendedERKNS_12OpenFileInfoENS_13FileOpenFlagsENS_12optional_ptrINS_10FileOpenerELb1EEE:bb.a
_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %bb.az, %bb.ba
  %.sroa.0197.0 = phi ptr [ %i.fp, %bb.ba ], [ null, %bb.az ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0198.0, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !34
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 88
  %i.fu = load ptr, ptr %i.ft, align 8
end_hunk_45
begin_hunk_46_@_ZN6duckdb17VirtualFileSystem4ReadERNS_10FileHandleEPvlm
define void @_ZN6duckdb17VirtualFileSystem4ReadERNS_10FileHandleEPvlm(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_46
begin_hunk_47_@_ZN6duckdb17VirtualFileSystem5WriteERNS_10FileHandleEPvlm
define void @_ZN6duckdb17VirtualFileSystem5WriteERNS_10FileHandleEPvlm(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_47
begin_hunk_48_@_ZN6duckdb17VirtualFileSystem4ReadERNS_10FileHandleEPvl
define noundef i64 @_ZN6duckdb17VirtualFileSystem4ReadERNS_10FileHandleEPvl(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_48
begin_hunk_49_@_ZN6duckdb17VirtualFileSystem5WriteERNS_10FileHandleEPvl
define noundef i64 @_ZN6duckdb17VirtualFileSystem5WriteERNS_10FileHandleEPvl(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_49
begin_hunk_50_@_ZN6duckdb17VirtualFileSystem11GetFileSizeERNS_10FileHandleE
define noundef i64 @_ZN6duckdb17VirtualFileSystem11GetFileSizeERNS_10FileHandleE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_50
begin_hunk_51_@_ZN6duckdb17VirtualFileSystem19GetLastModifiedTimeERNS_10FileHandleE
define i64 @_ZN6duckdb17VirtualFileSystem19GetLastModifiedTimeERNS_10FileHandleE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_51
begin_hunk_52_@_ZN6duckdb17VirtualFileSystem13GetVersionTagB5cxx11ERNS_10FileHandleE
define void @_ZN6duckdb17VirtualFileSystem13GetVersionTagB5cxx11ERNS_10FileHandleE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_52
begin_hunk_53_@_ZN6duckdb17VirtualFileSystem11GetFileTypeERNS_10FileHandleE
define noundef i32 @_ZN6duckdb17VirtualFileSystem11GetFileTypeERNS_10FileHandleE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_53
begin_hunk_54_@_ZN6duckdb17VirtualFileSystem5StatsERNS_10FileHandleE
define void @_ZN6duckdb17VirtualFileSystem5StatsERNS_10FileHandleE(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::FileMetadata") align 8 %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_54
begin_hunk_55_@_ZN6duckdb17VirtualFileSystem8TruncateERNS_10FileHandleEl
define void @_ZN6duckdb17VirtualFileSystem8TruncateERNS_10FileHandleEl(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_55
begin_hunk_56_@_ZN6duckdb17VirtualFileSystem8FileSyncERNS_10FileHandleE
define void @_ZN6duckdb17VirtualFileSystem8FileSyncERNS_10FileHandleE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1186, !nonnull !118, !align !227 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_56
begin_hunk_57_@llvm.ctpop.v2i64
!1183 = !{!1135, !13, i64 128}
!1184 = !{!1135, !13, i64 136}
!1185 = !{!1135, !14, i64 176}
!1186 = !{!1136, !1131, i64 8}
!1187 = distinct !{!1187, !59}
!1188 = !{!1189, !1189, i64 0}
!1189 = !{!"p1 _ZTSN6duckdb10ClientDataE", !10, i64 0}
!1190 = !{!1191, !1192, i64 0}
!1191 = !{!"_ZTSSt12__shared_ptrIN6duckdb13QueryProfilerELN9__gnu_cxx12_Lock_policyE2EE", !1192, i64 0, !72, i64 8}
!1192 = !{!"p1 _ZTSN6duckdb13QueryProfilerE", !10, i64 0}
!1193 = !{!1194}
!1194 = distinct !{!1194, !1195, !"_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!1195 = distinct !{!1195, !"_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
end_hunk_57
