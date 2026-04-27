inline.NumInlined: 6973
inline.NumDeleted: 2254
begin_hunk_0_@_ZN4glTF11AssetWriter12WriteObjectsINS_8AccessorEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lc = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.lf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lg = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.lh = inttoptr i64 %i.lg to ptr
end_hunk_0
begin_hunk_1_@_ZN4glTF11AssetWriter12WriteObjectsINS_8AccessorEEEvRNS_8LazyDictIT_EE:bb.a
  %i.lx = load ptr, ptr %i.lw, align 8            ; 2 uses
  %i.ly = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lx) #37, !noalias !488
  %i.lz = trunc i64 %i.ly to i32
  %i.ma = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.mb = load ptr, ptr %i.lf, align 8
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = and i64 %i.mc, 281474976710655
end_hunk_1
begin_hunk_2_@_ZN4glTF11AssetWriter12WriteObjectsINS_8AccessorEEEvRNS_8LazyDictIT_EE:bb.a
  %i.mk = or i64 %i.mi, %i.mj
  %i.ml = inttoptr i64 %i.mk to ptr
  store ptr %i.ml, ptr %i.lf, align 8
  store i32 16, ptr %i.le, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mm = ptrtoint ptr %i.lx to i64
  %i.mn = or i64 %i.mm, 289637751035265024
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = and i64 %i.mj, 281474976710655
  %i.mq = inttoptr i64 %i.mp to ptr
  %7 = zext i32 %.pre.i.i.i.i to i64
  %i.mr = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %7 ; 6 uses
  store i32 4, ptr %i.mr, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
end_hunk_2
begin_hunk_3_@_ZN4glTF11AssetWriter12WriteObjectsINS_8AccessorEEEvRNS_8LazyDictIT_EE:bb.a
  %i.nd = trunc i64 %i.nc to i32
  %.not.i.i = icmp eq ptr %i.na, null
  %i.ne = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.na, !prof !6
  %i.nf = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.ng = load i32, ptr %.031, align 8            ; 3 uses
  %i.nh = load i32, ptr %i.li, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.ng, %i.nh
end_hunk_3
begin_hunk_4_@_ZN4glTF11AssetWriter12WriteObjectsINS_9AnimationEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lc = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.lf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lg = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.lh = inttoptr i64 %i.lg to ptr
end_hunk_4
begin_hunk_5_@_ZN4glTF11AssetWriter12WriteObjectsINS_9AnimationEEEvRNS_8LazyDictIT_EE:bb.a
  %i.lx = load ptr, ptr %i.lw, align 8            ; 2 uses
  %i.ly = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lx) #37, !noalias !521
  %i.lz = trunc i64 %i.ly to i32
  %i.ma = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.mb = load ptr, ptr %i.lf, align 8
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = and i64 %i.mc, 281474976710655
end_hunk_5
begin_hunk_6_@_ZN4glTF11AssetWriter12WriteObjectsINS_9AnimationEEEvRNS_8LazyDictIT_EE:bb.a
  %i.mk = or i64 %i.mi, %i.mj
  %i.ml = inttoptr i64 %i.mk to ptr
  store ptr %i.ml, ptr %i.lf, align 8
  store i32 16, ptr %i.le, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mm = ptrtoint ptr %i.lx to i64
  %i.mn = or i64 %i.mm, 289637751035265024
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = and i64 %i.mj, 281474976710655
  %i.mq = inttoptr i64 %i.mp to ptr
  %7 = zext i32 %.pre.i.i.i.i to i64
  %i.mr = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %7 ; 6 uses
  store i32 4, ptr %i.mr, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
end_hunk_6
begin_hunk_7_@_ZN4glTF11AssetWriter12WriteObjectsINS_9AnimationEEEvRNS_8LazyDictIT_EE:bb.a
  %i.nd = trunc i64 %i.nc to i32
  %.not.i.i = icmp eq ptr %i.na, null
  %i.ne = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.na, !prof !6
  %i.nf = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.ng = load i32, ptr %.031, align 8            ; 3 uses
  %i.nh = load i32, ptr %i.li, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.ng, %i.nh
