Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/zkgroup-01bd3d79286543e4.zkgroup.5d344a40d40de915-cgu.11?download=true
inline.NumInlined: 184
inline.NumDeleted: 111
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvXs9_NtCsfkg6qDyjgHi_4hmac9block_apiINtB5_13HmacResetCoreNtCsj2Wav7G13rI_4sha26Sha256ENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs807GXlIGG3x_7zkgroup
define hidden void @_RNvXs9_NtCsfkg6qDyjgHi_4hmac9block_apiINtB5_13HmacResetCoreNtCsj2Wav7G13rI_4sha26Sha256ENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs807GXlIGG3x_7zkgroup(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXNtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB2_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1V_IB1V_IB1V_IB1V_IB1V_NtB1X_5UTermNtNtB1Z_3bit2B1ENtB38_2B0EB3m_EB3m_EB3m_EB3m_EENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_RNvXNtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB2_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1V_IB1V_IB1V_IB1V_IB1V_NtB1X_5UTermNtNtB1Z_3bit2B1ENtB38_2B0EB3m_EB3m_EB3m_EB3m_EENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_RNvXNtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB2_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1V_IB1V_IB1V_IB1V_IB1V_NtB1X_5UTermNtNtB1Z_3bit2B1ENtB38_2B0EB3m_EB3m_EB3m_EB3m_EENtNtCsgxBkk5gSRhY_4core5clone5Clone5cloneCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsZ_NtCsgxBkk5gSRhY_4core5arrayANtNtCsdRrpXuHtjOb_16curve25519_dalek6scalar6Scalarj6_NtNtB7_7default7Default7defaultCs807GXlIGG3x_7zkgroup(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 1 captures(none) dereferenceable(192) initializes((0, 192)) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsZ_NtCsgxBkk5gSRhY_4core5arrayANtNtCsdRrpXuHtjOb_16curve25519_dalek9ristretto14RistrettoPointj6_NtNtB7_7default7Default7defaultCs807GXlIGG3x_7zkgroup(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([960 x i8]) align 8 captures(none) dereferenceable(960) initializes((0, 960)) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 5 uses
  %i.b = alloca [160 x i8], align 8               ; 5 uses
  %i.c = alloca [160 x i8], align 8               ; 5 uses
  %i.d = alloca [160 x i8], align 8               ; 5 uses
  %i.e = alloca [160 x i8], align 8               ; 5 uses
  %i.f = alloca [160 x i8], align 8               ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i8 0, i64 40, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) @77, i64 40, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) @77, i64 40, i1 false)
  %.120..120..120..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.120..120..120..sroa_idx, i8 0, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) @77, i64 40, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) @77, i64 40, i1 false)
  %.120..120..120..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.120..120..120..sroa_idx12, i8 0, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) @77, i64 40, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) @77, i64 40, i1 false)
  %.120..120..120..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.120..120..120..sroa_idx13, i8 0, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) @77, i64 40, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) @77, i64 40, i1 false)
  %.120..120..120..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.120..120..120..sroa_idx14, i8 0, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) @77, i64 40, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) @77, i64 40, i1 false)
  %.120..120..120..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.120..120..120..sroa_idx15, i8 0, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) @77, i64 40, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) @77, i64 40, i1 false)
  %.120..120..120..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.120..120..120..sroa_idx16, i8 0, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.f, i64 160, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.s, ptr noundef nonnull align 8 dereferenceable(160) %i.e, i64 160, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.t, ptr noundef nonnull align 8 dereferenceable(160) %i.d, i64 160, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.u, ptr noundef nonnull align 8 dereferenceable(160) %i.c, i64 160, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.v, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 160, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.w, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCsgxBkk5gSRhY_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtNtCs807GXlIGG3x_7zkgroup3api8profiles11profile_keyNtB4_10ProfileKeyNtNtCsgxBkk5gSRhY_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %i.b, ptr noundef nonnull readonly %1, ptr noundef nonnull readonly %i.c)
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !noalias !228 ; 2 uses
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.410.0.copyload.i = load ptr, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !228 ; 2 uses
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.511.0.copyload.i = load i64, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !228 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !228 ; 2 uses
  %i.d = icmp ult i64 %.sroa.511.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.d, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs807GXlIGG3x_7zkgroup.exit.lr.ph.i, label %_RNvXs8_Cs7yXBOrgAdI3_6subtleShNtB5_14ConstantTimeEq5ct_eqCs807GXlIGG3x_7zkgroup.exit

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs807GXlIGG3x_7zkgroup.exit.lr.ph.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i), "nonnull"(ptr %.sroa.410.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs807GXlIGG3x_7zkgroup.exit.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs807GXlIGG3x_7zkgroup.exit.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs807GXlIGG3x_7zkgroup.exit.i, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs807GXlIGG3x_7zkgroup.exit.lr.ph.i
  %.sroa.01.017.i = phi i8 [ 1, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs807GXlIGG3x_7zkgroup.exit.lr.ph.i ], [ %i.k, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs807GXlIGG3x_7zkgroup.exit.i ]
  %.sroa.511.016.i = phi i64 [ %.sroa.511.0.copyload.i, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs807GXlIGG3x_7zkgroup.exit.lr.ph.i ], [ %i.g, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs807GXlIGG3x_7zkgroup.exit.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.511.016.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.410.0.copyload.i, i64 %.sroa.511.016.i
  %i.g = add nuw i64 %.sroa.511.016.i, 1          ; 2 uses
  %.val.i = load i8, ptr %i.e, align 1, !noundef !5
  %.val9.i = load i8, ptr %i.f, align 1, !noundef !5
  %i.h = icmp eq i8 %.val.i, %.val9.i
  %i.i = zext i1 %i.h to i8
  %i.j = tail call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef %i.i) #18
  %i.k = and i8 %i.j, %.sroa.01.017.i             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.g, %.sroa.7.0.copyload.i
  br i1 %exitcond.not.i, label %_RNvXs8_Cs7yXBOrgAdI3_6subtleShNtB5_14ConstantTimeEq5ct_eqCs807GXlIGG3x_7zkgroup.exit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs807GXlIGG3x_7zkgroup.exit.i

_RNvXs8_Cs7yXBOrgAdI3_6subtleShNtB5_14ConstantTimeEq5ct_eqCs807GXlIGG3x_7zkgroup.exit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs807GXlIGG3x_7zkgroup.exit.i, %bb.a
  %.sroa.01.0.lcssa.i = phi i8 [ 1, %bb.a ], [ %i.k, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs807GXlIGG3x_7zkgroup.exit.i ]
  %i.l = tail call noundef i8 @_RINvCs7yXBOrgAdI3_6subtle9black_boxhECs5xjgei055gZ_13password_hash(i8 noundef %.sroa.01.0.lcssa.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = icmp ne i8 %i.l, 0
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 63
  store i8 0, ptr %i.b, align 1, !alias.scope !231
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_assignCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(32) %1, i8 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull readonly dereferenceable(32) %1, ptr noundef nonnull readonly %i.c)
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 8 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.44.0.copyload = load ptr, ptr %.sroa.44.0..sroa_idx, align 8 ; 8 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.55.0.copyload = load i64, ptr %.sroa.55.0..sroa_idx, align 8 ; 10 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %i.d = icmp ult i64 %.sroa.55.0.copyload, %.sroa.7.0.copyload
  br i1 %i.d, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.lr.ph, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.thread

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.lr.ph: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.44.0.copyload) ]
  %i.e = icmp eq i8 %2, -128
  %i.f = sub nsw i8 0, %2                         ; 5 uses
  br i1 %i.e, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.us, label %iter.check

