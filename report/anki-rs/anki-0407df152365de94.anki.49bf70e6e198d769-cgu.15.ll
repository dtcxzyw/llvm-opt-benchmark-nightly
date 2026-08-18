inline.NumInlined: 4531
inline.NumDeleted: 1604
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZN3zip4read12magic_finder38OptimisticMagicFinder$LT$Direction$GT$4next17ha207c59479bdd451E":bb.a

"_ZN3zip4read12magic_finder20MagicFinder$LT$T$GT$4next17h9b3346c67b0fbac6E.exit": ; preds = %.loopexit.i, %bb.s, %bb.r, %bb.m, %bb.k, %bb.ai, %bb.v
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN3zip4read12magic_finder38OptimisticMagicFinder$LT$Direction$GT$9new_empty17h9e87cd82b2168ce8E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([384 x i8]) align 32 captures(none) dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [288 x i8], align 32              ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0 = alloca [304 x i8], align 32          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1390
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !1396
  %i.c = tail call noundef dereferenceable_or_null(2048) ptr @_RNvCsiGVaDesi5rv_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) 2048, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !1396 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i"

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef 1, i64 2048) #50, !noalias !1399
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i": ; preds = %bb.a
  store i64 2048, ptr %i.b, align 8, !alias.scope !1393, !noalias !1390
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.e, align 8, !alias.scope !1393, !noalias !1390
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 2048, ptr %i.f, align 8, !alias.scope !1393, !noalias !1390
  %i.g = call { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h5356e942cc4be4cdE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !1390 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0        ; 4 uses
  %i.i = extractvalue { ptr, i64 } %i.g, 1        ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1390
  invoke void @"_ZN93_$LT$zip..read..magic_finder..Forward$u20$as$u20$zip..read..magic_finder..FinderDirection$GT$3new17he17e69d97656ed95E"(ptr noalias noundef nonnull sret([288 x i8]) align 32 captures(address) dereferenceable(288) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %"_ZN3zip4read12magic_finder20MagicFinder$LT$T$GT$3new17h5ac6d3447b984d71E.exit" unwind label %bb.c, !noalias !1390

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i": ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.i, i64 noundef 1) #52, !noalias !1390
  br label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i"

bb.c:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i"
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i"

"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17ha60bc6698e6f4820E.exit.i": ; preds = %bb.c, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i"
  resume { ptr, i32 } %i.j

"_ZN3zip4read12magic_finder20MagicFinder$LT$T$GT$3new17h5ac6d3447b984d71E.exit": ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17hf652f699e1c0f977E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(288) %.sroa.0, ptr noundef nonnull align 32 dereferenceable(288) %i.a, i64 288, i1 false)
  %.sroa.0.288..sroa_idx3 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(16) %.sroa.0.288..sroa_idx3, i8 0, i64 16, i1 false), !alias.scope !1390
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(16) %.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(304) %0, ptr noundef nonnull align 32 dereferenceable(304) %.sroa.0, i64 304, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 %i.i, ptr %.sroa.6.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i8 2, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$11with_config17h4e1d563538f8e823E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 0, 3) %1, i64 %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 9 uses
  %i.b = alloca [208 x i8], align 8               ; 7 uses
  %.sroa.6.i.i = alloca [24 x i8], align 8        ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [56 x i8], align 8                ; 16 uses
  %i.h = alloca [128 x i8], align 8               ; 11 uses
  %.sroa.6.i = alloca [24 x i8], align 8          ; 8 uses
  %i.i = alloca [128 x i8], align 8               ; 11 uses
  %i.j = alloca [152 x i8], align 8               ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [136 x i8], align 8               ; 11 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.m = tail call { i64, ptr } @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Seek$GT$4seek17ha3716c9a1fdec5e3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1, i64 noundef 0), !noalias !1400 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = extractvalue { i64, ptr } %i.m, 1        ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.q = trunc nuw i64 %i.n to i1
  br i1 %i.q, label %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$12get_metadata17hda976c48b76f3c71E.exit.thread", label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1403
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1403
  call void @_ZN3zip4spec22find_central_directory17h1c4f7525214311beE(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i64 noundef range(i64 0, 3) %1, i64 %2, i64 noundef %i.p, i64 noundef %i.p), !noalias !1400
  %i.r = load ptr, ptr %i.h, align 8, !noalias !1403, !noundef !4 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$12get_metadata17hda976c48b76f3c71E.exit.thread14", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.625.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.625.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.6.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.612.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  br label %bb.b

"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$12get_metadata17hda976c48b76f3c71E.exit.thread": ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 -9223372036854775807, ptr %i.ad, align 8, !alias.scope !1400, !noalias !1405
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.o, ptr %.sroa.421.0..sroa_idx.i, align 8, !alias.scope !1400, !noalias !1405
  br label %.sink.split

"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$12get_metadata17hda976c48b76f3c71E.exit.thread14": ; preds = %"_ZN4core3ptr55drop_in_place$LT$zip..spec..CentralDirectoryEndInfo$GT$17hba2940998f8874d9E.exit.i", %.preheader.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !1403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1403
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !1405
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1403
  br label %.sink.split

bb.b:                                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$zip..spec..CentralDirectoryEndInfo$GT$17hba2940998f8874d9E.exit.i", %.lr.ph.i
  %i.ag = phi ptr [ %i.r, %.lr.ph.i ], [ %i.bw, %"_ZN4core3ptr55drop_in_place$LT$zip..spec..CentralDirectoryEndInfo$GT$17hba2940998f8874d9E.exit.i" ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.524.0..sroa_idx.i, i64 24, i1 false), !noalias !1403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.59.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.625.0..sroa_idx.i, i64 96, i1 false), !noalias !1403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1403
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !1403
  store ptr %i.ag, ptr %i.i, align 8, !noalias !1403
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1403
  invoke void @"_ZN120_$LT$zip..read..CentralDirectoryInfo$u20$as$u20$core..convert..TryFrom$LT$$RF$zip..spec..CentralDirectoryEndInfo$GT$$GT$8try_from17h9590e4aba9c4bf87E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.i)
          to label %bb.c unwind label %.loopexit.i, !noalias !1400

.loopexit.i:                                      ; preds = %bb.x, %bb.b
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp.i:                             ; preds = %bb.h
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.c:                                             ; preds = %bb.b
  %i.ah = load i64, ptr %i.f, align 8, !range !3, !noalias !1403, !noundef !4
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %.thread40.i, label %bb.d

