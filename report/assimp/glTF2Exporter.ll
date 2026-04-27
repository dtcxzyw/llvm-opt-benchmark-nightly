inline.NumInlined: 7264
inline.NumDeleted: 2661
begin_hunk_0_@_ZN5glTF211AssetWriter12WriteObjectsINS_8AccessorEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ew = or i64 ptrtoint (ptr @.str.102 to i64), 289637751035265024
  %i.ex = inttoptr i64 %i.ew to ptr
end_hunk_0
begin_hunk_1_@_ZN5glTF211AssetWriter12WriteObjectsINS_8AccessorEEEvRNS_8LazyDictIT_EE:bb.a
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %i.fo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fn) #38, !noalias !323
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.fr = load ptr, ptr %i.ev, align 8
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = and i64 %i.fs, 281474976710655
end_hunk_1
begin_hunk_2_@_ZN5glTF211AssetWriter12WriteObjectsINS_8AccessorEEEvRNS_8LazyDictIT_EE:bb.a
  %i.ga = or i64 %i.fy, %i.fz
  %i.gb = inttoptr i64 %i.ga to ptr
  store ptr %i.gb, ptr %i.ev, align 8
  store i32 16, ptr %i.eu, align 4
  %.pre.i.i.i.i = load i32, ptr %2, align 8
  %i.gc = ptrtoint ptr %i.fn to i64
  %i.gd = or i64 %i.gc, 289637751035265024
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = and i64 %i.fz, 281474976710655
  %i.gg = inttoptr i64 %i.gf to ptr
  %3 = zext i32 %.pre.i.i.i.i to i64
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %i.gg, i64 %3 ; 6 uses
  store i32 4, ptr %i.gh, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
end_hunk_2
begin_hunk_3_@_ZN5glTF211AssetWriter12WriteObjectsINS_8AccessorEEEvRNS_8LazyDictIT_EE:bb.a
bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.q
  %i.gl = phi ptr [ %.pre90, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.fi, %bb.q ]
  call void @_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8AccessorERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(376) %i.gl, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.gm = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.gn = load i32, ptr %.035, align 8            ; 3 uses
  %i.go = load i32, ptr %i.ey, align 4            ; 6 uses
  %.not.i = icmp ult i32 %i.gn, %i.go
end_hunk_3
begin_hunk_4_@_ZN5glTF211AssetWriter12WriteObjectsINS_9AnimationEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ew = or i64 ptrtoint (ptr @.str.102 to i64), 289637751035265024
  %i.ex = inttoptr i64 %i.ew to ptr
end_hunk_4
begin_hunk_5_@_ZN5glTF211AssetWriter12WriteObjectsINS_9AnimationEEEvRNS_8LazyDictIT_EE:bb.a
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %i.fo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fn) #38, !noalias !338
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.fr = load ptr, ptr %i.ev, align 8
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = and i64 %i.fs, 281474976710655
end_hunk_5
begin_hunk_6_@_ZN5glTF211AssetWriter12WriteObjectsINS_9AnimationEEEvRNS_8LazyDictIT_EE:bb.a
  %i.ga = or i64 %i.fy, %i.fz
  %i.gb = inttoptr i64 %i.ga to ptr
  store ptr %i.gb, ptr %i.ev, align 8
  store i32 16, ptr %i.eu, align 4
  %.pre.i.i.i.i = load i32, ptr %2, align 8
  %i.gc = ptrtoint ptr %i.fn to i64
  %i.gd = or i64 %i.gc, 289637751035265024
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = and i64 %i.fz, 281474976710655
  %i.gg = inttoptr i64 %i.gf to ptr
  %3 = zext i32 %.pre.i.i.i.i to i64
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %i.gg, i64 %3 ; 6 uses
  store i32 4, ptr %i.gh, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
end_hunk_6
begin_hunk_7_@_ZN5glTF211AssetWriter12WriteObjectsINS_9AnimationEEEvRNS_8LazyDictIT_EE:bb.a
bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.q
  %i.gl = phi ptr [ %.pre90, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.fi, %bb.q ]
  call void @_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_9AnimationERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(312) %i.gl, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.gm = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.gn = load i32, ptr %.035, align 8            ; 3 uses
  %i.go = load i32, ptr %i.ey, align 4            ; 6 uses
  %.not.i = icmp ult i32 %i.gn, %i.go
end_hunk_7
begin_hunk_8_@_ZN5glTF211AssetWriter12WriteObjectsINS_6BufferEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ew = or i64 ptrtoint (ptr @.str.102 to i64), 289637751035265024
  %i.ex = inttoptr i64 %i.ew to ptr
end_hunk_8
begin_hunk_9_@_ZN5glTF211AssetWriter12WriteObjectsINS_6BufferEEEvRNS_8LazyDictIT_EE:bb.a
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %i.fo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fn) #38, !noalias !350
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.fr = load ptr, ptr %i.ev, align 8
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = and i64 %i.fs, 281474976710655
end_hunk_9
begin_hunk_10_@_ZN5glTF211AssetWriter12WriteObjectsINS_6BufferEEEvRNS_8LazyDictIT_EE:bb.a
  %i.ga = or i64 %i.fy, %i.fz
  %i.gb = inttoptr i64 %i.ga to ptr
  store ptr %i.gb, ptr %i.ev, align 8
  store i32 16, ptr %i.eu, align 4
  %.pre.i.i.i.i = load i32, ptr %2, align 8
  %i.gc = ptrtoint ptr %i.fn to i64
  %i.gd = or i64 %i.gc, 289637751035265024
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = and i64 %i.fz, 281474976710655
  %i.gg = inttoptr i64 %i.gf to ptr
  %3 = zext i32 %.pre.i.i.i.i to i64
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %i.gg, i64 %3 ; 6 uses
  store i32 4, ptr %i.gh, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
