Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.04?download=true
inline.NumInlined: 4752
inline.NumDeleted: 2180
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN3zip4read18make_crypto_reader17hba8bf91c762cf1f4E:bb.a
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %.sroa.39 = alloca [24 x i8], align 8           ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.d = load i16, ptr %i.c, align 8, !range !44, !noundef !5
  %i.e = icmp eq i16 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775805, ptr %i.f, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @236, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 32, ptr %.sroa.529.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  %i.g = and i64 %5, 65535
  %.not39 = icmp eq i64 %i.g, 0                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.g, %bb.j, %bb.o, %bb.i, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  br i1 %.not39, label %bb.k, label %bb.j

bb.f:                                             ; preds = %bb.c
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775803, ptr %i.h, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.p, %bb.h
  %.sroa.4.0 = phi i64 [ %.sroa.632.0.copyload, %bb.p ], [ undef, %bb.h ]
  %.sroa.07.0 = phi ptr [ %i.y, %bb.p ], [ null, %bb.h ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.07.0, ptr %i.i, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.d

bb.j:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775805, ptr %i.j, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @237, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 71, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.d

bb.k:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 204
  %i.l = load i8, ptr %i.k, align 4, !range !11, !noundef !5
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 188
  %i.o = load i32, ptr %i.n, align 4, !noundef !5
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw i64 %i.p, 32
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 196
  %.sroa.035.0.copyload = load i48, ptr %i.r, align 4 ; 2 uses
  %i.s = trunc i48 %.sroa.035.0.copyload to i1
  %i.t = lshr i48 %.sroa.035.0.copyload, 16
  %i.u = and i48 %i.t, 4294901760
  %i.v = or disjoint i48 %i.u, 1
  %i.w = select i1 %i.s, i48 %i.v, i48 1
  %i.x = zext nneg i48 %i.w to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.437.0.insert.insert = phi i64 [ %i.x, %bb.m ], [ %i.q, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN3zip9zipcrypto24ZipCryptoReader$LT$R$GT$3new17h159350b107abc202E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  call void @"_ZN3zip9zipcrypto24ZipCryptoReader$LT$R$GT$8validate17h5590e1f4f68ca988E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, i64 %.sroa.437.0.insert.insert)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = load ptr, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  br i1 %i.z, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.d

bb.p:                                             ; preds = %bb.n
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.632.0.copyload = load i64, ptr %.sroa.632.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.39, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3zip4read26central_header_to_zip_file17h8187fee2eb005a6cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 8 captures(none) dereferenceable(208) %0, ptr noalias noundef align 8 dereferenceable(32) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = alloca [208 x i8], align 8               ; 42 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.26 = alloca [176 x i8], align 8          ; 5 uses
  %i.r = alloca [208 x i8], align 8               ; 11 uses
  %i.s = alloca [48 x i8], align 8                ; 16 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val38 = load i64, ptr %i.t, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_ZN3zip4spec14FixedSizeBlock5parse17h49b4eaf66d4aaa3aE(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  %i.u = load i8, ptr %i.s, align 8, !range !11, !noundef !5
  %i.v = trunc nuw i8 %i.u to i1
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 9
  %i.w = load <4 x i16>, ptr %.sroa.5106.0..sroa_idx, align 1 ; 5 uses
  %.sroa.9110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 17
  %.sroa.9110.0.copyload = load i32, ptr %.sroa.9110.0..sroa_idx, align 1 ; 2 uses
  %.sroa.10111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 21
  %.sroa.10111.0.copyload = load i32, ptr %.sroa.10111.0..sroa_idx, align 1 ; 2 uses
  %.sroa.11112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 25
  %.sroa.11112.0.copyload = load i32, ptr %.sroa.11112.0..sroa_idx, align 1 ; 2 uses
  %.sroa.12113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 29
  %.sroa.12113.0.copyload = load i16, ptr %.sroa.12113.0..sroa_idx, align 1 ; 2 uses
  %.sroa.13114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 31 ; 2 uses
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0105.0.copyload = load i8, ptr %i.x, align 8
  %.sroa.13114.0.copyload = load i8, ptr %.sroa.13114.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0105.0.copyload, ptr %i.y, align 8
  %.sroa.2116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store <4 x i16> %i.w, ptr %.sroa.2116.0..sroa_idx, align 1
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i32 %.sroa.9110.0.copyload, ptr %.sroa.6120.0..sroa_idx, align 1
  %.sroa.7121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i32 %.sroa.10111.0.copyload, ptr %.sroa.7121.0..sroa_idx, align 1
  %.sroa.8122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i32 %.sroa.11112.0.copyload, ptr %.sroa.8122.0..sroa_idx, align 1
  %.sroa.9123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i16 %.sroa.12113.0.copyload, ptr %.sroa.9123.0..sroa_idx, align 1
  %.sroa.10124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.13114.0.copyload, ptr %.sroa.10124.0..sroa_idx, align 1
  store i64 2, ptr %0, align 8
  br label %bb.ct

bb.c:                                             ; preds = %bb.a
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  %.sroa.585.0.copyload = load i16, ptr %.sroa.585.0..sroa_idx, align 1 ; 2 uses
  %.sroa.15.0.copyload = load i16, ptr %.sroa.13114.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 33
  %.sroa.16.0.copyload = load i16, ptr %.sroa.16.0..sroa_idx, align 1
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 39
  %.sroa.18.0.copyload = load i32, ptr %.sroa.18.0..sroa_idx, align 1
  %.sroa.1994.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 43
  %.sroa.1994.0.copyload = load i32, ptr %.sroa.1994.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26)
  %i.z = load i64, ptr %2, align 8, !noundef !5
  %i.aa = extractelement <4 x i16> %i.w, i64 0    ; 2 uses
  %i.ab = trunc i16 %i.aa to i8                   ; 2 uses
  %i.ac = and i16 %i.aa, 2048                     ; 2 uses
  %.not99.i = icmp eq i16 %i.ac, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5279
  %i.ad = zext i16 %.sroa.12113.0.copyload to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5280
  call void @llvm.experimental.noalias.scope.decl(metadata !5281)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5282
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, i64 noundef range(i64 0, 65536) %i.ad, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !5282
  %i.ae = load i64, ptr %i.h, align 8, !range !7, !noalias !5282, !noundef !5
  %i.af = trunc nuw i64 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !range !8, !noalias !5282, !noundef !5 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.af, label %bb.d, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i", !prof !9

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !5282
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ah, i64 %i.aj) #38, !noalias !5283
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i": ; preds = %bb.c
  %i.ak = load ptr, ptr %i.ai, align 8, !noalias !5282, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5282
  store i64 %i.ah, ptr %i.i, align 8, !alias.scope !5281, !noalias !5280
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !alias.scope !5281, !noalias !5280
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.ad, ptr %i.am, align 8, !alias.scope !5281, !noalias !5280
  %i.an = call { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !5284 ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %i.an, 0      ; 9 uses
  %i.ap = extractvalue { ptr, i64 } %i.an, 1      ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5280
  %i.aq = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h74ec0442aaa5e278E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 1 %i.ao, i64 noundef %i.ap)
          to label %bb.g unwind label %bb.e, !noalias !5285 ; 2 uses

bb.e:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i"
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = icmp eq i64 %i.ap, 0
  br i1 %i.as, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  br label %common.resume.sink.split.i

bb.g:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i"
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = icmp eq i64 %i.ap, 0
  br i1 %i.at, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef range(i64 1, 0) %i.ap, i64 noundef 1) #30, !noalias !5285
  br label %bb.j

common.resume.sink.split.i:                       ; preds = %.thread.i, %bb.f
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.ar, %bb.f ], [ %.pn114274.i, %.thread.i ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef range(i64 1, 0) %i.ap, i64 noundef 1) #30, !noalias !5286
  br label %common.resume

common.resume:                                    ; preds = %bb.co, %bb.e, %common.resume.sink.split.i, %bb.r, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %i.ar, %bb.e ], [ %.pn114274.i, %.thread.i ], [ %.pn112.i, %bb.r ], [ %i.ht, %bb.co ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.au = ptrtoint ptr %i.aq to i64
  br label %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit.thread

bb.k:                                             ; preds = %bb.g
  store ptr %i.ao, ptr %i.q, align 8, !noalias !5279
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.ap, ptr %i.av, align 8, !noalias !5279
  %i.aw = zext i16 %.sroa.15.0.copyload to i64    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5287
  call void @llvm.experimental.noalias.scope.decl(metadata !5288)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5289
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, i64 noundef range(i64 0, 65536) %i.aw, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.s, !noalias !5286

.noexc.i:                                         ; preds = %bb.k
  %i.ax = load i64, ptr %i.f, align 8, !range !7, !noalias !5289, !noundef !5
  %i.ay = trunc nuw i64 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !8, !noalias !5289, !noundef !5 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.ay, label %bb.l, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i147.i", !prof !9

bb.l:                                             ; preds = %.noexc.i
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !5289
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ba, i64 %i.bc) #38
          to label %.noexc150.i unwind label %bb.s, !noalias !5286

.noexc150.i:                                      ; preds = %bb.l
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i147.i": ; preds = %.noexc.i
  %i.bd = load ptr, ptr %i.bb, align 8, !noalias !5289, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5289
  store i64 %i.ba, ptr %i.g, align 8, !alias.scope !5288, !noalias !5287
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !alias.scope !5288, !noalias !5287
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.aw, ptr %i.bf, align 8, !alias.scope !5288, !noalias !5287
  %i.bg = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc151.i unwind label %bb.s, !noalias !5286 ; 2 uses

.noexc151.i:                                      ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i147.i"
  %i.bh = extractvalue { ptr, i64 } %i.bg, 0      ; 8 uses
  %i.bi = extractvalue { ptr, i64 } %i.bg, 1      ; 15 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5287
  %i.bj = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h74ec0442aaa5e278E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 1 %i.bh, i64 noundef %i.bi)
          to label %bb.o unwind label %bb.m, !noalias !5290 ; 2 uses

bb.m:                                             ; preds = %.noexc151.i
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = icmp eq i64 %i.bi, 0
  br i1 %i.bl, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef range(i64 1, 0) %i.bi, i64 noundef 1) #30, !noalias !5290
  br label %.thread.i

bb.o:                                             ; preds = %.noexc151.i
  %.not.i149.i = icmp eq ptr %i.bj, null
  br i1 %.not.i149.i, label %_ZN3zip4read31read_variable_length_byte_field17hf837475ae0b25cc7E.exit154.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = icmp eq i64 %i.bi, 0
  br i1 %i.bm, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef range(i64 1, 0) %i.bi, i64 noundef 1) #30, !noalias !5290
  br label %bb.t

bb.r:                                             ; preds = %bb.ab, %.body161.i
  br i1 %.sroa.050.2.i, label %.thread.i, label %common.resume

bb.s:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i147.i", %bb.l, %bb.k
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.bo = ptrtoint ptr %i.bj to i64               ; 2 uses
  %.old.i = icmp eq i64 %i.ap, 0
  br i1 %.old.i, label %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit.thread, label %bb.aa

_ZN3zip4read31read_variable_length_byte_field17hf837475ae0b25cc7E.exit154.i: ; preds = %bb.o
  %i.bp = zext i16 %.sroa.16.0.copyload to i64    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5291
  call void @llvm.experimental.noalias.scope.decl(metadata !5292)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5293
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, i64 noundef range(i64 0, 65536) %i.bp, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc158.i unwind label %bb.ac, !noalias !5286

.noexc158.i:                                      ; preds = %_ZN3zip4read31read_variable_length_byte_field17hf837475ae0b25cc7E.exit154.i
  %i.bq = load i64, ptr %i.d, align 8, !range !7, !noalias !5293, !noundef !5
  %i.br = trunc nuw i64 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !range !8, !noalias !5293, !noundef !5 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.br, label %bb.u, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i155.i", !prof !9

bb.u:                                             ; preds = %.noexc158.i
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !5293
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.bt, i64 %i.bv) #38
          to label %.noexc159.i unwind label %bb.ac, !noalias !5286

.noexc159.i:                                      ; preds = %bb.u
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i155.i": ; preds = %.noexc158.i
  %i.bw = load ptr, ptr %i.bu, align 8, !noalias !5293, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5293
  store i64 %i.bt, ptr %i.e, align 8, !alias.scope !5292, !noalias !5291
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bw, ptr %i.bx, align 8, !alias.scope !5292, !noalias !5291
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.bp, ptr %i.by, align 8, !alias.scope !5292, !noalias !5291
  %i.bz = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc160.i unwind label %bb.ac, !noalias !5286 ; 2 uses

.noexc160.i:                                      ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i155.i"
  %i.ca = extractvalue { ptr, i64 } %i.bz, 0      ; 9 uses
  %i.cb = extractvalue { ptr, i64 } %i.bz, 1      ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5291
  %i.cc = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h74ec0442aaa5e278E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 1 %i.ca, i64 noundef %i.cb)
          to label %bb.x unwind label %bb.v, !noalias !5294 ; 2 uses