end_hunk_7
begin_hunk_8_@_ZN4glTF5WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_9AnimationERNS_11AssetWriterE:bb.a
  store ptr %i.dn, ptr %i.af, align 8
  store i32 16, ptr %i.ae, align 4
  %.pre.i.i.i.i = load i32, ptr %10, align 8
  %i.do = ptrtoint ptr %i.dg to i64
  %i.dp = or i64 %i.do, 289637751035265024
  %i.dq = inttoptr i64 %i.dp to ptr
  %i.dr = and i64 %i.dl, 281474976710655
  %i.ds = inttoptr i64 %i.dr to ptr
  %16 = zext i32 %.pre.i.i.i.i to i64
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.ds, i64 %16 ; 6 uses
  store i32 2, ptr %i.dt, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
end_hunk_8
begin_hunk_9_@_ZN4glTF11AssetWriter12WriteObjectsINS_6BufferEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lc = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.lf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lg = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.lh = inttoptr i64 %i.lg to ptr
end_hunk_9
begin_hunk_10_@_ZN4glTF11AssetWriter12WriteObjectsINS_6BufferEEEvRNS_8LazyDictIT_EE:bb.a
  %i.lx = load ptr, ptr %i.lw, align 8            ; 2 uses
  %i.ly = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lx) #37, !noalias !569
  %i.lz = trunc i64 %i.ly to i32
  %i.ma = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.mb = load ptr, ptr %i.lf, align 8
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = and i64 %i.mc, 281474976710655
end_hunk_10
begin_hunk_11_@_ZN4glTF11AssetWriter12WriteObjectsINS_6BufferEEEvRNS_8LazyDictIT_EE:bb.a
  %i.mk = or i64 %i.mi, %i.mj
  %i.ml = inttoptr i64 %i.mk to ptr
  store ptr %i.ml, ptr %i.lf, align 8
  store i32 16, ptr %i.le, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mm = ptrtoint ptr %i.lx to i64
  %i.mn = or i64 %i.mm, 289637751035265024
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = and i64 %i.mj, 281474976710655
  %i.mq = inttoptr i64 %i.mp to ptr
  %7 = zext i32 %.pre.i.i.i.i to i64
  %i.mr = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %7 ; 6 uses
  store i32 4, ptr %i.mr, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
end_hunk_11
begin_hunk_12_@_ZN4glTF11AssetWriter12WriteObjectsINS_6BufferEEEvRNS_8LazyDictIT_EE:bb.a
  %i.nd = trunc i64 %i.nc to i32
  %.not.i.i = icmp eq ptr %i.na, null
  %i.ne = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.na, !prof !6
  %i.nf = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.ng = load i32, ptr %.031, align 8            ; 3 uses
  %i.nh = load i32, ptr %i.li, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.ng, %i.nh
end_hunk_12
begin_hunk_13_@_ZN4glTF11AssetWriter12WriteObjectsINS_10BufferViewEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lc = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.lf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lg = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.lh = inttoptr i64 %i.lg to ptr
end_hunk_13
begin_hunk_14_@_ZN4glTF11AssetWriter12WriteObjectsINS_10BufferViewEEEvRNS_8LazyDictIT_EE:bb.a
  %i.lx = load ptr, ptr %i.lw, align 8            ; 2 uses
  %i.ly = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lx) #37, !noalias !597
  %i.lz = trunc i64 %i.ly to i32
  %i.ma = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.mb = load ptr, ptr %i.lf, align 8
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = and i64 %i.mc, 281474976710655
end_hunk_14
begin_hunk_15_@_ZN4glTF11AssetWriter12WriteObjectsINS_10BufferViewEEEvRNS_8LazyDictIT_EE:bb.a
  %i.mk = or i64 %i.mi, %i.mj
  %i.ml = inttoptr i64 %i.mk to ptr
  store ptr %i.ml, ptr %i.lf, align 8
  store i32 16, ptr %i.le, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mm = ptrtoint ptr %i.lx to i64
  %i.mn = or i64 %i.mm, 289637751035265024
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = and i64 %i.mj, 281474976710655
  %i.mq = inttoptr i64 %i.mp to ptr
  %7 = zext i32 %.pre.i.i.i.i to i64
  %i.mr = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %7 ; 6 uses
  store i32 4, ptr %i.mr, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
