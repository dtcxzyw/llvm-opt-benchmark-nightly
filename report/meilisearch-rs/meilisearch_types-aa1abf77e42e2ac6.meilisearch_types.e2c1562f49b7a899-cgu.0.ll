Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/meilisearch_types-aa1abf77e42e2ac6.meilisearch_types.e2c1562f49b7a899-cgu.0?download=true
inline.NumInlined: 11037
inline.NumDeleted: 4505
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 218
loop-unroll.NumUnrolled: 298
begin_hunk_0_@"_ZN103_$LT$meilisearch_types..dynamic_search_rules..TimeCondition$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17h901bbbcd229a758eE":bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.f, ptr noundef nonnull align 8 dereferenceable(752) %i.o, i64 752, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN6utoipa7openapi6schema13ObjectBuilder3new17h06eaf1af98be7f92E(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.b)
          to label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i25" unwind label %.thread85

.thread85:                                        ; preds = %bb.o, %bb.s
  %lpad.thr_comm83 = landingpad { ptr, i32 }
          cleanup
  br label %.thread78

bb.p:                                             ; preds = %bb.z
  %lpad.thr_comm.split-lp84 = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i25": ; preds = %bb.o
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !1441
  %i.ac = call noundef dereferenceable_or_null(2) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 2, i64 noundef range(i64 1, 9) 1) #52, !noalias !1441 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.noexc.i.i.i.i31, label %bb.q

.noexc.i.i.i.i31:                                 ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i25"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc33 unwind label %bb.af

.noexc33:                                         ; preds = %.noexc.i.i.i.i31
  unreachable

bb.q:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i25"
  store i16 1537, ptr %i.ac, align 1, !noalias !1442
  call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  call void @llvm.experimental.noalias.scope.decl(metadata !1445)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 432 ; 2 uses
  %.val.i35 = load i64, ptr %i.ae, align 8, !range !24, !alias.scope !1444, !noalias !1446, !noundef !21 ; 3 uses
  %i.af = icmp ne i64 %.val.i35, -9223372036854775807
  call void @llvm.assume(i1 %i.af)
  %or.cond.i.i36 = icmp slt i64 %.val.i35, 1
  br i1 %or.cond.i.i36, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %.val2.i37 = load ptr, ptr %i.ag, align 8, !alias.scope !1444, !noalias !1446, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i37, i64 noundef %.val.i35, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !1447
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store i64 2, ptr %i.ae, align 8, !alias.scope !1448, !noalias !1443
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  store ptr %i.ac, ptr %.sroa.461.0..sroa_idx, align 8, !alias.scope !1448, !noalias !1443
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  store i64 2, ptr %.sroa.562.0..sroa_idx, align 8, !alias.scope !1448, !noalias !1443
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.c, ptr noundef nonnull align 8 dereferenceable(752) %i.b, i64 752, i1 false), !alias.scope !1449, !noalias !1445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_ZN6utoipa7openapi6schema13ObjectBuilder6format17h6bc25df3d9fba371E(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(752) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.t unwind label %.thread85

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !1452
  %i.ah = call noundef dereferenceable_or_null(95) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 95, i64 noundef range(i64 1, 9) 1) #52, !noalias !1452 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 95, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1964) #57
          to label %.noexc.i47 unwind label %bb.w, !noalias !1453

.noexc.i47:                                       ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.x
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  %.val11.i45 = load ptr, ptr %i.aj, align 8, !alias.scope !1451, !noalias !1454, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i45, i64 noundef %.val.i41, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !1455
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef nonnull align 8 dereferenceable(752) %i.d) #55
          to label %.thread78 unwind label %bb.y, !noalias !1454

bb.x:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(95) %i.ah, ptr noundef nonnull readonly align 1 dereferenceable(95) @42, i64 95, i1 false), !noalias !1456
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 336 ; 2 uses
  %.val.i41 = load i64, ptr %i.al, align 8, !range !25, !alias.scope !1451, !noalias !1454, !noundef !21 ; 2 uses
  %switch.i42 = icmp sgt i64 %.val.i41, 0
  br i1 %switch.i42, label %bb.v, label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !1453
  unreachable

bb.z:                                             ; preds = %bb.v, %bb.x
  store i64 95, ptr %i.al, align 8, !alias.scope !1451, !noalias !1454
  %.sroa.6.0..sroa_idx7.i43 = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  store ptr %i.ah, ptr %.sroa.6.0..sroa_idx7.i43, align 8, !alias.scope !1451, !noalias !1454
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx7.sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  store i64 95, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx7.sroa_idx.i44, align 8, !alias.scope !1451, !noalias !1454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.e, ptr noundef nonnull align 8 dereferenceable(752) %i.d, i64 752, i1 false), !alias.scope !1457, !noalias !1458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_ZN6utoipa7openapi6schema13ObjectBuilder8property17hea34fe50d96f11a2E(ptr noalias noundef align 8 captures(address) dereferenceable(752) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(752) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @43, i64 noundef 3, ptr noalias noundef align 8 captures(address) dereferenceable(752) %i.e)
          to label %bb.aa unwind label %bb.p

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.o, ptr noundef nonnull align 8 dereferenceable(752) %i.g, i64 752, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.p, ptr noundef nonnull align 8 dereferenceable(752) %i.o, i64 752, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @"_ZN6utoipa7openapi6schema157_$LT$impl$u20$core..convert..From$LT$utoipa..openapi..schema..ObjectBuilder$GT$$u20$for$u20$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$4from17h18fe66201e37aeb5E"(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(752) %i.p)
          to label %bb.ab unwind label %bb.c

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !1460, !nonnull !21, !noundef !21 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !1460, !noundef !21
  invoke fastcc void @"_ZN4core3ptr92drop_in_place$LT$$u5b$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$u5d$$GT$17h9c20bce28d094aecE"(ptr noalias noundef nonnull align 8 %i.ao, i64 noundef %i.aq)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5c97d73e757b972cE.exit.i" unwind label %bb.ac, !noalias !1459, !inline_history !0

bb.ac:                                            ; preds = %bb.ab
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i51 = load i64, ptr %1, align 8, !range !22, !alias.scope !1459, !noundef !21 ; 2 uses
  %i.as = icmp eq i64 %.val2.i51, 0
  br i1 %i.as, label %common.resume, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.at = mul nuw i64 %.val2.i51, 752
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !1459, !inline_history !26
  br label %common.resume

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5c97d73e757b972cE.exit.i": ; preds = %bb.ab
  %.val.i52 = load i64, ptr %1, align 8, !range !22, !alias.scope !1459, !noundef !21 ; 2 uses
  %i.au = icmp eq i64 %.val.i52, 0
  br i1 %i.au, label %"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$$GT$17hc4ca8fdd1615b75fE.exit", label %bb.ae

bb.ae:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5c97d73e757b972cE.exit.i"
  %i.av = mul nuw i64 %.val.i52, 752
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !1459, !inline_history !26
  br label %"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$$GT$17hc4ca8fdd1615b75fE.exit"

common.resume:                                    ; preds = %bb.b, %bb.ac, %bb.ad
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.ac ], [ %i.ar, %bb.ad ], [ %.pn16, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$$GT$17hc4ca8fdd1615b75fE.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5c97d73e757b972cE.exit.i", %bb.ae
  ret void

bb.af:                                            ; preds = %.noexc.i.i.i.i31
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef align 8 dereferenceable(752) %i.b) #55
          to label %.thread78 unwind label %bb.ag

bb.ag:                                            ; preds = %.thread66, %bb.ah, %.thread78, %bb.af, %bb.b
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

.thread78:                                        ; preds = %bb.af, %bb.w, %.thread85
  %.pn1477 = phi { ptr, i32 } [ %i.ak, %bb.w ], [ %lpad.thr_comm83, %.thread85 ], [ %i.aw, %bb.af ]
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef align 8 dereferenceable(752) %i.o) #55
          to label %bb.b unwind label %bb.ag

bb.ah:                                            ; preds = %.noexc.i.i.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef align 8 dereferenceable(752) %i.i) #55
          to label %.thread66 unwind label %bb.ag

.thread66:                                        ; preds = %bb.ah, %bb.k, %.thread70
  %.pn65 = phi { ptr, i32 } [ %i.z, %bb.k ], [ %lpad.thr_comm, %.thread70 ], [ %i.ay, %bb.ah ]
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef align 8 dereferenceable(752) %i.o) #55
          to label %bb.b unwind label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN103_$LT$meilisearch_types..index_uid_pattern..IndexUidPatternFormatError$u20$as$u20$core..fmt..Display$GT$3fmt17hefdddc50508d7991E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1463
  store ptr @46, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !1463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN104_$LT$meilisearch_types..dynamic_search_rules..QueryCondition$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17h1f876f38864619eeE"(ptr dead_on_unwind noalias noundef writable sret([752 x i8]) align 8 captures(address) dereferenceable(752) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [752 x i8], align 8               ; 9 uses
  %i.c = alloca [752 x i8], align 8               ; 9 uses
  %i.d = alloca [752 x i8], align 8               ; 4 uses
  %i.e = alloca [752 x i8], align 8               ; 4 uses
  %i.f = alloca [752 x i8], align 8               ; 4 uses
  %i.g = alloca [752 x i8], align 8               ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 3 uses
  %i.i = alloca [752 x i8], align 8               ; 9 uses
  %i.j = alloca [752 x i8], align 8               ; 9 uses
  %i.k = alloca [752 x i8], align 8               ; 4 uses
  %i.l = alloca [752 x i8], align 8               ; 4 uses
  %i.m = alloca [752 x i8], align 8               ; 4 uses
  %i.n = alloca [752 x i8], align 8               ; 4 uses
  %i.o = alloca [752 x i8], align 8               ; 10 uses
  %i.p = alloca [752 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_ZN6utoipa7openapi6schema13ObjectBuilder3new17h06eaf1af98be7f92E(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.o)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.q, %bb.e, %.thread72, %.thread84, %bb.c
  %.pn22 = phi { ptr, i32 } [ %i.q, %bb.c ], [ %.pn2083, %.thread84 ], [ %lpad.thr_comm.split-lp90, %bb.q ], [ %.pn71, %.thread72 ], [ %lpad.thr_comm.split-lp, %bb.e ]
  invoke fastcc void @"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$$GT$17hc4ca8fdd1615b75fE"(ptr noalias noundef align 8 dereferenceable(24) %1) #55
          to label %common.resume unwind label %bb.ah

bb.c:                                             ; preds = %bb.ab, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.m, ptr noundef nonnull align 8 dereferenceable(752) %i.o, i64 752, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_ZN6utoipa7openapi6schema13ObjectBuilder3new17h06eaf1af98be7f92E(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.i)
          to label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" unwind label %.thread76

.thread76:                                        ; preds = %bb.n, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread72

bb.e:                                             ; preds = %bb.o
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i": ; preds = %bb.d
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !1572
  %i.r = call noundef dereferenceable_or_null(2) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 2, i64 noundef range(i64 1, 9) 1) #52, !noalias !1572 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.noexc.i.i.i.i, label %bb.f

.noexc.i.i.i.i:                                   ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc unwind label %bb.ai

.noexc:                                           ; preds = %.noexc.i.i.i.i
  unreachable

bb.f:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i"
  store i16 1540, ptr %i.r, align 1, !noalias !1573
  call void @llvm.experimental.noalias.scope.decl(metadata !1574)
  call void @llvm.experimental.noalias.scope.decl(metadata !1575)
  call void @llvm.experimental.noalias.scope.decl(metadata !1576)
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 432 ; 2 uses
  %.val.i = load i64, ptr %i.t, align 8, !range !24, !alias.scope !1575, !noalias !1577, !noundef !21 ; 3 uses
  %i.u = icmp ne i64 %.val.i, -9223372036854775807
  call void @llvm.assume(i1 %i.u)
  %or.cond.i.i = icmp slt i64 %.val.i, 1
  br i1 %or.cond.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 440
  %.val2.i = load ptr, ptr %i.v, align 8, !alias.scope !1575, !noalias !1577, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !1578
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i64 2, ptr %i.t, align 8, !alias.scope !1579, !noalias !1574
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 440
  store ptr %i.r, ptr %.sroa.461.0..sroa_idx, align 8, !alias.scope !1579, !noalias !1574
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 448
  store i64 2, ptr %.sroa.562.0..sroa_idx, align 8, !alias.scope !1579, !noalias !1574
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.j, ptr noundef nonnull align 8 dereferenceable(752) %i.i, i64 752, i1 false), !alias.scope !1580, !noalias !1576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1581)
  call void @llvm.experimental.noalias.scope.decl(metadata !1582)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !1583
  %i.w = call noundef dereferenceable_or_null(210) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 210, i64 noundef range(i64 1, 9) 1) #52, !noalias !1583 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 210, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1964) #57
          to label %.noexc.i unwind label %bb.k, !noalias !1584

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 344
  %.val11.i = load ptr, ptr %i.y, align 8, !alias.scope !1582, !noalias !1585, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i, i64 noundef %.val.i26, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !1586
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef nonnull align 8 dereferenceable(752) %i.j) #55
          to label %.thread72 unwind label %bb.m, !noalias !1585

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(210) %i.w, ptr noundef nonnull readonly align 1 dereferenceable(210) @49, i64 210, i1 false), !noalias !1587
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 336 ; 2 uses
  %.val.i26 = load i64, ptr %i.aa, align 8, !range !25, !alias.scope !1582, !noalias !1585, !noundef !21 ; 2 uses
  %switch.i = icmp sgt i64 %.val.i26, 0
  br i1 %switch.i, label %bb.j, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !1584
  unreachable

bb.n:                                             ; preds = %bb.j, %bb.l
  store i64 210, ptr %i.aa, align 8, !alias.scope !1582, !noalias !1585
  %.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.j, i64 344
  store ptr %i.w, ptr %.sroa.6.0..sroa_idx7.i, align 8, !alias.scope !1582, !noalias !1585
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx7.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 352
  store i64 210, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx7.sroa_idx.i, align 8, !alias.scope !1582, !noalias !1585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.k, ptr noundef nonnull align 8 dereferenceable(752) %i.j, i64 752, i1 false), !alias.scope !1588, !noalias !1589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 -9223372036854775803, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false)
  invoke void @_ZN6utoipa7openapi6schema13ObjectBuilder7default17h8495ed9df1cc8220E(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(752) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(72) %i.a)
          to label %bb.o unwind label %.thread76

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke fastcc void @_ZN6utoipa7openapi6schema13ObjectBuilder8property17hea34fe50d96f11a2E(ptr noalias noundef align 8 captures(address) dereferenceable(752) %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(752) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @50, i64 noundef 7, ptr noalias noundef align 8 captures(address) dereferenceable(752) %i.l)
          to label %bb.p unwind label %bb.e

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.o, ptr noundef nonnull align 8 dereferenceable(752) %i.n, i64 752, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.f, ptr noundef nonnull align 8 dereferenceable(752) %i.o, i64 752, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN6utoipa7openapi6schema13ObjectBuilder3new17h06eaf1af98be7f92E(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.b)
          to label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i31" unwind label %.thread91

.thread91:                                        ; preds = %bb.z, %bb.p
  %lpad.thr_comm89 = landingpad { ptr, i32 }
          cleanup
  br label %.thread84

bb.q:                                             ; preds = %bb.aa
  %lpad.thr_comm.split-lp90 = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i31": ; preds = %bb.p
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !1590
  %i.ac = call noundef dereferenceable_or_null(2) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 2, i64 noundef range(i64 1, 9) 1) #52, !noalias !1590 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.noexc.i.i.i.i37, label %bb.r

end_hunk_0
begin_hunk_1_@"_ZN133_$LT$indexmap..map..IndexMap$LT$K$C$V1$C$S1$GT$$u20$as$u20$core..cmp..PartialEq$LT$indexmap..map..IndexMap$LT$K$C$V2$C$S2$GT$$GT$$GT$2eq28_$u7b$$u7b$closure$u7d$$u7d$17h5c5fedee5a723286E":bb.a
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ap = add i64 %.sroa.08.0.i.i.i.i.i, 16       ; 2 uses
  %i.aq = add i64 %.sroa.04.0.i.i.i.i.i, %i.ap
  br label %bb.d

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h560f2d57ef157470E.exit.i": ; preds = %bb.b
  %i.ar = getelementptr i8, ptr %i.f, i64 8
  %.val5.i.i = load ptr, ptr %i.ar, align 8, !noalias !4520, !nonnull !21, !noundef !21
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i.i = load ptr, ptr %i.as, align 8, !alias.scope !4519, !noalias !4518, !nonnull !21, !noundef !21
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val3.i.i, ptr nonnull readonly align 1 %.val5.i.i, i64 %.val4.i.i), !alias.scope !4533, !noalias !4520
  %bcmp.i.i.i.i.fr.i.i = freeze i32 %bcmp.i.i.i.i.i.i
  %i.at = icmp eq i32 %bcmp.i.i.i.i.fr.i.i, 0
  br i1 %i.at, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h560f2d57ef157470E.exit.thread6.i", label %"_ZN4core6option15Option$LT$T$GT$6map_or17hc16871019f71aecdE.exit"

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h560f2d57ef157470E.exit.thread6.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h71a2c49136d2d422E.exit.i.i.i.i", %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h560f2d57ef157470E.exit.i"
  %i.au = phi ptr [ %i.f, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h560f2d57ef157470E.exit.i" ], [ %i.m, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h71a2c49136d2d422E.exit.i.i.i.i" ]
  %.sroa.5.0.i9.i = phi i64 [ 0, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h560f2d57ef157470E.exit.i" ], [ %.val.i.i.i.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h71a2c49136d2d422E.exit.i.i.i.i" ] ; 3 uses
  %i.av = icmp ult i64 %.sroa.5.0.i9.i, %i.d
  br i1 %i.av, label %bb.i, label %bb.h

bb.h:                                             ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h560f2d57ef157470E.exit.thread6.i"
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.5.0.i9.i, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2040) #57, !noalias !4534
  unreachable

bb.i:                                             ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h560f2d57ef157470E.exit.thread6.i"
  %i.aw = getelementptr inbounds nuw [104 x i8], ptr %i.au, i64 %.sroa.5.0.i9.i ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4537)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4538)
  %i.ay = load i64, ptr %2, align 8, !range !60, !alias.scope !4539, !noalias !4540, !noundef !21 ; 2 uses
  %i.az = xor i64 %i.ay, -9223372036854775808
  %i.ba = icmp slt i64 %i.ay, 0
  %i.bb = select i1 %i.ba, i64 %i.az, i64 5       ; 2 uses
  %i.bc = load i64, ptr %i.ax, align 8, !range !60, !alias.scope !4540, !noalias !4539, !noundef !21 ; 2 uses
  %i.bd = xor i64 %i.bc, -9223372036854775808
  %i.be = icmp slt i64 %i.bc, 0
  %i.bf = select i1 %i.be, i64 %i.bd, i64 5
  %i.bg = icmp eq i64 %i.bb, %i.bf
  br i1 %i.bg, label %bb.j, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hc16871019f71aecdE.exit"

bb.j:                                             ; preds = %bb.i
  switch i64 %i.bb, label %bb.k [
    i64 1, label %bb.l
    i64 2, label %bb.m
    i64 3, label %bb.r
    i64 4, label %bb.t
    i64 5, label %bb.u
    i64 0, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hc16871019f71aecdE.exit"
  ]

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = load i8, ptr %i.bh, align 8, !range !35, !alias.scope !4539, !noalias !4540, !noundef !21
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bk = load i8, ptr %i.bj, align 8, !range !35, !alias.scope !4540, !noalias !4539, !noundef !21
  %i.bl = icmp eq i8 %i.bi, %i.bk
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hc16871019f71aecdE.exit"

bb.m:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4542)
  %i.bo = load i64, ptr %i.bm, align 8, !range !36, !alias.scope !4543, !noalias !4542, !noundef !21 ; 2 uses
  %i.bp = load i64, ptr %i.bn, align 8, !range !36, !alias.scope !4544, !noalias !4541, !noundef !21
  %.not.i10 = icmp eq i64 %i.bo, %i.bp
  br i1 %.not.i10, label %bb.n, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hc16871019f71aecdE.exit"

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 3 uses
  switch i64 %i.bo, label %default.unreachable [
    i64 0, label %bb.o
    i64 1, label %bb.p
    i64 2, label %bb.q
  ]

default.unreachable:                              ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.bs = load i64, ptr %i.bq, align 8, !alias.scope !4543, !noalias !4542, !noundef !21
  %i.bt = load i64, ptr %i.br, align 8, !alias.scope !4544, !noalias !4541, !noundef !21
  %i.bu = icmp eq i64 %i.bs, %i.bt
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hc16871019f71aecdE.exit"

bb.p:                                             ; preds = %bb.n
  %i.bv = load i64, ptr %i.bq, align 8, !alias.scope !4543, !noalias !4542, !noundef !21
  %i.bw = load i64, ptr %i.br, align 8, !alias.scope !4544, !noalias !4541, !noundef !21
  %i.bx = icmp eq i64 %i.bv, %i.bw
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hc16871019f71aecdE.exit"

bb.q:                                             ; preds = %bb.n
  %i.by = load double, ptr %i.bq, align 8, !alias.scope !4543, !noalias !4542, !noundef !21
  %i.bz = load double, ptr %i.br, align 8, !alias.scope !4544, !noalias !4541, !noundef !21
  %i.ca = fcmp oeq double %i.by, %i.bz
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hc16871019f71aecdE.exit"

bb.r:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val2.i.i2 = load i64, ptr %i.cb, align 8, !alias.scope !4539, !noalias !4540, !noundef !21 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.aw, i64 48
  %.val4.i.i4 = load i64, ptr %i.cc, align 8, !alias.scope !4540, !noalias !4539, !noundef !21
  %.not.i.i8 = icmp eq i64 %.val2.i.i2, %.val4.i.i4
  br i1 %.not.i.i8, label %bb.s, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hc16871019f71aecdE.exit"

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr i8, ptr %i.aw, i64 40
  %.val3.i.i3 = load ptr, ptr %i.cd, align 8, !alias.scope !4540, !noalias !4539, !nonnull !21, !noundef !21
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val.i.i1 = load ptr, ptr %i.ce, align 8, !alias.scope !4539, !noalias !4540, !nonnull !21, !noundef !21
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i1, ptr nonnull readonly align 1 %.val3.i.i3, i64 %.val2.i.i2), !alias.scope !4545, !noalias !4546
  %i.cf = icmp eq i32 %bcmp.i.i, 0
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hc16871019f71aecdE.exit"

bb.t:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4548)
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !4547, !noalias !4548, !nonnull !21, !noundef !21
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !4547, !noalias !4548, !noundef !21 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !4548, !noalias !4547, !nonnull !21, !noundef !21
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !4548, !noalias !4547, !noundef !21
  %.not.i.i6 = icmp eq i64 %i.cj, %i.cn
  br i1 %.not.i.i6, label %.preheader.split, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hc16871019f71aecdE.exit"

