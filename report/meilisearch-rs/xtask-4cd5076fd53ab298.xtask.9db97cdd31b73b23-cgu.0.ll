Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-4cd5076fd53ab298.xtask.9db97cdd31b73b23-cgu.0?download=true
inline.NumInlined: 15191
inline.NumDeleted: 6593
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 95
begin_hunk_0_@"_ZN4core6option15Option$LT$T$GT$3map17h9abfb7c6abb76082E":bb.a
  ret void
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_ZN4core9panicking13assert_failed17h4640a62ab196499fE(i8 noundef range(i8 0, 3) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #24 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_ZN4core9panicking19assert_failed_inner17h1a26c705b351d21aE(i8 noundef %0, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @559, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @559, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #54
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4http6header3map12append_value17hbe3f692a887c8205E(i64 noundef %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = alloca [72 x i8], align 8                ; 11 uses
  %i.c = load i64, ptr %1, align 8, !range !36, !noundef !24
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !24 ; 7 uses
  %i.i = icmp ult i64 %i.h, 128102389400760776
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  store i64 1, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.f, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %0, ptr %i.m, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20646)
  %i.n = load i64, ptr %2, align 8, !range !30, !alias.scope !20645, !noalias !20647, !noundef !24
  %i.o = icmp eq i64 %i.h, %i.n
  br i1 %i.o, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb78809325760a0c8E.exit"

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5edb042558e7182fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @561)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb78809325760a0c8E.exit" unwind label %bb.d, !noalias !20646

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20651)
  %i.q = load ptr, ptr %i.j, align 8, !alias.scope !20652, !noalias !20653, !nonnull !24, !align !31, !noundef !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !noalias !20652, !nonnull !24, !noundef !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !20652, !noalias !20653, !noundef !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !20652, !noalias !20653, !noundef !24
  invoke void %i.s(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %i.v, i64 noundef %i.x)
          to label %common.resume unwind label %bb.e, !inline_history !5

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.am, %bb.h ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb78809325760a0c8E.exit": ; preds = %bb.b, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !20645, !noalias !20647, !nonnull !24, !noundef !24
  %i.ab = getelementptr inbounds nuw [72 x i8], ptr %i.aa, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ab, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  %i.ac = add nuw nsw i64 %i.h, 1                 ; 2 uses
  store i64 %i.ac, ptr %i.g, align 8, !alias.scope !20645, !noalias !20647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp ugt i64 %i.f, %i.h
  br i1 %.not, label %bb.l, label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !24 ; 6 uses
  %i.af = icmp ult i64 %i.ae, 128102389400760776
  tail call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  store i64 0, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %0, ptr %i.aj, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20655)
  %i.ak = load i64, ptr %2, align 8, !range !30, !alias.scope !20654, !noalias !20656, !noundef !24
  %i.al = icmp eq i64 %i.ae, %i.ak
  br i1 %i.al, label %bb.g, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb78809325760a0c8E.exit9"

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5edb042558e7182fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @560)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb78809325760a0c8E.exit9" unwind label %bb.h, !noalias !20655

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20660)
  %i.an = load ptr, ptr %i.ag, align 8, !alias.scope !20661, !noalias !20662, !nonnull !24, !align !31, !noundef !24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !20661, !nonnull !24, !noundef !24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !20661, !noalias !20662, !noundef !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !20661, !noalias !20662, !noundef !24
  invoke void %i.ap(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef %i.as, i64 noundef %i.au)
          to label %common.resume unwind label %bb.i, !inline_history !5

bb.i:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb78809325760a0c8E.exit9": ; preds = %bb.f, %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !20654, !noalias !20656, !nonnull !24, !noundef !24
  %i.ay = getelementptr inbounds nuw [72 x i8], ptr %i.ax, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ay, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  %i.az = add nuw nsw i64 %i.ae, 1
  store i64 %i.az, ptr %i.ad, align 8, !alias.scope !20654, !noalias !20656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 1, ptr %1, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ae, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.ae, ptr %.sroa.53.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb78809325760a0c8E.exit9"
  ret void

bb.k:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb78809325760a0c8E.exit"
  %i.ba = load ptr, ptr %i.z, align 8, !nonnull !24, !noundef !24
  %i.bb = getelementptr inbounds nuw [72 x i8], ptr %i.ba, i64 %i.f ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 1, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 %i.h, ptr %i.bd, align 8
  store i64 1, ptr %1, align 8
  store i64 %i.h, ptr %i.e, align 8
  br label %bb.j

