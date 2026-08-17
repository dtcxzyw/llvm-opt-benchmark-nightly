inline.NumInlined: 5793
inline.NumDeleted: 2830
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h68d671a7e0f2770bE":bb.a
"_ZN81_$LT$anki..scheduler..states..normal..NormalState$u20$as$u20$core..fmt..Debug$GT$3fmt17h567f7e0516e6447eE.exit": ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.0.0.in.i = phi i1 [ %i.j, %bb.c ], [ %i.l, %bb.d ], [ %i.n, %bb.e ], [ %i.o, %bb.f ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9e2ad836f050a72dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !17, !noundef !3 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1535
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.d, ptr %i.a, align 8, !noalias !1535
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field3_finish17hb3d4bef75f82d4d6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @475, i64 noundef 11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @476, i64 noundef 4, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @472, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @477, i64 noundef 2, ptr noundef nonnull readonly align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @473, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @478, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @474)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1535
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17ha693e7567e72ef82E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !align !17, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  %i.e = load i64, ptr %i.d, align 8, !range !1542, !alias.scope !1539, !noalias !1543, !noundef !3 ; 3 uses
  %i.f = icmp ne i64 %i.e, 3
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.e, -2
  %i.h = icmp samesign ugt i64 %i.e, 1
  %i.i = select i1 %i.h, i64 %i.g, i64 1
  switch i64 %i.i, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1545
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %i.c, align 8, !noalias !1545
  %i.l = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @497, i64 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @498, i64 noundef 4, ptr noundef nonnull readonly align 1 %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @495, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @499, i64 noundef 2, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @496)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1545
  br label %"_ZN71_$LT$fluent_bundle..errors..FluentError$u20$as$u20$core..fmt..Debug$GT$3fmt17h6805920d0b93fc69E.exit"

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1545
  store ptr %i.d, ptr %i.b, align 8, !noalias !1545
  %i.m = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @501, i64 noundef 11, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @500)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1545
  br label %"_ZN71_$LT$fluent_bundle..errors..FluentError$u20$as$u20$core..fmt..Debug$GT$3fmt17h6805920d0b93fc69E.exit"

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1545
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.n, ptr %i.a, align 8, !noalias !1545
  %i.o = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @503, i64 noundef 13, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @502)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1545
  br label %"_ZN71_$LT$fluent_bundle..errors..FluentError$u20$as$u20$core..fmt..Debug$GT$3fmt17h6805920d0b93fc69E.exit"

"_ZN71_$LT$fluent_bundle..errors..FluentError$u20$as$u20$core..fmt..Debug$GT$3fmt17h6805920d0b93fc69E.exit": ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.l, %bb.c ], [ %i.m, %bb.d ], [ %i.o, %bb.e ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hac8154df0275ac57E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !3, !align !17, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1549
  call void @_ZN4core3fmt9Formatter9debug_map17ha1db76d3917da565E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1549
  call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  call void @llvm.experimental.noalias.scope.decl(metadata !1554)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1556, !noalias !1557, !nonnull !3, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1556, !noalias !1557, !noundef !3
  %i.h = add i64 %i.g, 1
  call void @"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h4f688666b1ee2209E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, i64 noundef %i.h), !noalias !1556
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1556, !noalias !1557, !noundef !3
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.j, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1551, !noalias !1558
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !1549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1549
  %i.k = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders8DebugMap7entries17h4d38bda0ed916aaeE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b), !noalias !1546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1549
  %i.l = call noundef zeroext i1 @_ZN4core3fmt8builders8DebugMap6finish17h03c9a309c3bc48d4E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k), !noalias !1546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1549
  ret i1 %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN45_$LT$$LP$$RP$$u20$as$u20$core..fmt..Debug$GT$3fmt17h0d2ddbc19b164edcE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter3pad17h999b8beec17ba994E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @31, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17habeb53707e5b47a6E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter10debug_list17hce385b9777d986d7E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %1
  %i.c = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList7entries17h7bbf1e6098027acbE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17hbf71f56035f2c70aE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4anki10collection6backup12BackupFilter10mark_fresh17h805c400ec0863de9E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0, i8 noundef range(i8 0, 4) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.f = invoke noundef i32 @_ZN6chrono6traits8Datelike16num_days_from_ce17h3799aefed7a189d8E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %_ZN4anki10collection6backup6Backup3day17h0960acbe4e5a726bE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %.noexc, %bb.c, %_ZN4anki10collection6backup6Backup3day17h0960acbe4e5a726bE.exit, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$anki..collection..backup..Backup$GT$17h7c39bc6d1b0f4ec2E"(ptr noalias noundef align 8 dereferenceable(40) %2) #52
          to label %common.resume unwind label %bb.k

