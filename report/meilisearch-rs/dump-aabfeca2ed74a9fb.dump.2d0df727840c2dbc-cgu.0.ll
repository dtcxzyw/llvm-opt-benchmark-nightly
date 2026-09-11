Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/dump-aabfeca2ed74a9fb.dump.2d0df727840c2dbc-cgu.0?download=true
inline.NumInlined: 31028
inline.NumDeleted: 13504
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 353
loop-unroll.NumUnrolledNotLatch: 9
begin_hunk_0_@"_ZN4dump6reader2v68V6Reader7indexes28_$u7b$$u7b$closure$u7d$$u7d$17hd14eebb7c1430ca6E":bb.a
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit"

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.av = load i64, ptr %i.f, align 8, !range !34, !noundef !21 ; 2 uses
  %i.aw = icmp eq i64 %i.av, -9223372036854775808
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.611, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
  br i1 %i.aw, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.611, i64 32, i1 false)
  store i64 -9223372036854775807, ptr %0, align 8
  %.val100 = load i64, ptr %i.b, align 8, !range !23, !alias.scope !115, !noundef !21 ; 2 uses
  %i.az = icmp eq i64 %.val100, 0
  br i1 %i.az, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h4c5f17af9be977aaE.exit104", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %.val100, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !74404
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h4c5f17af9be977aaE.exit104"

bb.ab:                                            ; preds = %bb.y
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.684.0..sroa_idx, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.59, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.611, i64 32, i1 false)
  %.val98 = load i64, ptr %i.b, align 8, !range !23, !alias.scope !115, !noundef !21 ; 2 uses
  %i.ba = icmp eq i64 %.val98, 0
  br i1 %i.ba, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h4c5f17af9be977aaE.exit105", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %.val98, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !74405
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h4c5f17af9be977aaE.exit105"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h4c5f17af9be977aaE.exit105": ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val92 = load i64, ptr %i.d, align 8, !range !23, !alias.scope !115, !noundef !21 ; 2 uses
  %i.bb = icmp eq i64 %.val92, 0
  br i1 %i.bb, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hddce569112fbfe7fE.exit107", label %bb.ad

bb.ad:                                            ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h4c5f17af9be977aaE.exit105"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %.val92, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !74406
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hddce569112fbfe7fE.exit107"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hddce569112fbfe7fE.exit107": ; preds = %bb.ad, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h4c5f17af9be977aaE.exit105"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611)
  store i64 %i.av, ptr %0, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.59, i64 32, i1 false)
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.515.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.6, i64 136, i1 false)
  br label %bb.ae

bb.ae:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hddce569112fbfe7fE.exit107", %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !74407)
  call void @llvm.experimental.noalias.scope.decl(metadata !74408)
  call void @llvm.experimental.noalias.scope.decl(metadata !74409)
  call void @llvm.experimental.noalias.scope.decl(metadata !74410)
  %i.bc = load ptr, ptr %i.h, align 8, !alias.scope !74411, !nonnull !21, !noundef !21
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !74411
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.af, label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17he55defc18a5a6924E.exit.i.i"

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hde34f2c2e678ef7eE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17he55defc18a5a6924E.exit.i.i" unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !74412, !nonnull !21, !align !32, !noundef !21 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !74412 ; 2 uses
  store i8 0, ptr %.val2.i.i, align 1
  %i.bg = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bg, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i": ; preds = %bb.ag
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %.val3.i.i, i64 noundef 1) #42
  br label %common.resume

"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17he55defc18a5a6924E.exit.i.i": ; preds = %bb.af, %bb.ae
  %.val.i.i108 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !74412, !nonnull !21, !align !32, !noundef !21 ; 2 uses
  %.val1.i.i109 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !74412 ; 2 uses
  store i8 0, ptr %.val.i.i108, align 1
  %i.bh = icmp eq i64 %.val1.i.i109, 0
  br i1 %i.bh, label %"_ZN4core3ptr38drop_in_place$LT$std..fs..DirEntry$GT$17he6cc6471d7fbf1bdE.exit119", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i4.i.i": ; preds = %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17he55defc18a5a6924E.exit.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i108, i64 noundef %.val1.i.i109, i64 noundef 1) #42
  br label %"_ZN4core3ptr38drop_in_place$LT$std..fs..DirEntry$GT$17he6cc6471d7fbf1bdE.exit119"

common.resume:                                    ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hddce569112fbfe7fE.exit", %bb.am, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i117", %bb.ag, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i"
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %bb.am ], [ %i.bf, %bb.ag ], [ %i.bf, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i" ], [ %i.bn, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i117" ], [ %.pn89, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hddce569112fbfe7fE.exit" ]
  resume { ptr, i32 } %common.resume.op

bb.ah:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hddce569112fbfe7fE.exit"
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44
  unreachable

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h4c5f17af9be977aaE.exit104": ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ai

bb.ai:                                            ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h4c5f17af9be977aaE.exit104", %bb.o
  %.val = load i64, ptr %i.d, align 8, !range !23, !alias.scope !115, !noundef !21 ; 2 uses
  %i.bj = icmp eq i64 %.val, 0
  br i1 %i.bj, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hddce569112fbfe7fE.exit110", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !74413
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hddce569112fbfe7fE.exit110"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hddce569112fbfe7fE.exit110": ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611)
  br label %bb.ak

bb.ak:                                            ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17hddce569112fbfe7fE.exit110", %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !74414)
  call void @llvm.experimental.noalias.scope.decl(metadata !74415)
  call void @llvm.experimental.noalias.scope.decl(metadata !74416)
  call void @llvm.experimental.noalias.scope.decl(metadata !74417)
  %i.bk = load ptr, ptr %i.h, align 8, !alias.scope !74418, !nonnull !21, !noundef !21
  %i.bl = atomicrmw sub ptr %i.bk, i64 1 release, align 8, !noalias !74418
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.al, label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17he55defc18a5a6924E.exit.i.i111"

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hde34f2c2e678ef7eE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17he55defc18a5a6924E.exit.i.i111" unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i115 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !74419, !nonnull !21, !align !32, !noundef !21 ; 2 uses
  %.val3.i.i116 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !74419 ; 2 uses
  store i8 0, ptr %.val2.i.i115, align 1
  %i.bo = icmp eq i64 %.val3.i.i116, 0
  br i1 %i.bo, label %common.resume, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i117"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i.i.i117": ; preds = %bb.am
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i115, i64 noundef %.val3.i.i116, i64 noundef 1) #42
  br label %common.resume

"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17he55defc18a5a6924E.exit.i.i111": ; preds = %bb.al, %bb.ak
  %.val.i.i112 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !74419, !nonnull !21, !align !32, !noundef !21 ; 2 uses
  %.val1.i.i113 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !74419 ; 2 uses
  store i8 0, ptr %.val.i.i112, align 1
  %i.bp = icmp eq i64 %.val1.i.i113, 0
  br i1 %i.bp, label %"_ZN4core3ptr38drop_in_place$LT$std..fs..DirEntry$GT$17he6cc6471d7fbf1bdE.exit119", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i4.i.i114"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i4.i.i114": ; preds = %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17he55defc18a5a6924E.exit.i.i111"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i112, i64 noundef %.val1.i.i113, i64 noundef 1) #42
  br label %"_ZN4core3ptr38drop_in_place$LT$std..fs..DirEntry$GT$17he6cc6471d7fbf1bdE.exit119"