end_hunk_15
begin_hunk_16_@_ZN4glTF11AssetWriter12WriteObjectsINS_10BufferViewEEEvRNS_8LazyDictIT_EE:bb.a
  %i.nd = trunc i64 %i.nc to i32
  %.not.i.i = icmp eq ptr %i.na, null
  %i.ne = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.na, !prof !6
  %i.nf = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.ng = load i32, ptr %.031, align 8            ; 3 uses
  %i.nh = load i32, ptr %i.li, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.ng, %i.nh
end_hunk_16
begin_hunk_17_@_ZN4glTF11AssetWriter12WriteObjectsINS_5ImageEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lc = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.lf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lg = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.lh = inttoptr i64 %i.lg to ptr
end_hunk_17
begin_hunk_18_@_ZN4glTF11AssetWriter12WriteObjectsINS_5ImageEEEvRNS_8LazyDictIT_EE:bb.a
  %i.lx = load ptr, ptr %i.lw, align 8            ; 2 uses
  %i.ly = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lx) #37, !noalias !650
  %i.lz = trunc i64 %i.ly to i32
  %i.ma = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.mb = load ptr, ptr %i.lf, align 8
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = and i64 %i.mc, 281474976710655
end_hunk_18
begin_hunk_19_@_ZN4glTF11AssetWriter12WriteObjectsINS_5ImageEEEvRNS_8LazyDictIT_EE:bb.a
  %i.mk = or i64 %i.mi, %i.mj
  %i.ml = inttoptr i64 %i.mk to ptr
  store ptr %i.ml, ptr %i.lf, align 8
  store i32 16, ptr %i.le, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mm = ptrtoint ptr %i.lx to i64
  %i.mn = or i64 %i.mm, 289637751035265024
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = and i64 %i.mj, 281474976710655
  %i.mq = inttoptr i64 %i.mp to ptr
  %7 = zext i32 %.pre.i.i.i.i to i64
  %i.mr = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %7 ; 6 uses
  store i32 4, ptr %i.mr, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
end_hunk_19
begin_hunk_20_@_ZN4glTF11AssetWriter12WriteObjectsINS_5ImageEEEvRNS_8LazyDictIT_EE:bb.a
  %i.nd = trunc i64 %i.nc to i32
  %.not.i.i = icmp eq ptr %i.na, null
  %i.ne = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.na, !prof !6
  %i.nf = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.ng = load i32, ptr %.031, align 8            ; 3 uses
  %i.nh = load i32, ptr %i.li, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.ng, %i.nh
end_hunk_20
begin_hunk_21_@_ZN4glTF11AssetWriter12WriteObjectsINS_8MaterialEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lc = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.lf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lg = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.lh = inttoptr i64 %i.lg to ptr
end_hunk_21
begin_hunk_22_@_ZN4glTF11AssetWriter12WriteObjectsINS_8MaterialEEEvRNS_8LazyDictIT_EE:bb.a
  %i.lx = load ptr, ptr %i.lw, align 8            ; 2 uses
  %i.ly = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lx) #37, !noalias !687
  %i.lz = trunc i64 %i.ly to i32
  %i.ma = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.mb = load ptr, ptr %i.lf, align 8
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = and i64 %i.mc, 281474976710655
end_hunk_22
begin_hunk_23_@_ZN4glTF11AssetWriter12WriteObjectsINS_8MaterialEEEvRNS_8LazyDictIT_EE:bb.a
  %i.mk = or i64 %i.mi, %i.mj
  %i.ml = inttoptr i64 %i.mk to ptr
  store ptr %i.ml, ptr %i.lf, align 8
  store i32 16, ptr %i.le, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mm = ptrtoint ptr %i.lx to i64
  %i.mn = or i64 %i.mm, 289637751035265024
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = and i64 %i.mj, 281474976710655
  %i.mq = inttoptr i64 %i.mp to ptr
  %7 = zext i32 %.pre.i.i.i.i to i64
  %i.mr = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %7 ; 6 uses
  store i32 4, ptr %i.mr, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