end_hunk_10
begin_hunk_11_@_ZN5glTF211AssetWriter12WriteObjectsINS_6BufferEEEvRNS_8LazyDictIT_EE:bb.a
bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.q
  %i.gl = phi ptr [ %.pre90, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.fi, %bb.q ]
  call void @_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_6BufferERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(344) %i.gl, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.gm = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.gn = load i32, ptr %.035, align 8            ; 3 uses
  %i.go = load i32, ptr %i.ey, align 4            ; 6 uses
  %.not.i = icmp ult i32 %i.gn, %i.go
end_hunk_11
begin_hunk_12_@_ZN5glTF211AssetWriter12WriteObjectsINS_10BufferViewEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ew = or i64 ptrtoint (ptr @.str.102 to i64), 289637751035265024
  %i.ex = inttoptr i64 %i.ew to ptr
end_hunk_12
begin_hunk_13_@_ZN5glTF211AssetWriter12WriteObjectsINS_10BufferViewEEEvRNS_8LazyDictIT_EE:bb.a
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %i.fo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fn) #38, !noalias !369
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.fr = load ptr, ptr %i.ev, align 8
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = and i64 %i.fs, 281474976710655
end_hunk_13
begin_hunk_14_@_ZN5glTF211AssetWriter12WriteObjectsINS_10BufferViewEEEvRNS_8LazyDictIT_EE:bb.a
  %i.ga = or i64 %i.fy, %i.fz
  %i.gb = inttoptr i64 %i.ga to ptr
  store ptr %i.gb, ptr %i.ev, align 8
  store i32 16, ptr %i.eu, align 4
  %.pre.i.i.i.i = load i32, ptr %2, align 8
  %i.gc = ptrtoint ptr %i.fn to i64
  %i.gd = or i64 %i.gc, 289637751035265024
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = and i64 %i.fz, 281474976710655
  %i.gg = inttoptr i64 %i.gf to ptr
  %3 = zext i32 %.pre.i.i.i.i to i64
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %i.gg, i64 %3 ; 6 uses
  store i32 4, ptr %i.gh, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
end_hunk_14
begin_hunk_15_@_ZN5glTF211AssetWriter12WriteObjectsINS_10BufferViewEEEvRNS_8LazyDictIT_EE:bb.a
bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.q
  %i.gl = phi ptr [ %.pre90, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.fi, %bb.q ]
  call void @_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_10BufferViewERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(304) %i.gl, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.gm = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.gn = load i32, ptr %.035, align 8            ; 3 uses
  %i.go = load i32, ptr %i.ey, align 4            ; 6 uses
  %.not.i = icmp ult i32 %i.gn, %i.go
end_hunk_15
begin_hunk_16_@_ZN5glTF211AssetWriter12WriteObjectsINS_5ImageEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ew = or i64 ptrtoint (ptr @.str.102 to i64), 289637751035265024
  %i.ex = inttoptr i64 %i.ew to ptr
end_hunk_16
begin_hunk_17_@_ZN5glTF211AssetWriter12WriteObjectsINS_5ImageEEEvRNS_8LazyDictIT_EE:bb.a
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %i.fo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fn) #38, !noalias !399
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.fr = load ptr, ptr %i.ev, align 8
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = and i64 %i.fs, 281474976710655
end_hunk_17
begin_hunk_18_@_ZN5glTF211AssetWriter12WriteObjectsINS_5ImageEEEvRNS_8LazyDictIT_EE:bb.a
  %i.ga = or i64 %i.fy, %i.fz
  %i.gb = inttoptr i64 %i.ga to ptr
  store ptr %i.gb, ptr %i.ev, align 8
  store i32 16, ptr %i.eu, align 4
  %.pre.i.i.i.i = load i32, ptr %2, align 8
  %i.gc = ptrtoint ptr %i.fn to i64
  %i.gd = or i64 %i.gc, 289637751035265024
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = and i64 %i.fz, 281474976710655
  %i.gg = inttoptr i64 %i.gf to ptr
  %3 = zext i32 %.pre.i.i.i.i to i64
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %i.gg, i64 %3 ; 6 uses
  store i32 4, ptr %i.gh, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
end_hunk_18
begin_hunk_19_@_ZN5glTF211AssetWriter12WriteObjectsINS_5ImageEEEvRNS_8LazyDictIT_EE:bb.a
bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.q
  %i.gl = phi ptr [ %.pre90, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.fi, %bb.q ]
  call void @_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_5ImageERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(368) %i.gl, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.gm = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.gn = load i32, ptr %.035, align 8            ; 3 uses
  %i.go = load i32, ptr %i.ey, align 4            ; 6 uses
  %.not.i = icmp ult i32 %i.gn, %i.go
end_hunk_19
begin_hunk_20_@_ZN5glTF211AssetWriter12WriteObjectsINS_8MaterialEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ew = or i64 ptrtoint (ptr @.str.102 to i64), 289637751035265024
  %i.ex = inttoptr i64 %i.ew to ptr
