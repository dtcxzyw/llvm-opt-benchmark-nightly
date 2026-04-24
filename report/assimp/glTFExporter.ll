inline.NumInlined: 6973
inline.NumDeleted: 2254
begin_hunk_0_@_ZN4glTF5WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_9AnimationERNS_11AssetWriterE:bb.a

_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit.thread: ; preds = %bb.v, %.noexc.i.i101, %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit
  %.sroa.30.0 = phi ptr [ %i.jf, %.noexc.i.i101 ], [ inttoptr (i64 844424930131968 to ptr), %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit ], [ inttoptr (i64 844424930131968 to ptr), %bb.v ] ; 4 uses
  %.sroa.22.0 = phi i64 [ 512, %.noexc.i.i101 ], [ 0, %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit ], [ 0, %bb.v ]
  %.not445 = phi i1 [ true, %.noexc.i.i101 ], [ false, %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit ], [ false, %bb.v ]
  %.sroa.22.0.a = phi i32 [ 16, %.noexc.i.i101 ], [ 0, %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit ], [ 0, %bb.v ] ; 4 uses
  %.sroa.0242.0 = phi i64 [ 1, %.noexc.i.i101 ], [ 0, %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit ], [ 0, %bb.v ]
  %.sroa.0242.0.a = phi i32 [ 1, %.noexc.i.i101 ], [ 0, %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit ], [ 0, %bb.v ] ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.jp = load ptr, ptr %i.jo, align 8            ; 3 uses
  %.not.i105 = icmp eq ptr %i.jp, null
end_hunk_0
begin_hunk_1_@_ZN4glTF5WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_9AnimationERNS_11AssetWriterE:bb.a
  %i.kk = ptrtoint ptr %.sroa.30.0 to i64         ; 2 uses
  %i.kl = and i64 %i.kk, 281474976710655
  %i.km = inttoptr i64 %i.kl to ptr
  %i.kn = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.kj, ptr noundef %i.km, i64 noundef %.sroa.22.0, i64 noundef 512)
  %i.ko = and i64 %i.kk, -281474976710656
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = or i64 %i.ko, %i.kp
end_hunk_1
begin_hunk_2_@_ZN4glTF5WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_9AnimationERNS_11AssetWriterE:bb.a
  %i.kx = ptrtoint ptr %.sroa.30.5 to i64
  %i.ky = and i64 %i.kx, 281474976710655
  %i.kz = inttoptr i64 %i.ky to ptr
  %i.la = getelementptr inbounds nuw [32 x i8], ptr %i.kz, i64 %.sroa.0242.0 ; 6 uses
  store i32 8, ptr %i.la, align 8
  %.sroa.6.0..sroa_idx.i.i110 = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i110, align 4
end_hunk_2
