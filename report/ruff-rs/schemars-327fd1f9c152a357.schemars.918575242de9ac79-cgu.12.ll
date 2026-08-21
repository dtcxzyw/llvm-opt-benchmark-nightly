inline.NumInlined: 146
inline.NumDeleted: 110
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvYNtNtNtCscvBHLZPbXnS_10serde_json5value3ser10SerializerNtNtCs6nZeqdiIoCH_10serde_core3ser10Serializer11collect_seqRINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCscuBBDlOF0VN_8schemars6schema6SchemaEEB2t_:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryNtNtCscdodAO9FK5_5alloc6string6StringNtB7_5ValueECscuBBDlOF0VN_8schemars(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !11
  %i.c = tail call fastcc noundef align 8 ptr @_RINvXs4_NtNtCscvBHLZPbXnS_10serde_json5value3serNtB6_12SerializeMapNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyNtNtCscdodAO9FK5_5alloc6string6StringECscuBBDlOF0VN_8schemars(ptr noalias noundef align 8 dereferenceable(48) %0, ptr nonnull %.val, i64 %.val3) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc noundef align 8 ptr @_RINvXs4_NtNtCscvBHLZPbXnS_10serde_json5value3serNtB6_12SerializeMapNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueNtB8_5ValueECscuBBDlOF0VN_8schemars(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.c, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCscuBBDlOF0VN_8schemars6schema3ser21OrderedKeywordWrapperEB2H_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !11
  %i.c = tail call fastcc noundef align 8 ptr @_RINvXs4_NtNtCscvBHLZPbXnS_10serde_json5value3serNtB6_12SerializeMapNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyNtNtCscdodAO9FK5_5alloc6string6StringECscuBBDlOF0VN_8schemars(ptr noalias noundef align 8 dereferenceable(48) %0, ptr nonnull %.val, i64 %.val3) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc noundef align 8 ptr @_RINvXs4_NtNtCscvBHLZPbXnS_10serde_json5value3serNtB6_12SerializeMapNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueNtNtNtCscuBBDlOF0VN_8schemars6schema3ser21OrderedKeywordWrapperEB2c_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.c, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeNtB7_5ValueECscuBBDlOF0VN_8schemars(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef align 8 ptr @_RINvXs4_NtNtCscvBHLZPbXnS_10serde_json5value3serNtB6_12SerializeMapNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECscuBBDlOF0VN_8schemars(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef align 8 ptr @_RINvXs4_NtNtCscvBHLZPbXnS_10serde_json5value3serNtB6_12SerializeMapNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueNtB8_5ValueECscuBBDlOF0VN_8schemars(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYNtNtNtCscvBHLZPbXnS_10serde_json5value3ser12SerializeMapNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_entryeNtNtNtCscuBBDlOF0VN_8schemars6schema3ser21OrderedKeywordWrapperEB27_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef align 8 ptr @_RINvXs4_NtNtCscvBHLZPbXnS_10serde_json5value3serNtB6_12SerializeMapNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap13serialize_keyeECscuBBDlOF0VN_8schemars(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef align 8 ptr @_RINvXs4_NtNtCscvBHLZPbXnS_10serde_json5value3serNtB6_12SerializeMapNtNtCs6nZeqdiIoCH_10serde_core3ser12SerializeMap15serialize_valueNtNtNtCscuBBDlOF0VN_8schemars6schema3ser21OrderedKeywordWrapperEB2c_(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.b, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCscuBBDlOF0VN_8schemars(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCscuBBDlOF0VN_8schemars(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #4 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.b, i64 range(i64 0, -9223372036854775808) %3)
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc25get_title_and_description(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.not14.i = icmp eq i64 %2, 0
  br i1 %.not14.i, label %.split, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %scevgep.i = getelementptr i8, ptr %1, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.sroa.0.016.i = phi ptr [ %i.g, %bb.b ], [ %1, %.lr.ph.preheader.i ] ; 13 uses
  %.sroa.10.015.i = phi i64 [ %i.f, %bb.b ], [ %2, %.lr.ph.preheader.i ] ; 2 uses
  %i.e = load i8, ptr %.sroa.0.016.i, align 1, !alias.scope !307, !noundef !11 ; 2 uses
  switch i8 %i.e, label %.lr.ph23.i [
    i8 9, label %bb.b
    i8 10, label %bb.b
    i8 12, label %bb.b
    i8 13, label %bb.b
    i8 32, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.f = add nsw i64 %.sroa.10.015.i, -1          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 1
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.split, label %.lr.ph.i

.lr.ph23.i:                                       ; preds = %.lr.ph.i, %bb.c
  %.sroa.10.122.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.10.015.i, %.lr.ph.i ] ; 11 uses
  %i.h = add nsw i64 %.sroa.10.122.i, -1          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !alias.scope !307, !noundef !11
  switch i8 %i.j, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit [
    i8 9, label %bb.c
    i8 10, label %bb.c
    i8 12, label %bb.c
    i8 13, label %bb.c
    i8 32, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph23.i, %.lr.ph23.i, %.lr.ph23.i, %.lr.ph23.i, %.lr.ph23.i
  %.not13.i = icmp eq i64 %i.h, 0
  br i1 %.not13.i, label %.split, label %.lr.ph23.i

.split:                                           ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.0.0.lcssa32.i58 = phi ptr [ %.sroa.0.016.i, %bb.c ], [ %1, %bb.a ], [ %scevgep.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !310
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.lcssa32.i58, i64 noundef 0)
  %i.k = load i64, ptr %i.d, align 8, !range !24, !noalias !310, !noundef !11
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.d, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit, !prof !26

bb.d:                                             ; preds = %.split
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 27 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
  unreachable

_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit: ; preds = %.split
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !310, !nonnull !11, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !310, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !310
  br label %bb.p

_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit: ; preds = %.lr.ph23.i
  %i.q = icmp eq i8 %i.e, 35
  br i1 %i.q, label %.preheader, label %.split14

.split14:                                         ; preds = %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !313
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.016.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.10.122.i)
  %i.r = load i64, ptr %i.c, align 8, !range !24, !noalias !313, !noundef !11
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.e, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit15, !prof !26

bb.e:                                             ; preds = %.split14
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 27 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
  unreachable

_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit15: ; preds = %.split14
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !313, !nonnull !11, !noundef !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noalias !313, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !313
  br label %bb.p

bb.f:                                             ; preds = %bb.h, %.preheader
  %.sroa.01.0 = phi i64 [ %.sroa.10.122.i, %bb.h ], [ %.sroa.010.081, %.preheader ] ; 5 uses
  %i.x = sub i64 %.sroa.10.122.i, %.sroa.01.0     ; 2 uses
  %.not.i16 = icmp eq i64 %i.x, 0
  br i1 %.not.i16, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit, label %.preheader23.i

.preheader23.i:                                   ; preds = %bb.f, %bb.g
  %.sroa.014.0.i = phi i64 [ %i.z, %bb.g ], [ %i.x, %bb.f ]
  %.sroa.9.1.i = phi i64 [ %i.y, %bb.g ], [ %.sroa.10.122.i, %bb.f ] ; 2 uses
  %.not20.i = icmp eq i64 %.sroa.9.1.i, 0
  br i1 %.not20.i, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30, label %bb.g

bb.g:                                             ; preds = %.preheader23.i
  %i.y = add nsw i64 %.sroa.9.1.i, -1             ; 2 uses
  %i.z = add i64 %.sroa.014.0.i, -1               ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit, label %.preheader23.i

_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit: ; preds = %bb.g, %bb.f
  %.sroa.9.0.i = phi i64 [ %.sroa.10.122.i, %bb.f ], [ %i.y, %bb.g ] ; 3 uses
  %.not82 = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %.not82, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit
  %scevgep = getelementptr i8, ptr %.sroa.0.016.i, i64 %.sroa.9.0.i
  br label %.lr.ph

.preheader:                                       ; preds = %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit, %bb.h
  %.sroa.010.081 = phi i64 [ %i.ae, %bb.h ], [ 0, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i, i64 %.sroa.010.081
  %i.ac = load i8, ptr %i.ab, align 1, !noundef !11
  %i.ad = icmp eq i8 %i.ac, 10
  br i1 %i.ad, label %bb.f, label %bb.h

bb.h:                                             ; preds = %.preheader
  %i.ae = add nuw i64 %.sroa.010.081, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.ae, %.sroa.10.122.i
  br i1 %exitcond.not, label %bb.f, label %.preheader

.lr.ph.preheader.i18:                             ; preds = %.lr.ph
  %scevgep.i19 = getelementptr i8, ptr %.sroa.03.084, i64 %.sroa.6.083
  br label %.lr.ph.i20

.lr.ph.i20thread-pre-split:                       ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i21, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.af, align 1, !alias.scope !316
  br label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %.lr.ph.i20thread-pre-split, %.lr.ph.preheader.i18
  %i.ag = phi i8 [ %.pr, %.lr.ph.i20thread-pre-split ], [ %i.bf, %.lr.ph.preheader.i18 ]
  %.sroa.0.016.i21 = phi ptr [ %i.af, %.lr.ph.i20thread-pre-split ], [ %.sroa.03.084, %.lr.ph.preheader.i18 ] ; 4 uses
  %.sroa.10.015.i22 = phi i64 [ %i.ah, %.lr.ph.i20thread-pre-split ], [ %.sroa.6.083, %.lr.ph.preheader.i18 ] ; 2 uses
  switch i8 %i.ag, label %.lr.ph23.i27 [
    i8 9, label %bb.i
    i8 10, label %bb.i
    i8 12, label %bb.i
    i8 13, label %bb.i
    i8 32, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph.i20, %.lr.ph.i20, %.lr.ph.i20, %.lr.ph.i20, %.lr.ph.i20
  %i.ah = add nsw i64 %.sroa.10.015.i22, -1       ; 2 uses
  %.not.i23 = icmp eq i64 %i.ah, 0
  br i1 %.not.i23, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30, label %.lr.ph.i20thread-pre-split

.lr.ph23.i27:                                     ; preds = %.lr.ph.i20, %bb.j
  %.sroa.10.122.i28 = phi i64 [ %i.ai, %bb.j ], [ %.sroa.10.015.i22, %.lr.ph.i20 ] ; 2 uses
  %i.ai = add nsw i64 %.sroa.10.122.i28, -1       ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i21, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !316, !noundef !11
  switch i8 %i.ak, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30 [
    i8 9, label %bb.j
    i8 10, label %bb.j
    i8 12, label %bb.j
    i8 13, label %bb.j
    i8 32, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph23.i27, %.lr.ph23.i27, %.lr.ph23.i27, %.lr.ph23.i27, %.lr.ph23.i27
  %.not13.i29 = icmp eq i64 %i.ai, 0
  br i1 %.not13.i29, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30, label %.lr.ph23.i27

_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30: ; preds = %.preheader23.i, %bb.o, %bb.i, %.lr.ph23.i27, %bb.j, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit
  %.sroa.0.0.lcssa32.i24 = phi ptr [ %scevgep, %bb.o ], [ %.sroa.0.016.i, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit ], [ %.sroa.0.016.i21, %.lr.ph23.i27 ], [ %scevgep.i19, %bb.i ], [ %.sroa.0.016.i21, %bb.j ], [ %.sroa.0.016.i, %.preheader23.i ]
  %.sroa.10.1.lcssa.i25 = phi i64 [ 0, %bb.o ], [ 0, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit ], [ %.sroa.10.122.i28, %.lr.ph23.i27 ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %.preheader23.i ]
  %.not21.i = icmp eq i64 %.sroa.01.0, 0
  br i1 %.not21.i, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit39, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30
  %i.al = add i64 %.sroa.01.0, -1
  %.not125 = icmp ugt i64 %.sroa.10.122.i, %i.al
  br i1 %.not125, label %.preheader.preheader.i.split, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53.loopexit86

.preheader.preheader.i.split:                     ; preds = %.preheader.preheader.i
  %scevgep111 = getelementptr i8, ptr %.sroa.0.016.i, i64 %.sroa.01.0
  %i.am = sub i64 %.sroa.10.122.i, %.sroa.01.0
  br label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit39

_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit39: ; preds = %.preheader.preheader.i.split, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30
  %.sroa.9.2.i = phi i64 [ %.sroa.10.122.i, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30 ], [ %i.am, %.preheader.preheader.i.split ] ; 3 uses
  %.sroa.0.2.i = phi ptr [ %.sroa.0.016.i, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30 ], [ %scevgep111, %.preheader.preheader.i.split ] ; 3 uses
  %.not14.i40 = icmp eq i64 %.sroa.9.2.i, 0
  br i1 %.not14.i40, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53, label %.lr.ph.preheader.i41

.lr.ph.preheader.i41:                             ; preds = %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit39
  %scevgep.i42 = getelementptr i8, ptr %.sroa.0.2.i, i64 %.sroa.9.2.i
  br label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %bb.k, %.lr.ph.preheader.i41
  %.sroa.0.016.i44 = phi ptr [ %i.ap, %bb.k ], [ %.sroa.0.2.i, %.lr.ph.preheader.i41 ] ; 5 uses
  %.sroa.10.015.i45 = phi i64 [ %i.ao, %bb.k ], [ %.sroa.9.2.i, %.lr.ph.preheader.i41 ] ; 2 uses
  %i.an = load i8, ptr %.sroa.0.016.i44, align 1, !alias.scope !319, !noundef !11
  switch i8 %i.an, label %.lr.ph23.i50 [
    i8 9, label %bb.k
    i8 10, label %bb.k
    i8 12, label %bb.k
    i8 13, label %bb.k
    i8 32, label %bb.k
  ]

bb.k:                                             ; preds = %.lr.ph.i43, %.lr.ph.i43, %.lr.ph.i43, %.lr.ph.i43, %.lr.ph.i43
  %i.ao = add nsw i64 %.sroa.10.015.i45, -1       ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i44, i64 1
  %.not.i46 = icmp eq i64 %i.ao, 0
  br i1 %.not.i46, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53, label %.lr.ph.i43

.lr.ph23.i50:                                     ; preds = %.lr.ph.i43, %bb.l
  %.sroa.10.122.i51 = phi i64 [ %i.aq, %bb.l ], [ %.sroa.10.015.i45, %.lr.ph.i43 ] ; 2 uses
  %i.aq = add nsw i64 %.sroa.10.122.i51, -1       ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i44, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !319, !noundef !11
  switch i8 %i.as, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53 [
    i8 9, label %bb.l
    i8 10, label %bb.l
    i8 12, label %bb.l
    i8 13, label %bb.l
    i8 32, label %bb.l
  ]

bb.l:                                             ; preds = %.lr.ph23.i50, %.lr.ph23.i50, %.lr.ph23.i50, %.lr.ph23.i50, %.lr.ph23.i50
  %.not13.i52 = icmp eq i64 %i.aq, 0
  br i1 %.not13.i52, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53, label %.lr.ph23.i50

_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53.loopexit86: ; preds = %.preheader.preheader.i
  %scevgep.i37 = getelementptr i8, ptr %.sroa.0.016.i, i64 %.sroa.10.122.i
  br label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53

_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53: ; preds = %bb.k, %.lr.ph23.i50, %bb.l, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53.loopexit86, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit39
  %.sroa.0.0.lcssa32.i47 = phi ptr [ %scevgep.i37, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53.loopexit86 ], [ %.sroa.0.016.i44, %.lr.ph23.i50 ], [ %.sroa.0.2.i, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit39 ], [ %.sroa.0.016.i44, %bb.l ], [ %scevgep.i42, %bb.k ]
  %.sroa.10.1.lcssa.i48 = phi i64 [ 0, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53.loopexit86 ], [ %.sroa.10.122.i51, %.lr.ph23.i50 ], [ 0, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc8subslice.exit39 ], [ 0, %bb.l ], [ 0, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !322
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.lcssa32.i24, i64 noundef range(i64 0, -9223372036854775808) %.sroa.10.1.lcssa.i25)
  %i.at = load i64, ptr %i.b, align 8, !range !24, !noalias !322, !noundef !11
  %i.au = trunc nuw i64 %i.at to i1
  br i1 %i.au, label %bb.m, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit54, !prof !26

bb.m:                                             ; preds = %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 27 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
  unreachable

_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit54: ; preds = %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit53
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !322, !nonnull !11, !noundef !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !322, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !325
  call void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.lcssa32.i47, i64 noundef range(i64 0, -9223372036854775808) %.sroa.10.1.lcssa.i48)
  %i.az = load i64, ptr %i.a, align 8, !range !24, !noalias !325, !noundef !11
  %i.ba = trunc nuw i64 %i.az to i1
  br i1 %i.ba, label %bb.n, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit55, !prof !26

bb.n:                                             ; preds = %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit54
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 27 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
  unreachable

_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit55: ; preds = %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit54
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !325, !nonnull !11, !noundef !11
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !noalias !325, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !325
  br label %bb.p

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.sroa.03.084 = phi ptr [ %i.bi, %bb.o ], [ %.sroa.0.016.i, %.lr.ph.preheader ] ; 4 uses
  %.sroa.6.083 = phi i64 [ %i.bh, %bb.o ], [ %.sroa.9.0.i, %.lr.ph.preheader ] ; 3 uses
  %i.bf = load i8, ptr %.sroa.03.084, align 1, !noundef !11 ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 35
  br i1 %i.bg, label %bb.o, label %.lr.ph.preheader.i18

bb.o:                                             ; preds = %.lr.ph
  %i.bh = add i64 %.sroa.6.083, -1                ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.03.084, i64 1
  %.not = icmp eq i64 %i.bh, 0
  br i1 %.not, label %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc10trim_ascii.exit30, label %.lr.ph

bb.p:                                             ; preds = %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit15, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit55
  %.sink151 = phi ptr [ %i.aw, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit55 ], [ inttoptr (i64 1 to ptr), %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit15 ], [ inttoptr (i64 1 to ptr), %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit ]
  %.sink149 = phi i64 [ %i.ay, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit55 ], [ 0, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit15 ], [ 0, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit ]
  %.sink147 = phi ptr [ %i.bc, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit55 ], [ %i.u, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit15 ], [ %i.n, %_RNvNtNtCscuBBDlOF0VN_8schemars8__private7rustdoc7to_utf8.exit ]
end_hunk_0