"_ZN4core3ptr38drop_in_place$LT$std..fs..DirEntry$GT$17he6cc6471d7fbf1bdE.exit119": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i4.i.i", %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17he55defc18a5a6924E.exit.i.i", %bb.b, %"_ZN4core3ptr77drop_in_place$LT$alloc..sync..Arc$LT$std..sys..fs..unix..InnerReadDir$GT$$GT$17he55defc18a5a6924E.exit.i.i111", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i5.i4.i.i114"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4dump6reader6compat8v1_to_v212CompatV1ToV210index_uuid17h7568e4b40b5f560dE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7.i.i.i.i.i.i.i.i.i = alloca [32 x i8], align 8 ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN4dump6reader2v18V1Reader10index_uuid17h0b637547b9017107E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1)
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !alias.scope !74474, !noalias !74475 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !74474, !noalias !74475, !nonnull !21, !noundef !21 ; 11 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !74474, !noalias !74475 ; 3 uses
  %i.d = icmp ult i64 %.sroa.5.0.copyload.i, 192153584101141163
  tail call void @llvm.assume(i1 %i.d)
  %.idx = mul nuw nsw i64 %.sroa.5.0.copyload.i, 48
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 %.idx ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74477)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !74478
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx2, align 8, !alias.scope !74479, !noalias !74480
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74486)
  %i.f = mul i64 %.sroa.0.0.copyload.i, 48        ; 6 uses
  %i.g = udiv i64 %i.f, 40                        ; 2 uses
  %.not7.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %.not7.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.a
  %.sroa.7.40..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7.i.i.i.i.i.i.i.i.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17h2c75de8e0b6474a5E.exit.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.h = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.o, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17h2c75de8e0b6474a5E.exit.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %storemerge8.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.4.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.n, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17h2c75de8e0b6474a5E.exit.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.i = phi ptr [ %.sroa.4.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.j, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17h2c75de8e0b6474a5E.exit.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !74487 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !74487 ; 2 uses
  %.sroa.36.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.36.0..sroa_idx.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !74487
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.k = icmp eq i64 %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17h2c75de8e0b6474a5E.exit.i.i.i.i.i.i.i.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.05.0.copyload.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !74488
  br label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17h2c75de8e0b6474a5E.exit.i.i.i.i.i.i.i.i.i"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17h2c75de8e0b6474a5E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.c, %bb.b
  %i.l = zext nneg i64 %i.h to i128
  %i.m = tail call i128 @llvm.bswap.i128(i128 %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %storemerge8.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.40..sroa_idx.i.i.i.i.i.i.i.i.i, i64 24, i1 false), !noalias !74487
  %.sroa.4.sroa.4.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i.i.i.i.i.i.i, i64 24
  store i128 %i.m, ptr %.sroa.4.sroa.4.0..sroa.5.8..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !74489
  %i.n = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.o = add nuw nsw i64 %i.h, 1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.loopexit.i.i, label %bb.b

.loopexit.i.i.i.loopexit.i.i:                     ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17h2c75de8e0b6474a5E.exit.i.i.i.i.i.i.i.i.i"
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx2, align 8, !noalias !74478
  br label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.loopexit.i.i.i.loopexit.i.i, %bb.a
  %i.p = phi ptr [ %.sroa.4.0.copyload.i, %bb.a ], [ %i.e, %.loopexit.i.i.i.loopexit.i.i ] ; 3 uses
  %storemerge.lcssa.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.a ], [ %i.n, %.loopexit.i.i.i.loopexit.i.i ]
  %i.q = ptrtoint ptr %storemerge.lcssa.i.i.i.i.i.i.i.i.i to i64
  %i.r = ptrtoint ptr %.sroa.4.0.copyload.i to i64
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = udiv exact i64 %i.s, 40                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !74490
  store ptr %.sroa.4.0.copyload.i, ptr %i.a, align 8, !noalias !74490
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.t, ptr %i.u, align 8, !noalias !74490
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.0.0.copyload.i, ptr %i.v, align 8, !noalias !74490
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74491)
  %i.w = ptrtoint ptr %i.e to i64
  %i.x = ptrtoint ptr %i.p to i64
  %i.y = sub nuw i64 %i.w, %i.x
  %i.z = udiv exact i64 %i.y, 48
  store i64 0, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8, !alias.scope !74492, !noalias !74493
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !alias.scope !74492, !noalias !74493
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01.sroa.4.0..sroa_idx, align 8, !alias.scope !74492, !noalias !74493
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01.sroa.6.0..sroa_idx, align 8, !alias.scope !74492, !noalias !74493
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74494)
  %i.aa = icmp eq ptr %i.e, %i.p
  br i1 %i.aa, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h124f0316e49afba8E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.loopexit.i.i.i.i.i, %"_ZN4core3ptr48drop_in_place$LT$dump..reader..v1..IndexUuid$GT$17hb9fc4a02e3cc90faE.exit.i.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i.i = phi i64 [ %i.ac, %"_ZN4core3ptr48drop_in_place$LT$dump..reader..v1..IndexUuid$GT$17hb9fc4a02e3cc90faE.exit.i.i.i.i.i.i.i" ], [ 0, %.loopexit.i.i.i.i.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %.sroa.0.07.i.i.i.i.i.i.i ; 4 uses
  %i.ac = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74497)
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !range !23, !alias.scope !74498, !noalias !74499, !noundef !21 ; 2 uses
  %i.ad = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ad, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !74498, !noalias !74499, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !74500
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74502)
  %.val.i.i4.i.i.i.i.i.i.i.i = load i64, ptr %i.af, align 8, !range !23, !alias.scope !74503, !noalias !74499, !noundef !21 ; 2 uses
  %i.ag = icmp eq i64 %.val.i.i4.i.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %"_ZN4core3ptr48drop_in_place$LT$dump..reader..v1..IndexUuid$GT$17hb9fc4a02e3cc90faE.exit.i.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i.i.i.i"
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.val1.i.i5.i.i.i.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !74503, !noalias !74499, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i5.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i4.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !74504
  br label %"_ZN4core3ptr48drop_in_place$LT$dump..reader..v1..IndexUuid$GT$17hb9fc4a02e3cc90faE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr48drop_in_place$LT$dump..reader..v1..IndexUuid$GT$17hb9fc4a02e3cc90faE.exit.i.i.i.i.i.i.i": ; preds = %bb.e, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.i.i.i.i.i.i.i.i"
  %i.ai = icmp eq i64 %i.ac, %i.z
  br i1 %i.ai, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h124f0316e49afba8E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr143drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$dump..reader..v1..IndexUuid$C$dump..reader..v2..meta..IndexUuid$GT$$GT$17h7645d5a9de48f085E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #43, !noalias !74490
  call fastcc void @"_ZN4core3ptr263drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..enumerate..Enumerate$LT$alloc..vec..into_iter..IntoIter$LT$dump..reader..v1..IndexUuid$GT$$GT$$C$dump..reader..compat..v1_to_v2..CompatV1ToV2..index_uuid..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h56c2fdc2f5fa2f69E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b) #43, !noalias !74493
  resume { ptr, i32 } %i.aj

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h124f0316e49afba8E.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr48drop_in_place$LT$dump..reader..v1..IndexUuid$GT$17hb9fc4a02e3cc90faE.exit.i.i.i.i.i.i.i", %.loopexit.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h66d99b2ec374be13E.exit, label %bb.g

bb.g:                                             ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h124f0316e49afba8E.exit.i.i.i.i.i"
  %i.ak = mul nuw i64 %i.g, 40                    ; 4 uses
  %.not49.i.i.i.i.i = icmp eq i64 %i.f, %i.ak
  br i1 %.not49.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h66d99b2ec374be13E.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = icmp ult i64 %i.f, 40
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.f, i64 noundef 8) #42, !noalias !74490
  br label %_ZN4core4iter6traits8iterator8Iterator7collect17h66d99b2ec374be13E.exit

bb.j:                                             ; preds = %bb.h
  %i.am = icmp ule i64 %i.ak, %i.f
  tail call void @llvm.assume(i1 %i.am)
  %i.an = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.f, i64 noundef 8, i64 noundef range(i64 0, -15) %i.ak) #42, !noalias !74490 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.k, label %_ZN4core4iter6traits8iterator8Iterator7collect17h66d99b2ec374be13E.exit, !prof !35

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.ak) #41
          to label %bb.l unwind label %bb.f, !noalias !74490

bb.l:                                             ; preds = %bb.k
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17h66d99b2ec374be13E.exit: ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h124f0316e49afba8E.exit.i.i.i.i.i", %bb.g, %bb.i, %bb.j
  %.sroa.01.0.i.i.i.i.i = phi ptr [ %.sroa.4.0.copyload.i, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h124f0316e49afba8E.exit.i.i.i.i.i" ], [ %.sroa.4.0.copyload.i, %bb.g ], [ %i.an, %bb.j ], [ inttoptr (i64 8 to ptr), %bb.i ]
  store i64 %i.g, ptr %0, align 8, !alias.scope !74505, !noalias !74506
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0.i.i.i.i.i, ptr %i.ap, align 8, !alias.scope !74505, !noalias !74506
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %i.aq, align 8, !alias.scope !74505, !noalias !74506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !74490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !74478
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_ZN4dump6reader6compat8v1_to_v212CompatV1ToV25tasks17he703e23715d76913E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !noundef !21
  %i.f = getelementptr inbounds nuw [128 x i8], ptr %i.c, i64 %i.e
  store ptr null, ptr %i.a, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.f, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !74509
  %i.g = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !74509 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hadfaeb3ae40f6887E.exit", !prof !35

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 56) #41
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr613drop_in_place$LT$core..iter..adapters..flatten..FlatMap$LT$core..iter..adapters..enumerate..Enumerate$LT$core..iter..adapters..map..Map$LT$core..slice..iter..Iter$LT$dump..reader..v1..V1Index$GT$$C$dump..reader..v1..V1Reader..indexes..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$alloc..boxed..Box$LT$dyn$u20$core..iter..traits..iterator..Iterator$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$$LP$dump..reader..v2..updates..UpdateEntry$C$core..option..Option$LT$dump..reader..v2..UpdateFile$GT$$RP$$C$dump..error..Error$GT$$GT$$C$dump..reader..compat..v1_to_v2..CompatV1ToV2..tasks..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h7e1a31dc6047da29E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #43
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.i

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hadfaeb3ae40f6887E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.g, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr @1477, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @"_ZN4dump6reader6compat8v1_to_v212CompatV1ToV25tasks28_$u7b$$u7b$closure$u7d$$u7d$17h0d15891f98702c56E"(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(256) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = alloca [456 x i8], align 8               ; 6 uses
  %i.c = alloca [248 x i8], align 8               ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload = load i64, ptr %i.d, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq i64 %.sroa.01.0.copyload, -9223372036854775808
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  store i64 10, ptr %i.b, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !74514
  %i.f = tail call noundef align 8 dereferenceable_or_null(456) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 456, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !74514 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h5cf96919f130cdd9E.exit", !prof !35

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 456) #41
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr175drop_in_place$LT$core..result..Result$LT$$LP$dump..reader..v2..updates..UpdateEntry$C$core..option..Option$LT$dump..reader..v2..UpdateFile$GT$$RP$$C$dump..error..Error$GT$$GT$17h246caaae1e95cd4bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(456) %i.b)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.h, %bb.d ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h5cf96919f130cdd9E.exit": ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(456) %i.f, ptr noundef nonnull align 8 dereferenceable(456) %i.b, i64 456, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load i64, ptr %0, align 8, !noundef !21
  store i64 %.sroa.01.0.copyload, ptr %i.c, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  %.sroa.7.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.7.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.7.0..sroa_idx, i64 208, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4dump6reader2v113V1IndexReader5tasks17ha276aac2a85c6bedE(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(248) %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.j, ptr %i.k, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !74515
  %i.l = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !74515 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hd0a822809e73410fE.exit", !prof !35

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 56) #41
          to label %.noexc16 unwind label %bb.h