bb.v:                                             ; preds = %.noexc160.i
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = icmp eq i64 %i.cb, 0
  br i1 %i.ce, label %.body161.i, label %bb.w

bb.w:                                             ; preds = %bb.v
end_hunk_0
begin_hunk_1_@_ZN3zip4read26central_header_to_zip_file17h8187fee2eb005a6cE:bb.a
bb.ar:                                            ; preds = %bb.az, %bb.aq
  %.pn375.i = phi { ptr, i64 } [ %i.cr, %bb.aq ], [ %.pn374.i, %bb.az ]
  %.sroa.0229.0.i = phi ptr [ %i.di, %bb.aq ], [ %.sroa.0229.1.i, %bb.az ] ; 4 uses
  %.sroa.8.3.i = phi i64 [ %i.cq, %bb.aq ], [ %.sroa.8.0.i, %bb.az ] ; 4 uses
  %.sroa.0227.3.i = phi ptr [ %i.cp, %bb.aq ], [ %.sroa.0227.0.i, %bb.az ] ; 4 uses
  %.sroa.047.3.i = phi i8 [ 0, %bb.aq ], [ 1, %bb.az ] ; 6 uses
  %.sroa.10.0.i = extractvalue { ptr, i64 } %.pn375.i, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5279
  %i.dj = lshr i16 %.sroa.585.0.copyload, 8       ; 2 uses
  %switch.selectcmp.i = icmp eq i16 %i.dj, 3
  %switch.select.i = select i1 %switch.selectcmp.i, i8 3, i8 4
  %switch.selectcmp116.i = icmp eq i16 %i.dj, 0
  %switch.select117.i = select i1 %switch.selectcmp116.i, i8 0, i8 %switch.select.i
  %i.dk = trunc i16 %.sroa.585.0.copyload to i8
  %i.dl = extractelement <4 x i16> %i.w, i64 1    ; 3 uses
  %switch.selectcmp120.i = icmp eq i16 %i.dl, 8
  %switch.select121.i = select i1 %switch.selectcmp120.i, i16 1, i16 2
  %switch.selectcmp122.i = icmp eq i16 %i.dl, 0
  %switch.select123.i = select i1 %switch.selectcmp122.i, i16 0, i16 %switch.select121.i
  %i.dm = extractelement <4 x i16> %i.w, i64 2
  %i.dn = extractelement <4 x i16> %i.w, i64 3
  %i.do = invoke i48 @_ZN3zip5types8DateTime14try_from_msdos17hc9a3df637fa4bd83E(i16 noundef %i.dn, i16 noundef %i.dm)
          to label %bb.bc unwind label %.thread349.i, !noalias !5286 ; 3 uses

.thread349.i:                                     ; preds = %bb.ar
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.thread327.i

bb.as:                                            ; preds = %bb.ak
  %i.dq = extractvalue { ptr, i64 } %i.ct, 0
  br label %bb.ap

bb.at:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5279
  %i.dr = load i64, ptr %i.o, align 8, !range !8, !noalias !5279, !noundef !5
  %.not98.i = icmp eq i64 %i.dr, -9223372036854775808
  br i1 %.not98.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !5279
  %i.ds = invoke { ptr, i64 } @"_ZN5alloc6string107_$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$str$GT$$GT$4from17h757f7de970d115c2E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.ba unwind label %.thread308.i, !noalias !5286 ; 2 uses

bb.av:                                            ; preds = %bb.at
  %i.dt = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !5279, !nonnull !5, !align !15, !noundef !5
  %i.dv = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !5279, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5296
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.dw, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc168.i unwind label %.thread308.i, !noalias !5286

.noexc168.i:                                      ; preds = %bb.av
  %i.dx = load i64, ptr %i.b, align 8, !range !7, !noalias !5296, !noundef !5
  %i.dy = trunc nuw i64 %i.dx to i1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !range !8, !noalias !5296, !noundef !5 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.dy, label %bb.aw, label %bb.ax, !prof !9

bb.aw:                                            ; preds = %.noexc168.i
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !5296
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ea, i64 %i.ec) #38
          to label %.noexc169.i unwind label %.thread308.i, !noalias !5286

.noexc169.i:                                      ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %.noexc168.i
  %i.ed = load ptr, ptr %i.eb, align 8, !noalias !5296, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5296
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ed, ptr nonnull readonly align 1 %i.du, i64 %i.dw, i1 false), !noalias !5286
  %i.ee = invoke { ptr, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8into_box17hcb107486f3d6b998E"(i64 noundef %i.ea, ptr noundef nonnull %i.ed, i64 noundef %i.dw)
          to label %bb.ay unwind label %.thread308.i, !noalias !5286 ; 2 uses

bb.ay:                                            ; preds = %bb.ax
  %i.ef = extractvalue { ptr, i64 } %i.ee, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ]
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %.pn374.i = phi { ptr, i64 } [ %i.ee, %bb.ay ], [ %i.ds, %bb.ba ]
  %.sroa.0229.1.i = phi ptr [ %i.ef, %bb.ay ], [ %i.eg, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5279
  br label %bb.ar

bb.ba:                                            ; preds = %bb.au
  %i.eg = extractvalue { ptr, i64 } %i.ds, 0
  br label %bb.az

bb.bb:                                            ; preds = %bb.cc
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i"

bb.bc:                                            ; preds = %bb.ar
  %i.ei = trunc i48 %i.do to i1                   ; 2 uses
  %.sroa.096.4.extract.shift.i = lshr i48 %i.do, 32
  %.sroa.096.4.extract.trunc.i = trunc nuw i48 %.sroa.096.4.extract.shift.i to i16
  %.sroa.096.2.extract.shift.i = lshr i48 %i.do, 16
  %.sroa.096.2.extract.trunc.i = trunc i48 %.sroa.096.2.extract.shift.i to i16
  %.sroa.616.0.i = select i1 %i.ei, i16 undef, i16 %.sroa.096.4.extract.trunc.i
  %not..i = xor i1 %i.ei, true
  %.sroa.015.0.i = zext i1 %not..i to i16
  %i.ej = zext i32 %.sroa.10111.0.copyload to i64
  %i.ek = zext i32 %.sroa.11112.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0227.3.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5297
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.bi, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc172.i unwind label %bb.be, !noalias !5286

.noexc172.i:                                      ; preds = %bb.bc
  %i.el = load i64, ptr %i.a, align 8, !range !7, !noalias !5297, !noundef !5
  %i.em = trunc nuw i64 %i.el to i1
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !range !8, !noalias !5297, !noundef !5 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.em, label %bb.bd, label %bb.bg, !prof !9

bb.bd:                                            ; preds = %.noexc172.i
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !5297
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.eo, i64 %i.eq) #38
          to label %.noexc173.i unwind label %bb.be, !noalias !5286

.noexc173.i:                                      ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bi, %bb.be
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.er, %bb.be ], [ %i.ez, %bb.bi ] ; 2 uses
  %i.es = icmp eq i64 %i.ap, 0
  br i1 %i.es, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i", label %bb.bf

bb.bf:                                            ; preds = %.body.i
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef range(i64 1, 0) %i.ap, i64 noundef 1) #30, !noalias !5286
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i"

bb.bg:                                            ; preds = %.noexc172.i
  %i.et = load ptr, ptr %i.ep, align 8, !noalias !5297, !nonnull !5, !noundef !5 ; 2 uses
  %i.eu = icmp ule i64 %i.bi, %i.eo
  call void @llvm.assume(i1 %i.eu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5297
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.et, ptr nonnull readonly align 1 %i.bh, i64 %i.bi, i1 false), !noalias !5298
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5279
  store i64 1, ptr %i.j, align 8, !noalias !5279
  %i.ev = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.ev, align 8, !noalias !5279
  %i.ew = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.eo, ptr %i.ew, align 8, !noalias !5279
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.et, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !5279
  %.sroa.5238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %i.bi, ptr %.sroa.5238.0..sroa_idx.i, align 8, !noalias !5279
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !5299
  %i.ex = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 129) 40, i64 noundef range(i64 1, 9) 8) #30, !noalias !5299 ; 3 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %bb.bh, label %bb.bk, !prof !42

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 40) #38
          to label %.noexc175.i unwind label %bb.bi, !noalias !5286

.noexc175.i:                                      ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %bb.bh
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..sync..ArcInner$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17he0e96128dfc6e0ddE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j) #39
          to label %.body.i unwind label %bb.bj, !noalias !5286

bb.bj:                                            ; preds = %bb.bi
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5286
  unreachable

bb.bk:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ex, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !5286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5279
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0229.0.i) ]
  %i.fb = zext i32 %.sroa.1994.0.copyload to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.n, i64 206
  store i8 %switch.select117.i, ptr %i.fc, align 2, !noalias !5279
  %i.fd = getelementptr inbounds nuw i8, ptr %i.n, i64 207
  store i8 %i.dk, ptr %i.fd, align 1, !noalias !5279
  %i.fe = getelementptr inbounds nuw i8, ptr %i.n, i64 202
  %i.ff = and i8 %i.ab, 1
  store i8 %i.ff, ptr %i.fe, align 2, !noalias !5279
  %i.fg = getelementptr inbounds nuw i8, ptr %i.n, i64 203
  %.lobit.i = lshr exact i16 %i.ac, 11
  %i.fh = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.fh, ptr %i.fg, align 1, !noalias !5279
  %i.fi = getelementptr inbounds nuw i8, ptr %i.n, i64 204
  %3 = lshr i8 %i.ab, 3
  %i.fj = and i8 %3, 1
  store i8 %i.fj, ptr %i.fi, align 4, !noalias !5279
  %i.fk = getelementptr inbounds nuw i8, ptr %i.n, i64 184 ; 2 uses
  store i16 %switch.select123.i, ptr %i.fk, align 8, !noalias !5279
  %i.fl = getelementptr inbounds nuw i8, ptr %i.n, i64 186 ; 2 uses
  store i16 %i.dl, ptr %i.fl, align 2, !noalias !5279
  store i64 0, ptr %i.n, align 8, !noalias !5279
  %i.fm = getelementptr inbounds nuw i8, ptr %i.n, i64 196
  store i16 %.sroa.015.0.i, ptr %i.fm, align 4, !noalias !5279
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 198
  store i16 %.sroa.096.2.extract.trunc.i, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !5279
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  store i16 %.sroa.616.0.i, ptr %.sroa.616.0..sroa_idx.i, align 8, !noalias !5279
  %i.fn = getelementptr inbounds nuw i8, ptr %i.n, i64 188
  store i32 %.sroa.9110.0.copyload, ptr %i.fn, align 4, !noalias !5279
  %i.fo = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  store i64 %i.ej, ptr %i.fo, align 8, !noalias !5279
  %i.fp = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  store i64 %i.ek, ptr %i.fp, align 8, !noalias !5279
  %i.fq = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store ptr %.sroa.0227.3.i, ptr %i.fq, align 8, !noalias !5279
  %i.fr = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store i64 %.sroa.8.3.i, ptr %i.fr, align 8, !noalias !5279
  %i.fs = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store ptr %i.ao, ptr %i.fs, align 8, !noalias !5279
  %i.ft = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store i64 %i.ap, ptr %i.ft, align 8, !noalias !5279
  %i.fu = getelementptr inbounds nuw i8, ptr %i.n, i64 128 ; 5 uses
  store ptr %i.ex, ptr %i.fu, align 8, !noalias !5279
  %i.fv = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  store ptr null, ptr %i.fv, align 8, !noalias !5279
  %i.fw = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store ptr %.sroa.0229.0.i, ptr %i.fw, align 8, !noalias !5279
  %i.fx = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  store i64 %.sroa.10.0.i, ptr %i.fx, align 8, !noalias !5279
  %i.fy = getelementptr inbounds nuw i8, ptr %i.n, i64 144 ; 3 uses
  store i64 %i.fb, ptr %i.fy, align 8, !noalias !5279
  %i.fz = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 0, ptr %i.fz, align 8, !noalias !5279
  %i.ga = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  store i64 %.val38, ptr %i.ga, align 8, !noalias !5279
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  store i32 3, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !5279
  %i.gb = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  store i32 %.sroa.18.0.copyload, ptr %i.gb, align 8, !noalias !5279
  %i.gc = getelementptr inbounds nuw i8, ptr %i.n, i64 205
  store i8 0, ptr %i.gc, align 1, !noalias !5279
  %i.gd = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  store i16 0, ptr %i.gd, align 8, !noalias !5279
  %i.ge = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  store i64 0, ptr %i.ge, align 8, !noalias !5279
  %i.gf = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  store i64 0, ptr %i.gf, align 8, !noalias !5279
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !5279
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 0, ptr %.sroa.526.0..sroa_idx.i, align 8, !noalias !5279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5279
  invoke void @_ZN3zip4read17parse_extra_field17hceeea57fa34f3f03E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(208) %i.n)
          to label %bb.bm unwind label %bb.bl, !noalias !5286

