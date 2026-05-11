inline.NumInlined: 512
inline.NumDeleted: 253
begin_hunk_0_@_ZN8facebook5velox22StringViewBufferHolder18getOwnedStringViewEPKci:bb.a
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 7 uses
  %6 = alloca %"class.boost::intrusive_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::optional", align 1     ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox22StringViewBufferHolder18getOwnedStringViewEPKci:bb.a
  %i.dh = call i64 asm sideeffect "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.dg) #17, !srcloc !68
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.4..4..4..sroa_idx, ptr align 1 %i.cp, i64 %i.dh, i1 false)
  %.8..8..8..sroa_idx58 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.8..8..8..fca.1.load.pre = load ptr, ptr %.8..8..8..sroa_idx58, align 8
  br label %_ZN8facebook5velox10StringViewC2EPKci.exit

bb.r:                                             ; preds = %bb.o
  %i.di = load i32, ptr %i.cp, align 1
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %i.di, ptr %.8..8..8..sroa_idx, align 4
  br label %_ZN8facebook5velox10StringViewC2EPKci.exit

_ZN8facebook5velox10StringViewC2EPKci.exit:       ; preds = %bb.p, %bb.q, %bb.r
  %.8..8..fca.1.load = phi ptr [ undef, %bb.p ], [ %.8..8..8..fca.1.load.pre, %bb.q ], [ %i.cp, %bb.r ]
  %.0..0..0..fca.0.load = load i64, ptr %5, align 8
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.0..0..0..fca.0.load, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.8..8..fca.1.load, 1
  ret { i64, ptr } %.fca.1.insert
}

end_hunk_1