.noexc16:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr374drop_in_place$LT$core..iter..adapters..filter_map..FilterMap$LT$core..iter..adapters..map..Map$LT$std..io..Lines$LT$std..io..buffered..bufreader..BufReader$LT$std..fs..File$GT$$GT$$C$dump..reader..v1..V1IndexReader..tasks..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$dump..reader..compat..v1_to_v2..CompatV1ToV2..tasks..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h8c619f192bdffbc3E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #43
  br label %common.resume

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hd0a822809e73410fE.exit": ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hd0a822809e73410fE.exit", %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h5cf96919f130cdd9E.exit"
  %.sroa.3.0 = phi ptr [ @1479, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h5cf96919f130cdd9E.exit" ], [ @1478, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hd0a822809e73410fE.exit" ]
  %.sroa.0.0 = phi ptr [ %i.f, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h5cf96919f130cdd9E.exit" ], [ %i.l, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hd0a822809e73410fE.exit" ]
  %i.o = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.p = insertvalue { ptr, ptr } %i.o, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.p
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4dump6reader6compat8v1_to_v2159_$LT$impl$u20$core..convert..From$LT$dump..reader..v1..update..UpdateType$GT$$u20$for$u20$core..option..Option$LT$dump..reader..v2..updates..UpdateMeta$GT$$GT$4from17hfa02a0dd59754dd6E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0, i64 noundef range(i64 0, 6) %1, ptr %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [216 x i8], align 8               ; 4 uses
  %i.e = alloca [224 x i8], align 16              ; 9 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.16 = alloca [190 x i8], align 2          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  switch i64 %1, label %default.unreachable58 [
    i64 0, label %bb.g
    i64 1, label %bb.b
    i64 2, label %bb.c
    i64 3, label %bb.d
    i64 4, label %bb.e
    i64 5, label %bb.f
  ]

default.unreachable58:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.m = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.n = icmp ult i64 %i.m, 4
  br i1 %i.n, label %bb.h, label %.thread56

bb.c:                                             ; preds = %bb.a
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
end_hunk_0
begin_hunk_1_@"_ZN4dump6reader6compat8v1_to_v2175_$LT$impl$u20$core..convert..From$LT$dump..reader..v1..settings..Settings$GT$$u20$for$u20$dump..reader..v2..settings..Settings$LT$dump..reader..v2..settings..Unchecked$GT$$GT$4from17hc0f0d1470f22c6a8E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  ret void

bb.bm:                                            ; preds = %bb.bi
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.635, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.640.0..sroa_idx, i64 16, i1 false)
  br label %bb.bl

bb.bn:                                            ; preds = %bb.bu, %bb.br, %.body.i.i.i.i.i.i.i.i.i.i.i, %bb.r
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44
  unreachable

bb.bo:                                            ; preds = %bb.bq, %bb.l
  %.sroa.043.0119 = phi i1 [ %.sroa.043.0120, %bb.bq ], [ %.sroa.043.1, %bb.l ]
  %.sroa.044.0117 = phi i1 [ %.sroa.044.0118, %bb.bq ], [ false, %bb.l ]
  %.pn.pn.pn115 = phi { ptr, i32 } [ %.pn.pn.pn116, %bb.bq ], [ %.pn.pn, %bb.l ]
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val = load i64, ptr %i.en, align 8, !range !33, !noundef !21 ; 2 uses
  %switch = icmp sgt i64 %.val, 0
  br i1 %switch, label %bb.bp, label %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h715d697fd487cf1bE.exit"

bb.bp:                                            ; preds = %bb.bo
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val76 = load ptr, ptr %i.eo, align 8, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val76, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !74773
  br label %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h715d697fd487cf1bE.exit"

bb.bq:                                            ; preds = %.thread, %bb.l
  %.sroa.043.0120 = phi i1 [ true, %.thread ], [ %.sroa.043.1, %bb.l ]
  %.sroa.044.0118 = phi i1 [ true, %.thread ], [ false, %bb.l ]
  %.pn.pn.pn116 = phi { ptr, i32 } [ %i.af, %.thread ], [ %.pn.pn, %bb.l ]
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 96
  call fastcc void @"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$$GT$17h6b295331a697883fE"(ptr noalias noundef align 8 dereferenceable(24) %i.ep) #43
  br label %bb.bo

"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h715d697fd487cf1bE.exit": ; preds = %bb.bo, %bb.bp
  br i1 %.sroa.044.0117, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bs, %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h715d697fd487cf1bE.exit"
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @"_ZN4core3ptr146drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$$GT$17h8173633f854e6100E"(ptr noalias noundef align 8 dereferenceable(32) %i.eq) #43
          to label %bb.bt unwind label %bb.bn

bb.bs:                                            ; preds = %"_ZN4core3ptr98drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..string..String$GT$$GT$$GT$17h715d697fd487cf1bE.exit"
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 144
  call fastcc void @"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$$GT$17h6b295331a697883fE"(ptr noalias noundef align 8 dereferenceable(24) %i.er) #43
  br label %bb.br

bb.bt:                                            ; preds = %bb.br
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.et = load i64, ptr %i.es, align 8, !range !48, !alias.scope !74774, !noundef !21
  %i.eu = icmp eq i64 %i.et, 1
  br i1 %i.eu, label %bb.bu, label %"_ZN4core3ptr193drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$$GT$$GT$17h26c1404fab98c087E.exit"

bb.bu:                                            ; preds = %bb.bt
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17hd8dfcc37e2d23ec2E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.ev)
          to label %"_ZN4core3ptr193drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$$GT$$GT$17h26c1404fab98c087E.exit" unwind label %bb.bn

"_ZN4core3ptr193drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$$GT$$GT$17h26c1404fab98c087E.exit": ; preds = %bb.bt, %bb.bu
  br i1 %.sroa.043.0119, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %"_ZN4core3ptr193drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$$GT$$GT$17h26c1404fab98c087E.exit"
  resume { ptr, i32 } %.pn.pn.pn115