.thread40.i:                                      ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !1403
  store i64 3, ptr %i.g, align 8, !noalias !1403
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !1403
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1403
  %i.aj = load i64, ptr %i.u, align 8, !alias.scope !1409, !noalias !1411, !noundef !4 ; 4 uses
  %i.ak = load i64, ptr %i.v, align 8, !alias.scope !1409, !noalias !1411, !noundef !4 ; 3 uses
  %i.al = icmp ugt i64 %i.aj, %i.ak
  %..i.i = select i1 %i.al, i64 0, i64 %i.aj      ; 3 uses
  %i.am = load i32, ptr %i.w, align 8, !alias.scope !1409, !noalias !1411, !noundef !4
  %i.an = load i32, ptr %i.x, align 4, !alias.scope !1409, !noalias !1411, !noundef !4
  %.not.i.i = icmp eq i32 %i.am, %i.an
  br i1 %.not.i.i, label %bb.e, label %.thread42.i

bb.e:                                             ; preds = %bb.d
  %i.ao = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %..i.i, i64 208) ; 2 uses
  %i.ap = extractvalue { i64, i1 } %i.ao, 0       ; 5 uses
  %i.aq = extractvalue { i64, i1 } %i.ao, 1
  %i.ar = icmp slt i64 %i.ap, 0
  %or.cond.i.i = or i1 %i.aq, %i.ar
  br i1 %or.cond.i.i, label %.thread42.i, label %bb.f, !prof !397

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1413
  %4 = icmp samesign ugt i64 %i.ap, 9223372036854775800
  br i1 %4, label %bb.h, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i, !prof !397

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i: ; preds = %bb.f
  %5 = icmp eq i64 %i.ap, 0
  br i1 %5, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i", label %bb.g

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !1414
  %i.as = call noundef align 8 ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !1414 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.h, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i"

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.g ], [ 0, %bb.f ]
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.ap) #50
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !1400

.noexc.i:                                         ; preds = %bb.h
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i": ; preds = %bb.g, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i ], [ %..i.i, %bb.g ] ; 2 uses
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i ], [ %i.as, %bb.g ]
  %i.au = icmp samesign ule i64 %..i.i, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.au)
  store i64 %.sroa.4.0.i.i.i, ptr %i.c, align 8, !noalias !1413
  store ptr %.sroa.10.0.i.i.i, ptr %i.z, align 8, !noalias !1413
  store i64 0, ptr %i.aa, align 8, !noalias !1413
  %i.av = invoke { i64, ptr } @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Seek$GT$4seek17ha3716c9a1fdec5e3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0, i64 noundef %i.ak)
          to label %bb.i unwind label %.loopexit.split-lp.i.i, !noalias !1417 ; 2 uses

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i"
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.o, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$alloc..vec..Vec$LT$zip..types..ZipFileData$GT$$GT$17hc29dceeda3eba9bbE"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #51
          to label %bb.z unwind label %bb.v, !noalias !1418

bb.i:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i"
  %i.aw = extractvalue { i64, ptr } %i.av, 0
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.j, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.i
  %.not33.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not33.i.i, label %.thread.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.i
  %i.ay = extractvalue { i64, ptr } %i.av, 1
  store i64 -9223372036854775807, ptr %i.y, align 8, !alias.scope !1406, !noalias !1419
  store ptr %i.ay, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !alias.scope !1406, !noalias !1419
  store i64 3, ptr %i.g, align 8, !alias.scope !1406, !noalias !1419
  br label %bb.q

.thread.i:                                        ; preds = %.preheader.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17haa776712d6935b91E.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.414.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1419
  %i.az = load i64, ptr %i.d, align 8, !alias.scope !1409, !noalias !1411, !noundef !4
  store i64 %1, ptr %i.g, align 8, !alias.scope !1406, !noalias !1419
  store i64 %2, ptr %i.y, align 8, !alias.scope !1406, !noalias !1419
  store i64 %i.az, ptr %.sroa.612.0..sroa_idx.i.i, align 8, !alias.scope !1406, !noalias !1419
  store i64 %i.ak, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !1406, !noalias !1419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1403
  br label %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$12get_metadata17hda976c48b76f3c71E.exit"

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17haa776712d6935b91E.exit.i.i"
  %.sroa.026.032.i.i = phi i64 [ %i.ba, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17haa776712d6935b91E.exit.i.i" ], [ 0, %.preheader.i.i ]
  %i.ba = add nuw i64 %.sroa.026.032.i.i, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1413
  invoke void @_ZN3zip4read26central_header_to_zip_file17hfe4374f62c37bd89E(ptr noalias noundef nonnull sret([208 x i8]) align 8 captures(address) dereferenceable(208) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %bb.k unwind label %.loopexit.i.i, !noalias !1418

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bb = load i64, ptr %i.b, align 8, !range !101, !noalias !1413, !noundef !4 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.524.0..sroa_idx.i.i, i64 24, i1 false), !noalias !1413
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, i64 24, i1 false), !noalias !1419
  store i64 3, ptr %i.g, align 8, !alias.scope !1406, !noalias !1419
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.8.0..sroa_idx9.i.i, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.625.0..sroa_idx.i.i, i64 176, i1 false), !noalias !1413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1413
  store i64 %i.bb, ptr %i.a, align 8, !noalias !1413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, i64 24, i1 false), !noalias !1413
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  %i.bd = load i64, ptr %i.aa, align 8, !alias.scope !1420, !noalias !1423, !noundef !4 ; 3 uses
  %i.be = load i64, ptr %i.c, align 8, !range !283, !alias.scope !1420, !noalias !1423, !noundef !4
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.n, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17haa776712d6935b91E.exit.i.i"

bb.n:                                             ; preds = %bb.m
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hd161927506050ae0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17haa776712d6935b91E.exit.i.i" unwind label %bb.o, !noalias !1425

bb.o:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17ha3610e895df8fcecE"(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.a) #51
          to label %.body.i.i unwind label %bb.p, !noalias !1426