end_hunk_20
begin_hunk_21_@_ZN5glTF211AssetWriter12WriteObjectsINS_8MaterialEEEvRNS_8LazyDictIT_EE:bb.a
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %i.fo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fn) #38, !noalias !418
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.fr = load ptr, ptr %i.ev, align 8
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = and i64 %i.fs, 281474976710655
end_hunk_21
begin_hunk_22_@_ZN5glTF211AssetWriter12WriteObjectsINS_8MaterialEEEvRNS_8LazyDictIT_EE:bb.a
  %i.ga = or i64 %i.fy, %i.fz
  %i.gb = inttoptr i64 %i.ga to ptr
  store ptr %i.gb, ptr %i.ev, align 8
  store i32 16, ptr %i.eu, align 4
  %.pre.i.i.i.i = load i32, ptr %2, align 8
  %i.gc = ptrtoint ptr %i.fn to i64
  %i.gd = or i64 %i.gc, 289637751035265024
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = and i64 %i.fz, 281474976710655
  %i.gg = inttoptr i64 %i.gf to ptr
  %3 = zext i32 %.pre.i.i.i.i to i64
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %i.gg, i64 %3 ; 6 uses
  store i32 4, ptr %i.gh, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
end_hunk_22
begin_hunk_23_@_ZN5glTF211AssetWriter12WriteObjectsINS_8MaterialEEEvRNS_8LazyDictIT_EE:bb.a
bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.q
  %i.gl = phi ptr [ %.pre90, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.fi, %bb.q ]
  call void @_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1369) %i.gl, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.gm = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.gn = load i32, ptr %.035, align 8            ; 3 uses
  %i.go = load i32, ptr %i.ey, align 4            ; 6 uses
  %.not.i = icmp ult i32 %i.gn, %i.go
end_hunk_23
begin_hunk_24_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  store i16 3, ptr %i.a, align 2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 54 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !13, !align !122
  call fastcc void @_ZN5glTF212_GLOBAL__N_18WriteTexERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEENS_11TextureInfoEPKcRS7_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull byval(%"struct.glTF2::TextureInfo") align 8 %i.c, ptr noundef nonnull @.str.143, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 328
end_hunk_24
begin_hunk_25_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %.sroa.4671.0.copyload = load i32, ptr %.sroa.4671.0..sroa_idx, align 4 ; 3 uses
  %.sroa.6673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 488
  %.sroa.6673.0.copyload = load float, ptr %.sroa.6673.0..sroa_idx, align 8 ; 2 uses
  %i.fk = load ptr, ptr %i.d, align 8             ; 6 uses
  %.not.i.i = icmp eq ptr %.sroa.0669.0.copyload, null
  br i1 %.not.i.i, label %bb.r, label %_ZNK10glTFCommon3RefIN5glTF27TextureEEcvbEv.exit.i

end_hunk_25
begin_hunk_26_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gi
  store i64 %.pre-phi.i.i.i, ptr %i.gl, align 8
  %i.gn = ptrtoint ptr %i.gm to i64
  %19 = or i64 %i.gn, 844424930131968
  br label %.noexc.i182

.noexc.i182:                                      ; preds = %bb.m, %.noexc14.i
  %.2.i.i = phi i64 [ 844424930131968, %.noexc14.i ], [ %19, %bb.m ] ; 2 uses
  %i.go = inttoptr i64 %.2.i.i to ptr
  %i.gp = or i64 ptrtoint (ptr @.str.195 to i64), 289637751035265024
  %i.gq = inttoptr i64 %i.gp to ptr
  %i.gr = icmp sgt i32 %i.fx, -1
end_hunk_26
begin_hunk_27_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  store i16 3, ptr %i.xf, align 2
  %i.xg = load float, ptr %i.xe, align 8          ; 2 uses
  %i.xh = fcmp oeq float %i.xg, 0.000000e+00      ; 2 uses
  %.pre720.pre736 = load ptr, ptr %i.d, align 8   ; 2 uses
  br i1 %i.xh, label %bb.as, label %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit306

_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit306: ; preds = %bb.ar
  %i.xi = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.xj = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.xk = load ptr, ptr %i.xj, align 8
  %i.xl = ptrtoint ptr %i.xk to i64               ; 2 uses
  %i.xm = and i64 %i.xl, 281474976710655
  %i.xn = inttoptr i64 %i.xm to ptr
  %i.xo = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %.pre720.pre736, ptr noundef %i.xn, i64 noundef 0, i64 noundef 512)
  %i.xp = and i64 %i.xl, -281474976710656
  %i.xq = ptrtoint ptr %i.xo to i64               ; 2 uses
  %i.xr = or i64 %i.xp, %i.xq
end_hunk_27
begin_hunk_28_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %.sroa.6.0..sroa_idx.i302 = getelementptr inbounds nuw i8, ptr %i.xx, i64 24
  store i64 150307637563490304, ptr %.sroa.6.0..sroa_idx.i302, align 8
  store i32 1, ptr %13, align 8
  %.pre720.pre = load ptr, ptr %i.d, align 8
  br label %bb.as

bb.as:                                            ; preds = %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit306, %bb.ar
  %.pre720 = phi ptr [ %.pre720.pre, %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit306 ], [ %.pre720.pre736, %bb.ar ] ; 3 uses
  %i.xz = phi i32 [ 16, %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit306 ], [ 0, %bb.ar ] ; 5 uses
  %i.ya = phi i32 [ 1, %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit306 ], [ 0, %bb.ar ] ; 3 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 740 ; 2 uses
end_hunk_28
begin_hunk_29_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.yi = load float, ptr %i.yh, align 4
  %i.yj = fcmp une float %i.yi, 1.000000e+00
  %or.cond168 = select i1 %or.cond, i1 %i.yj, i1 false
  br i1 %or.cond168, label %.noexc313, label %bb.au