bb.bw:                                            ; preds = %"_ZN4core3ptr193drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$$GT$$GT$17h26c1404fab98c087E.exit"
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 168
  call fastcc void @"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$$GT$17h6b295331a697883fE"(ptr noalias noundef align 8 dereferenceable(24) %i.ew) #43
  br label %bb.bv
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4dump6reader6compat8v1_to_v217CompatIndexV1ToV28settings17h768eb18452b74c15E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0, ptr noalias noundef align 8 dereferenceable(248) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [192 x i8], align 8               ; 4 uses
  %i.b = alloca [192 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 5 uses
  %i.c = alloca [224 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN4dump6reader2v113V1IndexReader8settings17h40c5b6778ecfc220E(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(248) %1)
  %i.d = load i64, ptr %i.b, align 8, !range !29, !noundef !21 ; 2 uses
  %i.e = icmp eq i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 3, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.8.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.8.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.65.0..sroa_idx, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.a, align 8
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  call void @"_ZN4dump6reader6compat8v1_to_v2175_$LT$impl$u20$core..convert..From$LT$dump..reader..v1..settings..Settings$GT$$u20$for$u20$dump..reader..v2..settings..Settings$LT$dump..reader..v2..settings..Unchecked$GT$$GT$4from17hc0f0d1470f22c6a8E"(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(192) %i.a)
  call void @"_ZN4dump6reader2v28settings53Settings$LT$dump..reader..v2..settings..Unchecked$GT$5check17hcc1aa19919d355e5E"(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(224) %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4dump6reader6compat8v1_to_v217CompatIndexV1ToV29documents17h557181fddc784450E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(248) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !74777
  %i.a = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !74777 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit, !prof !35

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #41, !noalias !74777
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  store ptr %i.c, ptr %i.a, align 8, !noalias !74777
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @1502, ptr %i.e, align 8
  store i32 13, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4dump6reader6compat8v1_to_v2181_$LT$impl$u20$core..convert..From$LT$dump..reader..v1..settings..SettingsUpdate$GT$$u20$for$u20$dump..reader..v2..settings..Settings$LT$dump..reader..v2..settings..Unchecked$GT$$GT$4from17hfcbe616b488cf84bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(216) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.629 = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.624 = alloca [24 x i8], align 8          ; 4 uses
  %.sroa.621 = alloca [24 x i8], align 8          ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.615 = alloca [24 x i8], align 8          ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.03.0.copyload = load i64, ptr %i.u, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.7.sroa.0.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 14 uses
  %i.v = icmp slt i64 %.sroa.03.0.copyload, 0
  %i.w = add i64 %.sroa.03.0.copyload, -9223372036854775807
  %i.x = select i1 %i.v, i64 %i.w, i64 0
  switch i64 %i.x, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.x
    i64 2, label %bb.y
  ]

bb.b:                                             ; preds = %bb.bj, %bb.al, %bb.ai, %bb.ab, %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.7.sroa.6.0.copyload = load i64, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.copyload) ]
  %i.y = icmp ult i64 %.sroa.7.sroa.6.0.copyload, 288230376151711744
  tail call void @llvm.assume(i1 %i.y)
  %.idx.i.i = shl nuw nsw i64 %.sroa.7.sroa.6.0.copyload, 5
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.7.sroa.0.0.copyload, i64 %.idx.i.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !74896
  store ptr %.sroa.7.sroa.0.0.copyload, ptr %i.l, align 8, !alias.scope !74897, !noalias !74898
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 %.sroa.03.0.copyload, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !alias.scope !74897, !noalias !74898
  %.sroa.68.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store ptr %i.z, ptr %.sroa.68.0..sroa_idx.i.i, align 8, !alias.scope !74897, !noalias !74898
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74901)
  %i.aa = shl i64 %.sroa.03.0.copyload, 5         ; 4 uses
  %i.ab = udiv i64 %i.aa, 24                      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74902)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74905)
  %.not12.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.7.sroa.6.0.copyload, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %bb.s, %.body.i.i.i.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.bq, %bb.s ], [ %eh.lpad-body7.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  call fastcc void @"_ZN4core3ptr627drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..filter_map..FilterMap$LT$alloc..vec..into_iter..IntoIter$LT$dump..reader..v1..settings..RankingRule$GT$$C$$LT$core..option..Option$LT$dump..reader..v2..settings..Criterion$GT$$u20$as$u20$core..convert..From$LT$dump..reader..v1..settings..RankingRule$GT$$GT$..from$GT$$C$dump..reader..compat..v1_to_v2..$LT$impl$u20$core..convert..From$LT$dump..reader..v1..settings..SettingsUpdate$GT$$u20$for$u20$dump..reader..v2..settings..Settings$LT$dump..reader..v2..settings..Unchecked$GT$$GT$..from..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h0179b6a890db1924E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l) #43, !noalias !74906
  br label %.body

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 22
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h93ab9c3f6d6576d0E.exit.i.i.i.i.i.i.i.i.i.i.i", %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ai = phi ptr [ %.sroa.7.sroa.0.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aj, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h93ab9c3f6d6576d0E.exit.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %storemerge13.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn10.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h93ab9c3f6d6576d0E.exit.i.i.i.i.i.i.i.i.i.i.i" ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !74907
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false), !noalias !74907
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 5 uses
  store ptr %.sroa.7.sroa.0.0.copyload, ptr %i.j, align 8, !noalias !74907
  store ptr %storemerge13.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ac, align 8, !noalias !74907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !74908
  invoke void @"_ZN4dump6reader6compat8v1_to_v2162_$LT$impl$u20$core..convert..From$LT$dump..reader..v1..settings..RankingRule$GT$$u20$for$u20$core..option..Option$LT$dump..reader..v2..settings..Criterion$GT$$GT$4from17hd8a449e00559005fE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.ad)
          to label %_ZN4core3ops8function5FnMut8call_mut17he95950d10e0c62dfE.exit.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.p, !noalias !74907

_ZN4core3ops8function5FnMut8call_mut17he95950d10e0c62dfE.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.ak = load i64, ptr %i.i, align 8, !range !117, !noalias !74908, !noundef !21
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ak, 8
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h93ab9c3f6d6576d0E.exit.i.i.i.i.i.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %_ZN4core3ops8function5FnMut8call_mut17he95950d10e0c62dfE.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !74909
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !74908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !74910)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !74911
  store i64 0, ptr %i.f, align 8, !noalias !74911
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !74911
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !74911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !74911
  store i32 -536870880, ptr %i.ae, align 8, !noalias !74911
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !74911
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 2, !noalias !74911
  store ptr %i.f, ptr %i.e, align 8, !noalias !74911
  store ptr @1316, ptr %i.af, align 8, !noalias !74911
  %i.al = invoke noundef zeroext i1 @"_ZN76_$LT$dump..reader..v2..settings..Criterion$u20$as$u20$core..fmt..Display$GT$3fmt17h3d5af15da6e1c33dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.h unwind label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !noalias !74912

.loopexit.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.e
  %lpad.loopexit.i.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aj, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !alias.scope !74913, !noalias !74906
  br label %bb.f

.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !74914)
  call void @llvm.experimental.noalias.scope.decl(metadata !74915)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !range !23, !alias.scope !74916, !noalias !74911, !noundef !21 ; 2 uses
  %i.am = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !74916, !noalias !74911, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !74917
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.e
  br i1 %i.al, label %bb.i, label %bb.l, !prof !19

bb.i:                                             ; preds = %bb.h
  store ptr %i.aj, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !alias.scope !74913, !noalias !74906
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1317, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1330, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1319) #41
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i.i.i.i, !noalias !74912

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.i
  unreachable

.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.g, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !74918)
  %i.an = load i64, ptr %i.g, align 8, !range !63, !alias.scope !74918, !noalias !74919, !noundef !21
  switch i64 %i.an, label %default.unreachable [
    i64 0, label %.body.i.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %.body.i.i.i.i.i.i.i.i.i.i.i.i
    i64 2, label %.body.i.i.i.i.i.i.i.i.i.i.i.i
    i64 3, label %.body.i.i.i.i.i.i.i.i.i.i.i.i
    i64 4, label %.body.i.i.i.i.i.i.i.i.i.i.i.i
    i64 5, label %.body.i.i.i.i.i.i.i.i.i.i.i.i
    i64 6, label %bb.k
    i64 7, label %bb.j
  ]

default.unreachable:                              ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

bb.j:                                             ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !range !23, !alias.scope !74920, !noalias !74919, !noundef !21 ; 2 uses
  %i.ao = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %.body.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.k, %bb.j
  %.val.i.i1.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.val.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.k ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j ]
  %.val1.i.i2.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !74918, !noalias !74919, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i1.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !74921
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !range !23, !alias.scope !74922, !noalias !74919, !noundef !21 ; 2 uses
  %i.ap = icmp eq i64 %.val.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ap, label %.body.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !74923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !74911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !74911
  call void @llvm.experimental.noalias.scope.decl(metadata !74924)
  %i.aq = load i64, ptr %i.g, align 8, !range !63, !alias.scope !74925, !noalias !74919, !noundef !21
  switch i64 %i.aq, label %default.unreachable [
    i64 0, label %bb.o
    i64 1, label %bb.o
    i64 2, label %bb.o
    i64 3, label %bb.o
    i64 4, label %bb.o
    i64 5, label %bb.o
    i64 6, label %bb.n
    i64 7, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %.val.i.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !range !23, !alias.scope !74926, !noalias !74919, !noundef !21 ; 2 uses
  %i.ar = icmp eq i64 %.val.i.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ar, label %bb.o, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.n, %bb.m
  %.val.i.i1.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.val.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.n ], [ %.val.i.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ]
  %.val1.i.i2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !74925, !noalias !74919, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i1.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !74927
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %.val.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !range !23, !alias.scope !74928, !noalias !74919, !noundef !21 ; 2 uses
  %i.as = icmp eq i64 %.val.i.i1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.as, label %bb.o, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.o:                                             ; preds = %bb.n, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.m, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !74909
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %storemerge13.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !74909
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge13.i.i.i.i.i.i.i.i.i.i.i, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h93ab9c3f6d6576d0E.exit.i.i.i.i.i.i.i.i.i.i.i"