.body178.i:                                       ; preds = %bb.bw, %bb.br, %bb.bl
  %.pn.i = phi { ptr, i32 } [ %i.gq, %bb.br ], [ %i.gv, %bb.bw ], [ %i.gg, %bb.bl ]
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17ha3610e895df8fcecE"(ptr noalias noundef align 8 dereferenceable(208) %i.n) #39
          to label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i" unwind label %bb.cg, !noalias !5286

bb.bl:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %.thread399.i, %bb.bk
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body178.i

bb.bm:                                            ; preds = %bb.bk
  %i.gh = load i64, ptr %i.m, align 8, !range !43, !noalias !5279, !noundef !5 ; 4 uses
  %.not101.i = icmp eq i64 %i.gh, -9223372036854775802
  br i1 %.not101.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gi = icmp ne i64 %i.gh, -9223372036854775806
  call void @llvm.assume(i1 %i.gi)
  %i.gj = icmp eq i64 %i.gh, -9223372036854775807
  br i1 %i.gj, label %.thread399.i, label %bb.bt

bb.bo:                                            ; preds = %bb.bm
  %i.gk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !noalias !5279, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5300)
  %i.gm = load ptr, ptr %i.fu, align 8, !alias.scope !5300, !noalias !5279, !noundef !5 ; 2 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.go = atomicrmw sub ptr %i.gm, i64 1 release, align 8, !noalias !5301
  %i.gp = icmp eq i64 %i.go, 1
  br i1 %i.gp, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h201a8d4bcd9d0331E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fu)
          to label %bb.bs unwind label %bb.br, !noalias !5286

bb.br:                                            ; preds = %bb.bq
  %i.gq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.gl, ptr %i.fu, align 8, !noalias !5279
  br label %.body178.i

bb.bs:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  store ptr %i.gl, ptr %i.fu, align 8, !noalias !5279
  %.pre.i = load i64, ptr %i.m, align 8, !range !43, !noalias !5279
  %.pre.fr.i = freeze i64 %.pre.i                 ; 5 uses
  %.not102.i = icmp eq i64 %.pre.fr.i, -9223372036854775802
  br i1 %.not102.i, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i", label %bb.bu

bb.bt:                                            ; preds = %bb.bn
  %.sroa.19.8..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.19.8.copyload80 = load i64, ptr %.sroa.19.8..sroa_idx79, align 8, !noalias !5302
  %.sroa.24.8..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.24.8.copyload83 = load i64, ptr %.sroa.24.8..sroa_idx82, align 8, !noalias !5302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5279
  br label %bb.cc

bb.bu:                                            ; preds = %bb.bs
  %i.gr = icmp ne i64 %.pre.fr.i, -9223372036854775806
  call void @llvm.assume(i1 %i.gr)
  %i.gs = icmp ugt i64 %.pre.fr.i, -9223372036854775808
  br i1 %i.gs, label %bb.bv, label %.thread400.i

bb.bv:                                            ; preds = %bb.bu
  switch i64 %.pre.fr.i, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" [
    i64 -9223372036854775807, label %.thread399.i
    i64 -9223372036854775806, label %.thread400.i.thread
  ]

.thread399.i:                                     ; preds = %bb.bv, %bb.bn
  %i.gt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val.i.i = load ptr, ptr %i.gt, align 8, !alias.scope !5303, !noalias !5279, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i)
          to label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" unwind label %bb.bl, !noalias !5286

.thread400.i:                                     ; preds = %bb.bu
  %i.gu = icmp eq i64 %.pre.fr.i, -9223372036854775808
  br i1 %i.gu, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i", label %.thread400.i.thread

.thread400.i.thread:                              ; preds = %bb.bv, %.thread400.i
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" unwind label %bb.bw, !noalias !5286

bb.bw:                                            ; preds = %.thread400.i.thread
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body178.i unwind label %bb.bx, !noalias !5286

bb.bx:                                            ; preds = %bb.bw
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5286
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i": ; preds = %.thread400.i.thread
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" unwind label %bb.bl, !noalias !5286

"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %.thread400.i, %.thread399.i, %bb.bv, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5279
  %i.gx = load i16, ptr %i.fk, align 8, !range !44, !noalias !5279, !noundef !5
  %i.gy = icmp eq i16 %i.gx, 2
  %i.gz = load i16, ptr %i.fl, align 2, !noalias !5279
  %i.ha = icmp eq i16 %i.gz, 99
  %or.cond.i = select i1 %i.gy, i1 %i.ha, i1 false
  %i.hb = load i16, ptr %i.gd, align 8, !range !44, !noalias !5279
  %.not103.i = icmp eq i16 %i.hb, 0
  %or.cond119.i = select i1 %or.cond.i, i1 %.not103.i, i1 false
  br i1 %or.cond119.i, label %bb.cc, label %bb.by

bb.by:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i"
  %i.hc = load i64, ptr %i.fy, align 8, !noalias !5279, !noundef !5 ; 2 uses
  %i.hd = add i64 %i.hc, %i.z                     ; 2 uses
  %.not104.i = icmp ult i64 %i.hd, %i.hc
  br i1 %.not104.i, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i64 %i.hd, ptr %i.fy, align 8, !noalias !5279
  %.sroa.074.0.copyload = load i64, ptr %i.n, align 8, !noalias !5302 ; 2 uses
  %.sroa.1175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.1175.0.copyload = load i64, ptr %.sroa.1175.0..sroa_idx, align 8, !noalias !5302 ; 2 uses
  %.sroa.19.0.copyload = load i64, ptr %i.fz, align 8, !noalias !5302 ; 2 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !noalias !5302 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.26, ptr noundef nonnull align 8 dereferenceable(176) %i.gf, i64 176, i1 false), !noalias !5302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5279
  %i.he = trunc nuw i8 %.sroa.047.3.i to i1
  %i.hf = icmp ne i64 %i.cb, 0
  %or.cond369.not.i = and i1 %i.hf, %i.he
  br i1 %or.cond369.not.i, label %bb.cb, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i": ; preds = %bb.cb, %bb.bz
  %i.hg = icmp eq i64 %i.bi, 0
  br i1 %i.hg, label %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit, label %bb.ca

bb.ca:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i"
end_hunk_1
begin_hunk_2_@_ZN3zip4read26central_header_to_zip_file17h8187fee2eb005a6cE:bb.a
  br i1 %i.hn, label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i", label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0227.1323.i) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0227.1323.i, i64 noundef range(i64 1, 0) %.sroa.8.1322.i, i64 noundef 1) #30, !noalias !5286
  br label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i"

bb.cl:                                            ; preds = %.thread294.i, %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i"
  %.pn108.pn.pn307.i = phi { ptr, i32 } [ %i.cl, %.thread294.i ], [ %.pn108.pn.pn.i, %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i" ] ; 2 uses
  %.sroa.050.4306.i = phi i1 [ true, %.thread294.i ], [ %.sroa.050.4.i, %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i" ] ; 2 uses
  %i.ho = icmp eq i64 %i.cb, 0
  br i1 %i.ho, label %.body161.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ca, i64 noundef range(i64 1, 0) %i.cb, i64 noundef 1) #30, !noalias !5286
  br label %.body161.i

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i": ; preds = %bb.ce, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit192.i"
  %i.hp = icmp eq i64 %i.ap, 0
  %or.cond366.i = or i1 %i.hp, %.not.i157.not.i
  br i1 %or.cond366.i, label %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit.thread, label %bb.aa

.thread.i:                                        ; preds = %bb.s, %bb.r, %bb.n, %bb.m
  %.pn114274.i = phi { ptr, i32 } [ %.pn112.i, %bb.r ], [ %i.bn, %bb.s ], [ %i.bk, %bb.n ], [ %i.bk, %bb.m ] ; 2 uses
  %i.hq = icmp eq i64 %i.ap, 0
  br i1 %i.hq, label %common.resume, label %common.resume.sink.split.i

_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit.thread: ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i", %bb.aa, %bb.t, %bb.j
  %.sroa.24.3.ph = phi i64 [ undef, %bb.j ], [ undef, %bb.t ], [ %.sroa.24.0, %bb.aa ], [ %.sroa.24.1, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i" ]
  %.sroa.19.3.ph = phi i64 [ %i.au, %bb.j ], [ %i.bo, %bb.t ], [ %.sroa.19.0, %bb.aa ], [ %.sroa.19.1, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i" ]
  %.sroa.1175.3.ph = phi i64 [ -9223372036854775807, %bb.j ], [ -9223372036854775807, %bb.t ], [ %.sroa.1175.0, %bb.aa ], [ %.sroa.1175.1, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5279
  br label %bb.cn

_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit: ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i", %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5279
  %i.hr = icmp eq i64 %.sroa.074.0.copyload, 2
  br i1 %i.hr, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit.thread, %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit
  %.sroa.1175.3149 = phi i64 [ %.sroa.1175.3.ph, %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit.thread ], [ %.sroa.1175.0.copyload, %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit ]
  %.sroa.19.3148 = phi i64 [ %.sroa.19.3.ph, %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit.thread ], [ %.sroa.19.0.copyload, %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit ]
  %.sroa.24.3147 = phi i64 [ %.sroa.24.3.ph, %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit.thread ], [ %.sroa.24.0.copyload, %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26)
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.1175.3149, ptr %i.hs, align 8
  %.sroa.2141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.19.3148, ptr %.sroa.2141.0..sroa_idx, align 8
  %.sroa.3142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.24.3147, ptr %.sroa.3142.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.cu

bb.co:                                            ; preds = %bb.cp
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17ha3610e895df8fcecE"(ptr noalias noundef align 8 dereferenceable(208) %i.r) #39
          to label %common.resume unwind label %bb.cv

bb.cp:                                            ; preds = %_ZN3zip4read32central_header_to_zip_file_inner17h3d7e2515ea5bb786E.exit
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.26, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26)
  store i64 %.sroa.074.0.copyload, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.1175.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.19.0.copyload, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %.sroa.24.0.copyload, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.val = load i64, ptr %i.t, align 8, !noundef !5
  %i.hu = invoke { i64, ptr } @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Seek$GT$4seek17h6654b42bc96c228bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %.val)
          to label %bb.cq unwind label %bb.co     ; 2 uses

bb.cq:                                            ; preds = %bb.cp
  %i.hv = extractvalue { i64, ptr } %i.hu, 0
  %i.hw = trunc nuw i64 %i.hv to i1
  br i1 %i.hw, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.hx = extractvalue { i64, ptr } %i.hu, 1
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775807, ptr %i.hy, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.hx, ptr %.sroa.433.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17ha3610e895df8fcecE"(ptr noalias noundef align 8 dereferenceable(208) %i.r)
  br label %bb.cu

bb.cs:                                            ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.r, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cu, %bb.b, %bb.cs
  ret void

bb.cu:                                            ; preds = %bb.cr, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ct

bb.cv:                                            ; preds = %bb.co
  %i.hz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3zip4read26central_header_to_zip_file17hcebf9d4b0209b553E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 8 captures(none) dereferenceable(208) %0, ptr noalias noundef align 4 dereferenceable(4) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = alloca [208 x i8], align 8               ; 42 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.26 = alloca [176 x i8], align 8          ; 5 uses
  %i.r = alloca [208 x i8], align 8               ; 11 uses
  %i.s = alloca [48 x i8], align 8                ; 16 uses
  %i.t = tail call { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Seek$GT$15stream_position17h284bf1a6bd975505E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %1) ; 2 uses
  %i.u = extractvalue { i64, ptr } %i.t, 0
  %i.v = extractvalue { i64, ptr } %i.t, 1        ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = trunc nuw i64 %i.u to i1
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775807, ptr %i.y, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %.sroa.424.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.cx

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_ZN3zip4spec14FixedSizeBlock5parse17h9b82b96b55494d57E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.s, ptr noalias noundef nonnull align 4 dereferenceable(4) %1)
  %i.z = load i8, ptr %i.s, align 8, !range !11, !noundef !5
  %i.aa = trunc nuw i8 %i.z to i1
  %.sroa.5105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 9
  %i.ab = load <4 x i16>, ptr %.sroa.5105.0..sroa_idx, align 1 ; 5 uses
  %.sroa.9109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 17
  %.sroa.9109.0.copyload = load i32, ptr %.sroa.9109.0..sroa_idx, align 1 ; 2 uses
  %.sroa.10110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 21
  %.sroa.10110.0.copyload = load i32, ptr %.sroa.10110.0..sroa_idx, align 1 ; 2 uses
  %.sroa.11111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 25
  %.sroa.11111.0.copyload = load i32, ptr %.sroa.11111.0..sroa_idx, align 1 ; 2 uses
  %.sroa.12112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 29
  %.sroa.12112.0.copyload = load i16, ptr %.sroa.12112.0..sroa_idx, align 1 ; 2 uses
  %.sroa.13113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 31 ; 2 uses
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0104.0.copyload = load i8, ptr %i.ac, align 8
  %.sroa.13113.0.copyload = load i8, ptr %.sroa.13113.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0104.0.copyload, ptr %i.ad, align 8
  %.sroa.2115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store <4 x i16> %i.ab, ptr %.sroa.2115.0..sroa_idx, align 1
  %.sroa.6119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i32 %.sroa.9109.0.copyload, ptr %.sroa.6119.0..sroa_idx, align 1
  %.sroa.7120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i32 %.sroa.10110.0.copyload, ptr %.sroa.7120.0..sroa_idx, align 1
  %.sroa.8121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i32 %.sroa.11111.0.copyload, ptr %.sroa.8121.0..sroa_idx, align 1
  %.sroa.9122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i16 %.sroa.12112.0.copyload, ptr %.sroa.9122.0..sroa_idx, align 1
  %.sroa.10123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.13113.0.copyload, ptr %.sroa.10123.0..sroa_idx, align 1
  store i64 2, ptr %0, align 8
  br label %bb.cx

bb.e:                                             ; preds = %bb.c
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  %.sroa.584.0.copyload = load i16, ptr %.sroa.584.0..sroa_idx, align 1 ; 2 uses
  %.sroa.15.0.copyload = load i16, ptr %.sroa.13113.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 33
  %.sroa.16.0.copyload = load i16, ptr %.sroa.16.0..sroa_idx, align 1
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 39
  %.sroa.18.0.copyload = load i32, ptr %.sroa.18.0..sroa_idx, align 1
  %.sroa.1993.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 43
  %.sroa.1993.0.copyload = load i32, ptr %.sroa.1993.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26)
  %i.ae = load i64, ptr %2, align 8, !noundef !5
  %i.af = extractelement <4 x i16> %i.ab, i64 0   ; 2 uses
  %i.ag = trunc i16 %i.af to i8                   ; 2 uses
  %i.ah = and i16 %i.af, 2048                     ; 2 uses
  %.not99.i = icmp eq i16 %i.ah, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5340
  %i.ai = zext i16 %.sroa.12112.0.copyload to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5341
  call void @llvm.experimental.noalias.scope.decl(metadata !5342)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5343
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, i64 noundef range(i64 0, 65536) %i.ai, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !5343
  %i.aj = load i64, ptr %i.h, align 8, !range !7, !noalias !5343, !noundef !5
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !8, !noalias !5343, !noundef !5 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.ak, label %bb.f, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i", !prof !9

