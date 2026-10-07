Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.13?download=true
inline.NumInlined: 4254
inline.NumDeleted: 1726
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNSNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo23___thunk__network_udp_riINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtBa_7scanner7context11ScanContextENtNtBa_8compiler7RegexIdxEE9call_once6vtableBa_:bb.a
  ret i64 %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNSNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo27___thunk__network_http_get_rINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtBa_7scanner7context11ScanContextENtNtBa_8compiler7RegexIdEE9call_once6vtableBa_(ptr nofree readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !alias.scope !4311, !nonnull !10, !align !17, !noundef !10 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 792
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 664
  %i.c = load i64, ptr %i.b, align 8, !range !52, !noalias !4312, !noundef !10 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.e, %i.c
  %i.g = getelementptr i8, ptr %i.d, i64 %i.f
  %i.h = tail call fastcc noundef i64 @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo18network_http_get_r(ptr noundef nonnull align 8 %i.g, i32 noundef %2), !noalias !4312
  ret i64 %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNSNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo28___thunk__network_http_post_rINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtBa_7scanner7context11ScanContextENtNtBa_8compiler7RegexIdEE9call_once6vtableBa_(ptr nofree readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !alias.scope !4317, !nonnull !10, !align !17, !noundef !10 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 792
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 664
  %i.c = load i64, ptr %i.b, align 8, !range !52, !noalias !4318, !noundef !10 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.e, %i.c
  %i.g = getelementptr i8, ptr %i.d, i64 %i.f
  %i.h = tail call fastcc noundef i64 @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo19network_http_post_r(ptr noundef nonnull align 8 %i.g, i32 noundef %2), !noalias !4318
  ret i64 %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNSNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo29___thunk__network_dns_lookup_rINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtBa_7scanner7context11ScanContextENtNtBa_8compiler7RegexIdEE9call_once6vtableBa_(ptr nofree readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !alias.scope !4323, !nonnull !10, !align !17, !noundef !10 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 792
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 664
  %i.c = load i64, ptr %i.b, align 8, !range !52, !noalias !4324, !noundef !10 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.e, %i.c
  %i.g = getelementptr i8, ptr %i.d, i64 %i.f
  %i.h = tail call fastcc noundef i64 @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo20network_dns_lookup_r(ptr noundef nonnull align 8 %i.g, i32 noundef %2), !noalias !4324
  ret i64 %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNSNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo30___thunk__registry_key_access_rINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtBa_7scanner7context11ScanContextENtNtBa_8compiler7RegexIdEE9call_once6vtableBa_(ptr nofree readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !alias.scope !4329, !nonnull !10, !align !17, !noundef !10 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 792
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 664
  %i.c = load i64, ptr %i.b, align 8, !range !52, !noalias !4330, !noundef !10 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.e, %i.c
  %i.g = getelementptr i8, ptr %i.d, i64 %i.f
  %i.h = tail call fastcc noundef i64 @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo21registry_key_access_r(ptr noundef nonnull align 8 %i.g, i32 noundef %2), !noalias !4330
  ret i64 %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNSNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo31___thunk__network_http_request_rINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtBa_7scanner7context11ScanContextENtNtBa_8compiler7RegexIdEE9call_once6vtableBa_(ptr nofree readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !alias.scope !4335, !nonnull !10, !align !17, !noundef !10 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 792
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 664
  %i.c = load i64, ptr %i.b, align 8, !range !52, !noalias !4336, !noundef !10 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.e, %i.c
  %i.g = getelementptr i8, ptr %i.d, i64 %i.f
  %i.h = tail call fastcc noundef i64 @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo22network_http_request_r(ptr noundef nonnull align 8 %i.g, i32 noundef %2), !noalias !4336
  ret i64 %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNSNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo33___thunk__filesystem_file_access_rINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtBa_7scanner7context11ScanContextENtNtBa_8compiler7RegexIdEE9call_once6vtableBa_(ptr nofree readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !alias.scope !4341, !nonnull !10, !align !17, !noundef !10 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 792
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 664
  %i.c = load i64, ptr %i.b, align 8, !range !52, !noalias !4342, !noundef !10 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.e, %i.c
  %i.g = getelementptr i8, ptr %i.d, i64 %i.f
  %i.h = tail call fastcc noundef i64 @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo24filesystem_file_access_r(ptr noundef nonnull align 8 %i.g, i32 noundef %2), !noalias !4342
  ret i64 %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef i64 @_RNSNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo34___thunk__network_http_user_agent_rINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtBa_7scanner7context11ScanContextENtNtBa_8compiler7RegexIdEE9call_once6vtableBa_(ptr nofree readnone captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !alias.scope !4347, !nonnull !10, !align !17, !noundef !10 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 792
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 664
  %i.c = load i64, ptr %i.b, align 8, !range !52, !noalias !4348, !noundef !10 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.e, %i.c
  %i.g = getelementptr i8, ptr %i.d, i64 %i.f
  %i.h = tail call fastcc noundef i64 @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo25network_http_user_agent_r(ptr noundef nonnull align 8 %i.g, i32 noundef %2), !noalias !4348
  ret i64 %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtCscjxkGEBy879_6bitvec3vecNtB2_6BitVec6repeatCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [1 x i8], align 1                 ; 2 uses
  store i8 0, ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4353)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4353
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 16, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !4353
  %i.g = load i64, ptr %i.d, align 8, !range !19, !noalias !4353, !noundef !10
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMNtNtCscjxkGEBy879_6bitvec3vec3apiNtB4_6BitVec13with_capacityCs7gfv9tzbXmh_6yara_x.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8, !range !21, !noalias !4353, !noundef !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !4353
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #40, !noalias !4353
  unreachable

_RNvMNtNtCscjxkGEBy879_6bitvec3vec3apiNtB4_6BitVec13with_capacityCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noalias !4353, !nonnull !10, !noundef !10 ; 3 uses
  %i.o = load i64, ptr %i.i, align 8, !range !11, !noalias !4353, !noundef !10 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.o, 15
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4353
  store ptr %i.n, ptr %i.e, align 8, !alias.scope !4353
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 0, ptr %i.q, align 8, !alias.scope !4353
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.o, ptr %i.r, align 8, !alias.scope !4353
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4354)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1024, ptr %i.c, align 8, !noalias !4354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4354
  %i.s = icmp samesign ugt i64 %i.o, 288230376151711743
  br i1 %i.s, label %bb.c, label %_RNvMNtNtCscjxkGEBy879_6bitvec3vec3apiNtB4_6BitVec8capacityCs7gfv9tzbXmh_6yara_x.exit.i, !prof !14

bb.c:                                             ; preds = %_RNvMNtNtCscjxkGEBy879_6bitvec3vec3apiNtB4_6BitVec13with_capacityCs7gfv9tzbXmh_6yara_x.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #39
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

_RNvMNtNtCscjxkGEBy879_6bitvec3vec3apiNtB4_6BitVec8capacityCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RNvMNtNtCscjxkGEBy879_6bitvec3vec3apiNtB4_6BitVec13with_capacityCs7gfv9tzbXmh_6yara_x.exit
  %i.t = shl nuw i64 %i.o, 6
  %i.u = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.v = shl i64 %i.u, 3
  %i.w = and i64 %i.v, 56                         ; 2 uses
  %i.x = sub nuw i64 %i.t, %i.w                   ; 2 uses
  store i64 %i.x, ptr %i.b, align 8, !noalias !4354
  %.not.i = icmp ult i64 %i.x, 1024
  br i1 %.not.i, label %bb.d, label %bb.f, !prof !14

bb.d:                                             ; preds = %_RNvMNtNtCscjxkGEBy879_6bitvec3vec3apiNtB4_6BitVec8capacityCs7gfv9tzbXmh_6yara_x.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4354
  store ptr %i.c, ptr %i.a, align 8, !noalias !4354
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !4354
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.y, align 8, !noalias !4354
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !4354
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #39
          to label %.noexc1 unwind label %bb.e

.noexc1:                                          ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCscjxkGEBy879_6bitvec3vec6BitVecECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #43
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %_RNvMNtNtCscjxkGEBy879_6bitvec3vec3apiNtB4_6BitVec8capacityCs7gfv9tzbXmh_6yara_x.exit.i
  store i64 8192, ptr %i.q, align 8, !alias.scope !4354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aa = add nuw nsw i64 %i.w, 1080
  %i.ab = lshr i64 %i.aa, 6
  %i.ac = and i64 %i.u, -8
  %i.ad = getelementptr i8, ptr %i.n, i64 %i.ac
  %i.ae = sub i64 0, %i.u
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.ae
  invoke void @_RINvMNtCskKLDkoKarTP_4core5sliceSj9fill_withNCNvMNtCscjxkGEBy879_6bitvec3vecNtBL_6BitVec6repeat0ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 %i.af, i64 noundef %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.f)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.h:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.i:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.z
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE5clearB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !10
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !10, !noundef !10
  %i.h = load i64, ptr %i.g, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjuEE5drainINtNtNtCskKLDkoKarTP_4core3ops5range9RangeFromjEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !10, !noundef !10
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %._crit_edge, %bb.i
  ret void

bb.d:                                             ; preds = %.lr.ph, %_RNvMs0_NtCscjxkGEBy879_6bitvec5sliceNtB5_8BitSlice7replaceCs7gfv9tzbXmh_6yara_x.exit
  %i.q = phi ptr [ %i.j, %.lr.ph ], [ %i.bh, %_RNvMs0_NtCscjxkGEBy879_6bitvec5sliceNtB5_8BitSlice7replaceCs7gfv9tzbXmh_6yara_x.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.r, ptr %i.c, align 8
  %i.s = load i64, ptr %i.q, align 8, !noundef !10
  %i.t = sub i64 %i.s, %i.h                       ; 4 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.m, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.w = load i64, ptr %i.n, align 8, !noundef !10 ; 3 uses
  %i.x = lshr i64 %i.w, 3
  invoke void @_RINvMs4_NtCscjxkGEBy879_6bitvec5sliceNtB6_8BitSlice16assert_in_boundsINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.w, i64 noundef range(i64 0, -9223372036854775808) %i.t, i64 noundef 0, i64 noundef %i.x)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  %i.y = ptrtoint ptr %i.v to i64                 ; 3 uses
  %i.z = and i64 %i.y, -8
  %i.aa = getelementptr i8, ptr %i.v, i64 %i.z
  %i.ab = sub i64 0, %i.y
  %i.ac = getelementptr i8, ptr %i.aa, i64 %i.ab  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = shl i64 %i.y, 3
  %i.ae = and i64 %i.ad, 56
  %i.af = and i64 %i.w, 7
  %i.ag = or disjoint i64 %i.ae, %i.af
  %i.ah = add nuw i64 %i.ag, %i.t                 ; 2 uses
  %i.ai = ashr i64 %i.ah, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4363
  store i64 %i.ai, ptr %i.b, align 8, !noalias !4363
  %i.aj = invoke noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCNvMs8_B6_Bv_6offset0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
          to label %.noexc6 unwind label %bb.g

.noexc6:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4363
  %i.ak = invoke noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressINtB6_6FrozenNtB6_3MutEjE8with_ptrINtNtCskKLDkoKarTP_4core4cell4CelljENCINvMs8_B6_Bv_4castB1h_E0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
          to label %_RNvMs0_NtCscjxkGEBy879_6bitvec5sliceNtB5_8BitSlice7replaceCs7gfv9tzbXmh_6yara_x.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.o, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.am = load i64, ptr %i.p, align 8, !noundef !10 ; 3 uses
  %i.an = xor i64 %i.t, -1                        ; 2 uses
  %i.ao = lshr i64 %i.am, 3
  invoke void @_RINvMs4_NtCscjxkGEBy879_6bitvec5sliceNtB6_8BitSlice16assert_in_boundsINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef %i.am, i64 noundef range(i64 0, -9223372036854775808) %i.an, i64 noundef 0, i64 noundef %i.ao)
          to label %.noexc8 unwind label %bb.g

.noexc8:                                          ; preds = %bb.f
  %i.ap = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.aq = and i64 %i.ap, -8
  %i.ar = getelementptr i8, ptr %i.al, i64 %i.aq
  %i.as = sub i64 0, %i.ap
  %i.at = getelementptr i8, ptr %i.ar, i64 %i.as  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.au = shl i64 %i.ap, 3
  %i.av = and i64 %i.au, 56
  %i.aw = and i64 %i.am, 7
  %i.ax = or disjoint i64 %i.av, %i.aw
  %i.ay = add nuw i64 %i.ax, %i.an                ; 2 uses
  %i.az = ashr i64 %i.ay, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4364
  store i64 %i.az, ptr %i.a, align 8, !noalias !4364
  %i.ba = invoke noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCNvMs8_B6_Bv_6offset0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.at, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
          to label %.noexc9 unwind label %bb.g

.noexc9:                                          ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4364
  %i.bb = invoke noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressINtB6_6FrozenNtB6_3MutEjE8with_ptrINtNtCskKLDkoKarTP_4core4cell4CelljENCINvMs8_B6_Bv_4castB1h_E0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
          to label %_RNvMs0_NtCscjxkGEBy879_6bitvec5sliceNtB5_8BitSlice7replaceCs7gfv9tzbXmh_6yara_x.exit unwind label %bb.g

bb.g:                                             ; preds = %.noexc9, %.noexc8, %bb.f, %.noexc6, %.noexc, %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainTjuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainTjuEEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.h

_RNvMs0_NtCscjxkGEBy879_6bitvec5sliceNtB5_8BitSlice7replaceCs7gfv9tzbXmh_6yara_x.exit: ; preds = %.noexc9, %.noexc6
  %.sink19.in = phi i64 [ %i.ah, %.noexc6 ], [ %i.ay, %.noexc9 ]
  %.sink = phi ptr [ %i.ak, %.noexc6 ], [ %i.bb, %.noexc9 ] ; 2 uses
  %.sink19 = and i64 %.sink19.in, 63
  %i.bd = shl nuw i64 1, %.sink19
  %i.be = xor i64 %i.bd, -1
  %i.bf = load i64, ptr %.sink, align 8, !noalias !10, !noundef !10
  %i.bg = and i64 %i.bf, %i.be
  store i64 %i.bg, ptr %.sink, align 8, !noalias !10
  %i.bh = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.bi = load ptr, ptr %i.i, align 8, !nonnull !10, !noundef !10
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %._crit_edge, label %bb.d

bb.h:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec5drain5DrainTjuEEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.g
  resume { ptr, i32 } %i.bc

._crit_edge:                                      ; preds = %_RNvMs0_NtCscjxkGEBy879_6bitvec5sliceNtB5_8BitSlice7replaceCs7gfv9tzbXmh_6yara_x.exit, %bb.b
  call void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainTjuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !noundef !10
  %.not5 = icmp eq ptr %i.bm, null
  br i1 %.not5, label %bb.c, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  call void @_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTTjuEuEE5clearCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bl)
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !10
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %0, align 8, !range !11, !alias.scope !4413, !noundef !10
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjuEE8push_mutCs7gfv9tzbXmh_6yara_x.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjuEE8grow_oneCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #38
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjuEE8push_mutCs7gfv9tzbXmh_6yara_x.exit

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTjuEE8push_mutCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.b, %bb.c
  %i.n = load ptr, ptr %i.i, align 8, !alias.scope !4413, !nonnull !10, !noundef !10
  store i64 %1, ptr %i.n, align 8
  br label %_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE19insert_existing_keyB6_.exit22.sink.split4

bb.d:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.i, align 8, !nonnull !10, !noundef !10
  %i.p = load i64, ptr %i.o, align 8, !noundef !10 ; 2 uses
  %i.q = icmp eq i64 %i.p, %1
  br i1 %i.q, label %_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE19insert_existing_keyB6_.exit22, label %bb.e

end_hunk_0
begin_hunk_1_@_RNvMNtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB2_13PatternInRule9anchor_at:bb.a

_RNvMs_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB4_7Pattern9anchor_at.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  ret ptr %0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCscjxkGEBy879_6bitvec3vec3apiNtB4_6BitVec6resizeCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 1, -9223372036854775807) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !10 ; 3 uses
  %i.k = lshr i64 %i.j, 3                         ; 5 uses
  %i.l = icmp ugt i64 %1, %i.k
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp samesign ult i64 %1, %i.k
  br i1 %i.m, label %bb.q, label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.n = sub nuw nsw i64 %1, %i.k                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4460)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4460
  store i64 %1, ptr %i.h, align 8, !noalias !4460
  %i.o = icmp ult i64 %1, 2305843009213693952
  br i1 %i.o, label %_RNvMNtNtCscjxkGEBy879_6bitvec3vec3apiNtB4_6BitVec7reserveCs7gfv9tzbXmh_6yara_x.exit, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4460
  store ptr %i.h, ptr %i.g, align 8, !noalias !4460
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !4460
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr @12, ptr %i.p, align 8, !noalias !4460
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !4460
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #39, !noalias !4460
  unreachable