.noexc313:                                        ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.yk = call fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN5glTF212_GLOBAL__N_19MakeValueIfLm3EEERN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEESA_RAT0__T_RS8_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.yb, ptr noundef nonnull align 8 dereferenceable(24) %.pre720) ; 0 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %13, i64 4
  %.not.i.i.i.i307 = icmp samesign ult i32 %i.ya, %i.xz
  br i1 %.not.i.i.i.i307, label %_ZN5glTF212_GLOBAL__N_18WriteVecILm3EEEvRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERAT__fPKcRS8_.exit, label %bb.at
end_hunk_29
begin_hunk_30_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.yw = zext nneg i32 %i.yv to i64
  %i.yx = shl nuw nsw i32 %i.yo, 5
  %i.yy = zext nneg i32 %i.yx to i64
  %i.yz = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %.pre720, ptr noundef %i.yu, i64 noundef %i.yw, i64 noundef %i.yy)
  %i.za = and i64 %i.ys, -281474976710656
  %i.zb = ptrtoint ptr %i.yz to i64
  %i.zc = or i64 %i.za, %i.zb
end_hunk_30
begin_hunk_31_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  br label %bb.au

bb.au:                                            ; preds = %_ZN5glTF212_GLOBAL__N_18WriteVecILm3EEEvRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERAT__fPKcRS8_.exit, %bb.as
  %i.zp = phi ptr [ %.pre719, %_ZN5glTF212_GLOBAL__N_18WriteVecILm3EEEvRN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEERAT__fPKcRS8_.exit ], [ %.pre720, %bb.as ]
  %i.zq = getelementptr inbounds nuw i8, ptr %1, i64 752
  call fastcc void @_ZN5glTF212_GLOBAL__N_18WriteTexERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEENS_11TextureInfoEPKcRS7_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull byval(%"struct.glTF2::TextureInfo") align 8 %i.zq, ptr noundef nonnull @.str.165, ptr noundef nonnull align 8 dereferenceable(24) %i.zp)
  %i.zr = getelementptr inbounds nuw i8, ptr %1, i64 800
end_hunk_31
begin_hunk_32_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  store i16 3, ptr %i.aep, align 2
  %i.aeq = load float, ptr %i.aeo, align 8        ; 2 uses
  %i.aer = fcmp oeq float %i.aeq, 0.000000e+00
  %.pre725.pre739 = load ptr, ptr %i.d, align 8   ; 3 uses
  br i1 %i.aer, label %.thread827, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.aes = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.aet = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.aeu = load ptr, ptr %i.aet, align 8
  %i.aev = ptrtoint ptr %i.aeu to i64             ; 2 uses
  %i.aew = and i64 %i.aev, 281474976710655
  %i.aex = inttoptr i64 %i.aew to ptr
  %i.aey = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %.pre725.pre739, ptr noundef %i.aex, i64 noundef 0, i64 noundef 512)
  %i.aez = and i64 %i.aev, -281474976710656
  %i.afa = ptrtoint ptr %i.aey to i64             ; 2 uses
  %i.afb = or i64 %i.aez, %i.afa
end_hunk_32
begin_hunk_33_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %.sroa.6.0..sroa_idx.i359 = getelementptr inbounds nuw i8, ptr %i.afh, i64 24
  store i64 150307637563490304, ptr %.sroa.6.0..sroa_idx.i359, align 8
  store i32 1, ptr %15, align 8
  %.pre725.pre = load ptr, ptr %i.d, align 8
  %i.afj = getelementptr inbounds nuw i8, ptr %1, i64 980
  %i.afk = load float, ptr %i.afj, align 4        ; 2 uses
  %i.afl = fcmp une float %i.afk, 0.000000e+00
  br i1 %i.afl, label %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit372, label %bb.bh

.thread827:                                       ; preds = %bb.bf
  %i.afm = getelementptr inbounds nuw i8, ptr %1, i64 980
  %i.afn = load float, ptr %i.afm, align 4        ; 2 uses
  %i.afo = fcmp une float %i.afn, 0.000000e+00
  br i1 %i.afo, label %.noexc.i.i369, label %bb.bh

.noexc.i.i369:                                    ; preds = %.thread827
end_hunk_33
begin_hunk_34_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.afs = ptrtoint ptr %i.afr to i64             ; 2 uses
  %i.aft = and i64 %i.afs, 281474976710655
  %i.afu = inttoptr i64 %i.aft to ptr
  %i.afv = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %.pre725.pre739, ptr noundef %i.afu, i64 noundef 0, i64 noundef 512)
  %i.afw = and i64 %i.afs, -281474976710656
  %i.afx = ptrtoint ptr %i.afv to i64
  %i.afy = or i64 %i.afw, %i.afx
end_hunk_34
begin_hunk_35_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  br label %bb.bh

bb.bh:                                            ; preds = %.thread827, %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit372, %bb.bg
  %i.ago = phi ptr [ %.pre724, %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit372 ], [ %.pre725.pre, %bb.bg ], [ %.pre725.pre739, %.thread827 ]
  %i.agp = getelementptr inbounds nuw i8, ptr %1, i64 984
  call fastcc void @_ZN5glTF212_GLOBAL__N_18WriteTexERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEENS_11TextureInfoEPKcRS7_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull byval(%"struct.glTF2::TextureInfo") align 8 %i.agp, ptr noundef nonnull @.str.175, ptr noundef nonnull align 8 dereferenceable(24) %i.ago)
  %i.agq = getelementptr inbounds nuw i8, ptr %1, i64 1032