end_hunk_23
begin_hunk_24_@_ZN4glTF11AssetWriter12WriteObjectsINS_8MaterialEEEvRNS_8LazyDictIT_EE:bb.a
  %i.nd = trunc i64 %i.nc to i32
  %.not.i.i = icmp eq ptr %i.na, null
  %i.ne = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.na, !prof !6
  %i.nf = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.ng = load i32, ptr %.031, align 8            ; 3 uses
  %i.nh = load i32, ptr %i.li, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.ng, %i.nh
end_hunk_24
begin_hunk_25_@_ZN4glTF11AssetWriter12WriteObjectsINS_4MeshEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lc = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.lf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lg = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.lh = inttoptr i64 %i.lg to ptr
end_hunk_25
begin_hunk_26_@_ZN4glTF11AssetWriter12WriteObjectsINS_4MeshEEEvRNS_8LazyDictIT_EE:bb.a
  %i.lx = load ptr, ptr %i.lw, align 8            ; 2 uses
  %i.ly = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lx) #37, !noalias !721
  %i.lz = trunc i64 %i.ly to i32
  %i.ma = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.mb = load ptr, ptr %i.lf, align 8
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = and i64 %i.mc, 281474976710655
end_hunk_26
begin_hunk_27_@_ZN4glTF11AssetWriter12WriteObjectsINS_4MeshEEEvRNS_8LazyDictIT_EE:bb.a
  %i.mk = or i64 %i.mi, %i.mj
  %i.ml = inttoptr i64 %i.mk to ptr
  store ptr %i.ml, ptr %i.lf, align 8
  store i32 16, ptr %i.le, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mm = ptrtoint ptr %i.lx to i64
  %i.mn = or i64 %i.mm, 289637751035265024
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = and i64 %i.mj, 281474976710655
  %i.mq = inttoptr i64 %i.mp to ptr
  %7 = zext i32 %.pre.i.i.i.i to i64
  %i.mr = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %7 ; 6 uses
  store i32 4, ptr %i.mr, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
end_hunk_27
begin_hunk_28_@_ZN4glTF11AssetWriter12WriteObjectsINS_4MeshEEEvRNS_8LazyDictIT_EE:bb.a
  %i.nd = trunc i64 %i.nc to i32
  %.not.i.i = icmp eq ptr %i.na, null
  %i.ne = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.na, !prof !6
  %i.nf = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.ng = load i32, ptr %.031, align 8            ; 3 uses
  %i.nh = load i32, ptr %i.li, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.ng, %i.nh
end_hunk_28
begin_hunk_29_@_ZN4glTF5WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_4MeshERNS_11AssetWriterE:bb.a
  %.pre.i.i.i201 = load i32, ptr %0, align 8
  br label %bb.bv

.noexc.i208:                                      ; preds = %.lr.ph381, %bb.bt
  %i.rj = phi ptr [ %i.pr, %.lr.ph381 ], [ %i.zs, %bb.bt ]
  %.063380 = phi i64 [ 0, %.lr.ph381 ], [ %i.zo, %bb.bt ] ; 4 uses
  %.sroa.9.0378 = phi i32 [ %i.pj, %.lr.ph381 ], [ %.sroa.9.2, %bb.bt ] ; 8 uses
end_hunk_29
begin_hunk_30_@_ZN4glTF5WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_4MeshERNS_11AssetWriterE:bb.a
  store ptr %i.rz, ptr %i.pv, align 8
  store i32 16, ptr %i.pu, align 4
  %.pre.i.i.i209 = load i32, ptr %9, align 8
  %13 = and i64 %i.rx, 281474976710655
  %14 = inttoptr i64 %13 to ptr
  %15 = zext i32 %.pre.i.i.i209 to i64
  %i.sa = getelementptr inbounds nuw [32 x i8], ptr %14, i64 %15 ; 5 uses
  store i32 4, ptr %i.sa, align 8
  %.sroa.6.0..sroa_idx.i206 = getelementptr inbounds nuw i8, ptr %i.sa, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i206, align 4