_RNvMNtNtCscjxkGEBy879_6bitvec3vec3apiNtB4_6BitVec7reserveCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4460
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4461)
  %i.q = load ptr, ptr %0, align 8, !alias.scope !4462, !nonnull !10, !noundef !10 ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 4 uses
  %i.s = shl i64 %i.r, 3
  %i.t = and i64 %i.s, 56
  %i.u = and i64 %i.j, 7                          ; 3 uses
  %i.v = add nuw nsw i64 %i.u, 63
  %i.w = add nuw nsw i64 %i.t, %i.v               ; 2 uses
  %i.x = add nuw nsw i64 %i.w, %i.k
  %i.y = lshr i64 %i.x, 6                         ; 2 uses
  %i.z = add nuw nsw i64 %i.w, %1
  %i.aa = lshr i64 %i.z, 6                        ; 2 uses
  %i.ab = sub nsw i64 %i.aa, %i.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4463)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4464
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.55.0.copyload.i.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !alias.scope !4464
  %i.ac = and i64 %i.r, -8
  %i.ad = getelementptr i8, ptr %i.q, i64 %i.ac
  %i.ae = sub i64 0, %i.r
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.ae  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  store i64 %.sroa.55.0.copyload.i.i.i, ptr %i.f, align 8, !noalias !4464
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.af, ptr %.sroa.47.0..sroa_idx.i.i.i, align 8, !noalias !4464
  %.sroa.58.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.y, ptr %.sroa.58.0..sroa_idx.i.i.i, align 8, !noalias !4464
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.ab), !noalias !4464
  call void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjE11resize_withNCNCINvMs0_NtCscjxkGEBy879_6bitvec3vecNtB15_6BitVec14do_reservationNvB2_7reserveE00ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.aa), !noalias !4464
  %i.ag = load ptr, ptr %.sroa.47.0..sroa_idx.i.i.i, align 8, !noalias !4464, !nonnull !10, !noundef !10
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = and i64 %i.ah, -8                       ; 2 uses
  %i.aj = and i64 %i.r, 7                         ; 2 uses
  %i.ak = or disjoint i64 %i.ai, %i.aj            ; 3 uses
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %i.am)
  store ptr %i.al, ptr %0, align 8, !alias.scope !4464
  %i.an = load i64, ptr %i.f, align 8, !range !11, !noalias !4464, !noundef !10 ; 3 uses
  store i64 %i.an, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !alias.scope !4464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4464
  call void @llvm.experimental.noalias.scope.decl(metadata !4465)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %1, ptr %i.e, align 8, !noalias !4465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4465
  %i.ao = icmp samesign ugt i64 %i.an, 288230376151711743
  br i1 %i.ao, label %bb.e, label %_RNvMNtNtCscjxkGEBy879_6bitvec3vec3apiNtB4_6BitVec8capacityCs7gfv9tzbXmh_6yara_x.exit.i, !prof !14