bb.f:                                             ; preds = %bb.e
  %i.ao = load i64, ptr %i.an, align 8, !noalias !5343
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.am, i64 %i.ao) #38, !noalias !5344
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i": ; preds = %bb.e
  %i.ap = load ptr, ptr %i.an, align 8, !noalias !5343, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5343
  store i64 %i.am, ptr %i.i, align 8, !alias.scope !5342, !noalias !5341
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !alias.scope !5342, !noalias !5341
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.ai, ptr %i.ar, align 8, !alias.scope !5342, !noalias !5341
  %i.as = call { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !5345 ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.as, 0      ; 9 uses
  %i.au = extractvalue { ptr, i64 } %i.as, 1      ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5341
  %i.av = invoke noundef ptr @_ZN3std2io4Read10read_exact17h8894966b6d04c288E(ptr noalias noundef nonnull align 4 dereferenceable(4) %1, ptr noalias noundef nonnull align 1 %i.at, i64 noundef %i.au)
          to label %bb.i unwind label %bb.g, !noalias !5346 ; 2 uses

bb.g:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i"
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = icmp eq i64 %i.au, 0
  br i1 %i.ax, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  br label %common.resume.sink.split.i

bb.i:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i"
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = icmp eq i64 %i.au, 0
  br i1 %i.ay, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef range(i64 1, 0) %i.au, i64 noundef 1) #30, !noalias !5346
  br label %bb.l

common.resume.sink.split.i:                       ; preds = %.thread.i, %bb.h
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.aw, %bb.h ], [ %.pn114274.i, %.thread.i ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef range(i64 1, 0) %i.au, i64 noundef 1) #30, !noalias !5347
  br label %common.resume

common.resume:                                    ; preds = %bb.cr, %bb.g, %common.resume.sink.split.i, %bb.t, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %i.aw, %bb.g ], [ %.pn114274.i, %.thread.i ], [ %.pn112.i, %bb.t ], [ %i.hz, %bb.cr ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.az = ptrtoint ptr %i.av to i64
  br label %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit.thread

bb.m:                                             ; preds = %bb.i
  store ptr %i.at, ptr %i.q, align 8, !noalias !5340
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.au, ptr %i.ba, align 8, !noalias !5340
  %i.bb = zext i16 %.sroa.15.0.copyload to i64    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5348
  call void @llvm.experimental.noalias.scope.decl(metadata !5349)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5350
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, i64 noundef range(i64 0, 65536) %i.bb, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.u, !noalias !5347

.noexc.i:                                         ; preds = %bb.m
  %i.bc = load i64, ptr %i.f, align 8, !range !7, !noalias !5350, !noundef !5
  %i.bd = trunc nuw i64 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !8, !noalias !5350, !noundef !5 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.bd, label %bb.n, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i147.i", !prof !9

bb.n:                                             ; preds = %.noexc.i
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !5350
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.bf, i64 %i.bh) #38
          to label %.noexc150.i unwind label %bb.u, !noalias !5347

.noexc150.i:                                      ; preds = %bb.n
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i147.i": ; preds = %.noexc.i
  %i.bi = load ptr, ptr %i.bg, align 8, !noalias !5350, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5350
  store i64 %i.bf, ptr %i.g, align 8, !alias.scope !5349, !noalias !5348
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !alias.scope !5349, !noalias !5348
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.bb, ptr %i.bk, align 8, !alias.scope !5349, !noalias !5348
  %i.bl = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc151.i unwind label %bb.u, !noalias !5347 ; 2 uses

.noexc151.i:                                      ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i147.i"
  %i.bm = extractvalue { ptr, i64 } %i.bl, 0      ; 8 uses
  %i.bn = extractvalue { ptr, i64 } %i.bl, 1      ; 15 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5348
  %i.bo = invoke noundef ptr @_ZN3std2io4Read10read_exact17h8894966b6d04c288E(ptr noalias noundef nonnull align 4 dereferenceable(4) %1, ptr noalias noundef nonnull align 1 %i.bm, i64 noundef %i.bn)
          to label %bb.q unwind label %bb.o, !noalias !5351 ; 2 uses

bb.o:                                             ; preds = %.noexc151.i
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = icmp eq i64 %i.bn, 0
  br i1 %i.bq, label %.thread.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef range(i64 1, 0) %i.bn, i64 noundef 1) #30, !noalias !5351
  br label %.thread.i

bb.q:                                             ; preds = %.noexc151.i
  %.not.i149.i = icmp eq ptr %i.bo, null
  br i1 %.not.i149.i, label %_ZN3zip4read31read_variable_length_byte_field17h9f2a00ef8dd8df06E.exit154.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = icmp eq i64 %i.bn, 0
  br i1 %i.br, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef range(i64 1, 0) %i.bn, i64 noundef 1) #30, !noalias !5351
  br label %bb.v

bb.t:                                             ; preds = %bb.ad, %.body161.i
  br i1 %.sroa.050.2.i, label %.thread.i, label %common.resume

bb.u:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i147.i", %bb.n, %bb.m
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.v:                                             ; preds = %bb.s, %bb.r
  %i.bt = ptrtoint ptr %i.bo to i64               ; 2 uses
  %.old.i = icmp eq i64 %i.au, 0
  br i1 %.old.i, label %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit.thread, label %bb.ac

_ZN3zip4read31read_variable_length_byte_field17h9f2a00ef8dd8df06E.exit154.i: ; preds = %bb.q
  %i.bu = zext i16 %.sroa.16.0.copyload to i64    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5352
  call void @llvm.experimental.noalias.scope.decl(metadata !5353)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5354
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, i64 noundef range(i64 0, 65536) %i.bu, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc158.i unwind label %bb.ae, !noalias !5347

.noexc158.i:                                      ; preds = %_ZN3zip4read31read_variable_length_byte_field17h9f2a00ef8dd8df06E.exit154.i
  %i.bv = load i64, ptr %i.d, align 8, !range !7, !noalias !5354, !noundef !5
  %i.bw = trunc nuw i64 %i.bv to i1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !8, !noalias !5354, !noundef !5 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.bw, label %bb.w, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i155.i", !prof !9

bb.w:                                             ; preds = %.noexc158.i
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !5354
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.by, i64 %i.ca) #38
          to label %.noexc159.i unwind label %bb.ae, !noalias !5347

.noexc159.i:                                      ; preds = %bb.w
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i155.i": ; preds = %.noexc158.i
  %i.cb = load ptr, ptr %i.bz, align 8, !noalias !5354, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5354
  store i64 %i.by, ptr %i.e, align 8, !alias.scope !5353, !noalias !5352
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.cb, ptr %i.cc, align 8, !alias.scope !5353, !noalias !5352
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.bu, ptr %i.cd, align 8, !alias.scope !5353, !noalias !5352
  %i.ce = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc160.i unwind label %bb.ae, !noalias !5347 ; 2 uses

.noexc160.i:                                      ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i155.i"
  %i.cf = extractvalue { ptr, i64 } %i.ce, 0      ; 9 uses
  %i.cg = extractvalue { ptr, i64 } %i.ce, 1      ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5352
  %i.ch = invoke noundef ptr @_ZN3std2io4Read10read_exact17h8894966b6d04c288E(ptr noalias noundef nonnull align 4 dereferenceable(4) %1, ptr noalias noundef nonnull align 1 %i.cf, i64 noundef %i.cg)
          to label %bb.z unwind label %bb.x, !noalias !5355 ; 2 uses

bb.x:                                             ; preds = %.noexc160.i
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = icmp eq i64 %i.cg, 0
  br i1 %i.cj, label %.body161.i, label %bb.y

bb.y:                                             ; preds = %bb.x
end_hunk_2
begin_hunk_3_@_ZN3zip4read26central_header_to_zip_file17hcebf9d4b0209b553E:bb.a
bb.at:                                            ; preds = %bb.bb, %bb.as
  %.pn375.i = phi { ptr, i64 } [ %i.cw, %bb.as ], [ %.pn374.i, %bb.bb ]
  %.sroa.0229.0.i = phi ptr [ %i.dn, %bb.as ], [ %.sroa.0229.1.i, %bb.bb ] ; 4 uses
  %.sroa.8.3.i = phi i64 [ %i.cv, %bb.as ], [ %.sroa.8.0.i, %bb.bb ] ; 4 uses
  %.sroa.0227.3.i = phi ptr [ %i.cu, %bb.as ], [ %.sroa.0227.0.i, %bb.bb ] ; 4 uses
  %.sroa.047.3.i = phi i8 [ 0, %bb.as ], [ 1, %bb.bb ] ; 6 uses
  %.sroa.10.0.i = extractvalue { ptr, i64 } %.pn375.i, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5340
  %i.do = lshr i16 %.sroa.584.0.copyload, 8       ; 2 uses
  %switch.selectcmp.i = icmp eq i16 %i.do, 3
  %switch.select.i = select i1 %switch.selectcmp.i, i8 3, i8 4
  %switch.selectcmp116.i = icmp eq i16 %i.do, 0
  %switch.select117.i = select i1 %switch.selectcmp116.i, i8 0, i8 %switch.select.i
  %i.dp = trunc i16 %.sroa.584.0.copyload to i8
  %i.dq = extractelement <4 x i16> %i.ab, i64 1   ; 3 uses
  %switch.selectcmp120.i = icmp eq i16 %i.dq, 8
  %switch.select121.i = select i1 %switch.selectcmp120.i, i16 1, i16 2
  %switch.selectcmp122.i = icmp eq i16 %i.dq, 0
  %switch.select123.i = select i1 %switch.selectcmp122.i, i16 0, i16 %switch.select121.i
  %i.dr = extractelement <4 x i16> %i.ab, i64 2
  %i.ds = extractelement <4 x i16> %i.ab, i64 3
  %i.dt = invoke i48 @_ZN3zip5types8DateTime14try_from_msdos17hc9a3df637fa4bd83E(i16 noundef %i.ds, i16 noundef %i.dr)
          to label %bb.be unwind label %.thread349.i, !noalias !5347 ; 3 uses

.thread349.i:                                     ; preds = %bb.at
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.thread327.i

bb.au:                                            ; preds = %bb.am
  %i.dv = extractvalue { ptr, i64 } %i.cy, 0
  br label %bb.ar

bb.av:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5340
  %i.dw = load i64, ptr %i.o, align 8, !range !8, !noalias !5340, !noundef !5
  %.not98.i = icmp eq i64 %i.dw, -9223372036854775808
  br i1 %.not98.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !5340
  %i.dx = invoke { ptr, i64 } @"_ZN5alloc6string107_$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$str$GT$$GT$4from17h757f7de970d115c2E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.bc unwind label %.thread308.i, !noalias !5347 ; 2 uses

bb.ax:                                            ; preds = %bb.av
  %i.dy = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !noalias !5340, !nonnull !5, !align !15, !noundef !5
  %i.ea = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !5340, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5357
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.eb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc168.i unwind label %.thread308.i, !noalias !5347

