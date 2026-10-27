Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/indicatif-370b79dac8aed797.indicatif.16437ea88dc4d66b-cgu.12?download=true
inline.NumInlined: 87
inline.NumDeleted: 50
begin_hunk_0_@_RINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB3_8OnceLockNtNtCscdodAO9FK5_5alloc6string6StringE10initializeNCINvB2_11get_or_initNCNvMs1_NtCs1UvybGPDVxf_9indicatif5stateNtB2a_17TabExpandedString8expanded0E0zEB2c_:bb.a
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load atomic i32, ptr %i.d acquire, align 8, !noalias !12
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockNtNtCscdodAO9FK5_5alloc6string6StringE10initializeNCINvB18_11get_or_initNCNvMs1_NtCs1UvybGPDVxf_9indicatif5stateNtB2W_17TabExpandedString8expanded0E0zE0EB2Y_.exit, label %bb.b, !prof !3

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12
  store ptr %1, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.a, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12
  store ptr %i.c, ptr %i.b, align 8, !noalias !12
  call void @_RNvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 %i.d, i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12
  br label %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockNtNtCscdodAO9FK5_5alloc6string6StringE10initializeNCINvB18_11get_or_initNCNvMs1_NtCs1UvybGPDVxf_9indicatif5stateNtB2W_17TabExpandedString8expanded0E0zE0EB2Y_.exit

