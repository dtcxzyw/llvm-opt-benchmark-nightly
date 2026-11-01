Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.10?download=true
inline.NumInlined: 5637
inline.NumDeleted: 1815
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@"_ZN90_$LT$alloc..boxed..Box$LT$F$C$A$GT$$u20$as$u20$core..ops..function..FnOnce$LT$Args$GT$$GT$9call_once17h0aa2e41acc374bd1E":bb.a
  br i1 %i.p, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5842be7a5c0498ebE.exit6", label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.n) #45
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5842be7a5c0498ebE.exit6"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5842be7a5c0498ebE.exit6": ; preds = %bb.d, %bb.e
  ret { ptr, ptr } %i.c

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5842be7a5c0498ebE.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN90_$LT$alloc..boxed..Box$LT$F$C$A$GT$$u20$as$u20$core..ops..function..FnOnce$LT$Args$GT$$GT$9call_once17h79067dfbfa811c86E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !11313
  invoke void @_ZN4anki4sync7request9multipart25decode_gzipped_data_inner17hf3c88f7b3daa2665E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11312
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 32, i64 noundef 8) #45
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 32, i64 noundef 8) #45
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN90_$LT$alloc..boxed..Box$LT$F$C$A$GT$$u20$as$u20$core..ops..function..FnOnce$LT$Args$GT$$GT$9call_once17hac47ac1c055b6644E"(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !11318
  invoke void @_ZN3std2fs4File6create17hbd60dc0f35b0f1cfE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11317
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 24, i64 noundef 8) #45
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 24, i64 noundef 8) #45
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN90_$LT$alloc..boxed..Box$LT$F$C$A$GT$$u20$as$u20$core..ops..function..FnOnce$LT$Args$GT$$GT$9call_once17hae7817bed9e25923E"(ptr dead_on_unwind noalias noundef writable sret([184 x i8]) align 8 captures(address) dereferenceable(184) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !12, !nonnull !12
  invoke void %i.c(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(address) dereferenceable(184) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !24, !invariant.load !12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !25, !invariant.load !12 ; 2 uses
  %i.i = icmp ult i64 %i.h, -9223372036854775807
  call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h85713cc23a159169E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, -9223372036854775807) %i.h) #45
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h85713cc23a159169E.exit"

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !24, !invariant.load !12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !25, !invariant.load !12 ; 2 uses
  %i.o = icmp ult i64 %i.n, -9223372036854775807
  call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i64 %i.l, 0
  br i1 %i.p, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h85713cc23a159169E.exit5", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.n) #45
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h85713cc23a159169E.exit5"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h85713cc23a159169E.exit5": ; preds = %bb.d, %bb.e
  ret void

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h85713cc23a159169E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @"_ZN90_$LT$alloc..boxed..Box$LT$F$C$A$GT$$u20$as$u20$core..ops..function..FnOnce$LT$Args$GT$$GT$9call_once17hf050cdbccc4a979eE"(ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !12, !nonnull !12
  %i.d = invoke { ptr, ptr } %i.c(ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !24, !invariant.load !12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !25, !invariant.load !12 ; 2 uses
  %i.j = icmp ult i64 %i.i, -9223372036854775807
  call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f2aa0131488f366E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.i) #45
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f2aa0131488f366E.exit"

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !24, !invariant.load !12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !25, !invariant.load !12 ; 2 uses
  %i.p = icmp ult i64 %i.o, -9223372036854775807
  call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.m, 0
  br i1 %i.q, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f2aa0131488f366E.exit5", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.o) #45
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f2aa0131488f366E.exit5"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f2aa0131488f366E.exit5": ; preds = %bb.d, %bb.e
  ret { ptr, ptr } %i.d

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f2aa0131488f366E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN90_$LT$alloc..boxed..Box$LT$F$C$A$GT$$u20$as$u20$core..ops..function..FnOnce$LT$Args$GT$$GT$9call_once17hfe152974e5a48a3aE"(ptr dead_on_unwind noalias noundef writable sret([152 x i8]) align 8 captures(address) dereferenceable(152) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !12, !nonnull !12
  invoke void %i.c(ptr noalias noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %0, ptr noundef nonnull %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !24, !invariant.load !12 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !25, !invariant.load !12 ; 2 uses
  %i.i = icmp ult i64 %i.h, -9223372036854775807
  call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f3f62488801ef2fE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, 0) %i.f, i64 noundef range(i64 1, -9223372036854775807) %i.h) #45
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f3f62488801ef2fE.exit"

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !24, !invariant.load !12 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !25, !invariant.load !12 ; 2 uses
  %i.o = icmp ult i64 %i.n, -9223372036854775807
  call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i64 %i.l, 0
  br i1 %i.p, label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f3f62488801ef2fE.exit5", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, 0) %i.l, i64 noundef range(i64 1, -9223372036854775807) %i.n) #45
  br label %"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f3f62488801ef2fE.exit5"

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f3f62488801ef2fE.exit5": ; preds = %bb.d, %bb.e
  ret void