iter.check:                                       ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.lr.ph
  %i.g = sub i64 %.sroa.7.0.copyload, %.sroa.55.0.copyload ; 7 uses
  %min.iters.check = icmp ult i64 %i.g, 8
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.h = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %.sroa.55.0.copyload
  %i.i = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %.sroa.7.0.copyload
  %i.j = getelementptr i8, ptr %.sroa.44.0.copyload, i64 %.sroa.55.0.copyload
  %i.k = getelementptr i8, ptr %.sroa.44.0.copyload, i64 %.sroa.7.0.copyload
  %bound0 = icmp ult ptr %i.h, %i.k
  %bound1 = icmp ult ptr %i.j, %i.i
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check14 = icmp ult i64 %i.g, 32
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.g, 24
  %n.vec = and i64 %i.g, -32                      ; 4 uses
  %i.m = add i64 %.sroa.55.0.copyload, %n.vec
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = add nuw i64 %.sroa.55.0.copyload, %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.n ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload, i64 %i.n ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <16 x i8>, ptr %i.p, align 1, !alias.scope !242
  %wide.load15 = load <16 x i8>, ptr %i.q, align 1, !alias.scope !242
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %wide.load16 = load <16 x i8>, ptr %i.o, align 1, !alias.scope !244, !noalias !242 ; 2 uses
  %wide.load17 = load <16 x i8>, ptr %i.r, align 1, !alias.scope !244, !noalias !242 ; 2 uses
  %i.s = xor <16 x i8> %wide.load16, %wide.load
  %i.t = xor <16 x i8> %wide.load17, %wide.load15
  %i.u = and <16 x i8> %i.s, %broadcast.splat
  %i.v = and <16 x i8> %i.t, %broadcast.splat
  %i.w = xor <16 x i8> %i.u, %wide.load16
  %i.x = xor <16 x i8> %i.v, %wide.load17
  store <16 x i8> %i.w, ptr %i.o, align 1, !alias.scope !244, !noalias !242
  store <16 x i8> %i.x, ptr %i.r, align 1, !alias.scope !244, !noalias !242
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !237

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.g, -8                     ; 3 uses
  %i.z = add i64 %.sroa.55.0.copyload, %n.vec18
  %broadcast.splatinsert19 = insertelement <8 x i8> poison, i8 %i.f, i64 0
  %broadcast.splat20 = shufflevector <8 x i8> %broadcast.splatinsert19, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 2 uses
  %i.aa = add nuw i64 %.sroa.55.0.copyload, %index21 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload, i64 %i.aa
  %wide.load22 = load <8 x i8>, ptr %i.ac, align 1, !alias.scope !242
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %wide.load23 = load <8 x i8>, ptr %i.ab, align 1, !alias.scope !244, !noalias !242 ; 2 uses
  %i.ad = xor <8 x i8> %wide.load23, %wide.load22
  %i.ae = and <8 x i8> %i.ad, %broadcast.splat20
  %i.af = xor <8 x i8> %i.ae, %wide.load23
  store <8 x i8> %i.af, ptr %i.ab, align 1, !alias.scope !244, !noalias !242
  %index.next24 = add nuw i64 %index21, 8         ; 2 uses
  %i.ag = icmp eq i64 %index.next24, %n.vec18
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !238

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %i.g, %n.vec18
  br i1 %cmp.n25, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.preheader: ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.55.010.ph = phi i64 [ %.sroa.55.0.copyload, %iter.check ], [ %.sroa.55.0.copyload, %vector.memcheck ], [ %i.m, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ] ; 6 uses
  %i.ah = sub i64 %.sroa.7.0.copyload, %.sroa.55.010.ph
  %.neg = add i64 %.sroa.55.010.ph, 1
  %xtraiter = and i64 %i.ah, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.preheader
  %i.ai = add nuw i64 %.sroa.55.010.ph, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.55.010.ph ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload, i64 %.sroa.55.010.ph
  %.val.prol = load i8, ptr %i.ak, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.al = load i8, ptr %i.aj, align 1, !alias.scope !243, !noundef !5 ; 2 uses
  %i.am = xor i8 %i.al, %.val.prol
  %i.an = and i8 %i.am, %i.f
  %i.ao = xor i8 %i.an, %i.al
  store i8 %i.ao, ptr %i.aj, align 1, !alias.scope !243
  br label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.prol.loopexit

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.preheader
  %.sroa.55.010.unr = phi i64 [ %.sroa.55.010.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.preheader ], [ %i.ai, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.prol ]
  %i.ap = icmp eq i64 %.sroa.7.0.copyload, %.neg
  br i1 %i.ap, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.us: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_neg_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23, !noalias !243
  unreachable

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit
  %.sroa.55.010 = phi i64 [ %i.ax, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit ], [ %.sroa.55.010.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.prol.loopexit ] ; 4 uses
  %i.aq = add nuw i64 %.sroa.55.010, 1            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.55.010 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload, i64 %.sroa.55.010
  %.val = load i8, ptr %i.as, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.at = load i8, ptr %i.ar, align 1, !alias.scope !243, !noundef !5 ; 2 uses
  %i.au = xor i8 %i.at, %.val
  %i.av = and i8 %i.au, %i.f
  %i.aw = xor i8 %i.av, %i.at
  store i8 %i.aw, ptr %i.ar, align 1, !alias.scope !243
  %i.ax = add nuw i64 %.sroa.55.010, 2            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.aq ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload, i64 %i.aq
  %.val.1 = load i8, ptr %i.az, align 1
  %i.ba = load i8, ptr %i.ay, align 1, !alias.scope !245, !noundef !5 ; 2 uses
  %i.bb = xor i8 %i.ba, %.val.1
  %i.bc = and i8 %i.bb, %i.f
  %i.bd = xor i8 %i.bc, %i.ba
  store i8 %i.bd, ptr %i.ay, align 1, !alias.scope !245
  %exitcond.not.1 = icmp eq i64 %i.ax, %.sroa.7.0.copyload
  br i1 %exitcond.not.1, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit, !llvm.loop !241

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.thread: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsd_NtNtCs807GXlIGG3x_7zkgroup3api21generic_server_paramsNtB5_31GenericServerSecretParamsLegacyNtCs7CX08mopLjc_15partial_default14PartialDefault15partial_default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1632 x i8]) align 8 captures(none) dereferenceable(1632) initializes((0, 1632)) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1632 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs7_NtCs17t5S1clqUH_12zkcredential11credentialsNtB5_20CredentialPrivateKeyNtCs7CX08mopLjc_15partial_default14PartialDefault15partial_default(ptr noalias nofree noundef nonnull sret([512 x i8]) align 8 captures(none) dereferenceable(512) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  call void @_RNvXs9_NtCs17t5S1clqUH_12zkcredential11credentialsNtB5_19CredentialPublicKeyNtCs7CX08mopLjc_15partial_default14PartialDefault15partial_default(ptr noalias nofree noundef nonnull sret([1120 x i8]) align 8 captures(none) dereferenceable(1120) %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1632) %0, ptr noundef nonnull align 8 dereferenceable(1632) %i.a, i64 1632, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsf_NtNtCs807GXlIGG3x_7zkgroup3api21generic_server_paramsNtB5_33GenericServerSecretParamsStandardNtCs7CX08mopLjc_15partial_default14PartialDefault15partial_default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1632 x i8]) align 8 captures(none) dereferenceable(1632) initializes((0, 1632)) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1632 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs7_NtCs17t5S1clqUH_12zkcredential11credentialsNtB5_20CredentialPrivateKeyNtCs7CX08mopLjc_15partial_default14PartialDefault15partial_default(ptr noalias nofree noundef nonnull sret([512 x i8]) align 8 captures(none) dereferenceable(512) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  call void @_RNvXs9_NtCs17t5S1clqUH_12zkcredential11credentialsNtB5_19CredentialPublicKeyNtCs7CX08mopLjc_15partial_default14PartialDefault15partial_default(ptr noalias nofree noundef nonnull sret([1120 x i8]) align 8 captures(none) dereferenceable(1120) %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1632) %0, ptr noundef nonnull align 8 dereferenceable(1632) %i.a, i64 1632, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_Cs7yXBOrgAdI3_6subtleINtB5_8CtOptionAhj20_ENtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([33 x i8]) align 1 captures(none) dereferenceable(33) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(33) %1, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(33) %2, i8 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 1                ; 8 uses
  %i.c = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(32) %1, i64 32, i1 false), !noalias !264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !263
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  call void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E3newCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull dereferenceable(32) %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull readonly dereferenceable(32) %2, ptr noundef nonnull readonly %i.e), !noalias !265
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !noalias !266 ; 8 uses
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.44.0.copyload.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !266 ; 8 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.55.0.copyload.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !266 ; 10 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !266 ; 7 uses
  %i.f = icmp ult i64 %.sroa.55.0.copyload.i.i, %.sroa.7.0.copyload.i.i
  br i1 %i.f, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.lr.ph.i.i, label %_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup.exit

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.lr.ph.i.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i), "nonnull"(ptr %.sroa.44.0.copyload.i.i) ]
  %i.g = icmp eq i8 %3, -128
  %i.h = sub nsw i8 0, %3                         ; 6 uses
  br i1 %i.g, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.us.i.i, label %iter.check