_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCINvMNtB8_9once_lockINtB19_8OnceLockNtNtCscdodAO9FK5_5alloc6string6StringE10initializeNCINvB18_11get_or_initNCNvMs1_NtCs1UvybGPDVxf_9indicatif5stateNtB2W_17TabExpandedString8expanded0E0zE0EB2Y_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs1UvybGPDVxf_9indicatif.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs1UvybGPDVxf_9indicatif.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1UvybGPDVxf_9indicatif(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs1UvybGPDVxf_9indicatif.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs1UvybGPDVxf_9indicatif.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs1UvybGPDVxf_9indicatif.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs1UvybGPDVxf_9indicatif.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneReECs1UvybGPDVxf_9indicatif(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.c = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !30
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !30
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !30
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !30
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31
  store i8 -1, ptr %i.a, align 1, !noalias !31
  call fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !33
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !33
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !33 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !33
  %i.h = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !33, !noundef !4
  %i.i = shl i64 %i.h, 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !33, !noundef !4
  %i.l = or i64 %i.i, %i.k                        ; 2 uses
  %i.m = xor i64 %i.l, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.n = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.o = add i64 %i.m, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.q = xor i64 %i.p, %i.n                       ; 3 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 16)
  %i.s = xor i64 %i.r, %i.o                       ; 3 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 32)
  %i.u = add i64 %i.o, %i.q                       ; 3 uses
  %i.v = add i64 %i.s, %i.t                       ; 2 uses
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 17)
  %i.x = xor i64 %i.u, %i.w                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 21)
  %i.z = xor i64 %i.y, %i.v                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.ab = xor i64 %i.v, %i.l
  %i.ac = xor i64 %i.aa, 255
  %i.ad = add i64 %i.ab, %i.x                     ; 3 uses
  %i.ae = add i64 %i.z, %i.ac                     ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 13)
  %i.ag = xor i64 %i.ad, %i.af                    ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 16)
  %i.ai = xor i64 %i.ah, %i.ae                    ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  %i.ak = add i64 %i.ag, %i.ae                    ; 3 uses
  %i.al = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 17)
  %i.an = xor i64 %i.ak, %i.am                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 21)
  %i.ap = xor i64 %i.ao, %i.al                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 32)
  %i.ar = add i64 %i.an, %i.al                    ; 3 uses
  %i.as = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 13)
  %i.au = xor i64 %i.at, %i.ar                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16)
  %i.aw = xor i64 %i.av, %i.as                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.ay = add i64 %i.au, %i.as                    ; 3 uses
  %i.az = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17)
  %i.bb = xor i64 %i.ba, %i.ay                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 21)
  %i.bd = xor i64 %i.bc, %i.az                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32)
  %i.bf = add i64 %i.bb, %i.az
  %i.bg = add i64 %i.bd, %i.be                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 13)
  %i.bi = xor i64 %i.bh, %i.bf                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 16)
  %i.bk = xor i64 %i.bj, %i.bg                    ; 2 uses
  %i.bl = add i64 %i.bi, %i.bg                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 17)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 21)
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 32)
  %i.bp = xor i64 %i.bn, %i.bm
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = xor i64 %i.bq, %i.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.br
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtCscdodAO9FK5_5alloc6string6StringE10initializeNCINvB1a_11get_or_initNCNvB1a_10try_insert0E0zE0E0Cs1UvybGPDVxf_9indicatif(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.48.i = alloca [16 x i8], align 8         ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.0.0.copyload, align 8, !alias.scope !42 ; 2 uses
  store i64 -1, ptr %.sroa.0.0.copyload, align 8, !alias.scope !42
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -1
  br i1 %.not.i.i.i, label %bb.c, label %_RNCINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockNtNtCscdodAO9FK5_5alloc6string6StringE10initializeNCINvB4_11get_or_initNCNvB4_10try_insert0E0zE0Cs1UvybGPDVxf_9indicatif.exit, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #18, !noalias !43
  unreachable

_RNCINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockNtNtCscdodAO9FK5_5alloc6string6StringE10initializeNCINvB4_11get_or_initNCNvB4_10try_insert0E0zE0Cs1UvybGPDVxf_9indicatif.exit: ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.48.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, i64 16, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.5.sroa.0.0.copyload, align 8
  %.sroa.48.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..8.val.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.48.i)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #18
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtCscdodAO9FK5_5alloc6string6StringE10initializeNCINvB1a_11get_or_initNCNvMs1_NtCs1UvybGPDVxf_9indicatif5stateNtB2Y_17TabExpandedString8expanded0E0zE0E0B30_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.h, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %i.h, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.x, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  %i.i = getelementptr i8, ptr %.sroa.0.0.copyload, i64 8
  %.val.i = load ptr, ptr %i.i, align 8, !noalias !65, !nonnull !4, !noundef !4 ; 6 uses
  %i.j = getelementptr i8, ptr %.sroa.0.0.copyload, i64 16
  %.val1.i = load i64, ptr %i.j, align 8, !noalias !65, !noundef !4 ; 7 uses
  %.val2.i = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !65, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !67
  call void @_RNvMNtCscdodAO9FK5_5alloc5sliceSh6repeatCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 1, i64 noundef %.val2.i), !noalias !67
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !67, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !67, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !70
  store i8 9, ptr %i.e, align 1, !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !70
  %i.p = load i8, ptr %i.l, align 1, !alias.scope !69, !noalias !67, !noundef !4
  store i8 %i.p, ptr %i.d, align 1, !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !70
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val1.i
  store ptr %.val.i, ptr %i.b, align 8, !noalias !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.q, ptr %i.r, align 8, !noalias !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %i.s, align 8, !noalias !70
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.d, ptr %i.t, align 8, !noalias !70
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1E_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
          to label %.noexc.i.i.i unwind label %bb.t, !noalias !66

.noexc.i.i.i:                                     ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !70
  br label %_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replacecECs1UvybGPDVxf_9indicatif.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %.not15.i.i.i.i = icmp eq i64 %i.n, 0           ; 2 uses
  %.19.i.i.i.i = select i1 %.not15.i.i.i.i, i64 0, i64 %.val1.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !70
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.19.i.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc2.i.i.i unwind label %bb.t, !noalias !67

.noexc2.i.i.i:                                    ; preds = %bb.d
  %i.u = load i64, ptr %i.a, align 8, !range !71, !noalias !70, !noundef !4
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !72, !noalias !70, !noundef !4 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.v, label %bb.e, label %.lr.ph.split.i.lr.ph.i.i.i.i, !prof !6