bb.p:                                             ; preds = %bb.o
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !1426
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17haa776712d6935b91E.exit.i.i": ; preds = %bb.n, %bb.m
  %i.bi = load ptr, ptr %i.z, align 8, !alias.scope !1420, !noalias !1423, !nonnull !4, !noundef !4
  %i.bj = getelementptr inbounds nuw [208 x i8], ptr %i.bi, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.bj, ptr noundef nonnull align 8 dereferenceable(208) %i.a, i64 208, i1 false), !noalias !1426
  %i.bk = add i64 %i.bd, 1
  store i64 %i.bk, ptr %i.aa, align 8, !alias.scope !1420, !noalias !1423
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.aj
  br i1 %exitcond.not.i.i, label %.thread.i, label %.lr.ph.i.i

bb.q:                                             ; preds = %bb.l, %bb.j
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc580c8bd64a63569E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.t unwind label %bb.r, !noalias !1418

bb.r:                                             ; preds = %bb.q
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !1427, !noalias !1413 ; 2 uses
  %i.bm = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.bm, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val3.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !1427, !noalias !1413, !nonnull !4, !noundef !4
  %i.bn = mul nuw i64 %.val2.i.i.i, 208
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !1418
  br label %bb.z

bb.t:                                             ; preds = %bb.q
  %.val.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !1427, !noalias !1413 ; 2 uses
  %i.bo = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bo, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val1.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !1427, !noalias !1413, !nonnull !4, !noundef !4
  %i.bp = mul nuw i64 %.val.i.i.i, 208
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !1418
  br label %bb.w

bb.v:                                             ; preds = %.body.i.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !1418
  unreachable

.thread42.i:                                      ; preds = %bb.e, %bb.d
  %storemerge91.i = phi ptr [ @81, %bb.d ], [ @80, %bb.e ]
  %storemerge.i = phi i64 [ 47, %bb.d ], [ 27, %bb.e ]
  store i64 -9223372036854775805, ptr %i.y, align 8, !alias.scope !1406, !noalias !1419
  store ptr %storemerge91.i, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !alias.scope !1406, !noalias !1419
  store i64 %storemerge.i, ptr %.sroa.515.0..sroa_idx.i.i, align 8, !alias.scope !1406, !noalias !1419
  store i64 3, ptr %i.g, align 8, !alias.scope !1406, !noalias !1419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1403
  br label %.sink.split.i

bb.w:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1413
  %.pr.pr.pre.i = load i64, ptr %i.g, align 8, !noalias !1403
  %i.br = icmp eq i64 %.pr.pr.pre.i, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1403
  br i1 %i.br, label %bb.x, label %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$12get_metadata17hda976c48b76f3c71E.exit"

.sink.split.i:                                    ; preds = %.thread42.i, %.thread40.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1403
  br label %bb.x

bb.x:                                             ; preds = %.sink.split.i, %bb.w
  invoke fastcc void @"_ZN4core3ptr110drop_in_place$LT$core..result..Result$LT$zip..read..zip_archive..SharedBuilder$C$zip..result..ZipError$GT$$GT$17h410ebfb32de0bc65E"(ptr noalias noundef align 8 dereferenceable(56) %i.g)
          to label %bb.y unwind label %.loopexit.i, !noalias !1400

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1403
  %i.bs = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !1403, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  %.val1.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1430, !noalias !1403, !noundef !4 ; 2 uses
  %i.bt = icmp eq i64 %.val1.i.i, 0
  br i1 %i.bt, label %"_ZN4core3ptr90drop_in_place$LT$zip..spec..DataAndPosition$LT$zip..spec..Zip32CentralDirectoryEnd$GT$$GT$17h50b9c4adcdc040e5E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i": ; preds = %bb.y
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef %.val1.i.i, i64 noundef 1) #52, !noalias !1433
  br label %"_ZN4core3ptr90drop_in_place$LT$zip..spec..DataAndPosition$LT$zip..spec..Zip32CentralDirectoryEnd$GT$$GT$17h50b9c4adcdc040e5E.exit.i.i"

"_ZN4core3ptr90drop_in_place$LT$zip..spec..DataAndPosition$LT$zip..spec..Zip32CentralDirectoryEnd$GT$$GT$17h50b9c4adcdc040e5E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i", %bb.y
  %.val2.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !1430, !noalias !1403, !noundef !4 ; 3 uses
  %.val3.i.i = load i64, ptr %i.ac, align 8, !alias.scope !1430, !noalias !1403 ; 2 uses
  %i.bu = icmp eq ptr %.val2.i.i, null
  %i.bv = icmp eq i64 %.val3.i.i, 0
  %or.cond.i6.i.i = select i1 %i.bu, i1 true, i1 %i.bv
  br i1 %or.cond.i6.i.i, label %"_ZN4core3ptr55drop_in_place$LT$zip..spec..CentralDirectoryEndInfo$GT$17hba2940998f8874d9E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i7.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i7.i.i": ; preds = %"_ZN4core3ptr90drop_in_place$LT$zip..spec..DataAndPosition$LT$zip..spec..Zip32CentralDirectoryEnd$GT$$GT$17h50b9c4adcdc040e5E.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %.val3.i.i, i64 noundef 1) #52, !noalias !1433
  br label %"_ZN4core3ptr55drop_in_place$LT$zip..spec..CentralDirectoryEndInfo$GT$17hba2940998f8874d9E.exit.i"

"_ZN4core3ptr55drop_in_place$LT$zip..spec..CentralDirectoryEndInfo$GT$17hba2940998f8874d9E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i7.i.i", %"_ZN4core3ptr90drop_in_place$LT$zip..spec..DataAndPosition$LT$zip..spec..Zip32CentralDirectoryEnd$GT$$GT$17h50b9c4adcdc040e5E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1403
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1403
  call void @_ZN3zip4spec22find_central_directory17h1c4f7525214311beE(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i64 noundef range(i64 0, 3) %1, i64 %2, i64 noundef %i.bs, i64 noundef %i.p), !noalias !1400
end_hunk_0
begin_hunk_1_@"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$11with_config17h4e1d563538f8e823E":bb.a
bb.ab:                                            ; preds = %.sink.split, %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$12get_metadata17hda976c48b76f3c71E.exit"
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ag