bb.e:                                             ; preds = %_RNvMNtNtCscjxkGEBy879_6bitvec3vec3apiNtB4_6BitVec7reserveCs7gfv9tzbXmh_6yara_x.exit
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 28, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #39, !noalias !4466
  unreachable

_RNvMNtNtCscjxkGEBy879_6bitvec3vec3apiNtB4_6BitVec8capacityCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RNvMNtNtCscjxkGEBy879_6bitvec3vec3apiNtB4_6BitVec7reserveCs7gfv9tzbXmh_6yara_x.exit
  %i.ap = shl nuw i64 %i.an, 6
  %i.aq = shl nuw nsw i64 %i.aj, 3
  %i.ar = or disjoint i64 %i.aq, %i.u             ; 2 uses
  %i.as = call noundef range(i64 0, -63) i64 @llvm.usub.sat.i64(i64 %i.ap, i64 %i.ar) ; 2 uses
  store i64 %i.as, ptr %i.d, align 8, !noalias !4465
  %.not.i = icmp ugt i64 %1, %i.as
  br i1 %.not.i, label %bb.f, label %_RNvMNtNtCscjxkGEBy879_6bitvec3vec3apiNtB4_6BitVec7set_lenCs7gfv9tzbXmh_6yara_x.exit, !prof !14

bb.f:                                             ; preds = %_RNvMNtNtCscjxkGEBy879_6bitvec3vec3apiNtB4_6BitVec8capacityCs7gfv9tzbXmh_6yara_x.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4465
  store ptr %i.e, ptr %i.c, align 8, !noalias !4465
  %.sroa.42.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i3, align 8, !noalias !4465
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.at, align 8, !noalias !4465
  %.sroa.46.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i4, align 8, !noalias !4465
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #39, !noalias !4465
  unreachable

_RNvMNtNtCscjxkGEBy879_6bitvec3vec3apiNtB4_6BitVec7set_lenCs7gfv9tzbXmh_6yara_x.exit: ; preds = %_RNvMNtNtCscjxkGEBy879_6bitvec3vec3apiNtB4_6BitVec8capacityCs7gfv9tzbXmh_6yara_x.exit.i
  %i.au = shl nuw i64 %1, 3
  %i.av = or disjoint i64 %i.u, %i.au
  store i64 %i.av, ptr %i.i, align 8, !alias.scope !4465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aw = getelementptr i8, ptr %i.al, i64 %i.ai
  %i.ax = sub i64 0, %i.ak
  %i.ay = getelementptr i8, ptr %i.aw, i64 %i.ax  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ay) ]
  %i.az = add nuw nsw i64 %i.ar, %i.k             ; 3 uses
  %i.ba = lshr i64 %i.az, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4467
  store i64 %i.ba, ptr %i.b, align 8, !noalias !4467
  %i.bb = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCNvMs8_B6_Bv_6offset0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4467
  %i.bc = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bd = and i64 %i.bc, -8
  %i.be = lshr i64 %i.az, 3
  %i.bf = and i64 %i.be, 7
  %i.bg = and i64 %i.az, 7                        ; 2 uses
  %i.bh = sub i64 %i.bf, %i.bc
  %i.bi = getelementptr i8, ptr %i.bb, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.bd  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4468
  %i.bk = ptrtoint ptr %i.bj to i64               ; 3 uses
  %i.bl = shl i64 %i.bk, 3
  %i.bm = and i64 %i.bl, 56                       ; 2 uses
  %i.bn = or disjoint i64 %i.bm, %i.bg            ; 3 uses
  %i.bo = add nuw nsw i64 %i.n, 63
  %i.bp = add nuw nsw i64 %i.bo, %i.bg
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  %i.br = lshr i64 %i.bq, 6                       ; 3 uses
  %i.bs = trunc nuw nsw i64 %i.bn to i8           ; 2 uses
  %i.bt = sub nuw nsw i64 64, %i.bn               ; 2 uses
  %.not.i.i.i.i = icmp samesign ugt i64 %i.n, %i.bt
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvMNtNtCscjxkGEBy879_6bitvec3vec3apiNtB4_6BitVec7set_lenCs7gfv9tzbXmh_6yara_x.exit
  %i.bu = sub nuw nsw i64 %i.n, %i.bt
  %i.bv = trunc i64 %i.bu to i8
  %i.bw = and i8 %i.bv, 63                        ; 2 uses
  %i.bx = icmp eq i8 %i.bw, 0
  %i.by = select i1 %i.bx, i8 64, i8 %i.bw
  br label %_RNvMs1_NtNtCscjxkGEBy879_6bitvec3ptr4spanINtB5_7BitSpanNtNtCs3f5EAvbiDJf_3wyz4comu3MutE4tailCs7gfv9tzbXmh_6yara_x.exit.i.i

bb.h:                                             ; preds = %_RNvMNtNtCscjxkGEBy879_6bitvec3vec3apiNtB4_6BitVec7set_lenCs7gfv9tzbXmh_6yara_x.exit
  %i.bz = trunc nuw nsw i64 %i.n to i8
  %i.ca = add nuw nsw i8 %i.bs, %i.bz
  br label %_RNvMs1_NtNtCscjxkGEBy879_6bitvec3ptr4spanINtB5_7BitSpanNtNtCs3f5EAvbiDJf_3wyz4comu3MutE4tailCs7gfv9tzbXmh_6yara_x.exit.i.i

_RNvMs1_NtNtCscjxkGEBy879_6bitvec3ptr4spanINtB5_7BitSpanNtNtCs3f5EAvbiDJf_3wyz4comu3MutE4tailCs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %bb.h, %bb.g
  %.sroa.4.0.i.i.i.i = phi i8 [ %i.by, %bb.g ], [ %i.ca, %bb.h ] ; 2 uses
  %i.cb = icmp eq i64 %i.br, 0
  br i1 %i.cb, label %_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE3newCs7gfv9tzbXmh_6yara_x.exit.i, label %bb.i

