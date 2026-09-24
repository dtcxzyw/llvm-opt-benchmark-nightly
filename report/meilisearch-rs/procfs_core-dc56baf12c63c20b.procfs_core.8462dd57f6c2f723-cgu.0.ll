Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/procfs_core-dc56baf12c63c20b.procfs_core.8462dd57f6c2f723-cgu.0?download=true
inline.NumInlined: 2766
inline.NumDeleted: 776
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@"_ZN11procfs_core7keyring11Permissions8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h160bf30b4c1fbc4dE":bb.a
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit17"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit17": ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @123, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 102, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 120, ptr %.sroa.6.0..sroa_idx, align 8
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN11procfs_core7keyring11Permissions8from_str28_$u7b$$u7b$closure$u7d$$u7d$17h7b9d426b85c4b51aE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h247b819db7d396ecE", ptr %.sroa.44.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1973
  store ptr @140, ptr %i.b, align 8, !noalias !1974
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.423.0..sroa_idx, align 8, !noalias !1974
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %.sroa.524.0..sroa_idx, align 8, !noalias !1974
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.625.0..sroa_idx, align 8, !noalias !1974
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.726.0..sroa_idx, align 8, !noalias !1974
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.e, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.48.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1975
  store ptr @31, ptr %i.a, align 8, !noalias !1976
  %.sroa.4.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx19, align 8, !noalias !1976
  %.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx20, align 8, !noalias !1976
  %.sroa.6.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx21, align 8, !noalias !1976
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !1976
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %.val15 = load i64, ptr %i.d, align 8           ; 2 uses
  %i.h = icmp eq i64 %.val15, 0
  br i1 %i.h, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val16 = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16, i64 noundef %.val15, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1975
  %.val = load i64, ptr %i.d, align 8             ; 2 uses
  %i.j = icmp eq i64 %.val, 0
  br i1 %i.j, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit17", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val14 = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit17"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit17": ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @123, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 102, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 123, ptr %.sroa.6.0..sroa_idx, align 8
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7keyring1_77_$LT$impl$u20$core..fmt..Octal$u20$for$u20$procfs_core..keyring..KeyFlags$GT$3fmt17h60a8bc2b86e0478bE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1980
  store i32 %i.b, ptr %i.a, align 4, !noalias !1980
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u32$GT$3fmt17h0c8928584ba225fcE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1980
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7keyring1_78_$LT$impl$u20$core..fmt..Binary$u20$for$u20$procfs_core..keyring..KeyFlags$GT$3fmt17haa24f8bbf56b3aeaE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1985
  store i32 %i.b, ptr %i.a, align 4, !noalias !1985
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u32$GT$3fmt17hea37071c6b23d768E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1985
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7keyring1_80_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$procfs_core..keyring..KeyFlags$GT$3fmt17h2668d5b0f556a6a6E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1990
  store i32 %i.b, ptr %i.a, align 4, !noalias !1990
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h24f323ebd7812ce5E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1990
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7keyring1_80_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$procfs_core..keyring..KeyFlags$GT$3fmt17h6fb336c05fc4a255E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1995
  store i32 %i.b, ptr %i.a, align 4, !noalias !1995
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h191f9befeba98474E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1995
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7keyring1_84_$LT$impl$u20$core..fmt..Octal$u20$for$u20$procfs_core..keyring..PermissionFlags$GT$3fmt17h0701037d80320d1eE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2000
  store i32 %i.b, ptr %i.a, align 4, !noalias !2000
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u32$GT$3fmt17h0c8928584ba225fcE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !2001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2000
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7keyring1_85_$LT$impl$u20$core..fmt..Binary$u20$for$u20$procfs_core..keyring..PermissionFlags$GT$3fmt17h70d17bde10d3b348E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2005
  store i32 %i.b, ptr %i.a, align 4, !noalias !2005
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u32$GT$3fmt17hea37071c6b23d768E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !2006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2005
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7keyring1_87_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$procfs_core..keyring..PermissionFlags$GT$3fmt17had9ff78525e94cfcE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2010
  store i32 %i.b, ptr %i.a, align 4, !noalias !2010
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h24f323ebd7812ce5E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !2011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2010
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7keyring1_87_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$procfs_core..keyring..PermissionFlags$GT$3fmt17hdd2d5131848f9335E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2015
  store i32 %i.b, ptr %i.a, align 4, !noalias !2015
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h191f9befeba98474E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !2016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2015
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11procfs_core7keyring3Key9from_line17hd7df97abccecffbfE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [48 x i8], align 8                ; 8 uses
  %i.p = alloca [48 x i8], align 8                ; 8 uses
  %i.q = alloca [48 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 2 uses
  %i.y = alloca [1 x i8], align 1                 ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.7195 = alloca [16 x i8], align 8         ; 3 uses
  %i.aa = alloca [48 x i8], align 8               ; 7 uses
  %i.ab = alloca [48 x i8], align 8               ; 8 uses
  %.sroa.0176 = alloca [48 x i8], align 8         ; 7 uses
  %i.ac = alloca [64 x i8], align 8               ; 18 uses
  %i.ad = alloca [24 x i8], align 8               ; 17 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 2 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 2 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 2 uses
  %i.am = alloca [1 x i8], align 1                ; 4 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [24 x i8], align 8               ; 2 uses
  %i.ap = alloca [16 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 2 uses
  %i.as = alloca [16 x i8], align 8               ; 5 uses
  %i.at = alloca [24 x i8], align 8               ; 2 uses
  %i.au = alloca [32 x i8], align 8               ; 7 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [24 x i8], align 8               ; 8 uses
  %i.ax = alloca [24 x i8], align 8               ; 2 uses
  %i.ay = alloca [1 x i8], align 1                ; 4 uses
  %i.az = alloca [16 x i8], align 8               ; 5 uses
  %i.ba = alloca [24 x i8], align 8               ; 2 uses
  %i.bb = alloca [16 x i8], align 8               ; 7 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [24 x i8], align 8               ; 2 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [16 x i8], align 8               ; 5 uses
  %i.bg = alloca [24 x i8], align 8               ; 8 uses
  %i.bh = alloca [24 x i8], align 8               ; 2 uses
  %i.bi = alloca [1 x i8], align 1                ; 4 uses
  %i.bj = alloca [16 x i8], align 8               ; 5 uses
  %i.bk = alloca [24 x i8], align 8               ; 2 uses
  %i.bl = alloca [16 x i8], align 8               ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store i64 0, ptr %i.ac, align 8
  %.sroa.4231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %2, ptr %.sroa.4231.0..sroa_idx, align 8
  %.sroa.5232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %1, ptr %.sroa.5232.0..sroa_idx, align 8
  %.sroa.5232.sroa.4.0..sroa.5232.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 %2, ptr %.sroa.5232.sroa.4.0..sroa.5232.0..sroa_idx.sroa_idx, align 8
  %.sroa.5232.sroa.5.0..sroa.5232.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %1, ptr %.sroa.5232.sroa.5.0..sroa.5232.0..sroa_idx.sroa_idx, align 8
  %.sroa.5232.sroa.6.0..sroa.5232.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr %i.bm, ptr %.sroa.5232.sroa.6.0..sroa.5232.0..sroa_idx.sroa_idx, align 8
  %.sroa.5232.sroa.7.0..sroa.5232.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i64 0, ptr %.sroa.5232.sroa.7.0..sroa.5232.0..sroa_idx.sroa_idx, align 8
  %.sroa.6233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i8 1, ptr %.sroa.6233.0..sroa_idx, align 8
  %.sroa.7234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 57
  store i8 0, ptr %.sroa.7234.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  %i.bn = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h2c5b0027535d05e2E(ptr noalias noundef align 8 dereferenceable(64) %i.ac) ; 2 uses
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0      ; 8 uses
  %.not = icmp eq ptr %i.bo, null
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1      ; 7 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  store ptr %i.a, ptr %i.bj, align 8
  %.sroa.4243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4243.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2134
  store ptr @31, ptr %i.q, align 8, !noalias !2135
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2135
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.bj, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2135
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !2135
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !2135
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bk, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @123, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 102, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 267, ptr %.sroa.612.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.bd

bb.c:                                             ; preds = %bb.a
  store ptr %i.bo, ptr %i.bl, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %i.bp, ptr %i.br, align 8
  switch i64 %i.bp, label %bb.f [
    i64 0, label %.loopexit
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.bs = load i8, ptr %i.bo, align 1, !alias.scope !2136, !noalias !2137, !noundef !4
  switch i8 %i.bs, label %.lr.ph.split.i.preheader [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

bb.e:                                             ; preds = %bb.f
  %i.bt = icmp ult i64 %i.bp, 17
  br i1 %i.bt, label %.lr.ph.split.i.preheader, label %.preheader57.i

.lr.ph.split.i.preheader:                         ; preds = %bb.g, %bb.d, %bb.e
  %.sroa.01.170.i.ph = phi ptr [ %i.bu, %bb.g ], [ %i.bo, %bb.e ], [ %i.bo, %bb.d ]
  %.sroa.16.169.i.ph = phi i64 [ %i.bv, %bb.g ], [ %i.bp, %bb.e ], [ 1, %bb.d ]
  br label %.lr.ph.split.i

bb.f:                                             ; preds = %bb.c
  %.pr.i = load i8, ptr %i.bo, align 1, !alias.scope !2136, !noalias !2137
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 2 uses
  %i.bv = add i64 %i.bp, -1                       ; 2 uses
  %i.bw = icmp ult i64 %i.bp, 18
  br i1 %i.bw, label %.lr.ph.split.i.preheader, label %.preheader57.i

.preheader57.i:                                   ; preds = %bb.g, %bb.e
  %.sroa.16.0.ph.i = phi i64 [ %i.bv, %bb.g ], [ %i.bp, %bb.e ] ; 2 uses
  %.sroa.01.0.ph.i = phi ptr [ %i.bu, %bb.g ], [ %i.bo, %bb.e ]
  %.not.i655 = icmp eq i64 %.sroa.16.0.ph.i, 0
  br i1 %.not.i655, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit", label %.lr.ph

.preheader57.split.i:                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i658, i64 1
  %i.by = add i64 %.sroa.16.0.i657, -1            ; 2 uses
  %i.bz = shl nuw i64 %.sroa.017.0.i656, 4
  %i.ca = zext nneg i32 %spec.select.i to i64
  %i.cb = or disjoint i64 %i.bz, %i.ca            ; 2 uses
  %.not.i = icmp eq i64 %i.by, 0
  br i1 %.not.i, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.preheader57.i, %.preheader57.split.i
  %.sroa.01.0.i658 = phi ptr [ %i.bx, %.preheader57.split.i ], [ %.sroa.01.0.ph.i, %.preheader57.i ] ; 2 uses
  %.sroa.16.0.i657 = phi i64 [ %i.by, %.preheader57.split.i ], [ %.sroa.16.0.ph.i, %.preheader57.i ]
  %.sroa.017.0.i656 = phi i64 [ %i.cb, %.preheader57.split.i ], [ 0, %.preheader57.i ] ; 2 uses
  %i.cc = load i8, ptr %.sroa.01.0.i658, align 1, !alias.scope !2136, !noalias !2137, !noundef !4 ; 2 uses
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %i.ce = icmp ugt i8 %i.cc, 57
  %i.cf = add nsw i32 %i.cd, -65
  %i.cg = and i32 %i.cf, -33
  %i.ch = add nuw nsw i32 %i.cg, 10
  %i.ci = add nsw i32 %i.cd, -48
  %spec.select.i = select i1 %i.ce, i32 %i.ch, i32 %i.ci ; 2 uses
  %i.cj = icmp ult i32 %spec.select.i, 16
  br i1 %i.cj, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %.lr.ph
  %i.ck = icmp ugt i64 %.sroa.017.0.i656, 1152921504606846975
  br i1 %i.ck, label %.loopexit, label %.preheader57.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %bb.i
  %.sroa.01.170.i = phi ptr [ %i.cv, %bb.i ], [ %.sroa.01.170.i.ph, %.lr.ph.split.i.preheader ] ; 2 uses
  %.sroa.16.169.i = phi i64 [ %i.cu, %bb.i ], [ %.sroa.16.169.i.ph, %.lr.ph.split.i.preheader ]
  %.sroa.017.168.i = phi i64 [ %i.cx, %bb.i ], [ 0, %.lr.ph.split.i.preheader ]
  %i.cl = load i8, ptr %.sroa.01.170.i, align 1, !alias.scope !2136, !noalias !2137, !noundef !4 ; 2 uses
  %i.cm = zext i8 %i.cl to i32                    ; 2 uses
  %i.cn = icmp ugt i8 %i.cl, 57
  %i.co = add nsw i32 %i.cm, -65
end_hunk_0
begin_hunk_1_@_ZN11procfs_core7keyring3Key9from_line17hd7df97abccecffbfE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hn, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  %.sroa.4136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @123, ptr %.sroa.4136.0..sroa_idx, align 8
  %.sroa.5137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 102, ptr %.sroa.5137.0..sroa_idx, align 8
  %.sroa.6138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 272, ptr %.sroa.6138.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.bd

bb.bp:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  %i.ho = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val427 = load i64, ptr %i.aw, align 8         ; 2 uses
  %i.hp = icmp eq i64 %.val427, 0
  br i1 %i.hp, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h9fbcd3055f364854E.exit", label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hq = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.val428 = load ptr, ptr %i.hq, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val428, i64 noundef %.val427, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h9fbcd3055f364854E.exit"

bb.br:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %.val425 = load i64, ptr %i.aw, align 8         ; 2 uses
  %i.hr = icmp eq i64 %.val425, 0
  br i1 %i.hr, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit472", label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hs = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.val426 = load ptr, ptr %i.hs, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val426, i64 noundef %.val425, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit472"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit472": ; preds = %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ht, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @123, ptr %.sroa.468.0..sroa_idx, align 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 102, ptr %.sroa.569.0..sroa_idx, align 8
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 269, ptr %.sroa.670.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.bd

bb.bt:                                            ; preds = %.loopexit
  %i.hu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val423 = load i64, ptr %i.bg, align 8         ; 2 uses
  %i.hv = icmp eq i64 %.val423, 0
  br i1 %i.hv, label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h9fbcd3055f364854E.exit", label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hw = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.val424 = load ptr, ptr %i.hw, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val424, i64 noundef %.val423, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h9fbcd3055f364854E.exit"

bb.bv:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %.val = load i64, ptr %i.bg, align 8            ; 2 uses
  %i.hx = icmp eq i64 %.val, 0
  br i1 %i.hx, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit474", label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hy = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.val422 = load ptr, ptr %i.hy, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val422, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit474"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit474": ; preds = %bb.bv, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hz, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @123, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 102, ptr %.sroa.521.0..sroa_idx, align 8
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 267, ptr %.sroa.622.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  br label %bb.bd
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN11procfs_core7keyring7KeyType8from_str17ha66e11c2910c11d9E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %2, label %bb.j [
    i64 7, label %bb.b
    i64 4, label %bb.e
    i64 5, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 1
  %i.b = xor i32 %i.a, 1920558443
  %i.c = getelementptr i8, ptr %1, i64 3
  %i.d = load i32, ptr %i.c, align 1
  %i.e = xor i32 %i.d, 1735289202
  %i.f = or i32 %i.b, %i.e
  %i.g = icmp ne i32 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit", %bb.h, %bb.f, %bb.c
  ret void

bb.e:                                             ; preds = %bb.a
  %i.j = load i32, ptr %1, align 1
  %i.k = icmp ne i32 %i.j, 1919251317
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

bb.f:                                             ; preds = %bb.e
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.g:                                             ; preds = %bb.a
  %i.n = load i32, ptr %1, align 1
  %i.o = xor i32 %i.n, 1869049708
  %i.p = getelementptr i8, ptr %1, i64 4
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  %i.s = xor i32 %i.r, 110
  %i.t = or i32 %i.o, %i.s
  %i.u = icmp ne i32 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.d

bb.i:                                             ; preds = %bb.b
  %i.x = load i32, ptr %1, align 1
  %i.y = xor i32 %i.x, 1600612706
  %i.z = getelementptr i8, ptr %1, i64 3
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = xor i32 %i.aa, 2036689759
  %i.ac = or i32 %i.y, %i.ab
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.l, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

bb.j:                                             ; preds = %bb.a
  %i.ag = icmp slt i64 %2, 0
  br i1 %i.ag, label %bb.k, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !17

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.j
  %i.ah = icmp eq i64 %2, 0
  br i1 %i.ah, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %bb.g, %bb.e, %bb.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !2177
  %i.ai = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #38, !noalias !2177 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.k, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit"

bb.k:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.j
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.j ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #37, !noalias !2178
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.ai, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !2179
  store i64 %2, ptr %0, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.513.0..sroa_idx, align 8
  br label %bb.d

bb.l:                                             ; preds = %bb.i
  store i64 -9223372036854775805, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11procfs_core7keyring7KeyUser8from_str17hf6994ce1ceec79a0E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [48 x i8], align 8                ; 8 uses
  %i.p = alloca [48 x i8], align 8                ; 8 uses
  %i.q = alloca [48 x i8], align 8                ; 8 uses
  %i.r = alloca [48 x i8], align 8                ; 8 uses
  %i.s = alloca [48 x i8], align 8                ; 8 uses
  %i.t = alloca [48 x i8], align 8                ; 8 uses
  %i.u = alloca [48 x i8], align 8                ; 8 uses
  %i.v = alloca [48 x i8], align 8                ; 8 uses
  %i.w = alloca [48 x i8], align 8                ; 8 uses
  %i.x = alloca [48 x i8], align 8                ; 8 uses
  %i.y = alloca [48 x i8], align 8                ; 8 uses
  %i.z = alloca [48 x i8], align 8                ; 8 uses
  %i.aa = alloca [48 x i8], align 8               ; 8 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 8 uses
  %i.ae = alloca [24 x i8], align 8               ; 2 uses
  %i.af = alloca [1 x i8], align 1                ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 8 uses
  %i.ak = alloca [24 x i8], align 8               ; 2 uses
  %i.al = alloca [1 x i8], align 1                ; 4 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [24 x i8], align 8               ; 2 uses
  %i.ao = alloca [16 x i8], align 8               ; 7 uses
  %i.ap = alloca [32 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [24 x i8], align 8               ; 8 uses
  %i.as = alloca [24 x i8], align 8               ; 2 uses
  %i.at = alloca [1 x i8], align 1                ; 4 uses
  %i.au = alloca [16 x i8], align 8               ; 5 uses
  %i.av = alloca [24 x i8], align 8               ; 2 uses
  %i.aw = alloca [16 x i8], align 8               ; 7 uses
  %i.ax = alloca [72 x i8], align 8               ; 18 uses
  %i.ay = alloca [32 x i8], align 8               ; 7 uses
  %i.az = alloca [16 x i8], align 8               ; 5 uses
  %i.ba = alloca [24 x i8], align 8               ; 8 uses
  %i.bb = alloca [24 x i8], align 8               ; 2 uses
  %i.bc = alloca [1 x i8], align 1                ; 4 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [24 x i8], align 8               ; 2 uses
  %i.bf = alloca [16 x i8], align 8               ; 7 uses
  %i.bg = alloca [32 x i8], align 8               ; 7 uses
  %i.bh = alloca [16 x i8], align 8               ; 5 uses
  %i.bi = alloca [24 x i8], align 8               ; 8 uses
  %i.bj = alloca [24 x i8], align 8               ; 2 uses
  %i.bk = alloca [1 x i8], align 1                ; 4 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [24 x i8], align 8               ; 2 uses
  %i.bn = alloca [16 x i8], align 8               ; 7 uses
  %i.bo = alloca [72 x i8], align 8               ; 18 uses
  %i.bp = alloca [32 x i8], align 8               ; 7 uses
  %i.bq = alloca [16 x i8], align 8               ; 5 uses
  %i.br = alloca [24 x i8], align 8               ; 8 uses
  %i.bs = alloca [24 x i8], align 8               ; 2 uses
  %i.bt = alloca [1 x i8], align 1                ; 4 uses
  %i.bu = alloca [16 x i8], align 8               ; 5 uses
  %i.bv = alloca [24 x i8], align 8               ; 2 uses
  %i.bw = alloca [16 x i8], align 8               ; 7 uses
  %i.bx = alloca [32 x i8], align 8               ; 7 uses
  %i.by = alloca [16 x i8], align 8               ; 5 uses
  %i.bz = alloca [24 x i8], align 8               ; 8 uses
  %i.ca = alloca [24 x i8], align 8               ; 2 uses
  %i.cb = alloca [1 x i8], align 1                ; 4 uses
  %i.cc = alloca [16 x i8], align 8               ; 6 uses
  %i.cd = alloca [72 x i8], align 8               ; 17 uses
  %i.ce = alloca [16 x i8], align 8               ; 5 uses
  %i.cf = alloca [24 x i8], align 8               ; 2 uses
  %i.cg = alloca [16 x i8], align 8               ; 5 uses
  %i.ch = alloca [24 x i8], align 8               ; 2 uses
  %i.ci = alloca [16 x i8], align 8               ; 5 uses
  %i.cj = alloca [24 x i8], align 8               ; 2 uses
  %i.ck = alloca [32 x i8], align 8               ; 7 uses
  %i.cl = alloca [16 x i8], align 8               ; 5 uses
  %i.cm = alloca [24 x i8], align 8               ; 8 uses
  %i.cn = alloca [24 x i8], align 8               ; 2 uses
  %i.co = alloca [1 x i8], align 1                ; 4 uses
  %i.cp = alloca [16 x i8], align 8               ; 5 uses
  %i.cq = alloca [24 x i8], align 8               ; 2 uses
  %i.cr = alloca [16 x i8], align 8               ; 7 uses
  %i.cs = alloca [16 x i8], align 8               ; 5 uses
  %i.ct = alloca [24 x i8], align 8               ; 2 uses
  %i.cu = alloca [64 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store i64 0, ptr %i.cu, align 8
  %.sroa.4321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %2, ptr %.sroa.4321.0..sroa_idx, align 8
  %.sroa.5322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store ptr %1, ptr %.sroa.5322.0..sroa_idx, align 8
  %.sroa.5322.sroa.4.0..sroa.5322.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store i64 %2, ptr %.sroa.5322.sroa.4.0..sroa.5322.0..sroa_idx.sroa_idx, align 8
  %.sroa.5322.sroa.5.0..sroa.5322.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store ptr %1, ptr %.sroa.5322.sroa.5.0..sroa.5322.0..sroa_idx.sroa_idx, align 8
  %.sroa.5322.sroa.6.0..sroa.5322.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  store ptr %i.cv, ptr %.sroa.5322.sroa.6.0..sroa.5322.0..sroa_idx.sroa_idx, align 8
  %.sroa.5322.sroa.7.0..sroa.5322.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  store i64 0, ptr %.sroa.5322.sroa.7.0..sroa.5322.0..sroa_idx.sroa_idx, align 8
  %.sroa.6323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  store i8 1, ptr %.sroa.6323.0..sroa_idx, align 8
  %.sroa.7324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 57
  store i8 0, ptr %.sroa.7324.0..sroa_idx, align 1
  %i.cw = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h2c5b0027535d05e2E(ptr noalias noundef align 8 dereferenceable(64) %i.cu) ; 2 uses
  %i.cx = extractvalue { ptr, i64 } %i.cw, 0      ; 5 uses
  %.not = icmp eq ptr %i.cx, null                 ; 2 uses
  %i.cy = extractvalue { ptr, i64 } %i.cw, 1
  %.sroa.7.0 = select i1 %.not, i64 undef, i64 %i.cy ; 3 uses
  %.sink961.sroa.gep = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sink961.sroa.gep1007 = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sink961.sroa.gep1008 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sink961.sroa.gep1009 = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sink961.sroa.gep1010 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sink961.sroa.gep1011 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sink961.sroa.gep1012 = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.sink961.sroa.gep1013 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  store ptr %i.a, ptr %i.cs, align 8
  %.sroa.4333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4333.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2377
  store ptr @31, ptr %i.aa, align 8, !noalias !2378
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2378
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.cs, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2378
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !2378
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !2378
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !2377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false)
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @123, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 102, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 337, ptr %.sroa.612.0..sroa_idx, align 8
  br label %bb.bd

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  %i.cz = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h2c5b0027535d05e2E(ptr noalias noundef align 8 dereferenceable(64) %i.cu) ; 2 uses
  %i.da = extractvalue { ptr, i64 } %i.cz, 0      ; 8 uses
  %.not564 = icmp eq ptr %i.da, null
  %i.db = extractvalue { ptr, i64 } %i.cz, 1      ; 7 uses
  br i1 %.not564, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  store ptr %i.a, ptr %i.cp, align 8
  %.sroa.4343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4343.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !2379
  store ptr @31, ptr %i.z, align 8, !noalias !2380
  %.sroa.4662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 1, ptr %.sroa.4662.0..sroa_idx, align 8, !noalias !2380
  %.sroa.5663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.cp, ptr %.sroa.5663.0..sroa_idx, align 8, !noalias !2380
  %.sroa.6664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 1, ptr %.sroa.6664.0..sroa_idx, align 8, !noalias !2380
  %.sroa.7665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store ptr null, ptr %.sroa.7665.0..sroa_idx, align 8, !noalias !2380
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !2379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false)
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @123, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 102, ptr %.sroa.529.0..sroa_idx, align 8
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 338, ptr %.sroa.630.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %bb.bd

bb.e:                                             ; preds = %bb.c
  store ptr %i.da, ptr %i.cr, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
end_hunk_1
begin_hunk_2_@_ZN11procfs_core7keyring7KeyUser8from_str17hf6994ce1ceec79a0E:bb.a
  %.val599 = load i64, ptr %i.ar, align 8         ; 2 uses
  %i.io = icmp eq i64 %.val599, 0
  br i1 %i.io, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit649", label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.val600 = load ptr, ptr %i.ip, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val600, i64 noundef %.val599, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit649"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit649": ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @123, ptr %.sroa.4254.0..sroa_idx, align 8
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 102, ptr %.sroa.5255.0..sroa_idx, align 8
  %.sroa.6256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 353, ptr %.sroa.6256.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.bk

bb.bo:                                            ; preds = %bb.ap
  %i.iq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val597 = load i64, ptr %i.ba, align 8         ; 2 uses
  %i.ir = icmp eq i64 %.val597, 0
  br i1 %i.ir, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split"

bb.bp:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %.val595 = load i64, ptr %i.ba, align 8         ; 2 uses
  %i.is = icmp eq i64 %.val595, 0
  br i1 %i.is, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit651", label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.it = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.val596 = load ptr, ptr %i.it, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val596, i64 noundef %.val595, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit651"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit651": ; preds = %bb.bp, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false)
  %.sroa.4222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @123, ptr %.sroa.4222.0..sroa_idx, align 8
  %.sroa.5223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 102, ptr %.sroa.5223.0..sroa_idx, align 8
  %.sroa.6224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 349, ptr %.sroa.6224.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.bd

bb.br:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit653", %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  br label %bb.bd

bb.bs:                                            ; preds = %bb.al
  %i.iu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val593 = load i64, ptr %i.bi, align 8         ; 2 uses
  %i.iv = icmp eq i64 %.val593, 0
  br i1 %i.iv, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split"

bb.bt:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %.val591 = load i64, ptr %i.bi, align 8         ; 2 uses
  %i.iw = icmp eq i64 %.val591, 0
  br i1 %i.iw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit653", label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.val592 = load ptr, ptr %i.ix, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val592, i64 noundef %.val591, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit653"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit653": ; preds = %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false)
  %.sroa.4190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @123, ptr %.sroa.4190.0..sroa_idx, align 8
  %.sroa.5191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 102, ptr %.sroa.5191.0..sroa_idx, align 8
  %.sroa.6192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 349, ptr %.sroa.6192.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %bb.br

bb.bv:                                            ; preds = %bb.ah
  %i.iy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val589 = load i64, ptr %i.br, align 8         ; 2 uses
  %i.iz = icmp eq i64 %.val589, 0
  br i1 %i.iz, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split"

bb.bw:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  %.val587 = load i64, ptr %i.br, align 8         ; 2 uses
  %i.ja = icmp eq i64 %.val587, 0
  br i1 %i.ja, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit655", label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jb = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.val588 = load ptr, ptr %i.jb, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val588, i64 noundef %.val587, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit655"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit655": ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false)
  %.sroa.4158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @123, ptr %.sroa.4158.0..sroa_idx, align 8
  %.sroa.5159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 102, ptr %.sroa.5159.0..sroa_idx, align 8
  %.sroa.6160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 345, ptr %.sroa.6160.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  br label %bb.bd

bb.by:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit657", %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  br label %bb.bd

bb.bz:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit637.thread"
  %i.jc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val585 = load i64, ptr %i.bz, align 8         ; 2 uses
  %i.jd = icmp eq i64 %.val585, 0
  br i1 %i.jd, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split"

bb.ca:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit637.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  %.val583 = load i64, ptr %i.bz, align 8         ; 2 uses
  %i.je = icmp eq i64 %.val583, 0
  br i1 %i.je, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit657", label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jf = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.val584 = load ptr, ptr %i.jf, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val584, i64 noundef %.val583, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit657"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit657": ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 24, i1 false)
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @123, ptr %.sroa.4126.0..sroa_idx, align 8
  %.sroa.5127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 102, ptr %.sroa.5127.0..sroa_idx, align 8
  %.sroa.6128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 345, ptr %.sroa.6128.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  br label %bb.by

bb.cc:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val581 = load i64, ptr %i.cm, align 8         ; 2 uses
  %i.jh = icmp eq i64 %.val581, 0
  br i1 %i.jh, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split"

bb.cd:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !2384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  %.val = load i64, ptr %i.cm, align 8            ; 2 uses
  %i.ji = icmp eq i64 %.val, 0
  br i1 %i.ji, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit659", label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jj = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %.val580 = load ptr, ptr %i.jj, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val580, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit659"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit659": ; preds = %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i64 24, i1 false)
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @123, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 102, ptr %.sroa.541.0..sroa_idx, align 8
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 338, ptr %.sroa.642.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br label %bb.bd
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 128) i32 @_ZN11procfs_core7keyring8KeyFlags8from_str17he0df25ee570e0033E(ptr noalias noundef nonnull readonly align 1 captures(address) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 24 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.d = load i8, ptr %0, align 1, !noalias !2450, !noundef !4 ; 5 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i": ; preds = %bb.b
  %i.f = and i8 %i.d, 31
  %i.g = zext nneg i8 %i.f to i32                 ; 3 uses
  %i.h = icmp samesign ne i64 %1, 1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.j = load i8, ptr %i.c, align 1, !noalias !2450, !noundef !4
  %i.k = shl nuw nsw i32 %i.g, 6
  %i.l = and i8 %i.j, 63
  %i.m = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = icmp samesign ugt i8 %i.d, -33
  br i1 %i.o, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i", label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = zext nneg i8 %i.d to i32
  br label %bb.d

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i"
  %i.q = icmp samesign ne i64 %1, 2
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.s = load i8, ptr %i.i, align 1, !noalias !2450, !noundef !4
  %i.t = shl nuw nsw i32 %i.m, 6
  %i.u = and i8 %i.s, 63
  %i.v = zext nneg i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v               ; 2 uses
  %i.x = shl nuw nsw i32 %i.g, 12
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = icmp samesign ugt i8 %i.d, -17
  br i1 %i.z, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i", label %bb.d

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i"
  %i.aa = icmp samesign ne i64 %1, 3
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i8, ptr %i.r, align 1, !noalias !2450, !noundef !4
  %i.ad = shl nuw nsw i32 %i.g, 18
  %i.ae = and i32 %i.ad, 1835008
  %i.af = shl nuw nsw i32 %i.w, 6
  %i.ag = and i8 %i.ac, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = or disjoint i32 %i.ai, %i.ae
  br label %bb.d

bb.d:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i", %bb.c
  %.sroa.0.0.ph = phi ptr [ %i.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i" ], [ %i.r, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i" ], [ %i.ab, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i" ], [ %i.c, %bb.c ]
  %.sroa.4.0.i.ph = phi i32 [ %i.n, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i" ], [ %i.y, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i" ], [ %i.aj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i" ], [ %i.p, %bb.c ]
  %.sroa.4.0.i.ph.fr = freeze i32 %.sroa.4.0.i.ph ; 2 uses
  %i.ak = icmp samesign ult i32 %.sroa.4.0.i.ph.fr, 1114112
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i32 %.sroa.4.0.i.ph.fr, 73
  %spec.select = zext i1 %i.al to i32
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.d
  %.sroa.0.0119125 = phi ptr [ %.sroa.0.0.ph, %bb.d ], [ %0, %bb.a ] ; 6 uses
  %i.am = phi i32 [ %spec.select, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %i.an = icmp eq ptr %.sroa.0.0119125, %i.a
  br i1 %i.an, label %.thread190, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0119125, i64 1 ; 3 uses
  %i.ap = load i8, ptr %.sroa.0.0119125, align 1, !noalias !2451, !noundef !4 ; 5 uses
  %i.aq = icmp sgt i8 %i.ap, -1
  br i1 %i.aq, label %bb.f, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i68"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i68": ; preds = %bb.e
  %i.ar = and i8 %i.ap, 31
  %i.as = zext nneg i8 %i.ar to i32               ; 3 uses
  %i.at = icmp ne ptr %i.ao, %i.a
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0119125, i64 2 ; 3 uses
  %i.av = load i8, ptr %i.ao, align 1, !noalias !2451, !noundef !4
  %i.aw = shl nuw nsw i32 %i.as, 6
  %i.ax = and i8 %i.av, 63
  %i.ay = zext nneg i8 %i.ax to i32               ; 2 uses
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = icmp samesign ugt i8 %i.ap, -33
  br i1 %i.ba, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i71", label %.thread133

bb.f:                                             ; preds = %bb.e
  %i.bb = zext nneg i8 %i.ap to i32
  br label %.thread133

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i71": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i68"
  %i.bc = icmp ne ptr %i.au, %i.a
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0119125, i64 3 ; 3 uses
  %i.be = load i8, ptr %i.au, align 1, !noalias !2451, !noundef !4
  %i.bf = shl nuw nsw i32 %i.ay, 6
  %i.bg = and i8 %i.be, 63
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.bf, %i.bh            ; 2 uses
  %i.bj = shl nuw nsw i32 %i.as, 12
  %i.bk = or disjoint i32 %i.bi, %i.bj
  %i.bl = icmp samesign ugt i8 %i.ap, -17
  br i1 %i.bl, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i72", label %.thread133

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i72": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i71"
  %i.bm = icmp ne ptr %i.bd, %i.a
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0119125, i64 4
  %i.bo = load i8, ptr %i.bd, align 1, !noalias !2451, !noundef !4
  %i.bp = shl nuw nsw i32 %i.as, 18
  %i.bq = and i32 %i.bp, 1835008
  %i.br = shl nuw nsw i32 %i.bi, 6
  %i.bs = and i8 %i.bo, 63
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt
  %i.bv = or disjoint i32 %i.bu, %i.bq
  br label %.thread133

.thread133:                                       ; preds = %bb.f, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i68", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i72", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i71"
  %.sroa.0.1.ph = phi ptr [ %i.au, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i68" ], [ %i.bd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i71" ], [ %i.bn, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i72" ], [ %i.ao, %bb.f ] ; 6 uses
  %.sroa.4.0.i69.ph = phi i32 [ %i.az, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i68" ], [ %i.bk, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i71" ], [ %i.bv, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i72" ], [ %i.bb, %bb.f ]
  %.sroa.4.0.i69.ph.fr = freeze i32 %.sroa.4.0.i69.ph ; 2 uses
  %i.bw = icmp samesign ult i32 %.sroa.4.0.i69.ph.fr, 1114112
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = icmp eq i32 %.sroa.4.0.i69.ph.fr, 82
  %i.by = or disjoint i32 %i.am, 2
  %spec.select193 = select i1 %i.bx, i32 %i.by, i32 %i.am ; 3 uses
  %i.bz = icmp eq ptr %.sroa.0.1.ph, %i.a
  br i1 %i.bz, label %.thread190, label %bb.g

bb.g:                                             ; preds = %.thread133
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.1.ph, i64 1 ; 3 uses
  %i.cb = load i8, ptr %.sroa.0.1.ph, align 1, !noalias !2452, !noundef !4 ; 5 uses
  %i.cc = icmp sgt i8 %i.cb, -1
  br i1 %i.cc, label %bb.h, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i74"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i74": ; preds = %bb.g
  %i.cd = and i8 %i.cb, 31
  %i.ce = zext nneg i8 %i.cd to i32               ; 3 uses
  %i.cf = icmp ne ptr %i.ca, %i.a
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.1.ph, i64 2 ; 3 uses
  %i.ch = load i8, ptr %i.ca, align 1, !noalias !2452, !noundef !4
  %i.ci = shl nuw nsw i32 %i.ce, 6
  %i.cj = and i8 %i.ch, 63
  %i.ck = zext nneg i8 %i.cj to i32               ; 2 uses
  %i.cl = or disjoint i32 %i.ci, %i.ck
  %i.cm = icmp samesign ugt i8 %i.cb, -33
  br i1 %i.cm, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i77", label %.thread145

bb.h:                                             ; preds = %bb.g
  %i.cn = zext nneg i8 %i.cb to i32
  br label %.thread145

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i77": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i74"
  %i.co = icmp ne ptr %i.cg, %i.a
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.1.ph, i64 3 ; 3 uses
  %i.cq = load i8, ptr %i.cg, align 1, !noalias !2452, !noundef !4
  %i.cr = shl nuw nsw i32 %i.ck, 6
  %i.cs = and i8 %i.cq, 63
  %i.ct = zext nneg i8 %i.cs to i32
  %i.cu = or disjoint i32 %i.cr, %i.ct            ; 2 uses
  %i.cv = shl nuw nsw i32 %i.ce, 12
  %i.cw = or disjoint i32 %i.cu, %i.cv
  %i.cx = icmp samesign ugt i8 %i.cb, -17
  br i1 %i.cx, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i78", label %.thread145

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i78": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i77"
  %i.cy = icmp ne ptr %i.cp, %i.a
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.ph, i64 4
  %i.da = load i8, ptr %i.cp, align 1, !noalias !2452, !noundef !4
  %i.db = shl nuw nsw i32 %i.ce, 18
  %i.dc = and i32 %i.db, 1835008
  %i.dd = shl nuw nsw i32 %i.cu, 6
  %i.de = and i8 %i.da, 63
  %i.df = zext nneg i8 %i.de to i32
  %i.dg = or disjoint i32 %i.dd, %i.df
  %i.dh = or disjoint i32 %i.dg, %i.dc
  br label %.thread145

.thread145:                                       ; preds = %bb.h, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i74", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i78", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i77"
  %.sroa.0.2.ph = phi ptr [ %i.cg, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i74" ], [ %i.cp, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i77" ], [ %i.cz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i78" ], [ %i.ca, %bb.h ] ; 6 uses
  %.sroa.4.0.i75.ph = phi i32 [ %i.cl, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i74" ], [ %i.cw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i77" ], [ %i.dh, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit16.i78" ], [ %i.cn, %bb.h ]
  %.sroa.4.0.i75.ph.fr = freeze i32 %.sroa.4.0.i75.ph ; 2 uses
  %i.di = icmp samesign ult i32 %.sroa.4.0.i75.ph.fr, 1114112
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = icmp eq i32 %.sroa.4.0.i75.ph.fr, 68
  %i.dk = or disjoint i32 %spec.select193, 4
  %spec.select194 = select i1 %i.dj, i32 %i.dk, i32 %spec.select193 ; 3 uses
  %i.dl = icmp eq ptr %.sroa.0.2.ph, %i.a
  br i1 %i.dl, label %.thread190, label %bb.i
end_hunk_2
begin_hunk_3_@_ZN11procfs_core7process5mount18MountNFSStatistics11server_caps17hf270ca1c537e783cE:bb.a
  %i.ax = add nuw nsw i32 %i.aw, 10
  %spec.select92.i = select i1 %i.at, i32 %i.ax, i32 %i.av ; 2 uses
  %i.ay = icmp ult i32 %spec.select92.i, 16
  br i1 %i.ay, label %.preheader75.split.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

.split.us.i:                                      ; preds = %.lr.ph68
  %i.az = and i32 %i.au, -34
  %i.ba = add nuw nsw i32 %i.az, 10
  %.sroa.02.0.i69.i = select i1 %i.at, i32 %i.ba, i32 %i.av
  %i.bb = icmp ult i32 %.sroa.02.0.i69.i, 16
  %spec.select.i38 = select i1 %i.bb, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %bb.h
  %.sroa.03.188.i = phi ptr [ %i.bm, %bb.h ], [ %.sroa.03.188.i.ph, %.lr.ph.split.i.preheader ] ; 2 uses
  %.sroa.16.187.i = phi i64 [ %i.bl, %bb.h ], [ %.sroa.16.187.i.ph, %.lr.ph.split.i.preheader ]
  %.sroa.019.186.i = phi i32 [ %i.bn, %bb.h ], [ 0, %.lr.ph.split.i.preheader ]
  %i.bc = load i8, ptr %.sroa.03.188.i, align 1, !alias.scope !3825, !noundef !4 ; 2 uses
  %i.bd = zext i8 %i.bc to i32                    ; 2 uses
  %i.be = icmp ugt i8 %i.bc, 57
  %i.bf = add nsw i32 %i.bd, -65
  %i.bg = and i32 %i.bf, -33
  %i.bh = add nuw nsw i32 %i.bg, 10
  %i.bi = add nsw i32 %i.bd, -48
  %spec.select93.i = select i1 %i.be, i32 %i.bh, i32 %i.bi ; 2 uses
  %i.bj = icmp ult i32 %spec.select93.i, 16
  br i1 %i.bj, label %bb.h, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.bk = shl i32 %.sroa.019.186.i, 4
  %i.bl = add nsw i64 %.sroa.16.187.i, -1         ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.03.188.i, i64 1
  %i.bn = or disjoint i32 %spec.select93.i, %i.bk ; 2 uses
  %.not67.i = icmp eq i64 %i.bl, 0
  br i1 %.not67.i, label %.loopexit.i, label %.lr.ph.split.i

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit": ; preds = %.loopexit.i, %.split.us.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %i.ap, %.loopexit.i ], [ %spec.select.i38, %.split.us.i ] ; 4 uses
  %i.bo = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.bo, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", label %bb.j

bb.i:                                             ; preds = %.lr.ph, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit.i"
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.027.063, i64 24 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.m
  br i1 %i.bq, label %._crit_edge, label %.lr.ph

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread": ; preds = %bb.g, %.lr.ph.split.i, %bb.c, %bb.c, %bb.b, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"
  %.sroa.8.0.insert.insert.i50 = phi i64 [ %.sroa.8.0.insert.insert.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit" ], [ 1, %bb.b ], [ 257, %.lr.ph.split.i ], [ 257, %bb.c ], [ 257, %bb.c ], [ 257, %bb.g ]
  %.sroa.429.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i50, 8
  %.sroa.429.0.extract.trunc = trunc i64 %.sroa.429.0.extract.shift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 %.sroa.429.0.extract.trunc, ptr %i.g, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.d, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h247b819db7d396ecE", ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3826
  store ptr @200, ptr %i.b, align 8, !noalias !3827
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.441.0..sroa_idx, align 8, !noalias !3827
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %.sroa.542.0..sroa_idx, align 8, !noalias !3827
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.643.0..sroa_idx, align 8, !noalias !3827
  %.sroa.744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.744.0..sroa_idx, align 8, !noalias !3827
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3826
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.422.0..sroa_idx, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.g, ptr %i.br, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.426.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3828
  store ptr @49, ptr %i.a, align 8, !noalias !3829
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !3829
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !3829
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !3829
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !3829
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.m unwind label %bb.k

bb.j:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"
  %.sroa.631.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.631.0.extract.trunc = trunc nuw i64 %.sroa.631.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bs = icmp ult i64 %.sroa.8.0.insert.insert.i, 288230376151711744 ; 2 uses
  %. = zext i1 %i.bs to i32
  %.sroa.631.0.extract.trunc. = select i1 %i.bs, i32 %.sroa.631.0.extract.trunc, i32 undef
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %., ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.631.0.extract.trunc., ptr %i.bu, align 4
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.o

bb.k:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %.val36 = load i64, ptr %i.e, align 8           ; 2 uses
  %i.bw = icmp eq i64 %.val36, 0
  br i1 %i.bw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val37 = load ptr, ptr %i.bx, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val37, i64 noundef %.val36, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"

bb.m:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3828
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val = load i64, ptr %i.e, align 8             ; 2 uses
  %i.by = icmp eq i64 %.val, 0
  br i1 %i.by, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit39", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val35 = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val35, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit39"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit39": ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @198, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 108, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 382, ptr %.sroa.611.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit39", %._crit_edge
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit": ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %i.bv
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7process5mount1_89_$LT$impl$u20$core..fmt..Octal$u20$for$u20$procfs_core..process..mount..NFSServerCaps$GT$3fmt17heb345ba731913f0fE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3833
  store i32 %i.b, ptr %i.a, align 4, !noalias !3833
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u32$GT$3fmt17h0c8928584ba225fcE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3833
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7process5mount1_90_$LT$impl$u20$core..fmt..Binary$u20$for$u20$procfs_core..process..mount..NFSServerCaps$GT$3fmt17h81489ce21c116624E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3838
  store i32 %i.b, ptr %i.a, align 4, !noalias !3838
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u32$GT$3fmt17hea37071c6b23d768E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3838
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7process5mount1_92_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$procfs_core..process..mount..NFSServerCaps$GT$3fmt17h88f7751902ffb36dE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3843
  store i32 %i.b, ptr %i.a, align 4, !noalias !3843
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h24f323ebd7812ce5E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3844
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3843
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN11procfs_core7process5mount1_92_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$procfs_core..process..mount..NFSServerCaps$GT$3fmt17h9c74a0132a2ee832E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3848
  store i32 %i.b, ptr %i.a, align 4, !noalias !3848
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h191f9befeba98474E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3848
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_ZN11procfs_core7process5mount9MountInfo9from_line17ha1873a9b89bbdaddE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([248 x i8]) align 8 captures(none) dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [48 x i8], align 8                ; 8 uses
  %i.p = alloca [48 x i8], align 8                ; 8 uses
  %i.q = alloca [48 x i8], align 8                ; 8 uses
  %i.r = alloca [48 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [24 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 2 uses
  %i.aa = alloca [80 x i8], align 8               ; 18 uses
  %i.ab = alloca [72 x i8], align 8               ; 15 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 2 uses
  %i.ae = alloca [48 x i8], align 8               ; 10 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 2 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 2 uses
  %i.aj = alloca [48 x i8], align 8               ; 6 uses
  %i.ak = alloca [48 x i8], align 8               ; 6 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [24 x i8], align 8               ; 2 uses
  %i.an = alloca [48 x i8], align 8               ; 6 uses
  %i.ao = alloca [48 x i8], align 8               ; 4 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [24 x i8], align 8               ; 2 uses
  %i.ar = alloca [48 x i8], align 8               ; 6 uses
  %i.as = alloca [48 x i8], align 8               ; 4 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [24 x i8], align 8               ; 2 uses
  %i.av = alloca [48 x i8], align 8               ; 6 uses
  %i.aw = alloca [48 x i8], align 8               ; 4 uses
  %i.ax = alloca [72 x i8], align 8               ; 18 uses
  %i.ay = alloca [16 x i8], align 8               ; 5 uses
  %i.az = alloca [24 x i8], align 8               ; 2 uses
  %i.ba = alloca [24 x i8], align 8               ; 11 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [24 x i8], align 8               ; 5 uses
  %i.be = alloca [16 x i8], align 8               ; 5 uses
  %i.bf = alloca [24 x i8], align 8               ; 2 uses
  %i.bg = alloca [48 x i8], align 8               ; 10 uses
  %i.bh = alloca [48 x i8], align 8               ; 7 uses
  %i.bi = alloca [16 x i8], align 8               ; 5 uses
  %i.bj = alloca [24 x i8], align 8               ; 2 uses
  %i.bk = alloca [48 x i8], align 8               ; 11 uses
  %i.bl = alloca [16 x i8], align 8               ; 5 uses
  %i.bm = alloca [24 x i8], align 8               ; 2 uses
  %i.bn = alloca [48 x i8], align 8               ; 6 uses
  %i.bo = alloca [48 x i8], align 8               ; 6 uses
  %i.bp = alloca [16 x i8], align 8               ; 5 uses
  %i.bq = alloca [24 x i8], align 8               ; 2 uses
  %i.br = alloca [48 x i8], align 8               ; 6 uses
  %i.bs = alloca [48 x i8], align 8               ; 6 uses
  %i.bt = alloca [16 x i8], align 8               ; 5 uses
  %i.bu = alloca [24 x i8], align 8               ; 2 uses
  %i.bv = alloca [48 x i8], align 8               ; 6 uses
  %i.bw = alloca [48 x i8], align 8               ; 4 uses
  %i.bx = alloca [16 x i8], align 8               ; 5 uses
  %i.by = alloca [24 x i8], align 8               ; 2 uses
  %i.bz = alloca [48 x i8], align 8               ; 6 uses
  %i.ca = alloca [48 x i8], align 8               ; 4 uses
  %i.cb = alloca [64 x i8], align 8               ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store i64 0, ptr %i.cb, align 8
  %.sroa.4244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 %2, ptr %.sroa.4244.0..sroa_idx, align 8
  %.sroa.5245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr %1, ptr %.sroa.5245.0..sroa_idx, align 8
  %.sroa.5245.sroa.4.0..sroa.5245.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store i64 %2, ptr %.sroa.5245.sroa.4.0..sroa.5245.0..sroa_idx.sroa_idx, align 8
  %.sroa.5245.sroa.5.0..sroa.5245.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store ptr %1, ptr %.sroa.5245.sroa.5.0..sroa.5245.0..sroa_idx.sroa_idx, align 8
  %.sroa.5245.sroa.6.0..sroa.5245.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  store ptr %i.cc, ptr %.sroa.5245.sroa.6.0..sroa.5245.0..sroa_idx.sroa_idx, align 8
  %.sroa.5245.sroa.7.0..sroa.5245.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  store i64 0, ptr %.sroa.5245.sroa.7.0..sroa.5245.0..sroa_idx.sroa_idx, align 8
  %.sroa.6246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  store i8 1, ptr %.sroa.6246.0..sroa_idx, align 8
  %.sroa.7247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 57
  store i8 0, ptr %.sroa.7247.0..sroa_idx, align 1
  call fastcc void @_ZN11procfs_core9from_iter17h783fd4fad88e9115E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ca, ptr noalias noundef align 8 dereferenceable(64) %i.cb)
  %i.cd = load i64, ptr %i.ca, align 8, !range !13, !noundef !4
  %.not = icmp eq i64 %i.cd, -9223372036854775803
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bz, ptr noundef nonnull align 8 dereferenceable(48) %i.ca, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  store ptr %i.bz, ptr %i.bx, align 8
  %.sroa.4252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr @"_ZN61_$LT$procfs_core..ProcError$u20$as$u20$core..fmt..Display$GT$3fmt17h847016ba6056f7caE", ptr %.sroa.4252.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4022
  store ptr @31, ptr %i.r, align 8, !noalias !4023
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !4023
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.bx, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !4023
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !4023
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !4023
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.by, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.r)
          to label %bb.es unwind label %bb.er

bb.c:                                             ; preds = %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !noundef !4
  call fastcc void @_ZN11procfs_core9from_iter17h783fd4fad88e9115E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.bw, ptr noalias noundef align 8 dereferenceable(64) %i.cb)
  %i.cg = load i64, ptr %i.bw, align 8, !range !13, !noundef !4
  %.not425 = icmp eq i64 %i.cg, -9223372036854775803
  br i1 %.not425, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bv, ptr noundef nonnull align 8 dereferenceable(48) %i.bw, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  store ptr %i.bv, ptr %i.bt, align 8
  %.sroa.4258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr @"_ZN61_$LT$procfs_core..ProcError$u20$as$u20$core..fmt..Display$GT$3fmt17h847016ba6056f7caE", ptr %.sroa.4258.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4024
  store ptr @31, ptr %i.q, align 8, !noalias !4025
  %.sroa.4693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 1, ptr %.sroa.4693.0..sroa_idx, align 8, !noalias !4025
  %.sroa.5694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.bt, ptr %.sroa.5694.0..sroa_idx, align 8, !noalias !4025
  %.sroa.6695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 1, ptr %.sroa.6695.0..sroa_idx, align 8, !noalias !4025
  %.sroa.7696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %.sroa.7696.0..sroa_idx, align 8, !noalias !4025
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bu, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.q)
          to label %bb.eq unwind label %bb.ep

bb.e:                                             ; preds = %bb.c
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !noundef !4
  call fastcc void @_ZN11procfs_core9from_iter17h48f092cbffbcd748E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.bs, ptr noalias noundef align 8 dereferenceable(64) %i.cb)
  %i.cj = load i64, ptr %i.bs, align 8, !range !13, !noundef !4
  %.not426 = icmp eq i64 %i.cj, -9223372036854775803
  br i1 %.not426, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.br, ptr noundef nonnull align 8 dereferenceable(48) %i.bs, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  store ptr %i.br, ptr %i.bp, align 8
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr @"_ZN61_$LT$procfs_core..ProcError$u20$as$u20$core..fmt..Display$GT$3fmt17h847016ba6056f7caE", ptr %.sroa.4264.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4026
  store ptr @31, ptr %i.p, align 8, !noalias !4027
  %.sroa.4709.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 1, ptr %.sroa.4709.0..sroa_idx, align 8, !noalias !4027
  %.sroa.5710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.bp, ptr %.sroa.5710.0..sroa_idx, align 8, !noalias !4027
  %.sroa.6711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 1, ptr %.sroa.6711.0..sroa_idx, align 8, !noalias !4027
  %.sroa.7712.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr null, ptr %.sroa.7712.0..sroa_idx, align 8, !noalias !4027
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.p)
          to label %bb.eo unwind label %bb.en

bb.g:                                             ; preds = %bb.e
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.0705.0.copyload = load i64, ptr %i.ck, align 8 ; 5 uses
  %.sroa.4706.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.4706.0.copyload = load ptr, ptr %.sroa.4706.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5707.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %.sroa.5707.0.copyload = load i64, ptr %.sroa.5707.0..sroa_idx, align 8
  invoke fastcc void @_ZN11procfs_core9from_iter17h48f092cbffbcd748E(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.bo, ptr noalias noundef align 8 dereferenceable(64) %i.cb)
          to label %bb.j unwind label %bb.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit510": ; preds = %bb.p, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h3ab02978669b57a2E.exit", %bb.ek, %bb.i
  %.pn469 = phi { ptr, i32 } [ %i.cm, %bb.i ], [ %i.lb, %bb.ek ], [ %.pn467, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h3ab02978669b57a2E.exit" ], [ %.pn467, %bb.p ] ; 2 uses
  %i.cl = icmp eq i64 %.sroa.0705.0.copyload, 0
  br i1 %i.cl, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit510"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4706.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4706.0.copyload, i64 noundef %.sroa.0705.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #38
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit"
end_hunk_3
begin_hunk_4_@"_ZN76_$LT$procfs_core..net.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h8dbee7b892e46ab0E":bb.a
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17hfa81495d1e903a72E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !5966
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !5967, !noalias !5968
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !5967, !noalias !5968
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5969
  store ptr @313, ptr %i.a, align 8, !noalias !5966
  %.sroa.5.0..sroa_idx.i13.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i13.i, align 8, !noalias !5966
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !5966
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !5966
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !5966
  %i.x = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !5970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5963
  br i1 %i.x, label %bb.g, label %.loopexit13.sink.split.i

.loopexit13.sink.split.i:                         ; preds = %bb.h, %bb.g, %.loopexit.i, %.thread.i
  %.sroa.0.1.ph.i = phi i1 [ true, %bb.g ], [ false, %.loopexit.i ], [ false, %.thread.i ], [ false, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5963
  br label %_ZN8bitflags6parser9to_writer17h36f50fee66093cf1E.exit

bb.i:                                             ; preds = %bb.c
  %i.y = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @429, i64 noundef 3)
  br i1 %i.y, label %_ZN8bitflags6parser9to_writer17h36f50fee66093cf1E.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  %i.z = tail call noundef zeroext i1 @"_ZN57_$LT$core..fmt..Formatter$u20$as$u20$core..fmt..Write$GT$9write_str17h8b742be6ac34d954E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.t, i64 noundef %i.q)
  br i1 %i.z, label %_ZN8bitflags6parser9to_writer17h36f50fee66093cf1E.exit, label %bb.b

_ZN8bitflags6parser9to_writer17h36f50fee66093cf1E.exit: ; preds = %bb.i, %bb.j, %.loopexit13.sink.split.i
  %.sroa.0.1.i = phi i1 [ %.sroa.0.1.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.j ], [ true, %bb.i ]
  ret i1 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$procfs_core..ProcError$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0196dd0316ea147eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !7

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !5978
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #38, !noalias !5978 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #37, !noalias !5979
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !5980
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.e, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.53.0..sroa_idx, align 8
  store i64 -9223372036854775804, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$procfs_core..net.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h0d6d16e9cac358a0E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h24f323ebd7812ce5E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$procfs_core..net.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h38f1cc12d7c92be1E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h24f323ebd7812ce5E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$procfs_core..net.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17h5a4b0025ca75098eE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h191f9befeba98474E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN77_$LT$procfs_core..net.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17h9560621536337938E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h191f9befeba98474E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @"_ZN77_$LT$procfs_core..process..FDTarget$u20$as$u20$core..str..traits..FromStr$GT$8from_str16strip_first_last17h128881958b492dd2E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) initializes((0, 16)) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i64 %2, 2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 6 uses
  %i.c = load i8, ptr %1, align 1, !noalias !5985, !noundef !4 ; 3 uses
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.d, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i": ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = icmp samesign ugt i8 %i.c, -33
  br i1 %i.f, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i", label %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i"
  %i.h = icmp samesign ugt i8 %i.c, -17
  %spec.select.v = select i1 %i.h, i64 4, i64 3
  %spec.select = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.v
  br label %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit

_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit: ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i", %bb.d
  %.sroa.0.0 = phi ptr [ %i.e, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i" ], [ %i.g, %bb.d ], [ %spec.select, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i" ] ; 5 uses
  %i.i = icmp eq ptr %.sroa.0.0, %i.b
  br i1 %i.i, label %_ZN4core3str11validations23next_code_point_reverse17hdedf3adc93c2bb8dE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !noalias !5986, !noundef !4
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %_ZN4core3str11validations23next_code_point_reverse17hdedf3adc93c2bb8dE.exit, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit17.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit17.i": ; preds = %bb.e
  %i.m = icmp ne ptr %.sroa.0.0, %i.j
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds i8, ptr %i.b, i64 -2 ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !noalias !5986, !noundef !4
  %i.p = icmp slt i8 %i.o, -64
  br i1 %i.p, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit19.i", label %_ZN4core3str11validations23next_code_point_reverse17hdedf3adc93c2bb8dE.exit

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit19.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit17.i"
  %i.q = icmp ne ptr %.sroa.0.0, %i.n
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds i8, ptr %i.b, i64 -3 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !noalias !5986, !noundef !4
  %i.t = icmp slt i8 %i.s, -64
  %i.u = getelementptr inbounds i8, ptr %i.b, i64 -4
  %spec.select8 = select i1 %i.t, ptr %i.u, ptr %i.r
  br label %_ZN4core3str11validations23next_code_point_reverse17hdedf3adc93c2bb8dE.exit

_ZN4core3str11validations23next_code_point_reverse17hdedf3adc93c2bb8dE.exit: ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit17.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit19.i", %bb.e, %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit
  %.sroa.10.2 = phi ptr [ %i.b, %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit ], [ %i.j, %bb.e ], [ %spec.select8, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit19.i" ], [ %i.n, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit17.i" ]
  %i.v = ptrtoint ptr %.sroa.10.2 to i64
  %i.w = ptrtoint ptr %.sroa.0.0 to i64
  %i.x = sub nuw i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %i.z, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN4core3str11validations23next_code_point_reverse17hdedf3adc93c2bb8dE.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$procfs_core..process..FDTarget$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h8c85920c345884f3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = alloca [1 x i8], align 1                 ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 2 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.5146 = alloca [24 x i8], align 8         ; 2 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 2 uses
  %i.s = alloca [1 x i8], align 1                 ; 4 uses
  %i.t = alloca [48 x i8], align 8                ; 8 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 2 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 2 uses
  %i.z = alloca [1 x i8], align 1                 ; 4 uses
  %i.aa = alloca [48 x i8], align 8               ; 8 uses
  %i.ab = alloca [16 x i8], align 8               ; 4 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 2 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 2 uses
  %i.ag = alloca [1 x i8], align 1                ; 4 uses
  %i.ah = alloca [48 x i8], align 8               ; 8 uses
  %i.ai = alloca [16 x i8], align 8               ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 2 uses
  %i.al = alloca [72 x i8], align 8               ; 20 uses
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit409", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit": ; preds = %bb.a
  %rhsc = load i8, ptr %1, align 1
  %i.am = icmp eq i8 %rhsc, 47
  br i1 %i.am, label %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit.thread", label %bb.b

bb.b:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit"
  %i.an = icmp ult i64 %2, 16
  br i1 %i.an, label %.lr.ph.i.i, label %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit"

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %.sroa.01.05.i.i = phi i64 [ %i.ar, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.i.i
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !6096, !noundef !4
  %i.aq = icmp eq i8 %i.ap, 58
  br i1 %i.aq, label %.lr.ph.split.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ar = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ar, %2
  br i1 %exitcond.not.i.i, label %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit.thread", label %.lr.ph.i.i

"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit": ; preds = %bb.b
  %i.as = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 58, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.at = extractvalue { i64, i64 } %i.as, 0
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %.lr.ph.split.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit.i"

"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit.thread": ; preds = %bb.c, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit"
  %.not.i.i364 = icmp ult i64 %2, 7
  br i1 %.not.i.i364, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i404", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit.i": ; preds = %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit", %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit.thread"
  %i.av = load i32, ptr %1, align 1
  %i.aw = xor i32 1835363631, %i.av
  %i.ax = getelementptr i8, ptr %1, i64 3
  %i.ay = load i32, ptr %i.ax, align 1
  %i.az = xor i32 979658349, %i.ay
  %i.ba = or i32 %i.aw, %i.az
  %i.bb = icmp ne i32 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %bcmp.i.i.fr.i = freeze i32 %i.bc
  %i.bd = icmp eq i32 %bcmp.i.i.fr.i, 0
  %i.be = add i64 %2, -7                          ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 7
  br i1 %i.bd, label %bb.bh, label %bb.bj

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 0, ptr %i.al, align 8
  %.sroa.4223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %2, ptr %.sroa.4223.0..sroa_idx, align 8
  %.sroa.5224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %1, ptr %.sroa.5224.0..sroa_idx, align 8
  %.sroa.5224.sroa.4.0..sroa.5224.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 %2, ptr %.sroa.5224.sroa.4.0..sroa.5224.0..sroa_idx.sroa_idx, align 8
  %.sroa.5224.sroa.5.0..sroa.5224.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 4 uses
  %.sroa.5224.sroa.6.0..sroa.5224.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  store i64 %2, ptr %.sroa.5224.sroa.6.0..sroa.5224.0..sroa_idx.sroa_idx, align 8
  %.sroa.5224.sroa.7.0..sroa.5224.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 3 uses
  store i32 58, ptr %.sroa.5224.sroa.7.0..sroa.5224.0..sroa_idx.sroa_idx, align 8
  %.sroa.5224.sroa.8.0..sroa.5224.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 52
  store i32 58, ptr %.sroa.5224.sroa.8.0..sroa.5224.0..sroa_idx.sroa_idx, align 4
  %.sroa.5224.sroa.9.0..sroa.5224.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store i8 1, ptr %.sroa.5224.sroa.9.0..sroa.5224.0..sroa_idx.sroa_idx, align 8
  %.sroa.6225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store i8 1, ptr %.sroa.6225.0..sroa_idx, align 8
  %.sroa.7226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 65 ; 3 uses
  store i8 0, ptr %.sroa.7226.0..sroa_idx, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6097)
  %rhsc623 = load i8, ptr %.sroa.5224.sroa.7.0..sroa.5224.0..sroa_idx.sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.split.i.i
  %i.bg = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.bt, %bb.f ] ; 6 uses
  %i.bh = sub nuw i64 %2, %i.bg                   ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %i.bg ; 2 uses
  %i.bj = icmp ult i64 %i.bh, 16
  br i1 %i.bj, label %.preheader.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.d
  %.not.i.i.i = icmp eq i64 %2, %i.bg
  br i1 %.not.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.e
  %.sroa.01.05.i.i.i = phi i64 [ %i.bn, %bb.e ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.01.05.i.i.i
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !6098, !noalias !6099, !noundef !4
  %i.bm = icmp eq i8 %i.bl, 58
  br i1 %i.bm, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bn = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bn, %i.bh
  br i1 %exitcond.not.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i", label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i: ; preds = %bb.d
  %i.bo = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 58, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bi, i64 noundef %i.bh), !noalias !6099 ; 2 uses
  %i.bp = extractvalue { i64, i64 } %i.bo, 0
  %i.bq = extractvalue { i64, i64 } %i.bo, 1
  %i.br = trunc nuw i64 %i.bp to i1
  br i1 %i.br, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i: ; preds = %.lr.ph.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %.sroa.4.0.i27.i.i = phi i64 [ %i.bq, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.bs = add i64 %i.bg, 1
  %i.bt = add i64 %i.bs, %.sroa.4.0.i27.i.i       ; 7 uses
  %.not21.i.i = icmp ugt i64 %i.bt, %2
  %i.bu = add i64 %i.bg, %.sroa.4.0.i27.i.i
  %or.cond.i.i.not = icmp ult i64 %i.bu, %2
  br i1 %or.cond.i.i.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  br i1 %.not21.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i", label %bb.d

bb.g:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  %i.bv = add i64 %i.bg, %.sroa.4.0.i27.i.i       ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %i.bv
  %lhsc = load i8, ptr %i.bw, align 1
  %i.bx = icmp eq i8 %lhsc, %rhsc623
  br i1 %i.bx, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %bb.f

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i": ; preds = %bb.g
  store i64 %i.bt, ptr %.sroa.5224.sroa.5.0..sroa.5224.0..sroa_idx.sroa_idx, align 8
  store i64 %i.bt, ptr %i.al, align 8, !alias.scope !6097
  br label %bb.h

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i": ; preds = %bb.f, %.preheader.i.i.i, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i, %bb.e
  %.promoted.i.i371591 = phi i64 [ %2, %bb.e ], [ %2, %.preheader.i.i.i ], [ %2, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i ], [ %i.bt, %bb.f ] ; 2 uses
  store i64 %.promoted.i.i371591, ptr %.sroa.5224.sroa.5.0..sroa.5224.0..sroa_idx.sroa_idx, align 8
  store i8 1, ptr %.sroa.7226.0..sroa_idx, align 1, !alias.scope !6100
  br label %bb.h

bb.h:                                             ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i", %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i"
  %.pre.i2.i379 = phi i64 [ 0, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i" ], [ %i.bt, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i" ] ; 2 uses
  %.promoted.i.i371 = phi i64 [ %.promoted.i.i371591, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i" ], [ %i.bt, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i" ] ; 2 uses
  %i.by = phi i1 [ true, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i" ], [ false, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i" ]
  %.sroa.4.1.i = phi i64 [ %2, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i" ], [ %i.bv, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i" ] ; 2 uses
  switch i64 %.sroa.4.1.i, label %bb.am [
    i64 6, label %bb.i
    i64 3, label %bb.s
    i64 4, label %bb.aa
    i64 10, label %bb.ai
    i64 0, label %bb.as
  ]

bb.i:                                             ; preds = %bb.h
  %i.bz = load i32, ptr %1, align 1
  %i.ca = xor i32 %i.bz, 1801678707
  %i.cb = getelementptr i8, ptr %1, i64 4
  %i.cc = load i16, ptr %i.cb, align 1
  %i.cd = zext i16 %i.cc to i32
  %i.ce = xor i32 %i.cd, 29797
  %i.cf = or i32 %i.ca, %i.ce
  %i.cg = icmp ne i32 %i.cf, 0
  %i.ch = zext i1 %i.cg to i32
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.j, label %bb.am

bb.j:                                             ; preds = %bb.i
  %i.cj = call fastcc { ptr, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h63b945dbfb19965bE"(ptr noalias noundef align 8 dereferenceable(72) %i.al) ; 2 uses
  %i.ck = extractvalue { ptr, i64 } %i.cj, 0      ; 2 uses
  %.not357 = icmp eq ptr %i.ck, null
  br i1 %.not357, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %i.a, ptr %i.aj, align 8
  %.sroa.4236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4236.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6101
  store ptr @316, ptr %i.j, align 8, !noalias !6102
  %.sroa.4411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %.sroa.4411.0..sroa_idx, align 8, !noalias !6102
  %.sroa.5412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.aj, ptr %.sroa.5412.0..sroa_idx, align 8, !noalias !6102
end_hunk_4
begin_hunk_5_@"_ZN77_$LT$procfs_core..process..FDTarget$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h8c85920c345884f3E":bb.a
bb.v:                                             ; preds = %bb.t
  %i.dk = extractvalue { ptr, i64 } %i.di, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call fastcc void @"_ZN77_$LT$procfs_core..process..FDTarget$u20$as$u20$core..str..traits..FromStr$GT$8from_str16strip_first_last17h128881958b492dd2E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.aa, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dj, i64 noundef %i.dk)
  %i.dl = load i64, ptr %i.aa, align 8, !range !13, !noundef !4 ; 2 uses
  %.not354 = icmp eq i64 %i.dl, -9223372036854775803
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.dp = load i64, ptr %i.do, align 8            ; 2 uses
  br i1 %.not354, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.6270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.4274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4274.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6270.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 %i.dl, ptr %0, align 8
  %.sroa.2272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dn, ptr %.sroa.2272.0..sroa_idx, align 8
  %.sroa.3273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dp, ptr %.sroa.3273.0..sroa_idx, align 8
  br label %bb.r

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call fastcc void @"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.ab, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dn, i64 noundef %i.dp, i32 noundef 10)
  %i.dq = load i8, ptr %i.ab, align 8, !range !8, !noundef !4
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !range !18, !noundef !4
  store i8 %i.dt, ptr %i.z, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.z, ptr %i.x, align 8
  %.sroa.4278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4278.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6107
  store ptr @31, ptr %i.g, align 8, !noalias !6108
  %.sroa.4429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4429.0..sroa_idx, align 8, !noalias !6108
  %.sroa.5430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.x, ptr %.sroa.5430.0..sroa_idx, align 8, !noalias !6108
  %.sroa.6431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.6431.0..sroa_idx, align 8, !noalias !6108
  %.sroa.7432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.7432.0..sroa_idx, align 8, !noalias !6108
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @249, ptr %.sroa.493.0..sroa_idx, align 8
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 106, ptr %.sroa.594.0..sroa_idx, align 8
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 734, ptr %.sroa.695.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.r

bb.z:                                             ; preds = %bb.x
  %i.du = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !noundef !4
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775806, ptr %i.dw, align 8
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dv, ptr %.sroa.498.0..sroa_idx, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.q

bb.aa:                                            ; preds = %bb.h
  %i.dx = load i32, ptr %1, align 1
  %i.dy = icmp ne i32 %i.dx, 1701865840
  %i.dz = zext i1 %i.dy to i32
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.ab, label %bb.am

bb.ab:                                            ; preds = %bb.aa
  %i.eb = call fastcc { ptr, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h63b945dbfb19965bE"(ptr noalias noundef align 8 dereferenceable(72) %i.al) ; 2 uses
  %i.ec = extractvalue { ptr, i64 } %i.eb, 0      ; 2 uses
  %.not350 = icmp eq ptr %i.ec, null
  br i1 %.not350, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %i.a, ptr %i.v, align 8
  %.sroa.4284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4284.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6109
  store ptr @320, ptr %i.f, align 8, !noalias !6110
  %.sroa.4435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4435.0..sroa_idx, align 8, !noalias !6110
  %.sroa.5436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.v, ptr %.sroa.5436.0..sroa_idx, align 8, !noalias !6110
  %.sroa.6437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.6437.0..sroa_idx, align 8, !noalias !6110
  %.sroa.7438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.7438.0..sroa_idx, align 8, !noalias !6110
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @249, ptr %.sroa.4114.0..sroa_idx, align 8
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 106, ptr %.sroa.5115.0..sroa_idx, align 8
  %.sroa.6116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 738, ptr %.sroa.6116.0..sroa_idx, align 8
  br label %bb.r

bb.ad:                                            ; preds = %bb.ab
  %i.ed = extractvalue { ptr, i64 } %i.eb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call fastcc void @"_ZN77_$LT$procfs_core..process..FDTarget$u20$as$u20$core..str..traits..FromStr$GT$8from_str16strip_first_last17h128881958b492dd2E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ec, i64 noundef %i.ed)
  %i.ee = load i64, ptr %i.t, align 8, !range !13, !noundef !4 ; 2 uses
  %.not351 = icmp eq i64 %i.ee, -9223372036854775803
  %i.ef = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ei = load i64, ptr %i.eh, align 8            ; 2 uses
  br i1 %.not351, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.6294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.4298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4298.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6294.0..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %i.ee, ptr %0, align 8
  %.sroa.2296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eg, ptr %.sroa.2296.0..sroa_idx, align 8
  %.sroa.3297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ei, ptr %.sroa.3297.0..sroa_idx, align 8
  br label %bb.r

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call fastcc void @"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.u, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.eg, i64 noundef %i.ei, i32 noundef 10)
  %i.ej = load i8, ptr %i.u, align 8, !range !8, !noundef !4
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.el = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.em = load i8, ptr %i.el, align 1, !range !18, !noundef !4
  store i8 %i.em, ptr %i.s, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.s, ptr %i.q, align 8
  %.sroa.4302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4302.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6111
  store ptr @31, ptr %i.e, align 8, !noalias !6112
  %.sroa.4441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %.sroa.4441.0..sroa_idx, align 8, !noalias !6112
  %.sroa.5442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.q, ptr %.sroa.5442.0..sroa_idx, align 8, !noalias !6112
  %.sroa.6443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.6443.0..sroa_idx, align 8, !noalias !6112
  %.sroa.7444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.7444.0..sroa_idx, align 8, !noalias !6112
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @249, ptr %.sroa.4138.0..sroa_idx, align 8
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 106, ptr %.sroa.5139.0..sroa_idx, align 8
  %.sroa.6140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 739, ptr %.sroa.6140.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.r

bb.ah:                                            ; preds = %bb.af
  %i.en = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !noundef !4
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775805, ptr %i.ep, align 8
  %.sroa.4143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.eo, ptr %.sroa.4143.0..sroa_idx, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.q

bb.ai:                                            ; preds = %bb.h
  %i.eq = load i64, ptr %1, align 1
  %i.er = xor i64 %i.eq, 8029471044243779169
  %i.es = getelementptr i8, ptr %1, i64 8
  %i.et = load i16, ptr %i.es, align 1
  %i.eu = zext i16 %i.et to i64
  %i.ev = xor i64 %i.eu, 25956
  %i.ew = or i64 %i.er, %i.ev
  %i.ex = icmp ne i64 %i.ew, 0
  %i.ey = zext i1 %i.ex to i32
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.fa = call fastcc { ptr, i64 } @"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h63b945dbfb19965bE"(ptr noalias noundef align 8 dereferenceable(72) %i.al) ; 2 uses
  %i.fb = extractvalue { ptr, i64 } %i.fa, 0      ; 2 uses
  %.not349 = icmp eq ptr %i.fb, null
  br i1 %.not349, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.a, ptr %i.p, align 8
  %.sroa.4308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4308.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6113
  store ptr @322, ptr %i.d, align 8, !noalias !6114
  %.sroa.4447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.4447.0..sroa_idx, align 8, !noalias !6114
  %.sroa.5448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.p, ptr %.sroa.5448.0..sroa_idx, align 8, !noalias !6114
  %.sroa.6449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.6449.0..sroa_idx, align 8, !noalias !6114
  %.sroa.7450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.7450.0..sroa_idx, align 8, !noalias !6114
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.5146, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5146, i64 24, i1 false)
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @249, ptr %.sroa.4161.0..sroa_idx, align 8
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 106, ptr %.sroa.5162.0..sroa_idx, align 8
  %.sroa.6163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 742, ptr %.sroa.6163.0..sroa_idx, align 8
  br label %bb.r

bb.al:                                            ; preds = %bb.aj
  %i.fc = extractvalue { ptr, i64 } %i.fa, 1
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.fd, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fb, i64 noundef %i.fc)
  %.sroa.5146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775804, ptr %.sroa.5146.0..sroa_idx, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.q

bb.am:                                            ; preds = %bb.ai, %bb.aa, %bb.s, %bb.i, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6115)
  br i1 %i.by, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fe = icmp ult i64 %2, %.promoted.i.i371
  br i1 %i.fe, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378", label %.lr.ph.split.i.i374

.lr.ph.split.i.i374:                              ; preds = %bb.an
  %rhsc625 = load i8, ptr %.sroa.5224.sroa.7.0..sroa.5224.0..sroa_idx.sroa_idx, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %.lr.ph.split.i.i374
  %i.ff = phi i64 [ %.promoted.i.i371, %.lr.ph.split.i.i374 ], [ %i.fs, %bb.aq ] ; 6 uses
  %i.fg = sub nuw i64 %2, %i.ff                   ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 %i.ff ; 2 uses
  %i.fi = icmp ult i64 %i.fg, 16
  br i1 %i.fi, label %.preheader.i.i.i395, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i376

.preheader.i.i.i395:                              ; preds = %bb.ao
  %.not.i.i.i396 = icmp eq i64 %2, %i.ff
  br i1 %.not.i.i.i396, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378.sink.split", label %.lr.ph.i.i.i397

.lr.ph.i.i.i397:                                  ; preds = %.preheader.i.i.i395, %bb.ap
  %.sroa.01.05.i.i.i398 = phi i64 [ %i.fm, %bb.ap ], [ 0, %.preheader.i.i.i395 ] ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.sroa.01.05.i.i.i398
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !6116, !noalias !6117, !noundef !4
  %i.fl = icmp eq i8 %i.fk, 58
  br i1 %i.fl, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i388, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i397
  %i.fm = add nuw nsw i64 %.sroa.01.05.i.i.i398, 1 ; 2 uses
  %exitcond.not.i.i.i399 = icmp eq i64 %i.fm, %i.fg
  br i1 %exitcond.not.i.i.i399, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378.sink.split", label %.lr.ph.i.i.i397

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i376: ; preds = %bb.ao
  %i.fn = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 58, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.fh, i64 noundef %i.fg), !noalias !6117 ; 2 uses
  %i.fo = extractvalue { i64, i64 } %i.fn, 0
  %i.fp = extractvalue { i64, i64 } %i.fn, 1
  %i.fq = trunc nuw i64 %i.fo to i1
  br i1 %i.fq, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i388, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378.sink.split"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i388: ; preds = %.lr.ph.i.i.i397, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i376
  %.sroa.4.0.i27.i.i389 = phi i64 [ %i.fp, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i376 ], [ %.sroa.01.05.i.i.i398, %.lr.ph.i.i.i397 ] ; 3 uses
  %i.fr = add i64 %i.ff, 1
  %i.fs = add i64 %i.fr, %.sroa.4.0.i27.i.i389    ; 5 uses
  %.not21.i.i391 = icmp ugt i64 %i.fs, %2
  %i.ft = add i64 %i.ff, %.sroa.4.0.i27.i.i389
  %or.cond.i.i392.not = icmp ult i64 %i.ft, %2
  br i1 %or.cond.i.i392.not, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i388
  br i1 %.not21.i.i391, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378.sink.split", label %bb.ao

bb.ar:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i388
  %i.fu = add i64 %i.ff, %.sroa.4.0.i27.i.i389    ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 %i.fu
  %lhsc624 = load i8, ptr %i.fv, align 1
  %i.fw = icmp eq i8 %lhsc624, %rhsc625
  br i1 %i.fw, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i394", label %bb.aq

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i394": ; preds = %bb.ar
  store i64 %i.fs, ptr %.sroa.5224.sroa.5.0..sroa.5224.0..sroa_idx.sroa_idx, align 8
  store i64 %i.fs, ptr %i.al, align 8, !alias.scope !6115
  br label %bb.au

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378.sink.split": ; preds = %bb.aq, %.preheader.i.i.i395, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i376, %bb.ap
  %.sink = phi i64 [ %2, %bb.ap ], [ %2, %.preheader.i.i.i395 ], [ %2, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i376 ], [ %i.fs, %bb.aq ]
  store i64 %.sink, ptr %.sroa.5224.sroa.5.0..sroa.5224.0..sroa_idx.sroa_idx, align 8
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378"

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378": ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378.sink.split", %bb.an
  store i8 1, ptr %.sroa.7226.0..sroa_idx, align 1, !alias.scope !6118
  br label %bb.au

bb.as:                                            ; preds = %bb.h
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.4166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %.sroa.4166.0..sroa_idx, align 8
  br label %bb.q

bb.at:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.a, ptr %i.n, align 8
  %.sroa.4314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @"_ZN61_$LT$procfs_core..NoneError$u20$as$u20$core..fmt..Display$GT$3fmt17hf9bf74fddfdb3f5bE", ptr %.sroa.4314.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6119
  store ptr @324, ptr %i.c, align 8, !noalias !6120
  %.sroa.4453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.4453.0..sroa_idx, align 8, !noalias !6120
  %.sroa.5454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.n, ptr %.sroa.5454.0..sroa_idx, align 8, !noalias !6120
  %.sroa.6455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.6455.0..sroa_idx, align 8, !noalias !6120
  %.sroa.7456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.7456.0..sroa_idx, align 8, !noalias !6120
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %.sroa.4184.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @249, ptr %.sroa.4184.0..sroa_idx, align 8
  %.sroa.5185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 106, ptr %.sroa.5185.0..sroa_idx, align 8
  %.sroa.6186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 745, ptr %.sroa.6186.0..sroa_idx, align 8
  br label %bb.r

bb.au:                                            ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i394", %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378"
  %.pn = phi i64 [ %2, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h0070a2b4c3e745c1E.exit.i378" ], [ %i.fu, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i394" ] ; 2 uses
  %.sroa.4.1.i386.ph = sub nuw i64 %.pn, %.pre.i2.i379
  %.sroa.0.1.i387.ph = getelementptr inbounds nuw i8, ptr %1, i64 %.pre.i2.i379 ; 4 uses
  %i.fx = icmp ugt i64 %.sroa.4.1.i386.ph, 2
  br i1 %i.fx, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %bb.au
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 %.pn ; 6 uses
  %i.fz = load i8, ptr %.sroa.0.1.i387.ph, align 1, !alias.scope !6121, !noalias !6122, !noundef !4 ; 3 uses
  %i.ga = icmp sgt i8 %i.fz, -1
  br i1 %i.ga, label %bb.aw, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i": ; preds = %bb.av
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i387.ph, i64 2
  %i.gc = icmp samesign ugt i8 %i.fz, -33
  br i1 %i.gc, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i", label %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit.i

bb.aw:                                            ; preds = %bb.av
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i387.ph, i64 1
  br label %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i"
  %i.ge = icmp samesign ugt i8 %i.fz, -17
  %spec.select.v.i = select i1 %i.ge, i64 4, i64 3
  %spec.select.i401 = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i387.ph, i64 %spec.select.v.i
  br label %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit.i

_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit.i: ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i", %bb.aw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i"
  %.sroa.0.0.i = phi ptr [ %i.gb, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit12.i.i" ], [ %i.gd, %bb.aw ], [ %spec.select.i401, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d79301cf90414f7E.exit14.i.i" ] ; 11 uses
  %i.gf = icmp eq ptr %.sroa.0.0.i, %i.fy
  br i1 %i.gf, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit.i
  %i.gg = getelementptr inbounds i8, ptr %i.fy, i64 -1 ; 3 uses
  %i.gh = load i8, ptr %i.gg, align 1, !alias.scope !6121, !noalias !6123, !noundef !4
  %i.gi = icmp sgt i8 %i.gh, -1
  br i1 %i.gi, label %bb.az, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit17.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit17.i.i": ; preds = %bb.ax
  %i.gj = icmp ne ptr %.sroa.0.0.i, %i.gg
  tail call void @llvm.assume(i1 %i.gj)
  %i.gk = getelementptr inbounds i8, ptr %i.fy, i64 -2 ; 3 uses
  %i.gl = load i8, ptr %i.gk, align 1, !alias.scope !6121, !noalias !6123, !noundef !4
  %i.gm = icmp slt i8 %i.gl, -64
  br i1 %i.gm, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit19.i.i", label %bb.az

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit19.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit17.i.i"
  %i.gn = icmp ne ptr %.sroa.0.0.i, %i.gk
  tail call void @llvm.assume(i1 %i.gn)
  %i.go = getelementptr inbounds i8, ptr %i.fy, i64 -3 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !alias.scope !6121, !noalias !6123, !noundef !4
  %i.gq = icmp slt i8 %i.gp, -64
  %i.gr = getelementptr inbounds i8, ptr %i.fy, i64 -4
  %spec.select8.i = select i1 %i.gq, ptr %i.gr, ptr %i.go
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  store i64 -9223372036854775806, ptr %0, align 8
  %.sroa.2326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 -9223372036854775808 to ptr), ptr %.sroa.2326.0..sroa_idx, align 8
  br label %bb.r

bb.az:                                            ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit19.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit17.i.i", %bb.ax, %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit.i
  %.sroa.10.2.i = phi ptr [ %i.fy, %_ZN4core3str11validations15next_code_point17h276971935fc9b18fE.exit.i ], [ %i.gg, %bb.ax ], [ %spec.select8.i, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit19.i.i" ], [ %i.gk, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h03f44d8e8add10e0E.exit17.i.i" ]
  %i.gs = ptrtoint ptr %.sroa.10.2.i to i64
  %i.gt = ptrtoint ptr %.sroa.0.0.i to i64
  %i.gu = sub nuw i64 %i.gs, %i.gt                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  switch i64 %i.gu, label %bb.bd [
    i64 0, label %.loopexit
    i64 1, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az
  %i.gv = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !6124, !noalias !6125, !noundef !4
  switch i8 %i.gv, label %.lr.ph.split.us.i.preheader [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

bb.bb:                                            ; preds = %bb.bd
  %i.gw = icmp ult i64 %i.gu, 17
  br i1 %i.gw, label %.lr.ph.split.us.i.preheader, label %.preheader57.i

.lr.ph.split.us.i.preheader:                      ; preds = %bb.be, %bb.ba, %bb.bb
  %.sroa.01.170.us.i.ph = phi ptr [ %i.hg, %bb.be ], [ %.sroa.0.0.i, %bb.bb ], [ %.sroa.0.0.i, %bb.ba ]
  %.sroa.16.169.us.i.ph = phi i64 [ %i.hh, %bb.be ], [ %i.gu, %bb.bb ], [ 1, %bb.ba ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.bc
  %.sroa.01.170.us.i = phi ptr [ %i.hd, %bb.bc ], [ %.sroa.01.170.us.i.ph, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.sroa.16.169.us.i = phi i64 [ %i.hc, %bb.bc ], [ %.sroa.16.169.us.i.ph, %.lr.ph.split.us.i.preheader ]
  %.sroa.017.168.us.i = phi i64 [ %i.hf, %bb.bc ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.gx = load i8, ptr %.sroa.01.170.us.i, align 1, !alias.scope !6124, !noalias !6125, !noundef !4
  %i.gy = zext i8 %i.gx to i32
  %i.gz = add nsw i32 %i.gy, -48                  ; 2 uses
  %i.ha = icmp ult i32 %i.gz, 10
  br i1 %i.ha, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %.lr.ph.split.us.i
  %i.hb = mul i64 %.sroa.017.168.us.i, 10
  %i.hc = add i64 %.sroa.16.169.us.i, -1          ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.01.170.us.i, i64 1
  %i.he = zext nneg i32 %i.gz to i64
  %i.hf = add i64 %i.hb, %i.he                    ; 2 uses
  %.not51.us.i = icmp eq i64 %i.hc, 0
  br i1 %.not51.us.i, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit", label %.lr.ph.split.us.i

bb.bd:                                            ; preds = %bb.az
  %.pr.i = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !6124, !noalias !6125
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.be, label %bb.bb

bb.be:                                            ; preds = %bb.bd
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1 ; 2 uses
  %i.hh = add i64 %i.gu, -1                       ; 2 uses
  %i.hi = icmp ult i64 %i.gu, 18
  br i1 %i.hi, label %.lr.ph.split.us.i.preheader, label %.preheader57.i

.preheader57.i:                                   ; preds = %bb.be, %bb.bb
  %.sroa.16.0.ph.i = phi i64 [ %i.hh, %bb.be ], [ %i.gu, %bb.bb ] ; 2 uses
  %.sroa.01.0.ph.i = phi ptr [ %i.hg, %bb.be ], [ %.sroa.0.0.i, %bb.bb ]
  %.not.us.i652 = icmp eq i64 %.sroa.16.0.ph.i, 0
  br i1 %.not.us.i652, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit", label %.lr.ph

.preheader57.split.us.i:                          ; preds = %bb.bf
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.01.0.us.i655, i64 1
  %i.hk = add i64 %.sroa.16.0.us.i654, -1         ; 2 uses
  %.not.us.i = icmp eq i64 %i.hk, 0
  br i1 %.not.us.i, label %"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.preheader57.i, %.preheader57.split.us.i
  %.sroa.01.0.us.i655 = phi ptr [ %i.hj, %.preheader57.split.us.i ], [ %.sroa.01.0.ph.i, %.preheader57.i ] ; 2 uses
  %.sroa.16.0.us.i654 = phi i64 [ %i.hk, %.preheader57.split.us.i ], [ %.sroa.16.0.ph.i, %.preheader57.i ]
  %.sroa.017.0.us.i653 = phi i64 [ %i.ht, %.preheader57.split.us.i ], [ 0, %.preheader57.i ]
  %i.hl = load i8, ptr %.sroa.01.0.us.i655, align 1, !alias.scope !6124, !noalias !6125, !noundef !4
  %i.hm = zext i8 %i.hl to i32
  %i.hn = add nsw i32 %i.hm, -48                  ; 2 uses
  %i.ho = icmp ult i32 %i.hn, 10
  br i1 %i.ho, label %bb.bf, label %.loopexit

bb.bf:                                            ; preds = %.lr.ph
  %i.hp = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.017.0.us.i653, i64 10) ; 2 uses
  %i.hq = extractvalue { i64, i1 } %i.hp, 0       ; 2 uses
  %i.hr = extractvalue { i64, i1 } %i.hp, 1
  %i.hs = zext nneg i32 %i.hn to i64
  %i.ht = add i64 %i.hq, %i.hs                    ; 3 uses
  %.not50.us.i = icmp ult i64 %i.ht, %i.hq
  %or.cond = select i1 %i.hr, i1 true, i1 %.not50.us.i
  br i1 %or.cond, label %.loopexit, label %.preheader57.split.us.i

.loopexit:                                        ; preds = %bb.bf, %.lr.ph, %.lr.ph.split.us.i, %bb.ba, %bb.ba, %bb.az
  %.sroa.2.0.ph = phi i8 [ 1, %bb.ba ], [ 1, %bb.ba ], [ 0, %bb.az ], [ 1, %.lr.ph.split.us.i ], [ 1, %.lr.ph ], [ 2, %bb.bf ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 %.sroa.2.0.ph, ptr %i.m, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.m, ptr %i.k, align 8
  %.sroa.4332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN70_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17h0083b6440a39c4b9E", ptr %.sroa.4332.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6126
  store ptr @31, ptr %i.b, align 8, !noalias !6127
  %.sroa.4464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.4464.0..sroa_idx, align 8, !noalias !6127
  %.sroa.5465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.k, ptr %.sroa.5465.0..sroa_idx, align 8, !noalias !6127
  %.sroa.6466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.6466.0..sroa_idx, align 8, !noalias !6127
  %.sroa.7467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7467.0..sroa_idx, align 8, !noalias !6127
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %.sroa.4208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @249, ptr %.sroa.4208.0..sroa_idx, align 8
  %.sroa.5209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 106, ptr %.sroa.5209.0..sroa_idx, align 8
  %.sroa.6210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 746, ptr %.sroa.6210.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.r

"_ZN4core3num21_$LT$impl$u20$u64$GT$16from_ascii_radix17h72ad40eebc575d6aE.exit": ; preds = %.preheader57.split.us.i, %bb.bc, %.preheader57.i
  %.sroa.9.0494 = phi i64 [ %i.hf, %bb.bc ], [ 0, %.preheader57.i ], [ %i.ht, %.preheader57.split.us.i ]
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.hu, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %.sroa.4.1.i)
  %.sroa.4213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.9.0494, ptr %.sroa.4213.0..sroa_idx, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.q

bb.bg:                                            ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit409", %bb.q, %bb.r
  ret void

bb.bh:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit.i"
  %i.hv = icmp slt i64 %i.be, 0
  br i1 %i.hv, label %bb.bi, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !7

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.bh
  %i.hw = icmp eq i64 %i.be, 0
  br i1 %i.hw, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !6128
  %i.hx = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.be, i64 noundef range(i64 1, 9) 1) #38, !noalias !6128 ; 2 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.bi, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit"

bb.bi:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.bh
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.bh ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.be, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #37, !noalias !6129
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.hx, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.bf, i64 %i.be, i1 false), !noalias !6130
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775803, ptr %i.hz, align 8
  %.sroa.4219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.be, ptr %.sroa.4219.0..sroa_idx, align 8
  %.sroa.4219.sroa.4.0..sroa.4219.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4219.sroa.4.0..sroa.4219.0..sroa_idx.sroa_idx, align 8
  %.sroa.4219.sroa.5.0..sroa.4219.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.be, ptr %.sroa.4219.sroa.5.0..sroa.4219.0..sroa_idx.sroa_idx, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.bg

bb.bj:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h287f0fc7842908e3E.exit.i"
  %i.ia = icmp slt i64 %2, 0
  br i1 %i.ia, label %bb.bk, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i404", !prof !17

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i404": ; preds = %"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hf69a6e6dd1bb2512E.exit.thread", %bb.bj
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !6131
  %i.ib = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #38, !noalias !6131 ; 2 uses
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %bb.bk, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit409"

bb.bk:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i404", %bb.bj
  %.sroa.4.0.ph.i.i408 = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i404" ], [ 0, %bb.bj ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i408, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #37, !noalias !6132
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit409": ; preds = %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i404"
  %.sroa.10.0.i.i405 = phi ptr [ %i.ib, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i404" ], [ inttoptr (i64 1 to ptr), %bb.a ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i405, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !6133
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.id, align 8
  %.sroa.4221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.4221.0..sroa_idx, align 8
  %.sroa.4221.sroa.4.0..sroa.4221.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10.0.i.i405, ptr %.sroa.4221.sroa.4.0..sroa.4221.0..sroa_idx.sroa_idx, align 8
  %.sroa.4221.sroa.5.0..sroa.4221.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %2, ptr %.sroa.4221.sroa.5.0..sroa.4221.0..sroa_idx.sroa_idx, align 8
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.bg
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$procfs_core..sys..kernel..Type$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hccd23a94311a103cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !7

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !6141
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #38, !noalias !6141 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #37, !noalias !6142
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7fb4e59b56c4d0bdE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !6143
  store i64 %2, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.56.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN78_$LT$procfs_core..keyring.._..InternalBitFlags$u20$as$u20$core..fmt..Debug$GT$3fmt17h867ebe7be70f7c52E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i32, ptr %0, align 4, !noundef !4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @"_ZN80_$LT$procfs_core..keyring.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17h5a6af0d8cd8ebf3fE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @312, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h24f323ebd7812ce5E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6146
  store ptr @313, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @314, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !6146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN78_$LT$procfs_core..keyring.._..InternalBitFlags$u20$as$u20$core..fmt..Debug$GT$3fmt17hbfff67cbe4aa5dcdE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i32, ptr %0, align 4, !noundef !4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @"_ZN80_$LT$procfs_core..keyring.._..InternalBitFlags$u20$as$u20$core..fmt..Display$GT$3fmt17hfc0c2d2e6b0d5cdcE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @312, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h24f323ebd7812ce5E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6149
  store ptr @313, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @314, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !6149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN78_$LT$procfs_core..keyring.._..InternalBitFlags$u20$as$u20$core..fmt..Octal$GT$3fmt17h18db43493363f67bE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Octal$u20$for$u20$u32$GT$3fmt17h0c8928584ba225fcE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN78_$LT$procfs_core..keyring.._..InternalBitFlags$u20$as$u20$core..fmt..Octal$GT$3fmt17h5d2024edda96917bE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
end_hunk_5
begin_hunk_6_@"_ZN88_$LT$procfs_core..process.._..InternalBitFlags$u20$as$u20$core..str..traits..FromStr$GT$8from_str17ha446086de1a336a1E":bb.a
bb.m:                                             ; preds = %bb.k
  %i.bs = load i32, ptr %i.y, align 1
  %i.bt = xor i32 1447645776, %i.bs
  %i.bu = getelementptr i8, ptr %i.y, i64 3
  %i.bv = load i32, ptr %i.bu, align 1
  %i.bw = xor i32 1163149654, %i.bv
  %i.bx = or i32 %i.bt, %i.bw
  %i.by = icmp ne i32 %i.bx, 0
  %i.bz = zext i1 %i.by to i32
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.x, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %bb.f
  %.sroa.5103.0.copyload.i = load i64, ptr %.sroa.716.0..sroa_idx.i, align 8, !noalias !7187 ; 6 uses
  %.sroa.6104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6104.0.copyload.i = load ptr, ptr %.sroa.6104.0..sroa_idx.i, align 8, !noalias !7187 ; 4 uses
  %i.cb = icmp slt i64 %i.af, 0
  br i1 %i.cb, label %bb.o, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !7

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.cc = icmp eq i64 %i.af, 0
  br i1 %i.cc, label %bb.s, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !7188
  %i.cd = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, 9) 1) #38, !noalias !7188 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.o, label %bb.s

bb.o:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %bb.n
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.n ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #37
          to label %.noexc.i.i unwind label %bb.p, !noalias !7189

.noexc.i.i:                                       ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.cf = landingpad { ptr, i32 }
          cleanup
  switch i64 %i.ag, label %bb.q [
    i64 0, label %"_ZN4core3ptr49drop_in_place$LT$bitflags..parser..ParseError$GT$17h9864fb8efbc90b6bE.exit.i"
    i64 1, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.cg = icmp eq i64 %.sroa.5103.0.copyload.i, 0
  br i1 %i.cg, label %"_ZN4core3ptr49drop_in_place$LT$bitflags..parser..ParseError$GT$17h9864fb8efbc90b6bE.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split.i.i.i": ; preds = %bb.r, %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6104.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6104.0.copyload.i, i64 noundef %.sroa.5103.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !7190
  br label %"_ZN4core3ptr49drop_in_place$LT$bitflags..parser..ParseError$GT$17h9864fb8efbc90b6bE.exit.i"

bb.r:                                             ; preds = %bb.p
  %i.ch = icmp eq i64 %.sroa.5103.0.copyload.i, 0
  br i1 %i.ch, label %"_ZN4core3ptr49drop_in_place$LT$bitflags..parser..ParseError$GT$17h9864fb8efbc90b6bE.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split.i.i.i"

"_ZN4core3ptr49drop_in_place$LT$bitflags..parser..ParseError$GT$17h9864fb8efbc90b6bE.exit.i": ; preds = %bb.r, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split.i.i.i", %bb.q, %bb.p
  resume { ptr, i32 } %i.cf

bb.s:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.cd, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %i.ae, i64 %i.af, i1 false), !noalias !7191
  switch i64 %i.ag, label %bb.t [
    i64 0, label %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hac5649ac3dbd4715E.exit.i"
    i64 1, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.ci = icmp eq i64 %.sroa.5103.0.copyload.i, 0
  br i1 %i.ci, label %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hac5649ac3dbd4715E.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split.i.i.i.i": ; preds = %bb.u, %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6104.0.copyload.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6104.0.copyload.i, i64 noundef %.sroa.5103.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #38, !noalias !7192
  br label %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hac5649ac3dbd4715E.exit.i"

bb.u:                                             ; preds = %bb.s
  %i.cj = icmp eq i64 %.sroa.5103.0.copyload.i, 0
  br i1 %i.cj, label %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hac5649ac3dbd4715E.exit.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split.i.i.i.i"

"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hac5649ac3dbd4715E.exit.i": ; preds = %bb.u, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1ed881ed470345dfE.exit.sink.split.i.i.i.i", %bb.t, %bb.s
  %.sroa.9.sroa.8.0.extract.shift2 = and i64 %i.af, 9223372036854775552
  br label %.loopexit

bb.v:                                             ; preds = %bb.f
  %.sroa.716.0.copyload.i = load i8, ptr %.sroa.716.0..sroa_idx.i, align 8, !noalias !7187
  br label %bb.w

bb.w:                                             ; preds = %bb.x, %bb.v
  %.sroa.03.0.i = phi i8 [ %.sroa.716.0.copyload.i, %bb.v ], [ %.val.i84.i, %bb.x ]
  %i.ck = or i8 %.sroa.03.0.i, %.sroa.0.0149.i    ; 2 uses
  br i1 %i.w, label %.loopexit19, label %bb.b

bb.x:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.03.0.ptr10.lcssa.i.i = phi ptr [ @392, %bb.h ], [ getelementptr inbounds nuw (i8, ptr @392, i64 24), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @392, i64 48), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @392, i64 72), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @392, i64 96), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @392, i64 120), %bb.m ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.03.0.ptr10.lcssa.i.i, i64 16
  %.val.i84.i = load i8, ptr %i.cl, align 1, !noalias !7193, !noundef !4
  br label %bb.w

bb.y:                                             ; preds = %bb.g
  %i.cm = icmp slt i64 %i.z, 0
  br i1 %i.cm, label %bb.z, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i", !prof !17

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i": ; preds = %bb.m, %bb.l, %bb.j, %bb.i, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", %bb.y
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #38, !noalias !7194
  %i.cn = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %i.z, i64 noundef range(i64 1, 9) 1) #38, !noalias !7194 ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.z, label %_ZN8bitflags6parser10ParseError18invalid_named_flag17hda4d00775162ca88E.exit.i

bb.z:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i", %bb.y
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ 0, %bb.y ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 range(i64 1, 0) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #37, !noalias !7195
  unreachable

_ZN8bitflags6parser10ParseError18invalid_named_flag17hda4d00775162ca88E.exit.i: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cn, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.y, i64 range(i64 1, 0) %i.z, i1 false), !noalias !7196
  %.sroa.9.sroa.8.0.extract.shift = and i64 %i.z, -256
  br label %.loopexit

.loopexit:                                        ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hac5649ac3dbd4715E.exit.i", %_ZN8bitflags6parser10ParseError18invalid_named_flag17hda4d00775162ca88E.exit.i
  %.sroa.9.sroa.8.sroa.0.1.ph = phi i64 [ %.sroa.9.sroa.8.0.extract.shift2, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hac5649ac3dbd4715E.exit.i" ], [ %.sroa.9.sroa.8.0.extract.shift, %_ZN8bitflags6parser10ParseError18invalid_named_flag17hda4d00775162ca88E.exit.i ], [ %i.z, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  %.sroa.9.sroa.0.1.ph = phi i64 [ %i.af, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hac5649ac3dbd4715E.exit.i" ], [ %i.z, %_ZN8bitflags6parser10ParseError18invalid_named_flag17hda4d00775162ca88E.exit.i ], [ %i.z, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  %.sroa.16.1.ph = phi i64 [ %i.af, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hac5649ac3dbd4715E.exit.i" ], [ %i.z, %_ZN8bitflags6parser10ParseError18invalid_named_flag17hda4d00775162ca88E.exit.i ], [ undef, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  %.sroa.14.1.ph = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hac5649ac3dbd4715E.exit.i" ], [ %i.cn, %_ZN8bitflags6parser10ParseError18invalid_named_flag17hda4d00775162ca88E.exit.i ], [ undef, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  %.sroa.0.1.ph = phi i64 [ 2, %"_ZN8bitflags6parser8from_str28_$u7b$$u7b$closure$u7d$$u7d$17hac5649ac3dbd4715E.exit.i" ], [ 1, %_ZN8bitflags6parser10ParseError18invalid_named_flag17hda4d00775162ca88E.exit.i ], [ %i.z, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.9.sroa.0.0.insert.ext = and i64 %.sroa.9.sroa.0.1.ph, 255
  %.sroa.9.sroa.0.0.insert.insert = or disjoint i64 %.sroa.9.sroa.0.0.insert.ext, %.sroa.9.sroa.8.sroa.0.1.ph
  store i64 %.sroa.0.1.ph, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.9.sroa.0.0.insert.insert, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.14.1.ph, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.16.1.ph, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.aa

.loopexit19:                                      ; preds = %bb.w, %bb.a
  %.sroa.9.sroa.0.1 = phi i8 [ 0, %bb.a ], [ %i.ck, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.9.sroa.0.1, ptr %i.cp, align 8
  store i64 3, ptr %0, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit19, %.loopexit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN88_$LT$procfs_core..process..mount.._..InternalBitFlags$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h220919f029d5624eE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$u32$GT$3fmt17h24f323ebd7812ce5E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN88_$LT$procfs_core..process..mount.._..InternalBitFlags$u20$as$u20$core..fmt..UpperHex$GT$3fmt17h8fbdbc7a4b82aaf4E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !4
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h191f9befeba98474E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN88_$LT$procfs_core..process..pagemap.._..InternalBitFlags$u20$as$u20$core..fmt..Binary$GT$3fmt17h63a50cbc8967ed4eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %0, align 8, !noundef !4
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u64$GT$3fmt17hfc625514a71e025dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN88_$LT$procfs_core..process..pagemap.._..InternalBitFlags$u20$as$u20$core..fmt..Binary$GT$3fmt17h966d7ce37effece9E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %0, align 8, !noundef !4
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @"_ZN4core3fmt3num51_$LT$impl$u20$core..fmt..Binary$u20$for$u20$u64$GT$3fmt17hfc625514a71e025dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN88_$LT$procfs_core..sys..kernel..SemaphoreLimits$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h52169e380a97c9fbE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 1 captures(address) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7234)
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i.i.i, %bb.a
  %.sroa.21.0.i = phi i8 [ 0, %bb.a ], [ %.sroa.21.1.i, %.loopexit.i.i.i ]
  %.sroa.12.0.i = phi i64 [ %2, %bb.a ], [ %.sroa.12.1.i, %.loopexit.i.i.i ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %1, %bb.a ], [ %.sroa.0.1.i, %.loopexit.i.i.i ] ; 2 uses
  %i.b = phi i64 [ %2, %bb.a ], [ %i.n, %.loopexit.i.i.i ] ; 5 uses
  %i.c = phi ptr [ %1, %bb.a ], [ %i.o, %.loopexit.i.i.i ] ; 10 uses
  %i.d = phi i1 [ false, %bb.a ], [ %i.p, %.loopexit.i.i.i ]
  br i1 %i.d, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b
  %i.f = icmp samesign eq i64 %i.b, 0
  br i1 %i.f, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i.i"
  %.sroa.02.012.i.i.i.i = phi i64 [ %i.i, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i.i" ], [ 0, %bb.c ] ; 3 uses
  %i.g = phi ptr [ %i.h, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i.i" ], [ %i.c, %bb.c ] ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.g, align 1, !alias.scope !7234, !noalias !7235, !noundef !4
  switch i8 %.val.i.i.i.i, label %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i.i" [
    i8 9, label %bb.d
    i8 10, label %bb.d
    i8 12, label %bb.d
    i8 13, label %bb.d
    i8 32, label %bb.d
  ]

"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.i = add nuw i64 %.sroa.02.012.i.i.i.i, 1
  %i.j = icmp eq ptr %i.h, %i.e
  br i1 %i.j, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.k = add nuw i64 %.sroa.02.012.i.i.i.i, 1     ; 2 uses
  %i.l = sub nuw i64 %i.b, %i.k                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.k ; 2 uses
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i.i", %bb.d, %bb.c
  %.sroa.21.1.i = phi i8 [ %.sroa.21.0.i, %bb.d ], [ 1, %bb.c ], [ 1, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i.i" ] ; 3 uses
  %.sroa.12.1.i = phi i64 [ %i.l, %bb.d ], [ %.sroa.12.0.i, %bb.c ], [ %.sroa.12.0.i, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i.i" ] ; 3 uses
  %.sroa.0.1.i = phi ptr [ %i.m, %bb.d ], [ %.sroa.0.0.i, %bb.c ], [ %.sroa.0.0.i, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i.i" ] ; 3 uses
  %i.n = phi i64 [ %i.l, %bb.d ], [ 0, %bb.c ], [ %i.b, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i.i" ]
  %i.o = phi ptr [ %i.m, %bb.d ], [ %i.c, %bb.c ], [ %i.c, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i.i" ]
  %i.p = phi i1 [ false, %bb.d ], [ true, %bb.c ], [ true, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i.i" ]
  %.sroa.5.1.i.ph.i.i = phi i64 [ %.sroa.02.012.i.i.i.i, %bb.d ], [ 0, %bb.c ], [ %i.b, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i.i" ] ; 7 uses
  %.not.i.i.i = icmp eq i64 %.sroa.5.1.i.ph.i.i, 0
  br i1 %.not.i.i.i, label %bb.b, label %.preheader329.i

_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit.thread.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @52, ptr %i.q, align 8, !alias.scope !7233, !noalias !7234
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 14, ptr %i.r, align 8, !alias.scope !7233, !noalias !7234
  br label %_ZN11procfs_core3sys6kernel15SemaphoreLimits8from_str17ha682054dbc64a105E.exit

.preheader329.i:                                  ; preds = %.loopexit.i.i.i, %.loopexit.i.i154.i
  %.sroa.21.3.i = phi i8 [ %.sroa.21.4.i, %.loopexit.i.i154.i ], [ %.sroa.21.1.i, %.loopexit.i.i.i ]
  %.sroa.12.3.i = phi i64 [ %.sroa.12.4.i, %.loopexit.i.i154.i ], [ %.sroa.12.1.i, %.loopexit.i.i.i ] ; 2 uses
  %.sroa.0.3.i = phi ptr [ %.sroa.0.4.i, %.loopexit.i.i154.i ], [ %.sroa.0.1.i, %.loopexit.i.i.i ] ; 2 uses
  %i.s = phi i64 [ %i.af, %.loopexit.i.i154.i ], [ %.sroa.12.1.i, %.loopexit.i.i.i ] ; 5 uses
  %i.t = phi ptr [ %i.ag, %.loopexit.i.i154.i ], [ %.sroa.0.1.i, %.loopexit.i.i.i ] ; 10 uses
  %i.u = phi i8 [ %i.ah, %.loopexit.i.i154.i ], [ %.sroa.21.1.i, %.loopexit.i.i.i ]
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit155.thread.i, label %bb.e

bb.e:                                             ; preds = %.preheader329.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  %i.x = icmp samesign eq i64 %i.s, 0
  br i1 %i.x, label %.loopexit.i.i154.i, label %.lr.ph.i.i.i146.i

.lr.ph.i.i.i146.i:                                ; preds = %bb.e, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i"
  %.sroa.02.012.i.i.i147.i = phi i64 [ %i.aa, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i" ], [ 0, %bb.e ] ; 3 uses
  %i.y = phi ptr [ %i.z, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i" ], [ %i.t, %bb.e ] ; 2 uses
  %.val.i.i.i148.i = load i8, ptr %i.y, align 1, !alias.scope !7234, !noalias !7236, !noundef !4
  switch i8 %.val.i.i.i148.i, label %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i" [
    i8 9, label %bb.f
    i8 10, label %bb.f
    i8 12, label %bb.f
    i8 13, label %bb.f
    i8 32, label %bb.f
  ]

"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i": ; preds = %.lr.ph.i.i.i146.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %i.aa = add nuw i64 %.sroa.02.012.i.i.i147.i, 1
  %i.ab = icmp eq ptr %i.z, %i.w
  br i1 %i.ab, label %.loopexit.i.i154.i, label %.lr.ph.i.i.i146.i

bb.f:                                             ; preds = %.lr.ph.i.i.i146.i, %.lr.ph.i.i.i146.i, %.lr.ph.i.i.i146.i, %.lr.ph.i.i.i146.i, %.lr.ph.i.i.i146.i
  %i.ac = add nuw i64 %.sroa.02.012.i.i.i147.i, 1 ; 2 uses
  %i.ad = sub nuw i64 %i.s, %i.ac                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ac ; 2 uses
  br label %.loopexit.i.i154.i

.loopexit.i.i154.i:                               ; preds = %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i", %bb.f, %bb.e
  %.sroa.21.4.i = phi i8 [ %.sroa.21.3.i, %bb.f ], [ 1, %bb.e ], [ 1, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i" ] ; 3 uses
  %.sroa.12.4.i = phi i64 [ %i.ad, %bb.f ], [ %.sroa.12.3.i, %bb.e ], [ %.sroa.12.3.i, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i" ] ; 3 uses
  %.sroa.0.4.i = phi ptr [ %i.ae, %bb.f ], [ %.sroa.0.3.i, %bb.e ], [ %.sroa.0.3.i, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i" ] ; 3 uses
  %i.af = phi i64 [ %i.ad, %bb.f ], [ 0, %bb.e ], [ %i.s, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i" ]
  %i.ag = phi ptr [ %i.ae, %bb.f ], [ %i.t, %bb.e ], [ %i.t, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i" ]
  %i.ah = phi i8 [ 0, %bb.f ], [ 1, %bb.e ], [ 1, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i" ]
  %.sroa.5.1.i.ph.i149.i = phi i64 [ %.sroa.02.012.i.i.i147.i, %bb.f ], [ 0, %bb.e ], [ %i.s, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i153.i" ] ; 7 uses
  %.not.i.i150.i = icmp eq i64 %.sroa.5.1.i.ph.i149.i, 0
  br i1 %.not.i.i150.i, label %.preheader329.i, label %.preheader328.i

_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit155.thread.i: ; preds = %.preheader329.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @53, ptr %i.ai, align 8, !alias.scope !7233, !noalias !7234
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 14, ptr %i.aj, align 8, !alias.scope !7233, !noalias !7234
  br label %_ZN11procfs_core3sys6kernel15SemaphoreLimits8from_str17ha682054dbc64a105E.exit

.preheader328.i:                                  ; preds = %.loopexit.i.i154.i, %.loopexit.i.i167.i
  %.sroa.21.6.i = phi i8 [ %.sroa.21.7.i, %.loopexit.i.i167.i ], [ %.sroa.21.4.i, %.loopexit.i.i154.i ]
  %.sroa.12.6.i = phi i64 [ %.sroa.12.7.i, %.loopexit.i.i167.i ], [ %.sroa.12.4.i, %.loopexit.i.i154.i ] ; 2 uses
  %.sroa.0.6.i = phi ptr [ %.sroa.0.7.i, %.loopexit.i.i167.i ], [ %.sroa.0.4.i, %.loopexit.i.i154.i ] ; 2 uses
  %i.ak = phi i64 [ %i.ax, %.loopexit.i.i167.i ], [ %.sroa.12.4.i, %.loopexit.i.i154.i ] ; 5 uses
  %i.al = phi ptr [ %i.ay, %.loopexit.i.i167.i ], [ %.sroa.0.4.i, %.loopexit.i.i154.i ] ; 10 uses
  %i.am = phi i8 [ %i.az, %.loopexit.i.i167.i ], [ %.sroa.21.4.i, %.loopexit.i.i154.i ]
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit168.thread.i, label %bb.g

bb.g:                                             ; preds = %.preheader328.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  %i.ap = icmp samesign eq i64 %i.ak, 0
  br i1 %i.ap, label %.loopexit.i.i167.i, label %.lr.ph.i.i.i159.i

.lr.ph.i.i.i159.i:                                ; preds = %bb.g, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i"
  %.sroa.02.012.i.i.i160.i = phi i64 [ %i.as, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i" ], [ 0, %bb.g ] ; 3 uses
  %i.aq = phi ptr [ %i.ar, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i" ], [ %i.al, %bb.g ] ; 2 uses
  %.val.i.i.i161.i = load i8, ptr %i.aq, align 1, !alias.scope !7234, !noalias !7237, !noundef !4
  switch i8 %.val.i.i.i161.i, label %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i" [
    i8 9, label %bb.h
    i8 10, label %bb.h
    i8 12, label %bb.h
    i8 13, label %bb.h
    i8 32, label %bb.h
  ]

"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i": ; preds = %.lr.ph.i.i.i159.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %i.as = add nuw i64 %.sroa.02.012.i.i.i160.i, 1
  %i.at = icmp eq ptr %i.ar, %i.ao
  br i1 %i.at, label %.loopexit.i.i167.i, label %.lr.ph.i.i.i159.i

bb.h:                                             ; preds = %.lr.ph.i.i.i159.i, %.lr.ph.i.i.i159.i, %.lr.ph.i.i.i159.i, %.lr.ph.i.i.i159.i, %.lr.ph.i.i.i159.i
  %i.au = add nuw i64 %.sroa.02.012.i.i.i160.i, 1 ; 2 uses
  %i.av = sub nuw i64 %i.ak, %i.au                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.au ; 2 uses
  br label %.loopexit.i.i167.i

.loopexit.i.i167.i:                               ; preds = %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i", %bb.h, %bb.g
  %.sroa.21.7.i = phi i8 [ %.sroa.21.6.i, %bb.h ], [ 1, %bb.g ], [ 1, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i" ] ; 2 uses
  %.sroa.12.7.i = phi i64 [ %i.av, %bb.h ], [ %.sroa.12.6.i, %bb.g ], [ %.sroa.12.6.i, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i" ] ; 2 uses
  %.sroa.0.7.i = phi ptr [ %i.aw, %bb.h ], [ %.sroa.0.6.i, %bb.g ], [ %.sroa.0.6.i, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i" ] ; 2 uses
  %i.ax = phi i64 [ %i.av, %bb.h ], [ 0, %bb.g ], [ %i.ak, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i" ]
  %i.ay = phi ptr [ %i.aw, %bb.h ], [ %i.al, %bb.g ], [ %i.al, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i" ]
  %i.az = phi i8 [ 0, %bb.h ], [ 1, %bb.g ], [ 1, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i" ]
  %.sroa.5.1.i.ph.i162.i = phi i64 [ %.sroa.02.012.i.i.i160.i, %bb.h ], [ 0, %bb.g ], [ %i.ak, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i166.i" ] ; 7 uses
  %.not.i.i163.i = icmp eq i64 %.sroa.5.1.i.ph.i162.i, 0
  br i1 %.not.i.i163.i, label %.preheader328.i, label %.preheader.i

_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit168.thread.i: ; preds = %.preheader328.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @54, ptr %i.ba, align 8, !alias.scope !7233, !noalias !7234
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 14, ptr %i.bb, align 8, !alias.scope !7233, !noalias !7234
  br label %_ZN11procfs_core3sys6kernel15SemaphoreLimits8from_str17ha682054dbc64a105E.exit

.preheader.i:                                     ; preds = %.loopexit.i.i167.i, %.loopexit.i.i180.i
  %i.bc = phi i64 [ %i.bp, %.loopexit.i.i180.i ], [ %.sroa.12.7.i, %.loopexit.i.i167.i ] ; 5 uses
  %i.bd = phi ptr [ %i.bq, %.loopexit.i.i180.i ], [ %.sroa.0.7.i, %.loopexit.i.i167.i ] ; 6 uses
  %i.be = phi i8 [ %i.br, %.loopexit.i.i180.i ], [ %.sroa.21.7.i, %.loopexit.i.i167.i ]
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a8c0b48fba4e967E.exit181.thread.i, label %bb.i

bb.i:                                             ; preds = %.preheader.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  %i.bh = icmp samesign eq i64 %i.bc, 0
  br i1 %i.bh, label %.loopexit.i.i180.i, label %.lr.ph.i.i.i172.i

.lr.ph.i.i.i172.i:                                ; preds = %bb.i, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i179.i"
  %.sroa.02.012.i.i.i173.i = phi i64 [ %i.bk, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i179.i" ], [ 0, %bb.i ] ; 3 uses
  %i.bi = phi ptr [ %i.bj, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i179.i" ], [ %i.bd, %bb.i ] ; 2 uses
  %.val.i.i.i174.i = load i8, ptr %i.bi, align 1, !alias.scope !7234, !noalias !7238, !noundef !4
  switch i8 %.val.i.i.i174.i, label %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17h226c43582a96adeaE.exit.i.i.i179.i" [
    i8 9, label %bb.j
    i8 10, label %bb.j
    i8 12, label %bb.j
    i8 13, label %bb.j
    i8 32, label %bb.j
  ]

end_hunk_6