bb.ac:                                            ; preds = %"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$12get_metadata17hda976c48b76f3c71E.exit"
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i64 24, i1 false)
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.68.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  store i64 1, ptr %i.j, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.pr.pr, ptr %i.cg, align 8
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !1434
  %i.ch = call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 152, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !1434 ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ad, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hd66b3edeeef35d6cE.exit", !prof !412

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 152) #50
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..ArcInner$LT$zip..read..zip_archive..Shared$GT$$GT$17hb08086ea937e109dE"(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.j) #51
          to label %common.resume unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hd66b3edeeef35d6cE.exit": ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ch, ptr noundef nonnull align 8 dereferenceable(152) %i.j, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ch, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hd66b3edeeef35d6cE.exit", %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$11with_config17h99bd38e1fa1a65ddE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i64 noundef range(i64 0, 3) %1, i64 %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 9 uses
  %i.b = alloca [208 x i8], align 8               ; 7 uses
  %.sroa.6.i.i = alloca [24 x i8], align 8        ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [56 x i8], align 8                ; 16 uses
  %i.h = alloca [128 x i8], align 8               ; 11 uses
  %.sroa.6.i = alloca [24 x i8], align 8          ; 8 uses
  %i.i = alloca [128 x i8], align 8               ; 11 uses
  %i.j = alloca [152 x i8], align 8               ; 9 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [136 x i8], align 8               ; 11 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1437)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.m = invoke { i64, ptr } @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Seek$GT$4seek17h6654b42bc96c228bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 1, i64 noundef 0)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = extractvalue { i64, ptr } %i.m, 1        ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.q = trunc nuw i64 %i.n to i1
  br i1 %i.q, label %.thread27, label %.preheader.i

.preheader.i:                                     ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1440
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1440
  invoke void @_ZN3zip4spec22find_central_directory17h49732f9e6201aebdE(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %3, i64 noundef range(i64 0, 3) %1, i64 %2, i64 noundef %i.p, i64 noundef %i.p)
          to label %.noexc14 unwind label %.loopexit.split-lp

.noexc14:                                         ; preds = %.preheader.i
  %i.r = load ptr, ptr %i.h, align 8, !noalias !1440, !noundef !4 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.thread28, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc14
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.625.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.625.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.6.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.612.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  br label %bb.b

.thread27:                                        ; preds = %.noexc
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 -9223372036854775807, ptr %i.ad, align 8, !alias.scope !1437, !noalias !1442
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.o, ptr %.sroa.421.0..sroa_idx.i, align 8, !alias.scope !1437, !noalias !1442
  br label %.sink.split

.thread28:                                        ; preds = %.noexc16, %.noexc14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !1440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1440
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !1442
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1440
  br label %.sink.split

bb.b:                                             ; preds = %.noexc16, %.lr.ph.i
  %i.ag = phi ptr [ %i.r, %.lr.ph.i ], [ %i.bx, %.noexc16 ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.524.0..sroa_idx.i, i64 24, i1 false), !noalias !1440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.59.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.625.0..sroa_idx.i, i64 96, i1 false), !noalias !1440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !1440
  store ptr %i.ag, ptr %i.i, align 8, !noalias !1440
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1440
  invoke void @"_ZN120_$LT$zip..read..CentralDirectoryInfo$u20$as$u20$core..convert..TryFrom$LT$$RF$zip..spec..CentralDirectoryEndInfo$GT$$GT$8try_from17h9590e4aba9c4bf87E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.i)
          to label %bb.c unwind label %.loopexit.i, !noalias !1437

.loopexit.i:                                      ; preds = %bb.x, %bb.b
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp.i:                             ; preds = %bb.h
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.c:                                             ; preds = %bb.b
  %i.ah = load i64, ptr %i.f, align 8, !range !3, !noalias !1440, !noundef !4
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %.thread40.i, label %bb.d

.thread40.i:                                      ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !1440
  store i64 3, ptr %i.g, align 8, !noalias !1440
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !1440
  call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1440
  %i.aj = load i64, ptr %i.u, align 8, !alias.scope !1446, !noalias !1448, !noundef !4 ; 4 uses
  %i.ak = load i64, ptr %i.v, align 8, !alias.scope !1446, !noalias !1448, !noundef !4 ; 3 uses
  %i.al = icmp ugt i64 %i.aj, %i.ak
  %..i.i = select i1 %i.al, i64 0, i64 %i.aj      ; 3 uses
  %i.am = load i32, ptr %i.w, align 8, !alias.scope !1446, !noalias !1448, !noundef !4
  %i.an = load i32, ptr %i.x, align 4, !alias.scope !1446, !noalias !1448, !noundef !4
  %.not.i.i = icmp eq i32 %i.am, %i.an
  br i1 %.not.i.i, label %bb.e, label %.thread42.i

bb.e:                                             ; preds = %bb.d
  %i.ao = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %..i.i, i64 208) ; 2 uses
  %i.ap = extractvalue { i64, i1 } %i.ao, 0       ; 5 uses
  %i.aq = extractvalue { i64, i1 } %i.ao, 1
  %i.ar = icmp slt i64 %i.ap, 0
  %or.cond.i.i = or i1 %i.aq, %i.ar
  br i1 %or.cond.i.i, label %.thread42.i, label %bb.f, !prof !397

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1450
  %4 = icmp samesign ugt i64 %i.ap, 9223372036854775800
  br i1 %4, label %bb.h, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i, !prof !397

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i: ; preds = %bb.f
  %5 = icmp eq i64 %i.ap, 0
  br i1 %5, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i", label %bb.g

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !1451
  %i.as = call noundef align 8 ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !1451 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.h, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i"

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.g ], [ 0, %bb.f ]
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.ap) #50
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !1437

.noexc.i:                                         ; preds = %bb.h
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i": ; preds = %bb.g, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i ], [ %..i.i, %bb.g ] ; 2 uses
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i ], [ %i.as, %bb.g ]
  %i.au = icmp samesign ule i64 %..i.i, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.au)
  store i64 %.sroa.4.0.i.i.i, ptr %i.c, align 8, !noalias !1450
  store ptr %.sroa.10.0.i.i.i, ptr %i.z, align 8, !noalias !1450
  store i64 0, ptr %i.aa, align 8, !noalias !1450
  %i.av = invoke { i64, ptr } @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Seek$GT$4seek17h6654b42bc96c228bE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.ak)
          to label %bb.i unwind label %.loopexit.split-lp.i.i, !noalias !1454 ; 2 uses

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i"
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.o, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$alloc..vec..Vec$LT$zip..types..ZipFileData$GT$$GT$17hc29dceeda3eba9bbE"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #51
          to label %bb.z unwind label %bb.v, !noalias !1455