.preheader.split:                                 ; preds = %bb.t
  %.not27 = icmp eq i64 %i.cj, 0
  br i1 %.not27, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hc16871019f71aecdE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.split, %.lr.ph
  %.sroa.01.0.i.i24 = phi i64 [ %i.cr, %.lr.ph ], [ 0, %.preheader.split ] ; 3 uses
  %i.co = getelementptr inbounds nuw [72 x i8], ptr %i.ch, i64 %.sroa.01.0.i.i24
  %i.cp = getelementptr inbounds nuw [72 x i8], ptr %i.cl, i64 %.sroa.01.0.i.i24
  %i.cq = tail call fastcc noundef zeroext i1 @"_ZN65_$LT$serde_json..value..Value$u20$as$u20$core..cmp..PartialEq$GT$2eq17h2c9fe2aca7105fcaE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.co, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cp), !noalias !4549, !inline_history !4503 ; 2 uses
  %i.cr = add nuw i64 %.sroa.01.0.i.i24, 1        ; 2 uses
  %exitcond.not = icmp ne i64 %i.cr, %i.cj
  %or.cond.not = select i1 %i.cq, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hc16871019f71aecdE.exit"

bb.u:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4551)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4553)
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !4554, !noalias !4555, !noundef !21
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !4555, !noalias !4554, !noundef !21
  %.not.i.i = icmp eq i64 %i.ct, %i.cv
  br i1 %.not.i.i, label %bb.v, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hc16871019f71aecdE.exit"

bb.v:                                             ; preds = %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !4554, !noalias !4555, !nonnull !21, !noundef !21 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !4554, !noalias !4555, !noundef !21 ; 2 uses
  %.idx = mul nuw nsw i64 %i.cz, 104
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4556
  store ptr %i.ax, ptr %i.a, align 8, !noalias !4557
  %.not43 = icmp eq i64 %i.cz, 0
  br i1 %.not43, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h8e19e6e12b83adabE.exit.i, label %.lr.ph46

.lr.ph46:                                         ; preds = %.lr.ph46, %bb.v
  %.sroa.0.044 = phi ptr [ %i.dd, %.lr.ph46 ], [ %i.cx, %bb.v ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.044, i64 24
  %i.dc = call fastcc noundef zeroext i1 @"_ZN133_$LT$indexmap..map..IndexMap$LT$K$C$V1$C$S1$GT$$u20$as$u20$core..cmp..PartialEq$LT$indexmap..map..IndexMap$LT$K$C$V2$C$S2$GT$$GT$$GT$2eq28_$u7b$$u7b$closure$u7d$$u7d$17h5c5fedee5a723286E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.044, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.db), !noalias !4558, !inline_history !4513 ; 2 uses
  %.not56 = xor i1 %i.dc, true
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.044, i64 104 ; 2 uses
  %.not = icmp eq ptr %i.dd, %i.da
  %or.cond = select i1 %.not56, i1 true, i1 %.not
  br i1 %or.cond, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h8e19e6e12b83adabE.exit.i, label %.lr.ph46

_ZN4core4iter6traits8iterator8Iterator8try_fold17h8e19e6e12b83adabE.exit.i: ; preds = %.lr.ph46, %bb.v
  %.not.lcssa = phi i1 [ true, %bb.v ], [ %i.dc, %.lr.ph46 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4556
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hc16871019f71aecdE.exit"

"_ZN4core6option15Option$LT$T$GT$6map_or17hc16871019f71aecdE.exit": ; preds = %._crit_edge.i.i.i.i, %.lr.ph, %.preheader.split, %bb.b, %bb.a, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h560f2d57ef157470E.exit.i", %bb.l, %bb.j, %bb.i, %bb.m, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h8e19e6e12b83adabE.exit.i
  %.sroa.02.0.i = phi i1 [ false, %bb.u ], [ %i.bl, %bb.l ], [ false, %bb.i ], [ true, %bb.j ], [ false, %bb.m ], [ false, %bb.r ], [ false, %bb.b ], [ true, %.preheader.split ], [ false, %bb.a ], [ false, %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12get_index_of17h560f2d57ef157470E.exit.i" ], [ %.not.lcssa, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h8e19e6e12b83adabE.exit.i ], [ false, %bb.t ], [ %i.ca, %bb.q ], [ %i.bu, %bb.o ], [ %i.bx, %bb.p ], [ %i.cf, %bb.s ], [ %i.cq, %.lr.ph ], [ false, %._crit_edge.i.i.i.i ]
  ret i1 %.sroa.02.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN157_$LT$$LT$meilisearch_types..settings..RankingRuleView$u20$as$u20$serde_core..de..Deserialize$GT$..deserialize..Visitor$u20$as$u20$serde_core..de..Visitor$GT$9expecting17h5c47b4592b092aa9E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !21, !noalias !4561, !nonnull !21
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @116, i64 noundef 41), !noalias !4561, !inline_history !61
  ret i1 %i.d
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @"_ZN161_$LT$meilisearch_types..locales..LocalizedAttributesRuleView$u20$as$u20$core..convert..From$LT$milli..localized_attributes_rules..LocalizedAttributesRule$GT$$GT$4from17hcbad22e84cc5e92fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.012.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.413.0.copyload = load ptr, ptr %.sroa.413.0..sroa_idx, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.514.0.copyload = load i64, ptr %.sroa.514.0..sroa_idx, align 8 ; 4 uses
  %i.b = icmp sgt i64 %.sroa.514.0.copyload, -1
  tail call void @llvm.assume(i1 %i.b)
  %.not.i.i.i.i.i.i = icmp samesign eq i64 %.sroa.514.0.copyload, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h580ff16ebe78a67aE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i = phi i64 [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload, i64 %.sroa.0.01.i.i.i.i.i.i ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !range !62, !noalias !4577, !noundef !21
  %i.e = tail call noundef range(i8 69, -117) i8 @"_ZN128_$LT$meilisearch_types..locales..Locale$u20$as$u20$core..convert..From$LT$charabia..detection..script_language..Language$GT$$GT$4from17h1a171912e17654aeE"(i8 noundef range(i8 0, 70) %i.d)
  %i.f = add nuw nsw i64 %.sroa.0.01.i.i.i.i.i.i, 1 ; 2 uses
  store i8 %i.e, ptr %i.c, align 1, !noalias !4577
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.f, %.sroa.514.0.copyload
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h580ff16ebe78a67aE.exit, label %.lr.ph.i.i.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator7collect17h580ff16ebe78a67aE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.012.0.copyload, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.413.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.514.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN17meilisearch_types10batch_view9BatchView10from_batch17h6dfc3a611bf7b9a8E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1248 x i8]) align 8 captures(none) dereferenceable(1248) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1264) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [56 x i8], align 8                ; 11 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [56 x i8], align 8                ; 11 uses
  %i.j = alloca [168 x i8], align 8               ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca [48 x i8], align 8          ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.519.i = alloca [160 x i8], align 8       ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [72 x i8], align 8               ; 8 uses
  %i.ad = alloca [16 x i8], align 8               ; 3 uses
  %i.ae = alloca [16 x i8], align 4               ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.517 = alloca [16 x i8], align 8          ; 2 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [296 x i8], align 8              ; 12 uses
  %i.ai = alloca [336 x i8], align 8              ; 8 uses
  %i.aj = alloca [800 x i8], align 8              ; 72 uses
  %i.ak = alloca [32 x i8], align 8               ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 1256
  %i.am = load i32, ptr %i.al, align 8, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %i.ao = load i64, ptr %i.an, align 8, !range !25, !noundef !21
  %.not = icmp eq i64 %i.ao, -9223372036854775808
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 1128
  %.val = load ptr, ptr %i.ap, align 8, !nonnull !21, !noundef !21 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 1136
  %.val21 = load i64, ptr %i.aq, align 8, !noundef !21 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4700)
  %i.ar = shl i64 %.val21, 5                      ; 5 uses
  %i.as = icmp ugt i64 %.val21, 576460752303423487
  %i.at = icmp ugt i64 %i.ar, 9223372036854775800
  %or.cond.i.i.i.i.i = or i1 %i.as, %i.at
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !30

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.b
  %i.au = icmp eq i64 %i.ar, 0
  br i1 %i.au, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h32c8140634a8bd66E.exit.thread.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h32c8140634a8bd66E.exit.thread.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %i.av = icmp eq i64 %.val21, 0
  tail call void @llvm.assume(i1 %i.av)
  br label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1264da27d1c93e66E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !4701
  %i.aw = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ar, i64 noundef range(i64 1, 9) 8) #52, !noalias !4701 ; 6 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h32c8140634a8bd66E.exit.i.i"

bb.c:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1965) #57, !noalias !4702
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h32c8140634a8bd66E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val21
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h32c8140634a8bd66E.exit.i.i"
  %.sroa.013.040.i.i = phi ptr [ %i.bb, %bb.g ], [ %.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h32c8140634a8bd66E.exit.i.i" ] ; 6 uses
  %.sroa.7.038.i.i = phi i64 [ %i.bc, %bb.g ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h32c8140634a8bd66E.exit.i.i" ] ; 4 uses
  %.sroa.10.037.i.i = phi i64 [ %i.az, %bb.g ], [ %.val21, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h32c8140634a8bd66E.exit.i.i" ]
  %i.az = add nsw i64 %.sroa.10.037.i.i, -1       ; 2 uses
  %i.ba = icmp eq ptr %.sroa.013.040.i.i, %i.ay
  br i1 %i.ba, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1264da27d1c93e66E.exit", label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.013.040.i.i, i64 32
  %i.bc = add nuw nsw i64 %.sroa.7.038.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4704)
  %i.bd = load i64, ptr %.sroa.013.040.i.i, align 8, !range !25, !alias.scope !4705, !noalias !4706, !noundef !21
  %.not.i.i.i.i = icmp eq i64 %i.bd, -9223372036854775808
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.013.040.i.i, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !4705, !noalias !4706, !nonnull !21, !noundef !21 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.013.040.i.i, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !4705, !noalias !4706, !noundef !21 ; 7 uses
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bi = icmp slt i64 %i.bh, 0
  br i1 %i.bi, label %bb.f, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !30

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.bj = icmp eq i64 %i.bh, 0
  br i1 %i.bj, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !4707
  %i.bk = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bh, i64 noundef range(i64 1, 9) 1) #52, !noalias !4707 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.f, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i.i.i.i"

bb.f:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %bb.e
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ], [ 0, %bb.e ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1964) #57
          to label %.noexc.i.i unwind label %bb.h, !noalias !4702

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.bk, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %i.bf, i64 %i.bh, i1 false), !noalias !4708
  br label %bb.g

bb.g:                                             ; preds = %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i.i.i.i", %bb.d
  %.sroa.5.0.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i.i.i.i" ], [ %i.bf, %bb.d ]
  %.sroa.0.0.i12.i.i = phi i64 [ %i.bh, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i.i.i.i" ], [ -9223372036854775808, %bb.d ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.013.040.i.i, i64 24
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %.sroa.7.038.i.i ; 4 uses
  store i64 %.sroa.0.0.i12.i.i, ptr %i.bn, align 8, !noalias !4702
  %.sroa.424.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %.sroa.5.0.i.i.i, ptr %.sroa.424.0..sroa_idx.i.i, align 8, !noalias !4702
  %.sroa.525.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i64 %i.bh, ptr %.sroa.525.0..sroa_idx.i.i, align 8, !noalias !4702
  %.sroa.626.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bo = load <2 x i32>, ptr %i.bm, align 8, !alias.scope !4709, !noalias !4710
  store <2 x i32> %i.bo, ptr %.sroa.626.0..sroa_idx.i.i, align 8, !noalias !4702
  %i.bp = icmp eq i64 %i.az, 0
  br i1 %i.bp, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h1264da27d1c93e66E.exit", label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.f
  %i.bq = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4711), !noalias !4712
  %i.br = icmp eq i64 %.sroa.7.038.i.i, 0
  br i1 %i.br, label %"_ZN4core3ptr77drop_in_place$LT$alloc..vec..Vec$LT$milli..progress..ProgressStepView$GT$$GT$17ha93e4bef0b7ae49bE.exit.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %"_ZN4core3ptr54drop_in_place$LT$milli..progress..ProgressStepView$GT$17haa8da2f573573c67E.exit.i.i.i.i"
end_hunk_1
begin_hunk_2_@_ZN17meilisearch_types4keys3Key14default_search17h784f886e641ef8abE:bb.a
  store ptr %i.j, ptr %.sroa.542.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.7.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %i.s, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %.sroa.545.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 135
  store i8 1, ptr %.sroa.3.0..sroa_idx, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  ret void

bb.n:                                             ; preds = %bb.j, %bb.g
  unreachable

bb.o:                                             ; preds = %bb.d, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit22"
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit22" ], [ %i.h, %bb.d ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 22, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6043
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: nonlazybind uwtable
define void @_ZN17meilisearch_types4keys3Key23default_read_only_admin17ha75a23c5ee70a940E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 1                ; 2 uses
  %i.c = alloca [16 x i8], align 4                ; 3 uses
  call fastcc void @_ZN4time16offset_date_time14OffsetDateTime7now_utc17h9389a0b5e004fd02E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.c)
  call void @"_ZN4uuid2v428_$LT$impl$u20$uuid..Uuid$GT$6new_v417hf823a2a410a2ffe2E"(ptr noalias noundef nonnull sret([16 x i8]) align 1 captures(address) dereferenceable(16) %i.b)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !6062
  %i.d = call noundef dereferenceable_or_null(31) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 31, i64 noundef range(i64 1, 9) 1) #52, !noalias !6062 ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit"

bb.b:                                             ; preds = %bb.a
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 31, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1964) #57, !noalias !6063
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.d, ptr noundef nonnull align 1 dereferenceable(31) @151, i64 31, i1 false), !noalias !6064
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !6065
  %i.f = call noundef dereferenceable_or_null(106) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 106, i64 noundef range(i64 1, 9) 1) #52, !noalias !6065 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 106, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1964) #57
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit22": ; preds = %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h6aedac76c234aa31E.exit", %bb.e
  %.pn10 = phi { ptr, i32 } [ %i.i, %bb.e ], [ %.pn, %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h6aedac76c234aa31E.exit" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 106, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6066
  br label %bb.o

bb.e:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit22"

bb.f:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(106) %i.f, ptr noundef nonnull align 1 dereferenceable(106) @152, i64 106, i1 false), !noalias !6067
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52
  %i.j = call noundef dereferenceable_or_null(2) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 2, i64 noundef 1) #52 ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %bb.i, !prof !23

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 1, i64 noundef 2) #57
          to label %bb.n unwind label %bb.e

"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h6aedac76c234aa31E.exit": ; preds = %bb.l, %bb.h
  %.pn = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.p, %bb.l ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #52
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit22"

bb.h:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h6aedac76c234aa31E.exit"

bb.i:                                             ; preds = %bb.f
  store i8 44, ptr %i.j, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 29, ptr %i.m, align 1
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52
  %i.n = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #52 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.j, label %bb.k, !prof !23

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #57
          to label %bb.n unwind label %bb.h

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN17meilisearch_types17index_uid_pattern15IndexUidPattern3all17h894540523940bb64E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef 24, i64 noundef 8) #52
  br label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..keys..Action$GT$$GT$17h6aedac76c234aa31E.exit"

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 106, ptr %i.q, align 8
  %.sroa.532.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.f, ptr %.sroa.532.0..sroa_idx33, align 8
  %.sroa.635.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 106, ptr %.sroa.635.0..sroa_idx36, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 31, ptr %i.r, align 8
  %.sroa.5.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx24, align 8
  %.sroa.6.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 31, ptr %.sroa.6.0..sroa_idx26, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 1 dereferenceable(16) %i.b, i64 16, i1 false)
  store i64 2, ptr %0, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.542.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %.sroa.7.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %i.t, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.n, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 1, ptr %.sroa.545.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 135
  store i8 1, ptr %.sroa.3.0..sroa_idx, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  ret void

bb.n:                                             ; preds = %bb.j, %bb.g
  unreachable

bb.o:                                             ; preds = %bb.d, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit22"
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h872ea489019ac5c6E.exit22" ], [ %i.h, %bb.d ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 31, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6068
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef range(i8 0, 4) i8 @_ZN17meilisearch_types4keys6Action11index_scope17h3b12d05078f30f8aE(i8 %.0.val) unnamed_addr #2 {
switch.lookup:
  %i.a = zext nneg i8 %.0.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN17meilisearch_types4keys6Action11index_scope17h3b12d05078f30f8aE, i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  ret i8 %switch.load
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN17meilisearch_types4keys6Action16deny_index_scope17h8ea621d4b1f99926E(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0) unnamed_addr #12 {
bb.a:
  %.val = load i8, ptr %0, align 1, !range !71, !noundef !21
  %i.a = tail call fastcc noundef i8 @_ZN17meilisearch_types4keys6Action11index_scope17h3b12d05078f30f8aE(i8 %.val)
  %i.b = icmp eq i8 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN17meilisearch_types4keys6Action37route_handler_is_checking_index_scope17h620c6125def8f16eE(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0) unnamed_addr #12 {
bb.a:
  %.val = load i8, ptr %0, align 1, !range !71, !noundef !21
  %i.a = tail call fastcc noundef i8 @_ZN17meilisearch_types4keys6Action11index_scope17h3b12d05078f30f8aE(i8 %.val)
  %i.b = icmp eq i8 %i.a, 1
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef range(i8 0, 59) i8 @_ZN17meilisearch_types4keys6Action9from_repr17h0e1a847c957b0ec1E(i8 noundef %0) unnamed_addr #2 {
switch.lookup:
  %spec.select = tail call i8 @llvm.umin.i8(i8 %0, i8 58)
  ret i8 %spec.select
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN17meilisearch_types5error105_$LT$impl$u20$core..fmt..Display$u20$for$u20$meilisearch_types..error..deserr_codes..InvalidSimilarId$GT$3fmt17h39a9b632aed2d788E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !21, !noalias !6071, !nonnull !21
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @153, i64 noundef 210), !noalias !6071, !inline_history !61
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN17meilisearch_types5error106_$LT$impl$u20$core..fmt..Display$u20$for$u20$meilisearch_types..error..deserr_codes..InvalidNetworkUrl$GT$3fmt17h5472012286d8a193E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !21, !noalias !6074, !nonnull !21
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @154, i64 noundef 49), !noalias !6074, !inline_history !61
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN17meilisearch_types5error113_$LT$impl$u20$core..fmt..Display$u20$for$u20$meilisearch_types..error..deserr_codes..InvalidMultiSearchWeight$GT$3fmt17h78867e2745f949acE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !21, !noalias !6077, !nonnull !21
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @155, i64 noundef 69), !noalias !6077, !inline_history !61
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN17meilisearch_types5error113_$LT$impl$u20$core..fmt..Display$u20$for$u20$meilisearch_types..error..deserr_codes..InvalidSearchPersonalize$GT$3fmt17h2bd791646b3aa80eE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !21, !noalias !6080, !nonnull !21
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @156, i64 noundef 88), !noalias !6080, !inline_history !61
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN17meilisearch_types5error115_$LT$impl$u20$core..fmt..Display$u20$for$u20$meilisearch_types..error..deserr_codes..InvalidNetworkSearchApiKey$GT$3fmt17h706b1981db53eab7E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !21, !noalias !6083, !nonnull !21
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @157, i64 noundef 58), !noalias !6083, !inline_history !61
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN17meilisearch_types5error115_$LT$impl$u20$core..fmt..Display$u20$for$u20$meilisearch_types..error..deserr_codes..InvalidSearchSemanticRatio$GT$3fmt17h6092b1b938ca8971E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !21, !noalias !6086, !nonnull !21
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @158, i64 noundef 82), !noalias !6086, !inline_history !61
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN17meilisearch_types5error123_$LT$impl$u20$core..fmt..Display$u20$for$u20$meilisearch_types..error..deserr_codes..InvalidSearchRankingScoreThreshold$GT$3fmt17h7278510052d2d5fcE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !21, !noalias !6089, !nonnull !21
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @159, i64 noundef 90), !noalias !6089, !inline_history !61
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN17meilisearch_types5error124_$LT$impl$u20$core..fmt..Display$u20$for$u20$meilisearch_types..error..deserr_codes..InvalidSearchPersonalizeUserContext$GT$3fmt17h0eefb3a56a27ecd8E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !21, !noalias !6092, !nonnull !21
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @160, i64 noundef 57), !noalias !6092, !inline_history !61
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN17meilisearch_types5error124_$LT$impl$u20$core..fmt..Display$u20$for$u20$meilisearch_types..error..deserr_codes..InvalidSimilarRankingScoreThreshold$GT$3fmt17h9600c4339b0bff4dE"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6097)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.a, align 8, !alias.scope !6097, !nonnull !21, !noundef !21
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !6097, !nonnull !21, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !21, !noalias !6098, !nonnull !21
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @159, i64 noundef 90), !noalias !6098, !inline_history !6099
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_ZN17meilisearch_types5error13ResponseError8from_msg17h9ea4b404eeb719b7E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1, i16 noundef range(i16 0, 289) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [2 x i8], align 2                 ; 5 uses
  store i16 %2, ptr %i.g, align 2
  %i.h = icmp eq i16 %2, 181
  %.sroa.0.0.copyload.pre24 = load i64, ptr %1, align 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %i.h, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.sroa.5.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload.pre = load ptr, ptr %.sroa.5.0..sroa_idx.phi.trans.insert, align 8
  %.sroa.6.0.copyload.pre = load i64, ptr %i.i, align 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6128)
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !6129, !noundef !21 ; 3 uses
  %i.k = sub i64 %.sroa.0.0.copyload.pre24, %i.j
  %i.l = icmp ult i64 %i.k, 124
  br i1 %i.l, label %bb.c, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha3e07372685a50daE.exit", !prof !23

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.j, i64 noundef 124, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.c
  %.pre.i.i = load i64, ptr %i.i, align 8, !alias.scope !6130
  %.sroa.0.0.copyload.pre.pre = load i64, ptr %1, align 8
  br label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha3e07372685a50daE.exit"