bb.e:                                             ; preds = %.noexc2.i.i.i
  %i.z = load i64, ptr %i.y, align 8, !noalias !70
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #18
          to label %.noexc3.i.i.i unwind label %bb.t, !noalias !67

.noexc3.i.i.i:                                    ; preds = %bb.e
  unreachable

.lr.ph.split.i.lr.ph.i.i.i.i:                     ; preds = %.noexc2.i.i.i
  %i.aa = load ptr, ptr %i.y, align 8, !noalias !70, !nonnull !4, !noundef !4
  %i.ab = icmp ule i64 %.19.i.i.i.i, %i.x
  tail call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !70
  store i64 %i.x, ptr %i.c, align 8, !noalias !70
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !70
  %.sroa.512.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 10 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !noalias !70
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.r, %.lr.ph.split.i.lr.ph.i.i.i.i
  %.sroa.04.097.i.i.i.i = phi i64 [ 0, %.lr.ph.split.i.lr.ph.i.i.i.i ], [ %i.ar, %bb.r ] ; 6 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.split.i.i.i.i.i
  %i.ac = phi i64 [ %.sroa.04.097.i.i.i.i, %.lr.ph.split.i.i.i.i.i ], [ %i.ar, %bb.j ] ; 4 uses
  %i.ad = sub nuw i64 %.val1.i, %i.ac             ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ac ; 2 uses
  %i.af = icmp samesign ult i64 %i.ad, 16
  br i1 %i.af, label %.preheader.i.i.i.i.i.i, label %bb.g

.preheader.i.i.i.i.i.i:                           ; preds = %bb.f
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ag = invoke { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef range(i64 0, -9223372036854775808) %i.ad)
          to label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !73

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %bb.h ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.h ]
  %i.ah = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i, 0
  %i.ai = insertvalue { i64, i64 } %i.ah, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.h
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.am, %bb.h ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !74, !noalias !75, !noundef !4
  %i.al = icmp eq i8 %i.ak, 9
  br i1 %i.al, label %._crit_edge.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.am = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.am, %i.ad
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.g
  %.merged.i.i.i.i.i.i = phi { i64, i64 } [ %i.ai, %._crit_edge.i.i.i.i.i.i ], [ %i.ag, %bb.g ] ; 2 uses
  %i.an = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 0
  %i.ao = trunc nuw i64 %i.an to i1
  br i1 %i.ao, label %bb.i, label %.loopexit75.i.i.i.i

bb.i:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i
  %i.ap = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 1 ; 2 uses
  %i.aq = add i64 %i.ac, 1
  %i.ar = add i64 %i.aq, %i.ap                    ; 4 uses
  %.not13.i.i.i.i.i = icmp ugt i64 %i.ar, %.val1.i ; 2 uses
  %i.as = add i64 %i.ap, %i.ac                    ; 4 uses
  %or.cond.i.not.i.i.i.i = icmp ult i64 %i.as, %.val1.i
  br i1 %or.cond.i.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  br i1 %.not13.i.i.i.i.i, label %.loopexit75.i.i.i.i, label %bb.f

bb.k:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.as
  %lhsc.i.i.i.i = load i8, ptr %i.at, align 1, !alias.scope !68, !noalias !67
  %i.au = icmp eq i8 %lhsc.i.i.i.i, 9
  br i1 %i.au, label %bb.n, label %bb.j

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %bb.p, %bb.n, %.loopexit75.i.i.i.i
  %lpad.loopexit.split-lp42 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #19
          to label %.body.i.i.i unwind label %bb.s, !noalias !73

.loopexit75.i.i.i.i:                              ; preds = %bb.r, %bb.j, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i
  %.sroa.04.086.i.i.i.i = phi i64 [ %.sroa.04.097.i.i.i.i, %bb.j ], [ %.sroa.04.097.i.i.i.i, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ %i.ar, %bb.r ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.04.086.i.i.i.i
  %gepdiff74.i.i.i.i = sub nuw nsw i64 %.val1.i, %.sroa.04.086.i.i.i.i ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff74.i.i.i.i)
          to label %.noexc26.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !73