iter.check:                                       ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.lr.ph.i.i
  %i.i = sub i64 %.sroa.7.0.copyload.i.i, %.sroa.55.0.copyload.i.i ; 7 uses
  %min.iters.check = icmp ult i64 %i.i, 8
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.j = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.0.copyload.i.i
  %i.k = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.7.0.copyload.i.i
  %i.l = getelementptr i8, ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.0.copyload.i.i
  %i.m = getelementptr i8, ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.7.0.copyload.i.i
  %bound0 = icmp ult ptr %i.j, %i.m
  %bound1 = icmp ult ptr %i.l, %i.k
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.i, 32
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.i, 24
  %n.vec = and i64 %i.i, -32                      ; 4 uses
  %i.o = add i64 %.sroa.55.0.copyload.i.i, %n.vec
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = add nuw i64 %.sroa.55.0.copyload.i.i, %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <16 x i8>, ptr %i.r, align 1, !alias.scope !267, !noalias !265
  %wide.load5 = load <16 x i8>, ptr %i.s, align 1, !alias.scope !267, !noalias !265
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %wide.load6 = load <16 x i8>, ptr %i.q, align 1, !alias.scope !269, !noalias !270 ; 2 uses
  %wide.load7 = load <16 x i8>, ptr %i.t, align 1, !alias.scope !269, !noalias !270 ; 2 uses
  %i.u = xor <16 x i8> %wide.load6, %wide.load
  %i.v = xor <16 x i8> %wide.load7, %wide.load5
  %i.w = and <16 x i8> %i.u, %broadcast.splat
  %i.x = and <16 x i8> %i.v, %broadcast.splat
  %i.y = xor <16 x i8> %i.w, %wide.load6
  %i.z = xor <16 x i8> %i.x, %wide.load7
  store <16 x i8> %i.y, ptr %i.q, align 1, !alias.scope !269, !noalias !270
  store <16 x i8> %i.z, ptr %i.t, align 1, !alias.scope !269, !noalias !270
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !258

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup.exit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %i.i, -8                      ; 3 uses
  %i.ab = add i64 %.sroa.55.0.copyload.i.i, %n.vec8
  %broadcast.splatinsert9 = insertelement <8 x i8> poison, i8 %i.h, i64 0
  %broadcast.splat10 = shufflevector <8 x i8> %broadcast.splatinsert9, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next14, %vec.epilog.vector.body ] ; 2 uses
  %i.ac = add nuw i64 %.sroa.55.0.copyload.i.i, %index11 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i, i64 %i.ac
  %wide.load12 = load <8 x i8>, ptr %i.ae, align 1, !alias.scope !267, !noalias !265
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %wide.load13 = load <8 x i8>, ptr %i.ad, align 1, !alias.scope !269, !noalias !270 ; 2 uses
  %i.af = xor <8 x i8> %wide.load13, %wide.load12
  %i.ag = and <8 x i8> %i.af, %broadcast.splat10
  %i.ah = xor <8 x i8> %i.ag, %wide.load13
  store <8 x i8> %i.ah, ptr %i.ad, align 1, !alias.scope !269, !noalias !270
  %index.next14 = add nuw i64 %index11, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next14, %n.vec8
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !259

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n15 = icmp eq i64 %i.i, %n.vec8
  br i1 %cmp.n15, label %_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.preheader

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.preheader: ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.55.010.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i, %iter.check ], [ %.sroa.55.0.copyload.i.i, %vector.memcheck ], [ %i.o, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ] ; 6 uses
  %i.aj = sub i64 %.sroa.7.0.copyload.i.i, %.sroa.55.010.i.i.ph
  %.neg = add i64 %.sroa.55.010.i.i.ph, 1
  %xtraiter = and i64 %i.aj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.prol

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.preheader
  %i.ak = add nuw i64 %.sroa.55.010.i.i.ph, 1
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i.ph ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i.ph
  %.val.i.i.prol = load i8, ptr %i.am, align 1, !noalias !265
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.an = load i8, ptr %i.al, align 1, !alias.scope !268, !noalias !265, !noundef !5 ; 2 uses
  %i.ao = xor i8 %i.an, %.val.i.i.prol
  %i.ap = and i8 %i.ao, %i.h
  %i.aq = xor i8 %i.ap, %i.an
  store i8 %i.aq, ptr %i.al, align 1, !alias.scope !268, !noalias !265
  br label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.prol, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.preheader
  %.sroa.55.010.i.i.unr = phi i64 [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.preheader ], [ %i.ak, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.prol ]
  %i.ar = icmp eq i64 %.sroa.7.0.copyload.i.i, %.neg
  br i1 %i.ar, label %_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.us.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.lr.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_neg_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23, !noalias !271
  unreachable

_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i
  %.sroa.55.010.i.i = phi i64 [ %i.az, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i ], [ %.sroa.55.010.i.i.unr, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.prol.loopexit ] ; 4 uses
  %i.as = add nuw i64 %.sroa.55.010.i.i, 1        ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %.val.i.i = load i8, ptr %i.au, align 1, !noalias !265
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.av = load i8, ptr %i.at, align 1, !alias.scope !268, !noalias !265, !noundef !5 ; 2 uses
  %i.aw = xor i8 %i.av, %.val.i.i
  %i.ax = and i8 %i.aw, %i.h
  %i.ay = xor i8 %i.ax, %i.av
  store i8 %i.ay, ptr %i.at, align 1, !alias.scope !268, !noalias !265
  %i.az = add nuw i64 %.sroa.55.010.i.i, 2        ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.as ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i, i64 %i.as
  %.val.i.i.1 = load i8, ptr %i.bb, align 1, !noalias !265
  %i.bc = load i8, ptr %i.ba, align 1, !alias.scope !272, !noalias !265, !noundef !5 ; 2 uses
  %i.bd = xor i8 %i.bc, %.val.i.i.1
  %i.be = and i8 %i.bd, %i.h
  %i.bf = xor i8 %i.be, %i.bc
  store i8 %i.bf, ptr %i.ba, align 1, !alias.scope !272, !noalias !265
  %exitcond.not.i.i.1 = icmp eq i64 %i.az, %.sroa.7.0.copyload.i.i
  br i1 %exitcond.not.i.i.1, label %_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup.exit.thread, label %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i, !llvm.loop !262