"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha3e07372685a50daE.exit": ; preds = %bb.b, %.noexc
  %.sroa.0.0.copyload.pre = phi i64 [ %.sroa.0.0.copyload.pre24, %bb.b ], [ %.sroa.0.0.copyload.pre.pre, %.noexc ]
  %i.m = phi i64 [ %i.j, %bb.b ], [ %.pre.i.i, %.noexc ] ; 3 uses
  %i.n = icmp sgt i64 %i.m, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !6130, !nonnull !21, !noundef !21 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(124) %i.q, ptr noundef nonnull readonly align 1 dereferenceable(124) @161, i64 124, i1 false), !noalias !6130
  %i.r = add nuw i64 %i.m, 124
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha3e07372685a50daE.exit"
  %.sroa.6.0.copyload = phi i64 [ %i.r, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha3e07372685a50daE.exit" ], [ %.sroa.6.0.copyload.pre, %._crit_edge ]
  %.sroa.5.0.copyload = phi ptr [ %i.p, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha3e07372685a50daE.exit" ], [ %.sroa.5.0.copyload.pre, %._crit_edge ] ; 3 uses
  %.sroa.0.0.copyload = phi i64 [ %.sroa.0.0.copyload.pre, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17ha3e07372685a50daE.exit" ], [ %.sroa.0.0.copyload.pre24, %._crit_edge ] ; 3 uses
  %i.s = call noundef i16 @_ZN17meilisearch_types5error4Code4http17h2fc761349c00cb09E(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_ZN17meilisearch_types5error4Code4name17h962cb198e3b00123E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.g)
          to label %bb.g unwind label %bb.f

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit7": ; preds = %bb.h, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit11", %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.u, %bb.f ], [ %.pn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit11" ], [ %.pn, %bb.h ] ; 2 uses
  %i.t = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.t, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit14", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit7"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6131
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit14"

bb.f:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit7"

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_ZN17meilisearch_types5error4Code5type_17hfae8036072efb29cE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.g)
          to label %bb.j unwind label %bb.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit11": ; preds = %bb.p, %.body, %bb.i
  %.pn = phi { ptr, i32 } [ %i.x, %bb.i ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.p ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6132)
  %.val.i5 = load i64, ptr %i.f, align 8, !alias.scope !6132 ; 2 uses
  %i.v = icmp eq i64 %.val.i5, 0
  br i1 %i.v, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit7", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit11"
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i6 = load ptr, ptr %i.w, align 8, !alias.scope !6132, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i6, i64 noundef %.val.i5, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6132
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit7"

bb.i:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit11"

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6133
  invoke void @_ZN17meilisearch_types5error4Code4name17h962cb198e3b00123E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.g)
          to label %.noexc8 unwind label %bb.o

.noexc8:                                          ; preds = %bb.j
  store ptr %i.b, ptr %i.c, align 8, !noalias !6133
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !6133
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6134
  store ptr @167, ptr %i.a, align 8, !noalias !6135
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6135
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !6135
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6135
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !6135
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.m unwind label %bb.k, !noalias !6136

bb.k:                                             ; preds = %.noexc8
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6137)
  %.val.i.i = load i64, ptr %i.b, align 8, !alias.scope !6137, !noalias !6133 ; 2 uses
  %i.z = icmp eq i64 %.val.i.i, 0
  br i1 %i.z, label %.body, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !6137, !noalias !6133, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6138
  br label %.body

bb.m:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6134
  call void @llvm.experimental.noalias.scope.decl(metadata !6139)
  %.val.i7.i = load i64, ptr %i.b, align 8, !alias.scope !6139, !noalias !6133 ; 2 uses
  %i.ab = icmp eq i64 %.val.i7.i, 0
  br i1 %i.ab, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i8.i = load ptr, ptr %i.ac, align 8, !alias.scope !6139, !noalias !6133, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i8.i, i64 noundef %.val.i7.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6140
  br label %bb.q

bb.o:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.l, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.o ], [ %i.y, %bb.l ], [ %i.y, %bb.k ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6141)
  %.val.i9 = load i64, ptr %i.e, align 8, !alias.scope !6141 ; 2 uses
  %i.ae = icmp eq i64 %.val.i9, 0
  br i1 %i.ae, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit11", label %bb.p

bb.p:                                             ; preds = %.body
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i10 = load ptr, ptr %i.af, align 8, !alias.scope !6141, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i10, i64 noundef %.val.i9, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6141
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit11"

bb.q:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6133
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i16 %i.s, ptr %i.ag, align 8
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.5.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx16, align 8
  %.sroa.6.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx18, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit14": ; preds = %bb.s, %bb.r, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit7", %bb.e
  %.pn.pn.pn22 = phi { ptr, i32 } [ %.pn.pn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hfb8d17e84375b72dE.exit7" ], [ %.pn.pn, %bb.e ], [ %i.ak, %bb.r ], [ %i.ak, %bb.s ]
  resume { ptr, i32 } %.pn.pn.pn22

bb.r:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h296464272a8f810bE":bb.a
bb.dy:                                            ; preds = %bb.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !24156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24156
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dw, %bb.dv
  %i.hh = getelementptr inbounds nuw i8, ptr %.0.val, i64 753
  %i.hi = load i8, ptr %i.hh, align 1, !range !38, !alias.scope !24157, !noalias !24158, !noundef !21 ; 3 uses
  %i.hj = icmp samesign ugt i8 %i.hi, 1
  %i.hk = zext nneg i8 %i.hi to i64
  %i.hl = add nsw i64 %i.hk, -1
  %i.hm = select i1 %i.hj, i64 %i.hl, i64 0
  switch i64 %i.hm, label %bb.c [
    i64 0, label %bb.ec
    i64 1, label %bb.ea
    i64 2, label %bb.eb
  ]

bb.ea:                                            ; preds = %bb.dz
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %bb.dz
  %.sroa.04.0.i.i = phi i8 [ 3, %bb.eb ], [ 2, %bb.ea ], [ %i.hi, %bb.dz ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.val, i64 754
  %i.ho = load i8, ptr %i.hn, align 2, !range !38, !alias.scope !24157, !noalias !24158, !noundef !21 ; 3 uses
  %i.hp = icmp samesign ugt i8 %i.ho, 1
  %i.hq = zext nneg i8 %i.ho to i64
  %i.hr = add nsw i64 %i.hq, -1
  %i.hs = select i1 %i.hp, i64 %i.hr, i64 0
  switch i64 %i.hs, label %bb.c [
    i64 0, label %bb.ef
    i64 1, label %bb.ed
    i64 2, label %bb.ee
  ]

bb.ed:                                            ; preds = %bb.ec
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed, %bb.ec
  %.sroa.05.0.i.i = phi i8 [ 3, %bb.ee ], [ 2, %bb.ed ], [ %i.ho, %bb.ec ]
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.val, i64 376 ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !range !55, !alias.scope !24157, !noalias !24158, !noundef !21
  %i.hv = call i64 @llvm.usub.sat.i64(i64 %i.hu, i64 2)
  switch i64 %i.hv, label %default.unreachable [
    i64 0, label %bb.eg
    i64 1, label %bb.en
    i64 2, label %bb.eh
  ]

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24156
  invoke fastcc void @"_ZN72_$LT$milli..update..chat..ChatSettings$u20$as$u20$core..clone..Clone$GT$5clone17h3ef883dd55b5e49fE"(ptr noalias noundef align 8 captures(address) dereferenceable(208) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.ht)
          to label %bb.ek unwind label %bb.ei, !noalias !24158

bb.eh:                                            ; preds = %bb.ef
  br label %bb.en

bb.ei:                                            ; preds = %bb.eg
  %i.hw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hx = load i64, ptr %i.r, align 8, !range !50, !alias.scope !24202, !noalias !24156, !noundef !21
  %i.hy = icmp sgt i64 %i.hx, -1
  br i1 %i.hy, label %bb.ej, label %"_ZN4core3ptr139drop_in_place$LT$milli..update..settings..Setting$LT$alloc..vec..Vec$LT$meilisearch_types..locales..LocalizedAttributesRuleView$GT$$GT$$GT$17h18fbfbce0e1039fbE.exit.i.i"

bb.ej:                                            ; preds = %bb.ei
  call fastcc void @"_ZN4core3ptr99drop_in_place$LT$alloc..vec..Vec$LT$meilisearch_types..locales..LocalizedAttributesRuleView$GT$$GT$17h811ba24eefb2073cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.r), !noalias !24158
  br label %"_ZN4core3ptr139drop_in_place$LT$milli..update..settings..Setting$LT$alloc..vec..Vec$LT$meilisearch_types..locales..LocalizedAttributesRuleView$GT$$GT$$GT$17h18fbfbce0e1039fbE.exit.i.i"

bb.ek:                                            ; preds = %bb.eg
  %.sroa.06.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !24156
  %.sroa.68.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.68.i.i, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.68.0..sroa_idx.i.i, i64 200, i1 false), !noalias !24154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24156
  br label %bb.en

bb.el:                                            ; preds = %"_ZN4core3ptr139drop_in_place$LT$milli..update..settings..Setting$LT$alloc..vec..Vec$LT$meilisearch_types..locales..LocalizedAttributesRuleView$GT$$GT$$GT$17h18fbfbce0e1039fbE.exit.i.i", %bb.di, %bb.dd, %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h4a483978f1404473E.exit.i.i", %bb.cc, %bb.bs, %bb.bk, %bb.bc, %bb.ae
  %i.hz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !24158
  unreachable

bb.em:                                            ; preds = %bb.d
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.en:                                            ; preds = %bb.ek, %bb.eh, %bb.ef
  %.sroa.06.0.i.i = phi i64 [ %.sroa.06.0.copyload.i.i, %bb.ek ], [ 4, %bb.eh ], [ 3, %bb.ef ]
  %i.ib = icmp eq i64 %i.gw, 0
  %.sroa.63.0.i.i = select i1 %i.ib, i64 %i.gy, i64 undef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.i, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !24157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.19.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !noalias !24157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.20.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !noalias !24157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false), !noalias !24157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !24157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.22.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !noalias !24157
  %.sroa.0.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.32..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !24157
  %.sroa.0.64..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.64..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !24157
  %.sroa.0.96..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.96..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false), !noalias !24157
  %.sroa.0.128..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.128..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false), !noalias !24157
  %.sroa.0.160..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.160..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !24157
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.12.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %i.u, i64 72, i1 false), !noalias !24154
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.t, i64 48, i1 false), !noalias !24154
  %.sroa.0.192..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.192..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !24157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.26.i, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !24157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !24156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !24156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !24156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !24156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !24156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !24156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !24156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !24156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !24156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !24156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !24156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !24156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !24156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !24156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !24156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.ag, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.0.i, i64 224, i1 false), !noalias !24154
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 224
  store i64 %i.gw, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !24154
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 232
  store i64 %.sroa.63.0.i.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !24154
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 360
  store i64 %.sroa.01.0.i.i, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !24154
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 368
  store i64 %.sroa.6.0.i.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !24154
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 376
  store i64 %.sroa.06.0.i.i, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !24154
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.17.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.68.i.i, i64 200, i1 false), !noalias !24154
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.i, i64 24, i1 false), !noalias !24154
  %.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.19.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.19.i, i64 24, i1 false), !noalias !24154
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.20.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.20.i, i64 24, i1 false), !noalias !24154
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21.i, i64 24, i1 false), !noalias !24154
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.22.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.22.i, i64 24, i1 false), !noalias !24154
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 704
  store i64 %.sroa.0.085.i.i, ptr %.sroa.23.0..sroa_idx.i, align 8, !noalias !24154
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 712
  store ptr %.sroa.7.0.i.i, ptr %.sroa.24.0..sroa_idx.i, align 8, !noalias !24154
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 720
  store i64 %.sroa.8.0.i.i, ptr %.sroa.25.0..sroa_idx.i, align 8, !noalias !24154
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 728
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.26.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.26.i, i64 24, i1 false), !noalias !24154
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 752
  store i8 %.sroa.0.0.i.i, ptr %.sroa.27.0..sroa_idx.i, align 8, !noalias !24154
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 753
  store i8 %.sroa.04.0.i.i, ptr %.sroa.28.0..sroa_idx.i, align 1, !noalias !24154
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 754
  store i8 %.sroa.05.0.i.i, ptr %.sroa.29.0..sroa_idx.i, align 2, !noalias !24154
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.21.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.22.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68.i.i)
  ret ptr %i.ag

bb.eo:                                            ; preds = %bb.em, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ia, %bb.em ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i.i, %bb.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 760, i64 noundef 8) #52
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc280949cfd32142E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1186, i64 noundef 11)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN69_$LT$meilisearch_types..tasks..Kind$u20$as$u20$core..fmt..Display$GT$3fmt17h354407912aded25eE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !77, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val35 = load ptr, ptr %i.b, align 8, !nonnull !21, !noundef !21
  %.val34 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21 ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val35, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !21, !noalias !21, !nonnull !21 ; 18 uses
  switch i8 %i.a, label %default.unreachable223 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
  ]

default.unreachable223:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @772, i64 noundef 24), !noalias !24239, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @773, i64 noundef 15), !noalias !24240, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @774, i64 noundef 16), !noalias !24241, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @775, i64 noundef 14), !noalias !24242, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.f:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @776, i64 noundef 13), !noalias !24243, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.g:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @777, i64 noundef 13), !noalias !24244, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.h:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @778, i64 noundef 11), !noalias !24245, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.i:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @779, i64 noundef 9), !noalias !24246, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.j:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @780, i64 noundef 15), !noalias !24247, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.k:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @781, i64 noundef 12), !noalias !24248, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.l:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @782, i64 noundef 12), !noalias !24249, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.m:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @783, i64 noundef 16), !noalias !24250, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.n:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @784, i64 noundef 6), !noalias !24251, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.o:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @785, i64 noundef 15), !noalias !24252, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.p:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @786, i64 noundef 15), !noalias !24253, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.q:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @787, i64 noundef 21), !noalias !24254, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.r:                                             ; preds = %bb.a
  %i.u = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @788, i64 noundef 9), !noalias !24255, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.s:                                             ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val34, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @789, i64 noundef 8), !noalias !24256, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.d ], [ %i.f, %bb.c ], [ %i.v, %bb.s ], [ %i.u, %bb.r ], [ %i.t, %bb.q ], [ %i.s, %bb.p ], [ %i.r, %bb.o ], [ %i.q, %bb.n ], [ %i.p, %bb.m ], [ %i.o, %bb.l ], [ %i.n, %bb.k ], [ %i.m, %bb.j ], [ %i.l, %bb.i ], [ %i.k, %bb.h ], [ %i.j, %bb.g ], [ %i.i, %bb.f ], [ %i.h, %bb.e ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN69_$LT$meilisearch_types..tasks..Status$u20$as$u20$utoipa..ToSchema$GT$7schemas17h7eac83a1dad1bd26E"(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN69_$LT$utoipa..openapi..schema..AllOf$u20$as$u20$core..clone..Clone$GT$5clone17h72076abea7f9af2fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(408) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(408) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [96 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [40 x i8], align 8            ; 4 uses
  %i.g = alloca [96 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [72 x i8], align 8                ; 7 uses
  %i.j = alloca [72 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24286)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !24286, !noalias !24287, !nonnull !21, !noundef !21
  %i.o = load i64, ptr %i.l, align 8, !alias.scope !24286, !noalias !24287, !noundef !21
  call fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h5d137b830571aa82E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.n, i64 noundef %i.o), !noalias !24286, !inline_history !15
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24288)
  %i.q = load i64, ptr %i.p, align 8, !range !24, !alias.scope !24288, !noalias !24289, !noundef !21 ; 3 uses
  %i.r = icmp ne i64 %i.q, -9223372036854775807
  tail call void @llvm.assume(i1 %i.r)
  %i.s = xor i64 %i.q, -9223372036854775808
  %i.t = icmp slt i64 %i.q, 0
  %i.u = select i1 %i.t, i64 %i.s, i64 1
  switch i64 %i.u, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %"_ZN74_$LT$utoipa..openapi..schema..SchemaType$u20$as$u20$core..clone..Clone$GT$5clone17h13e9da2c31f3ce33E.exit"
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.w = load i8, ptr %i.v, align 8, !range !57, !alias.scope !24288, !noalias !24289, !noundef !21
  %.sroa.7.0.insert.ext = zext nneg i8 %i.w to i64
  %i.x = inttoptr i64 %.sroa.7.0.insert.ext to ptr
  br label %"_ZN74_$LT$utoipa..openapi..schema..SchemaType$u20$as$u20$core..clone..Clone$GT$5clone17h13e9da2c31f3ce33E.exit"

bb.d:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val.i = load ptr, ptr %i.y, align 8, !alias.scope !24288, !noalias !24289, !nonnull !21, !noundef !21 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val1.i = load i64, ptr %i.z, align 8, !alias.scope !24288, !noalias !24289, !noundef !21 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24290)
  %i.aa = icmp slt i64 %.val1.i, 0
  br i1 %i.aa, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !30

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ab = icmp eq i64 %.val1.i, 0
  br i1 %i.ab, label %"_ZN74_$LT$utoipa..openapi..schema..SchemaType$u20$as$u20$core..clone..Clone$GT$5clone17h13e9da2c31f3ce33E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !24291
  %i.ac = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val1.i, i64 noundef range(i64 1, 9) 1) #52, !noalias !24291 ; 5 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.e, label %.lr.ph.preheader.i.i.i

bb.e:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i", %bb.d
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i" ], [ 0, %bb.d ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.val1.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1965) #57
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.e
  unreachable

.lr.ph.preheader.i.i.i:                           ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i"
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val1.i
  %i.af = add nsw i64 %.val1.i, -1
  %i.ag = tail call i64 @llvm.umin.i64(i64 %.val1.i, i64 %i.af) ; 2 uses
  %min.iters.check = icmp ult i64 %i.ag, 32
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %i.ah = add nuw i64 %i.ag, 1                    ; 2 uses
  %i.ai = and i64 %i.ah, 31                       ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  %i.ak = select i1 %i.aj, i64 32, i64 %i.ai
  %n.vec = sub i64 %i.ah, %i.ak                   ; 4 uses
  %i.al = getelementptr i8, ptr %.val.i, i64 %n.vec
  %i.am = sub i64 %.val1.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_3
begin_hunk_4_@"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17he1f327bdbe138d2aE":bb.a
  %.sroa.011.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i11 = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.j = or disjoint i64 %.sroa.0.0.i11, 1
  %i.k = icmp ult i64 %i.j, %.sroa.0.0.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.0.0.i11
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !26108
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.0.0.i11, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.011.0.i
  %i.q = or disjoint i64 %.sroa.0.0.i11, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.011.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.011.0.i, %bb.d ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.0.0.i11, %bb.d ] ; 3 uses
  %i.r = icmp ult i64 %.sroa.0.1.i, %.sroa.0.0.i
  br i1 %i.r, label %bb.g, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !26108, !noundef !21
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.0.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.011.1.i
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit: ; preds = %bb.f, %bb.g
  %.sroa.011.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.011.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.011.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !21
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub i64 %2, %.sroa.0.0                  ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted21 = load i64, ptr %i.aj, align 8
  %.promoted22 = load i64, ptr %i.ak, align 8, !alias.scope !26109
  %.promoted24 = load i64, ptr %i.al, align 8, !alias.scope !26109
  br label %bb.q

bb.i:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !21
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !26110, !noundef !21
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !26110, !noundef !21 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !26110, !noundef !21
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !26110
  %i.bf = tail call i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !26110
  %i.bh = tail call i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !26110
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !26109
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !26109
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.04.0.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0.lcssa
  %.sroa.014.0.copyload.i18 = load i32, ptr %i.bl, align 1, !alias.scope !26111
  %i.bm = zext i32 %.sroa.014.0.copyload.i18 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.011.0.i12 = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %.sroa.0.0.i13 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %i.bn = or disjoint i64 %.sroa.0.0.i13, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.04.0.lcssa
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.0.0.i13
  %.sroa.015.0.copyload.i17 = load i16, ptr %i.bq, align 1, !alias.scope !26111
  %i.br = zext i16 %.sroa.015.0.copyload.i17 to i64
  %i.bs = shl nuw nsw i64 %.sroa.0.0.i13, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.011.0.i12
  %i.bv = or disjoint i64 %.sroa.0.0.i13, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.011.1.i14 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.011.0.i12, %bb.m ] ; 2 uses
  %.sroa.0.1.i15 = phi i64 [ %i.bv, %bb.n ], [ %.sroa.0.0.i13, %bb.m ] ; 3 uses
  %i.bw = icmp samesign ult i64 %.sroa.0.1.i15, %i.ag
  br i1 %i.bw, label %bb.p, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.0.1.i15, %.sroa.04.0.lcssa ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !26111, !noundef !21
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.0.1.i15, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.011.1.i14
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19: ; preds = %bb.o, %bb.p
  %.sroa.011.2.i16 = phi i64 [ %i.ce, %bb.p ], [ %.sroa.011.1.i14, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.011.2.i16, ptr %i.cf, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cg = phi i64 [ %.promoted24, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted22, %.lr.ph ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted21, %.lr.ph ], [ %i.cy, %bb.q ]
  %.sroa.04.020 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.020
  %.sroa.08.0.copyload = load i64, ptr %i.ck, align 1 ; 2 uses
  %i.cl = xor i64 %i.ci, %.sroa.08.0.copyload     ; 3 uses
  %i.cm = add i64 %i.ch, %i.cj                    ; 3 uses
  %i.cn = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.co = tail call i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.08.0.copyload     ; 2 uses
  %i.db = add nuw i64 %.sroa.04.020, 8            ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19, %bb.j
  %storemerge = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN71_$LT$meilisearch_types..locales..Locale$u20$as$u20$utoipa..ToSchema$GT$7schemas17hf2d1d97a908e0598E"(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN71_$LT$meilisearch_types..tasks..Status$u20$as$u20$core..fmt..Display$GT$3fmt17h16c5ab557c5eebc2E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !78, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9 = load ptr, ptr %i.b, align 8, !nonnull !21, !noundef !21
  %.val8 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val9, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !21, !noalias !21, !nonnull !21 ; 5 uses
  switch i8 %i.a, label %default.unreachable54 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable54:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @791, i64 noundef 8), !noalias !26122, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @792, i64 noundef 10), !noalias !26123, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @793, i64 noundef 9), !noalias !26124, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @794, i64 noundef 6), !noalias !26125, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.f:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @795, i64 noundef 8), !noalias !26126, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.d ], [ %i.f, %bb.c ], [ %i.i, %bb.f ], [ %i.h, %bb.e ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h1b60d320069b24beE"(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !21, !nonnull !21
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h321838367696420fE"(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !21, !nonnull !21
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h48bdc67bf28444c1E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !21, !nonnull !21
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef align 1 %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h9354bcae05d9a314E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !21, !nonnull !21
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef align 1 %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN72_$LT$meilisearch_types..error..ErrorType$u20$as$u20$utoipa..ToSchema$GT$7schemas17h55b707d4854c6cc0E"(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN72_$LT$meilisearch_types..tasks..Details$u20$as$u20$core..clone..Clone$GT$5clone17h62b3451881a95aadE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [168 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 3 uses
  %i.j = alloca [192 x i8], align 8               ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.53 = alloca [16 x i8], align 8           ; 4 uses
  %i.p = load i64, ptr %1, align 8, !range !54, !noundef !21 ; 3 uses
  %i.q = add nsw i64 %i.p, -4
  %i.r = icmp samesign ugt i64 %i.p, 3
  %i.s = select i1 %i.r, i64 %i.q, i64 15
  switch i64 %i.s, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i64, ptr %i.t, align 8, !noundef !21
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !32, !noundef !21 ; 2 uses
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i64, ptr %i.y, align 8
  %.sroa.5.0 = select i1 %i.x, i64 %i.z, i64 undef
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.u, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0, ptr %i.ac, align 8
  store i64 4, ptr %0, align 8
  br label %bb.x

bb.d:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val59 = load ptr, ptr %i.ad, align 8
  %i.ae = tail call fastcc noundef nonnull align 8 ptr @"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h296464272a8f810bE"(ptr %.val59)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8
  store i64 5, ptr %0, align 8
  br label %bb.x

bb.e:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !25, !noundef !21
  %.not46 = icmp eq i64 %i.ah, -9223372036854775808
  br i1 %.not46, label %bb.z, label %bb.y

bb.f:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !21
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !32, !noundef !21 ; 2 uses
  %i.am = trunc nuw i64 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i64, ptr %i.an, align 8
  %.sroa.56.0 = select i1 %i.am, i64 %i.ao, i64 undef
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.aj, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.al, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.56.0, ptr %i.ar, align 8
  store i64 7, ptr %0, align 8
  br label %bb.x

bb.g:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1240)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !32, !noundef !21 ; 2 uses
  %i.aw = trunc nuw i64 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load i64, ptr %i.ax, align 8
  %.sroa.58.0 = select i1 %i.aw, i64 %i.ay, i64 undef
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.av, ptr %i.az, align 8
end_hunk_4
begin_hunk_5_@"_ZN74_$LT$meilisearch_types..batches..Batch$u20$as$u20$core..cmp..PartialEq$GT$2eq17h362628bbfac353a9E":bb.a
  %i.xx = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.xx, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hab504eb41f85580aE.exit.i.i.i", label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21"

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hab504eb41f85580aE.exit.i.i.i": ; preds = %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i.i.i"
  %.val7.i.i.i.i.i = load i32, ptr %i.vt, align 4, !noalias !26516, !noundef !21
  %.val8.i.i.i.i.i = load i32, ptr %i.xs, align 4, !noalias !26516, !noundef !21
  %.not.i.i138.i = icmp eq i32 %.val7.i.i.i.i.i, %.val8.i.i.i.i.i
  br i1 %.not.i.i138.i, label %bb.ek, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21"