.noexc26.i.i.i.i:                                 ; preds = %.loopexit75.i.i.i.i
  %i.aw = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !76, !noalias !70, !noundef !4 ; 3 uses
  %i.ax = icmp sgt i64 %i.aw, -1
  call void @llvm.assume(i1 %i.ax)
  %.not.i24.i.i.i.i = icmp eq i64 %.val1.i, %.sroa.04.086.i.i.i.i
  br i1 %.not.i24.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.noexc26.i.i.i.i
  %i.ay = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !76, !noalias !70, !nonnull !4, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr nonnull readonly align 1 %i.av, i64 %gepdiff74.i.i.i.i, i1 false), !noalias !73
  %.pre.i25.i.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !76, !noalias !70
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.noexc26.i.i.i.i
  %i.ba = phi i64 [ %.pre.i25.i.i.i.i, %bb.l ], [ %i.aw, %.noexc26.i.i.i.i ]
  %i.bb = add i64 %i.ba, %gepdiff74.i.i.i.i
  store i64 %i.bb, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !76, !noalias !70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !70
  br label %_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replacecECs1UvybGPDVxf_9indicatif.exit.i.i.i

bb.n:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.04.097.i.i.i.i
  %gepdiff.i.i.i.i = sub nuw nsw i64 %i.as, %.sroa.04.097.i.i.i.i ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %gepdiff.i.i.i.i)
          to label %.noexc29.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !73

.noexc29.i.i.i.i:                                 ; preds = %bb.n
  %i.bd = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !78, !noalias !70, !noundef !4 ; 3 uses
  %i.be = icmp sgt i64 %i.bd, -1
  call void @llvm.assume(i1 %i.be)
  %.not.i27.i.i.i.i = icmp eq i64 %i.as, %.sroa.04.097.i.i.i.i
  br i1 %.not.i27.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc29.i.i.i.i
  %i.bf = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !78, !noalias !70, !nonnull !4, !noundef !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull readonly align 1 %i.bc, i64 %gepdiff.i.i.i.i, i1 false), !noalias !73
  %.pre.i28.i.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !78, !noalias !70
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.noexc29.i.i.i.i
  %i.bh = phi i64 [ %.pre.i28.i.i.i.i, %bb.o ], [ %i.bd, %.noexc29.i.i.i.i ]
  %i.bi = add i64 %i.bh, %gepdiff.i.i.i.i
  store i64 %i.bi, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !78, !noalias !70
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.n)
          to label %.noexc33.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !73

.noexc33.i.i.i.i:                                 ; preds = %bb.p
  %i.bj = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !79, !noalias !70, !noundef !4 ; 3 uses
  %i.bk = icmp sgt i64 %i.bj, -1
  call void @llvm.assume(i1 %i.bk)
  br i1 %.not15.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc33.i.i.i.i
  %i.bl = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !79, !noalias !70, !nonnull !4, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %i.l, i64 %i.n, i1 false), !noalias !80
  %.pre.i32.i.i.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !79, !noalias !70
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.noexc33.i.i.i.i
  %i.bn = phi i64 [ %.pre.i32.i.i.i.i, %bb.q ], [ %i.bj, %.noexc33.i.i.i.i ]
  %i.bo = add i64 %i.bn, %i.n
  store i64 %i.bo, ptr %.sroa.512.0..sroa_idx.i.i.i.i, align 8, !alias.scope !79, !noalias !70
  br i1 %.not13.i.i.i.i.i, label %.loopexit75.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

bb.s:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !73
  unreachable