.noexc168.i:                                      ; preds = %bb.ax
  %i.ec = load i64, ptr %i.b, align 8, !range !7, !noalias !5357, !noundef !5
  %i.ed = trunc nuw i64 %i.ec to i1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !range !8, !noalias !5357, !noundef !5 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ed, label %bb.ay, label %bb.az, !prof !9

bb.ay:                                            ; preds = %.noexc168.i
  %i.eh = load i64, ptr %i.eg, align 8, !noalias !5357
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ef, i64 %i.eh) #38
          to label %.noexc169.i unwind label %.thread308.i, !noalias !5347

.noexc169.i:                                      ; preds = %bb.ay
  unreachable

bb.az:                                            ; preds = %.noexc168.i
  %i.ei = load ptr, ptr %i.eg, align 8, !noalias !5357, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5357
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ei, ptr nonnull readonly align 1 %i.dz, i64 %i.eb, i1 false), !noalias !5347
  %i.ej = invoke { ptr, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8into_box17hcb107486f3d6b998E"(i64 noundef %i.ef, ptr noundef nonnull %i.ei, i64 noundef %i.eb)
          to label %bb.ba unwind label %.thread308.i, !noalias !5347 ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.ek = extractvalue { ptr, i64 } %i.ej, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ek) ]
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bc, %bb.ba
  %.pn374.i = phi { ptr, i64 } [ %i.ej, %bb.ba ], [ %i.dx, %bb.bc ]
  %.sroa.0229.1.i = phi ptr [ %i.ek, %bb.ba ], [ %i.el, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5340
  br label %bb.at

bb.bc:                                            ; preds = %bb.aw
  %i.el = extractvalue { ptr, i64 } %i.dx, 0
  br label %bb.bb

bb.bd:                                            ; preds = %bb.ce
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i"

bb.be:                                            ; preds = %bb.at
  %i.en = trunc i48 %i.dt to i1                   ; 2 uses
  %.sroa.096.4.extract.shift.i = lshr i48 %i.dt, 32
  %.sroa.096.4.extract.trunc.i = trunc nuw i48 %.sroa.096.4.extract.shift.i to i16
  %.sroa.096.2.extract.shift.i = lshr i48 %i.dt, 16
  %.sroa.096.2.extract.trunc.i = trunc i48 %.sroa.096.2.extract.shift.i to i16
  %.sroa.616.0.i = select i1 %i.en, i16 undef, i16 %.sroa.096.4.extract.trunc.i
  %not..i = xor i1 %i.en, true
  %.sroa.015.0.i = zext i1 %not..i to i16
  %i.eo = zext i32 %.sroa.10110.0.copyload to i64
  %i.ep = zext i32 %.sroa.11111.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0227.3.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5358
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.bn, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc172.i unwind label %bb.bg, !noalias !5347

.noexc172.i:                                      ; preds = %bb.be
  %i.eq = load i64, ptr %i.a, align 8, !range !7, !noalias !5358, !noundef !5
  %i.er = trunc nuw i64 %i.eq to i1
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.et = load i64, ptr %i.es, align 8, !range !8, !noalias !5358, !noundef !5 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.er, label %bb.bf, label %bb.bi, !prof !9

bb.bf:                                            ; preds = %.noexc172.i
  %i.ev = load i64, ptr %i.eu, align 8, !noalias !5358
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.et, i64 %i.ev) #38
          to label %.noexc173.i unwind label %bb.bg, !noalias !5347

.noexc173.i:                                      ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bk, %bb.bg
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ew, %bb.bg ], [ %i.fe, %bb.bk ] ; 2 uses
  %i.ex = icmp eq i64 %i.au, 0
  br i1 %i.ex, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i", label %bb.bh

bb.bh:                                            ; preds = %.body.i
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef range(i64 1, 0) %i.au, i64 noundef 1) #30, !noalias !5347
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i"

bb.bi:                                            ; preds = %.noexc172.i
  %i.ey = load ptr, ptr %i.eu, align 8, !noalias !5358, !nonnull !5, !noundef !5 ; 2 uses
  %i.ez = icmp ule i64 %i.bn, %i.et
  call void @llvm.assume(i1 %i.ez)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5358
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ey, ptr nonnull readonly align 1 %i.bm, i64 %i.bn, i1 false), !noalias !5359
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5340
  store i64 1, ptr %i.j, align 8, !noalias !5340
  %i.fa = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.fa, align 8, !noalias !5340
  %i.fb = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.et, ptr %i.fb, align 8, !noalias !5340
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.ey, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !5340
  %.sroa.5238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %i.bn, ptr %.sroa.5238.0..sroa_idx.i, align 8, !noalias !5340
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !5360
  %i.fc = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 129) 40, i64 noundef range(i64 1, 9) 8) #30, !noalias !5360 ; 3 uses
  %i.fd = icmp eq ptr %i.fc, null
  br i1 %i.fd, label %bb.bj, label %bb.bm, !prof !42

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 40) #38
          to label %.noexc175.i unwind label %bb.bk, !noalias !5347

.noexc175.i:                                      ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bj
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..sync..ArcInner$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17he0e96128dfc6e0ddE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j) #39
          to label %.body.i unwind label %bb.bl, !noalias !5347

bb.bl:                                            ; preds = %bb.bk
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5347
  unreachable

bb.bm:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fc, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !5347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5340
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0229.0.i) ]
  %i.fg = zext i32 %.sroa.1993.0.copyload to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.n, i64 206
  store i8 %switch.select117.i, ptr %i.fh, align 2, !noalias !5340
  %i.fi = getelementptr inbounds nuw i8, ptr %i.n, i64 207
  store i8 %i.dp, ptr %i.fi, align 1, !noalias !5340
  %i.fj = getelementptr inbounds nuw i8, ptr %i.n, i64 202
  %i.fk = and i8 %i.ag, 1
  store i8 %i.fk, ptr %i.fj, align 2, !noalias !5340
  %i.fl = getelementptr inbounds nuw i8, ptr %i.n, i64 203
  %.lobit.i = lshr exact i16 %i.ah, 11
  %i.fm = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.fm, ptr %i.fl, align 1, !noalias !5340
  %i.fn = getelementptr inbounds nuw i8, ptr %i.n, i64 204
  %3 = lshr i8 %i.ag, 3
  %i.fo = and i8 %3, 1
  store i8 %i.fo, ptr %i.fn, align 4, !noalias !5340
  %i.fp = getelementptr inbounds nuw i8, ptr %i.n, i64 184 ; 2 uses
  store i16 %switch.select123.i, ptr %i.fp, align 8, !noalias !5340
  %i.fq = getelementptr inbounds nuw i8, ptr %i.n, i64 186 ; 2 uses
  store i16 %i.dq, ptr %i.fq, align 2, !noalias !5340
  store i64 0, ptr %i.n, align 8, !noalias !5340
  %i.fr = getelementptr inbounds nuw i8, ptr %i.n, i64 196
  store i16 %.sroa.015.0.i, ptr %i.fr, align 4, !noalias !5340
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 198
  store i16 %.sroa.096.2.extract.trunc.i, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !5340
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  store i16 %.sroa.616.0.i, ptr %.sroa.616.0..sroa_idx.i, align 8, !noalias !5340
  %i.fs = getelementptr inbounds nuw i8, ptr %i.n, i64 188
  store i32 %.sroa.9109.0.copyload, ptr %i.fs, align 4, !noalias !5340
  %i.ft = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  store i64 %i.eo, ptr %i.ft, align 8, !noalias !5340
  %i.fu = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  store i64 %i.ep, ptr %i.fu, align 8, !noalias !5340
  %i.fv = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store ptr %.sroa.0227.3.i, ptr %i.fv, align 8, !noalias !5340
  %i.fw = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store i64 %.sroa.8.3.i, ptr %i.fw, align 8, !noalias !5340
  %i.fx = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store ptr %i.at, ptr %i.fx, align 8, !noalias !5340
  %i.fy = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store i64 %i.au, ptr %i.fy, align 8, !noalias !5340
  %i.fz = getelementptr inbounds nuw i8, ptr %i.n, i64 128 ; 5 uses
  store ptr %i.fc, ptr %i.fz, align 8, !noalias !5340
  %i.ga = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  store ptr null, ptr %i.ga, align 8, !noalias !5340
  %i.gb = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store ptr %.sroa.0229.0.i, ptr %i.gb, align 8, !noalias !5340
  %i.gc = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  store i64 %.sroa.10.0.i, ptr %i.gc, align 8, !noalias !5340
  %i.gd = getelementptr inbounds nuw i8, ptr %i.n, i64 144 ; 3 uses
  store i64 %i.fg, ptr %i.gd, align 8, !noalias !5340
  %i.ge = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 0, ptr %i.ge, align 8, !noalias !5340
  %i.gf = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  store i64 %i.w, ptr %i.gf, align 8, !noalias !5340
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  store i32 3, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !5340
  %i.gg = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  store i32 %.sroa.18.0.copyload, ptr %i.gg, align 8, !noalias !5340
  %i.gh = getelementptr inbounds nuw i8, ptr %i.n, i64 205
  store i8 0, ptr %i.gh, align 1, !noalias !5340
  %i.gi = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  store i16 0, ptr %i.gi, align 8, !noalias !5340
  %i.gj = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  store i64 0, ptr %i.gj, align 8, !noalias !5340
  %i.gk = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  store i64 0, ptr %i.gk, align 8, !noalias !5340
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !5340
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 0, ptr %.sroa.526.0..sroa_idx.i, align 8, !noalias !5340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5340
  invoke void @_ZN3zip4read17parse_extra_field17hceeea57fa34f3f03E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(208) %i.n)
          to label %bb.bo unwind label %bb.bn, !noalias !5347

.body178.i:                                       ; preds = %bb.by, %bb.bt, %bb.bn
  %.pn.i = phi { ptr, i32 } [ %i.gv, %bb.bt ], [ %i.ha, %bb.by ], [ %i.gl, %bb.bn ]
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17ha3610e895df8fcecE"(ptr noalias noundef align 8 dereferenceable(208) %i.n) #39
          to label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i" unwind label %bb.ci, !noalias !5347

bb.bn:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %.thread399.i, %bb.bm
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body178.i

bb.bo:                                            ; preds = %bb.bm
  %i.gm = load i64, ptr %i.m, align 8, !range !43, !noalias !5340, !noundef !5 ; 4 uses
  %.not101.i = icmp eq i64 %i.gm, -9223372036854775802
  br i1 %.not101.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gn = icmp ne i64 %i.gm, -9223372036854775806
  call void @llvm.assume(i1 %i.gn)
  %i.go = icmp eq i64 %i.gm, -9223372036854775807
  br i1 %i.go, label %.thread399.i, label %bb.bv

bb.bq:                                            ; preds = %bb.bo
  %i.gp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !5340, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5361)
  %i.gr = load ptr, ptr %i.fz, align 8, !alias.scope !5361, !noalias !5340, !noundef !5 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gt = atomicrmw sub ptr %i.gr, i64 1 release, align 8, !noalias !5362
  %i.gu = icmp eq i64 %i.gt, 1
  br i1 %i.gu, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h201a8d4bcd9d0331E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fz)
          to label %bb.bu unwind label %bb.bt, !noalias !5347

bb.bt:                                            ; preds = %bb.bs
  %i.gv = landingpad { ptr, i32 }
          cleanup
  store ptr %i.gq, ptr %i.fz, align 8, !noalias !5340
  br label %.body178.i

bb.bu:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  store ptr %i.gq, ptr %i.fz, align 8, !noalias !5340
  %.pre.i = load i64, ptr %i.m, align 8, !range !43, !noalias !5340
  %.pre.fr.i = freeze i64 %.pre.i                 ; 5 uses
  %.not102.i = icmp eq i64 %.pre.fr.i, -9223372036854775802
  br i1 %.not102.i, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i", label %bb.bw

bb.bv:                                            ; preds = %bb.bp
  %.sroa.19.8..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.19.8.copyload79 = load i64, ptr %.sroa.19.8..sroa_idx78, align 8, !noalias !5363
  %.sroa.24.8..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.24.8.copyload82 = load i64, ptr %.sroa.24.8..sroa_idx81, align 8, !noalias !5363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5340
  br label %bb.ce

bb.bw:                                            ; preds = %bb.bu
  %i.gw = icmp ne i64 %.pre.fr.i, -9223372036854775806
  call void @llvm.assume(i1 %i.gw)
  %i.gx = icmp ugt i64 %.pre.fr.i, -9223372036854775808
  br i1 %i.gx, label %bb.bx, label %.thread400.i

bb.bx:                                            ; preds = %bb.bw
  switch i64 %.pre.fr.i, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" [
    i64 -9223372036854775807, label %.thread399.i
    i64 -9223372036854775806, label %.thread400.i.thread
  ]