"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h726b93e24fe8c5aaE.exit.i": ; preds = %bb.ek, %.loopexit85.i111.i, %.preheader.i77.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26519)
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.xz = load i64, ptr %i.xy, align 8, !alias.scope !26520, !noalias !26521, !noundef !21
  %i.ya = getelementptr inbounds nuw i8, ptr %1, i64 848
  %i.yb = load i64, ptr %i.ya, align 8, !alias.scope !26521, !noalias !26520, !noundef !21
  %.not.i149.i = icmp eq i64 %i.xz, %i.yb
  br i1 %.not.i149.i, label %bb.fb, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21"

bb.fb:                                            ; preds = %"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h726b93e24fe8c5aaE.exit.i"
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.yd = load ptr, ptr %i.yc, align 8, !alias.scope !26520, !noalias !26521, !nonnull !21, !noundef !21 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.yf = load i64, ptr %i.ye, align 8, !alias.scope !26520, !noalias !26521, !noundef !21 ; 2 uses
  %.idx = mul nuw nsw i64 %i.yf, 104
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yd, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26522
  store ptr %i.jv, ptr %i.a, align 8, !noalias !26523
  %.not.not.not.i.not.i.i174 = icmp eq i64 %i.yf, 0
  br i1 %.not.not.not.i.not.i.i174, label %._crit_edge, label %.lr.ph175

bb.fc:                                            ; preds = %.lr.ph175
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yi, i64 104 ; 2 uses
  %.not.not.not.i.not.i.i = icmp eq ptr %i.yh, %i.yg
  br i1 %.not.not.not.i.not.i.i, label %._crit_edge, label %.lr.ph175

.lr.ph175:                                        ; preds = %bb.fb, %bb.fc
  %i.yi = phi ptr [ %i.yh, %bb.fc ], [ %i.yd, %bb.fb ] ; 3 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 24
  %i.yk = call fastcc noundef zeroext i1 @"_ZN133_$LT$indexmap..map..IndexMap$LT$K$C$V1$C$S1$GT$$u20$as$u20$core..cmp..PartialEq$LT$indexmap..map..IndexMap$LT$K$C$V2$C$S2$GT$$GT$$GT$2eq28_$u7b$$u7b$closure$u7d$$u7d$17h5c5fedee5a723286E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.yi, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.yj), !noalias !26524, !inline_history !26429
  br i1 %i.yk, label %bb.fc, label %"_ZN133_$LT$indexmap..map..IndexMap$LT$K$C$V1$C$S1$GT$$u20$as$u20$core..cmp..PartialEq$LT$indexmap..map..IndexMap$LT$K$C$V2$C$S2$GT$$GT$$GT$2eq17hda5d350727ae18dbE.exit.i"

"_ZN133_$LT$indexmap..map..IndexMap$LT$K$C$V1$C$S1$GT$$u20$as$u20$core..cmp..PartialEq$LT$indexmap..map..IndexMap$LT$K$C$V2$C$S2$GT$$GT$$GT$2eq17hda5d350727ae18dbE.exit.i": ; preds = %.lr.ph175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26522
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21"

._crit_edge:                                      ; preds = %bb.fc, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26522
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %i.ym = load i64, ptr %i.yl, align 8, !range !25, !alias.scope !26449, !noalias !26450, !noundef !21
  %.not.i16 = icmp eq i64 %i.ym, -9223372036854775808
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 944 ; 2 uses
  %i.yo = load i64, ptr %i.yn, align 8, !range !25, !alias.scope !26450, !noalias !26449, !noundef !21
  %i.yp = icmp eq i64 %i.yo, -9223372036854775808 ; 2 uses
  br i1 %.not.i16, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %._crit_edge
  br i1 %i.yp, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21", label %.split.i17

bb.fe:                                            ; preds = %._crit_edge
  br i1 %i.yp, label %"_ZN79_$LT$meilisearch_types..batches..BatchStats$u20$as$u20$core..cmp..PartialEq$GT$2eq17h086cb793783c78f5E.exit", label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21"

.split.i17:                                       ; preds = %bb.fd
  %i.yq = tail call fastcc noundef zeroext i1 @"_ZN133_$LT$indexmap..map..IndexMap$LT$K$C$V1$C$S1$GT$$u20$as$u20$core..cmp..PartialEq$LT$indexmap..map..IndexMap$LT$K$C$V2$C$S2$GT$$GT$$GT$2eq17hda5d350727ae18dbE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.yl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.yn)
  br i1 %i.yq, label %"_ZN79_$LT$meilisearch_types..batches..BatchStats$u20$as$u20$core..cmp..PartialEq$GT$2eq17h086cb793783c78f5E.exit", label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21"

"_ZN79_$LT$meilisearch_types..batches..BatchStats$u20$as$u20$core..cmp..PartialEq$GT$2eq17h086cb793783c78f5E.exit": ; preds = %bb.fe, %.split.i17
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.ys = getelementptr inbounds nuw i8, ptr %1, i64 872
  %i.yt = tail call fastcc noundef zeroext i1 @"_ZN133_$LT$indexmap..map..IndexMap$LT$K$C$V1$C$S1$GT$$u20$as$u20$core..cmp..PartialEq$LT$indexmap..map..IndexMap$LT$K$C$V2$C$S2$GT$$GT$$GT$2eq17hda5d350727ae18dbE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.yr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ys)
  br i1 %i.yt, label %bb.ff, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21"

bb.ff:                                            ; preds = %"_ZN79_$LT$meilisearch_types..batches..BatchStats$u20$as$u20$core..cmp..PartialEq$GT$2eq17h086cb793783c78f5E.exit"
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.yv = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.yw = load i64, ptr %i.yv, align 8, !noundef !21
  %i.yx = getelementptr inbounds nuw i8, ptr %1, i64 1152
  %i.yy = getelementptr inbounds nuw i8, ptr %1, i64 1176
  %i.yz = load i64, ptr %i.yy, align 8, !noundef !21
  %i.za = icmp eq i64 %i.yw, %i.yz
  br i1 %i.za, label %bb.fg, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21"

bb.fg:                                            ; preds = %bb.ff
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.zc = load i64, ptr %i.zb, align 8, !noundef !21
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 1184
  %i.ze = load i64, ptr %i.zd, align 8, !noundef !21
  %i.zf = icmp eq i64 %i.zc, %i.ze
  br i1 %i.zf, label %bb.fh, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21"

bb.fh:                                            ; preds = %bb.fg
  %i.zg = load i64, ptr %i.yu, align 8, !range !25, !noundef !21
  %.not5 = icmp eq i64 %i.zg, -9223372036854775808
  %i.zh = load i64, ptr %i.yx, align 8, !range !25, !noundef !21
  %i.zi = icmp eq i64 %i.zh, -9223372036854775808 ; 2 uses
  br i1 %.not5, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  br i1 %i.zi, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21", label %bb.fk

bb.fj:                                            ; preds = %bb.fh
  br i1 %i.zi, label %bb.fl, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21"

bb.fk:                                            ; preds = %bb.fi
  %i.zj = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %.val11 = load i64, ptr %i.zj, align 8, !noundef !21 ; 2 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %1, i64 1168
  %.val13 = load i64, ptr %i.zk, align 8, !noundef !21
  %.not.i.i = icmp eq i64 %.val11, %.val13
  br i1 %.not.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit", label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit": ; preds = %bb.fk
  %i.zl = getelementptr inbounds nuw i8, ptr %1, i64 1160
  %.val12 = load ptr, ptr %i.zl, align 8, !nonnull !21, !noundef !21
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %.val10 = load ptr, ptr %i.zm, align 8, !nonnull !21, !noundef !21
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val10, ptr nonnull readonly align 1 %.val12, i64 %.val11), !alias.scope !26525
  %i.zn = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.zn, label %bb.fl, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21"

bb.fl:                                            ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit", %bb.fj
  %i.zo = getelementptr inbounds nuw i8, ptr %1, i64 1192
  %i.zp = tail call fastcc noundef zeroext i1 @"_ZN79_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd792d43ee76dda3E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.zo)
  br i1 %i.zp, label %bb.fm, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21"

bb.fm:                                            ; preds = %bb.fl
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 1215
  %i.zs = load i8, ptr %i.zr, align 1, !range !35, !noundef !21
  %i.zt = trunc nuw i8 %i.zs to i1
  %i.zu = getelementptr inbounds nuw i8, ptr %1, i64 1215
  %i.zv = load i8, ptr %i.zu, align 1, !range !35, !noundef !21
  %i.zw = trunc nuw i8 %i.zv to i1                ; 2 uses
  br i1 %i.zt, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  br i1 %i.zw, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21", label %.split27

bb.fo:                                            ; preds = %bb.fm
  br i1 %i.zw, label %bb.fp, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21"

.split27:                                         ; preds = %bb.fn
  %i.zx = getelementptr inbounds nuw i8, ptr %1, i64 1208
  %i.zy = tail call fastcc noundef zeroext i1 @"_ZN79_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd792d43ee76dda3E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.zq, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.zx)
  br i1 %i.zy, label %bb.fp, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21"

bb.fp:                                            ; preds = %.split27, %bb.fo
  %i.zz = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.aaa = getelementptr inbounds nuw i8, ptr %0, i64 1231
  %i.aab = load i8, ptr %i.aaa, align 1, !range !35, !noundef !21
  %i.aac = trunc nuw i8 %i.aab to i1
  %i.aad = getelementptr inbounds nuw i8, ptr %1, i64 1231
  %i.aae = load i8, ptr %i.aad, align 1, !range !35, !noundef !21
  %i.aaf = trunc nuw i8 %i.aae to i1              ; 2 uses
  br i1 %i.aac, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  br i1 %i.aaf, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21", label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  br i1 %i.aaf, label %bb.ft, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21"

bb.fs:                                            ; preds = %bb.fq
  %i.aag = getelementptr inbounds nuw i8, ptr %1, i64 1224
  %i.aah = tail call fastcc noundef zeroext i1 @"_ZN79_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd792d43ee76dda3E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.zz, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.aag)
  br i1 %i.aah, label %.split28, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21"

.split28:                                         ; preds = %bb.fs
  %i.aai = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.aaj = getelementptr inbounds nuw i8, ptr %1, i64 1240
  %i.aak = tail call fastcc noundef zeroext i1 @"_ZN79_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd792d43ee76dda3E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.aai, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.aaj)
  br i1 %i.aak, label %bb.ft, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21"

bb.ft:                                            ; preds = %.split28, %bb.fr
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %.val7 = load i64, ptr %i.aal, align 8, !noundef !21 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %.val9 = load i64, ptr %i.aam, align 8, !noundef !21
  %.not.i.i18 = icmp eq i64 %.val7, %.val9
  br i1 %.not.i.i18, label %bb.fu, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21"

bb.fu:                                            ; preds = %bb.ft
  %i.aan = getelementptr inbounds nuw i8, ptr %1, i64 1104
  %.val8 = load ptr, ptr %i.aan, align 8, !nonnull !21, !noundef !21
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %.val = load ptr, ptr %i.aao, align 8, !nonnull !21, !noundef !21
  %bcmp.i.i20 = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val, ptr nonnull readonly align 1 %.val8, i64 %.val7), !alias.scope !26526
  %i.aap = icmp eq i32 %bcmp.i.i20, 0
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit21": ; preds = %.loopexit.i.i, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hc1c2797d66e9b0ecE.exit.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h804708d511fcc5c1E.exit.i.i.i", %.loopexit.i58.i, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hab504eb41f85580aE.exit.i.i.i", %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i.i.i", %.loopexit.i131.i, %bb.fk, %"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h9154f09a9299c1bdE.exit.i", %bb.db, %"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h726b93e24fe8c5aaE.exit.i", %"_ZN133_$LT$indexmap..map..IndexMap$LT$K$C$V1$C$S1$GT$$u20$as$u20$core..cmp..PartialEq$LT$indexmap..map..IndexMap$LT$K$C$V2$C$S2$GT$$GT$$GT$2eq17hda5d350727ae18dbE.exit.i", %bb.fe, %bb.da, %.split.i17, %"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7d768f158b9dfc87E.exit.i", %bb.fd, %bb.cu, %bb.cn, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit192.i", %.split217.i, %bb.cj, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit188.i", %bb.cf, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit184.i", %bb.cb, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit180.i", %bb.bu, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit176.i", %.split212.i, %bb.bq, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit172.i", %bb.bm, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit168.i", %bb.bi, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit164.i", %bb.be, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit160.i", %bb.au, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit156.i", %.split206.i, %.split205.i, %.split219.i, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.i", %.split203.i, %.split202.i, %.split201.i, %.split200.i, %"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hafe998f868d2821aE.exit152.i", %.split199.i, %"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hafe998f868d2821aE.exit149.i", %.split198.i, %.split197.i, %"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hafe998f868d2821aE.exit146.i", %.split196.i, %.split195.i, %.split194.i, %"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hafe998f868d2821aE.exit143.i", %.split193.i, %"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hafe998f868d2821aE.exit.i", %.split.i, %bb.cz, %bb.h, %bb.l, %bb.p, %bb.s, %bb.v, %bb.z, %bb.ac, %bb.ag, %bb.ak, %bb.an, %bb.aq, %bb.at, %bb.ax, %bb.ba, %bb.bd, %bb.bh, %bb.bl, %bb.bp, %bb.bt, %bb.bx, %bb.ca, %bb.ce, %bb.ci, %bb.cm, %bb.cq, %bb.ct, %bb.cx, %bb.d, %bb.g, %bb.k, %bb.o, %bb.r, %bb.u, %bb.y, %bb.ab, %bb.af, %bb.aj, %bb.am, %bb.ap, %bb.as, %bb.aw, %bb.az, %bb.bc, %bb.bg, %bb.bk, %bb.bo, %bb.bs, %bb.bw, %bb.bz, %bb.cd, %bb.ch, %bb.cl, %bb.cp, %bb.cs, %bb.cw, %bb.e, %bb.fu, %bb.ft, %.split28, %.split27, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit", %.split, %"_ZN82_$LT$meilisearch_types..task_view..DetailsView$u20$as$u20$core..cmp..PartialEq$GT$2eq17h89768d2669d0f2fcE.exit", %"_ZN79_$LT$meilisearch_types..batches..BatchStats$u20$as$u20$core..cmp..PartialEq$GT$2eq17h086cb793783c78f5E.exit", %bb.fj, %bb.fl, %bb.fo, %bb.fr, %bb.a, %bb.b, %bb.ff, %bb.fg, %bb.fi, %bb.fn, %bb.fq, %bb.fs
  %.sroa.0.0 = phi i1 [ false, %.split28 ], [ false, %bb.fs ], [ false, %bb.fq ], [ false, %bb.fn ], [ false, %bb.fi ], [ false, %bb.fg ], [ false, %bb.ff ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.fr ], [ false, %bb.fo ], [ false, %bb.fl ], [ false, %bb.fj ], [ false, %"_ZN79_$LT$meilisearch_types..batches..BatchStats$u20$as$u20$core..cmp..PartialEq$GT$2eq17h086cb793783c78f5E.exit" ], [ false, %"_ZN82_$LT$meilisearch_types..task_view..DetailsView$u20$as$u20$core..cmp..PartialEq$GT$2eq17h89768d2669d0f2fcE.exit" ], [ false, %bb.ft ], [ false, %.split ], [ false, %bb.cu ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit" ], [ false, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hab504eb41f85580aE.exit.i.i.i" ], [ false, %.split27 ], [ %i.aap, %bb.fu ], [ false, %bb.e ], [ false, %bb.cw ], [ false, %bb.cs ], [ false, %bb.cp ], [ false, %bb.cl ], [ false, %bb.ch ], [ false, %bb.cd ], [ false, %bb.bz ], [ false, %bb.bw ], [ false, %bb.bs ], [ false, %bb.bo ], [ false, %bb.bk ], [ false, %bb.bg ], [ false, %bb.bc ], [ false, %bb.az ], [ false, %bb.aw ], [ false, %bb.as ], [ false, %bb.ap ], [ false, %bb.am ], [ false, %bb.aj ], [ false, %bb.af ], [ false, %bb.ab ], [ false, %bb.y ], [ false, %bb.u ], [ false, %bb.r ], [ false, %bb.o ], [ false, %bb.k ], [ false, %bb.g ], [ false, %bb.d ], [ false, %bb.cx ], [ false, %bb.ct ], [ false, %bb.cq ], [ false, %bb.cm ], [ false, %bb.ci ], [ false, %bb.ce ], [ false, %bb.ca ], [ false, %bb.bx ], [ false, %bb.bt ], [ false, %bb.bp ], [ false, %bb.bl ], [ false, %bb.bh ], [ false, %bb.bd ], [ false, %bb.ba ], [ false, %bb.ax ], [ false, %bb.at ], [ false, %bb.aq ], [ false, %bb.an ], [ false, %bb.ak ], [ false, %bb.ag ], [ false, %bb.ac ], [ false, %bb.z ], [ false, %bb.v ], [ false, %bb.s ], [ false, %bb.p ], [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.cz ], [ false, %.split.i ], [ false, %"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hafe998f868d2821aE.exit.i" ], [ false, %.split193.i ], [ false, %"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hafe998f868d2821aE.exit143.i" ], [ false, %.split194.i ], [ false, %.split195.i ], [ false, %.split196.i ], [ false, %"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hafe998f868d2821aE.exit146.i" ], [ false, %.split197.i ], [ false, %.split198.i ], [ false, %"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hafe998f868d2821aE.exit149.i" ], [ false, %.split199.i ], [ false, %"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hafe998f868d2821aE.exit152.i" ], [ false, %.split200.i ], [ false, %.split201.i ], [ false, %.split202.i ], [ false, %.split203.i ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.i" ], [ false, %.split219.i ], [ false, %.split205.i ], [ false, %.split206.i ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit156.i" ], [ false, %bb.au ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit160.i" ], [ false, %bb.be ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit164.i" ], [ false, %bb.bi ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit168.i" ], [ false, %bb.bm ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit172.i" ], [ false, %bb.bq ], [ false, %.split212.i ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit176.i" ], [ false, %bb.bu ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit180.i" ], [ false, %bb.cb ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit184.i" ], [ false, %bb.cf ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit188.i" ], [ false, %bb.cj ], [ false, %.split217.i ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit192.i" ], [ false, %bb.cn ], [ false, %bb.fd ], [ false, %"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7d768f158b9dfc87E.exit.i" ], [ false, %bb.fk ], [ false, %.split.i17 ], [ false, %bb.da ], [ false, %bb.fe ], [ false, %"_ZN133_$LT$indexmap..map..IndexMap$LT$K$C$V1$C$S1$GT$$u20$as$u20$core..cmp..PartialEq$LT$indexmap..map..IndexMap$LT$K$C$V2$C$S2$GT$$GT$$GT$2eq17hda5d350727ae18dbE.exit.i" ], [ false, %"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h726b93e24fe8c5aaE.exit.i" ], [ false, %bb.db ], [ false, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h804708d511fcc5c1E.exit.i.i.i" ], [ false, %"_ZN98_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h9154f09a9299c1bdE.exit.i" ], [ false, %.loopexit.i131.i ], [ false, %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b970579e9431cfE.exit.i.i.i.i.i" ], [ false, %.loopexit.i58.i ], [ false, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17hc1c2797d66e9b0ecE.exit.i.i.i" ], [ false, %.loopexit.i.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN74_$LT$meilisearch_types..error..ErrorType$u20$as$u20$core..fmt..Display$GT$3fmt17h6aeab87f59185d79E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !38, !noundef !21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.b, align 8, !nonnull !21, !noundef !21
  %.val6 = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val7, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !21, !noalias !21, !nonnull !21 ; 4 uses
  switch i8 %i.a, label %default.unreachable41 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable41:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1242, i64 noundef 8), !noalias !26535, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1243, i64 noundef 15), !noalias !26536, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1244, i64 noundef 4), !noalias !26537, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1245, i64 noundef 6), !noalias !26538, !inline_history !61
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.d ], [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN74_$LT$meilisearch_types..keys..CreateApiKey$u20$as$u20$utoipa..ToSchema$GT$7schemas17ha5f08b55bb2922d9E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [792 x i8], align 8               ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [752 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr @1246, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 6, ptr %i.i, align 8
  store i64 -9223372036854775808, ptr %i.e, align 8
  store ptr %i.e, ptr %i.f, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h0c767a96d02e06c6E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26565
  store ptr @2, ptr %i.a, align 8, !noalias !26566
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.422.0..sroa_idx, align 8, !noalias !26566
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %.sroa.523.0..sroa_idx, align 8, !noalias !26566
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.624.0..sroa_idx, align 8, !noalias !26566
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !26566
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val10 = load i64, ptr %i.e, align 8, !range !25, !noundef !21 ; 2 uses
  %switch = icmp sgt i64 %.val10, 0
  br i1 %switch, label %bb.c, label %common.resume

bb.c:                                             ; preds = %bb.b
  %.val11 = load ptr, ptr %i.h, align 8, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11, i64 noundef %.val10, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !26567
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26565
  %.val = load i64, ptr %i.e, align 8, !range !25, !noundef !21 ; 2 uses
  %switch29 = icmp sgt i64 %.val, 0
  br i1 %switch29, label %bb.e, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit12"

bb.e:                                             ; preds = %bb.d
  %.val9 = load ptr, ptr %i.h, align 8, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !26568
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit12"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit12": ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.0.0.copyload = load i64, ptr %i.g, align 8 ; 3 uses
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.515.0.copyload = load ptr, ptr %.sroa.515.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.l, align 8
  invoke void @"_ZN80_$LT$meilisearch_types..keys..Action$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17h5f47ce24268499f1E"(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit12"
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.n, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.515.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.515.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !26569
  br label %common.resume

bb.h:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit12"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(752) %i.d, i64 752, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.b, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.515.0.copyload, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.6.0.copyload, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !26570)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !26571, !noalias !26572, !noundef !21 ; 3 uses
  %i.q = load i64, ptr %0, align 8, !range !22, !alias.scope !26571, !noalias !26572, !noundef !21
  %i.r = icmp eq i64 %i.q, %i.p
  br i1 %i.r, label %bb.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hec74972aa75abd83E.exit", !prof !23

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.p, i64 noundef 1, i64 noundef 8, i64 noundef 776)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he58478e6247d9a6cE.exit_crit_edge.i" unwind label %bb.j, !noalias !26572

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he58478e6247d9a6cE.exit_crit_edge.i": ; preds = %bb.i
  %.pre.i = load i64, ptr %i.o, align 8, !alias.scope !26570, !noalias !26572
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hec74972aa75abd83E.exit"

common.resume:                                    ; preds = %bb.c, %bb.f, %bb.g, %bb.b, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.j, %bb.c ], [ %i.m, %bb.g ], [ %i.j, %bb.b ], [ %i.m, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr159drop_in_place$LT$core..array..iter..IntoIter$LT$$LP$alloc..string..String$C$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$RP$$C$1_usize$GT$$GT$17ha2a939d205ca73a8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(792) %i.b) #55
          to label %common.resume unwind label %bb.k, !noalias !26570

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !26573
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hec74972aa75abd83E.exit": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he58478e6247d9a6cE.exit_crit_edge.i", %bb.h
  %i.u = phi i64 [ %.pre.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he58478e6247d9a6cE.exit_crit_edge.i" ], [ %i.p, %bb.h ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !26570, !noalias !26572, !nonnull !21, !noundef !21
  %i.x = getelementptr inbounds nuw [776 x i8], ptr %i.w, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(776) %.sroa.5.0..sroa_idx, i64 776, i1 false), !noalias !26570
  %i.y = add i64 %i.u, 1
  store i64 %i.y, ptr %i.o, align 8, !alias.scope !26570, !noalias !26574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @"_ZN74_$LT$milli..update..chat..ChatSettings$u20$as$u20$core..cmp..PartialEq$GT$2eq17h21b149e9f51b7ab3E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1) unnamed_addr #26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i64, ptr %i.a, align 8, !range !50, !noundef !21 ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  %i.d = add i64 %i.b, -9223372036854775807
  %i.e = select i1 %i.c, i64 %i.d, i64 0          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.g = load i64, ptr %i.f, align 8, !range !50, !noundef !21 ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  %i.i = add i64 %i.g, -9223372036854775807
  %i.j = select i1 %i.h, i64 %i.i, i64 0
  %i.k = icmp eq i64 %i.e, %i.j
  br i1 %i.k, label %bb.b, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.thread"

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.e, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val8 = load i64, ptr %i.m, align 8, !noundef !21 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.val10 = load i64, ptr %i.n, align 8, !noundef !21
  %.not.i.i = icmp eq i64 %.val8, %.val10
  br i1 %.not.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit", label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.thread"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit": ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val9 = load ptr, ptr %i.o, align 8, !nonnull !21, !noundef !21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val7 = load ptr, ptr %i.p, align 8, !nonnull !21, !noundef !21
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val7, ptr nonnull readonly align 1 %.val9, i64 %.val8), !alias.scope !26581
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.q, label %bb.d, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.thread"