bb.t:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.t, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.bq, %bb.t ], [ %lpad.loopexit.split-lp42, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #19
          to label %common.resume.i.i.i unwind label %bb.w, !noalias !67

_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replacecECs1UvybGPDVxf_9indicatif.exit.i.i.i: ; preds = %bb.m, %.noexc.i.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RNCINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockNtNtCscdodAO9FK5_5alloc6string6StringE10initializeNCINvB4_11get_or_initNCNvMs1_NtCs1UvybGPDVxf_9indicatif5stateNtB2c_17TabExpandedString8expanded0E0zE0B2e_.exit unwind label %bb.u, !noalias !67

bb.u:                                             ; preds = %_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replacecECs1UvybGPDVxf_9indicatif.exit.i.i.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume.i.i.i unwind label %bb.v, !noalias !67

bb.v:                                             ; preds = %bb.u
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !67
  unreachable

common.resume.i.i.i:                              ; preds = %bb.u, %.body.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.br, %bb.u ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.w:                                             ; preds = %.body.i.i.i
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !67
  unreachable

_RNCINvMNtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockNtNtCscdodAO9FK5_5alloc6string6StringE10initializeNCINvB4_11get_or_initNCNvMs1_NtCs1UvybGPDVxf_9indicatif5stateNtB2c_17TabExpandedString8expanded0E0zE0B2e_.exit: ; preds = %_RINvMs3_NtCscdodAO9FK5_5alloc3stre7replacecECs1UvybGPDVxf_9indicatif.exit.i.i.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f), !noalias !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.4.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !66
  ret void