bb.i:                                             ; preds = %_RNvMs1_NtNtCscjxkGEBy879_6bitvec3ptr4spanINtB5_7BitSpanNtNtCs3f5EAvbiDJf_3wyz4comu3MutE4tailCs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.cc = icmp eq i64 %i.bn, 0
  %i.cd = icmp eq i8 %.sroa.4.0.i.i.i.i, 64       ; 2 uses
  br i1 %i.cc, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.cd, label %_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE3newCs7gfv9tzbXmh_6yara_x.exit.i, label %bb.l

bb.k:                                             ; preds = %bb.i
  %spec.select.i.i = select i1 %i.cd, ptr @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE8spanningCs7gfv9tzbXmh_6yara_x, ptr @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE12partial_tailCs7gfv9tzbXmh_6yara_x
  br label %_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE3newCs7gfv9tzbXmh_6yara_x.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ce = icmp eq i64 %i.br, 1
  %_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE5minorCs7gfv9tzbXmh_6yara_x._RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE5majorCs7gfv9tzbXmh_6yara_x.i.i = select i1 %i.ce, ptr @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE5minorCs7gfv9tzbXmh_6yara_x, ptr @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE5majorCs7gfv9tzbXmh_6yara_x
  br label %_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE3newCs7gfv9tzbXmh_6yara_x.exit.i

_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE3newCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.l, %bb.k, %bb.j, %_RNvMs1_NtNtCscjxkGEBy879_6bitvec3ptr4spanINtB5_7BitSpanNtNtCs3f5EAvbiDJf_3wyz4comu3MutE4tailCs7gfv9tzbXmh_6yara_x.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE5emptyCs7gfv9tzbXmh_6yara_x, %_RNvMs1_NtNtCscjxkGEBy879_6bitvec3ptr4spanINtB5_7BitSpanNtNtCs3f5EAvbiDJf_3wyz4comu3MutE4tailCs7gfv9tzbXmh_6yara_x.exit.i.i ], [ @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE12partial_headCs7gfv9tzbXmh_6yara_x, %bb.j ], [ %_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE5minorCs7gfv9tzbXmh_6yara_x._RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE5majorCs7gfv9tzbXmh_6yara_x.i.i, %bb.l ], [ %spec.select.i.i, %bb.k ]
  %i.cf = and i64 %i.bk, -8
  %i.cg = getelementptr i8, ptr %i.bj, i64 %i.cf
  %i.ch = sub i64 0, %i.bk
  %i.ci = getelementptr i8, ptr %i.cg, i64 %i.ch
  call void %.sroa.0.0.i.i(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull %i.ci, i64 noundef %i.br, i8 noundef %i.bs, i8 noundef %.sroa.4.0.i.i.i.i), !inline_history !4457
  %i.cj = load ptr, ptr %i.a, align 8, !noalias !4468, !noundef !10 ; 2 uses
  %.not.i5 = icmp eq ptr %i.cj, null
  br i1 %.not.i5, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE3newCs7gfv9tzbXmh_6yara_x.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.04.0.copyload.i = load ptr, ptr %i.ck, align 8, !noalias !4468 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !4468, !noundef !10 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.07.0.copyload.i = load ptr, ptr %i.cn, align 8, !noalias !4468 ; 2 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.59.sroa.0.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !4468
  %.not15.i = icmp eq ptr %.sroa.04.0.copyload.i, null
  br i1 %.not15.i, label %bb.p, label %bb.o

bb.n:                                             ; preds = %_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE3newCs7gfv9tzbXmh_6yara_x.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.co, align 8, !noalias !4468, !nonnull !10, !noundef !10
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4468
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %._crit_edge.i, %bb.n
  %.sroa.59.sroa.0.0.copyload.sink.i = phi i64 [ %.sroa.4.0.copyload.i, %bb.n ], [ %.sroa.59.sroa.0.0.copyload.i, %._crit_edge.i ]
  %.sroa.07.0.copyload.sink34.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.n ], [ %.sroa.07.0.copyload.i, %._crit_edge.i ] ; 2 uses
  %i.cp = xor i64 %.sroa.59.sroa.0.0.copyload.sink.i, -1
  %i.cq = load i64, ptr %.sroa.07.0.copyload.sink34.i, align 8, !noundef !10
  %i.cr = and i64 %i.cq, %i.cp
  store i64 %i.cr, ptr %.sroa.07.0.copyload.sink34.i, align 8
  br label %_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit

bb.o:                                             ; preds = %bb.m
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.sroa.0.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4468
  %i.cs = xor i64 %.sroa.5.sroa.0.0.copyload.i, -1
  %i.ct = load i64, ptr %.sroa.04.0.copyload.i, align 8, !noundef !10
  %i.cu = and i64 %i.ct, %i.cs
  store i64 %i.cu, ptr %.sroa.04.0.copyload.i, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.cv = icmp eq i64 %i.cm, 0
  br i1 %i.cv, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.p
  %.idx.i = shl i64 %i.cm, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cj, i8 0, i64 %.idx.i, i1 false), !alias.scope !4469
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.p
  %.not16.i = icmp eq ptr %.sroa.07.0.copyload.i, null
  br i1 %.not16.i, label %_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit, label %.sink.split.i

_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit: ; preds = %.sink.split.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4468
  br label %bb.r

bb.q:                                             ; preds = %bb.b
  %i.cw = and i64 %i.j, 7
  %i.cx = shl nuw i64 %1, 3
  %i.cy = or disjoint i64 %i.cw, %i.cx
  store i64 %i.cy, ptr %i.i, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.b, %_RNvMNtNtCscjxkGEBy879_6bitvec5slice3apiNtB4_8BitSlice4fillCs7gfv9tzbXmh_6yara_x.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtCs6i8zKcEiGNL_14regex_automata4meta5regexNtB5_5Regex11search_half(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(24) %0, ptr nofree readonly captures(none) %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 154
  %i.f = load i8, ptr %i.e, align 2, !range !33, !noundef !10
  %cond = icmp eq i8 %i.f, 2
  br i1 %cond, label %_RNvMs4_NtNtCs6i8zKcEiGNL_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4477)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !4477, !noalias !4478, !noundef !10 ; 2 uses
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !noalias !4479, !nonnull !10, !noundef !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  %i.l = load i32, ptr %i.k, align 4, !noalias !4479, !noundef !10
  %i.m = and i32 %i.l, 1
  %.not6.i = icmp eq i32 %i.m, 0
  br i1 %.not6.i, label %bb.d, label %_RNvMs4_NtNtCs6i8zKcEiGNL_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !4477, !noalias !4478, !noundef !10 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !4477, !noalias !4478, !noundef !10
  %i.r = icmp ult i64 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.t = load ptr, ptr %i.s, align 8, !noalias !4479 ; 7 uses
  br i1 %i.r, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.v = load i32, ptr %i.u, align 8, !noalias !4479, !noundef !10
  %i.w = and i32 %i.v, 2
  %.not7.i = icmp eq i32 %i.w, 0
  br i1 %.not7.i, label %._crit_edge, label %_RNvMs4_NtNtCs6i8zKcEiGNL_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13

._crit_edge:                                      ; preds = %bb.d, %bb.e
  %i.x = load i64, ptr %i.t, align 8, !range !19, !noalias !4479, !noundef !10
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.f, label %_RNvMs4_NtNtCs6i8zKcEiGNL_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread

bb.f:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noalias !4479
  %i.ab = tail call i64 @llvm.usub.sat.i64(i64 %i.o, i64 %i.h) ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  br i1 %i.ac, label %_RNvMs4_NtNtCs6i8zKcEiGNL_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load i32, ptr %1, align 8, !range !27, !alias.scope !4477, !noalias !4478, !noundef !10
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 60
  %i.ag = load i32, ptr %i.af, align 4, !noalias !4479, !noundef !10
  %i.ah = and i32 %i.ag, 1
  %.not8.i = icmp eq i32 %i.ah, 0
  br i1 %.not8.i, label %_RNvMs4_NtNtCs6i8zKcEiGNL_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.aj = load i32, ptr %i.ai, align 8, !noalias !4479, !noundef !10
  %i.ak = and i32 %i.aj, 2
  %.not9.i = icmp eq i32 %i.ak, 0
  br i1 %.not9.i, label %_RNvMs4_NtNtCs6i8zKcEiGNL_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !19, !noalias !4479, !noundef !10
  %i.an = trunc nuw i64 %i.am to i1
  br i1 %i.an, label %_RNvMs4_NtNtCs6i8zKcEiGNL_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit, label %_RNvMs4_NtNtCs6i8zKcEiGNL_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread

_RNvMs4_NtNtCs6i8zKcEiGNL_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit: ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !4479
  %i.aq = icmp ugt i64 %i.ab, %i.ap
  br i1 %i.aq, label %_RNvMs4_NtNtCs6i8zKcEiGNL_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13, label %_RNvMs4_NtNtCs6i8zKcEiGNL_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread

_RNvMs4_NtNtCs6i8zKcEiGNL_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13: ; preds = %bb.f, %bb.c, %bb.e, %bb.a, %_RNvMs4_NtNtCs6i8zKcEiGNL_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit
  store i64 0, ptr %0, align 8
  br label %_RNvMs4_NtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5innerINtB5_9PoolGuardNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB1b_NtNtNtB2i_5panic11unwind_safe13RefUnwindSafeNtNtB2i_6marker4SendNtB3P_4SyncNtB37_10UnwindSafeEL_EE7put_impCs7gfv9tzbXmh_6yara_x.exit

_RNvMs4_NtNtCs6i8zKcEiGNL_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread: ; preds = %bb.i, %bb.h, %bb.j, %._crit_edge, %_RNvMs4_NtNtCs6i8zKcEiGNL_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ar = tail call noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5innerINtB18_4PoolNtNtNtB1e_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB2a_NtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtNtB3i_6marker4SendNtB4P_4SyncNtB47_10UnwindSafeEL_EE3get0jECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @222), !noalias !4480 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.8.val, i64 40 ; 2 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8, !noalias !4480 ; 2 uses
  %i.au = icmp eq i64 %i.ar, %i.at
  br i1 %i.au, label %bb.l, label %bb.k, !prof !20

bb.k:                                             ; preds = %_RNvMs4_NtNtCs6i8zKcEiGNL_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread
  call void @_RNvMs2_NtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE8get_slowCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %.8.val, i64 noundef %i.ar, i64 noundef %i.at)
  br label %_RNvMs2_NtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs7gfv9tzbXmh_6yara_x.exit

bb.l:                                             ; preds = %_RNvMs4_NtNtCs6i8zKcEiGNL_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread
  store atomic i64 1, ptr %i.as release, align 8, !noalias !4480
  %i.av = inttoptr i64 %i.ar to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.8.val, ptr %i.aw, align 8
  store i64 1, ptr %i.b, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.av, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 0, ptr %i.ay, align 8
  br label %_RNvMs2_NtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs7gfv9tzbXmh_6yara_x.exit

_RNvMs2_NtNtNtCs6i8zKcEiGNL_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE3getCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.k, %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !10, !noundef !10
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !10, !align !17, !noundef !10 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !range !32, !invariant.load !10
  %i.bf = add nsw i64 %i.be, -1
  %i.bg = and i64 %i.bf, -16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i64, ptr %i.b, align 8, !range !19, !noundef !10
  %i.bk = trunc nuw i64 %i.bj to i1               ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvMs4_CskIN1fSNyKrj_7tinyzipINtB5_7ArchiveRShE4openCs7gfv9tzbXmh_6yara_x:bb.a
  store i16 0, ptr %i.dc, align 2
  store ptr null, ptr %0, align 8
  br label %bb.ao

_RINvCskIN1fSNyKrj_7tinyzip32resolve_central_directory_offsetRShECs7gfv9tzbXmh_6yara_x.exit: ; preds = %.thread.i, %bb.af
  %i.dd = icmp ult i64 %i.ck, %.sroa.0111.0
  br i1 %i.dd, label %bb.ai, label %_RINvCskIN1fSNyKrj_7tinyzip32resolve_central_directory_offsetRShECs7gfv9tzbXmh_6yara_x.exit._RINvCskIN1fSNyKrj_7tinyzip32resolve_central_directory_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread182_crit_edge

_RINvCskIN1fSNyKrj_7tinyzip32resolve_central_directory_offsetRShECs7gfv9tzbXmh_6yara_x.exit._RINvCskIN1fSNyKrj_7tinyzip32resolve_central_directory_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread182_crit_edge: ; preds = %_RINvCskIN1fSNyKrj_7tinyzip32resolve_central_directory_offsetRShECs7gfv9tzbXmh_6yara_x.exit
  %.pre = add i64 %i.ck, %.sroa.0108.0
  br label %_RINvCskIN1fSNyKrj_7tinyzip32resolve_central_directory_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread182

_RINvCskIN1fSNyKrj_7tinyzip32resolve_central_directory_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread182: ; preds = %_RINvCskIN1fSNyKrj_7tinyzip32resolve_central_directory_offsetRShECs7gfv9tzbXmh_6yara_x.exit._RINvCskIN1fSNyKrj_7tinyzip32resolve_central_directory_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread182_crit_edge, %_RINvCskIN1fSNyKrj_7tinyzip20looks_like_signatureRShECs7gfv9tzbXmh_6yara_x.exit24.thread.i, %_RINvCskIN1fSNyKrj_7tinyzip20looks_like_signatureRShECs7gfv9tzbXmh_6yara_x.exit24.thread.thread.i
  %.pre-phi = phi i64 [ %.pre, %_RINvCskIN1fSNyKrj_7tinyzip32resolve_central_directory_offsetRShECs7gfv9tzbXmh_6yara_x.exit._RINvCskIN1fSNyKrj_7tinyzip32resolve_central_directory_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread182_crit_edge ], [ %i.bw, %_RINvCskIN1fSNyKrj_7tinyzip20looks_like_signatureRShECs7gfv9tzbXmh_6yara_x.exit24.thread.i ], [ %i.bw, %_RINvCskIN1fSNyKrj_7tinyzip20looks_like_signatureRShECs7gfv9tzbXmh_6yara_x.exit24.thread.thread.i ] ; 2 uses
  %.sroa.13138.0186 = phi i64 [ %i.ck, %_RINvCskIN1fSNyKrj_7tinyzip32resolve_central_directory_offsetRShECs7gfv9tzbXmh_6yara_x.exit._RINvCskIN1fSNyKrj_7tinyzip32resolve_central_directory_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread182_crit_edge ], [ %.sroa.0111.0, %_RINvCskIN1fSNyKrj_7tinyzip20looks_like_signatureRShECs7gfv9tzbXmh_6yara_x.exit24.thread.i ], [ %.sroa.0111.0, %_RINvCskIN1fSNyKrj_7tinyzip20looks_like_signatureRShECs7gfv9tzbXmh_6yara_x.exit24.thread.thread.i ] ; 2 uses
  %i.de = sub nuw i64 %.sroa.13138.0186, %.sroa.0111.0
  %i.df = icmp ult i64 %.pre-phi, %.sroa.13138.0186
  br i1 %i.df, label %bb.aj, label %_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit124, !prof !14

bb.ai:                                            ; preds = %_RINvCskIN1fSNyKrj_7tinyzip32resolve_central_directory_offsetRShECs7gfv9tzbXmh_6yara_x.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 4, ptr %i.dg, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ao

bb.aj:                                            ; preds = %_RINvCskIN1fSNyKrj_7tinyzip32resolve_central_directory_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread182
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 4, ptr %i.dh, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ao

_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit124: ; preds = %_RINvCskIN1fSNyKrj_7tinyzip32resolve_central_directory_offsetRShECs7gfv9tzbXmh_6yara_x.exit.thread182
  %i.di = icmp ugt i64 %.pre-phi, %i.ad
  %i.dj = add i64 %i.ad, 22
  %i.dk = icmp ugt i64 %i.dj, %2
  %or.cond10 = or i1 %i.dk, %i.di
  br i1 %or.cond10, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit124
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 4, ptr %i.dl, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ao

bb.al:                                            ; preds = %_RINvCskIN1fSNyKrj_7tinyzip3addNtB2_16SliceReaderErrorECs7gfv9tzbXmh_6yara_x.exit124
  %i.dm = or i64 %.sroa.0108.0, %.sroa.0106.0
  %i.dn = or i64 %i.dm, %.sroa.0111.0
  %or.cond7 = icmp ne i64 %i.dn, 0
  %i.do = icmp eq i64 %i.ad, 0
  %or.cond8 = or i1 %i.do, %or.cond7
  br i1 %or.cond8, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store ptr %1, ptr %0, align 8
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.486.0..sroa_idx, align 8
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.587.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.de, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0103.0, ptr %.sroa.788.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0111.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.989.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0106.0, ptr %.sroa.989.0..sroa_idx, align 8
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 4, ptr %i.dp, align 8
  store ptr null, ptr %0, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %_RINvCskIN1fSNyKrj_7tinyzip9find_eocdRShECs7gfv9tzbXmh_6yara_x.exit.thread, %bb.ab, %bb.ah, %bb.aj, %bb.ak, %bb.an, %bb.ai, %bb.ag, %bb.g, %bb.aa, %bb.y, %bb.am
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE12partial_headCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 34), (40, 48)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 noundef %3, i8 %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCNvMs8_B6_Bv_3add0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCINvMs8_B6_Bv_4castjE0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  %i.d = icmp eq i8 %3, 0
  br i1 %i.d, label %_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu3MutjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCskKLDkoKarTP_4core6option6OptionNtB1R_6BitEndEECs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub i8 0, %3
  %i.f = and i8 %i.e, 63
  %i.g = zext nneg i8 %i.f to i64
  %i.h = shl nsw i64 -1, %i.g
  %i.i = xor i64 %i.h, -1
  %i.j = and i8 %3, 63
  %i.k = zext nneg i8 %i.j to i64
  %i.l = shl i64 %i.i, %i.k
  br label %_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu3MutjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCskKLDkoKarTP_4core6option6OptionNtB1R_6BitEndEECs7gfv9tzbXmh_6yara_x.exit