bb.d:                                             ; preds = %bb.b, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit"
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = load i64, ptr %i.r, align 8, !range !50, !noundef !21 ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  %i.u = add i64 %i.s, -9223372036854775807
  %i.v = select i1 %i.t, i64 %i.u, i64 0          ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.x = load i64, ptr %i.w, align 8, !range !50, !noundef !21 ; 2 uses
  %i.y = icmp slt i64 %i.x, 0
  %i.z = add i64 %i.x, -9223372036854775807
  %i.aa = select i1 %i.y, i64 %i.z, i64 0
  %i.ab = icmp eq i64 %i.v, %i.aa
  br i1 %i.ab, label %bb.e, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.thread"

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq i64 %i.v, 0
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val4 = load i64, ptr %i.ad, align 8, !noundef !21 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.val6 = load i64, ptr %i.ae, align 8, !noundef !21
  %.not.i.i11 = icmp eq i64 %.val4, %.val6
  br i1 %.not.i.i11, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit14", label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.thread"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit14": ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.val5 = load ptr, ptr %i.af, align 8, !nonnull !21, !noundef !21
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val = load ptr, ptr %i.ag, align 8, !nonnull !21, !noundef !21
  %bcmp.i.i13 = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val, ptr nonnull readonly align 1 %.val5, i64 %.val4), !alias.scope !26582
  %i.ah = icmp eq i32 %bcmp.i.i13, 0
  br i1 %i.ah, label %bb.g, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.thread"

bb.g:                                             ; preds = %bb.e, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit14"
  %i.ai = load i64, ptr %0, align 8, !range !36, !noundef !21 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i64, ptr %1, align 8, !range !36, !noundef !21
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = icmp eq i64 %i.ai, %i.ak
  br i1 %i.am, label %bb.h, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.thread"

bb.h:                                             ; preds = %bb.g
  %i.an = icmp eq i64 %i.ai, 0
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = load i64, ptr %i.aj, align 8, !noundef !21
  %i.ap = load i64, ptr %i.al, align 8, !noundef !21
  %i.aq = icmp eq i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.j, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.thread"

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !range !55, !noundef !21 ; 2 uses
  %i.at = tail call i64 @llvm.usub.sat.i64(i64 %i.as, i64 2)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !range !55, !noundef !21
  %i.aw = tail call i64 @llvm.usub.sat.i64(i64 %i.av, i64 2)
  %i.ax = icmp eq i64 %i.at, %i.aw
  br i1 %i.ax, label %bb.k, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.thread"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.thread": ; preds = %bb.f, %bb.c, %bb.k, %bb.j, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit", %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit14", %bb.i, %bb.a, %bb.d, %bb.g, %bb.l
  %.sroa.0.0 = phi i1 [ %i.az, %bb.l ], [ false, %bb.j ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit" ], [ false, %bb.g ], [ false, %bb.d ], [ false, %bb.a ], [ false, %bb.i ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit14" ], [ true, %bb.k ], [ false, %bb.c ], [ false, %bb.f ]
  ret i1 %.sroa.0.0

bb.k:                                             ; preds = %bb.j
  %i.ay = icmp samesign ult i64 %i.as, 3
  br i1 %i.ay, label %bb.l, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.thread"

bb.l:                                             ; preds = %bb.k
  %i.az = tail call fastcc noundef zeroext i1 @"_ZN78_$LT$milli..update..chat..ChatSearchParams$u20$as$u20$core..cmp..PartialEq$GT$2eq17hc70ecd851466c072E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.au)
  br label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h5a70cfe5f9203f90E.exit.thread"
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN74_$LT$tempfile..file..PersistError$LT$F$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hbb5a4b6a37050110E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h62ceb23194058131E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26585
  store ptr @1251, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !26585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN75_$LT$meilisearch_types..batches..BatchStats$u20$as$u20$utoipa..ToSchema$GT$7schemas17hb106935ee8279881E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [792 x i8], align 8               ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [752 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr @1252, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 3, ptr %i.i, align 8
  store i64 -9223372036854775808, ptr %i.e, align 8
  store ptr %i.e, ptr %i.f, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h0c767a96d02e06c6E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !26612
  store ptr @2, ptr %i.a, align 8, !noalias !26613
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.422.0..sroa_idx, align 8, !noalias !26613
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %.sroa.523.0..sroa_idx, align 8, !noalias !26613
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.624.0..sroa_idx, align 8, !noalias !26613
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !26613
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val10 = load i64, ptr %i.e, align 8, !range !25, !noundef !21 ; 2 uses
  %switch = icmp sgt i64 %.val10, 0
  br i1 %switch, label %bb.c, label %common.resume

bb.c:                                             ; preds = %bb.b
  %.val11 = load ptr, ptr %i.h, align 8, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11, i64 noundef %.val10, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !26614
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !26612
  %.val = load i64, ptr %i.e, align 8, !range !25, !noundef !21 ; 2 uses
  %switch29 = icmp sgt i64 %.val, 0
  br i1 %switch29, label %bb.e, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit12"

bb.e:                                             ; preds = %bb.d
  %.val9 = load ptr, ptr %i.h, align 8, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !26615
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit12"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit12": ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.0.0.copyload = load i64, ptr %i.g, align 8 ; 3 uses
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.515.0.copyload = load ptr, ptr %.sroa.515.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.l, align 8
  invoke void @"_ZN52_$LT$u32$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17h05017f6c9a087501E"(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit12"
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.n, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.515.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.515.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !26616
  br label %common.resume

bb.h:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit12"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(752) %i.d, i64 752, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.b, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.515.0.copyload, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.6.0.copyload, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !26617)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !26618, !noalias !26619, !noundef !21 ; 3 uses
  %i.q = load i64, ptr %0, align 8, !range !22, !alias.scope !26618, !noalias !26619, !noundef !21
  %i.r = icmp eq i64 %i.q, %i.p
  br i1 %i.r, label %bb.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hec74972aa75abd83E.exit", !prof !23

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.p, i64 noundef 1, i64 noundef 8, i64 noundef 776)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he58478e6247d9a6cE.exit_crit_edge.i" unwind label %bb.j, !noalias !26619

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he58478e6247d9a6cE.exit_crit_edge.i": ; preds = %bb.i
  %.pre.i = load i64, ptr %i.o, align 8, !alias.scope !26617, !noalias !26619
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hec74972aa75abd83E.exit"

common.resume:                                    ; preds = %bb.c, %bb.f, %bb.g, %bb.b, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.j, %bb.c ], [ %i.m, %bb.g ], [ %i.j, %bb.b ], [ %i.m, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr159drop_in_place$LT$core..array..iter..IntoIter$LT$$LP$alloc..string..String$C$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$RP$$C$1_usize$GT$$GT$17ha2a939d205ca73a8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(792) %i.b) #55
          to label %common.resume unwind label %bb.k, !noalias !26617

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !26620
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hec74972aa75abd83E.exit": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he58478e6247d9a6cE.exit_crit_edge.i", %bb.h
  %i.u = phi i64 [ %.pre.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he58478e6247d9a6cE.exit_crit_edge.i" ], [ %i.p, %bb.h ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !26617, !noalias !26619, !nonnull !21, !noundef !21
  %i.x = getelementptr inbounds nuw [776 x i8], ptr %i.w, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(776) %.sroa.5.0..sroa_idx, i64 776, i1 false), !noalias !26617
  %i.y = add i64 %i.u, 1
  store i64 %i.y, ptr %i.o, align 8, !alias.scope !26617, !noalias !26621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN75_$LT$meilisearch_types..index_uid..IndexUid$u20$as$u20$utoipa..ToSchema$GT$7schemas17h9e08598a209a86c8E"(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN75_$LT$meilisearch_types..settings..Unchecked$u20$as$u20$utoipa..ToSchema$GT$7schemas17hb1562ac738bbf785E"(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN75_$LT$meilisearch_types..task_view..TaskView$u20$as$u20$utoipa..ToSchema$GT$7schemas17h9365e857d31ae8a9E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0114 = alloca [2328 x i8], align 8       ; 4 uses
  %i.f = alloca [3120 x i8], align 8              ; 10 uses
  %i.g = alloca [752 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [752 x i8], align 8               ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 8 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [776 x i8], align 8               ; 8 uses
  %i.p = alloca [752 x i8], align 8               ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [776 x i8], align 8               ; 8 uses
  %i.u = alloca [752 x i8], align 8               ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [776 x i8], align 8               ; 8 uses
end_hunk_5
begin_hunk_6_@"_ZN76_$LT$meilisearch_types..error..ResponseError$u20$as$u20$utoipa..ToSchema$GT$7schemas17h19c26b237470b5ccE":bb.a
          cleanup                                 ; 2 uses
  %i.t = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.t, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.532.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.532.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !27046
  br label %common.resume

bb.h:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit23"
  store i64 %.sroa.0.0.copyload, ptr %i.m, align 8
  %.sroa.532.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.532.0.copyload, ptr %.sroa.532.0..sroa_idx33, align 8
  %.sroa.6.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx35, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.u, ptr noundef nonnull align 8 dereferenceable(752) %i.i, i64 752, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr @1271, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 9, ptr %i.w, align 8
  store i64 -9223372036854775808, ptr %i.f, align 8
  store ptr %i.f, ptr %i.g, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h0c767a96d02e06c6E", ptr %.sroa.48.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27047
  store ptr @2, ptr %i.a, align 8, !noalias !27048
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.458.0..sroa_idx, align 8, !noalias !27048
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %.sroa.559.0..sroa_idx, align 8, !noalias !27048
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.660.0..sroa_idx, align 8, !noalias !27048
  %.sroa.761.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.761.0..sroa_idx, align 8, !noalias !27048
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val17 = load i64, ptr %i.f, align 8, !range !25, !noundef !21 ; 2 uses
  %switch69 = icmp sgt i64 %.val17, 0
  br i1 %switch69, label %bb.j, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit25"

bb.j:                                             ; preds = %bb.i
  %.val18 = load ptr, ptr %i.v, align 8, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val18, i64 noundef %.val17, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !27049
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit25"

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27047
  %.val = load i64, ptr %i.f, align 8, !range !25, !noundef !21 ; 2 uses
  %switch70 = icmp sgt i64 %.val, 0
  br i1 %switch70, label %bb.l, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit26"

bb.l:                                             ; preds = %bb.k
  %.val16 = load ptr, ptr %i.v, align 8, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !27050
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit26"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit25": ; preds = %bb.i, %bb.n, %bb.m, %bb.j
  %.pn = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.y, %bb.n ], [ %i.y, %bb.m ], [ %i.x, %bb.i ]
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$$LP$alloc..string..String$C$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$RP$$GT$17h0752890027838724E"(ptr noalias noundef align 8 dereferenceable(776) %i.m) #55
          to label %common.resume unwind label %bb.s

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit26": ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.040.0.copyload = load i64, ptr %i.h, align 8 ; 3 uses
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.542.0.copyload = load ptr, ptr %.sroa.542.0..sroa_idx, align 8 ; 3 uses
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.645.0.copyload = load i64, ptr %.sroa.645.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @"_ZN84_$LT$meilisearch_types..error..ErrorType$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17h4261841eb81ff946E"(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit26"
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = icmp eq i64 %.sroa.040.0.copyload, 0
  br i1 %i.z, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit25", label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.542.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.542.0.copyload, i64 noundef %.sroa.040.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !27051
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit25"

bb.o:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit26"
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(752) %i.e, i64 752, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(776) %i.m, i64 776, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 0, ptr %i.d, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 792
  store i64 %.sroa.040.0.copyload, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 800
  store ptr %.sroa.542.0.copyload, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 808
  store i64 %.sroa.645.0.copyload, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !27052)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !27053, !noalias !27054, !noundef !21 ; 3 uses
  %i.ac = load i64, ptr %0, align 8, !range !22, !alias.scope !27053, !noalias !27054, !noundef !21
  %i.ad = sub i64 %i.ac, %i.ab
  %i.ae = icmp ult i64 %i.ad, 2
  br i1 %i.ae, label %bb.p, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hcea52b66cb32e1b4E.exit", !prof !23

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ab, i64 noundef 2, i64 noundef 8, i64 noundef 776)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he58478e6247d9a6cE.exit_crit_edge.i" unwind label %bb.q, !noalias !27054

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he58478e6247d9a6cE.exit_crit_edge.i": ; preds = %bb.p
  %.pre.i = load i64, ptr %i.aa, align 8, !alias.scope !27052, !noalias !27054
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hcea52b66cb32e1b4E.exit"

common.resume:                                    ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit25", %bb.c, %bb.f, %bb.g, %bb.b, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.q ], [ %.pn, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit25" ], [ %i.p, %bb.c ], [ %i.s, %bb.g ], [ %i.p, %bb.b ], [ %i.s, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr159drop_in_place$LT$core..array..iter..IntoIter$LT$$LP$alloc..string..String$C$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$RP$$C$2_usize$GT$$GT$17h35be1e070e4d0a48E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(1568) %i.d) #55
          to label %common.resume unwind label %bb.r, !noalias !27052

bb.r:                                             ; preds = %bb.q
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !27055
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hcea52b66cb32e1b4E.exit": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he58478e6247d9a6cE.exit_crit_edge.i", %bb.o
  %i.ah = phi i64 [ %.pre.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he58478e6247d9a6cE.exit_crit_edge.i" ], [ %i.ab, %bb.o ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !27052, !noalias !27054, !nonnull !21, !noundef !21
  %i.ak = mul i64 %i.ah, 776
  %scevgep.i.i = getelementptr i8, ptr %i.aj, i64 %i.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1552) %scevgep.i.i, ptr noundef nonnull readonly align 8 dereferenceable(1552) %.sroa.5.0..sroa_idx, i64 1552, i1 false), !noalias !27056
  %i.al = add i64 %i.ah, 2
  store i64 %i.al, ptr %i.aa, align 8, !alias.scope !27052, !noalias !27057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.s:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit25"
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h03ef301693619116E"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1280, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$std..sync..poison..PoisonError$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hc6975351f296ff2dE"(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter12debug_struct17heb67a1f9f98d9089E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1280, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_ZN4core3fmt8builders11DebugStruct21finish_non_exhaustive17h515ebfc4fec2cbcbE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @"_ZN76_$LT$tempfile..file..PersistError$LT$F$GT$$u20$as$u20$core..error..Error$GT$6source17hbbcef3388f9795ccE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @1191, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$tempfile..file..PersistError$LT$F$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17ha0bc937de1027017E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN60_$LT$std..io..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17he762dae0cbfe0e23E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27060
  store ptr @1282, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !27060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN77_$LT$$RF$serde_json..raw..RawValue$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h050890cf96c4ec6fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27188)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27192)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !27193, !noalias !27194, !noundef !21 ; 5 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !27195, !noalias !27196 ; 3 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17heebc93b50e5ad163E.exit.i.i"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !27193, !noalias !27194, !nonnull !21, !align !37, !noundef !21
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27197)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !27198, !noundef !21
  switch i8 %i.y, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17heebc93b50e5ad163E.exit.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !27199, !noalias !27196
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17heebc93b50e5ad163E.exit.thread.i.i", label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17heebc93b50e5ad163E.exit.thread.i.i": ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.s, ptr %i.aa, align 8, !alias.scope !27200, !noalias !27201
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.ab, align 8, !alias.scope !27202, !noalias !27201
  br label %.loopexit153.i.i.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17heebc93b50e5ad163E.exit.i.i": ; preds = %bb.b, %bb.a
  %i.ac = phi i64 [ %.promoted.i.i.i, %bb.a ], [ %i.w, %bb.b ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store i64 %i.ac, ptr %i.ae, align 8, !alias.scope !27200, !noalias !27201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27203)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  store i64 0, ptr %i.af, align 8, !alias.scope !27204, !noalias !27201
  %i.ag = icmp ult i64 %i.ac, %i.s
  br i1 %i.ag, label %.lr.ph.i.lr.ph.i.i.i, label %.loopexit153.i.i.i

.lr.ph.i.lr.ph.i.i.i:                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17heebc93b50e5ad163E.exit.i.i"
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.pre.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !27205, !noalias !27206
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.be, %.lr.ph.i.lr.ph.i.i.i
  %i.ai = phi ptr [ %.pre.i.i.i, %.lr.ph.i.lr.ph.i.i.i ], [ %i.eq, %bb.be ] ; 11 uses
  %.promoted.i194.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.lr.ph.i.i.i ], [ %.promoted.i.i.i.i, %bb.be ]
  %i.aj = phi i64 [ %i.s, %.lr.ph.i.lr.ph.i.i.i ], [ %i.ep, %bb.be ] ; 7 uses
  %.sroa.01.0193.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i ], [ true, %bb.be ] ; 3 uses
  %.sroa.8.0192.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i ], [ %.sroa.030.0186.i.i.i, %bb.be ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27207)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.ak = phi i64 [ %.promoted.i194.i.i.i, %.lr.ph.i.i.i.i ], [ %i.an, %bb.e ] ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27208)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !noalias !27209, !noundef !21 ; 3 uses
  switch i8 %i.am, label %bb.f [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
    i8 110, label %bb.g
    i8 116, label %bb.m
    i8 102, label %bb.s
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ac
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.an = add i64 %i.ak, 1                        ; 3 uses
  store i64 %i.an, ptr %i.q, align 8, !alias.scope !27210, !noalias !27211
  %exitcond.not.i.i.i.i = icmp eq i64 %i.an, %i.aj
  br i1 %exitcond.not.i.i.i.i, label %.loopexit153.i.i.i, label %bb.d

.loopexit153.i.i.i:                               ; preds = %bb.be, %bb.e, %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17heebc93b50e5ad163E.exit.i.i", %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17heebc93b50e5ad163E.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !27212
  store i64 5, ptr %i.p, align 8, !noalias !27212
  %i.ao = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h37b14f047f8b1025E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.p), !noalias !27201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !27212
  br label %.loopexit.i.i

bb.f:                                             ; preds = %bb.d
  %i.ap = add i8 %i.am, -48
  %or.cond.i.i.i = icmp ult i8 %i.ap, 10
  br i1 %or.cond.i.i.i, label %bb.af, label %bb.ae, !prof !45