.thread399.i:                                     ; preds = %bb.bx, %bb.bp
  %i.gy = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val.i.i = load ptr, ptr %i.gy, align 8, !alias.scope !5364, !noalias !5340, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i)
          to label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" unwind label %bb.bn, !noalias !5347

.thread400.i:                                     ; preds = %bb.bw
  %i.gz = icmp eq i64 %.pre.fr.i, -9223372036854775808
  br i1 %i.gz, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i", label %.thread400.i.thread

.thread400.i.thread:                              ; preds = %bb.bx, %.thread400.i
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" unwind label %bb.by, !noalias !5347

bb.by:                                            ; preds = %.thread400.i.thread
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body178.i unwind label %bb.bz, !noalias !5347

bb.bz:                                            ; preds = %bb.by
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5347
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i": ; preds = %.thread400.i.thread
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" unwind label %bb.bn, !noalias !5347

"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %.thread400.i, %.thread399.i, %bb.bx, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5340
  %i.hc = load i16, ptr %i.fp, align 8, !range !44, !noalias !5340, !noundef !5
  %i.hd = icmp eq i16 %i.hc, 2
  %i.he = load i16, ptr %i.fq, align 2, !noalias !5340
  %i.hf = icmp eq i16 %i.he, 99
  %or.cond.i = select i1 %i.hd, i1 %i.hf, i1 false
  %i.hg = load i16, ptr %i.gi, align 8, !range !44, !noalias !5340
  %.not103.i = icmp eq i16 %i.hg, 0
  %or.cond119.i = select i1 %or.cond.i, i1 %.not103.i, i1 false
  br i1 %or.cond119.i, label %bb.ce, label %bb.ca

bb.ca:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i"
  %i.hh = load i64, ptr %i.gd, align 8, !noalias !5340, !noundef !5 ; 2 uses
  %i.hi = add i64 %i.hh, %i.ae                    ; 2 uses
  %.not104.i = icmp ult i64 %i.hi, %i.hh
  br i1 %.not104.i, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store i64 %i.hi, ptr %i.gd, align 8, !noalias !5340
  %.sroa.073.0.copyload = load i64, ptr %i.n, align 8, !noalias !5363 ; 2 uses
  %.sroa.1174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.1174.0.copyload = load i64, ptr %.sroa.1174.0..sroa_idx, align 8, !noalias !5363 ; 2 uses
  %.sroa.19.0.copyload = load i64, ptr %i.ge, align 8, !noalias !5363 ; 2 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !noalias !5363 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.26, ptr noundef nonnull align 8 dereferenceable(176) %i.gk, i64 176, i1 false), !noalias !5363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5340
  %i.hj = trunc nuw i8 %.sroa.047.3.i to i1
  %i.hk = icmp ne i64 %i.cg, 0
  %or.cond369.not.i = and i1 %i.hk, %i.hj
  br i1 %or.cond369.not.i, label %bb.cd, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i": ; preds = %bb.cd, %bb.cb
  %i.hl = icmp eq i64 %i.bn, 0
  br i1 %i.hl, label %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit, label %bb.cc

bb.cc:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i"
end_hunk_3
begin_hunk_4_@_ZN3zip4read26central_header_to_zip_file17hcebf9d4b0209b553E:bb.a
  br i1 %i.hs, label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i", label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0227.1323.i) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0227.1323.i, i64 noundef range(i64 1, 0) %.sroa.8.1322.i, i64 noundef 1) #30, !noalias !5347
  br label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i"

bb.cn:                                            ; preds = %.thread294.i, %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i"
  %.pn108.pn.pn307.i = phi { ptr, i32 } [ %i.cq, %.thread294.i ], [ %.pn108.pn.pn.i, %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i" ] ; 2 uses
  %.sroa.050.4306.i = phi i1 [ true, %.thread294.i ], [ %.sroa.050.4.i, %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i" ] ; 2 uses
  %i.ht = icmp eq i64 %i.cg, 0
  br i1 %i.ht, label %.body161.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef range(i64 1, 0) %i.cg, i64 noundef 1) #30, !noalias !5347
  br label %.body161.i

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i": ; preds = %bb.cg, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit192.i"
  %i.hu = icmp eq i64 %i.au, 0
  %or.cond366.i = or i1 %i.hu, %.not.i157.not.i
  br i1 %or.cond366.i, label %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit.thread, label %bb.ac

.thread.i:                                        ; preds = %bb.u, %bb.t, %bb.p, %bb.o
  %.pn114274.i = phi { ptr, i32 } [ %.pn112.i, %bb.t ], [ %i.bs, %bb.u ], [ %i.bp, %bb.p ], [ %i.bp, %bb.o ] ; 2 uses
  %i.hv = icmp eq i64 %i.au, 0
  br i1 %i.hv, label %common.resume, label %common.resume.sink.split.i

_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit.thread: ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i", %bb.ac, %bb.v, %bb.l
  %.sroa.24.3.ph = phi i64 [ undef, %bb.l ], [ undef, %bb.v ], [ %.sroa.24.0, %bb.ac ], [ %.sroa.24.1, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i" ]
  %.sroa.19.3.ph = phi i64 [ %i.az, %bb.l ], [ %i.bt, %bb.v ], [ %.sroa.19.0, %bb.ac ], [ %.sroa.19.1, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i" ]
  %.sroa.1174.3.ph = phi i64 [ -9223372036854775807, %bb.l ], [ -9223372036854775807, %bb.v ], [ %.sroa.1174.0, %bb.ac ], [ %.sroa.1174.1, %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit191.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5340
  br label %bb.cp

_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit: ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i", %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5340
  %i.hw = icmp eq i64 %.sroa.073.0.copyload, 2
  br i1 %i.hw, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit.thread, %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit
  %.sroa.1174.3148 = phi i64 [ %.sroa.1174.3.ph, %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit.thread ], [ %.sroa.1174.0.copyload, %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit ]
  %.sroa.19.3147 = phi i64 [ %.sroa.19.3.ph, %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit.thread ], [ %.sroa.19.0.copyload, %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit ]
  %.sroa.24.3146 = phi i64 [ %.sroa.24.3.ph, %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit.thread ], [ %.sroa.24.0.copyload, %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26)
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.1174.3148, ptr %i.hx, align 8
  %.sroa.2140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.19.3147, ptr %.sroa.2140.0..sroa_idx, align 8
  %.sroa.3141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.24.3146, ptr %.sroa.3141.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.cz

bb.cq:                                            ; preds = %_ZN3zip4read32central_header_to_zip_file_inner17h100adda0f253e768E.exit
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.26, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26)
  store i64 %.sroa.073.0.copyload, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.1174.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.19.0.copyload, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %.sroa.24.0.copyload, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %i.hy = invoke { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Seek$GT$15stream_position17h284bf1a6bd975505E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.cs unwind label %bb.cr     ; 2 uses

bb.cr:                                            ; preds = %bb.ct, %bb.cq
  %i.hz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17ha3610e895df8fcecE"(ptr noalias noundef align 8 dereferenceable(208) %i.r) #39
          to label %common.resume unwind label %bb.da

bb.cs:                                            ; preds = %bb.cq
  %i.ia = extractvalue { i64, ptr } %i.hy, 0
  %i.ib = extractvalue { i64, ptr } %i.hy, 1      ; 2 uses
  %i.ic = trunc nuw i64 %i.ia to i1
  br i1 %i.ic, label %bb.cy, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = invoke { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Seek$GT$4seek17hb97dd089350561d0E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %1, i64 noundef 0, i64 noundef %i.id)
          to label %bb.cu unwind label %bb.cr     ; 2 uses

bb.cu:                                            ; preds = %bb.ct
  %i.if = extractvalue { i64, ptr } %i.ie, 0
  %i.ig = trunc nuw i64 %i.if to i1
  br i1 %i.ig, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.ih = extractvalue { i64, ptr } %i.ie, 1
  br label %bb.cy

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.r, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.b, %bb.cz, %bb.d, %bb.cw
  ret void

bb.cy:                                            ; preds = %bb.cs, %bb.cv
  %.sink = phi ptr [ %i.ih, %bb.cv ], [ %i.ib, %bb.cs ]
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775807, ptr %i.ii, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %.sroa.433.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17ha3610e895df8fcecE"(ptr noalias noundef align 8 dereferenceable(208) %i.r)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.cx

bb.da:                                            ; preds = %bb.cr
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN3zip4read26central_header_to_zip_file17hfe4374f62c37bd89E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 8 captures(none) dereferenceable(208) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = alloca [208 x i8], align 8               ; 42 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.26 = alloca [176 x i8], align 8          ; 5 uses
  %i.r = alloca [208 x i8], align 8               ; 11 uses
  %i.s = alloca [48 x i8], align 8                ; 16 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val38 = load i64, ptr %i.t, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_ZN3zip4spec14FixedSizeBlock5parse17h36dd07edf18d3cf4E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.u = load i8, ptr %i.s, align 8, !range !11, !noundef !5
  %i.v = trunc nuw i8 %i.u to i1
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 9
  %i.w = load <4 x i16>, ptr %.sroa.5106.0..sroa_idx, align 1 ; 5 uses
  %.sroa.9110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 17
  %.sroa.9110.0.copyload = load i32, ptr %.sroa.9110.0..sroa_idx, align 1 ; 2 uses
  %.sroa.10111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 21
  %.sroa.10111.0.copyload = load i32, ptr %.sroa.10111.0..sroa_idx, align 1 ; 2 uses
  %.sroa.11112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 25
  %.sroa.11112.0.copyload = load i32, ptr %.sroa.11112.0..sroa_idx, align 1 ; 2 uses
  %.sroa.12113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 29
  %.sroa.12113.0.copyload = load i16, ptr %.sroa.12113.0..sroa_idx, align 1 ; 2 uses
  %.sroa.13114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 31 ; 2 uses
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.0105.0.copyload = load i8, ptr %i.x, align 8
  %.sroa.13114.0.copyload = load i8, ptr %.sroa.13114.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0105.0.copyload, ptr %i.y, align 8
  %.sroa.2116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store <4 x i16> %i.w, ptr %.sroa.2116.0..sroa_idx, align 1
  %.sroa.6120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i32 %.sroa.9110.0.copyload, ptr %.sroa.6120.0..sroa_idx, align 1
  %.sroa.7121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i32 %.sroa.10111.0.copyload, ptr %.sroa.7121.0..sroa_idx, align 1
  %.sroa.8122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i32 %.sroa.11112.0.copyload, ptr %.sroa.8122.0..sroa_idx, align 1
  %.sroa.9123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i16 %.sroa.12113.0.copyload, ptr %.sroa.9123.0..sroa_idx, align 1
  %.sroa.10124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %.sroa.13114.0.copyload, ptr %.sroa.10124.0..sroa_idx, align 1
  store i64 2, ptr %0, align 8
  br label %bb.ct

bb.c:                                             ; preds = %bb.a
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  %.sroa.585.0.copyload = load i16, ptr %.sroa.585.0..sroa_idx, align 1 ; 2 uses
  %.sroa.15.0.copyload = load i16, ptr %.sroa.13114.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 33
  %.sroa.16.0.copyload = load i16, ptr %.sroa.16.0..sroa_idx, align 1
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 39
  %.sroa.18.0.copyload = load i32, ptr %.sroa.18.0..sroa_idx, align 1
  %.sroa.1994.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 43
  %.sroa.1994.0.copyload = load i32, ptr %.sroa.1994.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26)
  %i.z = load i64, ptr %2, align 8, !noundef !5
  %i.aa = extractelement <4 x i16> %i.w, i64 0    ; 2 uses
  %i.ab = trunc i16 %i.aa to i8                   ; 2 uses
  %i.ac = and i16 %i.aa, 2048                     ; 2 uses
  %.not99.i = icmp eq i16 %i.ac, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5401
  %i.ad = zext i16 %.sroa.12113.0.copyload to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5402
  call void @llvm.experimental.noalias.scope.decl(metadata !5403)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5404
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, i64 noundef range(i64 0, 65536) %i.ad, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1), !noalias !5404
  %i.ae = load i64, ptr %i.h, align 8, !range !7, !noalias !5404, !noundef !5
  %i.af = trunc nuw i64 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !range !8, !noalias !5404, !noundef !5 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.af, label %bb.d, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i", !prof !9

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !5404
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ah, i64 %i.aj) #38, !noalias !5405
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i": ; preds = %bb.c
  %i.ak = load ptr, ptr %i.ai, align 8, !noalias !5404, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5404
  store i64 %i.ah, ptr %i.i, align 8, !alias.scope !5403, !noalias !5402
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ak, ptr %i.al, align 8, !alias.scope !5403, !noalias !5402
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.ad, ptr %i.am, align 8, !alias.scope !5403, !noalias !5402
  %i.an = call { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !5406 ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %i.an, 0      ; 9 uses
  %i.ap = extractvalue { ptr, i64 } %i.an, 1      ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5402
  %i.aq = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h48f0d43da5334d1fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 1 %i.ao, i64 noundef %i.ap)
          to label %bb.g unwind label %bb.e, !noalias !5407 ; 2 uses

bb.e:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i"
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = icmp eq i64 %i.ap, 0
  br i1 %i.as, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  br label %common.resume.sink.split.i

bb.g:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i.i"
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = icmp eq i64 %i.ap, 0
  br i1 %i.at, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef range(i64 1, 0) %i.ap, i64 noundef 1) #30, !noalias !5407
  br label %bb.j