_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu3MutjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCskKLDkoKarTP_4core6option6OptionNtB1R_6BitEndEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.l, %bb.b ], [ -1, %bb.a ]
  %i.m = add i64 %2, -1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.n, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.i.i, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %3, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 64, ptr %.sroa.64.0..sroa_idx, align 1
  store ptr %i.c, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.p, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE12partial_tailCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 58)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 %3, i8 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = add i64 %2, -1                           ; 2 uses
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCNvMs8_B6_Bv_3add0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  %i.d = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCINvMs8_B6_Bv_4castjE0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  %i.e = icmp eq i8 %4, 64
  %i.f = and i8 %4, 63
  %i.g = zext nneg i8 %i.f to i64
  %i.h = shl nsw i64 -1, %i.g
  %i.i = xor i64 %i.h, -1
  %.sroa.0.0.i.i = select i1 %i.e, i64 -1, i64 %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.j, align 8
  store ptr %i.d, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.c, ptr %i.l, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.i.i, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %4, ptr %.sroa.64.0..sroa_idx, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE3newCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = shl i64 %i.a, 3
  %i.c = and i64 %i.b, 56                         ; 2 uses
  %i.d = and i64 %2, 7                            ; 2 uses
  %i.e = or disjoint i64 %i.c, %i.d               ; 3 uses
  %i.f = lshr i64 %2, 3                           ; 5 uses
  %i.g = add nuw nsw i64 %i.d, 63
  %i.h = add nuw nsw i64 %i.g, %i.f
  %i.i = add nuw nsw i64 %i.h, %i.c
  %i.j = lshr i64 %i.i, 6                         ; 3 uses
  %i.k = trunc nuw nsw i64 %i.e to i8             ; 3 uses
  %i.l = icmp eq i64 %i.f, 0
  br i1 %i.l, label %_RNvMs1_NtNtCscjxkGEBy879_6bitvec3ptr4spanINtB5_7BitSpanNtNtCs3f5EAvbiDJf_3wyz4comu3MutE4tailCs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sub nuw nsw i64 64, %i.e                 ; 2 uses
  %.not.i.i = icmp samesign ugt i64 %i.f, %i.m
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = sub nuw nsw i64 %i.f, %i.m
  %i.o = trunc i64 %i.n to i8
  %i.p = and i8 %i.o, 63                          ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  %i.r = select i1 %i.q, i8 64, i8 %i.p
  br label %_RNvMs1_NtNtCscjxkGEBy879_6bitvec3ptr4spanINtB5_7BitSpanNtNtCs3f5EAvbiDJf_3wyz4comu3MutE4tailCs7gfv9tzbXmh_6yara_x.exit

bb.d:                                             ; preds = %bb.b
  %i.s = trunc nuw nsw i64 %i.f to i8
  %i.t = add nuw nsw i8 %i.k, %i.s
  br label %_RNvMs1_NtNtCscjxkGEBy879_6bitvec3ptr4spanINtB5_7BitSpanNtNtCs3f5EAvbiDJf_3wyz4comu3MutE4tailCs7gfv9tzbXmh_6yara_x.exit

_RNvMs1_NtNtCscjxkGEBy879_6bitvec3ptr4spanINtB5_7BitSpanNtNtCs3f5EAvbiDJf_3wyz4comu3MutE4tailCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.4.0.i.i = phi i8 [ %i.r, %bb.c ], [ %i.t, %bb.d ], [ %i.k, %bb.a ] ; 2 uses
  %i.u = icmp eq i64 %i.j, 0
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMs1_NtNtCscjxkGEBy879_6bitvec3ptr4spanINtB5_7BitSpanNtNtCs3f5EAvbiDJf_3wyz4comu3MutE4tailCs7gfv9tzbXmh_6yara_x.exit
  %i.v = icmp eq i64 %i.e, 0
  %i.w = icmp eq i8 %.sroa.4.0.i.i, 64            ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.i, %_RNvMs1_NtNtCscjxkGEBy879_6bitvec3ptr4spanINtB5_7BitSpanNtNtCs3f5EAvbiDJf_3wyz4comu3MutE4tailCs7gfv9tzbXmh_6yara_x.exit
  %.sroa.0.0 = phi ptr [ @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE5emptyCs7gfv9tzbXmh_6yara_x, %_RNvMs1_NtNtCscjxkGEBy879_6bitvec3ptr4spanINtB5_7BitSpanNtNtCs3f5EAvbiDJf_3wyz4comu3MutE4tailCs7gfv9tzbXmh_6yara_x.exit ], [ @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE12partial_headCs7gfv9tzbXmh_6yara_x, %bb.g ], [ %_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE5minorCs7gfv9tzbXmh_6yara_x._RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE5majorCs7gfv9tzbXmh_6yara_x, %bb.i ], [ %spec.select, %bb.h ]
  %i.x = and i64 %i.a, -8
  %i.y = getelementptr i8, ptr %1, i64 %i.x
  %i.z = sub i64 0, %i.a
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.z
  tail call void %.sroa.0.0(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noundef nonnull %i.aa, i64 noundef %i.j, i8 noundef %i.k, i8 noundef %.sroa.4.0.i.i)
  ret void

bb.g:                                             ; preds = %bb.e
  br i1 %i.w, label %bb.f, label %bb.i

bb.h:                                             ; preds = %bb.e
  %spec.select = select i1 %i.w, ptr @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE8spanningCs7gfv9tzbXmh_6yara_x, ptr @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE12partial_tailCs7gfv9tzbXmh_6yara_x
  br label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.ab = icmp eq i64 %i.j, 1
  %_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE5minorCs7gfv9tzbXmh_6yara_x._RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE5majorCs7gfv9tzbXmh_6yara_x = select i1 %i.ab, ptr @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE5minorCs7gfv9tzbXmh_6yara_x, ptr @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE5majorCs7gfv9tzbXmh_6yara_x
  br label %bb.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE5emptyCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 48)) %0, ptr nofree nonnull readnone captures(none) %1, i64 %2, i8 %3, i8 %4) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.a, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE5majorCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 34), (40, 58)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 noundef %3, i8 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = add i64 %2, -1
  store i64 %i.c, ptr %i.b, align 8
  %i.d = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCNvMs8_B6_Bv_3add0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.e = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCNvMs8_B6_Bv_3add0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCINvMs8_B6_Bv_4castjE0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  %i.g = icmp eq i8 %3, 0
  br i1 %i.g, label %_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu3MutjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCskKLDkoKarTP_4core6option6OptionNtB1R_6BitEndEECs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sub i8 0, %3
  %i.i = and i8 %i.h, 63
  %i.j = zext nneg i8 %i.i to i64
  %i.k = shl nsw i64 -1, %i.j
  %i.l = xor i64 %i.k, -1
  %i.m = and i8 %3, 63
  %i.n = zext nneg i8 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  br label %_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu3MutjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCskKLDkoKarTP_4core6option6OptionNtB1R_6BitEndEECs7gfv9tzbXmh_6yara_x.exit

_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu3MutjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCskKLDkoKarTP_4core6option6OptionNtB1R_6BitEndEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.b ], [ -1, %bb.a ]
  %i.p = add i64 %2, -2
  %i.q = icmp eq i8 %4, 64
  %i.r = and i8 %4, 63
  %i.s = zext nneg i8 %i.r to i64
  %i.t = shl nsw i64 -1, %i.s
  %i.u = xor i64 %i.t, -1
  %.sroa.0.0.i.i1 = select i1 %i.q, i64 -1, i64 %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.v, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.i.i, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %3, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 64, ptr %.sroa.65.0..sroa_idx, align 1
  store ptr %i.f, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.d, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.i.i1, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %4, ptr %.sroa.615.0..sroa_idx, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE5minorCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 26)) %0, ptr noundef nonnull %1, i64 %2, i8 noundef %3, i8 noundef %4) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = sub i8 %4, %3                            ; 2 uses
  %i.b = icmp eq i8 %i.a, 64
  br i1 %i.b, label %_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu3MutjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxNtB1R_6BitEndECs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %i.a, 63
  %i.d = zext nneg i8 %i.c to i64
  %i.e = shl nsw i64 -1, %i.d
  %i.f = xor i64 %i.e, -1
  %i.g = and i8 %3, 63
  %i.h = zext nneg i8 %i.g to i64
  %i.i = shl i64 %i.f, %i.h
  br label %_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu3MutjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxNtB1R_6BitEndECs7gfv9tzbXmh_6yara_x.exit