bb.g:                                             ; preds = %bb.d
  %i.aq = add i64 %i.ak, 1                        ; 4 uses
  store i64 %i.aq, ptr %i.q, align 8, !alias.scope !27213, !noalias !27201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27214)
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.aj) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27215)
  %exitcond.not.i67.not.i.i.i = icmp ult i64 %i.aq, %i.aj
  br i1 %exitcond.not.i67.not.i.i.i, label %bb.h, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noalias !27216, !noundef !21
  %i.at = add i64 %i.ak, 2                        ; 3 uses
  store i64 %i.at, ptr %i.q, align 8, !alias.scope !27217, !noalias !27218
  %.not.i.i.i.i = icmp eq i8 %i.as, 117
  br i1 %.not.i.i.i.i, label %bb.i, label %.loopexit256.i.i.i, !prof !46

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27219)
  %exitcond.not.i67.1.i.i.i = icmp eq i64 %i.at, %umax.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !noalias !27220, !noundef !21
  %i.aw = add i64 %i.ak, 3                        ; 3 uses
  store i64 %i.aw, ptr %i.q, align 8, !alias.scope !27221, !noalias !27218
  %.not.i.1.i.i.i = icmp eq i8 %i.av, 108
  br i1 %.not.i.1.i.i.i, label %bb.k, label %.loopexit256.i.i.i, !prof !46

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27222)
  %exitcond.not.i67.2.i.i.i = icmp eq i64 %i.aw, %umax.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !27223, !noundef !21
  %i.az = add i64 %i.ak, 4
  store i64 %i.az, ptr %i.q, align 8, !alias.scope !27224, !noalias !27218
  %.not.i.2.i.i.i = icmp eq i8 %i.ay, 108
  br i1 %.not.i.2.i.i.i, label %.loopexit150.i.i.i, label %.loopexit256.i.i.i, !prof !46

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h683ee20a732f842eE.exit.i.i.i.i": ; preds = %bb.k, %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !27225
  store i64 5, ptr %i.h, align 8, !noalias !27225
  %i.ba = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h97db5a6137b0fb54E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h), !noalias !27226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !27225
  br label %.loopexit.i.i

.loopexit256.i.i.i:                               ; preds = %bb.l, %bb.j, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !27225
  store i64 9, ptr %i.g, align 8, !noalias !27225
  %i.bb = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h97db5a6137b0fb54E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g), !noalias !27226
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !27225
  br label %.loopexit.i.i

bb.m:                                             ; preds = %bb.d
  %i.bc = add i64 %i.ak, 1                        ; 4 uses
  store i64 %i.bc, ptr %i.q, align 8, !alias.scope !27227, !noalias !27201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27228)
end_hunk_6
begin_hunk_7_@"_ZN83_$LT$u32$u20$as$u20$meilisearch_types..deserr..query_params..FromQueryParameter$GT$16from_query_param17hff76c2303426598dE":bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !28786
  %cond.i = icmp eq i8 %.pr.i, 43
  br i1 %cond.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.c = add i64 %2, -1                           ; 2 uses
  %i.d = icmp ult i64 %2, 10
  br i1 %i.d, label %.lr.ph.i.preheader, label %.preheader71.i

.preheader71.i:                                   ; preds = %bb.f, %bb.d
  %.sroa.16.0.ph.i = phi i64 [ %2, %bb.f ], [ %i.c, %bb.d ] ; 2 uses
  %.sroa.03.0.ph.i = phi ptr [ %1, %bb.f ], [ %i.b, %bb.d ]
  %.not.i39 = icmp eq i64 %.sroa.16.0.ph.i, 0
  br i1 %.not.i39, label %.loopexit.i, label %.lr.ph

bb.e:                                             ; preds = %bb.g
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i42, i64 1
  %i.f = add i64 %.sroa.16.0.i41, -1              ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.loopexit.i, label %.lr.ph

bb.f:                                             ; preds = %bb.c
  %i.g = icmp ult i64 %2, 9
  br i1 %i.g, label %.lr.ph.i.preheader, label %.preheader71.i

.loopexit.i:                                      ; preds = %bb.e, %bb.i, %.preheader71.i
  %.sroa.019.2.i = phi i32 [ %i.ab, %bb.i ], [ 0, %.preheader71.i ], [ %i.q, %bb.e ]
  %i.h = zext i32 %.sroa.019.2.i to i64
  %i.i = shl nuw i64 %i.h, 32
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

.lr.ph:                                           ; preds = %.preheader71.i, %bb.e
  %.sroa.03.0.i42 = phi ptr [ %i.e, %bb.e ], [ %.sroa.03.0.ph.i, %.preheader71.i ] ; 3 uses
  %.sroa.16.0.i41 = phi i64 [ %i.f, %bb.e ], [ %.sroa.16.0.ph.i, %.preheader71.i ]
  %.sroa.019.0.i40 = phi i32 [ %i.q, %bb.e ], [ 0, %.preheader71.i ]
  %i.j = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.019.0.i40, i32 10) ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %bb.h, label %bb.g, !prof !23

bb.g:                                             ; preds = %.lr.ph
  %i.l = extractvalue { i32, i1 } %i.j, 0         ; 2 uses
  %i.m = load i8, ptr %.sroa.03.0.i42, align 1, !alias.scope !28786, !noundef !21
  %i.n = zext i8 %i.m to i32
  %i.o = add nsw i32 %i.n, -48                    ; 2 uses
  %i.p = icmp ugt i32 %i.o, 9
  %i.q = add i32 %i.o, %i.l                       ; 3 uses
  %.not66.i = icmp ult i32 %i.q, %i.l
  %or.cond = select i1 %i.p, i1 true, i1 %.not66.i
  br i1 %or.cond, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", label %bb.e

bb.h:                                             ; preds = %.lr.ph
  %i.r = load i8, ptr %.sroa.03.0.i42, align 1, !alias.scope !28786, !noundef !21
  %i.s = add i8 %i.r, -48
  %i.t = icmp ult i8 %i.s, 10
  %spec.select.i = select i1 %i.t, i64 513, i64 257
  br label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.i
  %.sroa.03.182.i = phi ptr [ %i.aa, %bb.i ], [ %.sroa.03.182.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.16.181.i = phi i64 [ %i.z, %bb.i ], [ %.sroa.16.181.i.ph, %.lr.ph.i.preheader ]
  %.sroa.019.180.i = phi i32 [ %i.ab, %bb.i ], [ 0, %.lr.ph.i.preheader ]
  %i.u = load i8, ptr %.sroa.03.182.i, align 1, !alias.scope !28786, !noundef !21
  %i.v = zext i8 %i.u to i32
  %i.w = add nsw i32 %i.v, -48                    ; 2 uses
  %i.x = icmp ult i32 %i.w, 10
  br i1 %i.x, label %bb.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"

bb.i:                                             ; preds = %.lr.ph.i
  %i.y = mul i32 %.sroa.019.180.i, 10
  %i.z = add nsw i64 %.sroa.16.181.i, -1          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.03.182.i, i64 1
  %i.ab = add i32 %i.w, %i.y                      ; 2 uses
  %.not67.i = icmp eq i64 %i.z, 0
  br i1 %.not67.i, label %.loopexit.i, label %.lr.ph.i

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit": ; preds = %.loopexit.i, %bb.h
  %.sroa.8.0.insert.insert.i = phi i64 [ %i.i, %.loopexit.i ], [ %spec.select.i, %bb.h ] ; 2 uses
  %i.ac = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.ac, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread", label %bb.k

"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread": ; preds = %bb.g, %.lr.ph.i, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"
  %i.ad = icmp slt i64 %2, 0
  br i1 %i.ad, label %bb.j, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !46

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  %i.ae = icmp eq i64 %2, 0
  br i1 %i.ae, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %bb.b, %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !28787
  %i.af = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #52, !noalias !28787 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.j, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit"

bb.j:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread"
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit.thread" ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1964) #57, !noalias !28788
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit": ; preds = %bb.a, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.af, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ inttoptr (i64 1 to ptr), %bb.a ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !28789
  store i64 %2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.59.0..sroa_idx, align 8
  br label %bb.l

bb.k:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$u32$GT$16from_ascii_radix17h43ac169ab2bbf894E.exit"
  %.sroa.5.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.5.0.extract.trunc, ptr %i.ah, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN84_$LT$bool$u20$as$u20$meilisearch_types..deserr..query_params..FromQueryParameter$GT$16from_query_param17he587c7c163b490bdE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %2, label %bb.d [
    i64 4, label %bb.b
    i64 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 1
  %i.b = icmp ne i32 %i.a, 1702195828
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %"_ZN51_$LT$bool$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hbb8ca859bcc1265bE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 1
  %i.f = xor i32 %i.e, 1936482662
  %i.g = getelementptr i8, ptr %1, i64 4
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i32
  %i.j = xor i32 %i.i, 101
  %i.k = or i32 %i.f, %i.j
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %"_ZN51_$LT$bool$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hbb8ca859bcc1265bE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

bb.d:                                             ; preds = %bb.a
  %i.o = icmp slt i64 %2, 0
  br i1 %i.o, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !46

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.d
  %i.p = icmp eq i64 %2, 0
  br i1 %i.p, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %bb.b, %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !28797
  %i.q = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #52, !noalias !28797 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit"

bb.e:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.d
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.d ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1964) #57, !noalias !28798
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.q, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !28799
  store i64 %2, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.57.0..sroa_idx, align 8
  br label %bb.f

"_ZN51_$LT$bool$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hbb8ca859bcc1265bE.exit": ; preds = %bb.c, %bb.b
  %.sroa.0.0.i = phi i8 [ 1, %bb.b ], [ 0, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0.i, ptr %i.s, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %"_ZN51_$LT$bool$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hbb8ca859bcc1265bE.exit", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN84_$LT$meilisearch_types..error..DeserrParseIntError$u20$as$u20$core..fmt..Display$GT$3fmt17hcfc114c8a0a3121aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28802
  store ptr @1902, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !28802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN84_$LT$meilisearch_types..error..ErrorType$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17h4261841eb81ff946E"(ptr dead_on_unwind noalias noundef writable sret([752 x i8]) align 8 captures(address) dereferenceable(752) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 16 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 5 uses
  %i.c = alloca [752 x i8], align 8               ; 7 uses
  %i.d = alloca [752 x i8], align 8               ; 9 uses
  %i.e = alloca [752 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_ZN6utoipa7openapi6schema6Object7builder17hb3dfec70c75ef677E(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.c)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.p, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.b ], [ %.pn.i, %.body.i ]
  invoke fastcc void @"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$$GT$17hc4ca8fdd1615b75fE"(ptr noalias noundef align 8 dereferenceable(24) %1) #55
          to label %common.resume unwind label %bb.u

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !28865)
  call void @llvm.experimental.noalias.scope.decl(metadata !28866)
  call void @llvm.experimental.noalias.scope.decl(metadata !28867)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 432 ; 2 uses
  %.val.i = load i64, ptr %i.g, align 8, !range !24, !alias.scope !28866, !noalias !28868, !noundef !21 ; 3 uses
  %i.h = icmp ne i64 %.val.i, -9223372036854775807
  call void @llvm.assume(i1 %i.h)
  %or.cond.i.i = icmp slt i64 %.val.i, 1
  br i1 %or.cond.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %.val2.i = load ptr, ptr %i.i, align 8, !alias.scope !28866, !noalias !28868, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !28869
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.ae, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !28870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28871
  store i64 4, ptr %i.ah, align 8, !alias.scope !28872, !noalias !28873
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false), !noalias !28874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28875
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 360 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !range !25, !alias.scope !28876, !noalias !28877, !noundef !21 ; 5 uses
  %i.m = icmp eq i64 %i.l, -9223372036854775808
  br i1 %i.m, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !28878)
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 368 ; 2 uses
  %.val4.i = load ptr, ptr %i.n, align 8, !alias.scope !28878, !noalias !28877, !nonnull !21, !noundef !21 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 376
  %.val5.i = load i64, ptr %i.o, align 8, !alias.scope !28878, !noalias !28877, !noundef !21 ; 4 uses
  %i.p = icmp eq i64 %.val5.i, 0
  br i1 %i.p, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9f0ae98f18ffdce0E.exit.i", label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.q = icmp eq i64 %i.s, %.val5.i
  br i1 %i.q, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9f0ae98f18ffdce0E.exit.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.sroa.0.0.i.i.i17 = phi i64 [ %i.s, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.r = getelementptr inbounds nuw [72 x i8], ptr %.val4.i, i64 %.sroa.0.0.i.i.i17
  %i.s = add i64 %.sroa.0.0.i.i.i17, 1            ; 4 uses
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2555f1380cedc520E"(ptr noalias noundef readonly align 8 dereferenceable(72) %i.r)
          to label %bb.g unwind label %bb.i, !noalias !28879, !inline_history !17

bb.h:                                             ; preds = %.lr.ph19
  %i.t = add i64 %.sroa.0.1.i.i.i18, 1            ; 2 uses
  %i.u = icmp eq i64 %i.t, %.val5.i
  br i1 %i.u, label %.body.i6, label %.lr.ph19

bb.i:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = icmp eq i64 %i.s, %.val5.i
  br i1 %i.w, label %.body.i6, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.i, %bb.h
  %.sroa.0.1.i.i.i18 = phi i64 [ %i.t, %bb.h ], [ %i.s, %bb.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %.val4.i, i64 %.sroa.0.1.i.i.i18
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2555f1380cedc520E"(ptr noalias noundef readonly align 8 dereferenceable(72) %i.x) #55
          to label %bb.h unwind label %bb.j, !noalias !28879, !inline_history !17

bb.j:                                             ; preds = %.lr.ph19
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !28879, !inline_history !17
  unreachable

.body.i6:                                         ; preds = %bb.h, %bb.i
  %i.z = icmp eq i64 %i.l, 0
  br i1 %i.z, label %.body9, label %bb.k

bb.k:                                             ; preds = %.body.i6
  %i.aa = mul nuw i64 %i.l, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !28879, !inline_history !107
  br label %.body9

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9f0ae98f18ffdce0E.exit.i": ; preds = %bb.g, %bb.f
  %i.ab = icmp eq i64 %i.l, 0
  br i1 %i.ab, label %bb.p, label %bb.l

bb.l:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9f0ae98f18ffdce0E.exit.i"
  %i.ac = mul nuw i64 %i.l, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !28879, !inline_history !107
  br label %bb.p

.body.i:                                          ; preds = %.body9, %.body.i.i.i.i.i, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.v, %.body9 ], [ %i.ad, %bb.m ], [ %i.ak, %.body.i.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef nonnull align 8 dereferenceable(752) %i.d) #55
          to label %.body unwind label %bb.o, !noalias !28877

bb.m:                                             ; preds = %.noexc.i.i.i.i.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i": ; preds = %bb.c, %bb.d
  store i64 -9223372036854775808, ptr %i.g, align 8, !alias.scope !28880, !noalias !28865
  %.sroa.4.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  store i8 1, ptr %.sroa.4.0..sroa_idx11, align 8, !alias.scope !28880, !noalias !28865
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.d, ptr noundef nonnull align 8 dereferenceable(752) %i.c, i64 752, i1 false), !alias.scope !28881, !noalias !28867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !28882)
  call void @llvm.experimental.noalias.scope.decl(metadata !28883)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28875
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !28884
  %i.ae = call noundef align 8 dereferenceable_or_null(288) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 288, i64 noundef range(i64 1, 9) 8) #52, !noalias !28884 ; 6 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.noexc.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2433afaf03c09d0fE.exit.i.i.i.i.i.i.i"

.noexc.i.i.i.i.i:                                 ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 288, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1063) #57
          to label %.noexc8.i unwind label %bb.m, !noalias !28874

.noexc8.i:                                        ; preds = %.noexc.i.i.i.i.i
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2433afaf03c09d0fE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"
  store i64 4, ptr %i.b, align 8, !noalias !28875
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.ag, align 8, !noalias !28875
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28885)
  call void @llvm.experimental.noalias.scope.decl(metadata !28886)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28871
  invoke void @"_ZN10serde_json5value4from89_$LT$impl$u20$core..convert..From$LT$$RF$str$GT$$u20$for$u20$serde_json..value..Value$GT$4from17hd05b3fca8c5ee438E"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1242, i64 noundef 8)
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.i unwind label %.body.i.i.i.i.i, !noalias !28887

.lr.ph.i.i.i.i.i.i.i.i.i.i.1.i:                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2433afaf03c09d0fE.exit.i.i.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !28870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28871
  invoke void @"_ZN10serde_json5value4from89_$LT$impl$u20$core..convert..From$LT$$RF$str$GT$$u20$for$u20$serde_json..value..Value$GT$4from17hd05b3fca8c5ee438E"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1243, i64 noundef 15)
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.i unwind label %.body.i.i.i.i.i, !noalias !28887

.lr.ph.i.i.i.i.i.i.i.i.i.i.2.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !28870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28871
  invoke void @"_ZN10serde_json5value4from89_$LT$impl$u20$core..convert..From$LT$$RF$str$GT$$u20$for$u20$serde_json..value..Value$GT$4from17hd05b3fca8c5ee438E"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1244, i64 noundef 4)
          to label %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.i unwind label %.body.i.i.i.i.i, !noalias !28887

.lr.ph.i.i.i.i.i.i.i.i.i.i.3.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !28870
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28871
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28871
  invoke void @"_ZN10serde_json5value4from89_$LT$impl$u20$core..convert..From$LT$$RF$str$GT$$u20$for$u20$serde_json..value..Value$GT$4from17hd05b3fca8c5ee438E"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1245, i64 noundef 6)
          to label %bb.e unwind label %.body.i.i.i.i.i, !noalias !28887

.body.i.i.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2433afaf03c09d0fE.exit.i.i.i.i.i.i.i"
  %.val5.i.i.i.i.i.i.i.i.i.i.lcssa.i = phi i64 [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h2433afaf03c09d0fE.exit.i.i.i.i.i.i.i" ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.1.i ], [ 2, %.lr.ph.i.i.i.i.i.i.i.i.i.i.2.i ], [ 3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.3.i ]
  %i.ak = landingpad { ptr, i32 }
end_hunk_7
begin_hunk_8_@"_ZN84_$LT$milli..vector..settings..SubEmbeddingSettings$u20$as$u20$core..clone..Clone$GT$5clone17h961af7b9bf850de1E":bb.a
bb.cg:                                            ; preds = %bb.cd
  store i64 -9223372036854775802, ptr %i.m, align 8
  br label %bb.ck

"_ZN4core3ptr85drop_in_place$LT$milli..update..settings..Setting$LT$serde_json..value..Value$GT$$GT$17h5da44f66cee7e7eaE.exit51": ; preds = %bb.cn, %bb.co, %bb.ci
  %.pn = phi { ptr, i32 } [ %i.eb, %bb.ci ], [ %i.ef, %bb.co ], [ %i.ef, %bb.cn ] ; 2 uses
  br i1 %i.do, label %bb.ch, label %"_ZN4core3ptr154drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$$GT$17h66a9bfbc6593ad65E.exit"

bb.ch:                                            ; preds = %"_ZN4core3ptr85drop_in_place$LT$milli..update..settings..Setting$LT$serde_json..value..Value$GT$$GT$17h5da44f66cee7e7eaE.exit51"
  %i.ea = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$17ha5b982ce81f73526E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.ea)
          to label %"_ZN4core3ptr154drop_in_place$LT$milli..update..settings..Setting$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..string..String$GT$$GT$$GT$17h66a9bfbc6593ad65E.exit" unwind label %bb.cr

bb.ci:                                            ; preds = %bb.ce
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr85drop_in_place$LT$milli..update..settings..Setting$LT$serde_json..value..Value$GT$$GT$17h5da44f66cee7e7eaE.exit51"

bb.cj:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.cg, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613)
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !range !96, !noundef !21
  %i.ee = call i64 @llvm.usub.sat.i64(i64 %i.ed, i64 -9223372036854775804)
  switch i64 %i.ee, label %default.unreachable96 [
    i64 0, label %bb.cl
    i64 1, label %bb.cq
    i64 2, label %bb.cm
  ]

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ec)
          to label %bb.cp unwind label %bb.cn

bb.cm:                                            ; preds = %bb.ck
  br label %bb.cq

bb.cn:                                            ; preds = %bb.cl
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = load i64, ptr %i.m, align 8, !range !96, !alias.scope !29154, !noundef !21
  %i.eh = icmp ult i64 %i.eg, -9223372036854775803
  br i1 %i.eh, label %bb.co, label %"_ZN4core3ptr85drop_in_place$LT$milli..update..settings..Setting$LT$serde_json..value..Value$GT$$GT$17h5da44f66cee7e7eaE.exit51"

bb.co:                                            ; preds = %bb.cn
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2555f1380cedc520E"(ptr noalias noundef readonly align 8 dereferenceable(72) %i.m)
          to label %"_ZN4core3ptr85drop_in_place$LT$milli..update..settings..Setting$LT$serde_json..value..Value$GT$$GT$17h5da44f66cee7e7eaE.exit51" unwind label %bb.cr

bb.cp:                                            ; preds = %bb.cl
  %.sroa.011.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.613, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.613.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.ck, %bb.cp, %bb.cm
  %.sroa.011.0 = phi i64 [ %.sroa.011.0.copyload, %bb.cp ], [ -9223372036854775802, %bb.cm ], [ -9223372036854775803, %bb.ck ]
  %i.ei = icmp eq i32 %i.dq, 0
  %.sroa.67.0 = select i1 %i.ei, i64 %.sroa.67.0.copyload, i64 undef
  %i.ej = icmp eq i64 %i.bf, 0
  %.sroa.64.0 = select i1 %i.ej, i64 %i.bh, i64 undef
  %i.ek = icmp eq i64 %i.av, 0
  %.sroa.6.0 = select i1 %i.ek, i64 %i.ax, i64 undef
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 550
  store i8 %.sroa.0.0, ptr %i.el, align 2
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.sroa.0.089, ptr %i.em, align 8
  %.sroa.7.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx53, align 8
  %.sroa.8.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx55, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %.sroa.057.0, ptr %i.en, align 8
  %.sroa.759.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sroa.759.0, ptr %.sroa.759.0..sroa_idx60, align 8
  %.sroa.862.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %.sroa.862.0, ptr %.sroa.862.0..sroa_idx63, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 549
  store i8 %.sroa.01.0, ptr %i.eo, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.sroa.065.0, ptr %i.ep, align 8
  %.sroa.767.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %.sroa.767.0, ptr %.sroa.767.0..sroa_idx68, align 8
  %.sroa.870.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %.sroa.870.0, ptr %.sroa.870.0..sroa_idx71, align 8
  store i64 %i.av, ptr %0, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %.sroa.073.0, ptr %i.er, align 8
  %.sroa.775.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %.sroa.775.0, ptr %.sroa.775.0..sroa_idx76, align 8
  %.sroa.878.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %.sroa.878.0, ptr %.sroa.878.0..sroa_idx79, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bf, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.64.0, ptr %i.et, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %.sroa.081.0, ptr %i.eu, align 8
  %.sroa.783.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %.sroa.783.0, ptr %.sroa.783.0..sroa_idx84, align 8
  %.sroa.886.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %.sroa.886.0, ptr %.sroa.886.0..sroa_idx87, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ev, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ew, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ex, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ey, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ez, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i32 %i.dq, ptr %i.fa, align 8
  %.sroa.67.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 540
  store i64 %.sroa.67.0, ptr %.sroa.67.0..sroa_idx8, align 4
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 548
  store i8 %.sroa.010.0, ptr %i.fb, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fc, ptr noundef nonnull align 8 dereferenceable(72) %i.m, i64 72, i1 false)
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 %.sroa.011.0, ptr %i.fd, align 8
  %.sroa.613.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.613.0..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.613, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void