"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2f3f62488801ef2fE.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN90_$LT$anki..storage..card..data..CardData$u20$as$u20$rusqlite..types..from_sql..FromSql$GT$13column_result17h6dc0d8c54fc83e5bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 8), (16, 44), (48, 52), (56, 60), (64, 68), (72, 76)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [80 x i8], align 8                ; 11 uses
  %i.c = load i64, ptr %1, align 8, !range !29, !noundef !12
  %i.d = icmp eq i64 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !12, !align !21, !noundef !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  call void @_ZN10serde_json2de10from_trait17he6640c105dba7fe6E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !11322)
  %i.k = load i64, ptr %i.b, align 8, !range !35, !alias.scope !11323, !noundef !12 ; 2 uses
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %2 = load <2 x i64>, ptr %.sroa.5.0..sroa_idx9, align 8, !alias.scope !11324
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6.0.copyload16 = load ptr, ptr %.sroa.6.0..sroa_idx15, align 8, !alias.scope !11324
  %.sroa.7.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.0.copyload18 = load i64, ptr %.sroa.7.0..sroa_idx17, align 8, !alias.scope !11324
  %.sroa.8.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.m = load <4 x i32>, ptr %.sroa.8.0..sroa_idx20, align 8, !alias.scope !11324
  %.sroa.1030.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.n = load <4 x i32>, ptr %.sroa.1030.0..sroa_idx31, align 8, !alias.scope !11324
  %.sroa.1241.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.o = load <2 x i32>, ptr %.sroa.1241.0..sroa_idx42, align 8, !alias.scope !11324
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17ha94a2c2d85500448E.exit"

bb.d:                                             ; preds = %bb.b
  call fastcc void @"_ZN4core3ptr111drop_in_place$LT$core..result..Result$LT$anki..storage..card..data..CardData$C$serde_json..error..Error$GT$$GT$17hec7afc811c9cda3fE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.b), !noalias !11322
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17ha94a2c2d85500448E.exit"

"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17ha94a2c2d85500448E.exit": ; preds = %bb.c, %bb.d
  %.sroa.7.0 = phi i64 [ 0, %bb.d ], [ %.sroa.7.0.copyload18, %bb.c ]
  %.sroa.6.0 = phi ptr [ inttoptr (i64 1 to ptr), %bb.d ], [ %.sroa.6.0.copyload16, %bb.c ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ %i.k, %bb.c ]
  %i.p = phi <4 x i32> [ <i32 0, i32 undef, i32 0, i32 undef>, %bb.d ], [ %i.m, %bb.c ]
  %i.q = phi <4 x i32> [ <i32 0, i32 undef, i32 0, i32 undef>, %bb.d ], [ %i.n, %bb.c ]
  %i.r = phi <2 x i32> [ <i32 0, i32 undef>, %bb.d ], [ %i.o, %bb.c ]
  %i.s = phi <2 x i64> [ <i64 undef, i64 0>, %bb.d ], [ %2, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i64> %i.s, ptr %.sroa.5.0..sroa_idx8, align 8
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx14, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <4 x i32> %i.p, ptr %.sroa.8.0..sroa_idx19, align 8
  %.sroa.1030.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <4 x i32> %i.q, ptr %.sroa.1030.0..sroa_idx, align 8
  %.sroa.1241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <2 x i32> %i.r, ptr %.sroa.1241.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %.sroa.14.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17ha94a2c2d85500448E.exit"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN90_$LT$axum_client_ip..ClientIp$u20$as$u20$axum_core..extract..FromRequestParts$LT$S$GT$$GT$18from_request_parts28_$u7b$$u7b$closure$u7d$$u7d$17h98df3742944ac7b2E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i = alloca [12 x i8], align 1          ; 2 uses
  %.sroa.4 = alloca [17 x i8], align 8            ; 2 uses
  %.sroa.5 = alloca [31 x i8], align 1            ; 2 uses
  %i.a = alloca [56 x i8], align 8                ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !range !22, !noundef !12
  switch i8 %i.c, label %default.unreachable9 [
    i8 0, label %bb.b
    i8 1, label %bb.v
    i8 2, label %bb.w
  ]

default.unreachable9:                             ; preds = %bb.e, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !nonnull !12, !align !13, !noundef !12 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 208 ; 2 uses
  %i.f = invoke noundef align 1 dereferenceable_or_null(1) ptr @_ZN4http10extensions10Extensions3get17h16ebf8175669dea0E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = load i8, ptr %i.f, align 1, !range !65, !noundef !12
  switch i8 %i.h, label %default.unreachable9 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
    i8 5, label %bb.k
    i8 6, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN14axum_client_ip14CfConnectingIp15ip_from_headers17hcfc1ad646c86cafaE(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.d)
          to label %thread-pre-split unwind label %bb.s

bb.g:                                             ; preds = %bb.e
  invoke void @_ZN14axum_client_ip23CloudFrontViewerAddress15ip_from_headers17h5c7a830f69c27bbeE(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.d)
          to label %thread-pre-split unwind label %bb.s

bb.h:                                             ; preds = %bb.e
  %i.i = invoke noundef align 4 dereferenceable_or_null(32) ptr @_ZN4http10extensions10Extensions3get17h0228a3104ed4b461E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e)
          to label %bb.n unwind label %bb.s       ; 5 uses