_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu3MutjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxNtB1R_6BitEndECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.b ], [ -1, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %4, ptr %.sroa.6.0..sroa_idx, align 1
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MutE8spanningCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 48)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 %3, i8 %4) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MutjE8with_ptrjNCINvMs8_B6_Bv_4castjE0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8
  store ptr %i.a, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MuthE12partial_headCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 27), (32, 40)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 noundef %3, i8 %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MuthE8with_ptrhNCNvMs8_B6_Bv_3add0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MuthE8with_ptrhNCINvMs8_B6_Bv_4casthE0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  %i.d = icmp eq i8 %3, 0
  br i1 %i.d, label %_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu3MuthNtNtB8_5order4Lsb0E3newINtNtB8_5index6BitIdxhEINtNtCskKLDkoKarTP_4core6option6OptionINtB1S_6BitEndhEEECs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub i8 0, %3
  %i.f = and i8 %i.e, 7
  %i.g = shl nsw i8 -1, %i.f
  %i.h = xor i8 %i.g, -1
  %i.i = and i8 %3, 7
  %i.j = shl i8 %i.h, %i.i
  br label %_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu3MuthNtNtB8_5order4Lsb0E3newINtNtB8_5index6BitIdxhEINtNtCskKLDkoKarTP_4core6option6OptionINtB1S_6BitEndhEEECs7gfv9tzbXmh_6yara_x.exit

_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu3MuthNtNtB8_5order4Lsb0E3newINtNtB8_5index6BitIdxhEINtNtCskKLDkoKarTP_4core6option6OptionINtB1S_6BitEndhEEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i8 [ %i.j, %bb.b ], [ -1, %bb.a ]
  %i.k = add i64 %2, -1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.l, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.0.0.i.i, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %3, ptr %.sroa.53.0..sroa_idx, align 1
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 8, ptr %.sroa.64.0..sroa_idx, align 2
  store ptr %i.c, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.n, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu3MuthE12partial_tailCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 24), (32, 43)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 %3, i8 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = add i64 %2, -1                           ; 2 uses
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MuthE8with_ptrhNCNvMs8_B6_Bv_3add0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  %i.d = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MuthE8with_ptrhNCINvMs8_B6_Bv_4casthE0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  %i.e = icmp eq i8 %4, 8
  %i.f = and i8 %4, 7
  %i.g = shl nsw i8 -1, %i.f
  %i.h = xor i8 %i.g, -1
  %.sroa.0.0.i.i = select i1 %i.e, i8 -1, i8 %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.i, align 8
  store ptr %i.d, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.k, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sroa.0.0.i.i, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %.sroa.53.0..sroa_idx, align 1
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %4, ptr %.sroa.64.0..sroa_idx, align 2
end_hunk_2
begin_hunk_3_@_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu5ConsthNtNtB7_5order4Msb0E5majorCs7gfv9tzbXmh_6yara_x:bb.a
  %i.k = xor i8 %i.j, -1
  %i.l = and i8 %3, 7
  %i.m = lshr i8 %i.k, %i.l
  br label %_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu5ConsthNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxhEINtNtCskKLDkoKarTP_4core6option6OptionINtB1U_6BitEndhEEECs7gfv9tzbXmh_6yara_x.exit

_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu5ConsthNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxhEINtNtCskKLDkoKarTP_4core6option6OptionINtB1U_6BitEndhEEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i8 [ %i.m, %bb.b ], [ -1, %bb.a ]
  %i.n = add i64 %2, -2
  %i.o = icmp eq i8 %4, 8
  %i.p = and i8 %4, 7
  %i.q = lshr i8 -1, %i.p
  %i.r = xor i8 %i.q, -1
  %.sroa.0.0.i.i1 = select i1 %i.o, i8 -1, i8 %i.r
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.s, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.0.0.i.i, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %3, ptr %.sroa.54.0..sroa_idx, align 1
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 8, ptr %.sroa.65.0..sroa_idx, align 2
  store ptr %i.f, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %i.u, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sroa.0.0.i.i1, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %.sroa.514.0..sroa_idx, align 1
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %4, ptr %.sroa.615.0..sroa_idx, align 2
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu5ConsthNtNtB7_5order4Msb0E5minorCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 19)) %0, ptr noundef nonnull %1, i64 %2, i8 noundef %3, i8 noundef %4) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = sub i8 %4, %3                            ; 2 uses
  %i.b = icmp eq i8 %i.a, 8
  br i1 %i.b, label %_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu5ConsthNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxhEINtB1U_6BitEndhEECs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %i.a, 7
  %i.d = lshr i8 -1, %i.c
  %i.e = xor i8 %i.d, -1
  %i.f = and i8 %3, 7
  %i.g = lshr i8 %i.e, %i.f
  br label %_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu5ConsthNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxhEINtB1U_6BitEndhEECs7gfv9tzbXmh_6yara_x.exit

_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu5ConsthNtNtB8_5order4Msb0E3newINtNtB8_5index6BitIdxhEINtB1U_6BitEndhEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i8 [ %i.g, %bb.b ], [ -1, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.0.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %3, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %4, ptr %.sroa.6.0..sroa_idx, align 2
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainINtB5_6DomainNtNtCs3f5EAvbiDJf_3wyz4comu5ConsthNtNtB7_5order4Msb0E8spanningCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 24), (32, 40)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 %3, i8 %4) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_5ConsthE8with_ptrhNCINvMs8_B6_Bv_4casthE0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8
  store ptr %i.a, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainNtB5_6Domain12partial_headCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 34), (40, 48)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 noundef %3, i8 %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCNvMs8_B6_Bv_3add0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCINvMs8_B6_Bv_4castjE0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  %i.d = icmp eq i8 %3, 0
  br i1 %i.d, label %_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu5ConstjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCskKLDkoKarTP_4core6option6OptionNtB1T_6BitEndEECs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub i8 0, %3
  %i.f = and i8 %i.e, 63
  %i.g = zext nneg i8 %i.f to i64
  %i.h = shl nsw i64 -1, %i.g
  %i.i = xor i64 %i.h, -1
  %i.j = and i8 %3, 63
  %i.k = zext nneg i8 %i.j to i64
  %i.l = shl i64 %i.i, %i.k
  br label %_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu5ConstjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCskKLDkoKarTP_4core6option6OptionNtB1T_6BitEndEECs7gfv9tzbXmh_6yara_x.exit

_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu5ConstjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCskKLDkoKarTP_4core6option6OptionNtB1T_6BitEndEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.l, %bb.b ], [ -1, %bb.a ]
  %i.m = add i64 %2, -1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.n, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.i.i, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %3, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 64, ptr %.sroa.64.0..sroa_idx, align 1
  store ptr %i.c, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.p, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainNtB5_6Domain12partial_tailCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 58)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 %3, i8 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = add i64 %2, -1                           ; 2 uses
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCNvMs8_B6_Bv_3add0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  %i.d = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCINvMs8_B6_Bv_4castjE0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  %i.e = icmp eq i8 %4, 64
  %i.f = and i8 %4, 63
  %i.g = zext nneg i8 %i.f to i64
  %i.h = shl nsw i64 -1, %i.g
  %i.i = xor i64 %i.h, -1
  %.sroa.0.0.i.i = select i1 %i.e, i64 -1, i64 %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.j, align 8
  store ptr %i.d, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.c, ptr %i.l, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.i.i, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %4, ptr %.sroa.64.0..sroa_idx, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainNtB5_6Domain3newCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = shl i64 %i.a, 3
  %i.c = and i64 %i.b, 56                         ; 2 uses
  %i.d = and i64 %2, 7                            ; 2 uses
  %i.e = or disjoint i64 %i.c, %i.d               ; 3 uses
  %i.f = lshr i64 %2, 3                           ; 5 uses
  %i.g = add nuw nsw i64 %i.d, 63
  %i.h = add nuw nsw i64 %i.g, %i.f
  %i.i = add nuw nsw i64 %i.h, %i.c
  %i.j = lshr i64 %i.i, 6                         ; 3 uses
  %i.k = trunc nuw nsw i64 %i.e to i8             ; 3 uses
  %i.l = icmp eq i64 %i.f, 0
  br i1 %i.l, label %_RNvMs1_NtNtCscjxkGEBy879_6bitvec3ptr4spanNtB5_7BitSpan4tailCs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sub nuw nsw i64 64, %i.e                 ; 2 uses
  %.not.i.i = icmp samesign ugt i64 %i.f, %i.m
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = sub nuw nsw i64 %i.f, %i.m
  %i.o = trunc i64 %i.n to i8
  %i.p = and i8 %i.o, 63                          ; 2 uses
  %i.q = icmp eq i8 %i.p, 0
  %i.r = select i1 %i.q, i8 64, i8 %i.p
  br label %_RNvMs1_NtNtCscjxkGEBy879_6bitvec3ptr4spanNtB5_7BitSpan4tailCs7gfv9tzbXmh_6yara_x.exit

