Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.03?download=true
inline.NumInlined: 2990
inline.NumDeleted: 909
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binary6FSBVecEBQ_:bb.a
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.y), !dbg !11843
  br label %bb.z, !dbg !11819

bb.z:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes32Alignment16EECsfISxE4fmY1Y_14polars_parquet.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes18Bytes16Alignment16EECsfISxE4fmY1Y_14polars_parquet.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes17Bytes12Alignment4EECsfISxE4fmY1Y_14polars_parquet.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes8Alignment8EECsfISxE4fmY1Y_14polars_parquet.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes4Alignment4EECsfISxE4fmY1Y_14polars_parquet.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes2Alignment2EECsfISxE4fmY1Y_14polars_parquet.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCs8774dFTUdNv_12polars_arrow5types13aligned_bytes16Bytes1Alignment1EECsfISxE4fmY1Y_14polars_parquet.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet.exit
  ret void, !dbg !11819
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested6dremel18BufferedDremelIterEBQ_(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !826 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11861
  invoke void @_RNvXs0_NtCs2mZqlW55729_12polars_utils15fixedringbufferINtB5_15FixedRingBufferNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested6dremel11DremelValueENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB1n_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils15fixedringbuffer15FixedRingBufferNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested6dremel11DremelValueEEB1V_.exit unwind label %bb.b, !dbg !11862

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11861
  %.val3 = load i64, ptr %i.c, align 8, !dbg !11861, !noundef !1984 ; 2 uses
  %i.d = icmp eq i64 %.val3, 0, !dbg !11863
  br i1 %i.d, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested6dremel5LevelEEB1q_.exit, label %bb.c, !dbg !11863

bb.c:                                             ; preds = %bb.b
  %.val2 = load ptr, ptr %0, align 8, !dbg !11861, !nonnull !1984, !noundef !1984
  %i.e = mul nuw nsw i64 %.val3, 56, !dbg !11864
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, -9223372036854775808) %i.e, i64 noundef 8) #34, !dbg !11865
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested6dremel5LevelEEB1q_.exit, !dbg !11866

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils15fixedringbuffer15FixedRingBufferNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested6dremel11DremelValueEEB1V_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11861
  %.val1 = load i64, ptr %i.f, align 8, !dbg !11861, !noundef !1984 ; 2 uses
  %i.g = icmp eq i64 %.val1, 0, !dbg !11867
  br i1 %i.g, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested6dremel5LevelEEB1q_.exit4, label %bb.d, !dbg !11867