bb.i:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i"
  %i.aw = extractvalue { i64, ptr } %i.av, 0
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.j, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.i
  %.not33.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not33.i.i, label %.thread.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.i
  %i.ay = extractvalue { i64, ptr } %i.av, 1
  store i64 -9223372036854775807, ptr %i.y, align 8, !alias.scope !1443, !noalias !1456
  store ptr %i.ay, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !alias.scope !1443, !noalias !1456
  store i64 3, ptr %i.g, align 8, !alias.scope !1443, !noalias !1456
  br label %bb.q

.thread.i:                                        ; preds = %.preheader.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17haa776712d6935b91E.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.414.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1456
  %i.az = load i64, ptr %i.d, align 8, !alias.scope !1446, !noalias !1448, !noundef !4
  store i64 %1, ptr %i.g, align 8, !alias.scope !1443, !noalias !1456
  store i64 %2, ptr %i.y, align 8, !alias.scope !1443, !noalias !1456
  store i64 %i.az, ptr %.sroa.612.0..sroa_idx.i.i, align 8, !alias.scope !1443, !noalias !1456
  store i64 %i.ak, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !1443, !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1440
  br label %.loopexit94.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17haa776712d6935b91E.exit.i.i"
  %.sroa.026.032.i.i = phi i64 [ %i.ba, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17haa776712d6935b91E.exit.i.i" ], [ 0, %.preheader.i.i ]
  %i.ba = add nuw i64 %.sroa.026.032.i.i, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1450
  invoke void @_ZN3zip4read26central_header_to_zip_file17h8187fee2eb005a6cE(ptr noalias noundef nonnull sret([208 x i8]) align 8 captures(address) dereferenceable(208) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %bb.k unwind label %.loopexit.i.i, !noalias !1455

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bb = load i64, ptr %i.b, align 8, !range !101, !noalias !1450, !noundef !4 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.524.0..sroa_idx.i.i, i64 24, i1 false), !noalias !1450
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, i64 24, i1 false), !noalias !1456
  store i64 3, ptr %i.g, align 8, !alias.scope !1443, !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.8.0..sroa_idx9.i.i, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.625.0..sroa_idx.i.i, i64 176, i1 false), !noalias !1450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1450
  store i64 %i.bb, ptr %i.a, align 8, !noalias !1450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, i64 24, i1 false), !noalias !1450
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1457)
  %i.bd = load i64, ptr %i.aa, align 8, !alias.scope !1457, !noalias !1460, !noundef !4 ; 3 uses
  %i.be = load i64, ptr %i.c, align 8, !range !283, !alias.scope !1457, !noalias !1460, !noundef !4
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.n, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17haa776712d6935b91E.exit.i.i"

bb.n:                                             ; preds = %bb.m
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hd161927506050ae0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17haa776712d6935b91E.exit.i.i" unwind label %bb.o, !noalias !1462

bb.o:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17ha3610e895df8fcecE"(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.a) #51
          to label %.body.i.i unwind label %bb.p, !noalias !1463

bb.p:                                             ; preds = %bb.o
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !1463
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17haa776712d6935b91E.exit.i.i": ; preds = %bb.n, %bb.m
  %i.bi = load ptr, ptr %i.z, align 8, !alias.scope !1457, !noalias !1460, !nonnull !4, !noundef !4
  %i.bj = getelementptr inbounds nuw [208 x i8], ptr %i.bi, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.bj, ptr noundef nonnull align 8 dereferenceable(208) %i.a, i64 208, i1 false), !noalias !1463
  %i.bk = add i64 %i.bd, 1
  store i64 %i.bk, ptr %i.aa, align 8, !alias.scope !1457, !noalias !1460
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.aj
  br i1 %exitcond.not.i.i, label %.thread.i, label %.lr.ph.i.i

bb.q:                                             ; preds = %bb.l, %bb.j
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc580c8bd64a63569E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.t unwind label %bb.r, !noalias !1455

bb.r:                                             ; preds = %bb.q
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !1464, !noalias !1450 ; 2 uses
  %i.bm = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.bm, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val3.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !1464, !noalias !1450, !nonnull !4, !noundef !4
  %i.bn = mul nuw i64 %.val2.i.i.i, 208
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !1455
  br label %bb.z

bb.t:                                             ; preds = %bb.q
  %.val.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !1464, !noalias !1450 ; 2 uses
  %i.bo = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bo, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val1.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !1464, !noalias !1450, !nonnull !4, !noundef !4
  %i.bp = mul nuw i64 %.val.i.i.i, 208
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !1455
  br label %bb.w

bb.v:                                             ; preds = %.body.i.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !1455
  unreachable

.thread42.i:                                      ; preds = %bb.e, %bb.d
  %storemerge91.i = phi ptr [ @81, %bb.d ], [ @80, %bb.e ]
  %storemerge.i = phi i64 [ 47, %bb.d ], [ 27, %bb.e ]
  store i64 -9223372036854775805, ptr %i.y, align 8, !alias.scope !1443, !noalias !1456
  store ptr %storemerge91.i, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !alias.scope !1443, !noalias !1456
  store i64 %storemerge.i, ptr %.sroa.515.0..sroa_idx.i.i, align 8, !alias.scope !1443, !noalias !1456
  store i64 3, ptr %i.g, align 8, !alias.scope !1443, !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1440
  br label %.sink.split.i

bb.w:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1450
  %.pr.pr.pre.i = load i64, ptr %i.g, align 8, !noalias !1440
  %i.br = icmp eq i64 %.pr.pr.pre.i, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1440
  br i1 %i.br, label %bb.x, label %.loopexit94.i

.loopexit94.i:                                    ; preds = %bb.w, %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !1440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1440
  %i.bs = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1440, !noundef !4
  %.sroa.013.0.copyload.i = load ptr, ptr %i.ab, align 8, !noalias !1440 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.013.0.copyload.i, null
  %.sroa.515.0.copyload.i = load i64, ptr %i.ac, align 8, !noalias !1440
  %.sroa.512.0.i = select i1 %.not.i, i64 undef, i64 %.sroa.515.0.copyload.i
  invoke void @_ZN3zip4read11zip_archive13SharedBuilder5build17h3af84b1882f2a69aE(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.e, ptr noalias noundef nonnull align 1 %i.ag, i64 noundef %i.bs, ptr noalias noundef align 1 %.sroa.013.0.copyload.i, i64 %.sroa.512.0.i)
          to label %bb.ab unwind label %.loopexit.split-lp

.sink.split.i:                                    ; preds = %.thread42.i, %.thread40.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1440
  br label %bb.x