end_hunk_30
begin_hunk_31_@_ZN4glTF11AssetWriter12WriteObjectsINS_4NodeEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lc = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.lf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lg = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.lh = inttoptr i64 %i.lg to ptr
end_hunk_31
begin_hunk_32_@_ZN4glTF11AssetWriter12WriteObjectsINS_4NodeEEEvRNS_8LazyDictIT_EE:bb.a
  %i.lx = load ptr, ptr %i.lw, align 8            ; 2 uses
  %i.ly = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lx) #37, !noalias !763
  %i.lz = trunc i64 %i.ly to i32
  %i.ma = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.mb = load ptr, ptr %i.lf, align 8
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = and i64 %i.mc, 281474976710655
end_hunk_32
begin_hunk_33_@_ZN4glTF11AssetWriter12WriteObjectsINS_4NodeEEEvRNS_8LazyDictIT_EE:bb.a
  %i.mk = or i64 %i.mi, %i.mj
  %i.ml = inttoptr i64 %i.mk to ptr
  store ptr %i.ml, ptr %i.lf, align 8
  store i32 16, ptr %i.le, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mm = ptrtoint ptr %i.lx to i64
  %i.mn = or i64 %i.mm, 289637751035265024
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = and i64 %i.mj, 281474976710655
  %i.mq = inttoptr i64 %i.mp to ptr
  %7 = zext i32 %.pre.i.i.i.i to i64
  %i.mr = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %7 ; 6 uses
  store i32 4, ptr %i.mr, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
end_hunk_33
begin_hunk_34_@_ZN4glTF11AssetWriter12WriteObjectsINS_4NodeEEEvRNS_8LazyDictIT_EE:bb.a
  %i.nd = trunc i64 %i.nc to i32
  %.not.i.i = icmp eq ptr %i.na, null
  %i.ne = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.na, !prof !6
  %i.nf = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.ng = load i32, ptr %.031, align 8            ; 3 uses
  %i.nh = load i32, ptr %i.li, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.ng, %i.nh
end_hunk_34
begin_hunk_35_@_ZN4glTF11AssetWriter12WriteObjectsINS_7SamplerEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lc = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.lf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lg = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.lh = inttoptr i64 %i.lg to ptr
end_hunk_35
begin_hunk_36_@_ZN4glTF11AssetWriter12WriteObjectsINS_7SamplerEEEvRNS_8LazyDictIT_EE:bb.a
  %i.lx = load ptr, ptr %i.lw, align 8            ; 2 uses
  %i.ly = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lx) #37, !noalias !803
  %i.lz = trunc i64 %i.ly to i32
  %i.ma = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.mb = load ptr, ptr %i.lf, align 8
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = and i64 %i.mc, 281474976710655
end_hunk_36
begin_hunk_37_@_ZN4glTF11AssetWriter12WriteObjectsINS_7SamplerEEEvRNS_8LazyDictIT_EE:bb.a
  %i.mk = or i64 %i.mi, %i.mj
  %i.ml = inttoptr i64 %i.mk to ptr
  store ptr %i.ml, ptr %i.lf, align 8
  store i32 16, ptr %i.le, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mm = ptrtoint ptr %i.lx to i64
  %i.mn = or i64 %i.mm, 289637751035265024
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = and i64 %i.mj, 281474976710655
  %i.mq = inttoptr i64 %i.mp to ptr
  %7 = zext i32 %.pre.i.i.i.i to i64
  %i.mr = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %7 ; 6 uses
  store i32 4, ptr %i.mr, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