bb.d:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils15fixedringbuffer15FixedRingBufferNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested6dremel11DremelValueEEB1V_.exit
  %.val = load ptr, ptr %0, align 8, !dbg !11861, !nonnull !1984, !noundef !1984
  %i.h = mul nuw nsw i64 %.val1, 56, !dbg !11868
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.h, i64 noundef 8) #34, !dbg !11869
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested6dremel5LevelEEB1q_.exit4, !dbg !11870

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested6dremel5LevelEEB1q_.exit4: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs2mZqlW55729_12polars_utils15fixedringbuffer15FixedRingBufferNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested6dremel11DremelValueEEB1V_.exit, %bb.d
  ret void, !dbg !11861

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxSNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow5write6nested6dremel5LevelEEB1q_.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b, !dbg !11861
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binary6FSBVecNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderEEBR_(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !834 {
bb.a:
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize17fixed_size_binary6FSBVecEBQ_(ptr noalias noundef align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.b, !dbg !11875

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11875
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(56) %i.b) #30
          to label %common.resume unwind label %bb.f, !dbg !11875

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !11875 ; 3 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECsfISxE4fmY1Y_14polars_parquet.exit unwind label %bb.d, !dbg !11876

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume unwind label %bb.e, !dbg !11877

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !11876
  unreachable, !dbg !11876

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op, !dbg !11875

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builder13BitmapBuilderECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c), !dbg !11878
  ret void, !dbg !11875

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #31, !dbg !11875
  unreachable, !dbg !11875
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj0_EBc_(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef writeonly align 2 captures(none) dereferenceable(32) initializes((0, 32)) %2) unnamed_addr #4 !dbg !11879 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %2, i8 0, i64 32, i1 false), !dbg !11882
  ret void, !dbg !11883
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj10_EBc_(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef writeonly align 2 captures(none) dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !11884 {
bb.a:
  %i.a = icmp samesign ugt i64 %1, 31, !dbg !11920
  br i1 %i.a, label %_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj10_E0Be_.exit91, label %bb.b, !dbg !11920, !prof !2217

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #35, !dbg !11921
  unreachable, !dbg !11921

_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj10_E0Be_.exit91: ; preds = %bb.a
  %i.b = load <8 x i16>, ptr %0, align 1, !dbg !11922
  store <8 x i16> %i.b, ptr %2, align 2, !dbg !11923
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11924
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !11925
  %i.e = load <8 x i16>, ptr %i.c, align 1, !dbg !11926
  store <8 x i16> %i.e, ptr %i.d, align 2, !dbg !11925
  ret void, !dbg !11927
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj1_EBc_(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef writeonly align 2 captures(none) dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !11928 {
bb.a:
  %i.a = icmp samesign ugt i64 %1, 1, !dbg !12051
  br i1 %i.a, label %_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj1_E0Be_.exit76, label %bb.b, !dbg !12051, !prof !2217

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #35, !dbg !12052
  unreachable, !dbg !12052

_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj1_E0Be_.exit76: ; preds = %bb.a
  %.sroa.02.0.copyload.i = load i16, ptr %0, align 1, !dbg !12053 ; 16 uses
  %i.b = lshr i16 %.sroa.02.0.copyload.i, 1, !dbg !12054
  %i.c = lshr i16 %.sroa.02.0.copyload.i, 2, !dbg !12055
  %i.d = lshr i16 %.sroa.02.0.copyload.i, 3, !dbg !12056
  %i.e = lshr i16 %.sroa.02.0.copyload.i, 4, !dbg !12057
  %i.f = lshr i16 %.sroa.02.0.copyload.i, 5, !dbg !12058
  %i.g = lshr i16 %.sroa.02.0.copyload.i, 6, !dbg !12059
  %i.h = lshr i16 %.sroa.02.0.copyload.i, 7, !dbg !12060
  %i.i = insertelement <8 x i16> poison, i16 %.sroa.02.0.copyload.i, i64 0, !dbg !12061
  %i.j = insertelement <8 x i16> %i.i, i16 %i.b, i64 1, !dbg !12061
  %i.k = insertelement <8 x i16> %i.j, i16 %i.c, i64 2, !dbg !12061
  %i.l = insertelement <8 x i16> %i.k, i16 %i.d, i64 3, !dbg !12061
  %i.m = insertelement <8 x i16> %i.l, i16 %i.e, i64 4, !dbg !12061
  %i.n = insertelement <8 x i16> %i.m, i16 %i.f, i64 5, !dbg !12061
  %i.o = insertelement <8 x i16> %i.n, i16 %i.g, i64 6, !dbg !12061
  %i.p = insertelement <8 x i16> %i.o, i16 %i.h, i64 7, !dbg !12061
  %i.q = and <8 x i16> %i.p, splat (i16 1), !dbg !12061
  store <8 x i16> %i.q, ptr %2, align 2, !dbg !12061
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !12062
  %i.s = lshr i16 %.sroa.02.0.copyload.i, 8, !dbg !12063
  %i.t = lshr i16 %.sroa.02.0.copyload.i, 9, !dbg !12064
  %i.u = lshr i16 %.sroa.02.0.copyload.i, 10, !dbg !12065
  %i.v = lshr i16 %.sroa.02.0.copyload.i, 11, !dbg !12066
  %i.w = lshr i16 %.sroa.02.0.copyload.i, 12, !dbg !12067
  %i.x = lshr i16 %.sroa.02.0.copyload.i, 13, !dbg !12068
  %i.y = lshr i16 %.sroa.02.0.copyload.i, 14, !dbg !12069
  %i.z = lshr i16 %.sroa.02.0.copyload.i, 15, !dbg !12070
  %i.aa = insertelement <8 x i16> poison, i16 %i.s, i64 0, !dbg !12062
  %i.ab = insertelement <8 x i16> %i.aa, i16 %i.t, i64 1, !dbg !12062
  %i.ac = insertelement <8 x i16> %i.ab, i16 %i.u, i64 2, !dbg !12062
  %i.ad = insertelement <8 x i16> %i.ac, i16 %i.v, i64 3, !dbg !12062
  %i.ae = insertelement <8 x i16> %i.ad, i16 %i.w, i64 4, !dbg !12062
  %i.af = insertelement <8 x i16> %i.ae, i16 %i.x, i64 5, !dbg !12062
  %i.ag = insertelement <8 x i16> %i.af, i16 %i.y, i64 6, !dbg !12062
  %i.ah = insertelement <8 x i16> %i.ag, i16 %i.z, i64 7, !dbg !12062
  %i.ai = and <8 x i16> %i.ah, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1>, !dbg !12062
  store <8 x i16> %i.ai, ptr %i.r, align 2, !dbg !12062
  ret void, !dbg !12071
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj2_EBc_(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef writeonly align 2 captures(none) dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !12072 {
bb.a:
  %i.a = icmp samesign ugt i64 %1, 3, !dbg !12206
  br i1 %i.a, label %_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj2_E0Be_.exit91, label %bb.b, !dbg !12206, !prof !2217

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #35, !dbg !12207
  unreachable, !dbg !12207

_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj2_E0Be_.exit91: ; preds = %bb.a
  %.sroa.02.0.copyload.i = load i16, ptr %0, align 1, !dbg !12208 ; 8 uses
  %i.b = lshr i16 %.sroa.02.0.copyload.i, 2, !dbg !12209
  %i.c = lshr i16 %.sroa.02.0.copyload.i, 4, !dbg !12210
  %i.d = lshr i16 %.sroa.02.0.copyload.i, 6, !dbg !12211
  %i.e = lshr i16 %.sroa.02.0.copyload.i, 8, !dbg !12212
  %i.f = lshr i16 %.sroa.02.0.copyload.i, 10, !dbg !12213
  %i.g = lshr i16 %.sroa.02.0.copyload.i, 12, !dbg !12214
  %i.h = lshr i16 %.sroa.02.0.copyload.i, 14, !dbg !12215
  %i.i = insertelement <8 x i16> poison, i16 %.sroa.02.0.copyload.i, i64 0, !dbg !12216
  %i.j = insertelement <8 x i16> %i.i, i16 %i.b, i64 1, !dbg !12216
  %i.k = insertelement <8 x i16> %i.j, i16 %i.c, i64 2, !dbg !12216
  %i.l = insertelement <8 x i16> %i.k, i16 %i.d, i64 3, !dbg !12216
  %i.m = insertelement <8 x i16> %i.l, i16 %i.e, i64 4, !dbg !12216
  %i.n = insertelement <8 x i16> %i.m, i16 %i.f, i64 5, !dbg !12216
  %i.o = insertelement <8 x i16> %i.n, i16 %i.g, i64 6, !dbg !12216
  %i.p = insertelement <8 x i16> %i.o, i16 %i.h, i64 7, !dbg !12216
  %i.q = and <8 x i16> %i.p, <i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 -1>, !dbg !12216
  store <8 x i16> %i.q, ptr %2, align 2, !dbg !12216
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !12217
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !12218
  %.sroa.02.0.copyload.i69 = load i16, ptr %i.r, align 1, !dbg !12219 ; 8 uses
  %i.s = lshr i16 %.sroa.02.0.copyload.i69, 2, !dbg !12220
  %i.t = lshr i16 %.sroa.02.0.copyload.i69, 4, !dbg !12221
  %i.u = lshr i16 %.sroa.02.0.copyload.i69, 6, !dbg !12222
  %i.v = lshr i16 %.sroa.02.0.copyload.i69, 8, !dbg !12223
  %i.w = lshr i16 %.sroa.02.0.copyload.i69, 10, !dbg !12224
  %i.x = lshr i16 %.sroa.02.0.copyload.i69, 12, !dbg !12225
  %i.y = lshr i16 %.sroa.02.0.copyload.i69, 14, !dbg !12226
  %i.z = insertelement <8 x i16> poison, i16 %.sroa.02.0.copyload.i69, i64 0, !dbg !12218
  %i.aa = insertelement <8 x i16> %i.z, i16 %i.s, i64 1, !dbg !12218
  %i.ab = insertelement <8 x i16> %i.aa, i16 %i.t, i64 2, !dbg !12218
  %i.ac = insertelement <8 x i16> %i.ab, i16 %i.u, i64 3, !dbg !12218
  %i.ad = insertelement <8 x i16> %i.ac, i16 %i.v, i64 4, !dbg !12218
  %i.ae = insertelement <8 x i16> %i.ad, i16 %i.w, i64 5, !dbg !12218
  %i.af = insertelement <8 x i16> %i.ae, i16 %i.x, i64 6, !dbg !12218
  %i.ag = insertelement <8 x i16> %i.af, i16 %i.y, i64 7, !dbg !12218
  %i.ah = and <8 x i16> %i.ag, <i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 3, i16 -1>, !dbg !12218
  store <8 x i16> %i.ah, ptr %3, align 2, !dbg !12218
  ret void, !dbg !12227
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj3_EBc_(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef writeonly align 2 captures(none) dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !12228 {
bb.a:
  %i.a = icmp samesign ugt i64 %1, 5, !dbg !12375
  br i1 %i.a, label %_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj3_E0Be_.exit101, label %bb.b, !dbg !12375, !prof !2217

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #35, !dbg !12376
  unreachable, !dbg !12376

_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj3_E0Be_.exit101: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2, !dbg !12377
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !12378
  %.sroa.02.0.copyload.i = load i16, ptr %0, align 1, !dbg !12379 ; 6 uses
  %i.d = and i16 %.sroa.02.0.copyload.i, 7, !dbg !12380
  store i16 %i.d, ptr %2, align 2, !dbg !12380
  %i.e = lshr i16 %.sroa.02.0.copyload.i, 3, !dbg !12381
  %i.f = lshr i16 %.sroa.02.0.copyload.i, 6, !dbg !12382
  %i.g = lshr i16 %.sroa.02.0.copyload.i, 9, !dbg !12383
  %i.h = lshr i16 %.sroa.02.0.copyload.i, 12, !dbg !12384
  %i.i = lshr i16 %.sroa.02.0.copyload.i, 15, !dbg !12385
  %.sroa.02.0.copyload.i67 = load i16, ptr %i.c, align 1, !dbg !12386 ; 6 uses
  %.scalar = shl i16 %.sroa.02.0.copyload.i67, 1, !dbg !12387
  %.scalar119 = and i16 %.scalar, 6, !dbg !12388
  %i.j = insertelement <8 x i16> <i16 7, i16 7, i16 7, i16 7, i16 poison, i16 7, i16 7, i16 7>, i16 %.scalar119, i64 4, !dbg !12388 ; 2 uses
  %i.k = lshr i16 %.sroa.02.0.copyload.i67, 2, !dbg !12389
  %i.l = lshr i16 %.sroa.02.0.copyload.i67, 5, !dbg !12390
  %i.m = lshr i16 %.sroa.02.0.copyload.i67, 8, !dbg !12391
  %i.n = insertelement <8 x i16> poison, i16 %i.e, i64 0, !dbg !12377
  %i.o = insertelement <8 x i16> %i.n, i16 %i.f, i64 1, !dbg !12377
  %i.p = insertelement <8 x i16> %i.o, i16 %i.g, i64 2, !dbg !12377
  %i.q = insertelement <8 x i16> %i.p, i16 %i.h, i64 3, !dbg !12377
  %i.r = insertelement <8 x i16> %i.q, i16 %i.i, i64 4, !dbg !12377
  %i.s = insertelement <8 x i16> %i.r, i16 %i.k, i64 5, !dbg !12377
  %i.t = insertelement <8 x i16> %i.s, i16 %i.l, i64 6, !dbg !12377
  %i.u = insertelement <8 x i16> %i.t, i16 %i.m, i64 7, !dbg !12377 ; 2 uses
  %i.v = and <8 x i16> %i.u, %i.j, !dbg !12377
  %i.w = or disjoint <8 x i16> %i.u, %i.j, !dbg !12377
  %i.x = shufflevector <8 x i16> %i.v, <8 x i16> %i.w, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 5, i32 6, i32 7>, !dbg !12377
  store <8 x i16> %i.x, ptr %i.b, align 2, !dbg !12377
  %i.y = lshr i16 %.sroa.02.0.copyload.i67, 11, !dbg !12392
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 18, !dbg !12393
  %i.aa = and i16 %i.y, 7, !dbg !12393
  store i16 %i.aa, ptr %i.z, align 2, !dbg !12393
  %i.ab = lshr i16 %.sroa.02.0.copyload.i67, 14, !dbg !12394
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !12395
  %.sroa.02.0.copyload.i85 = load i16, ptr %i.ac, align 1, !dbg !12396 ; 6 uses
  %i.ad = shl i16 %.sroa.02.0.copyload.i85, 2, !dbg !12397
  %i.ae = and i16 %i.ad, 4, !dbg !12398
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 20, !dbg !12399
  %i.ag = or disjoint i16 %i.ae, %i.ab, !dbg !12399
  store i16 %i.ag, ptr %i.af, align 2, !dbg !12399
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 22, !dbg !12400
  %i.ai = lshr i16 %.sroa.02.0.copyload.i85, 1, !dbg !12401
  %i.aj = lshr i16 %.sroa.02.0.copyload.i85, 4, !dbg !12402
  %i.ak = lshr i16 %.sroa.02.0.copyload.i85, 7, !dbg !12403
  %i.al = lshr i16 %.sroa.02.0.copyload.i85, 10, !dbg !12404
  %i.am = insertelement <4 x i16> poison, i16 %i.ai, i64 0, !dbg !12400
  %i.an = insertelement <4 x i16> %i.am, i16 %i.aj, i64 1, !dbg !12400
  %i.ao = insertelement <4 x i16> %i.an, i16 %i.ak, i64 2, !dbg !12400
  %i.ap = insertelement <4 x i16> %i.ao, i16 %i.al, i64 3, !dbg !12400
  %i.aq = and <4 x i16> %i.ap, splat (i16 7), !dbg !12400
  store <4 x i16> %i.aq, ptr %i.ah, align 2, !dbg !12400
  %i.ar = lshr i16 %.sroa.02.0.copyload.i85, 13, !dbg !12405
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 30, !dbg !12406
  store i16 %i.ar, ptr %i.as, align 2, !dbg !12406
  ret void, !dbg !12407
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj4_EBc_(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef writeonly align 2 captures(none) dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !12408 {
bb.a:
  %i.a = icmp samesign ugt i64 %1, 7, !dbg !12554
  br i1 %i.a, label %_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj4_E0Be_.exit91, label %bb.b, !dbg !12554, !prof !2217

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #35, !dbg !12555
  unreachable, !dbg !12555

_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj4_E0Be_.exit91: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !12556
  %.sroa.02.0.copyload.i = load i16, ptr %0, align 1, !dbg !12557 ; 4 uses
  %i.c = lshr i16 %.sroa.02.0.copyload.i, 4, !dbg !12558
  %i.d = lshr i16 %.sroa.02.0.copyload.i, 8, !dbg !12559
  %i.e = lshr i16 %.sroa.02.0.copyload.i, 12, !dbg !12560
  %.sroa.02.0.copyload.i57 = load i16, ptr %i.b, align 1, !dbg !12561 ; 4 uses
  %i.f = lshr i16 %.sroa.02.0.copyload.i57, 4, !dbg !12562
  %i.g = lshr i16 %.sroa.02.0.copyload.i57, 8, !dbg !12563
  %i.h = lshr i16 %.sroa.02.0.copyload.i57, 12, !dbg !12564
  %i.i = insertelement <8 x i16> poison, i16 %.sroa.02.0.copyload.i, i64 0, !dbg !12565
  %i.j = insertelement <8 x i16> %i.i, i16 %i.c, i64 1, !dbg !12565
  %i.k = insertelement <8 x i16> %i.j, i16 %i.d, i64 2, !dbg !12565
  %i.l = insertelement <8 x i16> %i.k, i16 %i.e, i64 3, !dbg !12565
  %i.m = insertelement <8 x i16> %i.l, i16 %.sroa.02.0.copyload.i57, i64 4, !dbg !12565
  %i.n = insertelement <8 x i16> %i.m, i16 %i.f, i64 5, !dbg !12565
  %i.o = insertelement <8 x i16> %i.n, i16 %i.g, i64 6, !dbg !12565
  %i.p = insertelement <8 x i16> %i.o, i16 %i.h, i64 7, !dbg !12565
  %i.q = and <8 x i16> %i.p, <i16 15, i16 15, i16 15, i16 -1, i16 15, i16 15, i16 15, i16 -1>, !dbg !12565
  store <8 x i16> %i.q, ptr %2, align 2, !dbg !12565
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !12566
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !12567
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6, !dbg !12568
  %.sroa.02.0.copyload.i69 = load i16, ptr %i.r, align 1, !dbg !12569 ; 4 uses
  %i.u = lshr i16 %.sroa.02.0.copyload.i69, 4, !dbg !12570
  %i.v = lshr i16 %.sroa.02.0.copyload.i69, 8, !dbg !12571
  %i.w = lshr i16 %.sroa.02.0.copyload.i69, 12, !dbg !12572
  %.sroa.02.0.copyload.i81 = load i16, ptr %i.t, align 1, !dbg !12573 ; 4 uses
  %i.x = lshr i16 %.sroa.02.0.copyload.i81, 4, !dbg !12574
  %i.y = lshr i16 %.sroa.02.0.copyload.i81, 8, !dbg !12575
  %i.z = lshr i16 %.sroa.02.0.copyload.i81, 12, !dbg !12576
  %i.aa = insertelement <8 x i16> poison, i16 %.sroa.02.0.copyload.i69, i64 0, !dbg !12567
  %i.ab = insertelement <8 x i16> %i.aa, i16 %i.u, i64 1, !dbg !12567
  %i.ac = insertelement <8 x i16> %i.ab, i16 %i.v, i64 2, !dbg !12567
  %i.ad = insertelement <8 x i16> %i.ac, i16 %i.w, i64 3, !dbg !12567
  %i.ae = insertelement <8 x i16> %i.ad, i16 %.sroa.02.0.copyload.i81, i64 4, !dbg !12567
  %i.af = insertelement <8 x i16> %i.ae, i16 %i.x, i64 5, !dbg !12567
  %i.ag = insertelement <8 x i16> %i.af, i16 %i.y, i64 6, !dbg !12567
  %i.ah = insertelement <8 x i16> %i.ag, i16 %i.z, i64 7, !dbg !12567
  %i.ai = and <8 x i16> %i.ah, <i16 15, i16 15, i16 15, i16 -1, i16 15, i16 15, i16 15, i16 -1>, !dbg !12567
  store <8 x i16> %i.ai, ptr %i.s, align 2, !dbg !12567
  ret void, !dbg !12577
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj5_EBc_(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef writeonly align 2 captures(none) dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !12578 {
bb.a:
  %i.a = icmp samesign ugt i64 %1, 9, !dbg !12745
  br i1 %i.a, label %_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj5_E0Be_.exit111, label %bb.b, !dbg !12745, !prof !2217

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 45, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #35, !dbg !12746
  unreachable, !dbg !12746

_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj5_E0Be_.exit111: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !12747
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !12748
  %.sroa.02.0.copyload.i = load i16, ptr %0, align 1, !dbg !12749 ; 4 uses
  %i.d = lshr i16 %.sroa.02.0.copyload.i, 5, !dbg !12750
  %i.e = lshr i16 %.sroa.02.0.copyload.i, 10, !dbg !12751
  %i.f = lshr i16 %.sroa.02.0.copyload.i, 15, !dbg !12752
  %.sroa.02.0.copyload.i65 = load i16, ptr %i.b, align 1, !dbg !12753 ; 4 uses
  %i.g = shl i16 %.sroa.02.0.copyload.i65, 1, !dbg !12754
  %i.h = and i16 %i.g, 30, !dbg !12755
  %i.i = lshr i16 %.sroa.02.0.copyload.i65, 4, !dbg !12756
  %i.j = lshr i16 %.sroa.02.0.copyload.i65, 9, !dbg !12757
  %i.k = lshr i16 %.sroa.02.0.copyload.i65, 14, !dbg !12758
  %i.l = insertelement <8 x i16> poison, i16 %.sroa.02.0.copyload.i, i64 0, !dbg !12759
  %i.m = insertelement <8 x i16> %i.l, i16 %i.d, i64 1, !dbg !12759
  %i.n = insertelement <8 x i16> %i.m, i16 %i.e, i64 2, !dbg !12759
  %i.o = insertelement <8 x i16> %i.n, i16 %i.h, i64 3, !dbg !12759
  %i.p = insertelement <8 x i16> %i.o, i16 %i.i, i64 4, !dbg !12759
  %i.q = insertelement <8 x i16> %i.p, i16 %i.j, i64 5, !dbg !12759
  %i.r = insertelement <8 x i16> <i16 31, i16 31, i16 31, i16 poison, i16 31, i16 31, i16 poison, i16 31>, i16 %i.f, i64 3, !dbg !12759
  %i.s = insertelement <8 x i16> %i.r, i16 %i.k, i64 6, !dbg !12759 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !12760
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 6, !dbg !12761
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12762
  %.sroa.02.0.copyload.i101 = load i16, ptr %i.v, align 1, !dbg !12763 ; 4 uses
  %i.w = shl i16 %.sroa.02.0.copyload.i101, 4, !dbg !12764
  %i.x = and i16 %i.w, 16, !dbg !12765
  %.sroa.02.0.copyload.i77 = load i16, ptr %i.c, align 1, !dbg !12766 ; 4 uses
  %i.y = shl i16 %.sroa.02.0.copyload.i77, 2, !dbg !12767
  %i.z = and i16 %i.y, 28, !dbg !12768
  %i.aa = lshr i16 %.sroa.02.0.copyload.i77, 3, !dbg !12769
  %i.ab = insertelement <8 x i16> %i.q, i16 %i.z, i64 6, !dbg !12759
  %i.ac = insertelement <8 x i16> %i.ab, i16 %i.aa, i64 7, !dbg !12759 ; 2 uses
  %i.ad = and <8 x i16> %i.ac, %i.s, !dbg !12759
  %i.ae = or disjoint <8 x i16> %i.ac, %i.s, !dbg !12759
  %i.af = shufflevector <8 x i16> %i.ad, <8 x i16> %i.ae, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 4, i32 5, i32 14, i32 7>, !dbg !12759
  store <8 x i16> %i.af, ptr %2, align 2, !dbg !12759
  %i.ag = lshr i16 %.sroa.02.0.copyload.i77, 8, !dbg !12770
  %i.ah = lshr i16 %.sroa.02.0.copyload.i77, 13, !dbg !12771
  %.sroa.02.0.copyload.i89 = load i16, ptr %i.u, align 1, !dbg !12772 ; 4 uses
  %i.ai = shl i16 %.sroa.02.0.copyload.i89, 3, !dbg !12773
  %i.aj = and i16 %i.ai, 24, !dbg !12774
  %i.ak = or disjoint i16 %i.aj, %i.ah, !dbg !12775
  %i.al = lshr i16 %.sroa.02.0.copyload.i89, 2, !dbg !12776
  %i.am = lshr i16 %.sroa.02.0.copyload.i89, 7, !dbg !12777
  %i.an = lshr i16 %.sroa.02.0.copyload.i89, 12, !dbg !12778
  %i.ao = or disjoint i16 %i.x, %i.an, !dbg !12779
  %i.ap = lshr i16 %.sroa.02.0.copyload.i101, 1, !dbg !12780
  %i.aq = lshr i16 %.sroa.02.0.copyload.i101, 6, !dbg !12781
  %i.ar = lshr i16 %.sroa.02.0.copyload.i101, 11, !dbg !12782
  %i.as = insertelement <8 x i16> poison, i16 %i.ag, i64 0, !dbg !12760
  %i.at = insertelement <8 x i16> %i.as, i16 %i.ak, i64 1, !dbg !12760
  %i.au = insertelement <8 x i16> %i.at, i16 %i.al, i64 2, !dbg !12760
  %i.av = insertelement <8 x i16> %i.au, i16 %i.am, i64 3, !dbg !12760
  %i.aw = insertelement <8 x i16> %i.av, i16 %i.ao, i64 4, !dbg !12760
  %i.ax = insertelement <8 x i16> %i.aw, i16 %i.ap, i64 5, !dbg !12760
  %i.ay = insertelement <8 x i16> %i.ax, i16 %i.aq, i64 6, !dbg !12760
  %i.az = insertelement <8 x i16> %i.ay, i16 %i.ar, i64 7, !dbg !12760
  %i.ba = and <8 x i16> %i.az, <i16 31, i16 -1, i16 31, i16 31, i16 -1, i16 31, i16 31, i16 -1>, !dbg !12760
  store <8 x i16> %i.ba, ptr %i.t, align 2, !dbg !12760
  ret void, !dbg !12783
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
begin_hunk_1_@llvm.usub.sat.i64
!11953 = distinct !DILexicalBlock(scope: !11952, file: !2211, line: 73, column: 17)
!11954 = distinct !DILexicalBlock(scope: !11953, file: !2211, line: 75, column: 17)
!11955 = distinct !DILexicalBlock(scope: !11954, file: !2211, line: 76, column: 17)
!11956 = distinct !DILexicalBlock(scope: !11955, file: !2211, line: 77, column: 17)
!11957 = distinct !DILexicalBlock(scope: !11956, file: !2211, line: 78, column: 17)
!11958 = distinct !DILexicalBlock(scope: !11957, file: !2211, line: 87, column: 21)
!11959 = distinct !DILexicalBlock(scope: !11934, file: !2211, line: 72, column: 17)
!11960 = distinct !DILexicalBlock(scope: !11959, file: !2211, line: 73, column: 17)
!11961 = distinct !DILexicalBlock(scope: !11960, file: !2211, line: 75, column: 17)
!11962 = distinct !DILexicalBlock(scope: !11961, file: !2211, line: 76, column: 17)
!11963 = distinct !DILexicalBlock(scope: !11962, file: !2211, line: 77, column: 17)
!11964 = distinct !DILexicalBlock(scope: !11963, file: !2211, line: 78, column: 17)
!11965 = distinct !DILexicalBlock(scope: !11964, file: !2211, line: 87, column: 21)
!11966 = distinct !DILexicalBlock(scope: !11934, file: !2211, line: 72, column: 17)
!11967 = distinct !DILexicalBlock(scope: !11966, file: !2211, line: 73, column: 17)
!11968 = distinct !DILexicalBlock(scope: !11967, file: !2211, line: 75, column: 17)
!11969 = distinct !DILexicalBlock(scope: !11968, file: !2211, line: 76, column: 17)
!11970 = distinct !DILexicalBlock(scope: !11969, file: !2211, line: 77, column: 17)
!11971 = distinct !DILexicalBlock(scope: !11970, file: !2211, line: 78, column: 17)
!11972 = distinct !DILexicalBlock(scope: !11971, file: !2211, line: 87, column: 21)
!11973 = distinct !DILexicalBlock(scope: !11934, file: !2211, line: 72, column: 17)
!11974 = distinct !DILexicalBlock(scope: !11973, file: !2211, line: 73, column: 17)
!11975 = distinct !DILexicalBlock(scope: !11974, file: !2211, line: 75, column: 17)
!11976 = distinct !DILexicalBlock(scope: !11975, file: !2211, line: 76, column: 17)
!11977 = distinct !DILexicalBlock(scope: !11976, file: !2211, line: 77, column: 17)
!11978 = distinct !DILexicalBlock(scope: !11977, file: !2211, line: 78, column: 17)
!11979 = distinct !DILexicalBlock(scope: !11978, file: !2211, line: 87, column: 21)
!11980 = distinct !DILexicalBlock(scope: !11934, file: !2211, line: 72, column: 17)
!11981 = distinct !DILexicalBlock(scope: !11980, file: !2211, line: 73, column: 17)
!11982 = distinct !DILexicalBlock(scope: !11981, file: !2211, line: 75, column: 17)
!11983 = distinct !DILexicalBlock(scope: !11982, file: !2211, line: 76, column: 17)
!11984 = distinct !DILexicalBlock(scope: !11983, file: !2211, line: 77, column: 17)
!11985 = distinct !DILexicalBlock(scope: !11984, file: !2211, line: 78, column: 17)
!11986 = distinct !DILexicalBlock(scope: !11985, file: !2211, line: 87, column: 21)
!11987 = distinct !DILexicalBlock(scope: !11934, file: !2211, line: 72, column: 17)
!11988 = distinct !DILexicalBlock(scope: !11987, file: !2211, line: 73, column: 17)
!11989 = distinct !DILexicalBlock(scope: !11988, file: !2211, line: 75, column: 17)
!11990 = distinct !DILexicalBlock(scope: !11989, file: !2211, line: 76, column: 17)
!11991 = distinct !DILexicalBlock(scope: !11990, file: !2211, line: 77, column: 17)
!11992 = distinct !DILexicalBlock(scope: !11991, file: !2211, line: 78, column: 17)
!11993 = distinct !DILexicalBlock(scope: !11992, file: !2211, line: 87, column: 21)
!11994 = distinct !DILexicalBlock(scope: !11940, file: !2211, line: 87, column: 21)
!11995 = distinct !DILexicalBlock(scope: !11934, file: !2211, line: 72, column: 17)
!11996 = distinct !DILexicalBlock(scope: !11995, file: !2211, line: 73, column: 17)
!11997 = distinct !DILexicalBlock(scope: !11996, file: !2211, line: 75, column: 17)
!11998 = distinct !DILexicalBlock(scope: !11997, file: !2211, line: 76, column: 17)
!11999 = distinct !DILexicalBlock(scope: !11998, file: !2211, line: 77, column: 17)
!12000 = distinct !DILexicalBlock(scope: !11999, file: !2211, line: 78, column: 17)
!12001 = distinct !DILexicalBlock(scope: !12000, file: !2211, line: 87, column: 21)
!12002 = distinct !DILexicalBlock(scope: !11934, file: !2211, line: 72, column: 17)
!12003 = distinct !DILexicalBlock(scope: !12002, file: !2211, line: 73, column: 17)
!12004 = distinct !DILexicalBlock(scope: !12003, file: !2211, line: 75, column: 17)
!12005 = distinct !DILexicalBlock(scope: !12004, file: !2211, line: 76, column: 17)
!12006 = distinct !DILexicalBlock(scope: !12005, file: !2211, line: 77, column: 17)
!12007 = distinct !DILexicalBlock(scope: !12006, file: !2211, line: 78, column: 17)
!12008 = distinct !DILexicalBlock(scope: !12007, file: !2211, line: 87, column: 21)
!12009 = distinct !DILexicalBlock(scope: !11934, file: !2211, line: 72, column: 17)
!12010 = distinct !DILexicalBlock(scope: !12009, file: !2211, line: 73, column: 17)
!12011 = distinct !DILexicalBlock(scope: !12010, file: !2211, line: 75, column: 17)
!12012 = distinct !DILexicalBlock(scope: !12011, file: !2211, line: 76, column: 17)
!12013 = distinct !DILexicalBlock(scope: !12012, file: !2211, line: 77, column: 17)
!12014 = distinct !DILexicalBlock(scope: !12013, file: !2211, line: 78, column: 17)
!12015 = distinct !DILexicalBlock(scope: !12014, file: !2211, line: 87, column: 21)
!12016 = distinct !DILexicalBlock(scope: !11934, file: !2211, line: 72, column: 17)
!12017 = distinct !DILexicalBlock(scope: !12016, file: !2211, line: 73, column: 17)
!12018 = distinct !DILexicalBlock(scope: !12017, file: !2211, line: 75, column: 17)
!12019 = distinct !DILexicalBlock(scope: !12018, file: !2211, line: 76, column: 17)
!12020 = distinct !DILexicalBlock(scope: !12019, file: !2211, line: 77, column: 17)
!12021 = distinct !DILexicalBlock(scope: !12020, file: !2211, line: 78, column: 17)
!12022 = distinct !DILexicalBlock(scope: !12021, file: !2211, line: 87, column: 21)
!12023 = distinct !DILexicalBlock(scope: !11934, file: !2211, line: 72, column: 17)
!12024 = distinct !DILexicalBlock(scope: !12023, file: !2211, line: 73, column: 17)
!12025 = distinct !DILexicalBlock(scope: !12024, file: !2211, line: 75, column: 17)
!12026 = distinct !DILexicalBlock(scope: !12025, file: !2211, line: 76, column: 17)
!12027 = distinct !DILexicalBlock(scope: !12026, file: !2211, line: 77, column: 17)
!12028 = distinct !DILexicalBlock(scope: !12027, file: !2211, line: 78, column: 17)
!12029 = distinct !DILexicalBlock(scope: !12028, file: !2211, line: 87, column: 21)
!12030 = distinct !DILexicalBlock(scope: !11934, file: !2211, line: 72, column: 17)
!12031 = distinct !DILexicalBlock(scope: !12030, file: !2211, line: 73, column: 17)
!12032 = distinct !DILexicalBlock(scope: !12031, file: !2211, line: 75, column: 17)
!12033 = distinct !DILexicalBlock(scope: !12032, file: !2211, line: 76, column: 17)
!12034 = distinct !DILexicalBlock(scope: !12033, file: !2211, line: 77, column: 17)
!12035 = distinct !DILexicalBlock(scope: !12034, file: !2211, line: 78, column: 17)
!12036 = distinct !DILexicalBlock(scope: !12035, file: !2211, line: 87, column: 21)
!12037 = distinct !DILexicalBlock(scope: !11934, file: !2211, line: 72, column: 17)
!12038 = distinct !DILexicalBlock(scope: !12037, file: !2211, line: 73, column: 17)
!12039 = distinct !DILexicalBlock(scope: !12038, file: !2211, line: 75, column: 17)
!12040 = distinct !DILexicalBlock(scope: !12039, file: !2211, line: 76, column: 17)
!12041 = distinct !DILexicalBlock(scope: !12040, file: !2211, line: 77, column: 17)
!12042 = distinct !DILexicalBlock(scope: !12041, file: !2211, line: 78, column: 17)
!12043 = distinct !DILexicalBlock(scope: !12042, file: !2211, line: 87, column: 21)
!12044 = distinct !DILexicalBlock(scope: !11934, file: !2211, line: 72, column: 17)
!12045 = distinct !DILexicalBlock(scope: !12044, file: !2211, line: 73, column: 17)
!12046 = distinct !DILexicalBlock(scope: !12045, file: !2211, line: 75, column: 17)
!12047 = distinct !DILexicalBlock(scope: !12046, file: !2211, line: 76, column: 17)
!12048 = distinct !DILexicalBlock(scope: !12047, file: !2211, line: 77, column: 17)
!12049 = distinct !DILexicalBlock(scope: !12048, file: !2211, line: 78, column: 17)
!12050 = distinct !DILexicalBlock(scope: !12049, file: !2211, line: 87, column: 21)
!12051 = !DILocation(line: 56, column: 21, scope: !11929)
!12052 = !DILocation(line: 56, column: 13, scope: !11929)
!12053 = !DILocation(line: 1718, column: 17, scope: !11930, inlinedAt: !11944)
!12054 = !DILocation(line: 88, column: 33, scope: !11951)
!12055 = !DILocation(line: 88, column: 33, scope: !11958)
!12056 = !DILocation(line: 88, column: 33, scope: !11965)
!12057 = !DILocation(line: 88, column: 33, scope: !11972)
!12058 = !DILocation(line: 88, column: 33, scope: !11979)
!12059 = !DILocation(line: 88, column: 33, scope: !11986)
!12060 = !DILocation(line: 88, column: 33, scope: !11993)
!12061 = !DILocation(line: 88, column: 21, scope: !11994)
!12062 = !DILocation(line: 88, column: 21, scope: !12001)
!12063 = !DILocation(line: 88, column: 33, scope: !12001)
!12064 = !DILocation(line: 88, column: 33, scope: !12008)
!12065 = !DILocation(line: 88, column: 33, scope: !12015)
!12066 = !DILocation(line: 88, column: 33, scope: !12022)
!12067 = !DILocation(line: 88, column: 33, scope: !12029)
!12068 = !DILocation(line: 88, column: 33, scope: !12036)
!12069 = !DILocation(line: 88, column: 33, scope: !12043)
!12070 = !DILocation(line: 88, column: 33, scope: !12050)
!12071 = !DILocation(line: 91, column: 10, scope: !11928)
!12072 = distinct !DISubprogram(name: "unpack<2>", linkageName: "_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj2_EBc_", scope: !2216, file: !2211, line: 41, type: !1985, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1984)
!12073 = distinct !DILexicalBlock(scope: !12072, file: !2211, line: 51, column: 13)
!12074 = distinct !DISubprogram(name: "copied<[u8; 2], core::array::TryFromSliceError>", linkageName: "_RNvMs_NtCscgRAwXFJnXP_4core6resultINtB4_6ResultRAhj2_NtNtB6_5array17TryFromSliceErrorE6copiedCsfISxE4fmY1Y_14polars_parquet", scope: !2047, file: !2045, line: 1711, type: !1985, scopeLine: 1711, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1984)
!12075 = distinct !DISubprogram(name: "try_from<u8, 2>", linkageName: "_RNvXs5_NtCscgRAwXFJnXP_4core5arrayAhj2_INtNtB7_7convert7TryFromRShE8try_fromCsfISxE4fmY1Y_14polars_parquet", scope: !2220, file: !2218, line: 258, type: !1985, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1984)
!12076 = distinct !DISubprogram(name: "try_into<&[u8], [u8; 2]>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core7convertRShINtB5_7TryIntoAhj2_E8try_intoCsfISxE4fmY1Y_14polars_parquet", scope: !2221, file: !2030, line: 818, type: !1985, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1984)
!12077 = distinct !DISubprogram(name: "{closure#0}<2>", linkageName: "_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj2_E0Be_", scope: !2222, file: !2211, line: 58, type: !2029, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1984)
!12078 = distinct !DILexicalBlock(scope: !12073, file: !2211, line: 58, column: 13)
!12079 = distinct !DILexicalBlock(scope: !12078, file: !2211, line: 72, column: 17)
!12080 = distinct !DILexicalBlock(scope: !12079, file: !2211, line: 73, column: 17)
!12081 = distinct !DILexicalBlock(scope: !12080, file: !2211, line: 75, column: 17)
!12082 = distinct !DILexicalBlock(scope: !12081, file: !2211, line: 76, column: 17)
!12083 = distinct !DILexicalBlock(scope: !12082, file: !2211, line: 77, column: 17)
!12084 = distinct !DILexicalBlock(scope: !12083, file: !2211, line: 78, column: 17)
!12085 = distinct !DILocation(line: 87, column: 31, scope: !12084)
!12086 = distinct !DILocation(line: 61, column: 26, scope: !12077, inlinedAt: !12085)
!12087 = distinct !DILocation(line: 819, column: 9, scope: !12076, inlinedAt: !12086)
!12088 = distinct !DILocation(line: 259, column: 34, scope: !12075, inlinedAt: !12087)
!12089 = distinct !DILexicalBlock(scope: !12078, file: !2211, line: 72, column: 17)
!12090 = distinct !DILexicalBlock(scope: !12089, file: !2211, line: 73, column: 17)
!12091 = distinct !DILexicalBlock(scope: !12090, file: !2211, line: 75, column: 17)
!12092 = distinct !DILexicalBlock(scope: !12091, file: !2211, line: 76, column: 17)
!12093 = distinct !DILexicalBlock(scope: !12092, file: !2211, line: 77, column: 17)
!12094 = distinct !DILexicalBlock(scope: !12093, file: !2211, line: 78, column: 17)
!12095 = distinct !DILexicalBlock(scope: !12094, file: !2211, line: 87, column: 21)
!12096 = distinct !DILexicalBlock(scope: !12078, file: !2211, line: 72, column: 17)
!12097 = distinct !DILexicalBlock(scope: !12096, file: !2211, line: 73, column: 17)
!12098 = distinct !DILexicalBlock(scope: !12097, file: !2211, line: 75, column: 17)
!12099 = distinct !DILexicalBlock(scope: !12098, file: !2211, line: 76, column: 17)
!12100 = distinct !DILexicalBlock(scope: !12099, file: !2211, line: 77, column: 17)
!12101 = distinct !DILexicalBlock(scope: !12100, file: !2211, line: 78, column: 17)
!12102 = distinct !DILexicalBlock(scope: !12101, file: !2211, line: 87, column: 21)
!12103 = distinct !DILexicalBlock(scope: !12078, file: !2211, line: 72, column: 17)
!12104 = distinct !DILexicalBlock(scope: !12103, file: !2211, line: 73, column: 17)
!12105 = distinct !DILexicalBlock(scope: !12104, file: !2211, line: 75, column: 17)
!12106 = distinct !DILexicalBlock(scope: !12105, file: !2211, line: 76, column: 17)
!12107 = distinct !DILexicalBlock(scope: !12106, file: !2211, line: 77, column: 17)
!12108 = distinct !DILexicalBlock(scope: !12107, file: !2211, line: 78, column: 17)
!12109 = distinct !DILexicalBlock(scope: !12108, file: !2211, line: 87, column: 21)
!12110 = distinct !DILexicalBlock(scope: !12078, file: !2211, line: 72, column: 17)
!12111 = distinct !DILexicalBlock(scope: !12110, file: !2211, line: 73, column: 17)
!12112 = distinct !DILexicalBlock(scope: !12111, file: !2211, line: 75, column: 17)
!12113 = distinct !DILexicalBlock(scope: !12112, file: !2211, line: 76, column: 17)
!12114 = distinct !DILexicalBlock(scope: !12113, file: !2211, line: 77, column: 17)
!12115 = distinct !DILexicalBlock(scope: !12114, file: !2211, line: 78, column: 17)
!12116 = distinct !DILexicalBlock(scope: !12115, file: !2211, line: 87, column: 21)
!12117 = distinct !DILexicalBlock(scope: !12078, file: !2211, line: 72, column: 17)
!12118 = distinct !DILexicalBlock(scope: !12117, file: !2211, line: 73, column: 17)
!12119 = distinct !DILexicalBlock(scope: !12118, file: !2211, line: 75, column: 17)
!12120 = distinct !DILexicalBlock(scope: !12119, file: !2211, line: 76, column: 17)
!12121 = distinct !DILexicalBlock(scope: !12120, file: !2211, line: 77, column: 17)
!12122 = distinct !DILexicalBlock(scope: !12121, file: !2211, line: 78, column: 17)
!12123 = distinct !DILexicalBlock(scope: !12122, file: !2211, line: 87, column: 21)
!12124 = distinct !DILexicalBlock(scope: !12078, file: !2211, line: 72, column: 17)
!12125 = distinct !DILexicalBlock(scope: !12124, file: !2211, line: 73, column: 17)
!12126 = distinct !DILexicalBlock(scope: !12125, file: !2211, line: 75, column: 17)
!12127 = distinct !DILexicalBlock(scope: !12126, file: !2211, line: 76, column: 17)
!12128 = distinct !DILexicalBlock(scope: !12127, file: !2211, line: 77, column: 17)
!12129 = distinct !DILexicalBlock(scope: !12128, file: !2211, line: 78, column: 17)
!12130 = distinct !DILexicalBlock(scope: !12129, file: !2211, line: 87, column: 21)
!12131 = distinct !DILexicalBlock(scope: !12078, file: !2211, line: 72, column: 17)
!12132 = distinct !DILexicalBlock(scope: !12131, file: !2211, line: 73, column: 17)
!12133 = distinct !DILexicalBlock(scope: !12132, file: !2211, line: 75, column: 17)
!12134 = distinct !DILexicalBlock(scope: !12133, file: !2211, line: 76, column: 17)
!12135 = distinct !DILexicalBlock(scope: !12134, file: !2211, line: 77, column: 17)
!12136 = distinct !DILexicalBlock(scope: !12135, file: !2211, line: 78, column: 17)
!12137 = distinct !DILexicalBlock(scope: !12136, file: !2211, line: 87, column: 21)
!12138 = distinct !DILexicalBlock(scope: !12084, file: !2211, line: 87, column: 21)
!12139 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsfISxE4fmY1Y_14polars_parquet", scope: !2224, file: !2223, line: 82, type: !1985, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1984)
!12140 = distinct !DILexicalBlock(scope: !12139, file: !2223, line: 87, column: 5)
!12141 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !2225, file: !2223, line: 435, type: !1985, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1984)
!12142 = distinct !DISubprogram(name: "index<u8, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !2226, file: !2223, line: 18, type: !1985, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1984)
!12143 = distinct !DILexicalBlock(scope: !12078, file: !2211, line: 72, column: 17)
!12144 = distinct !DILexicalBlock(scope: !12143, file: !2211, line: 73, column: 17)
!12145 = distinct !DILexicalBlock(scope: !12144, file: !2211, line: 75, column: 17)
!12146 = distinct !DILexicalBlock(scope: !12145, file: !2211, line: 76, column: 17)
!12147 = distinct !DILexicalBlock(scope: !12146, file: !2211, line: 77, column: 17)
!12148 = distinct !DILexicalBlock(scope: !12147, file: !2211, line: 78, column: 17)
!12149 = distinct !DILocation(line: 87, column: 31, scope: !12148)
!12150 = distinct !DILocation(line: 60, column: 26, scope: !12077, inlinedAt: !12149)
!12151 = distinct !DILocation(line: 19, column: 15, scope: !12142, inlinedAt: !12150)
!12152 = distinct !DILocation(line: 441, column: 24, scope: !12141, inlinedAt: !12151)
!12153 = distinct !DILexicalBlock(scope: !12148, file: !2211, line: 87, column: 21)
!12154 = distinct !DILocation(line: 61, column: 26, scope: !12077, inlinedAt: !12149)
!12155 = distinct !DILocation(line: 819, column: 9, scope: !12076, inlinedAt: !12154)
!12156 = distinct !DILocation(line: 259, column: 34, scope: !12075, inlinedAt: !12155)
!12157 = distinct !DILexicalBlock(scope: !12078, file: !2211, line: 72, column: 17)
!12158 = distinct !DILexicalBlock(scope: !12157, file: !2211, line: 73, column: 17)
!12159 = distinct !DILexicalBlock(scope: !12158, file: !2211, line: 75, column: 17)
!12160 = distinct !DILexicalBlock(scope: !12159, file: !2211, line: 76, column: 17)
!12161 = distinct !DILexicalBlock(scope: !12160, file: !2211, line: 77, column: 17)
!12162 = distinct !DILexicalBlock(scope: !12161, file: !2211, line: 78, column: 17)
!12163 = distinct !DILexicalBlock(scope: !12162, file: !2211, line: 87, column: 21)
!12164 = distinct !DILexicalBlock(scope: !12078, file: !2211, line: 72, column: 17)
!12165 = distinct !DILexicalBlock(scope: !12164, file: !2211, line: 73, column: 17)
!12166 = distinct !DILexicalBlock(scope: !12165, file: !2211, line: 75, column: 17)
!12167 = distinct !DILexicalBlock(scope: !12166, file: !2211, line: 76, column: 17)
!12168 = distinct !DILexicalBlock(scope: !12167, file: !2211, line: 77, column: 17)
!12169 = distinct !DILexicalBlock(scope: !12168, file: !2211, line: 78, column: 17)
!12170 = distinct !DILexicalBlock(scope: !12169, file: !2211, line: 87, column: 21)
!12171 = distinct !DILexicalBlock(scope: !12078, file: !2211, line: 72, column: 17)
!12172 = distinct !DILexicalBlock(scope: !12171, file: !2211, line: 73, column: 17)
!12173 = distinct !DILexicalBlock(scope: !12172, file: !2211, line: 75, column: 17)
!12174 = distinct !DILexicalBlock(scope: !12173, file: !2211, line: 76, column: 17)
!12175 = distinct !DILexicalBlock(scope: !12174, file: !2211, line: 77, column: 17)
!12176 = distinct !DILexicalBlock(scope: !12175, file: !2211, line: 78, column: 17)
!12177 = distinct !DILexicalBlock(scope: !12176, file: !2211, line: 87, column: 21)
!12178 = distinct !DILexicalBlock(scope: !12078, file: !2211, line: 72, column: 17)
!12179 = distinct !DILexicalBlock(scope: !12178, file: !2211, line: 73, column: 17)
!12180 = distinct !DILexicalBlock(scope: !12179, file: !2211, line: 75, column: 17)
!12181 = distinct !DILexicalBlock(scope: !12180, file: !2211, line: 76, column: 17)
!12182 = distinct !DILexicalBlock(scope: !12181, file: !2211, line: 77, column: 17)
!12183 = distinct !DILexicalBlock(scope: !12182, file: !2211, line: 78, column: 17)
!12184 = distinct !DILexicalBlock(scope: !12183, file: !2211, line: 87, column: 21)
!12185 = distinct !DILexicalBlock(scope: !12078, file: !2211, line: 72, column: 17)
!12186 = distinct !DILexicalBlock(scope: !12185, file: !2211, line: 73, column: 17)
!12187 = distinct !DILexicalBlock(scope: !12186, file: !2211, line: 75, column: 17)
!12188 = distinct !DILexicalBlock(scope: !12187, file: !2211, line: 76, column: 17)
!12189 = distinct !DILexicalBlock(scope: !12188, file: !2211, line: 77, column: 17)
!12190 = distinct !DILexicalBlock(scope: !12189, file: !2211, line: 78, column: 17)
!12191 = distinct !DILexicalBlock(scope: !12190, file: !2211, line: 87, column: 21)
!12192 = distinct !DILexicalBlock(scope: !12078, file: !2211, line: 72, column: 17)
!12193 = distinct !DILexicalBlock(scope: !12192, file: !2211, line: 73, column: 17)
!12194 = distinct !DILexicalBlock(scope: !12193, file: !2211, line: 75, column: 17)
!12195 = distinct !DILexicalBlock(scope: !12194, file: !2211, line: 76, column: 17)
!12196 = distinct !DILexicalBlock(scope: !12195, file: !2211, line: 77, column: 17)
!12197 = distinct !DILexicalBlock(scope: !12196, file: !2211, line: 78, column: 17)
!12198 = distinct !DILexicalBlock(scope: !12197, file: !2211, line: 87, column: 21)
!12199 = distinct !DILexicalBlock(scope: !12078, file: !2211, line: 72, column: 17)
!12200 = distinct !DILexicalBlock(scope: !12199, file: !2211, line: 73, column: 17)
!12201 = distinct !DILexicalBlock(scope: !12200, file: !2211, line: 75, column: 17)
!12202 = distinct !DILexicalBlock(scope: !12201, file: !2211, line: 76, column: 17)
!12203 = distinct !DILexicalBlock(scope: !12202, file: !2211, line: 77, column: 17)
!12204 = distinct !DILexicalBlock(scope: !12203, file: !2211, line: 78, column: 17)
!12205 = distinct !DILexicalBlock(scope: !12204, file: !2211, line: 87, column: 21)
!12206 = !DILocation(line: 56, column: 21, scope: !12073)
!12207 = !DILocation(line: 56, column: 13, scope: !12073)
!12208 = !DILocation(line: 1718, column: 17, scope: !12074, inlinedAt: !12088)
!12209 = !DILocation(line: 88, column: 33, scope: !12095)
!12210 = !DILocation(line: 88, column: 33, scope: !12102)
!12211 = !DILocation(line: 88, column: 33, scope: !12109)
!12212 = !DILocation(line: 88, column: 33, scope: !12116)
!12213 = !DILocation(line: 88, column: 33, scope: !12123)
!12214 = !DILocation(line: 88, column: 33, scope: !12130)
!12215 = !DILocation(line: 88, column: 33, scope: !12137)
!12216 = !DILocation(line: 88, column: 21, scope: !12138)
!12217 = !DILocation(line: 89, column: 24, scope: !12140, inlinedAt: !12152)
!12218 = !DILocation(line: 88, column: 21, scope: !12153)
!12219 = !DILocation(line: 1718, column: 17, scope: !12074, inlinedAt: !12156)
!12220 = !DILocation(line: 88, column: 33, scope: !12163)
!12221 = !DILocation(line: 88, column: 33, scope: !12170)
!12222 = !DILocation(line: 88, column: 33, scope: !12177)
!12223 = !DILocation(line: 88, column: 33, scope: !12184)
!12224 = !DILocation(line: 88, column: 33, scope: !12191)
!12225 = !DILocation(line: 88, column: 33, scope: !12198)
!12226 = !DILocation(line: 88, column: 33, scope: !12205)
!12227 = !DILocation(line: 91, column: 10, scope: !12072)
!12228 = distinct !DISubprogram(name: "unpack<3>", linkageName: "_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj3_EBc_", scope: !2216, file: !2211, line: 41, type: !1985, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1984)
!12229 = distinct !DILexicalBlock(scope: !12228, file: !2211, line: 51, column: 13)
!12230 = distinct !DILexicalBlock(scope: !12229, file: !2211, line: 58, column: 13)
!12231 = distinct !DILexicalBlock(scope: !12230, file: !2211, line: 72, column: 17)
!12232 = distinct !DILexicalBlock(scope: !12231, file: !2211, line: 73, column: 17)
!12233 = distinct !DILexicalBlock(scope: !12232, file: !2211, line: 75, column: 17)
!12234 = distinct !DILexicalBlock(scope: !12233, file: !2211, line: 76, column: 17)
!12235 = distinct !DILexicalBlock(scope: !12234, file: !2211, line: 77, column: 17)
!12236 = distinct !DILexicalBlock(scope: !12235, file: !2211, line: 78, column: 17)
!12237 = distinct !DILexicalBlock(scope: !12236, file: !2211, line: 87, column: 21)
!12238 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsfISxE4fmY1Y_14polars_parquet", scope: !2224, file: !2223, line: 82, type: !1985, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1984)
!12239 = distinct !DILexicalBlock(scope: !12238, file: !2223, line: 87, column: 5)
!12240 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !2225, file: !2223, line: 435, type: !1985, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1984)
!12241 = distinct !DISubprogram(name: "index<u8, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !2226, file: !2223, line: 18, type: !1985, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1984)
!12242 = distinct !DISubprogram(name: "{closure#0}<3>", linkageName: "_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj3_E0Be_", scope: !2222, file: !2211, line: 58, type: !2029, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1984)
!12243 = distinct !DILexicalBlock(scope: !12230, file: !2211, line: 72, column: 17)
!12244 = distinct !DILexicalBlock(scope: !12243, file: !2211, line: 73, column: 17)
!12245 = distinct !DILexicalBlock(scope: !12244, file: !2211, line: 75, column: 17)
!12246 = distinct !DILexicalBlock(scope: !12245, file: !2211, line: 76, column: 17)
!12247 = distinct !DILexicalBlock(scope: !12246, file: !2211, line: 77, column: 17)
!12248 = distinct !DILexicalBlock(scope: !12247, file: !2211, line: 78, column: 17)
!12249 = distinct !DILexicalBlock(scope: !12248, file: !2211, line: 80, column: 21)
!12250 = distinct !DILexicalBlock(scope: !12249, file: !2211, line: 81, column: 21)
!12251 = distinct !DILocation(line: 82, column: 31, scope: !12250)
!12252 = distinct !DILocation(line: 60, column: 26, scope: !12242, inlinedAt: !12251)
!12253 = distinct !DILocation(line: 19, column: 15, scope: !12241, inlinedAt: !12252)
!12254 = distinct !DILocation(line: 441, column: 24, scope: !12240, inlinedAt: !12253)
!12255 = distinct !DISubprogram(name: "copied<[u8; 2], core::array::TryFromSliceError>", linkageName: "_RNvMs_NtCscgRAwXFJnXP_4core6resultINtB4_6ResultRAhj2_NtNtB6_5array17TryFromSliceErrorE6copiedCsfISxE4fmY1Y_14polars_parquet", scope: !2047, file: !2045, line: 1711, type: !1985, scopeLine: 1711, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1984)
!12256 = distinct !DISubprogram(name: "try_from<u8, 2>", linkageName: "_RNvXs5_NtCscgRAwXFJnXP_4core5arrayAhj2_INtNtB7_7convert7TryFromRShE8try_fromCsfISxE4fmY1Y_14polars_parquet", scope: !2220, file: !2218, line: 258, type: !1985, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1984)
!12257 = distinct !DISubprogram(name: "try_into<&[u8], [u8; 2]>", linkageName: "_RNvXs4_NtCscgRAwXFJnXP_4core7convertRShINtB5_7TryIntoAhj2_E8try_intoCsfISxE4fmY1Y_14polars_parquet", scope: !2221, file: !2030, line: 818, type: !1985, scopeLine: 818, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1984)
!12258 = distinct !DILexicalBlock(scope: !12230, file: !2211, line: 72, column: 17)
!12259 = distinct !DILexicalBlock(scope: !12258, file: !2211, line: 73, column: 17)
!12260 = distinct !DILexicalBlock(scope: !12259, file: !2211, line: 75, column: 17)
!12261 = distinct !DILexicalBlock(scope: !12260, file: !2211, line: 76, column: 17)
!12262 = distinct !DILexicalBlock(scope: !12261, file: !2211, line: 77, column: 17)
!12263 = distinct !DILexicalBlock(scope: !12262, file: !2211, line: 78, column: 17)
!12264 = distinct !DILocation(line: 87, column: 31, scope: !12263)
!12265 = distinct !DILocation(line: 61, column: 26, scope: !12242, inlinedAt: !12264)
!12266 = distinct !DILocation(line: 819, column: 9, scope: !12257, inlinedAt: !12265)
!12267 = distinct !DILocation(line: 259, column: 34, scope: !12256, inlinedAt: !12266)
!12268 = distinct !DILexicalBlock(scope: !12263, file: !2211, line: 87, column: 21)
!12269 = distinct !DILexicalBlock(scope: !12230, file: !2211, line: 72, column: 17)
!12270 = distinct !DILexicalBlock(scope: !12269, file: !2211, line: 73, column: 17)
!12271 = distinct !DILexicalBlock(scope: !12270, file: !2211, line: 75, column: 17)
!12272 = distinct !DILexicalBlock(scope: !12271, file: !2211, line: 76, column: 17)
!12273 = distinct !DILexicalBlock(scope: !12272, file: !2211, line: 77, column: 17)
!12274 = distinct !DILexicalBlock(scope: !12273, file: !2211, line: 78, column: 17)
!12275 = distinct !DILexicalBlock(scope: !12274, file: !2211, line: 87, column: 21)
!12276 = distinct !DILexicalBlock(scope: !12230, file: !2211, line: 72, column: 17)
!12277 = distinct !DILexicalBlock(scope: !12276, file: !2211, line: 73, column: 17)
!12278 = distinct !DILexicalBlock(scope: !12277, file: !2211, line: 75, column: 17)
!12279 = distinct !DILexicalBlock(scope: !12278, file: !2211, line: 76, column: 17)
!12280 = distinct !DILexicalBlock(scope: !12279, file: !2211, line: 77, column: 17)
!12281 = distinct !DILexicalBlock(scope: !12280, file: !2211, line: 78, column: 17)
!12282 = distinct !DILexicalBlock(scope: !12281, file: !2211, line: 87, column: 21)
!12283 = distinct !DILexicalBlock(scope: !12230, file: !2211, line: 72, column: 17)
!12284 = distinct !DILexicalBlock(scope: !12283, file: !2211, line: 73, column: 17)
!12285 = distinct !DILexicalBlock(scope: !12284, file: !2211, line: 75, column: 17)
!12286 = distinct !DILexicalBlock(scope: !12285, file: !2211, line: 76, column: 17)
!12287 = distinct !DILexicalBlock(scope: !12286, file: !2211, line: 77, column: 17)
!12288 = distinct !DILexicalBlock(scope: !12287, file: !2211, line: 78, column: 17)
!12289 = distinct !DILexicalBlock(scope: !12288, file: !2211, line: 87, column: 21)
!12290 = distinct !DILocation(line: 61, column: 26, scope: !12242, inlinedAt: !12251)
!12291 = distinct !DILocation(line: 819, column: 9, scope: !12257, inlinedAt: !12290)
!12292 = distinct !DILocation(line: 259, column: 34, scope: !12256, inlinedAt: !12291)
!12293 = distinct !DILexicalBlock(scope: !12250, file: !2211, line: 82, column: 21)
!12294 = distinct !DILexicalBlock(scope: !12293, file: !2211, line: 83, column: 21)
!12295 = distinct !DILexicalBlock(scope: !12230, file: !2211, line: 72, column: 17)
!12296 = distinct !DILexicalBlock(scope: !12295, file: !2211, line: 73, column: 17)
!12297 = distinct !DILexicalBlock(scope: !12296, file: !2211, line: 75, column: 17)
!12298 = distinct !DILexicalBlock(scope: !12297, file: !2211, line: 76, column: 17)
!12299 = distinct !DILexicalBlock(scope: !12298, file: !2211, line: 77, column: 17)
!12300 = distinct !DILexicalBlock(scope: !12299, file: !2211, line: 78, column: 17)
!12301 = distinct !DILexicalBlock(scope: !12300, file: !2211, line: 87, column: 21)
!12302 = distinct !DILexicalBlock(scope: !12230, file: !2211, line: 72, column: 17)
!12303 = distinct !DILexicalBlock(scope: !12302, file: !2211, line: 73, column: 17)
!12304 = distinct !DILexicalBlock(scope: !12303, file: !2211, line: 75, column: 17)
!12305 = distinct !DILexicalBlock(scope: !12304, file: !2211, line: 76, column: 17)
!12306 = distinct !DILexicalBlock(scope: !12305, file: !2211, line: 77, column: 17)
!12307 = distinct !DILexicalBlock(scope: !12306, file: !2211, line: 78, column: 17)
!12308 = distinct !DILexicalBlock(scope: !12307, file: !2211, line: 87, column: 21)
!12309 = distinct !DILexicalBlock(scope: !12230, file: !2211, line: 72, column: 17)
!12310 = distinct !DILexicalBlock(scope: !12309, file: !2211, line: 73, column: 17)
!12311 = distinct !DILexicalBlock(scope: !12310, file: !2211, line: 75, column: 17)
!12312 = distinct !DILexicalBlock(scope: !12311, file: !2211, line: 76, column: 17)
!12313 = distinct !DILexicalBlock(scope: !12312, file: !2211, line: 77, column: 17)
!12314 = distinct !DILexicalBlock(scope: !12313, file: !2211, line: 78, column: 17)
!12315 = distinct !DILexicalBlock(scope: !12314, file: !2211, line: 87, column: 21)
!12316 = distinct !DILexicalBlock(scope: !12230, file: !2211, line: 72, column: 17)
!12317 = distinct !DILexicalBlock(scope: !12316, file: !2211, line: 73, column: 17)
!12318 = distinct !DILexicalBlock(scope: !12317, file: !2211, line: 75, column: 17)
!12319 = distinct !DILexicalBlock(scope: !12318, file: !2211, line: 76, column: 17)
!12320 = distinct !DILexicalBlock(scope: !12319, file: !2211, line: 77, column: 17)
!12321 = distinct !DILexicalBlock(scope: !12320, file: !2211, line: 78, column: 17)
!12322 = distinct !DILexicalBlock(scope: !12321, file: !2211, line: 87, column: 21)
!12323 = distinct !DILexicalBlock(scope: !12230, file: !2211, line: 72, column: 17)
!12324 = distinct !DILexicalBlock(scope: !12323, file: !2211, line: 73, column: 17)
!12325 = distinct !DILexicalBlock(scope: !12324, file: !2211, line: 75, column: 17)
!12326 = distinct !DILexicalBlock(scope: !12325, file: !2211, line: 76, column: 17)
!12327 = distinct !DILexicalBlock(scope: !12326, file: !2211, line: 77, column: 17)
!12328 = distinct !DILexicalBlock(scope: !12327, file: !2211, line: 78, column: 17)
!12329 = distinct !DILexicalBlock(scope: !12328, file: !2211, line: 80, column: 21)
!12330 = distinct !DILexicalBlock(scope: !12329, file: !2211, line: 81, column: 21)
!12331 = distinct !DILocation(line: 82, column: 31, scope: !12330)
!12332 = distinct !DILocation(line: 60, column: 26, scope: !12242, inlinedAt: !12331)
!12333 = distinct !DILocation(line: 19, column: 15, scope: !12241, inlinedAt: !12332)
!12334 = distinct !DILocation(line: 441, column: 24, scope: !12240, inlinedAt: !12333)
!12335 = distinct !DILocation(line: 61, column: 26, scope: !12242, inlinedAt: !12331)
!12336 = distinct !DILocation(line: 819, column: 9, scope: !12257, inlinedAt: !12335)
!12337 = distinct !DILocation(line: 259, column: 34, scope: !12256, inlinedAt: !12336)
!12338 = distinct !DILexicalBlock(scope: !12330, file: !2211, line: 82, column: 21)
!12339 = distinct !DILexicalBlock(scope: !12338, file: !2211, line: 83, column: 21)
!12340 = distinct !DILexicalBlock(scope: !12230, file: !2211, line: 72, column: 17)
!12341 = distinct !DILexicalBlock(scope: !12340, file: !2211, line: 73, column: 17)
!12342 = distinct !DILexicalBlock(scope: !12341, file: !2211, line: 75, column: 17)
!12343 = distinct !DILexicalBlock(scope: !12342, file: !2211, line: 76, column: 17)
!12344 = distinct !DILexicalBlock(scope: !12343, file: !2211, line: 77, column: 17)
!12345 = distinct !DILexicalBlock(scope: !12344, file: !2211, line: 78, column: 17)
!12346 = distinct !DILexicalBlock(scope: !12345, file: !2211, line: 87, column: 21)
!12347 = distinct !DILexicalBlock(scope: !12230, file: !2211, line: 72, column: 17)
!12348 = distinct !DILexicalBlock(scope: !12347, file: !2211, line: 73, column: 17)
!12349 = distinct !DILexicalBlock(scope: !12348, file: !2211, line: 75, column: 17)
!12350 = distinct !DILexicalBlock(scope: !12349, file: !2211, line: 76, column: 17)
!12351 = distinct !DILexicalBlock(scope: !12350, file: !2211, line: 77, column: 17)
!12352 = distinct !DILexicalBlock(scope: !12351, file: !2211, line: 78, column: 17)
!12353 = distinct !DILexicalBlock(scope: !12352, file: !2211, line: 87, column: 21)
!12354 = distinct !DILexicalBlock(scope: !12230, file: !2211, line: 72, column: 17)
!12355 = distinct !DILexicalBlock(scope: !12354, file: !2211, line: 73, column: 17)
!12356 = distinct !DILexicalBlock(scope: !12355, file: !2211, line: 75, column: 17)
!12357 = distinct !DILexicalBlock(scope: !12356, file: !2211, line: 76, column: 17)
!12358 = distinct !DILexicalBlock(scope: !12357, file: !2211, line: 77, column: 17)
!12359 = distinct !DILexicalBlock(scope: !12358, file: !2211, line: 78, column: 17)
!12360 = distinct !DILexicalBlock(scope: !12359, file: !2211, line: 87, column: 21)
!12361 = distinct !DILexicalBlock(scope: !12230, file: !2211, line: 72, column: 17)
!12362 = distinct !DILexicalBlock(scope: !12361, file: !2211, line: 73, column: 17)
!12363 = distinct !DILexicalBlock(scope: !12362, file: !2211, line: 75, column: 17)
!12364 = distinct !DILexicalBlock(scope: !12363, file: !2211, line: 76, column: 17)
!12365 = distinct !DILexicalBlock(scope: !12364, file: !2211, line: 77, column: 17)
!12366 = distinct !DILexicalBlock(scope: !12365, file: !2211, line: 78, column: 17)
!12367 = distinct !DILexicalBlock(scope: !12366, file: !2211, line: 87, column: 21)
!12368 = distinct !DILexicalBlock(scope: !12230, file: !2211, line: 72, column: 17)
!12369 = distinct !DILexicalBlock(scope: !12368, file: !2211, line: 73, column: 17)
!12370 = distinct !DILexicalBlock(scope: !12369, file: !2211, line: 75, column: 17)
!12371 = distinct !DILexicalBlock(scope: !12370, file: !2211, line: 76, column: 17)
!12372 = distinct !DILexicalBlock(scope: !12371, file: !2211, line: 77, column: 17)
!12373 = distinct !DILexicalBlock(scope: !12372, file: !2211, line: 78, column: 17)
!12374 = distinct !DILexicalBlock(scope: !12373, file: !2211, line: 87, column: 21)
!12375 = !DILocation(line: 56, column: 21, scope: !12229)
!12376 = !DILocation(line: 56, column: 13, scope: !12229)
!12377 = !DILocation(line: 88, column: 21, scope: !12237)
!12378 = !DILocation(line: 89, column: 24, scope: !12239, inlinedAt: !12254)
!12379 = !DILocation(line: 1718, column: 17, scope: !12255, inlinedAt: !12267)
!12380 = !DILocation(line: 88, column: 21, scope: !12268)
!12381 = !DILocation(line: 88, column: 33, scope: !12237)
!12382 = !DILocation(line: 88, column: 33, scope: !12275)
!12383 = !DILocation(line: 88, column: 33, scope: !12282)
!12384 = !DILocation(line: 88, column: 33, scope: !12289)
!12385 = !DILocation(line: 81, column: 29, scope: !12249)
!12386 = !DILocation(line: 1718, column: 17, scope: !12255, inlinedAt: !12292)
!12387 = !DILocation(line: 83, column: 29, scope: !12293)
!12388 = !DILocation(line: 85, column: 37, scope: !12294)
!12389 = !DILocation(line: 88, column: 33, scope: !12301)
!12390 = !DILocation(line: 88, column: 33, scope: !12308)
!12391 = !DILocation(line: 88, column: 33, scope: !12315)
!12392 = !DILocation(line: 88, column: 33, scope: !12322)
!12393 = !DILocation(line: 88, column: 21, scope: !12322)
!12394 = !DILocation(line: 81, column: 29, scope: !12329)
!12395 = !DILocation(line: 89, column: 24, scope: !12239, inlinedAt: !12334)
!12396 = !DILocation(line: 1718, column: 17, scope: !12255, inlinedAt: !12337)
!12397 = !DILocation(line: 83, column: 29, scope: !12338)
!12398 = !DILocation(line: 85, column: 37, scope: !12339)
!12399 = !DILocation(line: 85, column: 21, scope: !12339)
!12400 = !DILocation(line: 88, column: 21, scope: !12346)
!12401 = !DILocation(line: 88, column: 33, scope: !12346)
!12402 = !DILocation(line: 88, column: 33, scope: !12353)
!12403 = !DILocation(line: 88, column: 33, scope: !12360)
!12404 = !DILocation(line: 88, column: 33, scope: !12367)
!12405 = !DILocation(line: 88, column: 33, scope: !12374)
!12406 = !DILocation(line: 88, column: 21, scope: !12374)
!12407 = !DILocation(line: 91, column: 10, scope: !12228)
!12408 = distinct !DISubprogram(name: "unpack<4>", linkageName: "_RINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj4_EBc_", scope: !2216, file: !2211, line: 41, type: !1985, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1984)
!12409 = distinct !DILexicalBlock(scope: !12408, file: !2211, line: 51, column: 13)
!12410 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsfISxE4fmY1Y_14polars_parquet", scope: !2224, file: !2223, line: 82, type: !1985, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1984)
!12411 = distinct !DILexicalBlock(scope: !12410, file: !2223, line: 87, column: 5)
!12412 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !2225, file: !2223, line: 435, type: !1985, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1984)
!12413 = distinct !DISubprogram(name: "index<u8, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCsfISxE4fmY1Y_14polars_parquet", scope: !2226, file: !2223, line: 18, type: !1985, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1984)
!12414 = distinct !DISubprogram(name: "{closure#0}<4>", linkageName: "_RNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6unpack8unpack166unpackKj4_E0Be_", scope: !2222, file: !2211, line: 58, type: !2029, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1984)
!12415 = distinct !DILexicalBlock(scope: !12409, file: !2211, line: 58, column: 13)
!12416 = distinct !DILexicalBlock(scope: !12415, file: !2211, line: 72, column: 17)
!12417 = distinct !DILexicalBlock(scope: !12416, file: !2211, line: 73, column: 17)
!12418 = distinct !DILexicalBlock(scope: !12417, file: !2211, line: 75, column: 17)
!12419 = distinct !DILexicalBlock(scope: !12418, file: !2211, line: 76, column: 17)
end_hunk_1