.body.i.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.p, %bb.k, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.j, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body7.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.au, %bb.p ], [ %lpad.phi.i.i.i.i.i.i.i.i.i.i.i, %bb.k ], [ %lpad.phi.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %lpad.phi.i.i.i.i.i.i.i.i.i.i.i, %bb.j ], [ %lpad.phi.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.phi.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.phi.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.phi.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.phi.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %lpad.phi.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  call fastcc void @"_ZN4core3ptr88drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$alloc..string..String$GT$$GT$17h897c60bb758eb8b9E"(ptr nonnull %.sroa.7.sroa.0.0.copyload, ptr %storemerge13.i.i.i.i.i.i.i.i.i.i.i) #43, !noalias !74908
  br label %.body.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aj, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !alias.scope !74913, !noalias !74906
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i

"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h93ab9c3f6d6576d0E.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.o, %_ZN4core3ops8function5FnMut8call_mut17he95950d10e0c62dfE.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.pn10.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %bb.o ], [ %storemerge13.i.i.i.i.i.i.i.i.i.i.i, %_ZN4core3ops8function5FnMut8call_mut17he95950d10e0c62dfE.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !74908
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !74907
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.z
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %bb.d

.loopexit.i.i.i.i.i.i.i:                          ; preds = %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h93ab9c3f6d6576d0E.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.c
  %i.av = phi ptr [ %.sroa.7.sroa.0.0.copyload, %bb.c ], [ %i.z, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h93ab9c3f6d6576d0E.exit.i.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %storemerge.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload, %bb.c ], [ %.pn10.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core4iter8adapters10filter_map19filter_map_try_fold28_$u7b$$u7b$closure$u7d$$u7d$17h93ab9c3f6d6576d0E.exit.i.i.i.i.i.i.i.i.i.i.i" ]
  %i.aw = ptrtoint ptr %storemerge.lcssa.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ax = ptrtoint ptr %.sroa.7.sroa.0.0.copyload to i64
  %i.ay = sub nuw i64 %i.aw, %i.ax
  %i.az = udiv exact i64 %i.ay, 24                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !74929
  store ptr %.sroa.7.sroa.0.0.copyload, ptr %i.k, align 8, !noalias !74929
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !noalias !74929
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.03.0.copyload, ptr %i.bb, align 8, !noalias !74929
  call void @llvm.experimental.noalias.scope.decl(metadata !74930)
  %i.bc = ptrtoint ptr %i.z to i64
  %i.bd = ptrtoint ptr %i.av to i64
  %i.be = sub nuw i64 %i.bc, %i.bd
  %i.bf = lshr exact i64 %i.be, 5
  store i64 0, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !alias.scope !74931, !noalias !74906
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !alias.scope !74931, !noalias !74906
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.46.0..sroa_idx.i.i, align 8, !alias.scope !74931, !noalias !74906
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.68.0..sroa_idx.i.i, align 8, !alias.scope !74931, !noalias !74906
  call void @llvm.experimental.noalias.scope.decl(metadata !74932)
  %i.bg = icmp eq ptr %i.z, %i.av
  br i1 %i.bg, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h0c557140c12986f4E.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.loopexit.i.i.i.i.i.i.i, %"_ZN4core3ptr60drop_in_place$LT$dump..reader..v1..settings..RankingRule$GT$17h33689dfa545b5a1aE.exit.i.i.i.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bi, %"_ZN4core3ptr60drop_in_place$LT$dump..reader..v1..settings..RankingRule$GT$17h33689dfa545b5a1aE.exit.i.i.i.i.i.i.i.i.i" ], [ 0, %.loopexit.i.i.i.i.i.i.i ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.bi = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !74933)
  %i.bj = load i64, ptr %i.bh, align 8, !range !63, !alias.scope !74934, !noalias !74935, !noundef !21
  switch i64 %i.bj, label %default.unreachable [
    i64 0, label %"_ZN4core3ptr60drop_in_place$LT$dump..reader..v1..settings..RankingRule$GT$17h33689dfa545b5a1aE.exit.i.i.i.i.i.i.i.i.i"
    i64 1, label %"_ZN4core3ptr60drop_in_place$LT$dump..reader..v1..settings..RankingRule$GT$17h33689dfa545b5a1aE.exit.i.i.i.i.i.i.i.i.i"
    i64 2, label %"_ZN4core3ptr60drop_in_place$LT$dump..reader..v1..settings..RankingRule$GT$17h33689dfa545b5a1aE.exit.i.i.i.i.i.i.i.i.i"
    i64 3, label %"_ZN4core3ptr60drop_in_place$LT$dump..reader..v1..settings..RankingRule$GT$17h33689dfa545b5a1aE.exit.i.i.i.i.i.i.i.i.i"
    i64 4, label %"_ZN4core3ptr60drop_in_place$LT$dump..reader..v1..settings..RankingRule$GT$17h33689dfa545b5a1aE.exit.i.i.i.i.i.i.i.i.i"
    i64 5, label %"_ZN4core3ptr60drop_in_place$LT$dump..reader..v1..settings..RankingRule$GT$17h33689dfa545b5a1aE.exit.i.i.i.i.i.i.i.i.i"
    i64 6, label %bb.r
    i64 7, label %bb.q
  ]

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 8, !range !23, !alias.scope !74936, !noalias !74935, !noundef !21 ; 2 uses
  %i.bl = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bl, label %"_ZN4core3ptr60drop_in_place$LT$dump..reader..v1..settings..RankingRule$GT$17h33689dfa545b5a1aE.exit.i.i.i.i.i.i.i.i.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.sink.split.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.sink.split.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.r, %bb.q
  %.val.i.i1.sink.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.val.i.i1.i.i.i.i.i.i.i.i.i.i, %bb.r ], [ %.val.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.val1.i.i2.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !74934, !noalias !74935, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i2.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i1.sink.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !74937
  br label %"_ZN4core3ptr60drop_in_place$LT$dump..reader..v1..settings..RankingRule$GT$17h33689dfa545b5a1aE.exit.i.i.i.i.i.i.i.i.i"

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.val.i.i1.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bn, align 8, !range !23, !alias.scope !74938, !noalias !74935, !noundef !21 ; 2 uses
  %i.bo = icmp eq i64 %.val.i.i1.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bo, label %"_ZN4core3ptr60drop_in_place$LT$dump..reader..v1..settings..RankingRule$GT$17h33689dfa545b5a1aE.exit.i.i.i.i.i.i.i.i.i", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.sink.split.i.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr60drop_in_place$LT$dump..reader..v1..settings..RankingRule$GT$17h33689dfa545b5a1aE.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.r, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4dcf842a25fb7693E.exit.sink.split.i.i.i.i.i.i.i.i.i.i", %bb.q, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bp = icmp eq i64 %i.bi, %i.bf
  br i1 %i.bp, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h0c557140c12986f4E.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.v
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr143drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$dump..reader..v1..settings..RankingRule$C$alloc..string..String$GT$$GT$17hc74f71968ed6fecdE"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #43, !noalias !74929
  br label %.body.i.i.i.i.i.i.i

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h0c557140c12986f4E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr60drop_in_place$LT$dump..reader..v1..settings..RankingRule$GT$17h33689dfa545b5a1aE.exit.i.i.i.i.i.i.i.i.i", %.loopexit.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.03.0.copyload, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h0c557140c12986f4E.exit.i.i.i.i.i.i.i"
  %i.br = mul nuw i64 %i.ab, 24                   ; 4 uses
  %.not49.i.i.i.i.i.i.i = icmp eq i64 %i.aa, %i.br
  br i1 %.not49.i.i.i.i.i.i.i, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = icmp ule i64 %i.br, %i.aa
  call void @llvm.assume(i1 %i.bs)
  %i.bt = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.7.sroa.0.0.copyload, i64 noundef %i.aa, i64 noundef 8, i64 noundef range(i64 0, -15) %i.br) #42, !noalias !74929 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.v, label %bb.aa, !prof !35

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.br) #41
          to label %bb.w unwind label %bb.s, !noalias !74929

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %i.q, align 8
  br label %bb.ab

bb.y:                                             ; preds = %bb.a
  store i64 -9223372036854775807, ptr %i.q, align 8
  br label %bb.ab