_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup.exit.thread: ; preds = %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMuthEINtBZ_4IterhEEINtB5_7ZipImplBW_B1r_E4nextCs807GXlIGG3x_7zkgroup.exit.i.i, %vec.epilog.middle.block, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, ptr noundef nonnull align 1 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !263
  br label %bb.b

_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, ptr noundef nonnull align 1 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !263
  %i.bg = icmp eq i8 %3, -128
  br i1 %i.bg, label %bb.c, label %_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup.exit._crit_edge

_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup.exit._crit_edge: ; preds = %_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup.exit
  %.pre = sub nsw i8 0, %3
  br label %bb.b

bb.b:                                             ; preds = %_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup.exit._crit_edge, %_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup.exit.thread
  %.pre-phi = phi i8 [ %.pre, %_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup.exit._crit_edge ], [ %i.h, %_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup.exit.thread ]
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !5 ; 2 uses
  %i.bj = load i8, ptr %i.e, align 1, !noundef !5
  %i.bk = xor i8 %i.bj, %i.bi
  %i.bl = and i8 %i.bk, %.pre-phi
  %i.bm = xor i8 %i.bl, %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.bm, ptr %i.bn, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.c:                                             ; preds = %_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup.exit
  call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const24panic_const_neg_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsh_NtNtCs807GXlIGG3x_7zkgroup3api21generic_server_paramsNtB5_25GenericServerSecretParamsNtCs7CX08mopLjc_15partial_default14PartialDefault15partial_default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1640 x i8]) align 8 captures(none) dereferenceable(1640) initializes((0, 1640)) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [1632 x i8], align 8              ; 3 uses
  call void @_RNvXs7_NtCs17t5S1clqUH_12zkcredential11credentialsNtB5_20CredentialPrivateKeyNtCs7CX08mopLjc_15partial_default14PartialDefault15partial_default(ptr noalias nofree noundef nonnull sret([512 x i8]) align 8 captures(none) dereferenceable(512) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  call void @_RNvXs9_NtCs17t5S1clqUH_12zkcredential11credentialsNtB5_19CredentialPublicKeyNtCs7CX08mopLjc_15partial_default14PartialDefault15partial_default(ptr noalias nofree noundef nonnull sret([1120 x i8]) align 8 captures(none) dereferenceable(1120) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1632) %i.c, ptr noundef nonnull align 8 dereferenceable(1632) %i.a, i64 1632, i1 false)
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsl_NtNtCs807GXlIGG3x_7zkgroup3api21generic_server_paramsINtB5_29GenericServerPublicParamsImplKh0_ENtCs7CX08mopLjc_15partial_default14PartialDefault15partial_defaultB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1120 x i8]) align 8 captures(none) dereferenceable(1120) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs9_NtCs17t5S1clqUH_12zkcredential11credentialsNtB5_19CredentialPublicKeyNtCs7CX08mopLjc_15partial_default14PartialDefault15partial_default(ptr noalias nofree noundef nonnull sret([1120 x i8]) align 8 captures(none) dereferenceable(1120) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsl_NtNtCs807GXlIGG3x_7zkgroup3api21generic_server_paramsINtB5_29GenericServerPublicParamsImplKh1_ENtCs7CX08mopLjc_15partial_default14PartialDefault15partial_defaultB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1120 x i8]) align 8 captures(none) dereferenceable(1120) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvXs9_NtCs17t5S1clqUH_12zkcredential11credentialsNtB5_19CredentialPublicKeyNtCs7CX08mopLjc_15partial_default14PartialDefault15partial_default(ptr noalias nofree noundef nonnull sret([1120 x i8]) align 8 captures(none) dereferenceable(1120) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsn_NtNtCs807GXlIGG3x_7zkgroup3api21generic_server_paramsNtB5_25GenericServerPublicParamsNtCs7CX08mopLjc_15partial_default14PartialDefault15partial_default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1128 x i8]) align 8 captures(none) dereferenceable(1128) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs9_NtCs17t5S1clqUH_12zkcredential11credentialsNtB5_19CredentialPublicKeyNtCs7CX08mopLjc_15partial_default14PartialDefault15partial_default(ptr noalias nofree noundef nonnull sret([1120 x i8]) align 8 captures(none) dereferenceable(1120) %i.a)
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_commitment13SYSTEM_PARAMS0INtNtNtCsgxBkk5gSRhY_4core3ops8function6FnOnceuE9call_onceBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([480 x i8]) align 8 captures(none) dereferenceable(480) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [488 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !279
  call void @_RINvNtNtCs807GXlIGG3x_7zkgroup6common13serialization11deserializeNtNtNtB6_6crypto22profile_key_commitment12SystemParamsEB6_(ptr noalias nofree noundef nonnull sret([488 x i8]) align 8 captures(none) dereferenceable(488) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 96), !noalias !279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.c = load i64, ptr %i.b, align 8, !range !7, !alias.scope !281, !noalias !279, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNCNvNtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_commitment13SYSTEM_PARAMS0B7_.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !282
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !281, !noalias !279, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !281, !noalias !279, !noundef !5
  store ptr %i.f, ptr %i.a, align 8, !noalias !282
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.i, align 8, !noalias !282
  call void @_RNvNtCsgxBkk5gSRhY_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 22, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #19, !noalias !282
  unreachable

_RNCNvNtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_commitment13SYSTEM_PARAMS0B7_.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull readonly align 8 dereferenceable(480) %i.j, i64 480, i1 false), !alias.scope !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !279
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvYNtCsj2Wav7G13rI_4sha26Sha256NtCs2KKWnYNkHVH_6digest11FixedOutput14finalize_fixedCs807GXlIGG3x_7zkgroup(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 1 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(104) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [64 x i8], align 1                ; 4 uses
  %i.c = alloca [64 x i8], align 1                ; 4 uses
  %i.d = alloca [64 x i8], align 1                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [64 x i8], align 1                ; 4 uses
  %i.g = alloca [64 x i8], align 1                ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 1                ; 6 uses
  %i.l = alloca [104 x i8], align 8               ; 15 uses
  %i.m = alloca [32 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtB2Z_7default7Default7default0E0ECs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE7from_fnNCNvXsg_B5_BF_NtNtCsgxBkk5gSRhY_4core7default7Default7default0ECs807GXlIGG3x_7zkgroup.exit unwind label %bb.i

_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE7from_fnNCNvXsg_B5_BF_NtNtCsgxBkk5gSRhY_4core7default7Default7default0ECs807GXlIGG3x_7zkgroup.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.l, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !342
  invoke void @_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE11try_from_fnNtNtCsgxBkk5gSRhY_4core7convert10InfallibleNCINvB2_7from_fnNCNvXsg_B5_BF_NtNtB2Z_7default7Default7default0E0ECs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(none) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull %i.a)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !343

.noexc.i:                                         ; preds = %_RINvMNtCs5DMeLc8gTfG_12hybrid_array7from_fnINtB5_5ArrayhINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBT_IBT_IBT_IBT_IBT_NtBV_5UTermNtNtBX_3bit2B1ENtB20_2B0EB2d_EB2d_EB2d_EB2d_EE7from_fnNCNvXsg_B5_BF_NtNtCsgxBkk5gSRhY_4core7default7Default7default0ECs807GXlIGG3x_7zkgroup.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !344)
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 63 ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !346, !noundef !5 ; 2 uses
  %i.q = zext nneg i8 %i.p to i64                 ; 3 uses
  %i.r = icmp ult i8 %i.p, 64
  call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 96 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !347, !noundef !5
  %i.u = shl i64 %i.t, 9
  %i.v = shl nuw nsw i64 %i.q, 3
  %i.w = or disjoint i64 %i.u, %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !348
  %i.x = call i64 @llvm.bswap.i64(i64 %i.w)
  store i64 %i.x, ptr %i.h, align 8, !noalias !348
  %i.y = xor i64 %i.q, 63                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q ; 2 uses
  store i8 -128, ptr %i.z, align 1, !alias.scope !349
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false), !alias.scope !349
  %i.ab = icmp samesign ult i64 %i.y, 8
  br i1 %i.ab, label %bb.c, label %bb.e