bb.x:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #18
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtCscdodAO9FK5_5alloc6string6StringE10initializeNCINvB1f_11get_or_initNCNvB1f_10try_insert0E0zE0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs1UvybGPDVxf_9indicatif(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.48.i.i.i = alloca [16 x i8], align 8     ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !alias.scope !91, !noalias !92 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !91, !noalias !92 ; 3 uses
  store ptr null, ptr %i.a, align 8, !alias.scope !91, !noalias !92
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i, align 8, !alias.scope !95, !noalias !96 ; 2 uses
  store i64 -1, ptr %.sroa.0.0.copyload.i.i, align 8, !alias.scope !95, !noalias !96
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtCscdodAO9FK5_5alloc6string6StringE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs1UvybGPDVxf_9indicatif.exit, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #18, !noalias !97
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #18, !noalias !96
  unreachable

_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtCscdodAO9FK5_5alloc6string6StringE10initializeNCINvB1d_11get_or_initNCNvB1d_10try_insert0E0zE0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs1UvybGPDVxf_9indicatif.exit: ; preds = %bb.b
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.48.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !96
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload.i.i) ]
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.5.sroa.0.0.copyload.i.i, align 8, !noalias !96
  %.sroa.48.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.0.0.copyload.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.48.i.i.i, i64 16, i1 false), !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.48.i.i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBd_4Once15call_once_forceNCINvMNtBf_9once_lockINtB1g_8OnceLockNtNtCscdodAO9FK5_5alloc6string6StringE10initializeNCINvB1f_11get_or_initNCNvMs1_NtCs1UvybGPDVxf_9indicatif5stateNtB33_17TabExpandedString8expanded0E0zE0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB35_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !100
  call void @_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtCscdodAO9FK5_5alloc6string6StringE10initializeNCINvB1a_11get_or_initNCNvMs1_NtCs1UvybGPDVxf_9indicatif5stateNtB2Y_17TabExpandedString8expanded0E0zE0E0B30_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull readnone align 4 poison)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrowneINtB2_10EquivalentReE10equivalentCs1UvybGPDVxf_9indicatif(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4
  %i.b = icmp eq i64 %1, %.val1
  br i1 %i.b, label %bb.b, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %.val, i64 %1), !alias.scope !104
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvXs_NtNtNtBb_4iter8adapters9enumerateINtBY_9EnumeratepENtNtNtB12_6traits8iterator8Iterator4fold9enumerateRNtNtCs6rR7J0NOYM8_5vt1003row3RowuNCINvNtB10_3map8map_foldTjB2B_EINtNtCscdodAO9FK5_5alloc3vec3VechEuNCNvMNtB2G_6screenNtB4i_6Screen14rows_formatted0NCINvNvB1N_8for_each4callB3E_NCINvMsj_B3H_IB3F_B3E_E14extend_trustedINtB3e_3MapIB1w_INtNtB10_5chain5ChainINtNtB10_4take4TakeINtNtB10_4skip4SkipINtNtNtNtB3J_11collections9vec_deque4iter4IterB2C_EEEIB6H_INtNtNtBb_5slice4iter4IterB2C_EEEEB4d_EE0E0E0E0INtB7_5FnMutTuB2B_EE8call_mutCs1UvybGPDVxf_9indicatif(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [9 x i8], align 1                 ; 4 uses
  %i.c = alloca [14 x i8], align 2                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !119, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.i = icmp ugt i64 %i.g, 65535
  %i.j = trunc nuw nsw i64 %i.g to i32
  %i.k = shl nuw i32 %i.j, 16
  %.sroa.02.0.insert.insert.i.i.i = select i1 %i.i, i32 513, i32 %i.k ; 2 uses
  %i.l = trunc i32 %.sroa.02.0.insert.insert.i.i.i to i1
  br i1 %i.l, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs1UvybGPDVxf_9indicatif.exit.i.i.i, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !125
  store i8 2, ptr %i.a, align 1, !noalias !125
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #18, !noalias !125
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs1UvybGPDVxf_9indicatif.exit.i.i.i: ; preds = %bb.a
  %.sroa.5.0.extract.shift.i.i.i.i = lshr i32 %.sroa.02.0.insert.insert.i.i.i, 16
  %.sroa.5.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.5.0.extract.shift.i.i.i.i to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !125
  store i64 0, ptr %i.d, align 8, !noalias !125
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.m, align 8, !noalias !125
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.n, align 8, !noalias !125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !125
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.p = load i16, ptr %i.o, align 8, !alias.scope !126, !noundef !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 42
  %i.r = load i16, ptr %i.q, align 2, !alias.scope !126, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 44 ; 2 uses
  %i.t = load i8, ptr %i.s, align 4, !range !127, !alias.scope !126, !noundef !4
  %i.u = trunc nuw i8 %i.t to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !125
  store i8 -1, ptr %i.b, align 1, !noalias !125
  invoke void @_RNvMNtCs6rR7J0NOYM8_5vt1003rowNtB2_3Row24write_contents_formatted(ptr noalias noundef nonnull sret([14 x i8]) align 2 captures(none) dereferenceable(14) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i16 noundef %i.p, i16 noundef %i.r, i16 noundef %.sroa.5.0.extract.trunc.i.i.i.i, i1 noundef zeroext %i.u, i48 0, ptr noalias noundef nonnull readonly align 1 captures(none) dereferenceable(9) %i.b)
          to label %bb.d unwind label %bb.c, !noalias !128

bb.c:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs1UvybGPDVxf_9indicatif.exit.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs1UvybGPDVxf_9indicatif(ptr noalias noundef align 8 dereferenceable(24) %i.d) #19
          to label %bb.h unwind label %bb.g, !noalias !128

bb.d:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResulttNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs1UvybGPDVxf_9indicatif.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !125
  %i.w = icmp eq i16 %i.p, 0
  br i1 %i.w, label %bb.e, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs6rR7J0NOYM8_5vt1003row3RowuNCINvNtBb_3map8map_foldTjB21_EINtNtCscdodAO9FK5_5alloc3vec3VechEuNCNvMNtB26_6screenNtB3H_6Screen14rows_formatted0NCINvNvB1e_8for_each4callB33_NCINvMsj_B36_IB34_B33_E14extend_trustedINtB2E_3MapIBX_INtNtBb_5chain5ChainINtNtBb_4take4TakeINtNtBb_4skip4SkipINtNtNtNtB38_11collections9vec_deque4iter4IterB22_EEEIB64_INtNtNtBf_5slice4iter4IterB22_EEEEB3C_EE0E0E0E0Cs1UvybGPDVxf_9indicatif.exit

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.h, align 8, !alias.scope !126, !nonnull !4, !align !5, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 74
  %i.z = load i16, ptr %i.y, align 2, !noalias !128, !noundef !4
  %i.aa = icmp eq i16 %i.r, %i.z
  br i1 %i.aa, label %bb.f, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs6rR7J0NOYM8_5vt1003row3RowuNCINvNtBb_3map8map_foldTjB21_EINtNtCscdodAO9FK5_5alloc3vec3VechEuNCNvMNtB26_6screenNtB3H_6Screen14rows_formatted0NCINvNvB1e_8for_each4callB33_NCINvMsj_B36_IB34_B33_E14extend_trustedINtB2E_3MapIBX_INtNtBb_5chain5ChainINtNtBb_4take4TakeINtNtBb_4skip4SkipINtNtNtNtB38_11collections9vec_deque4iter4IterB22_EEEIB64_INtNtNtBf_5slice4iter4IterB22_EEEEB3C_EE0E0E0E0Cs1UvybGPDVxf_9indicatif.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !range !127, !alias.scope !129, !noundef !4
  store i8 %i.ac, ptr %i.s, align 4, !alias.scope !126
  br label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs6rR7J0NOYM8_5vt1003row3RowuNCINvNtBb_3map8map_foldTjB21_EINtNtCscdodAO9FK5_5alloc3vec3VechEuNCNvMNtB26_6screenNtB3H_6Screen14rows_formatted0NCINvNvB1e_8for_each4callB33_NCINvMsj_B36_IB34_B33_E14extend_trustedINtB2E_3MapIBX_INtNtBb_5chain5ChainINtNtBb_4take4TakeINtNtBb_4skip4SkipINtNtNtNtB38_11collections9vec_deque4iter4IterB22_EEEIB64_INtNtNtBf_5slice4iter4IterB22_EEEEB3C_EE0E0E0E0Cs1UvybGPDVxf_9indicatif.exit

bb.g:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #17, !noalias !128
  unreachable

bb.h:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.v

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRNtNtCs6rR7J0NOYM8_5vt1003row3RowuNCINvNtBb_3map8map_foldTjB21_EINtNtCscdodAO9FK5_5alloc3vec3VechEuNCNvMNtB26_6screenNtB3H_6Screen14rows_formatted0NCINvNvB1e_8for_each4callB33_NCINvMsj_B36_IB34_B33_E14extend_trustedINtB2E_3MapIBX_INtNtBb_5chain5ChainINtNtBb_4take4TakeINtNtBb_4skip4SkipINtNtNtNtB38_11collections9vec_deque4iter4IterB22_EEEIB64_INtNtNtBf_5slice4iter4IterB22_EEEEB3C_EE0E0E0E0Cs1UvybGPDVxf_9indicatif.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !125
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !133, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !133, !noundef !4 ; 2 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !133
  %i.aj = add i64 %i.ah, 1
  store i64 %i.aj, ptr %i.ag, align 8, !alias.scope !133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ak = add i64 %i.g, 1
  store i64 %i.ak, ptr %i.f, align 8, !alias.scope !119
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_5Debug3fmtCs1UvybGPDVxf_9indicatif(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCs1UvybGPDVxf_9indicatif(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvXs3_NtNtCs4NRVxsYgnAr_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs1UvybGPDVxf_9indicatif(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %.sroa.0.0.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 9, 8) %i.g, i64 range(i64 0, -9223372036854775808) %2) ; 3 uses
  %i.h = icmp samesign ugt i64 %.sroa.0.0.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !142
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i10 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i, 1
  %i.k = icmp samesign ult i64 %i.j, %.sroa.0.0.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i
end_hunk_0