.body:                                            ; preds = %bb.af, %.body.i.i.i.i.i.i.i
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.af ], [ %.pn.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ]
  %.sroa.037.0 = phi i1 [ false, %bb.af ], [ true, %.body.i.i.i.i.i.i.i ]
  %.sroa.036.0 = phi i1 [ %.sroa.036.1, %bb.af ], [ true, %.body.i.i.i.i.i.i.i ]
  %.sroa.035.0 = phi i1 [ %.sroa.035.1, %bb.af ], [ true, %.body.i.i.i.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val55 = load i64, ptr %i.bv, align 8, !range !33, !noundef !21 ; 2 uses
  %or.cond.i = icmp slt i64 %.val55, 1
  br i1 %or.cond.i, label %"_ZN4core3ptr89drop_in_place$LT$dump..reader..v1..settings..UpdateState$LT$alloc..string..String$GT$$GT$17ha303ecc51db4546eE.exit", label %bb.z

bb.z:                                             ; preds = %.body
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val56 = load ptr, ptr %i.bw, align 8, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val56, i64 noundef %.val55, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !74939
  br label %"_ZN4core3ptr89drop_in_place$LT$dump..reader..v1..settings..UpdateState$LT$alloc..string..String$GT$$GT$17ha303ecc51db4546eE.exit"

bb.aa:                                            ; preds = %bb.u, %bb.t, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h0c557140c12986f4E.exit.i.i.i.i.i.i.i"
  %.sroa.01.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.7.sroa.0.0.copyload, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h0c557140c12986f4E.exit.i.i.i.i.i.i.i" ], [ %.sroa.7.sroa.0.0.copyload, %bb.t ], [ %i.bt, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !74929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !74896
  store i64 %i.ab, ptr %i.q, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.01.0.i.i.i.i.i.i.i, ptr %.sroa.480.0..sroa_idx, align 8
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.az, ptr %.sroa.581.0..sroa_idx, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %.sroa.09.0.copyload = load i64, ptr %1, align 8
  switch i64 %.sroa.09.0.copyload, label %bb.b [
    i64 0, label %bb.ac
    i64 1, label %bb.ad
    i64 2, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %.sroa.610.sroa.7.0..sroa.610.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.610.sroa.7.0.copyload = load i64, ptr %.sroa.610.sroa.7.0..sroa.610.0..sroa_idx.sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.610.sroa.6.0..sroa.610.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.610.sroa.6.0.copyload = load i64, ptr %.sroa.610.sroa.6.0..sroa.610.0..sroa_idx.sroa_idx, align 8
  %.sroa.610.sroa.0.0.copyload = load ptr, ptr %.sroa.610.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !74940
  %.not.i.i.i = icmp ne ptr %.sroa.610.sroa.0.0.copyload, null ; 3 uses
  %.sroa.10.0.i.i = select i1 %.not.i.i.i, i64 %.sroa.610.sroa.6.0.copyload, i64 undef ; 2 uses
  %.sink23.i.i.i = zext i1 %.not.i.i.i to i64     ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i = select i1 %.not.i.i.i, i64 %.sroa.610.sroa.7.0.copyload, i64 0
  store i64 %.sink23.i.i.i, ptr %i.d, align 8, !noalias !74940
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !74940
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.610.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !74940
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.10.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !74940
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sink23.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !74940
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr null, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !74940
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %.sroa.610.sroa.0.0.copyload, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !74940
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 %.sroa.10.0.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !74940
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !74940
  invoke fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h16f39662350c02ecE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.d)
          to label %bb.ah unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  store i64 -9223372036854775808, ptr %i.t, align 8
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ab
  store i64 -9223372036854775807, ptr %i.t, align 8
  br label %bb.ai

bb.af:                                            ; preds = %bb.an, %bb.ag
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.an ], [ %i.bx, %bb.ag ]
  %.sroa.036.1 = phi i1 [ false, %bb.an ], [ true, %bb.ag ]
  %.sroa.035.1 = phi i1 [ %.sroa.035.2, %bb.an ], [ true, %bb.ag ]
  call fastcc void @"_ZN4core3ptr108drop_in_place$LT$dump..reader..v2..settings..Setting$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17he016aab350d237aaE"(ptr noalias noundef align 8 dereferenceable(24) %i.q) #43
  br label %.body

bb.ag:                                            ; preds = %bb.ac
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ah:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !74940
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.sroa.011.0.copyload = load i64, ptr %i.by, align 8 ; 3 uses
  %i.bz = icmp slt i64 %.sroa.011.0.copyload, 0
  %i.ca = add i64 %.sroa.011.0.copyload, -9223372036854775807
  %i.cb = select i1 %i.bz, i64 %i.ca, i64 0
  switch i64 %i.cb, label %bb.b [
    i64 0, label %bb.aj
    i64 1, label %bb.al
    i64 2, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.441.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak, %bb.aj
  %.sink = phi i64 [ -9223372036854775807, %bb.ak ], [ %.sroa.011.0.copyload, %bb.aj ], [ -9223372036854775808, %bb.ai ]
  store i64 %.sink, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.cd = load i64, ptr %i.cc, align 8, !range !33, !noundef !21 ; 3 uses
  %i.ce = icmp slt i64 %i.cd, 0
  %i.cf = add i64 %i.cd, -9223372036854775807
  %i.cg = select i1 %i.ce, i64 %i.cf, i64 0       ; 2 uses
  switch i64 %i.cg, label %bb.b [
    i64 0, label %bb.am
    i64 1, label %bb.ar
    i64 2, label %bb.as
  ]

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val57 = load ptr, ptr %i.ch, align 8, !nonnull !21, !noundef !21 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val58 = load i64, ptr %i.ci, align 8, !noundef !21 ; 3 uses
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h8026fd3e6d6fd74aE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o, ptr nonnull %.val57, i64 %.val58)
          to label %bb.ap unwind label %bb.ao

bb.an:                                            ; preds = %bb.at, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.at ], [ %i.cj, %bb.ao ]
  %.sroa.035.2 = phi i1 [ false, %bb.at ], [ true, %bb.ao ]
  call fastcc void @"_ZN4core3ptr108drop_in_place$LT$dump..reader..v2..settings..Setting$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17he016aab350d237aaE"(ptr noalias noundef align 8 dereferenceable(24) %i.s) #43
  call fastcc void @"_ZN4core3ptr108drop_in_place$LT$dump..reader..v2..settings..Setting$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$$GT$17he016aab350d237aaE"(ptr noalias noundef align 8 dereferenceable(24) %i.t) #43
  br label %bb.af

bb.ao:                                            ; preds = %bb.ap, %bb.am
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ap:                                            ; preds = %bb.am
  %.sroa.095.0.copyload = load i64, ptr %i.o, align 8
  %.sroa.696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.696.0.copyload = load ptr, ptr %.sroa.696.0..sroa_idx, align 8, !nonnull !21, !noundef !21 ; 3 uses
  %.sroa.797.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.797.0.copyload = load i64, ptr %.sroa.797.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !74941
  %i.ck = icmp ult i64 %.sroa.797.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.696.0.copyload, i64 %.sroa.797.0.copyload
  store ptr %.sroa.696.0.copyload, ptr %i.c, align 8, !alias.scope !74942, !noalias !74943
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.095.0.copyload, ptr %i.cm, align 8, !alias.scope !74942, !noalias !74943
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.696.0.copyload, ptr %i.cn, align 8, !alias.scope !74942, !noalias !74943
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.cl, ptr %i.co, align 8, !alias.scope !74942, !noalias !74943
  invoke fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h38ff5639e4f88548E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.aq unwind label %bb.ao

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !74941
  %i.cp = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.615)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !74944
  %i.cq = icmp ult i64 %.val58, 384307168202282326
  call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %.val57, i64 %.val58
  store ptr %.val57, ptr %i.b, align 8, !alias.scope !74945, !noalias !74946
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.cd, ptr %i.cs, align 8, !alias.scope !74945, !noalias !74946
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.val57, ptr %i.ct, align 8, !alias.scope !74945, !noalias !74946
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.cr, ptr %i.cu, align 8, !alias.scope !74945, !noalias !74946
  invoke fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h38ff5639e4f88548E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.au unwind label %bb.at

bb.ar:                                            ; preds = %bb.al
  store i64 1, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.615)
  br label %bb.av

bb.as:                                            ; preds = %bb.al
  store i64 2, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.615)
  br label %bb.av

bb.at:                                            ; preds = %bb.aq
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr133drop_in_place$LT$dump..reader..v2..settings..Setting$LT$alloc..collections..btree..set..BTreeSet$LT$alloc..string..String$GT$$GT$$GT$17hdd80cb0420370e13E"(ptr noalias noundef align 8 dereferenceable(32) %i.r) #43
          to label %bb.an unwind label %bb.aw

bb.au:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !74944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.615, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.av
end_hunk_1
begin_hunk_2_@"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha497b30c85d38af9E":bb.a

bb.v:                                             ; preds = %.noexc7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !88243
  invoke fastcc void @"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha497b30c85d38af9E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cu)
          to label %.noexc21 unwind label %.loopexit, !inline_history !88154