end_hunk_35
begin_hunk_36_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.aic = getelementptr inbounds nuw i8, ptr %1, i64 1192
  %i.aid = load float, ptr %i.aic, align 8        ; 2 uses
  %i.aie = fcmp une float %i.aid, 0.000000e+00
  %.pre728 = load ptr, ptr %i.d, align 8          ; 2 uses
  br i1 %i.aie, label %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit389, label %bb.bn

_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit389: ; preds = %bb.bm
  %i.aif = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.aig = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.aih = load ptr, ptr %i.aig, align 8
  %i.aii = ptrtoint ptr %i.aih to i64             ; 2 uses
  %i.aij = and i64 %i.aii, 281474976710655
  %i.aik = inttoptr i64 %i.aij to ptr
  %i.ail = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %.pre728, ptr noundef %i.aik, i64 noundef 0, i64 noundef 512)
  %i.aim = and i64 %i.aii, -281474976710656
  %i.ain = ptrtoint ptr %i.ail to i64             ; 2 uses
  %i.aio = or i64 %i.aim, %i.ain
end_hunk_36
begin_hunk_37_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %.sroa.6.0..sroa_idx.i385 = getelementptr inbounds nuw i8, ptr %i.aiu, i64 24
  store i64 150307637563490304, ptr %.sroa.6.0..sroa_idx.i385, align 8
  store i32 1, ptr %16, align 8
  %.pre727 = load ptr, ptr %i.d, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit389, %bb.bm
  %20 = phi ptr [ %.pre727, %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit389 ], [ %.pre728, %bb.bm ]
  call fastcc void @_ZN5glTF212_GLOBAL__N_18WriteTexERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEENS_11TextureInfoEPKcRS7_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull byval(%"struct.glTF2::TextureInfo") align 8 %i.ahx, ptr noundef nonnull @.str.180, ptr noundef nonnull align 8 dereferenceable(24) %20)
  %i.aiw = load i32, ptr %16, align 8
  %i.aix = icmp eq i32 %i.aiw, 0
  br i1 %i.aix, label %bb.bq, label %bb.bo
end_hunk_37
begin_hunk_38_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  store i16 3, ptr %i.akd, align 2
  %i.ake = load float, ptr %i.akc, align 8        ; 2 uses
  %i.akf = fcmp une float %i.ake, 0.000000e+00
  %.pre731 = load ptr, ptr %i.d, align 8          ; 2 uses
  br i1 %i.akf, label %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit406, label %bb.bt

_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit406: ; preds = %bb.bs
  %i.akg = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.akh = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.aki = load ptr, ptr %i.akh, align 8
  %i.akj = ptrtoint ptr %i.aki to i64             ; 2 uses
  %i.akk = and i64 %i.akj, 281474976710655
  %i.akl = inttoptr i64 %i.akk to ptr
  %i.akm = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %.pre731, ptr noundef %i.akl, i64 noundef 0, i64 noundef 512)
  %i.akn = and i64 %i.akj, -281474976710656
  %i.ako = ptrtoint ptr %i.akm to i64             ; 2 uses
  %i.akp = or i64 %i.akn, %i.ako
end_hunk_38
begin_hunk_39_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %.sroa.6.0..sroa_idx.i402 = getelementptr inbounds nuw i8, ptr %i.akv, i64 24
  store i64 150307637563490304, ptr %.sroa.6.0..sroa_idx.i402, align 8
  store i32 1, ptr %17, align 8
  %.pre730 = load ptr, ptr %i.d, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit406, %bb.bs
  %21 = phi ptr [ %.pre730, %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit406 ], [ %.pre731, %bb.bs ]
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 1216
  call fastcc void @_ZN5glTF212_GLOBAL__N_18WriteTexERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEENS_11TextureInfoEPKcRS7_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull byval(%"struct.glTF2::TextureInfo") align 8 %22, ptr noundef nonnull @.str.183, ptr noundef nonnull align 8 dereferenceable(24) %21)
  %i.akx = getelementptr inbounds nuw i8, ptr %1, i64 1264
  %i.aky = load float, ptr %i.akx, align 8        ; 2 uses
  %i.akz = fcmp une float %i.aky, 0x7FF0000000000000
end_hunk_39
begin_hunk_40_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a

bb.bw:                                            ; preds = %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit415, %bb.bt
  %i.amj = getelementptr inbounds nuw i8, ptr %1, i64 1268 ; 2 uses
  %i.amk = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.aml = load float, ptr %i.amj, align 4
  %i.amm = fcmp oeq float %i.aml, 1.000000e+00
  %.0810.i.i.i.i.ptr.1.i425 = getelementptr inbounds nuw i8, ptr %1, i64 1272
end_hunk_40
begin_hunk_41_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  store i16 3, ptr %i.asq, align 2
  %i.asr = load float, ptr %i.asp, align 8        ; 2 uses
  %i.ass = fcmp oeq float %i.asr, 0.000000e+00
  %.pre734.pre741 = load ptr, ptr %i.d, align 8   ; 3 uses
  br i1 %i.ass, label %.thread834, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ast = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.asu = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.asv = load ptr, ptr %i.asu, align 8
  %i.asw = ptrtoint ptr %i.asv to i64             ; 2 uses
  %i.asx = and i64 %i.asw, 281474976710655
  %i.asy = inttoptr i64 %i.asx to ptr
  %i.asz = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %.pre734.pre741, ptr noundef %i.asy, i64 noundef 0, i64 noundef 512)
  %i.ata = and i64 %i.asw, -281474976710656
  %i.atb = ptrtoint ptr %i.asz to i64             ; 2 uses
  %i.atc = or i64 %i.ata, %i.atb
