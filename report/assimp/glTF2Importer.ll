inline.NumInlined: 10360
inline.NumDeleted: 3521
begin_hunk_0_@_ZN6Assimp13glTF2Importer12ImportMeshesERN5glTF25AssetE:bb.a
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.ib
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 296
  %i.in = load i64, ptr %i.im, align 8            ; 9 uses
  %i.io = ptrtoint ptr %.sroa.35.12198 to i64     ; 2 uses
  %i.ip = ptrtoint ptr %.sroa.0927.22197 to i64   ; 2 uses
  %i.iq = sub i64 %i.io, %i.ip                    ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp13glTF2Importer12ImportMeshesERN5glTF25AssetE:bb.a
  br i1 %i.is, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.it = sub nuw i64 %i.in, %i.ir                ; 5 uses
  %i.iu = ptrtoint ptr %.sroa.41.22199 to i64     ; 2 uses
  %i.iv = sub i64 %i.iu, %i.io
  %i.iw = ashr exact i64 %i.iv, 2                 ; 2 uses
  %i.ix = icmp ult i64 %i.ir, 2305843009213693952
  call void @llvm.assume(i1 %i.ix)
  %5 = sub nuw nsw i64 2305843009213693951, %i.ir
  %i.iy = icmp ule i64 %i.iw, %5
  call void @llvm.assume(i1 %i.iy)
  %.not28.i = icmp ult i64 %i.iw, %i.it
end_hunk_1
begin_hunk_2_@_ZN6Assimp13glTF2Importer12ImportMeshesERN5glTF25AssetE:bb.a
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.y:                                             ; preds = %bb.w
  %6 = icmp ugt i64 %i.in, 2305843009213693951
  br i1 %6, label %bb.z, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i

bb.z:                                             ; preds = %bb.y
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIcSaIcEE6resizeEm:bb.a
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %2 = sub nuw nsw i64 9223372036854775807, %i.f
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28.i = icmp ult i64 %i.l, %i.h
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIcSaIcEE6resizeEm:bb.a
  br label %_ZNSt6vectorIcSaIcEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %3 = icmp slt i64 %1, 0
  br i1 %3, label %bb.f, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
end_hunk_4
begin_hunk_5_@_ZN5glTF24Mesh4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE:bb.a
  br i1 %.not152, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE6resizeEm.exit169, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.km = add nsw i64 %i.ke, 1                    ; 5 uses
  %i.kn = icmp ugt i64 %i.km, %i.kl
  br i1 %i.kn, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  %i.ko = sub nuw nsw i64 %i.km, %i.kl            ; 10 uses
  %.not.i187 = icmp eq i64 %i.ko, 0
  br i1 %.not.i187, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE6resizeEm.exit169, label %bb.az

end_hunk_5
begin_hunk_6_@_ZN5glTF24Mesh4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE:bb.a
  %i.kt = ashr exact i64 %i.ks, 4                 ; 2 uses
  %i.ku = icmp ult i64 %i.kl, 576460752303423488
  call void @llvm.assume(i1 %i.ku)
  %5 = sub nuw nsw i64 576460752303423487, %i.kl
  %i.kv = icmp ule i64 %i.kt, %5
  call void @llvm.assume(i1 %i.kv)
  %.not28.i = icmp ult i64 %i.kt, %i.ko
end_hunk_6
begin_hunk_7_@_ZN5glTF24Mesh4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE:bb.a
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE6resizeEm.exit169

bb.ba:                                            ; preds = %bb.az
  %6 = icmp ugt i64 %i.km, 576460752303423487
  br i1 %6, label %bb.bb, label %_ZNKSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.bb:                                            ; preds = %bb.ba
end_hunk_7
begin_hunk_8_@_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %2 = sub nuw nsw i64 576460752303423487, %i.g   ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_8
begin_hunk_9_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 5                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 288230376151711744
  tail call void @llvm.assume(i1 %i.m)
  %2 = sub nuw nsw i64 288230376151711743, %i.g   ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_9
begin_hunk_10_@_ZNSt6vectorIfSaIfEE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %2 = sub nuw nsw i64 2305843009213693951, %i.g  ; 2 uses
  %i.n = icmp ule i64 %i.l, %2
  tail call void @llvm.assume(i1 %i.n)
  %.not28 = icmp ult i64 %i.l, %1
end_hunk_10