.noexc21:                                         ; preds = %bb.v
  %.sroa.068.0.copyload = load i64, ptr %i.a, align 8, !noalias !88244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.469.0..sroa_idx, i64 24, i1 false), !noalias !88239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.570.0..sroa_idx, i64 40, i1 false), !noalias !88239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !88243
  br label %.noexc8

.noexc8:                                          ; preds = %.noexc21, %.noexc20, %.noexc19, %bb.s, %bb.r, %.noexc7
  %.sroa.022.0 = phi i64 [ %.sroa.068.0.copyload, %.noexc21 ], [ %i.cv, %bb.r ], [ %i.cv, %bb.s ], [ -9223372036854775805, %.noexc19 ], [ -9223372036854775804, %.noexc20 ], [ -9223372036854775808, %.noexc7 ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h334bdfa87607afd5E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ct)
          to label %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17he53a34434c13c26dE.exit.i" unwind label %bb.w, !noalias !88225, !inline_history !88161

bb.w:                                             ; preds = %.noexc8
  %i.de = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.022.0, ptr %i.ct, align 8, !noalias !88245
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, i64 24, i1 false), !noalias !88245
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12, i64 40, i1 false), !noalias !88245
  br label %.body

"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17he53a34434c13c26dE.exit.i": ; preds = %.noexc8
  store i64 %.sroa.022.0, ptr %i.ct, align 8, !noalias !88245
  %.sroa.10.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx27, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, i64 24, i1 false), !noalias !88245
  %.sroa.12.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12.0..sroa_idx31, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.12, i64 40, i1 false), !noalias !88245
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %exitcond.not = icmp eq i64 %i.cn, %i.ck
  br i1 %exitcond.not, label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h425739c2bf5efe20E.exit.i", label %bb.p

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h425739c2bf5efe20E.exit.i": ; preds = %"_ZN68_$LT$indexmap..Bucket$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17he53a34434c13c26dE.exit.i", %"_ZN4core3ptr103drop_in_place$LT$$u5b$indexmap..Bucket$LT$alloc..string..String$C$serde_json..value..Value$GT$$u5d$$GT$17h5ea33a633534ed3bE.exit.i.thread"
  %.idx72 = sub nuw nsw i64 %i.bo, %i.ck          ; 3 uses
  %i.df = load i64, ptr %i.h, align 8, !range !23, !alias.scope !88246, !noundef !21
  %i.dg = sub nsw i64 %i.df, %i.ck
  %i.dh = icmp ugt i64 %.idx72, %i.dg
  br i1 %i.dh, label %bb.x, label %.noexc10, !prof !19

bb.x:                                             ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h425739c2bf5efe20E.exit.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17he01d308c3523cc7aE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h, i64 noundef %i.ck, i64 noundef %.idx72, i64 noundef 8, i64 noundef 104)
          to label %..noexc10_crit_edge unwind label %.loopexit.split-lp

..noexc10_crit_edge:                              ; preds = %bb.x
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !88247, !noalias !88226
  br label %.noexc10

.noexc10:                                         ; preds = %..noexc10_crit_edge, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h425739c2bf5efe20E.exit.i"
  %i.di = phi ptr [ %.pre, %..noexc10_crit_edge ], [ %i.cm, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17h425739c2bf5efe20E.exit.i" ]
  %i.dj = icmp eq i64 %i.ck, %i.bo
  br i1 %i.dj, label %bb.al, label %.preheader

.preheader:                                       ; preds = %.noexc10
  %i.dk = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !88247, !noalias !88226, !noundef !21
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.z

bb.y:                                             ; preds = %bb.z
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body2.i

.body2.i:                                         ; preds = %bb.ag, %bb.ah, %bb.y
  %eh.lpad-body3.i = phi { ptr, i32 } [ %i.dl, %bb.y ], [ %i.dz, %bb.ah ], [ %i.dz, %bb.ag ]
  store i64 %.sroa.648.0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !88248
  br label %.body

bb.z:                                             ; preds = %.preheader, %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i
  %.sroa.648.0 = phi i64 [ %i.ed, %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i ], [ %i.dk, %.preheader ] ; 3 uses
  %.sroa.06.0.i.i = phi i64 [ %i.ee, %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i ], [ 0, %.preheader ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [104 x i8], ptr %i.cl, i64 %.sroa.06.0.i.i ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.055.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.055.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.055.sroa.6)
  call void @llvm.experimental.noalias.scope.decl(metadata !88249)
  call void @llvm.experimental.noalias.scope.decl(metadata !88250), !noalias !88251
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  %i.do = load i64, ptr %i.dn, align 8, !alias.scope !88252, !noalias !88253, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !88254
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1671)
          to label %.noexc.i unwind label %bb.y, !noalias !88255, !inline_history !88180

.noexc.i:                                         ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !88256), !noalias !88251
  call void @llvm.experimental.noalias.scope.decl(metadata !88257), !noalias !88251
  %i.dq = load i64, ptr %i.dp, align 8, !range !93, !alias.scope !88258, !noalias !88259, !noundef !21 ; 4 uses
  %i.dr = xor i64 %i.dq, -9223372036854775808
  %i.ds = icmp slt i64 %i.dq, 0
  %i.dt = select i1 %i.ds, i64 %i.dr, i64 5
  switch i64 %i.dt, label %bb.aa [
    i64 0, label %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i
    i64 1, label %bb.ab
    i64 2, label %bb.ac
    i64 3, label %bb.ad
    i64 4, label %bb.ae
    i64 5, label %bb.af
  ]

bb.aa:                                            ; preds = %.noexc.i
  unreachable

bb.ab:                                            ; preds = %.noexc.i
  %.sroa.9.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx62, i64 24, i1 false), !alias.scope !88260, !noalias !88253
  %.sroa.11.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.0..sroa_idx64, i64 40, i1 false), !alias.scope !88260, !noalias !88253
  br label %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i

bb.ac:                                            ; preds = %.noexc.i
  %.sroa.9.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx61, i64 24, i1 false), !alias.scope !88260, !noalias !88253
  %.sroa.11.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.0..sroa_idx63, i64 40, i1 false), !alias.scope !88260, !noalias !88253
  br label %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i

bb.ad:                                            ; preds = %.noexc.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !88261
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.du, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1652)
          to label %.noexc.i.i15 unwind label %bb.ag, !noalias !88262, !inline_history !88184

.noexc.i.i15:                                     ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !88263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !88261
  br label %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i

bb.ae:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !88261
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !88264, !noalias !88265, !nonnull !21, !noundef !21
  %i.dy = load i64, ptr %i.dv, align 8, !alias.scope !88264, !noalias !88265, !noundef !21
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hf1a50c8cb8129e6bE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.dx, i64 noundef %i.dy)
          to label %.noexc1.i.i unwind label %bb.ag, !noalias !88262, !inline_history !88184

.noexc1.i.i:                                      ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !88263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !88261
  br label %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i

bb.af:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !88266
  invoke fastcc void @"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17ha497b30c85d38af9E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.dp)
          to label %.noexc2.i.i unwind label %bb.ag, !noalias !88262, !inline_history !88184

.noexc2.i.i:                                      ; preds = %bb.af
  %.sroa.065.0.copyload = load i64, ptr %i.d, align 8, !noalias !88267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.466.0..sroa_idx, i64 24, i1 false), !noalias !88263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.567.0..sroa_idx, i64 40, i1 false), !noalias !88263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !88266
  br label %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !88268), !noalias !88251
  call void @llvm.experimental.noalias.scope.decl(metadata !88269), !noalias !88270
  %.val.i.i.i.i12 = load i64, ptr %i.g, align 8, !range !23, !alias.scope !88271, !noalias !88272, !noundef !21 ; 2 uses
  %i.ea = icmp eq i64 %.val.i.i.i.i12, 0
  br i1 %i.ea, label %.body2.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i.i.i.i13 = load ptr, ptr %i.eb, align 8, !alias.scope !88271, !noalias !88272, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i13, i64 noundef %.val.i.i.i.i12, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88273, !inline_history !88180
  br label %.body2.i