end_hunk_41
begin_hunk_42_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %.sroa.6.0..sroa_idx.i477 = getelementptr inbounds nuw i8, ptr %i.ati, i64 24
  store i64 150307637563490304, ptr %.sroa.6.0..sroa_idx.i477, align 8
  store i32 1, ptr %18, align 8
  %.pre734.pre = load ptr, ptr %i.d, align 8
  %i.atk = getelementptr inbounds nuw i8, ptr %1, i64 1308
  %i.atl = load float, ptr %i.atk, align 4        ; 2 uses
  %i.atm = fcmp une float %i.atl, 0.000000e+00
  br i1 %i.atm, label %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit490, label %bb.ci

.thread834:                                       ; preds = %bb.cg
  %i.atn = getelementptr inbounds nuw i8, ptr %1, i64 1308
  %i.ato = load float, ptr %i.atn, align 4        ; 2 uses
  %i.atp = fcmp une float %i.ato, 0.000000e+00
  br i1 %i.atp, label %.noexc.i.i487, label %bb.ci

.noexc.i.i487:                                    ; preds = %.thread834
end_hunk_42
begin_hunk_43_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  %i.att = ptrtoint ptr %i.ats to i64             ; 2 uses
  %i.atu = and i64 %i.att, 281474976710655
  %i.atv = inttoptr i64 %i.atu to ptr
  %i.atw = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %.pre734.pre741, ptr noundef %i.atv, i64 noundef 0, i64 noundef 512)
  %i.atx = and i64 %i.att, -281474976710656
  %i.aty = ptrtoint ptr %i.atw to i64
  %i.atz = or i64 %i.atx, %i.aty
end_hunk_43
begin_hunk_44_@_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_8MaterialERNS_11AssetWriterE:bb.a
  br label %bb.ci

bb.ci:                                            ; preds = %.thread834, %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit490, %bb.ch
  %i.aup = phi ptr [ %.pre733, %_ZN5glTF212_GLOBAL__N_110WriteFloatERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEEfPKcRS7_.exit490 ], [ %.pre734.pre, %bb.ch ], [ %.pre734.pre741, %.thread834 ]
  %i.auq = getelementptr inbounds nuw i8, ptr %1, i64 1312
  call fastcc void @_ZN5glTF212_GLOBAL__N_18WriteTexERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEENS_11TextureInfoEPKcRS7_(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull byval(%"struct.glTF2::TextureInfo") align 8 %i.auq, ptr noundef nonnull @.str.193, ptr noundef nonnull align 8 dereferenceable(24) %i.aup)
  %i.aur = load i32, ptr %18, align 8
end_hunk_44
begin_hunk_45_@_ZN5glTF212_GLOBAL__N_18WriteTexERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEENS_11TextureInfoEPKcRS7_:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i64 %.pre-phi.i.i, ptr %i.ad, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %4 = or i64 %i.af, 844424930131968
  br label %.noexc

.noexc:                                           ; preds = %bb.c, %.noexc9
  %.2.i = phi i64 [ 844424930131968, %.noexc9 ], [ %4, %bb.c ] ; 2 uses
  %i.ag = inttoptr i64 %.2.i to ptr
  %i.ah = or i64 ptrtoint (ptr @.str.195 to i64), 289637751035265024
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = icmp sgt i32 %i.p, -1
end_hunk_45
begin_hunk_46_@_ZN5glTF212_GLOBAL__N_18WriteTexERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEENS_17NormalTextureInfoEPKcRS7_:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i64 %.pre-phi.i.i, ptr %i.ad, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %4 = or i64 %i.af, 844424930131968
  br label %.noexc

.noexc:                                           ; preds = %bb.c, %.noexc14
  %.2.i = phi i64 [ 844424930131968, %.noexc14 ], [ %4, %bb.c ] ; 2 uses
  %i.ag = inttoptr i64 %.2.i to ptr
  %i.ah = or i64 ptrtoint (ptr @.str.195 to i64), 289637751035265024
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = icmp sgt i32 %i.p, -1
end_hunk_46
begin_hunk_47_@_ZN5glTF211AssetWriter12WriteObjectsINS_4MeshEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ew = or i64 ptrtoint (ptr @.str.102 to i64), 289637751035265024
  %i.ex = inttoptr i64 %i.ew to ptr
end_hunk_47
begin_hunk_48_@_ZN5glTF211AssetWriter12WriteObjectsINS_4MeshEEEvRNS_8LazyDictIT_EE:bb.a
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %i.fo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fn) #38, !noalias !437
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.fr = load ptr, ptr %i.ev, align 8
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = and i64 %i.fs, 281474976710655
end_hunk_48
begin_hunk_49_@_ZN5glTF211AssetWriter12WriteObjectsINS_4MeshEEEvRNS_8LazyDictIT_EE:bb.a
  %i.ga = or i64 %i.fy, %i.fz
  %i.gb = inttoptr i64 %i.ga to ptr
  store ptr %i.gb, ptr %i.ev, align 8
  store i32 16, ptr %i.eu, align 4
  %.pre.i.i.i.i = load i32, ptr %2, align 8
  %i.gc = ptrtoint ptr %i.fn to i64
  %i.gd = or i64 %i.gc, 289637751035265024
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = and i64 %i.fz, 281474976710655
  %i.gg = inttoptr i64 %i.gf to ptr
  %3 = zext i32 %.pre.i.i.i.i to i64
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %i.gg, i64 %3 ; 6 uses
  store i32 4, ptr %i.gh, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