bb.cr:                                            ; preds = %bb.co, %bb.ch, %bb.by, %bb.bn, %bb.bg, %bb.ba
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h4a483978f1404473E.exit": ; preds = %bb.k, %"_ZN4core3ptr82drop_in_place$LT$milli..update..settings..Setting$LT$alloc..string..String$GT$$GT$17h4a483978f1404473E.exit28"
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef range(i16 30, 215) i16 @"_ZN84_$LT$tempfile..file..PersistError$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h62f4f574420d0092E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !29157, !nonnull !21, !noundef !21 ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %bb.b
    i64 3, label %bb.c
    i64 0, label %"_ZN77_$LT$std..io..error..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h9fa5a082e959804dE.exit"
    i64 1, label %"_ZN77_$LT$std..io..error..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h9fa5a082e959804dE.exit"
  ], !prof !53

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 32
  %i.e = trunc nuw i64 %i.d to i32
  %switch.tableidx = add i32 %i.e, -5             ; 2 uses
  %i.f = icmp ult i32 %switch.tableidx, 24
  br i1 %i.f, label %switch.lookup, label %"_ZN77_$LT$std..io..error..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h9fa5a082e959804dE.exit"

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ult ptr %i.a, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.g)
  br label %"_ZN77_$LT$std..io..error..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h9fa5a082e959804dE.exit"

switch.lookup:                                    ; preds = %bb.b
  %i.h = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN84_$LT$tempfile..file..PersistError$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h62f4f574420d0092E", i64 %i.h
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  br label %"_ZN77_$LT$std..io..error..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h9fa5a082e959804dE.exit"

"_ZN77_$LT$std..io..error..Error$u20$as$u20$meilisearch_types..error..ErrorCode$GT$10error_code17h9fa5a082e959804dE.exit": ; preds = %switch.lookup, %bb.b, %bb.a, %bb.a, %bb.c
  %.sroa.0.0.i = phi i16 [ 30, %bb.c ], [ %switch.ext, %switch.lookup ], [ 30, %bb.a ], [ 30, %bb.a ], [ 30, %bb.b ]
  ret i16 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN85_$LT$meilisearch_types..error..DeserrParseBoolError$u20$as$u20$core..fmt..Display$GT$3fmt17h36d08b8cfbb6bde8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29160
  store ptr @1914, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !29160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN85_$LT$meilisearch_types..error..InvalidTaskDateError$u20$as$u20$core..fmt..Display$GT$3fmt17hd11cc5813adb02a8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29163
  store ptr @1916, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !29163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN85_$LT$meilisearch_types..index_uid..IndexUid$u20$as$u20$core..str..traits..FromStr$GT$8from_str17haf666c177dc6229eE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !30

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %"_ZN110_$LT$meilisearch_types..index_uid..IndexUid$u20$as$u20$core..convert..TryFrom$LT$alloc..string..String$GT$$GT$8try_from17ha4b968740e7b46a6E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !29180
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #52, !noalias !29180 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit"

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1964) #57, !noalias !29181
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !29182
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29184)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %2 ; 4 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit", %.backedge.i.i
  %i.f = phi ptr [ %i.ao, %.backedge.i.i ], [ %i.c, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hc70a2aadc10fd5c8E.exit" ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 3 uses
  %i.h = load i8, ptr %i.f, align 1, !noalias !29185, !noundef !21 ; 5 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %bb.c, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd691fe9520398c3eE.exit12.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd691fe9520398c3eE.exit12.i.i.i.i": ; preds = %.lr.ph.i.i
  %i.j = and i8 %i.h, 31
  %i.k = zext nneg i8 %i.j to i32                 ; 3 uses
  %i.l = icmp ne ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 3 uses
  %i.n = load i8, ptr %i.g, align 1, !noalias !29185, !noundef !21
  %i.o = shl nuw nsw i32 %i.k, 6
  %i.p = and i8 %i.n, 63
  %i.q = zext nneg i8 %i.p to i32                 ; 2 uses
  %i.r = or disjoint i32 %i.o, %i.q
  %i.s = icmp samesign ugt i8 %i.h, -33
  br i1 %i.s, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd691fe9520398c3eE.exit14.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i"

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.t = zext nneg i8 %i.h to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd691fe9520398c3eE.exit14.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd691fe9520398c3eE.exit12.i.i.i.i"
  %i.u = icmp ne ptr %i.m, %i.e
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 3 ; 3 uses
  %i.w = load i8, ptr %i.m, align 1, !noalias !29185, !noundef !21
  %i.x = shl nuw nsw i32 %i.q, 6
  %i.y = and i8 %i.w, 63
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
  %i.ab = shl nuw nsw i32 %i.k, 12
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = icmp samesign ugt i8 %i.h, -17
  br i1 %i.ad, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd691fe9520398c3eE.exit14.i.i.i.i"
  %i.ae = icmp ne ptr %i.v, %i.e
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ag = load i8, ptr %i.v, align 1, !noalias !29185, !noundef !21
  %i.ah = shl nuw nsw i32 %i.k, 18
  %i.ai = and i32 %i.ah, 1835008
  %i.aj = shl nuw nsw i32 %i.aa, 6
  %i.ak = and i8 %i.ag, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = or disjoint i32 %i.am, %i.ai            ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.an, 1114112
  br i1 %.not.not.i.i, label %.loopexit.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd691fe9520398c3eE.exit14.i.i.i.i", %bb.c, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd691fe9520398c3eE.exit12.i.i.i.i"
  %i.ao = phi ptr [ %i.af, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i" ], [ %i.v, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd691fe9520398c3eE.exit14.i.i.i.i" ], [ %i.m, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd691fe9520398c3eE.exit12.i.i.i.i" ], [ %i.g, %bb.c ] ; 2 uses
  %spec.select.i8.i.i = phi i32 [ %i.an, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i" ], [ %i.ac, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd691fe9520398c3eE.exit14.i.i.i.i" ], [ %i.r, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd691fe9520398c3eE.exit12.i.i.i.i" ], [ %i.t, %bb.c ] ; 6 uses
  %i.ap = icmp samesign ugt i32 %spec.select.i8.i.i, 64
  %i.aq = icmp samesign ugt i32 %spec.select.i8.i.i, 96
  %i.ar = icmp samesign ugt i32 %spec.select.i8.i.i, 122
  %i.as = icmp samesign ugt i32 %spec.select.i8.i.i, 90
  %i.at = add nsw i32 %spec.select.i8.i.i, -58
  %i.au = icmp ult i32 %i.at, -10
  %i.av = select i1 %i.ap, i1 %i.as, i1 %i.au
  %.sroa.03.0.i.not.i.i.i = select i1 %i.aq, i1 %i.ar, i1 %i.av
  %i.aw = freeze i1 %.sroa.03.0.i.not.i.i.i
  br i1 %i.aw, label %switch.early.test.i.i, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %switch.early.test.i.i, %switch.early.test.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i"
  %.not.i.i.i = icmp eq ptr %i.ao, %i.e
  br i1 %.not.i.i.i, label %.loopexit.i, label %.lr.ph.i.i

switch.early.test.i.i:                            ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.thread.i.i"
  switch i32 %spec.select.i8.i.i, label %"_ZN110_$LT$meilisearch_types..index_uid..IndexUid$u20$as$u20$core..convert..TryFrom$LT$alloc..string..String$GT$$GT$8try_from17ha4b968740e7b46a6E.exit" [
    i32 95, label %.backedge.i.i
    i32 45, label %.backedge.i.i
  ]

.loopexit.i:                                      ; preds = %.backedge.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb214f159a557b99E.exit.i.i"
  %i.ax = icmp sgt i64 %2, 400
  %spec.select.i = zext i1 %i.ax to i64
  br label %"_ZN110_$LT$meilisearch_types..index_uid..IndexUid$u20$as$u20$core..convert..TryFrom$LT$alloc..string..String$GT$$GT$8try_from17ha4b968740e7b46a6E.exit"

"_ZN110_$LT$meilisearch_types..index_uid..IndexUid$u20$as$u20$core..convert..TryFrom$LT$alloc..string..String$GT$$GT$8try_from17ha4b968740e7b46a6E.exit": ; preds = %switch.early.test.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %.loopexit.i
  %.sroa.10.0.i.i9 = phi ptr [ %i.c, %.loopexit.i ], [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.c, %switch.early.test.i.i ]
  %storemerge.i = phi i64 [ %spec.select.i, %.loopexit.i ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ 1, %switch.early.test.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.ay, align 8, !alias.scope !29186
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i9, ptr %.sroa.4.0..sroa_idx2, align 8, !alias.scope !29186
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %2, ptr %.sroa.5.0..sroa_idx4, align 8, !alias.scope !29186
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !29183, !noalias !29184
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN85_$LT$meilisearch_types..keys..PatchApiKey$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17hb8e3badfe6cbad73E"(ptr dead_on_unwind noalias noundef writable sret([752 x i8]) align 8 captures(address) dereferenceable(752) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [752 x i8], align 8               ; 9 uses
  %i.d = alloca [752 x i8], align 8               ; 9 uses
  %i.e = alloca [752 x i8], align 8               ; 4 uses
  %i.f = alloca [752 x i8], align 8               ; 5 uses
  %i.g = alloca [752 x i8], align 8               ; 4 uses
  %i.h = alloca [752 x i8], align 8               ; 5 uses
  %i.i = alloca [752 x i8], align 8               ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 7 uses
  %i.k = alloca [72 x i8], align 8                ; 3 uses
  %i.l = alloca [752 x i8], align 8               ; 9 uses
  %i.m = alloca [752 x i8], align 8               ; 9 uses
  %i.n = alloca [752 x i8], align 8               ; 4 uses
  %i.o = alloca [752 x i8], align 8               ; 5 uses
  %i.p = alloca [752 x i8], align 8               ; 4 uses
  %i.q = alloca [752 x i8], align 8               ; 5 uses
  %i.r = alloca [752 x i8], align 8               ; 4 uses
  %i.s = alloca [752 x i8], align 8               ; 8 uses
  %i.t = alloca [752 x i8], align 8               ; 9 uses
  %i.u = alloca [752 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_ZN6utoipa7openapi6schema13ObjectBuilder3new17h06eaf1af98be7f92E(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.s)
          to label %bb.c unwind label %bb.b

.body70:                                          ; preds = %bb.ai, %bb.r, %bb.d, %bb.b, %.thread104, %.thread121
  %.pn15 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.d ], [ %.pn13120, %.thread121 ], [ %lpad.thr_comm.split-lp127, %bb.r ], [ %.pn103, %.thread104 ], [ %i.v, %bb.b ], [ %i.bb, %bb.ai ]
  invoke fastcc void @"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$$GT$17hc4ca8fdd1615b75fE"(ptr noalias noundef align 8 dereferenceable(24) %1) #55
          to label %common.resume unwind label %bb.ar

bb.b:                                             ; preds = %bb.al, %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body70

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.q, ptr noundef nonnull align 8 dereferenceable(752) %i.s, i64 752, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_ZN6utoipa7openapi6schema13ObjectBuilder3new17h06eaf1af98be7f92E(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.l)
          to label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i" unwind label %.thread108

.thread108:                                       ; preds = %bb.l, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread104

bb.d:                                             ; preds = %bb.p
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
end_hunk_8
begin_hunk_9_@"_ZN88_$LT$meilisearch_types..error..ResponseError$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17h2c7be11ee43ce3ebE":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke fastcc void @_ZN6utoipa7openapi6schema13ObjectBuilder8required17he97fc5f24a6af13aE(ptr noalias noundef align 8 captures(address) dereferenceable(752) %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(752) %i.o, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @105, i64 noundef 4)
          to label %bb.ak unwind label %bb.c

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.af, ptr noundef nonnull align 8 dereferenceable(752) %i.p, i64 752, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.f, ptr noundef nonnull align 8 dereferenceable(752) %i.af, i64 752, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_ZN6utoipa7openapi6schema13ObjectBuilder3new17h06eaf1af98be7f92E(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.c)
          to label %bb.al unwind label %.body73.thread125

.body73.thread125:                                ; preds = %bb.ak
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body73.thread

.body73:                                          ; preds = %bb.at
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.al:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !32164)
  call void @llvm.experimental.noalias.scope.decl(metadata !32165)
  call void @llvm.experimental.noalias.scope.decl(metadata !32166)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 432 ; 2 uses
  %.val.i63 = load i64, ptr %i.bn, align 8, !range !24, !alias.scope !32165, !noalias !32167, !noundef !21 ; 3 uses
  %i.bo = icmp ne i64 %.val.i63, -9223372036854775807
  call void @llvm.assume(i1 %i.bo)
  %or.cond.i.i64 = icmp slt i64 %.val.i63, 1
  br i1 %or.cond.i.i64, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %.val2.i65 = load ptr, ptr %i.bp, align 8, !alias.scope !32165, !noalias !32167, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i65, i64 noundef %.val.i63, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !32168
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  store i64 -9223372036854775808, ptr %i.bn, align 8, !alias.scope !32169, !noalias !32164
  %.sroa.3.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  store i8 1, ptr %.sroa.3.0..sroa_idx79, align 8, !alias.scope !32169, !noalias !32164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.d, ptr noundef nonnull align 8 dereferenceable(752) %i.c, i64 752, i1 false), !alias.scope !32170, !noalias !32166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !32171)
  call void @llvm.experimental.noalias.scope.decl(metadata !32172)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !32173
  %i.bq = call noundef dereferenceable_or_null(54) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 54, i64 noundef range(i64 1, 9) 1) #52, !noalias !32173 ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 54, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1964) #57
          to label %.noexc.i72 unwind label %bb.aq, !noalias !32174

.noexc.i72:                                       ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.ar
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  %.val11.i71 = load ptr, ptr %i.bs, align 8, !alias.scope !32172, !noalias !32175, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i71, i64 noundef %.val.i67, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !32176
  br label %bb.at

bb.aq:                                            ; preds = %bb.ao
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef nonnull align 8 dereferenceable(752) %i.d) #55
          to label %.body73.thread unwind label %bb.as, !noalias !32175

bb.ar:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %i.bq, ptr noundef nonnull readonly align 1 dereferenceable(54) @2022, i64 54, i1 false), !noalias !32177
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 336 ; 2 uses
  %.val.i67 = load i64, ptr %i.bu, align 8, !range !25, !alias.scope !32172, !noalias !32175, !noundef !21 ; 2 uses
  %switch.i68 = icmp sgt i64 %.val.i67, 0
  br i1 %switch.i68, label %bb.ap, label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !32174
  unreachable

bb.at:                                            ; preds = %bb.ap, %bb.ar
  store i64 54, ptr %i.bu, align 8, !alias.scope !32172, !noalias !32175
  %.sroa.6.0..sroa_idx7.i69 = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  store ptr %i.bq, ptr %.sroa.6.0..sroa_idx7.i69, align 8, !alias.scope !32172, !noalias !32175
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx7.sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  store i64 54, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx7.sroa_idx.i70, align 8, !alias.scope !32172, !noalias !32175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.e, ptr noundef nonnull align 8 dereferenceable(752) %i.d, i64 752, i1 false), !alias.scope !32178, !noalias !32179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_ZN6utoipa7openapi6schema13ObjectBuilder8property17hea34fe50d96f11a2E(ptr noalias noundef align 8 captures(address) dereferenceable(752) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(752) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @165, i64 noundef 4, ptr noalias noundef align 8 captures(address) dereferenceable(752) %i.e)
          to label %bb.au unwind label %.body73

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_ZN6utoipa7openapi6schema13ObjectBuilder8required17he97fc5f24a6af13aE(ptr noalias noundef align 8 captures(address) dereferenceable(752) %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(752) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @165, i64 noundef 4)
          to label %bb.av unwind label %bb.c

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.af, ptr noundef nonnull align 8 dereferenceable(752) %i.h, i64 752, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.ag, ptr noundef nonnull align 8 dereferenceable(752) %i.af, i64 752, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  invoke void @"_ZN6utoipa7openapi6schema157_$LT$impl$u20$core..convert..From$LT$utoipa..openapi..schema..ObjectBuilder$GT$$u20$for$u20$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$4from17h18fe66201e37aeb5E"(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(752) %i.ag)
          to label %bb.aw unwind label %bb.c

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.experimental.noalias.scope.decl(metadata !32180)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !32181, !nonnull !21, !noundef !21 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !32181, !noundef !21
  invoke fastcc void @"_ZN4core3ptr92drop_in_place$LT$$u5b$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$u5d$$GT$17h9c20bce28d094aecE"(ptr noalias noundef nonnull align 8 %i.bx, i64 noundef %i.bz)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5c97d73e757b972cE.exit.i" unwind label %bb.ax, !noalias !32180, !inline_history !0

bb.ax:                                            ; preds = %bb.aw
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i76 = load i64, ptr %1, align 8, !range !22, !alias.scope !32180, !noundef !21 ; 2 uses
  %i.cb = icmp eq i64 %.val2.i76, 0
  br i1 %i.cb, label %common.resume, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cc = mul nuw i64 %.val2.i76, 752
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !32180, !inline_history !26
  br label %common.resume

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5c97d73e757b972cE.exit.i": ; preds = %bb.aw
  %.val.i77 = load i64, ptr %1, align 8, !range !22, !alias.scope !32180, !noundef !21 ; 2 uses
  %i.cd = icmp eq i64 %.val.i77, 0
  br i1 %i.cd, label %"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$$GT$17hc4ca8fdd1615b75fE.exit", label %bb.az

bb.az:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5c97d73e757b972cE.exit.i"
  %i.ce = mul nuw i64 %.val.i77, 752
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !32180, !inline_history !26
  br label %"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$$GT$17hc4ca8fdd1615b75fE.exit"

common.resume:                                    ; preds = %bb.b, %bb.ax, %bb.ay
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %bb.ax ], [ %i.ca, %bb.ay ], [ %.pn38, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$$GT$17hc4ca8fdd1615b75fE.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5c97d73e757b972cE.exit.i", %bb.az
  ret void

.body73.thread:                                   ; preds = %bb.aq, %.body73.thread125
  %eh.lpad-body74124 = phi { ptr, i32 } [ %i.bl, %.body73.thread125 ], [ %i.bt, %bb.aq ]
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef align 8 dereferenceable(752) %i.af) #55
          to label %bb.b unwind label %bb.ba

bb.ba:                                            ; preds = %.body.thread, %.thread, %.thread111, %.body73.thread, %bb.b
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.bb:                                            ; preds = %bb.ae, %bb.af
  call fastcc void @"_ZN4core3ptr56drop_in_place$LT$utoipa..openapi..schema..RefBuilder$GT$17hc908791b162762d0E"(ptr noalias noundef align 8 dereferenceable(72) %i.t) #55
  br label %.thread111

.thread111:                                       ; preds = %bb.bb, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit61", %.thread115
  %.pn36114 = phi { ptr, i32 } [ %i.bf, %.thread115 ], [ %i.bk, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit61" ], [ %i.bj, %bb.bb ]
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef align 8 dereferenceable(752) %i.n) #55
          to label %bb.b unwind label %bb.ba

bb.bc:                                            ; preds = %bb.u, %bb.v
  call fastcc void @"_ZN4core3ptr56drop_in_place$LT$utoipa..openapi..schema..RefBuilder$GT$17hc908791b162762d0E"(ptr noalias noundef align 8 dereferenceable(72) %i.u) #55
  br label %.thread

.thread:                                          ; preds = %bb.bc, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit", %.thread103
  %.pn32102 = phi { ptr, i32 } [ %i.aw, %.thread103 ], [ %i.bc, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit" ], [ %i.bb, %bb.bc ]
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef align 8 dereferenceable(752) %i.w) #55
          to label %bb.b unwind label %bb.ba