common.resume.sink.split.i:                       ; preds = %.thread.i, %bb.f
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.ar, %bb.f ], [ %.pn114274.i, %.thread.i ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef range(i64 1, 0) %i.ap, i64 noundef 1) #30, !noalias !5408
  br label %common.resume

common.resume:                                    ; preds = %bb.co, %bb.e, %common.resume.sink.split.i, %bb.r, %.thread.i
  %common.resume.op = phi { ptr, i32 } [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %i.ar, %bb.e ], [ %.pn114274.i, %.thread.i ], [ %.pn112.i, %bb.r ], [ %i.ht, %bb.co ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.au = ptrtoint ptr %i.aq to i64
  br label %_ZN3zip4read32central_header_to_zip_file_inner17h6c3a1c8710f1ddcaE.exit.thread

bb.k:                                             ; preds = %bb.g
  store ptr %i.ao, ptr %i.q, align 8, !noalias !5401
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.ap, ptr %i.av, align 8, !noalias !5401
  %i.aw = zext i16 %.sroa.15.0.copyload to i64    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5409
  call void @llvm.experimental.noalias.scope.decl(metadata !5410)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5411
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, i64 noundef range(i64 0, 65536) %i.aw, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.s, !noalias !5408

.noexc.i:                                         ; preds = %bb.k
  %i.ax = load i64, ptr %i.f, align 8, !range !7, !noalias !5411, !noundef !5
  %i.ay = trunc nuw i64 %i.ax to i1
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !8, !noalias !5411, !noundef !5 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.ay, label %bb.l, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i147.i", !prof !9

bb.l:                                             ; preds = %.noexc.i
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !5411
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ba, i64 %i.bc) #38
          to label %.noexc150.i unwind label %bb.s, !noalias !5408

.noexc150.i:                                      ; preds = %bb.l
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i147.i": ; preds = %.noexc.i
  %i.bd = load ptr, ptr %i.bb, align 8, !noalias !5411, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5411
  store i64 %i.ba, ptr %i.g, align 8, !alias.scope !5410, !noalias !5409
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !alias.scope !5410, !noalias !5409
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.aw, ptr %i.bf, align 8, !alias.scope !5410, !noalias !5409
  %i.bg = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc151.i unwind label %bb.s, !noalias !5408 ; 2 uses

.noexc151.i:                                      ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i147.i"
  %i.bh = extractvalue { ptr, i64 } %i.bg, 0      ; 8 uses
  %i.bi = extractvalue { ptr, i64 } %i.bg, 1      ; 15 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5409
  %i.bj = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h48f0d43da5334d1fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 1 %i.bh, i64 noundef %i.bi)
          to label %bb.o unwind label %bb.m, !noalias !5412 ; 2 uses

bb.m:                                             ; preds = %.noexc151.i
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = icmp eq i64 %i.bi, 0
  br i1 %i.bl, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bh) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef range(i64 1, 0) %i.bi, i64 noundef 1) #30, !noalias !5412
  br label %.thread.i

bb.o:                                             ; preds = %.noexc151.i
  %.not.i149.i = icmp eq ptr %i.bj, null
  br i1 %.not.i149.i, label %_ZN3zip4read31read_variable_length_byte_field17h5193e2c83d236ae6E.exit154.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = icmp eq i64 %i.bi, 0
  br i1 %i.bm, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bh, i64 noundef range(i64 1, 0) %i.bi, i64 noundef 1) #30, !noalias !5412
  br label %bb.t

bb.r:                                             ; preds = %bb.ab, %.body161.i
  br i1 %.sroa.050.2.i, label %.thread.i, label %common.resume

bb.s:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i147.i", %bb.l, %bb.k
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.bo = ptrtoint ptr %i.bj to i64               ; 2 uses
  %.old.i = icmp eq i64 %i.ap, 0
  br i1 %.old.i, label %_ZN3zip4read32central_header_to_zip_file_inner17h6c3a1c8710f1ddcaE.exit.thread, label %bb.aa

_ZN3zip4read31read_variable_length_byte_field17h5193e2c83d236ae6E.exit154.i: ; preds = %bb.o
  %i.bp = zext i16 %.sroa.16.0.copyload to i64    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5413
  call void @llvm.experimental.noalias.scope.decl(metadata !5414)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5415
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, i64 noundef range(i64 0, 65536) %i.bp, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc158.i unwind label %bb.ac, !noalias !5408

.noexc158.i:                                      ; preds = %_ZN3zip4read31read_variable_length_byte_field17h5193e2c83d236ae6E.exit154.i
  %i.bq = load i64, ptr %i.d, align 8, !range !7, !noalias !5415, !noundef !5
  %i.br = trunc nuw i64 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !range !8, !noalias !5415, !noundef !5 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.br, label %bb.u, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i155.i", !prof !9

bb.u:                                             ; preds = %.noexc158.i
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !5415
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.bt, i64 %i.bv) #38
          to label %.noexc159.i unwind label %bb.ac, !noalias !5408

.noexc159.i:                                      ; preds = %bb.u
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i155.i": ; preds = %.noexc158.i
  %i.bw = load ptr, ptr %i.bu, align 8, !noalias !5415, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5415
  store i64 %i.bt, ptr %i.e, align 8, !alias.scope !5414, !noalias !5413
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bw, ptr %i.bx, align 8, !alias.scope !5414, !noalias !5413
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.bp, ptr %i.by, align 8, !alias.scope !5414, !noalias !5413
  %i.bz = invoke { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %.noexc160.i unwind label %bb.ac, !noalias !5408 ; 2 uses

.noexc160.i:                                      ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i155.i"
  %i.ca = extractvalue { ptr, i64 } %i.bz, 0      ; 9 uses
  %i.cb = extractvalue { ptr, i64 } %i.bz, 1      ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5413
  %i.cc = invoke noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h48f0d43da5334d1fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 1 %i.ca, i64 noundef %i.cb)
          to label %bb.x unwind label %bb.v, !noalias !5416 ; 2 uses

bb.v:                                             ; preds = %.noexc160.i
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = icmp eq i64 %i.cb, 0
  br i1 %i.ce, label %.body161.i, label %bb.w

bb.w:                                             ; preds = %bb.v
end_hunk_4
begin_hunk_5_@_ZN3zip4read26central_header_to_zip_file17hfe4374f62c37bd89E:bb.a
bb.ar:                                            ; preds = %bb.az, %bb.aq
  %.pn375.i = phi { ptr, i64 } [ %i.cr, %bb.aq ], [ %.pn374.i, %bb.az ]
  %.sroa.0229.0.i = phi ptr [ %i.di, %bb.aq ], [ %.sroa.0229.1.i, %bb.az ] ; 4 uses
  %.sroa.8.3.i = phi i64 [ %i.cq, %bb.aq ], [ %.sroa.8.0.i, %bb.az ] ; 4 uses
  %.sroa.0227.3.i = phi ptr [ %i.cp, %bb.aq ], [ %.sroa.0227.0.i, %bb.az ] ; 4 uses
  %.sroa.047.3.i = phi i8 [ 0, %bb.aq ], [ 1, %bb.az ] ; 6 uses
  %.sroa.10.0.i = extractvalue { ptr, i64 } %.pn375.i, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5401
  %i.dj = lshr i16 %.sroa.585.0.copyload, 8       ; 2 uses
  %switch.selectcmp.i = icmp eq i16 %i.dj, 3
  %switch.select.i = select i1 %switch.selectcmp.i, i8 3, i8 4
  %switch.selectcmp116.i = icmp eq i16 %i.dj, 0
  %switch.select117.i = select i1 %switch.selectcmp116.i, i8 0, i8 %switch.select.i
  %i.dk = trunc i16 %.sroa.585.0.copyload to i8
  %i.dl = extractelement <4 x i16> %i.w, i64 1    ; 3 uses
  %switch.selectcmp120.i = icmp eq i16 %i.dl, 8
  %switch.select121.i = select i1 %switch.selectcmp120.i, i16 1, i16 2
  %switch.selectcmp122.i = icmp eq i16 %i.dl, 0
  %switch.select123.i = select i1 %switch.selectcmp122.i, i16 0, i16 %switch.select121.i
  %i.dm = extractelement <4 x i16> %i.w, i64 2
  %i.dn = extractelement <4 x i16> %i.w, i64 3
  %i.do = invoke i48 @_ZN3zip5types8DateTime14try_from_msdos17hc9a3df637fa4bd83E(i16 noundef %i.dn, i16 noundef %i.dm)
          to label %bb.bc unwind label %.thread349.i, !noalias !5408 ; 3 uses

.thread349.i:                                     ; preds = %bb.ar
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.thread327.i

bb.as:                                            ; preds = %bb.ak
  %i.dq = extractvalue { ptr, i64 } %i.ct, 0
  br label %bb.ap

bb.at:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5401
  %i.dr = load i64, ptr %i.o, align 8, !range !8, !noalias !5401, !noundef !5
  %.not98.i = icmp eq i64 %i.dr, -9223372036854775808
  br i1 %.not98.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !5401
  %i.ds = invoke { ptr, i64 } @"_ZN5alloc6string107_$LT$impl$u20$core..convert..From$LT$alloc..string..String$GT$$u20$for$u20$alloc..boxed..Box$LT$str$GT$$GT$4from17h757f7de970d115c2E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.ba unwind label %.thread308.i, !noalias !5408 ; 2 uses

bb.av:                                            ; preds = %bb.at
  %i.dt = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !5401, !nonnull !5, !align !15, !noundef !5
  %i.dv = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !5401, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5418
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.dw, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc168.i unwind label %.thread308.i, !noalias !5408

.noexc168.i:                                      ; preds = %bb.av
  %i.dx = load i64, ptr %i.b, align 8, !range !7, !noalias !5418, !noundef !5
  %i.dy = trunc nuw i64 %i.dx to i1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !range !8, !noalias !5418, !noundef !5 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.dy, label %bb.aw, label %bb.ax, !prof !9

bb.aw:                                            ; preds = %.noexc168.i
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !5418
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ea, i64 %i.ec) #38
          to label %.noexc169.i unwind label %.thread308.i, !noalias !5408

.noexc169.i:                                      ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %.noexc168.i
  %i.ed = load ptr, ptr %i.eb, align 8, !noalias !5418, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5418
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ed, ptr nonnull readonly align 1 %i.du, i64 %i.dw, i1 false), !noalias !5408
  %i.ee = invoke { ptr, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8into_box17hcb107486f3d6b998E"(i64 noundef %i.ea, ptr noundef nonnull %i.ed, i64 noundef %i.dw)
          to label %bb.ay unwind label %.thread308.i, !noalias !5408 ; 2 uses

bb.ay:                                            ; preds = %bb.ax
  %i.ef = extractvalue { ptr, i64 } %i.ee, 0      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ]
  br label %bb.az

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %.pn374.i = phi { ptr, i64 } [ %i.ee, %bb.ay ], [ %i.ds, %bb.ba ]
  %.sroa.0229.1.i = phi ptr [ %i.ef, %bb.ay ], [ %i.eg, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5401
  br label %bb.ar

bb.ba:                                            ; preds = %bb.au
  %i.eg = extractvalue { ptr, i64 } %i.ds, 0
  br label %bb.az

bb.bb:                                            ; preds = %bb.cc
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i"

bb.bc:                                            ; preds = %bb.ar
  %i.ei = trunc i48 %i.do to i1                   ; 2 uses
  %.sroa.096.4.extract.shift.i = lshr i48 %i.do, 32
  %.sroa.096.4.extract.trunc.i = trunc nuw i48 %.sroa.096.4.extract.shift.i to i16
  %.sroa.096.2.extract.shift.i = lshr i48 %i.do, 16
  %.sroa.096.2.extract.trunc.i = trunc i48 %.sroa.096.2.extract.shift.i to i16
  %.sroa.616.0.i = select i1 %i.ei, i16 undef, i16 %.sroa.096.4.extract.trunc.i
  %not..i = xor i1 %i.ei, true
  %.sroa.015.0.i = zext i1 %not..i to i16
  %i.ej = zext i32 %.sroa.10111.0.copyload to i64
  %i.ek = zext i32 %.sroa.11112.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0227.3.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5419
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.bi, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc172.i unwind label %bb.be, !noalias !5408

.noexc172.i:                                      ; preds = %bb.bc
  %i.el = load i64, ptr %i.a, align 8, !range !7, !noalias !5419, !noundef !5
  %i.em = trunc nuw i64 %i.el to i1
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !range !8, !noalias !5419, !noundef !5 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.em, label %bb.bd, label %bb.bg, !prof !9

bb.bd:                                            ; preds = %.noexc172.i
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !5419
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.eo, i64 %i.eq) #38
          to label %.noexc173.i unwind label %bb.be, !noalias !5408