bb.d:                                             ; preds = %bb.b
  %i.s = trunc nuw nsw i64 %i.f to i8
  %i.t = add nuw nsw i8 %i.k, %i.s
  br label %_RNvMs1_NtNtCscjxkGEBy879_6bitvec3ptr4spanNtB5_7BitSpan4tailCs7gfv9tzbXmh_6yara_x.exit

_RNvMs1_NtNtCscjxkGEBy879_6bitvec3ptr4spanNtB5_7BitSpan4tailCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.4.0.i.i = phi i8 [ %i.r, %bb.c ], [ %i.t, %bb.d ], [ %i.k, %bb.a ] ; 2 uses
  %i.u = icmp eq i64 %i.j, 0
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMs1_NtNtCscjxkGEBy879_6bitvec3ptr4spanNtB5_7BitSpan4tailCs7gfv9tzbXmh_6yara_x.exit
  %i.v = icmp eq i64 %i.e, 0
  %i.w = icmp eq i8 %.sroa.4.0.i.i, 64            ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.i, %_RNvMs1_NtNtCscjxkGEBy879_6bitvec3ptr4spanNtB5_7BitSpan4tailCs7gfv9tzbXmh_6yara_x.exit
  %.sroa.0.0 = phi ptr [ @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainNtB5_6Domain5emptyCs7gfv9tzbXmh_6yara_x, %_RNvMs1_NtNtCscjxkGEBy879_6bitvec3ptr4spanNtB5_7BitSpan4tailCs7gfv9tzbXmh_6yara_x.exit ], [ @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainNtB5_6Domain12partial_headCs7gfv9tzbXmh_6yara_x, %bb.g ], [ %_RNvMs4_NtCscjxkGEBy879_6bitvec6domainNtB5_6Domain5minorCs7gfv9tzbXmh_6yara_x._RNvMs4_NtCscjxkGEBy879_6bitvec6domainNtB5_6Domain5majorCs7gfv9tzbXmh_6yara_x, %bb.i ], [ %spec.select, %bb.h ]
  %i.x = and i64 %i.a, -8
  %i.y = getelementptr i8, ptr %1, i64 %i.x
  %i.z = sub i64 0, %i.a
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.z
  tail call void %.sroa.0.0(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noundef nonnull %i.aa, i64 noundef %i.j, i8 noundef %i.k, i8 noundef %.sroa.4.0.i.i)
  ret void

bb.g:                                             ; preds = %bb.e
  br i1 %i.w, label %bb.f, label %bb.i

bb.h:                                             ; preds = %bb.e
  %spec.select = select i1 %i.w, ptr @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainNtB5_6Domain8spanningCs7gfv9tzbXmh_6yara_x, ptr @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainNtB5_6Domain12partial_tailCs7gfv9tzbXmh_6yara_x
  br label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.ab = icmp eq i64 %i.j, 1
  %_RNvMs4_NtCscjxkGEBy879_6bitvec6domainNtB5_6Domain5minorCs7gfv9tzbXmh_6yara_x._RNvMs4_NtCscjxkGEBy879_6bitvec6domainNtB5_6Domain5majorCs7gfv9tzbXmh_6yara_x = select i1 %i.ab, ptr @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainNtB5_6Domain5minorCs7gfv9tzbXmh_6yara_x, ptr @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainNtB5_6Domain5majorCs7gfv9tzbXmh_6yara_x
  br label %bb.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainNtB5_6Domain5emptyCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 48)) %0, ptr nofree nonnull readnone captures(none) %1, i64 %2, i8 %3, i8 %4) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.a, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.c, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainNtB5_6Domain5majorCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 34), (40, 58)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 noundef %3, i8 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = add i64 %2, -1
  store i64 %i.c, ptr %i.b, align 8
  %i.d = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCNvMs8_B6_Bv_3add0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.e = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCNvMs8_B6_Bv_3add0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCINvMs8_B6_Bv_4castjE0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  %i.g = icmp eq i8 %3, 0
  br i1 %i.g, label %_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu5ConstjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCskKLDkoKarTP_4core6option6OptionNtB1T_6BitEndEECs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sub i8 0, %3
  %i.i = and i8 %i.h, 63
  %i.j = zext nneg i8 %i.i to i64
  %i.k = shl nsw i64 -1, %i.j
  %i.l = xor i64 %i.k, -1
  %i.m = and i8 %3, 63
  %i.n = zext nneg i8 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  br label %_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu5ConstjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCskKLDkoKarTP_4core6option6OptionNtB1T_6BitEndEECs7gfv9tzbXmh_6yara_x.exit

_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu5ConstjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxINtNtCskKLDkoKarTP_4core6option6OptionNtB1T_6BitEndEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.o, %bb.b ], [ -1, %bb.a ]
  %i.p = add i64 %2, -2
  %i.q = icmp eq i8 %4, 64
  %i.r = and i8 %4, 63
  %i.s = zext nneg i8 %i.r to i64
  %i.t = shl nsw i64 -1, %i.s
  %i.u = xor i64 %i.t, -1
  %.sroa.0.0.i.i1 = select i1 %i.q, i64 -1, i64 %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.v, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.0.0.i.i, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %3, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 64, ptr %.sroa.65.0..sroa_idx, align 1
  store ptr %i.f, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.d, ptr %i.x, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.0.i.i1, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 %4, ptr %.sroa.615.0..sroa_idx, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainNtB5_6Domain5minorCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 26)) %0, ptr noundef nonnull %1, i64 %2, i8 noundef %3, i8 noundef %4) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = sub i8 %4, %3                            ; 2 uses
  %i.b = icmp eq i8 %i.a, 64
  br i1 %i.b, label %_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu5ConstjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxNtB1T_6BitEndECs7gfv9tzbXmh_6yara_x.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %i.a, 63
  %i.d = zext nneg i8 %i.c to i64
  %i.e = shl nsw i64 -1, %i.d
  %i.f = xor i64 %i.e, -1
  %i.g = and i8 %3, 63
  %i.h = zext nneg i8 %i.g to i64
  %i.i = shl i64 %i.f, %i.h
  br label %_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu5ConstjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxNtB1T_6BitEndECs7gfv9tzbXmh_6yara_x.exit

_RINvMsd_NtCscjxkGEBy879_6bitvec6domainINtB6_14PartialElementNtNtCs3f5EAvbiDJf_3wyz4comu5ConstjNtNtB8_5order4Lsb0E3newNtNtB8_5index6BitIdxNtB1T_6BitEndECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.b ], [ -1, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %4, ptr %.sroa.6.0..sroa_idx, align 1
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvMs4_NtCscjxkGEBy879_6bitvec6domainNtB5_6Domain8spanningCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 24), (40, 48)) %0, ptr noundef nonnull %1, i64 noundef %2, i8 %3, i8 %4) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCINvMs8_B6_Bv_4castjE0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8
  store ptr %i.a, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEE8try_lockCs7gfv9tzbXmh_6yara_x(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 17)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #38
  %i.i = xor i1 %i.h, true
  %i.j = zext i1 %i.i to i8
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i8 [ %i.j, %bb.c ], [ 0, %bb.b ]
  %i.k = load atomic i8, ptr %i.d monotonic, align 4
  %.not.i = icmp ne i8 %i.k, 0
  call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1r_5boxed3BoxNtNtNtCs6i8zKcEiGNL_14regex_automata4meta5regex5CacheEEENCNvMs9_BZ_BW_3new0ECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  %i.l = load i64, ptr %i.a, align 8, !range !19, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !10, !align !17, !noundef !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !16, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.q, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit
  %.sink3 = phi i8 [ %i.p, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit ], [ 2, %bb.a ]
  %.sink = phi i64 [ %i.l, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit ], [ 1, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink3, ptr %i.r, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs6_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_2IR10shift_vars(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.c, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4872
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !4872
  %i.d = tail call noundef align 4 dereferenceable_or_null(12) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 161) 12, i64 noundef range(i64 1, 9) 4) #44, !noalias !4872 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 12) #40, !noalias !4872
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.a
  store i32 0, ptr %i.d, align 4, !noalias !4872
end_hunk_3