end_hunk_37
begin_hunk_38_@_ZN4glTF11AssetWriter12WriteObjectsINS_7SamplerEEEvRNS_8LazyDictIT_EE:bb.a
  %i.nd = trunc i64 %i.nc to i32
  %.not.i.i = icmp eq ptr %i.na, null
  %i.ne = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.na, !prof !6
  %i.nf = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.ng = load i32, ptr %.031, align 8            ; 3 uses
  %i.nh = load i32, ptr %i.li, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.ng, %i.nh
end_hunk_38
begin_hunk_39_@_ZN4glTF11AssetWriter12WriteObjectsINS_5SceneEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lc = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.lf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.lg = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.lh = inttoptr i64 %i.lg to ptr
end_hunk_39
begin_hunk_40_@_ZN4glTF11AssetWriter12WriteObjectsINS_5SceneEEEvRNS_8LazyDictIT_EE:bb.a
  %i.lx = load ptr, ptr %i.lw, align 8            ; 2 uses
  %i.ly = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lx) #37, !noalias !828
  %i.lz = trunc i64 %i.ly to i32
  %i.ma = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.mb = load ptr, ptr %i.lf, align 8
  %i.mc = ptrtoint ptr %i.mb to i64               ; 2 uses
  %i.md = and i64 %i.mc, 281474976710655
end_hunk_40
begin_hunk_41_@_ZN4glTF11AssetWriter12WriteObjectsINS_5SceneEEEvRNS_8LazyDictIT_EE:bb.a
  %i.mi = or i64 %i.mg, %i.mh
  %i.mj = inttoptr i64 %i.mi to ptr
  store ptr %i.mj, ptr %i.lf, align 8
  store i32 16, ptr %i.le, align 4
  %i.mk = ptrtoint ptr %i.lx to i64
  %i.ml = or i64 %i.mk, 289637751035265024
  %i.mm = inttoptr i64 %i.ml to ptr
end_hunk_41
begin_hunk_42_@_ZN4glTF11AssetWriter12WriteObjectsINS_5SceneEEEvRNS_8LazyDictIT_EE:bb.a
bb.ab:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit, %bb.aa
  %i.mq = phi ptr [ %.pre148, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9AddMemberENS_16GenericStringRefIcEES8_RS5_.exit ], [ %i.ls, %bb.aa ]
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 72
  %i.ms = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  call fastcc void @_ZN4glTF12_GLOBAL__N_113AddRefsVectorINS_4NodeEEEvRN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEEPKcRSt6vectorIN10glTFCommon3RefIT_EESaISI_EERS9_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.203, ptr noundef nonnull align 8 dereferenceable(24) %i.mr, ptr noundef nonnull align 8 dereferenceable(24) %i.ms)
  %i.mt = load ptr, ptr %i.a, align 8
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %.0143
end_hunk_42
begin_hunk_43_@_ZN4glTF11AssetWriter12WriteObjectsINS_5SceneEEEvRNS_8LazyDictIT_EE:bb.a
  %i.na = trunc i64 %i.mz to i32
  %.not.i.i = icmp eq ptr %i.mx, null
  %i.nb = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.mx, !prof !6
  %i.nc = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.nd = load i32, ptr %.031, align 8            ; 3 uses
  %i.ne = load i32, ptr %i.li, align 4            ; 6 uses
  %.not.i.i.i117 = icmp ult i32 %i.nd, %i.ne