bb.b:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %i.o, align 1, !alias.scope !350, !noalias !351
  br label %.body.i

bb.c:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.l, i64 64, i1 false), !noalias !353
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1)
          to label %bb.d unwind label %bb.b, !noalias !354

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.l, i8 0, i64 64, i1 false), !alias.scope !346, !noalias !355
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  invoke void @_RINvNtCsgxBkk5gSRhY_4core5slice20copy_from_slice_implhECs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull %i.ad, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
          to label %bb.f unwind label %bb.b, !noalias !356

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.l, i64 64, i1 false), !noalias !353
  invoke void @_RNvNtCsj2Wav7G13rI_4sha26sha25611compress256(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 1)
          to label %_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECs807GXlIGG3x_7zkgroup.exit.i.i.i unwind label %bb.b, !noalias !356

_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECs807GXlIGG3x_7zkgroup.exit.i.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !357
  store i8 0, ptr %i.o, align 1, !alias.scope !358, !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !348
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !360
  store ptr %i.ae, ptr %i.e, align 8, !noalias !361
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !361
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !361
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 32, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !361
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 4, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !348
  invoke void @_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E3newCs807GXlIGG3x_7zkgroup(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull %i.s)
          to label %.noexc1.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !362

.noexc1.i:                                        ; preds = %_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECs807GXlIGG3x_7zkgroup.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !360
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 3 uses
end_hunk_0
begin_hunk_1_@llvm.experimental.noalias.scope.decl
!71 = distinct !{!71, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup"}
!72 = distinct !{!72, !71, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup: argument 0"}
!73 = distinct !{!73, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac9HmacResetNtCsj2Wav7G13rI_4sha26Sha256EECs807GXlIGG3x_7zkgroup"}
!74 = distinct !{!74, !73, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac9HmacResetNtCsj2Wav7G13rI_4sha26Sha256EECs807GXlIGG3x_7zkgroup: argument 0"}
!75 = distinct !{!75, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup"}
!76 = distinct !{!76, !75, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup: argument 0"}
!77 = distinct !{!77, i1 true, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup"}
!78 = distinct !{!78, !77, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup: argument 0"}
!79 = distinct !{!79, i1 true, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup"}
!80 = distinct !{!80, !79, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup: argument 0"}
!81 = distinct !{!81, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_"}
!82 = distinct !{!82, !81, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_: argument 0"}
!83 = distinct !{!83, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup"}
!84 = distinct !{!84, !83, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup: argument 0"}
!85 = distinct !{!85, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac9HmacResetNtCsj2Wav7G13rI_4sha26Sha256EECs807GXlIGG3x_7zkgroup"}
!86 = distinct !{!86, !85, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac9HmacResetNtCsj2Wav7G13rI_4sha26Sha256EECs807GXlIGG3x_7zkgroup: argument 0"}
!87 = distinct !{!87, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup"}
!88 = distinct !{!88, !87, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup: argument 0"}
!89 = distinct !{!89, i1 true, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup"}
!90 = distinct !{!90, !89, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup: argument 0"}
!91 = distinct !{!91, i1 true, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup"}
!92 = distinct !{!92, !91, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup: argument 0"}
!93 = !{!80, !78, !76, !74, !72, !70}
!94 = !{!92, !90, !88, !86, !84, !82}
!95 = distinct !{!95, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_"}
!96 = distinct !{!96, !95, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_: argument 0"}
!97 = distinct !{!97, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup"}
!98 = distinct !{!98, !97, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup: argument 0"}
!99 = distinct !{!99, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac9HmacResetNtCsj2Wav7G13rI_4sha26Sha256EECs807GXlIGG3x_7zkgroup"}
!100 = distinct !{!100, !99, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac9HmacResetNtCsj2Wav7G13rI_4sha26Sha256EECs807GXlIGG3x_7zkgroup: argument 0"}
!101 = distinct !{!101, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup"}
!102 = distinct !{!102, !101, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup: argument 0"}
!103 = distinct !{!103, i1 true, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup"}
!104 = distinct !{!104, !103, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup: argument 0"}
!105 = distinct !{!105, i1 true, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup"}
!106 = distinct !{!106, !105, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup: argument 0"}
!107 = distinct !{!107, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_"}
!108 = distinct !{!108, !107, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_: argument 0"}
!109 = distinct !{!109, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup"}
!110 = distinct !{!110, !109, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup: argument 0"}
!111 = distinct !{!111, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac9HmacResetNtCsj2Wav7G13rI_4sha26Sha256EECs807GXlIGG3x_7zkgroup"}
!112 = distinct !{!112, !111, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac9HmacResetNtCsj2Wav7G13rI_4sha26Sha256EECs807GXlIGG3x_7zkgroup: argument 0"}
!113 = distinct !{!113, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup"}
!114 = distinct !{!114, !113, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup: argument 0"}
!115 = distinct !{!115, i1 true, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup"}
!116 = distinct !{!116, !115, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup: argument 0"}
!117 = distinct !{!117, i1 true, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup"}
!118 = distinct !{!118, !117, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup: argument 0"}
!119 = !{!106, !104, !102, !100, !98, !96}
!120 = !{!118, !116, !114, !112, !110, !108}
!121 = distinct !{!121, i1 true, !"_RNvXs1d_NtCs8pp35hPiiF8_3aes10autodetectNtB6_9Aes256EncNtCs17IHq5a1FQ2_13crypto_common7KeyInit3new"}
!122 = distinct !{!122, !121, !"_RNvXs1d_NtCs8pp35hPiiF8_3aes10autodetectNtB6_9Aes256EncNtCs17IHq5a1FQ2_13crypto_common7KeyInit3new: argument 1"}
!123 = distinct !{!123, !121, !"_RNvXs1d_NtCs8pp35hPiiF8_3aes10autodetectNtB6_9Aes256EncNtCs17IHq5a1FQ2_13crypto_common7KeyInit3new: argument 0"}
!124 = distinct !{!124, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs8pp35hPiiF8_3aes10autodetect9Aes256EncECs807GXlIGG3x_7zkgroup"}
!125 = distinct !{!125, !124, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs8pp35hPiiF8_3aes10autodetect9Aes256EncECs807GXlIGG3x_7zkgroup: argument 0"}
!126 = distinct !{!126, i1 true, !"_RNvXs1j_NtCs8pp35hPiiF8_3aes10autodetectNtB6_9Aes256EncNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop"}
!127 = distinct !{!127, !126, !"_RNvXs1j_NtCs8pp35hPiiF8_3aes10autodetectNtB6_9Aes256EncNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop: argument 0"}
!128 = !{!123, !122}
!129 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!130 = !{!123}
!131 = !{!122}
!132 = !{!125}
!133 = !{!127}
!134 = !{!127, !125}
!135 = distinct !{!135, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_"}
!136 = distinct !{!136, !135, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_: argument 0"}
!137 = distinct !{!137, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup"}
!138 = distinct !{!138, !137, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup: argument 0"}
!139 = distinct !{!139, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac9HmacResetNtCsj2Wav7G13rI_4sha26Sha256EECs807GXlIGG3x_7zkgroup"}
!140 = distinct !{!140, !139, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac9HmacResetNtCsj2Wav7G13rI_4sha26Sha256EECs807GXlIGG3x_7zkgroup: argument 0"}
!141 = distinct !{!141, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup"}
!142 = distinct !{!142, !141, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup: argument 0"}
!143 = distinct !{!143, i1 true, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup"}
!144 = distinct !{!144, !143, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup: argument 0"}
!145 = distinct !{!145, i1 true, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup"}
!146 = distinct !{!146, !145, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup: argument 0"}
!147 = distinct !{!147, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_"}
!148 = distinct !{!148, !147, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_: argument 0"}
!149 = distinct !{!149, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup"}
!150 = distinct !{!150, !149, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup: argument 0"}
!151 = distinct !{!151, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac9HmacResetNtCsj2Wav7G13rI_4sha26Sha256EECs807GXlIGG3x_7zkgroup"}
!152 = distinct !{!152, !151, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac9HmacResetNtCsj2Wav7G13rI_4sha26Sha256EECs807GXlIGG3x_7zkgroup: argument 0"}
!153 = distinct !{!153, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup"}
!154 = distinct !{!154, !153, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup: argument 0"}
!155 = distinct !{!155, i1 true, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup"}
!156 = distinct !{!156, !155, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup: argument 0"}
!157 = distinct !{!157, i1 true, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup"}
!158 = distinct !{!158, !157, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup: argument 0"}
!159 = !{!146, !144, !142, !140, !138, !136}
!160 = !{!158, !156, !154, !152, !150, !148}
!161 = distinct !{!161, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_"}
!162 = distinct !{!162, !161, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_: argument 0"}
!163 = distinct !{!163, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup"}
!164 = distinct !{!164, !163, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup: argument 0"}
!165 = distinct !{!165, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac9HmacResetNtCsj2Wav7G13rI_4sha26Sha256EECs807GXlIGG3x_7zkgroup"}
!166 = distinct !{!166, !165, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac9HmacResetNtCsj2Wav7G13rI_4sha26Sha256EECs807GXlIGG3x_7zkgroup: argument 0"}
!167 = distinct !{!167, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup"}
!168 = distinct !{!168, !167, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup: argument 0"}
!169 = distinct !{!169, i1 true, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup"}
!170 = distinct !{!170, !169, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup: argument 0"}
!171 = distinct !{!171, i1 true, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup"}
!172 = distinct !{!172, !171, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup: argument 0"}
!173 = distinct !{!173, i1 true, !"_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCsiDBhRLMtIBd_3hex5error12FromHexErrorE6expectCs807GXlIGG3x_7zkgroup"}
!174 = distinct !{!174, !173, !"_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultuNtNtCsiDBhRLMtIBd_3hex5error12FromHexErrorE6expectCs807GXlIGG3x_7zkgroup: argument 0"}
!175 = distinct !{!175, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_"}
!176 = distinct !{!176, !175, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_: argument 0"}
!177 = distinct !{!177, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup"}
!178 = distinct !{!178, !177, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup: argument 0"}
!179 = distinct !{!179, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac9HmacResetNtCsj2Wav7G13rI_4sha26Sha256EECs807GXlIGG3x_7zkgroup"}
!180 = distinct !{!180, !179, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac9HmacResetNtCsj2Wav7G13rI_4sha26Sha256EECs807GXlIGG3x_7zkgroup: argument 0"}
!181 = distinct !{!181, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup"}
!182 = distinct !{!182, !181, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup: argument 0"}
!183 = distinct !{!183, i1 true, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup"}
!184 = distinct !{!184, !183, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup: argument 0"}
!185 = distinct !{!185, i1 true, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup"}
!186 = distinct !{!186, !185, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup: argument 0"}
!187 = !{!172, !170, !168, !166, !164, !162}
!188 = !{!174}
!189 = !{i32 -1, i32 3}
!190 = !{!186, !184, !182, !180, !178, !176}
!191 = distinct !{!191, i1 true, !"_RNvMNtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_commitmentNtB2_12SystemParams13get_hardcoded"}
!192 = distinct !{!192, !191, !"_RNvMNtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_commitmentNtB2_12SystemParams13get_hardcoded: argument 0"}
!193 = !{!192}
!194 = distinct !{!194, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_"}
!195 = distinct !{!195, !194, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_: argument 0"}
!196 = distinct !{!196, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup"}
!197 = distinct !{!197, !196, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup: argument 0"}
!198 = distinct !{!198, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac9HmacResetNtCsj2Wav7G13rI_4sha26Sha256EECs807GXlIGG3x_7zkgroup"}
!199 = distinct !{!199, !198, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac9HmacResetNtCsj2Wav7G13rI_4sha26Sha256EECs807GXlIGG3x_7zkgroup: argument 0"}
!200 = distinct !{!200, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup"}
!201 = distinct !{!201, !200, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup: argument 0"}
!202 = distinct !{!202, i1 true, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup"}
!203 = distinct !{!203, !202, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup: argument 0"}
!204 = distinct !{!204, i1 true, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup"}
!205 = distinct !{!205, !204, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup: argument 0"}
!206 = distinct !{!206, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_"}
!207 = distinct !{!207, !206, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs807GXlIGG3x_7zkgroup6common3sho3ShoEBH_: argument 0"}
!208 = distinct !{!208, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup"}
!209 = distinct !{!209, !208, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsfFEWD1QhNwv_6poksho13shohmacsha25613ShoHmacSha256ECs807GXlIGG3x_7zkgroup: argument 0"}
!210 = distinct !{!210, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac9HmacResetNtCsj2Wav7G13rI_4sha26Sha256EECs807GXlIGG3x_7zkgroup"}
!211 = distinct !{!211, !210, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsfkg6qDyjgHi_4hmac9HmacResetNtCsj2Wav7G13rI_4sha26Sha256EECs807GXlIGG3x_7zkgroup: argument 0"}
!212 = distinct !{!212, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup"}
!213 = distinct !{!213, !212, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup: argument 0"}
!214 = distinct !{!214, i1 true, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup"}
!215 = distinct !{!215, !214, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup: argument 0"}
!216 = distinct !{!216, i1 true, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup"}
!217 = distinct !{!217, !216, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup: argument 0"}
!218 = !{!205, !203, !201, !199, !197, !195}
!219 = !{!217, !215, !213, !211, !209, !207}
!220 = !{i32 0, i32 3}
!221 = distinct !{!221, i1 true, !"_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt"}
!222 = distinct !{!222, !221, !"_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt: argument 1"}
!223 = distinct !{!223, !221, !"_RNvXs9_NtNtCsgxBkk5gSRhY_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt: argument 0"}
!224 = !{!223, !222}
!225 = distinct !{!225, i1 true, !"_RNvXs8_Cs7yXBOrgAdI3_6subtleShNtB5_14ConstantTimeEq5ct_eqCs807GXlIGG3x_7zkgroup"}
!226 = distinct !{!226, !225, !"_RNvXs8_Cs7yXBOrgAdI3_6subtleShNtB5_14ConstantTimeEq5ct_eqCs807GXlIGG3x_7zkgroup: argument 1"}
!227 = distinct !{!227, !225, !"_RNvXs8_Cs7yXBOrgAdI3_6subtleShNtB5_14ConstantTimeEq5ct_eqCs807GXlIGG3x_7zkgroup: argument 0"}
!228 = !{!227, !226}
!229 = distinct !{!229, i1 true, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2s_2B0EB2G_EB2G_EB2G_EB2G_EB2G_EECs807GXlIGG3x_7zkgroup"}
!230 = distinct !{!230, !229, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2s_2B0EB2G_EB2G_EB2G_EB2G_EB2G_EECs807GXlIGG3x_7zkgroup: argument 0"}
!231 = !{!230}
!232 = distinct !{!232, i1 false, !"LVerDomain"}
!233 = distinct !{!233, !232}
!234 = distinct !{!234, i1 true, !"_RNvXsH_Cs7yXBOrgAdI3_6subtlehNtB5_23ConditionallySelectable18conditional_assign"}
!235 = distinct !{!235, !234, !"_RNvXsH_Cs7yXBOrgAdI3_6subtlehNtB5_23ConditionallySelectable18conditional_assign: argument 0"}
!236 = distinct !{!236, !232}
!237 = distinct !{!237, !11, !12}
!238 = distinct !{!238, !11, !12}
!239 = distinct !{!239, i1 true, !"_RNvXsH_Cs7yXBOrgAdI3_6subtlehNtB5_23ConditionallySelectable18conditional_assign"}
!240 = distinct !{!240, !239, !"_RNvXsH_Cs7yXBOrgAdI3_6subtlehNtB5_23ConditionallySelectable18conditional_assign: argument 0:It1"}
!241 = distinct !{!241, !11}
!242 = !{!233}
!243 = !{!235}
!244 = !{!235, !236}
!245 = !{!240}
!246 = distinct !{!246, i1 true, !"_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup"}
!247 = distinct !{!247, !246, !"_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup: argument 2"}
!248 = distinct !{!248, !246, !"_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup: argument 1"}
!249 = distinct !{!249, !246, !"_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_selectCs807GXlIGG3x_7zkgroup: argument 0"}
!250 = distinct !{!250, i1 true, !"_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_assignCs807GXlIGG3x_7zkgroup"}
!251 = distinct !{!251, !250, !"_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_assignCs807GXlIGG3x_7zkgroup: argument 1"}
!252 = distinct !{!252, !250, !"_RNvXsd_Cs7yXBOrgAdI3_6subtleAhj20_NtB5_23ConditionallySelectable18conditional_assignCs807GXlIGG3x_7zkgroup: argument 0"}
!253 = distinct !{!253, i1 false, !"LVerDomain"}
!254 = distinct !{!254, !253}
!255 = distinct !{!255, i1 true, !"_RNvXsH_Cs7yXBOrgAdI3_6subtlehNtB5_23ConditionallySelectable18conditional_assign"}
!256 = distinct !{!256, !255, !"_RNvXsH_Cs7yXBOrgAdI3_6subtlehNtB5_23ConditionallySelectable18conditional_assign: argument 0"}
!257 = distinct !{!257, !253}
!258 = distinct !{!258, !11, !12}
!259 = distinct !{!259, !11, !12}
!260 = distinct !{!260, i1 true, !"_RNvXsH_Cs7yXBOrgAdI3_6subtlehNtB5_23ConditionallySelectable18conditional_assign"}
!261 = distinct !{!261, !260, !"_RNvXsH_Cs7yXBOrgAdI3_6subtlehNtB5_23ConditionallySelectable18conditional_assign: argument 0:It1"}
!262 = distinct !{!262, !11}
!263 = !{!249, !248, !247}
!264 = !{!249, !247}
!265 = !{!249, !248}
!266 = !{!252, !251, !249, !248, !247}
!267 = !{!254}
!268 = !{!256}
!269 = !{!256, !257}
!270 = !{!249, !248, !254}
!271 = !{!256, !249, !248}
!272 = !{!261}
!273 = !{!248, !247}
!274 = distinct !{!274, i1 true, !"_RNCNvNtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_commitment13SYSTEM_PARAMS0B7_"}
!275 = distinct !{!275, !274, !"_RNCNvNtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_commitment13SYSTEM_PARAMS0B7_: argument 0"}
!276 = distinct !{!276, i1 true, !"_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultNtNtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_commitment12SystemParamsNtNtNtBN_6common6errors29ZkGroupDeserializationFailureE6expectBN_"}
!277 = distinct !{!277, !276, !"_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultNtNtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_commitment12SystemParamsNtNtNtBN_6common6errors29ZkGroupDeserializationFailureE6expectBN_: argument 0"}
!278 = distinct !{!278, !276, !"_RNvMNtCsgxBkk5gSRhY_4core6resultINtB2_6ResultNtNtNtCs807GXlIGG3x_7zkgroup6crypto22profile_key_commitment12SystemParamsNtNtNtBN_6common6errors29ZkGroupDeserializationFailureE6expectBN_: argument 1"}
!279 = !{!275}
!280 = !{!277}
!281 = !{!278}
!282 = !{!277, !278, !275}
!283 = !{!277, !278}
!284 = distinct !{!284, i1 true, !"_RNvXs4_Csj2Wav7G13rI_4sha2NtB5_6Sha256NtCs2KKWnYNkHVH_6digest11FixedOutput13finalize_into"}
!285 = distinct !{!285, !284, !"_RNvXs4_Csj2Wav7G13rI_4sha2NtB5_6Sha256NtCs2KKWnYNkHVH_6digest11FixedOutput13finalize_into: argument 0"}
!286 = distinct !{!286, i1 true, !"_RNvXs6_NtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB5_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB3b_2B0EB3p_EB3p_EB3p_EB3p_EENtB7_15FixedOutputCore19finalize_fixed_coreCs807GXlIGG3x_7zkgroup"}
!287 = distinct !{!287, !286, !"_RNvXs6_NtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB5_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB3b_2B0EB3p_EB3p_EB3p_EB3p_EENtB7_15FixedOutputCore19finalize_fixed_coreCs807GXlIGG3x_7zkgroup: argument 0"}
!288 = distinct !{!288, !286, !"_RNvXs6_NtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB5_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB3b_2B0EB3p_EB3p_EB3p_EB3p_EENtB7_15FixedOutputCore19finalize_fixed_coreCs807GXlIGG3x_7zkgroup: argument 1"}
!289 = distinct !{!289, !284, !"_RNvXs4_Csj2Wav7G13rI_4sha2NtB5_6Sha256NtCs2KKWnYNkHVH_6digest11FixedOutput13finalize_into: argument 1"}
!290 = distinct !{!290, !286, !"_RNvXs6_NtNtCs2KKWnYNkHVH_6digest9block_api11ct_variableINtB5_12CtOutWrapperNtNtCsj2Wav7G13rI_4sha29block_api13Sha256VarCoreINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1Y_IB1Y_IB1Y_IB1Y_IB1Y_NtB20_5UTermNtNtB22_3bit2B1ENtB3b_2B0EB3p_EB3p_EB3p_EB3p_EENtB7_15FixedOutputCore19finalize_fixed_coreCs807GXlIGG3x_7zkgroup: argument 2"}
!291 = distinct !{!291, i1 true, !"_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core"}
!292 = distinct !{!292, !291, !"_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core: argument 0"}
!293 = distinct !{!293, !291, !"_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core: argument 1"}
!294 = distinct !{!294, !291, !"_RNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB5_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core: argument 2"}
!295 = distinct !{!295, i1 true, !"_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECs807GXlIGG3x_7zkgroup"}
!296 = distinct !{!296, !295, !"_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECs807GXlIGG3x_7zkgroup: argument 0"}
!297 = distinct !{!297, i1 true, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2s_2B0EB2G_EB2G_EB2G_EB2G_EB2G_EECs807GXlIGG3x_7zkgroup"}
!298 = distinct !{!298, !297, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2s_2B0EB2G_EB2G_EB2G_EB2G_EB2G_EECs807GXlIGG3x_7zkgroup: argument 0"}
!299 = distinct !{!299, i1 true, !"_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup"}
!300 = distinct !{!300, !299, !"_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup: argument 0"}
!301 = distinct !{!301, i1 true, !"_RNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB7_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0Cs807GXlIGG3x_7zkgroup"}
!302 = distinct !{!302, !301, !"_RNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB7_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0Cs807GXlIGG3x_7zkgroup: argument 0"}
!303 = distinct !{!303, !295, !"_RINvMs7_CsjsLMAtnDKjw_12block_bufferINtB6_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBS_IBS_IBS_IBS_IBS_IBS_NtBU_5UTermNtNtBW_3bit2B1ENtB23_2B0EB2g_EB2g_EB2g_EB2g_EB2g_ENtB6_5EagerE10digest_padNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB3l_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0ECs807GXlIGG3x_7zkgroup: argument 1"}
!304 = distinct !{!304, i1 true, !"_RNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB7_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0Cs807GXlIGG3x_7zkgroup"}
!305 = distinct !{!305, !304, !"_RNCNvXs3_NtCsj2Wav7G13rI_4sha29block_apiNtB7_13Sha256VarCoreNtNtCs2KKWnYNkHVH_6digest9block_api18VariableOutputCore22finalize_variable_core0Cs807GXlIGG3x_7zkgroup: argument 0"}
!306 = distinct !{!306, i1 true, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2s_2B0EB2G_EB2G_EB2G_EB2G_EB2G_EECs807GXlIGG3x_7zkgroup"}
!307 = distinct !{!307, !306, !"_RINvXNtCsjsLMAtnDKjw_12block_buffer6sealedNtB5_5EagerNtB3_6Sealed7set_posINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1a_IB1a_IB1a_IB1a_IB1a_IB1a_NtB1c_5UTermNtNtB1e_3bit2B1ENtB2s_2B0EB2G_EB2G_EB2G_EB2G_EB2G_EECs807GXlIGG3x_7zkgroup: argument 0"}
!308 = distinct !{!308, i1 true, !"_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup"}
!309 = distinct !{!309, !308, !"_RNvXsb_CsjsLMAtnDKjw_12block_bufferINtB5_10ResetGuardINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBQ_IBQ_IBQ_IBQ_IBQ_IBQ_NtBS_5UTermNtNtBU_3bit2B1ENtB21_2B0EB2e_EB2e_EB2e_EB2e_EB2e_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup: argument 0"}
!310 = distinct !{!310, i1 true, !"_RINvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4ItermEECs807GXlIGG3x_7zkgroup"}
!311 = distinct !{!311, !310, !"_RINvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4ItermEECs807GXlIGG3x_7zkgroup: argument 1"}
!312 = distinct !{!312, !310, !"_RINvYINtNtNtCsgxBkk5gSRhY_4core5slice4iter14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_4ItermEECs807GXlIGG3x_7zkgroup: argument 0"}
!313 = distinct !{!313, i1 true, !"_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCs807GXlIGG3x_7zkgroup"}
!314 = distinct !{!314, !313, !"_RNvXs3_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_4ItermEEINtB5_7ZipImplBW_B1z_E4nextCs807GXlIGG3x_7zkgroup: argument 1"}
!315 = distinct !{!315, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCsj2Wav7G13rI_4sha26Sha256ECs807GXlIGG3x_7zkgroup"}
!316 = distinct !{!316, !315, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCsj2Wav7G13rI_4sha26Sha256ECs807GXlIGG3x_7zkgroup: argument 0"}
!317 = distinct !{!317, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup"}
!318 = distinct !{!318, !317, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup: argument 0"}
!319 = distinct !{!319, i1 true, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup"}
!320 = distinct !{!320, !319, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup: argument 0"}
!321 = distinct !{!321, i1 true, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup"}
!322 = distinct !{!322, !321, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup: argument 0"}
!323 = distinct !{!323, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCsj2Wav7G13rI_4sha26Sha256ECs807GXlIGG3x_7zkgroup"}
!324 = distinct !{!324, !323, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCsj2Wav7G13rI_4sha26Sha256ECs807GXlIGG3x_7zkgroup: argument 0"}
!325 = distinct !{!325, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup"}
!326 = distinct !{!326, !325, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup: argument 0"}
!327 = distinct !{!327, i1 true, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup"}
!328 = distinct !{!328, !327, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup: argument 0"}
!329 = distinct !{!329, i1 true, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup"}
!330 = distinct !{!330, !329, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup: argument 0"}
!331 = distinct !{!331, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCsj2Wav7G13rI_4sha26Sha256ECs807GXlIGG3x_7zkgroup"}
!332 = distinct !{!332, !331, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtCsj2Wav7G13rI_4sha26Sha256ECs807GXlIGG3x_7zkgroup: argument 0"}
!333 = distinct !{!333, i1 true, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup"}
!334 = distinct !{!334, !333, !"_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtCsjsLMAtnDKjw_12block_buffer11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIB1k_IB1k_IB1k_IB1k_IB1k_IB1k_NtB1m_5UTermNtNtB1o_3bit2B1ENtB2C_2B0EB2Q_EB2Q_EB2Q_EB2Q_EB2Q_ENtBE_5EagerEECs807GXlIGG3x_7zkgroup: argument 0"}
!335 = distinct !{!335, i1 true, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup"}
!336 = distinct !{!336, !335, !"_RNvXs9_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs807GXlIGG3x_7zkgroup: argument 0"}
!337 = distinct !{!337, i1 true, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup"}
!338 = distinct !{!338, !337, !"_RNvXs8_CsjsLMAtnDKjw_12block_bufferINtB5_11BlockBufferINtNtCsgAO26H8IC1Y_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtCseNmJmsPJ47l_7zeroize7Zeroize7zeroizeCs807GXlIGG3x_7zkgroup: argument 0"}
!339 = !{!285}
!340 = !{!287}
!341 = !{!288}
!342 = !{!287, !288, !290, !285, !289}
!343 = !{!285, !289}
!344 = !{!292}
!345 = !{!293}
!346 = !{!293, !288, !285}
!347 = !{!292, !287, !285}
!348 = !{!292, !293, !294, !287, !288, !290, !285, !289}
!349 = !{!296, !293, !288, !285}
!350 = !{!298, !293, !288, !285}
!351 = !{!300}
!352 = !{!302, !292, !293, !294, !287, !288, !290, !285, !289}
!353 = !{!292, !294, !287, !290, !289}
!354 = !{!293, !294, !288, !290, !289}
!355 = !{!303}
!356 = !{!294, !290, !289}
!357 = !{!305, !292, !293, !294, !287, !288, !290, !285, !289}
!358 = !{!307, !293, !288, !285}
!359 = !{!309}
!360 = !{!312, !311, !292, !293, !294, !287, !288, !290, !285, !289}
!361 = !{!312, !292, !293, !294, !287, !288, !290, !285, !289}
!362 = !{!289}
!363 = !{!314}
!364 = !{!290, !289}
!365 = !{!322, !320, !318, !316, !285, !289}
!366 = !{!330, !328, !326, !324, !285, !289}
!367 = !{!338, !336, !334, !332}
end_hunk_1
