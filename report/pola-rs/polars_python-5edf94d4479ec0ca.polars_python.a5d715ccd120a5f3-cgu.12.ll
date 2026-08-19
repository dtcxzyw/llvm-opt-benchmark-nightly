inline.NumInlined: 17181
inline.NumDeleted: 6681
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write10write_char:bb.a
  %i.w = or disjoint i8 %i.v, -128, !dbg !239966
  %i.x = lshr i32 %1, 18, !dbg !239967
  %i.y = trunc nuw nsw i32 %i.x to i8, !dbg !239968
  %i.z = or disjoint i8 %i.y, -16, !dbg !239968
  br i1 %i.l, label %bb.g, label %bb.h, !dbg !239969

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i32 %1 to i8, !dbg !239970
  store i8 %i.aa, ptr %i.k, align 1, !dbg !239970
  br label %_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String4push.exit, !dbg !239971

bb.g:                                             ; preds = %bb.e
  %i.ab = or disjoint i8 %i.q, -64, !dbg !239972
  store i8 %i.ab, ptr %i.k, align 1, !dbg !239972
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !239973
  store i8 %i.o, ptr %i.ac, align 1, !dbg !239975
  br label %_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String4push.exit, !dbg !239976

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp samesign ult i32 %1, 65536, !dbg !239961
  br i1 %i.ad, label %bb.i, label %bb.j, !dbg !239977

bb.i:                                             ; preds = %bb.h
  %i.ae = or disjoint i8 %i.u, -32, !dbg !239978
  store i8 %i.ae, ptr %i.k, align 1, !dbg !239978
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !239979
  store i8 %i.s, ptr %i.af, align 1, !dbg !239981
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !239982
  store i8 %i.o, ptr %i.ag, align 1, !dbg !239984
  br label %_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String4push.exit, !dbg !239976

bb.j:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.k, align 1, !dbg !239985
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !239986
  store i8 %i.w, ptr %i.ah, align 1, !dbg !239988
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2, !dbg !239989
  store i8 %i.s, ptr %i.ai, align 1, !dbg !239991
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 3, !dbg !239992
  store i8 %i.o, ptr %i.aj, align 1, !dbg !239994
  br label %_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String4push.exit, !dbg !239995