bb.l:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hb78809325760a0c8E.exit"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.f, i64 noundef %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @562) #54
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef range(i16 0, -32768) i16 @_ZN4http6header3map15hash_elem_using17hfa00c2547dd9d71bE(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #18 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 16               ; 13 uses
  %i.d = load i64, ptr %0, align 8, !range !34, !noundef !24
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load <2 x i64>, ptr %i.f, align 8        ; 3 uses
  %i.h = shufflevector <2 x i64> %i.g, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.i = xor <2 x i64> %i.h, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.i, ptr %i.c, align 16
  %i.j = shufflevector <2 x i64> %i.g, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.k = xor <2 x i64> %i.j, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.k, ptr %.sroa.519.0..sroa_idx, align 16
  store <2 x i64> %i.g, ptr %.sroa.721.0..sroa_idx, align 16
  %.sroa.923.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sroa.1024.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.923.0..sroa_idx, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %1, align 8, !noalias !20687, !noundef !24 ; 2 uses
  %i.m = icmp ne ptr %i.l, null
  %i.n = zext i1 %i.m to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20688
  store i64 %i.n, ptr %i.b, align 8, !noalias !20688
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20688
  %.not.i.i = icmp eq ptr %i.l, null
  %i.o = getelementptr i8, ptr %1, i64 8          ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load ptr, ptr %i.o, align 8, !noalias !20687, !noundef !24
  %i.p = getelementptr i8, ptr %1, i64 16
  %.val1.i.i = load i64, ptr %i.p, align 8, !noalias !20687, !noundef !24
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i)
  br label %"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17h41eee3b1f19abb99E.exit"

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr %i.o, align 8, !range !104, !noalias !20687, !noundef !24
  %i.r = zext nneg i8 %i.q to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20689
  store i64 %i.r, ptr %i.a, align 8, !noalias !20689
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20689
  br label %"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17h41eee3b1f19abb99E.exit"

"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17h41eee3b1f19abb99E.exit": ; preds = %bb.c, %bb.d
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 16, !alias.scope !20690
  %.sroa.10.0.copyload.i = load i64, ptr %.sroa.418.0..sroa_idx, align 8, !alias.scope !20690
  %.sroa.17.0.copyload.i = load i64, ptr %.sroa.519.0..sroa_idx, align 16, !alias.scope !20690 ; 3 uses
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.620.0..sroa_idx, align 8, !alias.scope !20690
  %i.s = load i64, ptr %.sroa.923.0..sroa_idx, align 16, !alias.scope !20690, !noundef !24
  %i.t = shl i64 %i.s, 56
  %i.u = load i64, ptr %.sroa.1024.0..sroa_idx, align 8, !alias.scope !20690, !noundef !24
  %i.v = or i64 %i.t, %i.u                        ; 2 uses
  %i.w = xor i64 %i.v, %.sroa.22.0.copyload.i     ; 3 uses
  %i.x = add i64 %.sroa.17.0.copyload.i, %.sroa.0.0.copyload.i ; 3 uses
  %i.y = add i64 %i.w, %.sroa.10.0.copyload.i     ; 2 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i, i64 %.sroa.17.0.copyload.i, i64 13)
  %i.aa = xor i64 %i.z, %i.x                      ; 3 uses
  %i.ab = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 16)
  %i.ac = xor i64 %i.ab, %i.y                     ; 3 uses
  %i.ad = tail call i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ae = add i64 %i.y, %i.aa                     ; 3 uses
  %i.af = add i64 %i.ac, %i.ad                    ; 2 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 17)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 21)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = xor i64 %i.af, %i.v
  %i.am = xor i64 %i.ak, 255
  %i.an = add i64 %i.al, %i.ah                    ; 3 uses
  %i.ao = add i64 %i.aj, %i.am                    ; 2 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 13)
  %i.aq = xor i64 %i.an, %i.ap                    ; 3 uses
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 16)
  %i.as = xor i64 %i.ar, %i.ao                    ; 3 uses
  %i.at = tail call i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 32)
  %i.au = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.av = add i64 %i.as, %i.at                    ; 2 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 17)
  %i.ax = xor i64 %i.au, %i.aw                    ; 3 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 21)
  %i.az = xor i64 %i.ay, %i.av                    ; 3 uses
  %i.ba = tail call i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 32)
  %i.bb = add i64 %i.ax, %i.av                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 13)
  %i.be = xor i64 %i.bd, %i.bb                    ; 3 uses
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 16)
  %i.bg = xor i64 %i.bf, %i.bc                    ; 3 uses
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  %i.bi = add i64 %i.be, %i.bc                    ; 3 uses
  %i.bj = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 17)
  %i.bl = xor i64 %i.bk, %i.bi                    ; 3 uses
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 21)
  %i.bn = xor i64 %i.bm, %i.bj                    ; 2 uses
  %i.bo = tail call i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 32)
  %i.bp = add i64 %i.bl, %i.bj
  %i.bq = add i64 %i.bn, %i.bo                    ; 2 uses
  %i.br = tail call i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 13)
  %i.bs = xor i64 %i.br, %i.bp                    ; 2 uses
  %i.bt = shl i64 %i.bn, 16
  %i.bu = xor i64 %i.bt, %i.bq
  %i.bv = add i64 %i.bs, %i.bq                    ; 2 uses
  %i.bw = lshr i64 %i.bs, 47
  %i.bx = lshr i64 %i.bu, 43
  %i.by = lshr i64 %i.bv, 32
  %i.bz = xor i64 %i.bx, %i.bw
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = xor i64 %i.ca, %i.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17h2b065edd76cbc5baE.exit"