bb.x:                                             ; preds = %.sink.split.i, %bb.w
  invoke fastcc void @"_ZN4core3ptr110drop_in_place$LT$core..result..Result$LT$zip..read..zip_archive..SharedBuilder$C$zip..result..ZipError$GT$$GT$17h410ebfb32de0bc65E"(ptr noalias noundef align 8 dereferenceable(56) %i.g)
          to label %bb.y unwind label %.loopexit.i, !noalias !1437

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1440
  %i.bt = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !1440, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1467)
  %.val1.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1467, !noalias !1440, !noundef !4 ; 2 uses
  %i.bu = icmp eq i64 %.val1.i.i, 0
  br i1 %i.bu, label %"_ZN4core3ptr90drop_in_place$LT$zip..spec..DataAndPosition$LT$zip..spec..Zip32CentralDirectoryEnd$GT$$GT$17h50b9c4adcdc040e5E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i": ; preds = %bb.y
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef %.val1.i.i, i64 noundef 1) #52, !noalias !1470
  br label %"_ZN4core3ptr90drop_in_place$LT$zip..spec..DataAndPosition$LT$zip..spec..Zip32CentralDirectoryEnd$GT$$GT$17h50b9c4adcdc040e5E.exit.i.i"

"_ZN4core3ptr90drop_in_place$LT$zip..spec..DataAndPosition$LT$zip..spec..Zip32CentralDirectoryEnd$GT$$GT$17h50b9c4adcdc040e5E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i", %bb.y
  %.val2.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !1467, !noalias !1440, !noundef !4 ; 3 uses
  %.val3.i.i = load i64, ptr %i.ac, align 8, !alias.scope !1467, !noalias !1440 ; 2 uses
  %i.bv = icmp eq ptr %.val2.i.i, null
  %i.bw = icmp eq i64 %.val3.i.i, 0
  %or.cond.i6.i.i = select i1 %i.bv, i1 true, i1 %i.bw
  br i1 %or.cond.i6.i.i, label %"_ZN4core3ptr55drop_in_place$LT$zip..spec..CentralDirectoryEndInfo$GT$17hba2940998f8874d9E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i7.i.i"
end_hunk_1
begin_hunk_2_@"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$11with_config17h99bd38e1fa1a65ddE":bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.68.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  store i64 1, ptr %i.j, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.pr.pr, ptr %i.cl, align 8
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !1485
  %i.cm = call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 152, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !1485 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.ai, label %bb.al, !prof !412

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 152) #50
          to label %.noexc22 unwind label %bb.aj

.noexc22:                                         ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..sync..ArcInner$LT$zip..read..zip_archive..Shared$GT$$GT$17hb08086ea937e109dE"(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.j) #51
          to label %.body unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53
  unreachable

.body:                                            ; preds = %bb.aj
  invoke fastcc void @"_ZN4core3ptr77drop_in_place$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hd0b8565a5523737bE"(ptr noalias noundef align 8 dereferenceable(32) %i.k) #51
          to label %common.resume unwind label %bb.am

bb.al:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.cm, ptr noundef nonnull align 8 dereferenceable(152) %i.j, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cm, ptr %.sroa.4.0..sroa_idx, align 8
  br label %"_ZN4core3ptr77drop_in_place$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hd0b8565a5523737bE.exit"

"_ZN4core3ptr77drop_in_place$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hd0b8565a5523737bE.exit": ; preds = %bb.ag, %bb.af, %bb.al
  ret void

bb.am:                                            ; preds = %.thread, %.body
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53
  unreachable

.thread:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.aa, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i33.i"
  %eh.lpad-body18 = phi { ptr, i32 } [ %.pn.ph.i, %bb.aa ], [ %.pn.ph.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i33.i" ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr77drop_in_place$LT$std..io..cursor..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17hd0b8565a5523737bE"(ptr noalias noundef align 8 dereferenceable(32) %3) #51
          to label %common.resume unwind label %bb.am
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$11with_config17hecf76076e0b55dc9E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 0, 3) %1, i64 %2, i32 noundef range(i32 0, -1) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 9 uses
  %i.b = alloca [208 x i8], align 8               ; 7 uses
  %.sroa.6.i.i = alloca [24 x i8], align 8        ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 13 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [56 x i8], align 8                ; 16 uses
  %i.h = alloca [128 x i8], align 8               ; 11 uses
  %.sroa.6.i = alloca [24 x i8], align 8          ; 8 uses
  %i.i = alloca [128 x i8], align 8               ; 11 uses
  %i.j = alloca [152 x i8], align 8               ; 9 uses
  %i.k = alloca [136 x i8], align 8               ; 11 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 7 uses
  %i.l = alloca [4 x i8], align 4                 ; 9 uses
  store i32 %3, ptr %i.l, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1488)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.m = invoke { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Seek$GT$4seek17hb97dd089350561d0E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.l, i64 noundef 1, i64 noundef 0)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %i.o = extractvalue { i64, ptr } %i.m, 1        ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.q = trunc nuw i64 %i.n to i1
  br i1 %i.q, label %.thread26, label %.preheader.i

.preheader.i:                                     ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1491
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1491
  invoke void @_ZN3zip4spec22find_central_directory17hb3bc14935b41b74aE(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.h, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.l, i64 noundef range(i64 0, 3) %1, i64 %2, i64 noundef %i.p, i64 noundef %i.p)
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %.preheader.i
  %i.r = load ptr, ptr %i.h, align 8, !noalias !1491, !noundef !4 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.thread27, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc13
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.625.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %.sroa.524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.625.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.6.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.612.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  br label %bb.b

.thread26:                                        ; preds = %.noexc
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 -9223372036854775807, ptr %i.ad, align 8, !alias.scope !1488, !noalias !1493
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.o, ptr %.sroa.421.0..sroa_idx.i, align 8, !alias.scope !1488, !noalias !1493
  br label %.sink.split

.thread27:                                        ; preds = %.noexc15, %.noexc13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !1491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1491
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !1493
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1491
  br label %.sink.split