.noexc173.i:                                      ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bi, %bb.be
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.er, %bb.be ], [ %i.ez, %bb.bi ] ; 2 uses
  %i.es = icmp eq i64 %i.ap, 0
  br i1 %i.es, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i", label %bb.bf

bb.bf:                                            ; preds = %.body.i
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef range(i64 1, 0) %i.ap, i64 noundef 1) #30, !noalias !5408
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit174.i"

bb.bg:                                            ; preds = %.noexc172.i
  %i.et = load ptr, ptr %i.ep, align 8, !noalias !5419, !nonnull !5, !noundef !5 ; 2 uses
  %i.eu = icmp ule i64 %i.bi, %i.eo
  call void @llvm.assume(i1 %i.eu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5419
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.et, ptr nonnull readonly align 1 %i.bh, i64 %i.bi, i1 false), !noalias !5420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5401
  store i64 1, ptr %i.j, align 8, !noalias !5401
  %i.ev = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.ev, align 8, !noalias !5401
  %i.ew = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.eo, ptr %i.ew, align 8, !noalias !5401
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.et, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !5401
  %.sroa.5238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %i.bi, ptr %.sroa.5238.0..sroa_idx.i, align 8, !noalias !5401
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !5421
  %i.ex = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 129) 40, i64 noundef range(i64 1, 9) 8) #30, !noalias !5421 ; 3 uses
  %i.ey = icmp eq ptr %i.ex, null
  br i1 %i.ey, label %bb.bh, label %bb.bk, !prof !42

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 40) #38
          to label %.noexc175.i unwind label %bb.bi, !noalias !5408

.noexc175.i:                                      ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %bb.bh
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$alloc..sync..ArcInner$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17he0e96128dfc6e0ddE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j) #39
          to label %.body.i unwind label %bb.bj, !noalias !5408

bb.bj:                                            ; preds = %bb.bi
  %i.fa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5408
  unreachable

bb.bk:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ex, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !5408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5401
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0229.0.i) ]
  %i.fb = zext i32 %.sroa.1994.0.copyload to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.n, i64 206
  store i8 %switch.select117.i, ptr %i.fc, align 2, !noalias !5401
  %i.fd = getelementptr inbounds nuw i8, ptr %i.n, i64 207
  store i8 %i.dk, ptr %i.fd, align 1, !noalias !5401
  %i.fe = getelementptr inbounds nuw i8, ptr %i.n, i64 202
  %i.ff = and i8 %i.ab, 1
  store i8 %i.ff, ptr %i.fe, align 2, !noalias !5401
  %i.fg = getelementptr inbounds nuw i8, ptr %i.n, i64 203
  %.lobit.i = lshr exact i16 %i.ac, 11
  %i.fh = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.fh, ptr %i.fg, align 1, !noalias !5401
  %i.fi = getelementptr inbounds nuw i8, ptr %i.n, i64 204
  %3 = lshr i8 %i.ab, 3
  %i.fj = and i8 %3, 1
  store i8 %i.fj, ptr %i.fi, align 4, !noalias !5401
  %i.fk = getelementptr inbounds nuw i8, ptr %i.n, i64 184 ; 2 uses
  store i16 %switch.select123.i, ptr %i.fk, align 8, !noalias !5401
  %i.fl = getelementptr inbounds nuw i8, ptr %i.n, i64 186 ; 2 uses
  store i16 %i.dl, ptr %i.fl, align 2, !noalias !5401
  store i64 0, ptr %i.n, align 8, !noalias !5401
  %i.fm = getelementptr inbounds nuw i8, ptr %i.n, i64 196
  store i16 %.sroa.015.0.i, ptr %i.fm, align 4, !noalias !5401
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 198
  store i16 %.sroa.096.2.extract.trunc.i, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !5401
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 200
  store i16 %.sroa.616.0.i, ptr %.sroa.616.0..sroa_idx.i, align 8, !noalias !5401
  %i.fn = getelementptr inbounds nuw i8, ptr %i.n, i64 188
  store i32 %.sroa.9110.0.copyload, ptr %i.fn, align 4, !noalias !5401
  %i.fo = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  store i64 %i.ej, ptr %i.fo, align 8, !noalias !5401
  %i.fp = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  store i64 %i.ek, ptr %i.fp, align 8, !noalias !5401
  %i.fq = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store ptr %.sroa.0227.3.i, ptr %i.fq, align 8, !noalias !5401
  %i.fr = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store i64 %.sroa.8.3.i, ptr %i.fr, align 8, !noalias !5401
  %i.fs = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store ptr %i.ao, ptr %i.fs, align 8, !noalias !5401
  %i.ft = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store i64 %i.ap, ptr %i.ft, align 8, !noalias !5401
  %i.fu = getelementptr inbounds nuw i8, ptr %i.n, i64 128 ; 5 uses
  store ptr %i.ex, ptr %i.fu, align 8, !noalias !5401
  %i.fv = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  store ptr null, ptr %i.fv, align 8, !noalias !5401
  %i.fw = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store ptr %.sroa.0229.0.i, ptr %i.fw, align 8, !noalias !5401
  %i.fx = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  store i64 %.sroa.10.0.i, ptr %i.fx, align 8, !noalias !5401
  %i.fy = getelementptr inbounds nuw i8, ptr %i.n, i64 144 ; 3 uses
  store i64 %i.fb, ptr %i.fy, align 8, !noalias !5401
  %i.fz = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 0, ptr %i.fz, align 8, !noalias !5401
  %i.ga = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  store i64 %.val38, ptr %i.ga, align 8, !noalias !5401
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  store i32 3, ptr %.sroa.420.0..sroa_idx.i, align 8, !noalias !5401
  %i.gb = getelementptr inbounds nuw i8, ptr %i.n, i64 192
  store i32 %.sroa.18.0.copyload, ptr %i.gb, align 8, !noalias !5401
  %i.gc = getelementptr inbounds nuw i8, ptr %i.n, i64 205
  store i8 0, ptr %i.gc, align 1, !noalias !5401
  %i.gd = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  store i16 0, ptr %i.gd, align 8, !noalias !5401
  %i.ge = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  store i64 0, ptr %i.ge, align 8, !noalias !5401
  %i.gf = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  store i64 0, ptr %i.gf, align 8, !noalias !5401
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.425.0..sroa_idx.i, align 8, !noalias !5401
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 0, ptr %.sroa.526.0..sroa_idx.i, align 8, !noalias !5401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !5401
  invoke void @_ZN3zip4read17parse_extra_field17hceeea57fa34f3f03E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(208) %i.n)
          to label %bb.bm unwind label %bb.bl, !noalias !5408

.body178.i:                                       ; preds = %bb.bw, %bb.br, %bb.bl
  %.pn.i = phi { ptr, i32 } [ %i.gq, %bb.br ], [ %i.gv, %bb.bw ], [ %i.gg, %bb.bl ]
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17ha3610e895df8fcecE"(ptr noalias noundef align 8 dereferenceable(208) %i.n) #39
          to label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit194.i" unwind label %bb.cg, !noalias !5408

bb.bl:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %.thread399.i, %bb.bk
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body178.i

bb.bm:                                            ; preds = %bb.bk
  %i.gh = load i64, ptr %i.m, align 8, !range !43, !noalias !5401, !noundef !5 ; 4 uses
  %.not101.i = icmp eq i64 %i.gh, -9223372036854775802
  br i1 %.not101.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gi = icmp ne i64 %i.gh, -9223372036854775806
  call void @llvm.assume(i1 %i.gi)
  %i.gj = icmp eq i64 %i.gh, -9223372036854775807
  br i1 %i.gj, label %.thread399.i, label %bb.bt

bb.bo:                                            ; preds = %bb.bm
  %i.gk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !noalias !5401, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5422)
  %i.gm = load ptr, ptr %i.fu, align 8, !alias.scope !5422, !noalias !5401, !noundef !5 ; 2 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.go = atomicrmw sub ptr %i.gm, i64 1 release, align 8, !noalias !5423
  %i.gp = icmp eq i64 %i.go, 1
  br i1 %i.gp, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h201a8d4bcd9d0331E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fu)
          to label %bb.bs unwind label %bb.br, !noalias !5408

bb.br:                                            ; preds = %bb.bq
  %i.gq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.gl, ptr %i.fu, align 8, !noalias !5401
  br label %.body178.i

bb.bs:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  store ptr %i.gl, ptr %i.fu, align 8, !noalias !5401
  %.pre.i = load i64, ptr %i.m, align 8, !range !43, !noalias !5401
  %.pre.fr.i = freeze i64 %.pre.i                 ; 5 uses
  %.not102.i = icmp eq i64 %.pre.fr.i, -9223372036854775802
  br i1 %.not102.i, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i", label %bb.bu

bb.bt:                                            ; preds = %bb.bn
  %.sroa.19.8..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.19.8.copyload80 = load i64, ptr %.sroa.19.8..sroa_idx79, align 8, !noalias !5424
  %.sroa.24.8..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.24.8.copyload83 = load i64, ptr %.sroa.24.8..sroa_idx82, align 8, !noalias !5424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5401
  br label %bb.cc

bb.bu:                                            ; preds = %bb.bs
  %i.gr = icmp ne i64 %.pre.fr.i, -9223372036854775806
  call void @llvm.assume(i1 %i.gr)
  %i.gs = icmp ugt i64 %.pre.fr.i, -9223372036854775808
  br i1 %i.gs, label %bb.bv, label %.thread400.i

bb.bv:                                            ; preds = %bb.bu
  switch i64 %.pre.fr.i, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" [
    i64 -9223372036854775807, label %.thread399.i
    i64 -9223372036854775806, label %.thread400.i.thread
  ]

.thread399.i:                                     ; preds = %bb.bv, %bb.bn
  %i.gt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val.i.i = load ptr, ptr %i.gt, align 8, !alias.scope !5425, !noalias !5401, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val.i.i)
          to label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" unwind label %bb.bl, !noalias !5408

.thread400.i:                                     ; preds = %bb.bu
  %i.gu = icmp eq i64 %.pre.fr.i, -9223372036854775808
  br i1 %i.gu, label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i", label %.thread400.i.thread

.thread400.i.thread:                              ; preds = %bb.bv, %.thread400.i
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i" unwind label %bb.bw, !noalias !5408

bb.bw:                                            ; preds = %.thread400.i.thread
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body178.i unwind label %bb.bx, !noalias !5408

bb.bx:                                            ; preds = %bb.bw
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !5408
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i": ; preds = %.thread400.i.thread
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i" unwind label %bb.bl, !noalias !5408

"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i.i", %.thread400.i, %.thread399.i, %bb.bv, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !5401
  %i.gx = load i16, ptr %i.fk, align 8, !range !44, !noalias !5401, !noundef !5
  %i.gy = icmp eq i16 %i.gx, 2
  %i.gz = load i16, ptr %i.fl, align 2, !noalias !5401
  %i.ha = icmp eq i16 %i.gz, 99
  %or.cond.i = select i1 %i.gy, i1 %i.ha, i1 false
  %i.hb = load i16, ptr %i.gd, align 8, !range !44, !noalias !5401
  %.not103.i = icmp eq i16 %i.hb, 0
  %or.cond119.i = select i1 %or.cond.i, i1 %.not103.i, i1 false
  br i1 %or.cond119.i, label %bb.cc, label %bb.by

bb.by:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE.exit.i"
  %i.hc = load i64, ptr %i.fy, align 8, !noalias !5401, !noundef !5 ; 2 uses
  %i.hd = add i64 %i.hc, %i.z                     ; 2 uses
  %.not104.i = icmp ult i64 %i.hd, %i.hc
  br i1 %.not104.i, label %bb.cc, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i64 %i.hd, ptr %i.fy, align 8, !noalias !5401
  %.sroa.074.0.copyload = load i64, ptr %i.n, align 8, !noalias !5424 ; 2 uses
  %.sroa.1175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.1175.0.copyload = load i64, ptr %.sroa.1175.0..sroa_idx, align 8, !noalias !5424 ; 2 uses
  %.sroa.19.0.copyload = load i64, ptr %i.fz, align 8, !noalias !5424 ; 2 uses
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !noalias !5424 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.26, ptr noundef nonnull align 8 dereferenceable(176) %i.gf, i64 176, i1 false), !noalias !5424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5401
  %i.he = trunc nuw i8 %.sroa.047.3.i to i1
  %i.hf = icmp ne i64 %i.cb, 0
  %or.cond369.not.i = and i1 %i.hf, %i.he
  br i1 %or.cond369.not.i, label %bb.cb, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i": ; preds = %bb.cb, %bb.bz
  %i.hg = icmp eq i64 %i.bi, 0
  br i1 %i.hg, label %_ZN3zip4read32central_header_to_zip_file_inner17h6c3a1c8710f1ddcaE.exit, label %bb.ca

bb.ca:                                            ; preds = %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit190.i"
end_hunk_5