bb.e:                                             ; preds = %bb.a
  %i.cc = load ptr, ptr %1, align 8, !noalias !20691, !noundef !24 ; 2 uses
  %i.cd = icmp ne ptr %i.cc, null
  %i.ce = zext i1 %i.cd to i64
  %i.cf = xor i64 %i.ce, -3750763034362895579
  %i.cg = mul i64 %i.cf, 2232315406967589409      ; 4 uses
  %.not.i.i30 = icmp eq ptr %i.cc, null
  %i.ch = getelementptr i8, ptr %1, i64 8         ; 2 uses
  br i1 %.not.i.i30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i.i31 = load ptr, ptr %i.ch, align 8, !noalias !20691, !noundef !24 ; 3 uses
  %i.ci = getelementptr i8, ptr %1, i64 16
  %.val1.i.i32 = load i64, ptr %i.ci, align 8, !noalias !20691, !noundef !24 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i.i31, i64 %.val1.i.i32
  %i.ck = icmp samesign eq i64 %.val1.i.i32, 0
  br i1 %i.ck, label %"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17h2b065edd76cbc5baE.exit", label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %xtraiter = and i64 %.val1.i.i32, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.prol = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.prol ], [ %i.cg, %.lr.ph.i.i.i.i.preheader ]
  %.sroa.04.05.i.i.i.i.prol = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.prol ], [ %.val.i.i31, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.prol, i64 1 ; 2 uses
  %i.cm = load i8, ptr %.sroa.04.05.i.i.i.i.prol, align 1, !alias.scope !20692, !noalias !20693, !noundef !24
  %i.cn = zext i8 %i.cm to i64
  %i.co = xor i64 %.sroa.0.06.i.i.i.i.prol, %i.cn
  %i.cp = mul i64 %i.co, 1099511628211            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !20686

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.unr = phi i64 [ %i.cg, %.lr.ph.i.i.i.i.preheader ], [ %i.cp, %.lr.ph.i.i.i.i.prol ]
  %.sroa.04.05.i.i.i.i.unr = phi ptr [ %.val.i.i31, %.lr.ph.i.i.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.i.i.prol ]
  %i.cq = icmp ult i64 %.val1.i.i32, 8
  br i1 %i.cq, label %"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17h2b065edd76cbc5baE.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.04.05.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %.sroa.04.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 1
  %i.cs = load i8, ptr %.sroa.04.05.i.i.i.i, align 1, !alias.scope !20692, !noalias !20693, !noundef !24
  %i.ct = zext i8 %i.cs to i64
  %i.cu = xor i64 %.sroa.0.06.i.i.i.i, %i.ct
  %i.cv = mul i64 %i.cu, 1099511628211
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 2
  %i.cx = load i8, ptr %i.cr, align 1, !alias.scope !20692, !noalias !20693, !noundef !24
  %i.cy = zext i8 %i.cx to i64
  %i.cz = xor i64 %i.cv, %i.cy
  %i.da = mul i64 %i.cz, 1099511628211
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 3
  %i.dc = load i8, ptr %i.cw, align 1, !alias.scope !20692, !noalias !20693, !noundef !24
  %i.dd = zext i8 %i.dc to i64
  %i.de = xor i64 %i.da, %i.dd
  %i.df = mul i64 %i.de, 1099511628211
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 4
  %i.dh = load i8, ptr %i.db, align 1, !alias.scope !20692, !noalias !20693, !noundef !24
  %i.di = zext i8 %i.dh to i64
  %i.dj = xor i64 %i.df, %i.di
  %i.dk = mul i64 %i.dj, 1099511628211
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 5
  %i.dm = load i8, ptr %i.dg, align 1, !alias.scope !20692, !noalias !20693, !noundef !24
  %i.dn = zext i8 %i.dm to i64
  %i.do = xor i64 %i.dk, %i.dn
  %i.dp = mul i64 %i.do, 1099511628211
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 6
  %i.dr = load i8, ptr %i.dl, align 1, !alias.scope !20692, !noalias !20693, !noundef !24
  %i.ds = zext i8 %i.dr to i64
  %i.dt = xor i64 %i.dp, %i.ds
  %i.du = mul i64 %i.dt, 1099511628211
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 7
  %i.dw = load i8, ptr %i.dq, align 1, !alias.scope !20692, !noalias !20693, !noundef !24
  %i.dx = zext i8 %i.dw to i64
  %i.dy = xor i64 %i.du, %i.dx
  %i.dz = mul i64 %i.dy, 1099511628211
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 8 ; 2 uses
  %i.eb = load i8, ptr %i.dv, align 1, !alias.scope !20692, !noalias !20693, !noundef !24
  %i.ec = zext i8 %i.eb to i64
  %i.ed = xor i64 %i.dz, %i.ec
  %i.ee = mul i64 %i.ed, 1099511628211            ; 2 uses
  %i.ef = icmp eq ptr %i.ea, %i.cj
  br i1 %i.ef, label %"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17h2b065edd76cbc5baE.exit", label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.eg = load i8, ptr %i.ch, align 8, !range !104, !noalias !20691, !noundef !24
  %i.eh = zext nneg i8 %i.eg to i64
  %i.ei = xor i64 %i.cg, %i.eh
  %i.ej = mul i64 %i.ei, 2232315406967589409
  br label %"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17h2b065edd76cbc5baE.exit"

"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17h2b065edd76cbc5baE.exit": ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.g, %bb.f, %"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17h41eee3b1f19abb99E.exit"
  %.sroa.0.0 = phi i64 [ %i.cb, %"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17h41eee3b1f19abb99E.exit" ], [ %i.ej, %bb.g ], [ %i.cg, %bb.f ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.ee, %.lr.ph.i.i.i.i ]
  %i.ek = trunc i64 %.sroa.0.0 to i16
  %i.el = and i16 %i.ek, 32767
  ret i16 %i.el
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_append217h47eecc3db5a9995dE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17h8e510c9b8652aa7fE"(ptr noalias noundef align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.ae

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call fastcc noundef i16 @_ZN4http6header3map15hash_elem_using17hfa00c2547dd9d71bE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i16, ptr %i.h, align 8, !noundef !24 ; 3 uses
  %i.j = and i16 %i.i, %i.g
  %i.k = zext nneg i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !24 ; 2 uses
  %i.o = zext i16 %i.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not150 = icmp eq i64 %i.n, 0
  %i.t = load ptr, ptr %i.l, align 8, !nonnull !24, !align !105, !noundef !24
  br label %.outer132

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20746)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20748)
  %i.u = load ptr, ptr %2, align 8, !alias.scope !20749, !nonnull !24, !align !31, !noundef !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !noalias !20749, !nonnull !24, !noundef !24
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !20749, !noundef !24
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !20749, !noundef !24
  invoke void %i.w(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.z, i64 noundef %i.ab)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h682a465a928c1da9E.exit.thread" unwind label %bb.ac, !inline_history !17