end_hunk_43
begin_hunk_44_@_ZN4glTF11AssetWriter12WriteObjectsINS_4SkinEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lc = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.lf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lg = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.lh = inttoptr i64 %i.lg to ptr
end_hunk_44
begin_hunk_45_@_ZN4glTF11AssetWriter12WriteObjectsINS_4SkinEEEvRNS_8LazyDictIT_EE:bb.a
  %i.lx = load ptr, ptr %i.lw, align 8            ; 2 uses
  %i.ly = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lx) #37, !noalias !853
  %i.lz = trunc i64 %i.ly to i32
  %i.ma = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.mb = load ptr, ptr %i.lf, align 8
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = and i64 %i.mc, 281474976710655
end_hunk_45
begin_hunk_46_@_ZN4glTF11AssetWriter12WriteObjectsINS_4SkinEEEvRNS_8LazyDictIT_EE:bb.a
  %i.mk = or i64 %i.mi, %i.mj
  %i.ml = inttoptr i64 %i.mk to ptr
  store ptr %i.ml, ptr %i.lf, align 8
  store i32 16, ptr %i.le, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mm = ptrtoint ptr %i.lx to i64
  %i.mn = or i64 %i.mm, 289637751035265024
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = and i64 %i.mj, 281474976710655
  %i.mq = inttoptr i64 %i.mp to ptr
  %7 = zext i32 %.pre.i.i.i.i to i64
  %i.mr = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %7 ; 6 uses
  store i32 4, ptr %i.mr, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
end_hunk_46
begin_hunk_47_@_ZN4glTF11AssetWriter12WriteObjectsINS_4SkinEEEvRNS_8LazyDictIT_EE:bb.a
  %i.nd = trunc i64 %i.nc to i32
  %.not.i.i = icmp eq ptr %i.na, null
  %i.ne = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.na, !prof !6
  %i.nf = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.ng = load i32, ptr %.031, align 8            ; 3 uses
  %i.nh = load i32, ptr %i.li, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.ng, %i.nh
end_hunk_47
begin_hunk_48_@_ZN4glTF11AssetWriter12WriteObjectsINS_7TextureEEEvRNS_8LazyDictIT_EE:bb.a

.lr.ph:                                           ; preds = %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit88
  %i.lc = getelementptr inbounds nuw i8, ptr %6, i64 14
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.lf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.lg = or i64 ptrtoint (ptr @.str.88 to i64), 289637751035265024
  %i.lh = inttoptr i64 %i.lg to ptr
end_hunk_48
begin_hunk_49_@_ZN4glTF11AssetWriter12WriteObjectsINS_7TextureEEEvRNS_8LazyDictIT_EE:bb.a
  %i.lx = load ptr, ptr %i.lw, align 8            ; 2 uses
  %i.ly = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lx) #37, !noalias !885
  %i.lz = trunc i64 %i.ly to i32
  %i.ma = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.mb = load ptr, ptr %i.lf, align 8
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = and i64 %i.mc, 281474976710655
end_hunk_49
begin_hunk_50_@_ZN4glTF11AssetWriter12WriteObjectsINS_7TextureEEEvRNS_8LazyDictIT_EE:bb.a
  %i.mk = or i64 %i.mi, %i.mj
  %i.ml = inttoptr i64 %i.mk to ptr
  store ptr %i.ml, ptr %i.lf, align 8
  store i32 16, ptr %i.le, align 4
  %.pre.i.i.i.i = load i32, ptr %6, align 8
  %i.mm = ptrtoint ptr %i.lx to i64
  %i.mn = or i64 %i.mm, 289637751035265024
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = and i64 %i.mj, 281474976710655
  %i.mq = inttoptr i64 %i.mp to ptr
  %7 = zext i32 %.pre.i.i.i.i to i64
  %i.mr = getelementptr inbounds nuw [32 x i8], ptr %i.mq, i64 %7 ; 6 uses
  store i32 4, ptr %i.mr, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
end_hunk_50
begin_hunk_51_@_ZN4glTF11AssetWriter12WriteObjectsINS_7TextureEEEvRNS_8LazyDictIT_EE:bb.a
  %i.nd = trunc i64 %i.nc to i32
  %.not.i.i = icmp eq ptr %i.na, null
  %i.ne = select i1 %.not.i.i, ptr @_ZN9rapidjson16GenericStringRefIcE11emptyStringE, ptr %i.na, !prof !6
  %i.nf = load ptr, ptr %i.ld, align 8, !nonnull !16, !align !112
  %i.ng = load i32, ptr %.031, align 8            ; 3 uses
  %i.nh = load i32, ptr %i.li, align 4            ; 6 uses
  %.not.i.i.i116 = icmp ult i32 %i.ng, %i.nh
end_hunk_51