bb.i:                                             ; preds = %bb.e
  invoke void @_ZN14axum_client_ip11FlyClientIp15ip_from_headers17hf29b8f0ad456818fE(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.d)
          to label %thread-pre-split unwind label %bb.s

bb.j:                                             ; preds = %bb.e
  invoke void @_ZN14axum_client_ip22RightmostXForwardedFor15ip_from_headers17hd087e03f85c4c9a7E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.d)
          to label %thread-pre-split unwind label %bb.s

bb.k:                                             ; preds = %bb.e
  invoke void @_ZN14axum_client_ip12TrueClientIp15ip_from_headers17h6caefaa9d5db5bf7E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.d)
          to label %thread-pre-split unwind label %bb.s

bb.l:                                             ; preds = %bb.e
  invoke void @_ZN14axum_client_ip7XRealIp15ip_from_headers17h75acd3425d73b961E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.d)
          to label %thread-pre-split unwind label %bb.s

thread-pre-split:                                 ; preds = %bb.f, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l
  %.pr = load i64, ptr %i.a, align 8, !alias.scope !11336
  br label %"_ZN4core6option15Option$LT$T$GT$3map17h2b4fb24c519fce9bE.exit.thread"

"_ZN4core6option15Option$LT$T$GT$3map17h2b4fb24c519fce9bE.exit.thread": ; preds = %bb.r, %bb.n, %thread-pre-split
  %i.j = phi i64 [ %.pr, %thread-pre-split ], [ -9223372036854775802, %bb.r ], [ -9223372036854775804, %bb.n ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11337)
  %.not.i = icmp eq i64 %i.j, -9223372036854775802
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(17) %i.k, i64 17, i1 false), !alias.scope !11338
  br i1 %.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$3map17hb4f9609de784936dE.exit", label %bb.m

bb.m:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$3map17h2b4fb24c519fce9bE.exit.thread"
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.0..sroa_idx4, i64 31, i1 false), !alias.scope !11338
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$3map17hb4f9609de784936dE.exit"

bb.n:                                             ; preds = %bb.h
  %.not.i8 = icmp eq ptr %i.i, null
  br i1 %.not.i8, label %"_ZN4core6option15Option$LT$T$GT$3map17h2b4fb24c519fce9bE.exit.thread", label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11339)
  %i.l = load i16, ptr %i.i, align 4, !range !11340, !alias.scope !11341, !noundef !12
  %i.m = trunc nuw i16 %i.l to i1
  br i1 %i.m, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.4.1.copyload.i = load i32, ptr %i.n, align 4, !alias.scope !11342
  %.sroa.6.1..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.6.i, ptr noundef nonnull readonly align 4 dereferenceable(12) %.sroa.6.1..sroa_idx.i, i64 12, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.o, align 2, !alias.scope !11341
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.4.0.i = phi i32 [ %.sroa.4.1.copyload.i, %bb.p ], [ %.sroa.0.0.copyload.i.i, %bb.q ]
  %.sink.i.i = phi i8 [ 1, %bb.p ], [ 0, %bb.q ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sink.i.i, ptr %i.p, align 8, !alias.scope !11343
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i32 %.sroa.4.0.i, ptr %.sroa.7.0..sroa_idx, align 1, !alias.scope !11343
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(12) %.sroa.6.i, i64 12, i1 false)
  br label %"_ZN4core6option15Option$LT$T$GT$3map17h2b4fb24c519fce9bE.exit.thread"

bb.s:                                             ; preds = %bb.f, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l, %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.u

"_ZN4core6result19Result$LT$T$C$E$GT$3map17hb4f9609de784936dE.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$3map17h2b4fb24c519fce9bE.exit.thread", %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.t

bb.t:                                             ; preds = %bb.d, %"_ZN4core6result19Result$LT$T$C$E$GT$3map17hb4f9609de784936dE.exit"
  %.sroa.01.1 = phi i64 [ %i.j, %"_ZN4core6result19Result$LT$T$C$E$GT$3map17hb4f9609de784936dE.exit" ], [ -9223372036854775803, %bb.d ]
  store i64 %.sroa.01.1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(17) %.sroa.4, i64 17, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5, i64 31, i1 false)
  store i8 1, ptr %i.b, align 8
  ret void

bb.u:                                             ; preds = %bb.s, %bb.c
  %.pn5.pn = phi { ptr, i32 } [ %i.q, %bb.s ], [ %i.g, %bb.c ]
  store i8 2, ptr %i.b, align 8
  resume { ptr, i32 } %.pn5.pn

bb.v:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h3b6db46748f97cb2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1525) #44
  unreachable

bb.w:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h9ee303addc83bb21E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1525) #44
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN91_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeStruct$GT$15serialize_field17haa7d3ee3ac76c4c9E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !18, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.d, label %bb.b
end_hunk_0