end_hunk_49
begin_hunk_50_@_ZN5glTF211AssetWriter12WriteObjectsINS_4MeshEEEvRNS_8LazyDictIT_EE:bb.a
bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.q
  %i.gl = phi ptr [ %.pre90, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.fi, %bb.q ]
  call void @_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_4MeshERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(336) %i.gl, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.gm = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.gn = load i32, ptr %.035, align 8            ; 3 uses
  %i.go = load i32, ptr %i.ey, align 4            ; 6 uses
  %.not.i = icmp ult i32 %i.gn, %i.go
end_hunk_50
begin_hunk_51_@_ZN5glTF211AssetWriter12WriteObjectsINS_4NodeEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ew = or i64 ptrtoint (ptr @.str.102 to i64), 289637751035265024
  %i.ex = inttoptr i64 %i.ew to ptr
end_hunk_51
begin_hunk_52_@_ZN5glTF211AssetWriter12WriteObjectsINS_4NodeEEEvRNS_8LazyDictIT_EE:bb.a
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %i.fo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fn) #38, !noalias !460
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.fr = load ptr, ptr %i.ev, align 8
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = and i64 %i.fs, 281474976710655
end_hunk_52
begin_hunk_53_@_ZN5glTF211AssetWriter12WriteObjectsINS_4NodeEEEvRNS_8LazyDictIT_EE:bb.a
  %i.ga = or i64 %i.fy, %i.fz
  %i.gb = inttoptr i64 %i.ga to ptr
  store ptr %i.gb, ptr %i.ev, align 8
  store i32 16, ptr %i.eu, align 4
  %.pre.i.i.i.i = load i32, ptr %2, align 8
  %i.gc = ptrtoint ptr %i.fn to i64
  %i.gd = or i64 %i.gc, 289637751035265024
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = and i64 %i.fz, 281474976710655
  %i.gg = inttoptr i64 %i.gf to ptr
  %3 = zext i32 %.pre.i.i.i.i to i64
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %i.gg, i64 %3 ; 6 uses
  store i32 4, ptr %i.gh, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
end_hunk_53
begin_hunk_54_@_ZN5glTF211AssetWriter12WriteObjectsINS_4NodeEEEvRNS_8LazyDictIT_EE:bb.a
bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.q
  %i.gl = phi ptr [ %.pre90, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.fi, %bb.q ]
  call void @_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_4NodeERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(552) %i.gl, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.gm = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.gn = load i32, ptr %.035, align 8            ; 3 uses
  %i.go = load i32, ptr %i.ey, align 4            ; 6 uses
  %.not.i = icmp ult i32 %i.gn, %i.go
end_hunk_54
begin_hunk_55_@_ZN5glTF211AssetWriter12WriteObjectsINS_7SamplerEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ew = or i64 ptrtoint (ptr @.str.102 to i64), 289637751035265024
  %i.ex = inttoptr i64 %i.ew to ptr
end_hunk_55
begin_hunk_56_@_ZN5glTF211AssetWriter12WriteObjectsINS_7SamplerEEEvRNS_8LazyDictIT_EE:bb.a
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %i.fo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fn) #38, !noalias !478
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.fr = load ptr, ptr %i.ev, align 8
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = and i64 %i.fs, 281474976710655
end_hunk_56
begin_hunk_57_@_ZN5glTF211AssetWriter12WriteObjectsINS_7SamplerEEEvRNS_8LazyDictIT_EE:bb.a
  %i.ga = or i64 %i.fy, %i.fz
  %i.gb = inttoptr i64 %i.ga to ptr
  store ptr %i.gb, ptr %i.ev, align 8
  store i32 16, ptr %i.eu, align 4
  %.pre.i.i.i.i = load i32, ptr %2, align 8
  %i.gc = ptrtoint ptr %i.fn to i64
  %i.gd = or i64 %i.gc, 289637751035265024
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = and i64 %i.fz, 281474976710655
  %i.gg = inttoptr i64 %i.gf to ptr
  %3 = zext i32 %.pre.i.i.i.i to i64
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %i.gg, i64 %3 ; 6 uses
  store i32 4, ptr %i.gh, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
end_hunk_57
begin_hunk_58_@_ZN5glTF211AssetWriter12WriteObjectsINS_7SamplerEEEvRNS_8LazyDictIT_EE:bb.a
bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.q
  %i.gl = phi ptr [ %.pre90, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.fi, %bb.q ]
  call void @_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_7SamplerERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(280) %i.gl, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.gm = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.gn = load i32, ptr %.035, align 8            ; 3 uses
  %i.go = load i32, ptr %i.ey, align 4            ; 6 uses
  %.not.i = icmp ult i32 %i.gn, %i.go
end_hunk_58
begin_hunk_59_@_ZN5glTF211AssetWriter12WriteObjectsINS_5SceneEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ew = or i64 ptrtoint (ptr @.str.102 to i64), 289637751035265024
  %i.ex = inttoptr i64 %i.ew to ptr
end_hunk_59
begin_hunk_60_@_ZN5glTF211AssetWriter12WriteObjectsINS_5SceneEEEvRNS_8LazyDictIT_EE:bb.a
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %i.fo = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fn) #38, !noalias !491
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.fr = load ptr, ptr %i.ev, align 8
  %i.fs = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.ft = and i64 %i.fs, 281474976710655
end_hunk_60
begin_hunk_61_@_ZN5glTF211AssetWriter12WriteObjectsINS_5SceneEEEvRNS_8LazyDictIT_EE:bb.a
  %i.fy = or i64 %i.fw, %i.fx
  %i.fz = inttoptr i64 %i.fy to ptr
  store ptr %i.fz, ptr %i.ev, align 8
  store i32 16, ptr %i.eu, align 4
  %i.ga = ptrtoint ptr %i.fn to i64
  %i.gb = or i64 %i.ga, 289637751035265024
  %i.gc = inttoptr i64 %i.gb to ptr