.body.thread:                                     ; preds = %bb.j, %.body.thread98
  %eh.lpad-body97 = phi { ptr, i32 } [ %i.ai, %.body.thread98 ], [ %i.aq, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef align 8 dereferenceable(752) %i.af) #55
          to label %bb.b unwind label %bb.ba
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN88_$LT$meilisearch_types..index_uid..IndexUidFormatError$u20$as$u20$core..fmt..Display$GT$3fmt17hb4841e7fde9d2724E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32184
  store ptr @2024, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !32184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN88_$LT$meilisearch_types..settings..ProximityPrecisionView$u20$as$u20$utoipa..ToSchema$GT$7schemas17h1557e6ebff4f616dE"(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$meilisearch_types..batch_view..BatchView$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17hd53a55022193605bE"(ptr dead_on_unwind noalias noundef writable sret([752 x i8]) align 8 captures(address) dereferenceable(752) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [752 x i8], align 8               ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [752 x i8], align 8               ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.0385 = alloca [24 x i8], align 8         ; 4 uses
  %.sroa.9395 = alloca [24 x i8], align 8         ; 4 uses
  %.sroa.0375 = alloca [24 x i8], align 8         ; 4 uses
  %.sroa.9 = alloca [24 x i8], align 8            ; 4 uses
  %i.i = alloca [752 x i8], align 8               ; 7 uses
  %i.j = alloca [752 x i8], align 8               ; 9 uses
  %i.k = alloca [752 x i8], align 8               ; 4 uses
  %i.l = alloca [752 x i8], align 8               ; 4 uses
  %i.m = alloca [752 x i8], align 8               ; 4 uses
  %i.n = alloca [752 x i8], align 8               ; 9 uses
  %i.o = alloca [752 x i8], align 8               ; 4 uses
  %i.p = alloca [752 x i8], align 8               ; 9 uses
  %i.q = alloca [752 x i8], align 8               ; 4 uses
  %i.r = alloca [752 x i8], align 8               ; 4 uses
  %i.s = alloca [752 x i8], align 8               ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [752 x i8], align 8               ; 7 uses
  %i.v = alloca [752 x i8], align 8               ; 4 uses
  %i.w = alloca [752 x i8], align 8               ; 9 uses
  %i.x = alloca [752 x i8], align 8               ; 4 uses
  %i.y = alloca [752 x i8], align 8               ; 4 uses
  %i.z = alloca [752 x i8], align 8               ; 4 uses
  %i.aa = alloca [752 x i8], align 8              ; 9 uses
  %i.ab = alloca [752 x i8], align 8              ; 9 uses
  %i.ac = alloca [752 x i8], align 8              ; 4 uses
  %i.ad = alloca [752 x i8], align 8              ; 4 uses
  %i.ae = alloca [752 x i8], align 8              ; 4 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 2 uses
  %i.ai = alloca [72 x i8], align 8               ; 4 uses
  %i.aj = alloca [72 x i8], align 8               ; 4 uses
  %i.ak = alloca [752 x i8], align 8              ; 5 uses
  %i.al = alloca [752 x i8], align 8              ; 4 uses
  %i.am = alloca [752 x i8], align 8              ; 4 uses
  %i.an = alloca [752 x i8], align 8              ; 9 uses
  %i.ao = alloca [752 x i8], align 8              ; 4 uses
  %i.ap = alloca [752 x i8], align 8              ; 4 uses
  %i.aq = alloca [752 x i8], align 8              ; 4 uses
  %i.ar = alloca [752 x i8], align 8              ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 8 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [24 x i8], align 8               ; 2 uses
  %i.av = alloca [72 x i8], align 8               ; 9 uses
  %i.aw = alloca [72 x i8], align 8               ; 6 uses
  %i.ax = alloca [752 x i8], align 8              ; 6 uses
  %i.ay = alloca [752 x i8], align 8              ; 4 uses
  %i.az = alloca [408 x i8], align 8              ; 20 uses
  %i.ba = alloca [408 x i8], align 8              ; 10 uses
  %i.bb = alloca [408 x i8], align 8              ; 4 uses
  %i.bc = alloca [752 x i8], align 8              ; 5 uses
  %i.bd = alloca [752 x i8], align 8              ; 4 uses
  %i.be = alloca [24 x i8], align 8               ; 8 uses
  %i.bf = alloca [16 x i8], align 8               ; 5 uses
  %i.bg = alloca [24 x i8], align 8               ; 2 uses
  %i.bh = alloca [72 x i8], align 8               ; 21 uses
  %i.bi = alloca [72 x i8], align 8               ; 9 uses
  %i.bj = alloca [72 x i8], align 8               ; 4 uses
  %i.bk = alloca [752 x i8], align 8              ; 5 uses
  %i.bl = alloca [752 x i8], align 8              ; 4 uses
  %i.bm = alloca [752 x i8], align 8              ; 4 uses
  %i.bn = alloca [752 x i8], align 8              ; 25 uses
  %i.bo = alloca [752 x i8], align 8              ; 9 uses
  %i.bp = alloca [752 x i8], align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  invoke void @_ZN6utoipa7openapi6schema13ObjectBuilder3new17h06eaf1af98be7f92E(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.bn)
          to label %bb.c unwind label %bb.b

.body225:                                         ; preds = %bb.cz, %.body213, %bb.cc, %.body168, %bb.bg, %bb.ax, %.body127, %.body109, %bb.g, %bb.b, %.thread, %bb.dn, %.body127.thread, %.thread300, %.thread316, %.body168.thread, %.thread332, %.body213.thread
  %.pn95 = phi { ptr, i32 } [ %i.bw, %bb.g ], [ %eh.lpad-body214343, %.body213.thread ], [ %i.fz, %.body213 ], [ %.pn93331, %.thread332 ], [ %lpad.thr_comm.split-lp337, %bb.cc ], [ %eh.lpad-body169323, %.body168.thread ], [ %lpad.thr_comm.split-lp, %.body168 ], [ %.pn91315, %.thread316 ], [ %i.em, %bb.bg ], [ %.pn89303, %.thread300 ], [ %i.eg, %bb.ax ], [ %eh.lpad-body128296, %.body127.thread ], [ %i.dw, %.body127 ], [ %.pn85.ph, %bb.dn ], [ %i.du, %.body109 ], [ %.pn79267, %.thread ], [ %i.bq, %bb.b ], [ %i.gm, %bb.cz ]
  invoke fastcc void @"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$$GT$17hc4ca8fdd1615b75fE"(ptr noalias noundef align 8 dereferenceable(24) %1) #55
          to label %common.resume unwind label %bb.dh

bb.b:                                             ; preds = %bb.dc, %bb.be, %bb.au, %bb.n, %bb.a
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body225

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.bk, ptr noundef nonnull align 8 dereferenceable(752) %i.bn, i64 752, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store i64 0, ptr %i.bh, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %.sroa.4.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx24, align 8
  %.sroa.5.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 2 uses
  %.sroa.4.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx28, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx26, align 8
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  store i64 0, ptr %.sroa.5.0..sroa_idx30, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0375)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0375, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  %.sroa.4.0..sroa_idx376 = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx376, align 8 ; 2 uses
  %.sroa.6379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %.sroa.6379.0.copyload = load ptr, ptr %.sroa.6379.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !32487)
  call void @llvm.experimental.noalias.scope.decl(metadata !32488)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !32489
  %i.bs = call noundef dereferenceable_or_null(205) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 205, i64 noundef range(i64 1, 9) 1) #52, !noalias !32489 ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 205, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1964) #57
          to label %.noexc.i unwind label %.thread268, !noalias !32490

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6379.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6379.0.copyload, i64 noundef %.sroa.4.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !32491
  br label %bb.h

.thread268:                                       ; preds = %bb.d
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr56drop_in_place$LT$utoipa..openapi..schema..RefBuilder$GT$17hc908791b162762d0E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bh) #55
  br label %.thread

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(205) %i.bs, ptr noundef nonnull readonly align 1 dereferenceable(205) @2025, i64 205, i1 false), !noalias !32492
  %i.bv = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %i.bv, label %bb.h, label %bb.e

bb.g:                                             ; preds = %bb.m
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body225

bb.h:                                             ; preds = %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0375, i64 24, i1 false), !alias.scope !32493, !noalias !32494
  %.sroa.4.0..sroa_idx377 = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i64 205, ptr %.sroa.4.0..sroa_idx377, align 8, !alias.scope !32493, !noalias !32494
  %.sroa.6379.0..sroa_idx380 = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr %i.bs, ptr %.sroa.6379.0..sroa_idx380, align 8, !alias.scope !32493, !noalias !32494
  %.sroa.8.0..sroa_idx382 = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store i64 205, ptr %.sroa.8.0..sroa_idx382, align 8, !alias.scope !32493, !noalias !32494
  %.sroa.9.0..sroa_idx384 = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx384, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9, i64 24, i1 false), !alias.scope !32493, !noalias !32494
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0375)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  store ptr @1252, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 3, ptr %i.by, align 8
  store i64 -9223372036854775808, ptr %i.be, align 8
  store ptr %i.be, ptr %i.bf, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h0c767a96d02e06c6E", ptr %.sroa.435.0..sroa_idx, align 8
end_hunk_9
begin_hunk_10_@"_ZN89_$LT$meilisearch_types..batch_view..BatchView$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17hd53a55022193605bE":bb.a

bb.cv:                                            ; preds = %bb.cr, %bb.ct
  store i64 201, ptr %i.gh, align 8, !alias.scope !32624, !noalias !32627
  %.sroa.6.0..sroa_idx7.i208 = getelementptr inbounds nuw i8, ptr %i.j, i64 344
  store ptr %i.gd, ptr %.sroa.6.0..sroa_idx7.i208, align 8, !alias.scope !32624, !noalias !32627
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx7.sroa_idx.i209 = getelementptr inbounds nuw i8, ptr %i.j, i64 352
  store i64 201, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx7.sroa_idx.i209, align 8, !alias.scope !32624, !noalias !32627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.k, ptr noundef nonnull align 8 dereferenceable(752) %i.j, i64 752, i1 false), !alias.scope !32630, !noalias !32631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke fastcc void @_ZN6utoipa7openapi6schema13ObjectBuilder8property17hea34fe50d96f11a2E(ptr noalias noundef align 8 captures(address) dereferenceable(752) %i.m, ptr noalias noundef align 8 captures(address) dereferenceable(752) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2035, i64 noundef 13, ptr noalias noundef align 8 captures(address) dereferenceable(752) %i.k)
          to label %bb.cw unwind label %.body213

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.bn, ptr noundef nonnull align 8 dereferenceable(752) %i.m, i64 752, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.bo, ptr noundef nonnull align 8 dereferenceable(752) %i.bn, i64 752, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.experimental.noalias.scope.decl(metadata !32632)
  call void @llvm.experimental.noalias.scope.decl(metadata !32633)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !32634
  %i.gj = call noundef dereferenceable_or_null(57) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 57, i64 noundef range(i64 1, 9) 1) #52, !noalias !32634 ; 3 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 57, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1964) #57
          to label %.noexc.i224 unwind label %bb.cz, !noalias !32635

.noexc.i224:                                      ; preds = %bb.cx
  unreachable

bb.cy:                                            ; preds = %bb.da
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bo, i64 344
  %.val11.i222 = load ptr, ptr %i.gl, align 8, !alias.scope !32633, !noalias !32636, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i222, i64 noundef %.val.i218, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !32637
  br label %bb.dc

bb.cz:                                            ; preds = %bb.cx
  %i.gm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef nonnull align 8 dereferenceable(752) %i.bo) #55
          to label %.body225 unwind label %bb.db, !noalias !32636

bb.da:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(57) %i.gj, ptr noundef nonnull readonly align 1 dereferenceable(57) @2036, i64 57, i1 false), !noalias !32638
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bo, i64 336 ; 2 uses
  %.val.i218 = load i64, ptr %i.gn, align 8, !range !25, !alias.scope !32633, !noalias !32636, !noundef !21 ; 2 uses
  %switch.i219 = icmp sgt i64 %.val.i218, 0
  br i1 %switch.i219, label %bb.cy, label %bb.dc

bb.db:                                            ; preds = %bb.cz
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !32635
  unreachable

bb.dc:                                            ; preds = %bb.cy, %bb.da
  store i64 57, ptr %i.gn, align 8, !alias.scope !32633, !noalias !32636
  %.sroa.6.0..sroa_idx7.i220 = getelementptr inbounds nuw i8, ptr %i.bo, i64 344
  store ptr %i.gj, ptr %.sroa.6.0..sroa_idx7.i220, align 8, !alias.scope !32633, !noalias !32636
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx7.sroa_idx.i221 = getelementptr inbounds nuw i8, ptr %i.bo, i64 352
  store i64 57, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx7.sroa_idx.i221, align 8, !alias.scope !32633, !noalias !32636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %i.bp, ptr noundef nonnull align 8 dereferenceable(752) %i.bo, i64 752, i1 false), !alias.scope !32639, !noalias !32640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  invoke void @"_ZN6utoipa7openapi6schema157_$LT$impl$u20$core..convert..From$LT$utoipa..openapi..schema..ObjectBuilder$GT$$u20$for$u20$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$4from17h18fe66201e37aeb5E"(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(752) %i.bp)
          to label %bb.dd unwind label %bb.b

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.experimental.noalias.scope.decl(metadata !32641)
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !alias.scope !32642, !nonnull !21, !noundef !21 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !32642, !noundef !21
  invoke fastcc void @"_ZN4core3ptr92drop_in_place$LT$$u5b$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$u5d$$GT$17h9c20bce28d094aecE"(ptr noalias noundef nonnull align 8 %i.gq, i64 noundef %i.gs)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5c97d73e757b972cE.exit.i" unwind label %bb.de, !noalias !32641, !inline_history !0

bb.de:                                            ; preds = %bb.dd
  %i.gt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i228 = load i64, ptr %1, align 8, !range !22, !alias.scope !32641, !noundef !21 ; 2 uses
  %i.gu = icmp eq i64 %.val2.i228, 0
  br i1 %i.gu, label %common.resume, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.gv = mul nuw i64 %.val2.i228, 752
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gq, i64 noundef %i.gv, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !32641, !inline_history !26
  br label %common.resume

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5c97d73e757b972cE.exit.i": ; preds = %bb.dd
  %.val.i229 = load i64, ptr %1, align 8, !range !22, !alias.scope !32641, !noundef !21 ; 2 uses
  %i.gw = icmp eq i64 %.val.i229, 0
  br i1 %i.gw, label %"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$$GT$17hc4ca8fdd1615b75fE.exit", label %bb.dg

bb.dg:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5c97d73e757b972cE.exit.i"
  %i.gx = mul nuw i64 %.val.i229, 752
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gq, i64 noundef %i.gx, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !32641, !inline_history !26
  br label %"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$$GT$17hc4ca8fdd1615b75fE.exit"

common.resume:                                    ; preds = %.body225, %bb.de, %bb.df
  %common.resume.op = phi { ptr, i32 } [ %i.gt, %bb.de ], [ %i.gt, %bb.df ], [ %.pn95, %.body225 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr105drop_in_place$LT$alloc..vec..Vec$LT$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$GT$$GT$17hc4ca8fdd1615b75fE.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5c97d73e757b972cE.exit.i", %bb.dg
  ret void

.body213.thread:                                  ; preds = %bb.cs, %.body213.thread344
  %eh.lpad-body214343 = phi { ptr, i32 } [ %i.fy, %.body213.thread344 ], [ %i.gg, %bb.cs ]
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef align 8 dereferenceable(752) %i.bn) #55
          to label %.body225 unwind label %bb.dh

bb.dh:                                            ; preds = %.thread, %bb.dn, %bb.dm, %.thread279, %.body127.thread, %.thread300, %.thread316, %bb.dj, %.body168.thread, %.thread332, %bb.di, %.body213.thread, %.body225
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.di:                                            ; preds = %.noexc.i.i.i.i180
  %i.gz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef align 8 dereferenceable(752) %i.n) #55
          to label %.thread332 unwind label %bb.dh

.thread332:                                       ; preds = %bb.di, %bb.ci, %.thread338
  %.pn93331 = phi { ptr, i32 } [ %i.fv, %bb.ci ], [ %lpad.thr_comm336, %.thread338 ], [ %i.gz, %bb.di ]
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef align 8 dereferenceable(752) %i.bn) #55
          to label %.body225 unwind label %bb.dh

.body168.thread:                                  ; preds = %bb.bx, %.body168.thread324
  %eh.lpad-body169323 = phi { ptr, i32 } [ %lpad.thr_comm, %.body168.thread324 ], [ %i.fk, %bb.bx ]
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef align 8 dereferenceable(752) %i.bn) #55
          to label %.body225 unwind label %bb.dh

bb.dj:                                            ; preds = %.noexc.i.i.i.i
  %i.ha = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef align 8 dereferenceable(752) %i.aa) #55
          to label %.thread316 unwind label %bb.dh

.thread316:                                       ; preds = %bb.dj, %bb.bm, %.thread319
  %.pn91315 = phi { ptr, i32 } [ %i.fb, %bb.bm ], [ %i.el, %.thread319 ], [ %i.ha, %bb.dj ]
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef align 8 dereferenceable(752) %i.bn) #55
          to label %.body225 unwind label %bb.dh

bb.dk:                                            ; preds = %bb.az, %bb.ba
  call fastcc void @"_ZN4core3ptr56drop_in_place$LT$utoipa..openapi..schema..RefBuilder$GT$17hc908791b162762d0E"(ptr noalias noundef align 8 dereferenceable(72) %i.bh) #55
  br label %.thread300

.thread300:                                       ; preds = %bb.dk, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit138", %.thread304
  %.pn89303 = phi { ptr, i32 } [ %i.ef, %.thread304 ], [ %i.ek, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit138" ], [ %i.ej, %bb.dk ]
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef align 8 dereferenceable(752) %i.ak) #55
          to label %.body225 unwind label %bb.dh

.body127.thread:                                  ; preds = %bb.aq, %.body127.thread297
  %eh.lpad-body128296 = phi { ptr, i32 } [ %i.dv, %.body127.thread297 ], [ %i.ea, %bb.aq ]
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef align 8 dereferenceable(752) %i.bn) #55
          to label %.body225 unwind label %bb.dh

bb.dl:                                            ; preds = %bb.ac, %bb.ad
  call fastcc void @"_ZN4core3ptr56drop_in_place$LT$utoipa..openapi..schema..RefBuilder$GT$17hc908791b162762d0E"(ptr noalias noundef align 8 dereferenceable(72) %i.av) #55
  br label %.thread279

.thread279:                                       ; preds = %bb.dl, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit120", %.thread283
  %.pn83282 = phi { ptr, i32 } [ %i.cy, %.thread283 ], [ %i.dd, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit120" ], [ %i.dc, %bb.dl ]
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$utoipa..openapi..schema..OneOfBuilder$GT$17h86f220578b320f68E"(ptr noalias noundef align 8 dereferenceable(408) %i.ba) #55
          to label %bb.dn unwind label %bb.dh

bb.dm:                                            ; preds = %bb.o
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$utoipa..openapi..schema..OneOfBuilder$GT$17h86f220578b320f68E"(ptr noalias noundef align 8 dereferenceable(408) %i.az) #55
          to label %bb.dn unwind label %bb.dh

bb.dn:                                            ; preds = %.thread279, %.body.i, %bb.dm, %.body.i122
  %.pn85.ph = phi { ptr, i32 } [ %i.dn, %.body.i122 ], [ %.pn83282, %.thread279 ], [ %i.hb, %bb.dm ], [ %eh.lpad-body.i, %.body.i ]
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef align 8 dereferenceable(752) %i.bc) #55
          to label %.body225 unwind label %bb.dh

bb.do:                                            ; preds = %bb.i, %bb.j
  call fastcc void @"_ZN4core3ptr56drop_in_place$LT$utoipa..openapi..schema..RefBuilder$GT$17hc908791b162762d0E"(ptr noalias noundef align 8 dereferenceable(72) %i.bi) #55
  br label %.thread

.thread:                                          ; preds = %bb.do, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit", %.thread268
  %.pn79267 = phi { ptr, i32 } [ %i.bu, %.thread268 ], [ %i.ca, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit" ], [ %i.bz, %bb.do ]
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$utoipa..openapi..schema..ObjectBuilder$GT$17hdf1edabc382f3554E"(ptr noalias noundef align 8 dereferenceable(752) %i.bk) #55
          to label %.body225 unwind label %bb.dh
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN89_$LT$meilisearch_types..error..ParseOffsetDateTimeError$u20$as$u20$core..fmt..Display$GT$3fmt17h8a52526046c5092dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE", ptr %.sroa.42.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !21, !noundef !21
  %.val = load ptr, ptr %1, align 8, !nonnull !21, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32645
  store ptr @2038, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !32645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$meilisearch_types..network..RemoteAvailability$u20$as$u20$core..default..Default$GT$7default17hecb04ba5227393a9E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1024 x i8]) align 8 captures(none) dereferenceable(1024) %0) unnamed_addr #1 {
bb.a:
  tail call void @_ZN17meilisearch_types7network18RemoteAvailability3new17hf69fbfb4ff40dd14E(ptr noalias noundef nonnull sret([1024 x i8]) align 8 captures(address) dereferenceable(1024) %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @"_ZN89_$LT$meilisearch_types..settings..MinWordSizeTyposSetting$u20$as$u20$utoipa..ToSchema$GT$7schemas17h6d1185d6737b7f53E"(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN89_$LT$meilisearch_types..tasks..DetailsExportIndexSettings$u20$as$u20$utoipa..ToSchema$GT$7schemas17h545336c0a316ad0dE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [792 x i8], align 8               ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [752 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr @34, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 19, ptr %i.i, align 8
  store i64 -9223372036854775808, ptr %i.e, align 8
  store ptr %i.e, ptr %i.f, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h0c767a96d02e06c6E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32672
  store ptr @2, ptr %i.a, align 8, !noalias !32673
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.422.0..sroa_idx, align 8, !noalias !32673
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.f, ptr %.sroa.523.0..sroa_idx, align 8, !noalias !32673
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.624.0..sroa_idx, align 8, !noalias !32673
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !32673
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val10 = load i64, ptr %i.e, align 8, !range !25, !noundef !21 ; 2 uses
  %switch = icmp sgt i64 %.val10, 0
  br i1 %switch, label %bb.c, label %common.resume

bb.c:                                             ; preds = %bb.b
  %.val11 = load ptr, ptr %i.h, align 8, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11, i64 noundef %.val10, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !32674
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32672
  %.val = load i64, ptr %i.e, align 8, !range !25, !noundef !21 ; 2 uses
  %switch29 = icmp sgt i64 %.val, 0
  br i1 %switch29, label %bb.e, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit12"

bb.e:                                             ; preds = %bb.d
  %.val9 = load ptr, ptr %i.h, align 8, !nonnull !21, !noundef !21
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !32675
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit12"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit12": ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.0.0.copyload = load i64, ptr %i.g, align 8 ; 3 uses
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.515.0.copyload = load ptr, ptr %.sroa.515.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.l, align 8
  invoke void @"_ZN94_$LT$meilisearch_types..tasks..ExportIndexSettings$u20$as$u20$utoipa..__dev..ComposeSchema$GT$7compose17h91f4bbb18eef8bacE"(ptr noalias noundef nonnull sret([752 x i8]) align 8 captures(address) dereferenceable(752) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit12"
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.n, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.515.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.515.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !32676
  br label %common.resume

bb.h:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h501e8ec63a8fa916E.exit12"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(752) %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(752) %i.d, i64 752, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.b, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.515.0.copyload, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.6.0.copyload, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !32677)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !32678, !noalias !32679, !noundef !21 ; 3 uses
  %i.q = load i64, ptr %0, align 8, !range !22, !alias.scope !32678, !noalias !32679, !noundef !21
  %i.r = icmp eq i64 %i.q, %i.p
  br i1 %i.r, label %bb.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hec74972aa75abd83E.exit", !prof !23

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h45307a5a03ebcc73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.p, i64 noundef 1, i64 noundef 8, i64 noundef 776)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he58478e6247d9a6cE.exit_crit_edge.i" unwind label %bb.j, !noalias !32679

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he58478e6247d9a6cE.exit_crit_edge.i": ; preds = %bb.i
  %.pre.i = load i64, ptr %i.o, align 8, !alias.scope !32677, !noalias !32679
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hec74972aa75abd83E.exit"

common.resume:                                    ; preds = %bb.c, %bb.f, %bb.g, %bb.b, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.j, %bb.c ], [ %i.m, %bb.g ], [ %i.j, %bb.b ], [ %i.m, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr159drop_in_place$LT$core..array..iter..IntoIter$LT$$LP$alloc..string..String$C$utoipa..openapi..RefOr$LT$utoipa..openapi..schema..Schema$GT$$RP$$C$1_usize$GT$$GT$17ha2a939d205ca73a8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(792) %i.b) #55
          to label %common.resume unwind label %bb.k, !noalias !32677

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !32680
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hec74972aa75abd83E.exit": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he58478e6247d9a6cE.exit_crit_edge.i", %bb.h
  %i.u = phi i64 [ %.pre.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he58478e6247d9a6cE.exit_crit_edge.i" ], [ %i.p, %bb.h ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !32677, !noalias !32679, !nonnull !21, !noundef !21
  %i.x = getelementptr inbounds nuw [776 x i8], ptr %i.w, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(776) %.sroa.5.0..sroa_idx, i64 776, i1 false), !noalias !32677
  %i.y = add i64 %i.u, 1
  store i64 %i.y, ptr %i.o, align 8, !alias.scope !32677, !noalias !32681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h2931a4c37b9cc6fcE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load i64, ptr %i.b, align 8, !noundef !21
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val3 = load i64, ptr %i.c, align 8, !noundef !21
  %i.d = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h4a05c0cadc489c08E(i64 %.val, i64 %.val3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %2, align 8 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 7 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32720)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !32720, !noalias !32721, !nonnull !21, !noundef !21 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !32720, !noalias !32721, !noundef !21 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !32722, !noalias !32723, !noundef !21
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h532f093a0213c950E.exit.i.i.i", !prof !23

bb.b:                                             ; preds = %bb.a
  %i.m = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h735543a5df864733E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.f, i64 noundef %i.h, i1 noundef zeroext true)
end_hunk_10