bb.b:                                             ; preds = %.noexc15, %.lr.ph.i
  %i.ag = phi ptr [ %i.r, %.lr.ph.i ], [ %i.bx, %.noexc15 ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.524.0..sroa_idx.i, i64 24, i1 false), !noalias !1491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.59.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.625.0..sroa_idx.i, i64 96, i1 false), !noalias !1491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i, i64 24, i1 false), !noalias !1491
  store ptr %i.ag, ptr %i.i, align 8, !noalias !1491
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1491
  invoke void @"_ZN120_$LT$zip..read..CentralDirectoryInfo$u20$as$u20$core..convert..TryFrom$LT$$RF$zip..spec..CentralDirectoryEndInfo$GT$$GT$8try_from17h9590e4aba9c4bf87E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.i)
          to label %bb.c unwind label %.loopexit.i, !noalias !1488

.loopexit.i:                                      ; preds = %bb.x, %bb.b
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp.i:                             ; preds = %bb.h
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.c:                                             ; preds = %bb.b
  %i.ah = load i64, ptr %i.f, align 8, !range !3, !noalias !1491, !noundef !4
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %.thread40.i, label %bb.d

.thread40.i:                                      ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !1491
  store i64 3, ptr %i.g, align 8, !noalias !1491
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !1491
  call void @llvm.experimental.noalias.scope.decl(metadata !1494)
  call void @llvm.experimental.noalias.scope.decl(metadata !1497)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1491
  %i.aj = load i64, ptr %i.u, align 8, !alias.scope !1497, !noalias !1499, !noundef !4 ; 4 uses
  %i.ak = load i64, ptr %i.v, align 8, !alias.scope !1497, !noalias !1499, !noundef !4 ; 3 uses
  %i.al = icmp ugt i64 %i.aj, %i.ak
  %..i.i = select i1 %i.al, i64 0, i64 %i.aj      ; 3 uses
  %i.am = load i32, ptr %i.w, align 8, !alias.scope !1497, !noalias !1499, !noundef !4
  %i.an = load i32, ptr %i.x, align 4, !alias.scope !1497, !noalias !1499, !noundef !4
  %.not.i.i = icmp eq i32 %i.am, %i.an
  br i1 %.not.i.i, label %bb.e, label %.thread42.i

bb.e:                                             ; preds = %bb.d
  %i.ao = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %..i.i, i64 208) ; 2 uses
  %i.ap = extractvalue { i64, i1 } %i.ao, 0       ; 5 uses
  %i.aq = extractvalue { i64, i1 } %i.ao, 1
  %i.ar = icmp slt i64 %i.ap, 0
  %or.cond.i.i = or i1 %i.aq, %i.ar
  br i1 %or.cond.i.i, label %.thread42.i, label %bb.f, !prof !397

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1501
  %4 = icmp samesign ugt i64 %i.ap, 9223372036854775800
  br i1 %4, label %bb.h, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i, !prof !397

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i: ; preds = %bb.f
  %5 = icmp eq i64 %i.ap, 0
  br i1 %5, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i", label %bb.g

bb.g:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !1502
  %i.as = call noundef align 8 ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !1502 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.h, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i"

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.g ], [ 0, %bb.f ]
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.ap) #50
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !1488

.noexc.i:                                         ; preds = %bb.h
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i": ; preds = %bb.g, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i
  %.sroa.4.0.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i ], [ %..i.i, %bb.g ] ; 2 uses
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i.i ], [ %i.as, %bb.g ]
  %i.au = icmp samesign ule i64 %..i.i, %.sroa.4.0.i.i.i
  call void @llvm.assume(i1 %i.au)
  store i64 %.sroa.4.0.i.i.i, ptr %i.c, align 8, !noalias !1501
  store ptr %.sroa.10.0.i.i.i, ptr %i.z, align 8, !noalias !1501
  store i64 0, ptr %i.aa, align 8, !noalias !1501
  %i.av = invoke { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Seek$GT$4seek17hb97dd089350561d0E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.l, i64 noundef 0, i64 noundef %i.ak)
          to label %bb.i unwind label %.loopexit.split-lp.i.i, !noalias !1505 ; 2 uses

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i"
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.o, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bg, %bb.o ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$alloc..vec..Vec$LT$zip..types..ZipFileData$GT$$GT$17hc29dceeda3eba9bbE"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #51
          to label %bb.z unwind label %bb.v, !noalias !1506

bb.i:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i.i"
  %i.aw = extractvalue { i64, ptr } %i.av, 0
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.j, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.i
  %.not33.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not33.i.i, label %.thread.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.i
  %i.ay = extractvalue { i64, ptr } %i.av, 1
  store i64 -9223372036854775807, ptr %i.y, align 8, !alias.scope !1494, !noalias !1507
  store ptr %i.ay, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !alias.scope !1494, !noalias !1507
  store i64 3, ptr %i.g, align 8, !alias.scope !1494, !noalias !1507
  br label %bb.q

.thread.i:                                        ; preds = %.preheader.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17haa776712d6935b91E.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.414.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1507
  %i.az = load i64, ptr %i.d, align 8, !alias.scope !1497, !noalias !1499, !noundef !4
  store i64 %1, ptr %i.g, align 8, !alias.scope !1494, !noalias !1507
  store i64 %2, ptr %i.y, align 8, !alias.scope !1494, !noalias !1507
  store i64 %i.az, ptr %.sroa.612.0..sroa_idx.i.i, align 8, !alias.scope !1494, !noalias !1507
  store i64 %i.ak, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !1494, !noalias !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1491
  br label %.loopexit94.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17haa776712d6935b91E.exit.i.i"
  %.sroa.026.032.i.i = phi i64 [ %i.ba, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17haa776712d6935b91E.exit.i.i" ], [ 0, %.preheader.i.i ]
  %i.ba = add nuw i64 %.sroa.026.032.i.i, 1       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1501
  invoke void @_ZN3zip4read26central_header_to_zip_file17hcebf9d4b0209b553E(ptr noalias noundef nonnull sret([208 x i8]) align 8 captures(address) dereferenceable(208) %i.b, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %bb.k unwind label %.loopexit.i.i, !noalias !1506

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bb = load i64, ptr %i.b, align 8, !range !101, !noalias !1501, !noundef !4 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.524.0..sroa_idx.i.i, i64 24, i1 false), !noalias !1501
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, i64 24, i1 false), !noalias !1507
  store i64 3, ptr %i.g, align 8, !alias.scope !1494, !noalias !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %.sroa.8.0..sroa_idx9.i.i, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.625.0..sroa_idx.i.i, i64 176, i1 false), !noalias !1501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1501
  store i64 %i.bb, ptr %i.a, align 8, !noalias !1501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i, i64 24, i1 false), !noalias !1501
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  %i.bd = load i64, ptr %i.aa, align 8, !alias.scope !1508, !noalias !1511, !noundef !4 ; 3 uses
  %i.be = load i64, ptr %i.c, align 8, !range !283, !alias.scope !1508, !noalias !1511, !noundef !4
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.n, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17haa776712d6935b91E.exit.i.i"