_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.ak = add nuw i64 %.sroa.0.0.i, %i.b, !dbg !239996
  store i64 %i.ak, ptr %i.a, align 8, !dbg !239997, !alias.scope !239930
  ret i1 false, !dbg !239999
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core3fmt5Write9write_str(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 !dbg !240000 {
bb.a:
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !dbg !240001, !noalias !240010
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !240013 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !240013, !alias.scope !240015, !noalias !240010, !noundef !11 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1, !dbg !240019
  tail call void @llvm.assume(i1 %i.c), !dbg !240020
  %.not.i.i = icmp eq i64 %2, 0, !dbg !240021
  br i1 %.not.i.i, label %_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String8push_str.exit, label %bb.b, !dbg !240021

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !240022
  %i.e = load ptr, ptr %i.d, align 8, !dbg !240022, !alias.scope !240015, !noalias !240010, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b, !dbg !240027
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !dbg !240029
  %.pre.i.i = load i64, ptr %i.a, align 8, !dbg !240031, !alias.scope !240015, !noalias !240010
  br label %_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String8push_str.exit, !dbg !240032

_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ], !dbg !240031
  %i.h = add i64 %i.g, %2, !dbg !240031
  store i64 %i.h, ptr %i.a, align 8, !dbg !240031, !alias.scope !240015, !noalias !240010
  ret i1 false, !dbg !240033
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !dbg !240034 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !240036
  %i.b = load i32, ptr %i.a, align 8, !dbg !240036, !noundef !11 ; 2 uses
  %i.c = and i32 %i.b, 33554432, !dbg !240036
  %i.d = icmp eq i32 %i.c, 0, !dbg !240039
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !240039

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864, !dbg !240040
  %i.f = icmp eq i32 %i.e, 0, !dbg !240043
  br i1 %i.f, label %bb.d, label %bb.e, !dbg !240043

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !240044
  br label %bb.f, !dbg !240044

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !240045
  br label %bb.f, !dbg !240045

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !240046
  br label %bb.f, !dbg !240046

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in, !dbg !240047
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs_CsgoxMDlS32XZ_9inventoryNtNtCseeLknQCOKOd_13polars_python3sql35Pyo3MethodsInventoryForPySQLContextNtB4_10ErasedNode6submitBw_(ptr noalias readonly align 8 captures(none) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 !dbg !240048 {
bb.a:
  tail call void @_RNvMs0_CsgoxMDlS32XZ_9inventoryNtB5_8Registry6submit(ptr noundef nonnull align 8 @_RNvNvXs9_NtCseeLknQCOKOd_13polars_python3sqlNtB7_35Pyo3MethodsInventoryForPySQLContextNtCsgoxMDlS32XZ_9inventory7Collect8registry8REGISTRY, ptr noundef nonnull align 8 %1), !dbg !240050
  ret void, !dbg !240051
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_CsgoxMDlS32XZ_9inventoryNtNtCseeLknQCOKOd_13polars_python9dataframe34Pyo3MethodsInventoryForPyDataFrameNtB4_10ErasedNode6submitBw_(ptr noalias readonly align 8 captures(none) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 !dbg !240052 {
bb.a:
  tail call void @_RNvMs0_CsgoxMDlS32XZ_9inventoryNtB5_8Registry6submit(ptr noundef nonnull align 8 @_RNvNvXsd_NtCseeLknQCOKOd_13polars_python9dataframeNtB7_34Pyo3MethodsInventoryForPyDataFrameNtCsgoxMDlS32XZ_9inventory7Collect8registry8REGISTRY, ptr noundef nonnull align 8 %1), !dbg !240053
  ret void, !dbg !240054
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs_CsgoxMDlS32XZ_9inventoryNtNtNtCseeLknQCOKOd_13polars_python9lazyframe8exitable39Pyo3MethodsInventoryForPyInProcessQueryNtB4_10ErasedNode6submitBy_(ptr noalias readonly align 8 captures(none) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 !dbg !240055 {
bb.a:
  tail call void @_RNvMs0_CsgoxMDlS32XZ_9inventoryNtB5_8Registry6submit(ptr noundef nonnull align 8 @_RNvNvXsb_NtNtCseeLknQCOKOd_13polars_python9lazyframe8exitableNtB7_39Pyo3MethodsInventoryForPyInProcessQueryNtCsgoxMDlS32XZ_9inventory7Collect8registry8REGISTRY, ptr noundef nonnull align 8 %1), !dbg !240056
  ret void, !dbg !240057
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_RNvXs_NtCs2mZqlW55729_12polars_utils20chunked_bytes_cursorINtB4_27FixedSizeChunkedBytesCursorINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtCsh8eZTKRCwoO_3std2io4Read4readCseeLknQCOKOd_13polars_python(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !240058 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !240060
  %i.d = load i64, ptr %i.c, align 8, !dbg !240060, !noundef !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !240061 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !240061, !noundef !11 ; 6 uses
  %i.g = tail call i64 @llvm.usub.sat.i64(i64 %i.d, i64 %i.f), !dbg !240062
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %2), !dbg !240065 ; 7 uses
  %i.h = add i64 %.sroa.0.0.i, %i.f, !dbg !240068 ; 4 uses
  %.not = icmp ult i64 %i.f, %i.h, !dbg !240069
  br i1 %.not, label %bb.b, label %bb.k, !dbg !240076

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !240077
  %i.i = load i64, ptr %0, align 8, !dbg !240078, !range !240079, !noundef !11 ; 6 uses
  %i.j = udiv i64 %i.f, %i.i, !dbg !240080        ; 3 uses
  %i.k = urem i64 %i.f, %i.i, !dbg !240084        ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !240088
  %i.m = load i64, ptr %i.l, align 8, !dbg !240088, !noundef !11 ; 4 uses
  %i.n = icmp ult i64 %i.j, %i.m, !dbg !240088
  br i1 %i.n, label %bb.c, label %bb.d, !dbg !240088

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !240088
  %i.p = load ptr, ptr %i.o, align 8, !dbg !240088, !nonnull !11, !align !2013, !noundef !11 ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.j, !dbg !240088 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 16, !dbg !240090
  %.val87 = load i64, ptr %i.r, align 8, !dbg !240090, !noundef !11 ; 3 uses
  %i.s = sub i64 %.val87, %i.k, !dbg !240091      ; 2 uses
  %.sroa.0.0.i88 = tail call noundef i64 @llvm.umin.i64(i64 %i.s, i64 %.sroa.0.0.i), !dbg !240093 ; 7 uses
  %i.t = add i64 %.sroa.0.0.i88, %i.k, !dbg !240095 ; 3 uses
  %i.u = icmp ult i64 %i.t, %i.k, !dbg !240097
  %.not77 = icmp ugt i64 %i.t, %.val87
  %or.cond = or i1 %i.u, %.not77, !dbg !240097
  br i1 %or.cond, label %bb.e, label %bb.f, !dbg !240097, !prof !240104

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1477) #55, !dbg !240088
  unreachable, !dbg !240088

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.k, i64 noundef %i.t, i64 noundef %.val87, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1485) #55, !dbg !240105
  unreachable, !dbg !240105

bb.f:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.q, i64 8, !dbg !240090
  %.val86 = load ptr, ptr %i.v, align 8, !dbg !240090, !nonnull !11, !noundef !11
  %i.w = getelementptr inbounds nuw i8, ptr %.val86, i64 %i.k, !dbg !240106
  tail call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull %1, i64 noundef %.sroa.0.0.i88, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef %.sroa.0.0.i88, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1478), !dbg !240110
  store i64 %.sroa.0.0.i88, ptr %i.b, align 8, !dbg !240113
  %i.x = add i64 %.sroa.0.0.i88, %i.f, !dbg !240114 ; 2 uses
  %i.y = urem i64 %i.x, %i.i, !dbg !240116
  %i.z = udiv i64 %i.x, %i.i, !dbg !240119        ; 3 uses
  %i.aa = icmp eq i64 %i.y, 0, !dbg !240116
  %i.ab = icmp ule i64 %.sroa.0.0.i, %i.s
  %or.cond82 = or i1 %i.ab, %i.aa, !dbg !240114
  br i1 %or.cond82, label %bb.h, label %bb.g, !dbg !240114, !prof !170778

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1479, i64 noundef 161, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1480) #55, !dbg !240121
  unreachable, !dbg !240121

bb.h:                                             ; preds = %bb.f
  %i.ac = udiv i64 %i.h, %i.i, !dbg !240122
  %i.ad = urem i64 %i.h, %i.i, !dbg !240125
  %.not78 = icmp ne i64 %i.ad, 0, !dbg !240127
  %i.ae = zext i1 %.not78 to i64, !dbg !240127
  %.sroa.03.0 = add i64 %i.ac, %i.ae, !dbg !240127 ; 2 uses
  %i.af = icmp ult i64 %i.z, %.sroa.03.0, !dbg !240129
  br i1 %i.af, label %.lr.ph.preheader, label %._crit_edge, !dbg !240130

.lr.ph.preheader:                                 ; preds = %bb.h
  %umax = tail call i64 @llvm.umax.i64(i64 %i.m, i64 %i.z), !dbg !240137 ; 2 uses
  br label %.lr.ph, !dbg !240137

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.sroa.026.095 = phi i64 [ %i.ah, %bb.o ], [ %i.z, %.lr.ph.preheader ] ; 3 uses
  %i.ag = phi i64 [ %i.ao, %bb.o ], [ %.sroa.0.0.i88, %.lr.ph.preheader ] ; 5 uses
  %i.ah = add i64 %.sroa.026.095, 1, !dbg !240139 ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.026.095, %umax, !dbg !240137
  br i1 %exitcond.not, label %bb.m, label %bb.l, !dbg !240137

bb.i:                                             ; preds = %._crit_edge
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1481) #55, !dbg !240145
  unreachable, !dbg !240145

._crit_edge:                                      ; preds = %bb.o, %bb.h
  %.lcssa = phi i64 [ %.sroa.0.0.i88, %bb.h ], [ %i.ao, %bb.o ]
  store i64 %.sroa.0.0.i, ptr %i.a, align 8, !dbg !240149
  %i.ai = icmp eq i64 %.lcssa, %.sroa.0.0.i, !dbg !240152
  br i1 %i.ai, label %bb.j, label %bb.i, !dbg !240152, !prof !753

bb.j:                                             ; preds = %._crit_edge
  store i64 %i.h, ptr %i.e, align 8, !dbg !240154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !240155
  %i.aj = inttoptr i64 %.sroa.0.0.i to ptr, !dbg !240156
  br label %bb.k, !dbg !240156

bb.k:                                             ; preds = %bb.a, %bb.j
  %.sroa.3.0 = phi ptr [ %i.aj, %bb.j ], [ null, %bb.a ], !dbg !240157
  %i.ak = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.3.0, 1, !dbg !240156
  ret { i64, ptr } %i.ak, !dbg !240156

bb.l:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.sroa.026.095, !dbg !240137 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 16, !dbg !240158
  %.val85 = load i64, ptr %i.am, align 8, !dbg !240158, !noundef !11
  %i.an = sub nsw i64 %.sroa.0.0.i, %i.ag, !dbg !240159
  %.sroa.0.0.i89 = tail call noundef i64 @llvm.umin.i64(i64 %.val85, i64 %i.an), !dbg !240161 ; 3 uses
  %i.ao = add i64 %.sroa.0.0.i89, %i.ag, !dbg !240163 ; 6 uses
  %i.ap = icmp ult i64 %i.ao, %i.ag, !dbg !240165
  %.not80 = icmp ugt i64 %i.ao, %2
  %or.cond84 = or i1 %i.ap, %.not80, !dbg !240165
  br i1 %or.cond84, label %bb.n, label %bb.o, !dbg !240165, !prof !240104

bb.m:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1482) #55, !dbg !240137
  unreachable, !dbg !240137

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ag, i64 noundef %i.ao, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1484) #55, !dbg !240173
  unreachable, !dbg !240173