_ZN4anki10collection6backup6Backup3day17h0960acbe4e5a726bE.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.f, ptr %i.h, align 4
  %i.i = invoke noundef i32 @_ZN6chrono6traits8Datelike16num_days_from_ce17h3799aefed7a189d8E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.c unwind label %bb.b

bb.c:                                             ; preds = %_ZN4anki10collection6backup6Backup3day17h0960acbe4e5a726bE.exit
  %i.j = add i32 %i.i, -1
  %i.k = sdiv i32 %i.j, 7
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.k, ptr %i.l, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1559
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.e, i64 12, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !1559, !noundef !3 ; 2 uses
  invoke void @_ZN6chrono5naive8datetime13NaiveDateTime22overflowing_add_offset17h582cf27e9095313eE(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.c, i32 noundef %i.n)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1559
  %i.o = load i32, ptr %i.d, align 4, !range !1562, !noalias !1559, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.e, i64 12, i1 false)
  invoke void @_ZN6chrono5naive8datetime13NaiveDateTime22overflowing_add_offset17h582cf27e9095313eE(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a, i32 noundef %i.n)
          to label %.noexc3 unwind label %bb.b

.noexc3:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1563
  %i.p = load i32, ptr %i.b, align 4, !range !1562, !noalias !1563, !noundef !3
  %i.q = lshr i32 %i.p, 3
  %i.r = and i32 %i.q, 1023                       ; 3 uses
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = icmp samesign ult i32 %i.r, 733
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc3
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.s, i64 noundef 733, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @521) #50
          to label %.noexc4 unwind label %bb.b

.noexc4:                                          ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc3
  %i.u = ashr i32 %i.o, 13
  %i.v = mul nsw i32 %i.u, 12
  %i.w = getelementptr inbounds nuw i8, ptr @519, i64 %i.s
  %i.x = load i8, ptr %i.w, align 1, !noalias !1563, !noundef !3
  %i.y = zext i8 %i.x to i32
  %i.z = add nuw nsw i32 %i.r, %i.y
  %i.aa = lshr i32 %i.z, 6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1563
  %i.ab = add nsw i32 %i.aa, %i.v
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.ab, ptr %i.ac, align 4
  switch i8 %1, label %default.unreachable [
    i8 3, label %bb.f
    i8 0, label %.sink.split
    i8 1, label %bb.i
    i8 2, label %bb.j
  ]

.sink.split:                                      ; preds = %bb.e, %bb.i, %bb.j
  %.sink7 = phi i64 [ 32, %bb.j ], [ 28, %bb.i ], [ 24, %bb.e ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink7 ; 2 uses
  %4 = load i32, ptr %3, align 4, !noundef !3
  %5 = add i32 %4, -1
  store i32 %5, ptr %3, align 4
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %2)
          to label %"_ZN4core3ptr53drop_in_place$LT$anki..collection..backup..Backup$GT$17h7c39bc6d1b0f4ec2E.exit" unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %2)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %i.g, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr53drop_in_place$LT$anki..collection..backup..Backup$GT$17h7c39bc6d1b0f4ec2E.exit": ; preds = %bb.f
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %2)
  ret void

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.e
  br label %.sink.split

bb.j:                                             ; preds = %bb.e
  br label %.sink.split