_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i: ; preds = %.noexc.i, %.noexc2.i.i, %.noexc1.i.i, %.noexc.i.i15, %bb.ac, %bb.ab
  %.sroa.057.0 = phi i64 [ %.sroa.065.0.copyload, %.noexc2.i.i ], [ %i.dq, %bb.ab ], [ %i.dq, %bb.ac ], [ -9223372036854775805, %.noexc.i.i15 ], [ -9223372036854775804, %.noexc1.i.i ], [ -9223372036854775808, %.noexc.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.055.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !88248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.055.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false), !noalias !88248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.055.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11, i64 40, i1 false), !noalias !88248
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !88254
  %i.ec = getelementptr inbounds nuw [104 x i8], ptr %i.di, i64 %.sroa.648.0 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.055.sroa.0, i64 24, i1 false), !noalias !88274
  %.sroa.055.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store i64 %.sroa.057.0, ptr %.sroa.055.sroa.4.0..sroa_idx, align 8, !noalias !88274
  %.sroa.055.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.055.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.055.sroa.5, i64 24, i1 false), !noalias !88274
  %.sroa.055.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.055.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.055.sroa.6, i64 40, i1 false), !noalias !88274
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 96
  store i64 %i.do, ptr %.sroa.456.0..sroa_idx, align 8, !noalias !88274
  %i.ed = add i64 %.sroa.648.0, 1                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.055.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.055.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.055.sroa.6)
  %i.ee = add nuw nsw i64 %.sroa.06.0.i.i, 1      ; 2 uses
  %i.ef = icmp eq i64 %i.ee, %.idx72
  br i1 %i.ef, label %bb.ai, label %bb.z

bb.ai:                                            ; preds = %_ZN4core3ops8function5FnMut8call_mut17hf332dcc7b415fdfcE.exit.i
  store i64 %i.ed, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !88248
  br label %bb.al

.loopexit:                                        ; preds = %bb.p, %bb.t, %bb.u, %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.k, %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %.body.i.i, %.loopexit, %.loopexit.split-lp, %bb.w, %.body2.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.j ], [ %eh.lpad-body3.i, %.body2.i ], [ %i.de, %bb.w ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.cg, %.body.i.i ], [ %i.cg, %bb.n ]
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17ha5b0b0824daeeb8cE"(ptr noalias noundef align 8 dereferenceable(56) %i.h) #43
          to label %bb.ak unwind label %bb.aj, !noalias !88204, !inline_history !88199

bb.aj:                                            ; preds = %.body
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #44, !noalias !88204, !inline_history !88199
  unreachable

bb.ak:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body

bb.al:                                            ; preds = %.noexc10, %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !88200
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ej = load <2 x i64>, ptr %i.eh, align 8
  store <2 x i64> %i.ej, ptr %i.ei, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN7roaring6bitmap13serialization48_$LT$impl$u20$roaring..bitmap..RoaringBitmap$GT$21deserialize_from_impl17h8c4d11e89369c1cdE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 24 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = icmp ult i64 %2, 4
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.h, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.j = add i64 %2, -4                           ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !88415, !noalias !88416 ; 4 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload.i, 12346
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %.sroa.0.0.copyload.i, 65535
  %i.l = icmp eq i32 %i.k, 12347
  br i1 %i.l, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = icmp ult i64 %i.j, 4
  br i1 %i.m, label %bb.g, label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.n = tail call noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1728, i64 noundef 20)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.p, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"

bb.h:                                             ; preds = %bb.d
  %i.q = lshr i32 %.sroa.0.0.copyload.i, 16
  %i.r = add nuw nsw i32 %i.q, 1
  %i.s = zext nneg i32 %i.r to i64                ; 3 uses
  %i.t = icmp ugt i32 %.sroa.0.0.copyload.i, 196607 ; 2 uses
  %i.u = add nuw nsw i64 %i.s, 7
  %i.v = lshr i64 %i.u, 3                         ; 12 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !88417
  %i.w = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88417 ; 6 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.i, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h472f0247fb84c47fE.exit"

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1730) #41, !noalias !88418
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h472f0247fb84c47fE.exit": ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88419)
  %i.y = icmp ugt i64 %i.v, %i.j
  br i1 %i.y, label %bb.m, label %bb.j

bb.j:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h472f0247fb84c47fE.exit"
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v ; 2 uses
  %i.aa = sub nuw i64 %i.j, %i.v                  ; 2 uses
  %i.ab = icmp eq i64 %i.v, 1
  br i1 %i.ab, label %bb.k, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i": ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %i.i, i64 range(i64 2, 1) %i.v, i1 false), !alias.scope !88420, !noalias !88421
  br label %.thread374.thread

bb.k:                                             ; preds = %bb.j
  %i.ac = load i8, ptr %i.i, align 1, !noalias !88422, !noundef !21
  store i8 %i.ac, ptr %i.w, align 1, !alias.scope !88419, !noalias !88423
  br label %.thread374.thread

bb.l:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i167 = load i32, ptr %i.i, align 1, !alias.scope !88424, !noalias !88425 ; 3 uses
  %i.ad = icmp ugt i32 %.sroa.0.0.copyload.i167, 65536
  br i1 %i.ad, label %bb.p, label %.thread374

bb.m:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h472f0247fb84c47fE.exit"
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1311, ptr %i.ae, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88426
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit206"

.thread374:                                       ; preds = %bb.l
  %i.af = zext nneg i32 %.sroa.0.0.copyload.i167 to i64
  %i.ag = add i64 %2, -8                          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = icmp eq i32 %.sroa.0.0.copyload.i167, 0
  br i1 %i.ai, label %bb.s, label %.thread374.thread

.thread374.thread:                                ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i", %bb.k, %.thread374
  %.sroa.0102.0370382646 = phi i1 [ true, %.thread374 ], [ %i.t, %bb.k ], [ %i.t, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i" ]
  %.sroa.0101.0368383644 = phi i64 [ %i.af, %.thread374 ], [ %i.s, %bb.k ], [ %i.s, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i" ] ; 2 uses
  %.sroa.9.0385637 = phi ptr [ undef, %.thread374 ], [ %i.w, %bb.k ], [ %i.w, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i" ] ; 2 uses
  %.sroa.13.0394635 = phi i64 [ undef, %.thread374 ], [ %i.v, %bb.k ], [ %i.v, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i" ]
  %.sroa.0279.0396628 = phi i64 [ -9223372036854775808, %.thread374 ], [ %i.v, %bb.k ], [ %i.v, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i" ] ; 2 uses
  %.sroa.19.1405626 = phi i64 [ %i.ag, %.thread374 ], [ %i.aa, %bb.k ], [ %i.aa, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i" ]
  %.sroa.0.1406624 = phi ptr [ %i.ah, %.thread374 ], [ %i.z, %bb.k ], [ %i.z, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hcc8b75eb63748789E.exit.i" ]
  %i.aj = shl nuw nsw i64 %.sroa.0101.0368383644, 2 ; 3 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !88427
  %i.ak = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.aj, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88427 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread374.thread
  %i.am = ptrtoint ptr %i.ak to i64
  br label %bb.s

bb.o:                                             ; preds = %.thread374.thread
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1731) #41
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.an = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1737, i64 noundef 30)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit252.thread" unwind label %bb.r

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit185": ; preds = %.split648, %bb.u, %bb.r
  %.sroa.0279.0397 = phi i64 [ %.sroa.0279.0404, %bb.r ], [ %.sroa.0279.0396629, %.split648 ], [ %.sroa.0279.0396629, %bb.u ] ; 2 uses
  %.sroa.9.0386 = phi ptr [ %.sroa.9.0393, %bb.r ], [ %.sroa.9.0385638, %.split648 ], [ %.sroa.9.0385638, %bb.u ] ; 2 uses
  %.pn130 = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %i.at, %.split648 ], [ %.pn128652, %bb.u ]
  switch i64 %.sroa.0279.0397, label %bb.q [
    i64 -9223372036854775808, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit"
    i64 0, label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit"
  ]

bb.q:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit185"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0386) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0386, i64 noundef %.sroa.0279.0397, i64 noundef range(i64 1, -9223372036854775807) 1) #42, !noalias !88428
  br label %"_ZN4core3ptr74drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h236c9a83ddff1e1cE.exit"

bb.r:                                             ; preds = %bb.o, %bb.p
  %.sroa.0279.0404 = phi i64 [ %.sroa.0279.0396628, %bb.o ], [ -9223372036854775808, %bb.p ]
  %.sroa.9.0393 = phi ptr [ %.sroa.9.0385637, %bb.o ], [ undef, %bb.p ]
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h8c33b7b382ff907dE.exit185"

bb.s:                                             ; preds = %bb.n, %.thread374
  %i.ap = phi i1 [ false, %bb.n ], [ true, %.thread374 ] ; 3 uses
  %i.aq = phi i64 [ %i.aj, %bb.n ], [ 0, %.thread374 ] ; 9 uses
  %.sroa.0102.0370382647 = phi i1 [ %.sroa.0102.0370382646, %bb.n ], [ true, %.thread374 ]
  %.sroa.0101.0368383645 = phi i64 [ %.sroa.0101.0368383644, %bb.n ], [ 0, %.thread374 ] ; 4 uses
  %.sroa.9.0385638 = phi ptr [ %.sroa.9.0385637, %bb.n ], [ undef, %.thread374 ] ; 7 uses
  %.sroa.13.0394636 = phi i64 [ %.sroa.13.0394635, %bb.n ], [ undef, %.thread374 ] ; 2 uses
end_hunk_2