end_hunk_61
begin_hunk_62_@_ZN5glTF211AssetWriter12WriteObjectsINS_5SceneEEEvRNS_8LazyDictIT_EE:bb.a
_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_5SceneERNS_11AssetWriterE.exit: ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.q
  %i.gg = phi ptr [ %.pre91, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.fi, %bb.q ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 296
  %i.gi = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  call fastcc void @_ZN5glTF212_GLOBAL__N_113AddRefsVectorINS_4NodeEEEvRN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRSt6vectorIN10glTFCommon3RefIT_EESaISI_EERS9_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.85, ptr noundef nonnull align 8 dereferenceable(24) %i.gh, ptr noundef nonnull align 8 dereferenceable(24) %i.gi)
  %i.gj = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.gk = load i32, ptr %.035, align 8            ; 3 uses
  %i.gl = load i32, ptr %i.ey, align 4            ; 6 uses
  %.not.i = icmp ult i32 %i.gk, %i.gl
end_hunk_62
begin_hunk_63_@_ZN5glTF211AssetWriter12WriteObjectsINS_4SkinEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ew = or i64 ptrtoint (ptr @.str.102 to i64), 289637751035265024
  %i.ex = inttoptr i64 %i.ew to ptr
end_hunk_63
begin_hunk_64_@_ZN5glTF211AssetWriter12WriteObjectsINS_4SkinEEEvRNS_8LazyDictIT_EE:bb.a
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %i.fo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fn) #38, !noalias !501
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.fr = load ptr, ptr %i.ev, align 8
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = and i64 %i.fs, 281474976710655
end_hunk_64
begin_hunk_65_@_ZN5glTF211AssetWriter12WriteObjectsINS_4SkinEEEvRNS_8LazyDictIT_EE:bb.a
  %i.ga = or i64 %i.fy, %i.fz
  %i.gb = inttoptr i64 %i.ga to ptr
  store ptr %i.gb, ptr %i.ev, align 8
  store i32 16, ptr %i.eu, align 4
  %.pre.i.i.i.i = load i32, ptr %2, align 8
  %i.gc = ptrtoint ptr %i.fn to i64
  %i.gd = or i64 %i.gc, 289637751035265024
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = and i64 %i.fz, 281474976710655
  %i.gg = inttoptr i64 %i.gf to ptr
  %3 = zext i32 %.pre.i.i.i.i to i64
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %i.gg, i64 %3 ; 6 uses
  store i32 4, ptr %i.gh, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
end_hunk_65
begin_hunk_66_@_ZN5glTF211AssetWriter12WriteObjectsINS_4SkinEEEvRNS_8LazyDictIT_EE:bb.a
bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.q
  %i.gl = phi ptr [ %.pre90, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.fi, %bb.q ]
  call void @_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_4SkinERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(408) %i.gl, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.gm = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.gn = load i32, ptr %.035, align 8            ; 3 uses
  %i.go = load i32, ptr %i.ey, align 4            ; 6 uses
  %.not.i = icmp ult i32 %i.gn, %i.go
end_hunk_66
begin_hunk_67_@_ZN5glTF211AssetWriter12WriteObjectsINS_7TextureEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ew = or i64 ptrtoint (ptr @.str.102 to i64), 289637751035265024
  %i.ex = inttoptr i64 %i.ew to ptr
end_hunk_67
begin_hunk_68_@_ZN5glTF211AssetWriter12WriteObjectsINS_7TextureEEEvRNS_8LazyDictIT_EE:bb.a
  %i.fn = load ptr, ptr %i.fm, align 8            ; 2 uses
  %i.fo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fn) #38, !noalias !512
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.fr = load ptr, ptr %i.ev, align 8
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = and i64 %i.fs, 281474976710655
end_hunk_68
begin_hunk_69_@_ZN5glTF211AssetWriter12WriteObjectsINS_7TextureEEEvRNS_8LazyDictIT_EE:bb.a
  %i.ga = or i64 %i.fy, %i.fz
  %i.gb = inttoptr i64 %i.ga to ptr
  store ptr %i.gb, ptr %i.ev, align 8
  store i32 16, ptr %i.eu, align 4
  %.pre.i.i.i.i = load i32, ptr %2, align 8
  %i.gc = ptrtoint ptr %i.fn to i64
  %i.gd = or i64 %i.gc, 289637751035265024
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = and i64 %i.fz, 281474976710655
  %i.gg = inttoptr i64 %i.gf to ptr
  %3 = zext i32 %.pre.i.i.i.i to i64
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %i.gg, i64 %3 ; 6 uses
  store i32 4, ptr %i.gh, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
end_hunk_69
begin_hunk_70_@_ZN5glTF211AssetWriter12WriteObjectsINS_7TextureEEEvRNS_8LazyDictIT_EE:bb.a
bb.r:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.q
  %i.gl = phi ptr [ %.pre90, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.fi, %bb.q ]
  call void @_ZN5glTF25WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_7TextureERNS_11AssetWriterE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(296) %i.gl, ptr noundef nonnull align 8 dereferenceable(112) %0)
  %i.gm = load ptr, ptr %i.et, align 8, !nonnull !13, !align !122
  %i.gn = load i32, ptr %.035, align 8            ; 3 uses
  %i.go = load i32, ptr %i.ey, align 4            ; 6 uses
  %.not.i = icmp ult i32 %i.gn, %i.go
end_hunk_70