bb.k:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4anki10collection6backup12BackupFilter13mark_obsolete17hd2061d2dc322b01fE(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1566, !noalias !1569, !noundef !3 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !277, !alias.scope !1566, !noalias !1569, !noundef !3
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9b482376fa27703aE.exit"

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8ef78290b803c56fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9b482376fa27703aE.exit" unwind label %bb.c, !noalias !1569

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$anki..collection..backup..Backup$GT$17h7c39bc6d1b0f4ec2E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1) #52
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9b482376fa27703aE.exit": ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !1566, !noalias !1569, !nonnull !3, !noundef !3
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8, !alias.scope !1566, !noalias !1569
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4anki10collection6backup12BackupFilter22mark_fresh_or_obsolete17h1e2bf79dda43da4bE(ptr noalias noundef align 8 dereferenceable(56) %0, i8 noundef range(i8 0, 3) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 4 uses
  %i.c = alloca [12 x i8], align 4                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  switch i8 %1, label %default.unreachable12 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable12:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = invoke noundef i32 @_ZN6chrono6traits8Datelike16num_days_from_ce17h3799aefed7a189d8E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %_ZN4anki10collection6backup6Backup3day17h0960acbe4e5a726bE.exit unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = invoke noundef i32 @_ZN6chrono6traits8Datelike16num_days_from_ce17h3799aefed7a189d8E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %bb.f unwind label %bb.n

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1571)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1571
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.k, i64 12, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !1571, !noundef !3 ; 2 uses
  invoke void @_ZN6chrono5naive8datetime13NaiveDateTime22overflowing_add_offset17h582cf27e9095313eE(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.c, i32 noundef %i.m)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1571
  %i.n = load i32, ptr %i.d, align 4, !range !1562, !noalias !1571, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1574
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.k, i64 12, i1 false)
  invoke void @_ZN6chrono5naive8datetime13NaiveDateTime22overflowing_add_offset17h582cf27e9095313eE(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.a, i32 noundef %i.m)
          to label %.noexc3 unwind label %bb.n

.noexc3:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1574
  %i.o = load i32, ptr %i.b, align 4, !range !1562, !noalias !1574, !noundef !3
  %i.p = lshr i32 %i.o, 3
  %i.q = and i32 %i.p, 1023                       ; 3 uses
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = icmp samesign ult i32 %i.q, 733
  br i1 %i.s, label %.split, label %bb.e

bb.e:                                             ; preds = %.noexc3
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.r, i64 noundef 733, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @521) #50
          to label %.noexc4 unwind label %bb.n

.noexc4:                                          ; preds = %bb.e
  unreachable

_ZN4anki10collection6backup6Backup3day17h0960acbe4e5a726bE.exit: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load i32, ptr %i.t, align 4, !noundef !3
  %i.v = icmp slt i32 %i.h, %i.u
  br i1 %i.v, label %bb.k, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.w = add i32 %i.j, -1
  %i.x = sdiv i32 %i.w, 7
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i32, ptr %i.y, align 8, !noundef !3
  %i.aa = icmp slt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.k, label %bb.g

.split:                                           ; preds = %.noexc3
  %i.ab = ashr i32 %i.n, 13
  %i.ac = mul nsw i32 %i.ab, 12
  %i.ad = getelementptr inbounds nuw i8, ptr @519, i64 %i.r
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !1574, !noundef !3
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nuw nsw i32 %i.q, %i.af
  %i.ah = lshr i32 %i.ag, 6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1574
  %i.ai = add nsw i32 %i.ah, %i.ac
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ak = load i32, ptr %i.aj, align 4, !noundef !3
  %i.al = icmp ult i32 %i.ai, %i.ak
  br i1 %i.al, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.split, %_ZN4anki10collection6backup6Backup3day17h0960acbe4e5a726bE.exit, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !1577, !noalias !1582, !noundef !3 ; 3 uses
  %i.ao = load i64, ptr %0, align 8, !range !277, !alias.scope !1577, !noalias !1582, !noundef !3
  %i.ap = icmp eq i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8ef78290b803c56fE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.l unwind label %bb.i, !noalias !1582

bb.i:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$anki..collection..backup..Backup$GT$17h7c39bc6d1b0f4ec2E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e) #52
          to label %.body.thread unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

bb.k:                                             ; preds = %.split, %_ZN4anki10collection6backup6Backup3day17h0960acbe4e5a726bE.exit, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @_ZN4anki10collection6backup12BackupFilter10mark_fresh17h805c400ec0863de9E(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, i8 noundef %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !1577, !noalias !1582, !nonnull !3, !noundef !3
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  %i.av = add i64 %i.an, 1
  store i64 %i.av, ptr %i.am, align 8, !alias.scope !1577, !noalias !1582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  ret void

.body.thread:                                     ; preds = %bb.i, %bb.n
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.aq, %bb.i ], [ %lpad.thr_comm, %bb.n ]
  resume { ptr, i32 } %eh.lpad-body7

bb.n:                                             ; preds = %.noexc, %bb.b, %bb.c, %bb.e, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$anki..collection..backup..Backup$GT$17h7c39bc6d1b0f4ec2E"(ptr noalias noundef align 8 dereferenceable(40) %2) #52
          to label %.body.thread unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable
end_hunk_0