bb.o:                                             ; preds = %bb.l
  %i.aq = getelementptr i8, ptr %i.al, i64 8, !dbg !240158
  %.val = load ptr, ptr %i.aq, align 8, !dbg !240158, !nonnull !11, !noundef !11
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag, !dbg !240174
  tail call void @_RINvNtCscgRAwXFJnXP_4core5slice20copy_from_slice_implhECseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull %i.ar, i64 noundef %.sroa.0.0.i89, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.sroa.0.0.i89, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1483), !dbg !240178
  store i64 %i.ao, ptr %i.b, align 8, !dbg !240180
  %exitcond103.not = icmp eq i64 %i.ah, %.sroa.03.0, !dbg !240129
  br i1 %exitcond103.not, label %._crit_edge, label %.lr.ph, !dbg !240130
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deINtNtCse4dvU5uQ85g_8indexmap5serde15IndexMapVisitorNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 !dbg !240181 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !dbg !240183, !nonnull !11, !noundef !11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !240183
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !240183, !nonnull !11, !align !2013, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24, !dbg !240184
  %i.c = load ptr, ptr %i.b, align 8, !dbg !240184, !invariant.load !11, !nonnull !11
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1491, i64 noundef 5) #56, !dbg !240191, !inline_history !240192
  ret i1 %i.d, !dbg !240193
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deINtNtCse4dvU5uQ85g_8indexmap5serde15IndexMapVisitorNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 !dbg !240194 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !dbg !240195, !nonnull !11, !noundef !11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !240195
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !240195, !nonnull !11, !align !2013, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24, !dbg !240196
  %i.c = load ptr, ptr %i.b, align 8, !dbg !240196, !invariant.load !11, !nonnull !11
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1491, i64 noundef 5) #56, !dbg !240203, !inline_history !240204
  ret i1 %i.d, !dbg !240205
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deINtNtCse4dvU5uQ85g_8indexmap5serde15IndexMapVisitorjINtNtCsgZ49sUHp3tW_5alloc4sync3ArcSNtNtB1u_6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 !dbg !240206 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !dbg !240207, !nonnull !11, !noundef !11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !240207
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !240207, !nonnull !11, !align !2013, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24, !dbg !240208
  %i.c = load ptr, ptr %i.b, align 8, !dbg !240208, !invariant.load !11, !nonnull !11
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1491, i64 noundef 5) #56, !dbg !240215, !inline_history !240216
  ret i1 %i.d, !dbg !240217
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deINtNtCse4dvU5uQ85g_8indexmap5serde15IndexMapVisitormINtNtCscgRAwXFJnXP_4core6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtNtCsgZ49sUHp3tW_5alloc6string6StringENtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 !dbg !240218 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !dbg !240219, !nonnull !11, !noundef !11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !240219
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !240219, !nonnull !11, !align !2013, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24, !dbg !240220
  %i.c = load ptr, ptr %i.b, align 8, !dbg !240220, !invariant.load !11, !nonnull !11
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1491, i64 noundef 5) #56, !dbg !240227, !inline_history !240228
  ret i1 %i.d, !dbg !240229
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deINtNtCse4dvU5uQ85g_8indexmap5serde15IndexMapVisitormNtNtCs1LHh8CLbVkQ_11polars_core6scalar6ScalarNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 !dbg !240230 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !dbg !240231, !nonnull !11, !noundef !11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !240231
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !240231, !nonnull !11, !align !2013, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24, !dbg !240232
  %i.c = load ptr, ptr %i.b, align 8, !dbg !240232, !invariant.load !11, !nonnull !11
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1491, i64 noundef 5) #56, !dbg !240239, !inline_history !240240
  ret i1 %i.d, !dbg !240241
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deINtNtCse4dvU5uQ85g_8indexmap5serde15IndexMapVisitormNtNtNtCs1LHh8CLbVkQ_11polars_core6schema7iceberg13IcebergColumnNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 !dbg !240242 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !dbg !240243, !nonnull !11, !noundef !11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !240243
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !240243, !nonnull !11, !align !2013, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24, !dbg !240244
  %i.c = load ptr, ptr %i.b, align 8, !dbg !240244, !invariant.load !11, !nonnull !11
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1491, i64 noundef 5) #56, !dbg !240251, !inline_history !240252
  ret i1 %i.d, !dbg !240253
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXNvCs76NdGGEXHxZ_6eithers_1__INtBG_6EitherppENtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !240254 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXNvCs76NdGGEXHxZ_6eithers_1__INtB7_6EitherppENtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtBP_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !240255
  ret i1 %i.a, !dbg !240256
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXNvNtCs2mZqlW55729_12polars_utils4bools_1__NtBG_10UnsafeBoolNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !240257 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXNvNtCs2mZqlW55729_12polars_utils4bools_1__NtB7_10UnsafeBoolNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB2_9___VisitorNtB14_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !240258
  ret i1 %i.a, !dbg !240259
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBG_23SerializableDslPlanNodeNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !240260 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtB7_23SerializableDslPlanNodeNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1B_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !240261
  ret i1 %i.a, !dbg !240262
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBG_23SerializableDslPlanNodeNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !240263 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBa_23SerializableDslPlanNodeNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1E_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !240264
  ret i1 %i.a, !dbg !240265
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans_1__NtBG_19SerializableDslPlanNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !240266 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans_1__NtB7_19SerializableDslPlanNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB1w_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !240267
  ret i1 %i.a, !dbg !240268
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans_1__NtBG_19SerializableDslPlanNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !240269 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans_1__NtBa_19SerializableDslPlanNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1z_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !240270
  ret i1 %i.a, !dbg !240271
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBM_23SerializableDslPlanNodeNtB4_11Deserialize11deserializeNtBH_9___VisitorNtB4_7Visitor10visit_enum14___FieldVisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !240272 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBd_23SerializableDslPlanNodeNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtB8_9___VisitorNtB1H_7Visitor10visit_enumNtB2_14___FieldVisitorB2S_9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !240273
  ret i1 %i.a, !dbg !240274
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBM_23SerializableDslPlanNodeNtB4_11Deserialize11deserializeNtBH_9___VisitorNtB4_7Visitor10visit_enum9___VisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !240275 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBg_23SerializableDslPlanNodeNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1K_7Visitor10visit_enumNtB5_9___VisitorB2V_9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !240276
  ret i1 %i.a, !dbg !240277
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBM_23SerializableDslPlanNodeNtB4_11Deserialize11deserializeNtBH_9___VisitorNtB4_7Visitor10visit_enums0_14___FieldVisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !240278 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs4_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBg_23SerializableDslPlanNodeNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1K_7Visitor10visit_enumNtB5_s0_14___FieldVisitorB2V_9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !240279
  ret i1 %i.a, !dbg !240280
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBM_23SerializableDslPlanNodeNtB4_11Deserialize11deserializeNtBH_9___VisitorNtB4_7Visitor10visit_enums0_9___VisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !240281 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs6_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBg_23SerializableDslPlanNodeNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1K_7Visitor10visit_enumNtB5_s0_9___VisitorB2V_9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !240282
  ret i1 %i.a, !dbg !240283
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBM_23SerializableDslPlanNodeNtB4_11Deserialize11deserializeNtBH_9___VisitorNtB4_7Visitor10visit_enums1_14___FieldVisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !240284 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs7_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBg_23SerializableDslPlanNodeNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1K_7Visitor10visit_enumNtB5_s1_14___FieldVisitorB2V_9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !240285
  ret i1 %i.a, !dbg !240286
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBM_23SerializableDslPlanNodeNtB4_11Deserialize11deserializeNtBH_9___VisitorNtB4_7Visitor10visit_enums1_9___VisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !240287 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs9_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBg_23SerializableDslPlanNodeNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1K_7Visitor10visit_enumNtB5_s1_9___VisitorB2V_9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !240288
  ret i1 %i.a, !dbg !240289
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBM_23SerializableDslPlanNodeNtB4_11Deserialize11deserializeNtBH_9___VisitorNtB4_7Visitor10visit_enums2_14___FieldVisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !240290 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsa_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBg_23SerializableDslPlanNodeNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1K_7Visitor10visit_enumNtB5_s2_14___FieldVisitorB2V_9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !240291
  ret i1 %i.a, !dbg !240292
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBM_23SerializableDslPlanNodeNtB4_11Deserialize11deserializeNtBH_9___VisitorNtB4_7Visitor10visit_enums2_9___VisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !240293 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsc_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBg_23SerializableDslPlanNodeNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1K_7Visitor10visit_enumNtB5_s2_9___VisitorB2V_9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !240294
  ret i1 %i.a, !dbg !240295
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBM_23SerializableDslPlanNodeNtB4_11Deserialize11deserializeNtBH_9___VisitorNtB4_7Visitor10visit_enums3_14___FieldVisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !240296 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsd_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBg_23SerializableDslPlanNodeNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1K_7Visitor10visit_enumNtB5_s3_14___FieldVisitorB2V_9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !240297
  ret i1 %i.a, !dbg !240298
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCs40veMcpUDl8_10serde_core2deNtNvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBM_23SerializableDslPlanNodeNtB4_11Deserialize11deserializeNtBH_9___VisitorNtB4_7Visitor10visit_enums3_9___VisitorNtB4_8Expected3fmtCseeLknQCOKOd_13polars_python(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !240299 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsf_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl17serializable_plans1_1__NtBg_23SerializableDslPlanNodeNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1K_7Visitor10visit_enumNtB5_s3_9___VisitorB2V_9expecting(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !240300
  ret i1 %i.a, !dbg !240301
}

end_hunk_0