bb.n:                                             ; preds = %bb.m
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hd161927506050ae0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17haa776712d6935b91E.exit.i.i" unwind label %bb.o, !noalias !1513

bb.o:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17ha3610e895df8fcecE"(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.a) #51
          to label %.body.i.i unwind label %bb.p, !noalias !1514

bb.p:                                             ; preds = %bb.o
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !1514
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17haa776712d6935b91E.exit.i.i": ; preds = %bb.n, %bb.m
  %i.bi = load ptr, ptr %i.z, align 8, !alias.scope !1508, !noalias !1511, !nonnull !4, !noundef !4
  %i.bj = getelementptr inbounds nuw [208 x i8], ptr %i.bi, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.bj, ptr noundef nonnull align 8 dereferenceable(208) %i.a, i64 208, i1 false), !noalias !1514
  %i.bk = add i64 %i.bd, 1
  store i64 %i.bk, ptr %i.aa, align 8, !alias.scope !1508, !noalias !1511
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.aj
  br i1 %exitcond.not.i.i, label %.thread.i, label %.lr.ph.i.i

bb.q:                                             ; preds = %bb.l, %bb.j
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc580c8bd64a63569E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.t unwind label %bb.r, !noalias !1506

bb.r:                                             ; preds = %bb.q
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !1515, !noalias !1501 ; 2 uses
  %i.bm = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.bm, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val3.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !1515, !noalias !1501, !nonnull !4, !noundef !4
  %i.bn = mul nuw i64 %.val2.i.i.i, 208
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !1506
  br label %bb.z

bb.t:                                             ; preds = %bb.q
  %.val.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !1515, !noalias !1501 ; 2 uses
  %i.bo = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bo, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val1.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !1515, !noalias !1501, !nonnull !4, !noundef !4
  %i.bp = mul nuw i64 %.val.i.i.i, 208
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !1506
  br label %bb.w

bb.v:                                             ; preds = %.body.i.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !1506
  unreachable

.thread42.i:                                      ; preds = %bb.e, %bb.d
  %storemerge91.i = phi ptr [ @81, %bb.d ], [ @80, %bb.e ]
  %storemerge.i = phi i64 [ 47, %bb.d ], [ 27, %bb.e ]
  store i64 -9223372036854775805, ptr %i.y, align 8, !alias.scope !1494, !noalias !1507
  store ptr %storemerge91.i, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !alias.scope !1494, !noalias !1507
  store i64 %storemerge.i, ptr %.sroa.515.0..sroa_idx.i.i, align 8, !alias.scope !1494, !noalias !1507
  store i64 3, ptr %i.g, align 8, !alias.scope !1494, !noalias !1507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1491
  br label %.sink.split.i

bb.w:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1501
  %.pr.pr.pre.i = load i64, ptr %i.g, align 8, !noalias !1491
  %i.br = icmp eq i64 %.pr.pr.pre.i, 3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1491
  br i1 %i.br, label %bb.x, label %.loopexit94.i

.loopexit94.i:                                    ; preds = %bb.w, %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !1491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1491
  %i.bs = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1491, !noundef !4
  %.sroa.013.0.copyload.i = load ptr, ptr %i.ab, align 8, !noalias !1491 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.013.0.copyload.i, null
  %.sroa.515.0.copyload.i = load i64, ptr %i.ac, align 8, !noalias !1491
  %.sroa.512.0.i = select i1 %.not.i, i64 undef, i64 %.sroa.515.0.copyload.i
  invoke void @_ZN3zip4read11zip_archive13SharedBuilder5build17h3af84b1882f2a69aE(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.e, ptr noalias noundef nonnull align 1 %i.ag, i64 noundef %i.bs, ptr noalias noundef align 1 %.sroa.013.0.copyload.i, i64 %.sroa.512.0.i)
          to label %bb.ab unwind label %.loopexit.split-lp

.sink.split.i:                                    ; preds = %.thread42.i, %.thread40.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1491
  br label %bb.x

bb.x:                                             ; preds = %.sink.split.i, %bb.w
  invoke fastcc void @"_ZN4core3ptr110drop_in_place$LT$core..result..Result$LT$zip..read..zip_archive..SharedBuilder$C$zip..result..ZipError$GT$$GT$17h410ebfb32de0bc65E"(ptr noalias noundef align 8 dereferenceable(56) %i.g)
          to label %bb.y unwind label %.loopexit.i, !noalias !1488

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1491
  %i.bt = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !1491, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  %.val1.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1518, !noalias !1491, !noundef !4 ; 2 uses
  %i.bu = icmp eq i64 %.val1.i.i, 0
  br i1 %i.bu, label %"_ZN4core3ptr90drop_in_place$LT$zip..spec..DataAndPosition$LT$zip..spec..Zip32CentralDirectoryEnd$GT$$GT$17h50b9c4adcdc040e5E.exit.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i": ; preds = %bb.y
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef %.val1.i.i, i64 noundef 1) #52, !noalias !1521
  br label %"_ZN4core3ptr90drop_in_place$LT$zip..spec..DataAndPosition$LT$zip..spec..Zip32CentralDirectoryEnd$GT$$GT$17h50b9c4adcdc040e5E.exit.i.i"

"_ZN4core3ptr90drop_in_place$LT$zip..spec..DataAndPosition$LT$zip..spec..Zip32CentralDirectoryEnd$GT$$GT$17h50b9c4adcdc040e5E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i.i", %bb.y
  %.val2.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !1518, !noalias !1491, !noundef !4 ; 3 uses
  %.val3.i.i = load i64, ptr %i.ac, align 8, !alias.scope !1518, !noalias !1491 ; 2 uses
  %i.bv = icmp eq ptr %.val2.i.i, null
  %i.bw = icmp eq i64 %.val3.i.i, 0
  %or.cond.i6.i.i = select i1 %i.bv, i1 true, i1 %i.bw
  br i1 %or.cond.i6.i.i, label %"_ZN4core3ptr55drop_in_place$LT$zip..spec..CentralDirectoryEndInfo$GT$17hba2940998f8874d9E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i.i.i7.i.i"
end_hunk_2