.loopexit:                                        ; preds = %.outer132
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.05.0.ph.mux ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2, !noundef !24 ; 2 uses
  %.not = icmp eq i16 %i.ad, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.q
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.ae = zext i16 %i.ad to i64                   ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ag = load i16, ptr %i.af, align 2, !noundef !24 ; 2 uses
  %i.ah = and i16 %i.ag, %i.i
  %i.ai = zext i16 %i.ah to i64
  %i.aj = sub i64 %.sroa.05.0.ph.mux, %i.ai
  %i.ak = and i64 %i.aj, %i.o
  %i.al = icmp samesign ult i64 %i.ak, %.sroa.011.0.ph
  br i1 %i.al, label %bb.l, label %bb.k

bb.g:                                             ; preds = %.loopexit
  %i.am = load i64, ptr %i.p, align 8, !noundef !24 ; 2 uses
  %i.an = icmp ult i64 %i.am, 88686269585142076
  tail call void @llvm.assume(i1 %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.ao = call fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17hdaa4f007e59bac81E"(ptr noalias noundef align 8 dereferenceable(96) %0, i16 noundef %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ao, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i64, ptr %i.m, align 8, !noundef !24 ; 2 uses
  %i.aq = icmp ult i64 %.sroa.05.0.ph.mux, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.l, align 8, !nonnull !24, !align !105, !noundef !24
  %i.as = trunc i64 %i.am to i16
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.sroa.05.0.ph.mux ; 2 uses
  store i16 %i.as, ptr %i.at, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store i16 %i.g, ptr %i.au, align 2
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit"

bb.j:                                             ; preds = %bb.h
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.05.0.ph.mux, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565) #54
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.av = icmp eq i16 %i.ag, %i.g
  br i1 %i.av, label %bb.m, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread"

bb.l:                                             ; preds = %bb.f
  %i.aw = icmp samesign ugt i64 %.sroa.011.0.ph, 511
  br i1 %i.aw, label %bb.s, label %.noexc

end_hunk_0
