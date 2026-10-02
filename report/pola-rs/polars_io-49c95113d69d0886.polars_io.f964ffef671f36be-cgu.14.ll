Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_io-49c95113d69d0886.polars_io.f964ffef671f36be-cgu.14?download=true
inline.NumInlined: 3784
inline.NumDeleted: 1574
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNCNCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged000Bb_:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !35558
  %i.f = load ptr, ptr %i.e, align 8, !dbg !35558, !nonnull !1513, !noundef !1513
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !35559
  %i.h = load i64, ptr %i.g, align 8, !dbg !35559, !noundef !1513
  store ptr %i.f, ptr %i.c, align 8, !dbg !35557
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !35557
  store i64 %i.h, ptr %i.i, align 8, !dbg !35557
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !35557
  store i16 0, ptr %i.j, align 8, !dbg !35557
  invoke void @_RNvXs4_NtNtCsh8eZTKRCwoO_3std3net11socket_addrTRetENtB5_13ToSocketAddrs15to_socket_addrs(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %bb.c unwind label %bb.b, !dbg !35560

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged000EBS_(ptr noalias noundef align 8 dereferenceable(24) %1) #37
          to label %common.resume unwind label %bb.j, !dbg !35561

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.d, align 8, !dbg !35562, !noundef !1513
  %i.m = icmp eq ptr %i.l, null, !dbg !35562
  br i1 %i.m, label %bb.d, label %bb.e, !dbg !35563

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !35564
  %i.o = load ptr, ptr %i.n, align 8, !dbg !35564, !nonnull !1513, !noundef !1513
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35565
  store ptr %i.o, ptr %i.p, align 8, !dbg !35565
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !35565
  br label %bb.g, !dbg !35566

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !35567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !35553
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_iterINtB6_3VecNtNtNtCscgRAwXFJnXP_4core3net11socket_addr10SocketAddrEINtB4_12SpecFromIterBW_INtNtB6_9into_iter8IntoIterBW_EE9from_iterCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.f unwind label %bb.b, !dbg !35568

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !35569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !35570
  br label %bb.g, !dbg !35571

bb.g:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !35572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !35572
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged000EBS_.exit unwind label %bb.h, !dbg !35573

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.i, !dbg !35574

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !35573
  unreachable, !dbg !35573

common.resume:                                    ; preds = %bb.b, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.k, %bb.b ]
  resume { ptr, i32 } %common.resume.op, !dbg !35575

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged000EBS_.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !35576
  ret void, !dbg !35577

bb.j:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !35578
  unreachable, !dbg !35578
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtB9_9GetResult5bytes00CslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !35579 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6), !dbg !35652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !35652
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !35663 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !35664
  %i.d = load ptr, ptr %i.c, align 8, !dbg !35664, !nonnull !1513, !noundef !1513
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !35665
  %i.f = load i64, ptr %i.e, align 8, !dbg !35665, !noundef !1513
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !35666
  %i.h = load i64, ptr %i.g, align 8, !dbg !35666, !noundef !1513
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !35666
  %i.j = load i64, ptr %i.i, align 8, !dbg !35666, !noundef !1513
  invoke void @_RNvNtCs8RKTHBS4OBx_12object_store5local10read_range(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f, i64 noundef %i.h, i64 noundef %i.j)
          to label %bb.c unwind label %bb.b, !dbg !35652

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtBQ_9GetResult5bytes00ECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(48) %1) #37
          to label %common.resume unwind label %bb.j, !dbg !35657

bb.c:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.a, align 8, !dbg !35667, !range !1814, !noundef !1513 ; 2 uses
  %.not = icmp eq i64 %i.l, -9223372036854775790, !dbg !35667
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !35668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !dbg !35668
  br i1 %.not, label %bb.g, label %bb.d, !dbg !35669

bb.d:                                             ; preds = %bb.c
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !35670
  %.sroa.311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !35671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.311.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.68.0..sroa_idx, i64 32, i1 false), !dbg !35670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !35672
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.210.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !dbg !35672
  store i64 %i.l, ptr %0, align 8, !dbg !35671
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !35673
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35655), !dbg !35657
  %.val.i = load i32, ptr %i.b, align 8, !dbg !35674, !range !1808, !alias.scope !35655, !noundef !1513
  %i.n = tail call noundef i32 @close(i32 noundef %.val.i) #29, !dbg !35675, !noalias !35655 ; 0 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtBQ_9GetResult5bytes00ECslpwjCj2YNBy_9polars_io.exit unwind label %bb.e, !dbg !35676

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
          to label %common.resume unwind label %bb.f, !dbg !35677

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !35676
  unreachable, !dbg !35676

common.resume:                                    ; preds = %bb.b, %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.o, %bb.e ], [ %i.k, %bb.b ]
  resume { ptr, i32 } %common.resume.op, !dbg !35678

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !35672
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !dbg !35652
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6), !dbg !35673
  store i64 -9223372036854775790, ptr %0, align 8, !dbg !35679
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35656), !dbg !35657
  %.val.i15 = load i32, ptr %i.b, align 8, !dbg !35680, !range !1808, !alias.scope !35656, !noundef !1513
  %i.r = tail call noundef i32 @close(i32 noundef %.val.i15) #29, !dbg !35681, !noalias !35656 ; 0 uses
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtBQ_9GetResult5bytes00ECslpwjCj2YNBy_9polars_io.exit unwind label %bb.h, !dbg !35682

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
          to label %common.resume unwind label %bb.i, !dbg !35683

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !35682
  unreachable, !dbg !35682

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtBQ_9GetResult5bytes00ECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.g, %bb.d
  tail call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(48) %1), !dbg !35684
  ret void, !dbg !35685

bb.j:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !35686
  unreachable, !dbg !35686
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK0s_0B9_(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !35687 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [112 x i8], align 8               ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 42, !dbg !35759 ; 3 uses
  %i.f = load i8, ptr %i.e, align 2, !dbg !35759, !range !1870, !noundef !1513
  switch i8 %i.f, label %bb.b [
    i8 0, label %bb.c
    i8 2, label %bb.e
    i8 3, label %bb.z
    i8 4, label %bb.g
  ], !dbg !35759

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !35760

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyEECslpwjCj2YNBy_9polars_io.exit: ; preds = %.body, %bb.ak
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 41, !dbg !35761
  %i.h = load i8, ptr %i.g, align 1, !dbg !35761, !range !1592, !noundef !1513
  %i.i = trunc nuw i8 %i.h to i1, !dbg !35761
  br i1 %i.i, label %bb.ap, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyEECslpwjCj2YNBy_9polars_io.exit20, !dbg !35761

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 41, !dbg !35762
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !35763 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35764
  store i8 0, ptr %i.j, align 1, !dbg !35765
  %2 = load <2 x ptr>, ptr %i.k, align 8, !dbg !35763
  %3 = load ptr, ptr %i.k, align 8, !dbg !35763, !nonnull !1513, !noundef !1513
  store ptr %3, ptr %0, align 8, !dbg !35766
  %4 = getelementptr inbounds nuw i8, <2 x ptr> %2, <2 x i64> <i64 16, i64 0>, !dbg !35767
  store <2 x ptr> %4, ptr %i.l, align 8, !dbg !35764
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !35768
  store i8 0, ptr %i.m, align 8, !dbg !35768
  br label %bb.d, !dbg !35769

bb.d:                                             ; preds = %bb.p, %bb.c
  %i.n = phi i8 [ %.pre, %bb.p ], [ 0, %bb.c ], !dbg !35770
  %i.o = trunc nuw i8 %i.n to i1, !dbg !35770
  br i1 %i.o, label %bb.u, label %bb.v, !dbg !35770

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #39, !dbg !35759
  unreachable, !dbg !35759

bb.f:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4time5sleep5SleepECslpwjCj2YNBy_9polars_io(ptr noundef nonnull align 8 %i.q) #37
          to label %.body unwind label %bb.al, !dbg !35771

bb.g:                                             ; preds = %bb.a, %bb.ao
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !35772 ; 3 uses
  %i.r = invoke noundef zeroext i1 @_RNvXs_NtNtCskmDBXs7hs3c_5tokio4time5sleepNtB4_5SleepNtNtNtCscgRAwXFJnXP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.h unwind label %bb.f, !dbg !35772

bb.h:                                             ; preds = %bb.g
  br i1 %i.r, label %common.ret, label %bb.i, !dbg !35772

common.ret:                                       ; preds = %bb.aa, %bb.h
  %storemerge = phi i8 [ 4, %bb.h ], [ 3, %bb.aa ], !dbg !35773
  store i8 %storemerge, ptr %i.e, align 2, !dbg !35773
  ret void, !dbg !35773

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4time5sleep5SleepECslpwjCj2YNBy_9polars_io(ptr noundef nonnull align 8 %i.q)
          to label %bb.k unwind label %bb.j, !dbg !35771

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECslpwjCj2YNBy_9polars_io.exit, %bb.aj, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35774
  %i.u = load ptr, ptr %i.t, align 8, !dbg !35774, !nonnull !1513, !noundef !1513
  %i.v = atomicrmw xchg ptr %i.u, i8 0 monotonic, align 1, !dbg !35775
  %.not = icmp eq i8 %i.v, 0, !dbg !35776
  br i1 %.not, label %bb.l, label %bb.an, !dbg !35774

bb.l:                                             ; preds = %bb.k
  %i.w = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK, i64 32) acquire, align 8, !dbg !35777
  %i.x = icmp eq i32 %i.w, 0, !dbg !35778
  br i1 %i.x, label %_RNvXs1_NtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB5_8LazyLockNtNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock10GlobalLockENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefB11_.exit, label %bb.m, !dbg !35778, !prof !1604

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !35779
  store ptr @_RNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK, ptr %i.b, align 8, !dbg !35780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !35781
  store ptr %i.b, ptr %i.a, align 8, !dbg !35781
  invoke void @_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK, i64 32), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
          to label %.noexc unwind label %bb.n, !dbg !35782

.noexc:                                           ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !35783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !35784
  br label %_RNvXs1_NtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB5_8LazyLockNtNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock10GlobalLockENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefB11_.exit, !dbg !35784

bb.n:                                             ; preds = %bb.m, %_RNvXs1_NtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB5_8LazyLockNtNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock10GlobalLockENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefB11_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvXs1_NtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB5_8LazyLockNtNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock10GlobalLockENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefB11_.exit: ; preds = %.noexc, %bb.l
  %i.z = invoke noundef i8 @_RNvMs0_NtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lockNtB5_10GlobalLock10try_unlock(ptr noundef nonnull align 8 @_RNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK)
          to label %bb.o unwind label %bb.n, !dbg !35785

bb.o:                                             ; preds = %_RNvXs1_NtNtCsh8eZTKRCwoO_3std4sync9lazy_lockINtB5_8LazyLockNtNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock10GlobalLockENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefB11_.exit
  switch i8 %i.z, label %bb.q [
    i8 2, label %bb.an
    i8 0, label %bb.p
  ], !dbg !35786

bb.p:                                             ; preds = %bb.o, %bb.s, %bb.q
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !dbg !35770, !range !1592
  br label %bb.d, !dbg !35769

bb.q:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !35787
  %i.ab = load i8, ptr %i.aa, align 8, !dbg !35787, !range !1592, !noundef !1513
  %i.ac = trunc nuw i8 %i.ab to i1, !dbg !35787
  br i1 %i.ac, label %bb.s, label %bb.p, !dbg !35787

bb.r:                                             ; preds = %bb.s
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !35788

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std2io5stdio7__eprint(ptr noundef nonnull @36, ptr noundef nonnull inttoptr (i64 133 to ptr))
          to label %bb.p unwind label %bb.r, !dbg !35789

bb.t:                                             ; preds = %bb.u
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !35788

bb.u:                                             ; preds = %bb.d
  invoke void @_RNvNtNtCsh8eZTKRCwoO_3std2io5stdio7__eprint(ptr noundef nonnull @37, ptr noundef nonnull inttoptr (i64 135 to ptr))
          to label %bb.v unwind label %bb.t, !dbg !35790

bb.v:                                             ; preds = %bb.d, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !35791
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !35791
  %.val16 = load ptr, ptr %i.af, align 8, !dbg !35791, !nonnull !1513, !noundef !1513
  %i.ag = getelementptr inbounds nuw i8, ptr %.val16, i64 16, !dbg !35792
  invoke void @_RNvMs5_NtNtCskmDBXs7hs3c_5tokio4sync6notifyNtB5_6Notify8notified(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noundef nonnull align 8 %i.ag)
          to label %bb.x unwind label %bb.w, !dbg !35793

bb.w:                                             ; preds = %bb.v
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !35794
  br label %.body, !dbg !35788

bb.x:                                             ; preds = %bb.v
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !35791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.d, i64 64, i1 false), !dbg !35795
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !35794
  br label %bb.z, !dbg !35796

bb.y:                                             ; preds = %bb.z
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECslpwjCj2YNBy_9polars_io(ptr noundef nonnull align 8 %i.ak) #37
          to label %.body unwind label %bb.al, !dbg !35794

bb.z:                                             ; preds = %bb.a, %bb.x
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !35796 ; 3 uses
  %i.al = invoke noundef zeroext i1 @_RNvXsa_NtNtCskmDBXs7hs3c_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCscgRAwXFJnXP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.aa unwind label %bb.y, !dbg !35796

bb.aa:                                            ; preds = %bb.z
  br i1 %i.al, label %common.ret, label %bb.ab, !dbg !35796

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXsb_NtNtCskmDBXs7hs3c_5tokio4sync6notifyNtB5_8NotifiedNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.ak)
          to label %bb.ae unwind label %bb.ac, !dbg !35797

bb.ac:                                            ; preds = %bb.ab
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = getelementptr i8, ptr %0, i64 80, !dbg !35797
  %.val2.i = load ptr, ptr %i.an, align 8, !dbg !35797, !align !1552, !noundef !1513 ; 2 uses
  %i.ao = icmp eq ptr %.val2.i, null, !dbg !35798
  br i1 %i.ao, label %.body, label %bb.ad, !dbg !35798

bb.ad:                                            ; preds = %bb.ac
  %i.ap = getelementptr i8, ptr %0, i64 88, !dbg !35797
  %.val3.i = load ptr, ptr %i.ap, align 8, !dbg !35797
  %i.aq = getelementptr inbounds nuw i8, ptr %.val2.i, i64 24, !dbg !35799
  %i.ar = load ptr, ptr %i.aq, align 8, !dbg !35799, !nonnull !1513, !noundef !1513
  invoke void %i.ar(ptr noundef %.val3.i)
          to label %.body unwind label %bb.ag, !dbg !35799, !inline_history !846

bb.ae:                                            ; preds = %bb.ab
  %i.as = getelementptr i8, ptr %0, i64 80, !dbg !35797
  %.val.i = load ptr, ptr %i.as, align 8, !dbg !35797, !align !1552, !noundef !1513 ; 2 uses
  %i.at = icmp eq ptr %.val.i, null, !dbg !35800
  br i1 %i.at, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECslpwjCj2YNBy_9polars_io.exit, label %bb.af, !dbg !35800

bb.af:                                            ; preds = %bb.ae
  %i.au = getelementptr i8, ptr %0, i64 88, !dbg !35797
  %.val1.i = load ptr, ptr %i.au, align 8, !dbg !35797
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 24, !dbg !35801
  %i.aw = load ptr, ptr %i.av, align 8, !dbg !35801, !nonnull !1513, !noundef !1513
  invoke void %i.aw(ptr noundef %.val1.i)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECslpwjCj2YNBy_9polars_io.exit unwind label %bb.ah, !dbg !35801, !inline_history !1872

bb.ag:                                            ; preds = %bb.ad
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #35, !dbg !35797
  unreachable, !dbg !35797

bb.ah:                                            ; preds = %bb.af
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.ae, %bb.af
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !35802
  %i.ba = load i8, ptr %i.az, align 8, !dbg !35802, !range !1592, !noundef !1513
  %i.bb = trunc nuw i8 %i.ba to i1, !dbg !35802
  br i1 %i.bb, label %bb.aj, label %bb.k, !dbg !35802

bb.ai:                                            ; preds = %bb.aj
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !35788

end_hunk_0
begin_hunk_1_@llvm.umin.i8
!35488 = !DILocation(line: 34, column: 31, scope: !35383)
!35489 = !DILocation(line: 34, column: 48, scope: !35383)
!35490 = !DILocation(line: 34, column: 39, scope: !35383)
!35491 = !DILocation(line: 33, column: 50, scope: !35384)
!35492 = !DILocation(line: 33, column: 24, scope: !35377)
!35493 = !DILocation(line: 33, column: 33, scope: !35384)
!35494 = !DILocation(line: 33, column: 41, scope: !35384)
!35495 = !DILocation(line: 37, column: 5, scope: !35377)
!35496 = !DILocation(line: 810, column: 1, scope: !613, inlinedAt: !35387)
!35497 = !DILocation(line: 810, column: 1, scope: !615, inlinedAt: !35392)
!35498 = !DILocation(line: 444, column: 20, scope: !616, inlinedAt: !35401)
!35499 = !DILocation(line: 3956, column: 24, scope: !619, inlinedAt: !35403)
!35500 = !DILocation(line: 2814, column: 12, scope: !618, inlinedAt: !35399)
!35501 = !DILocation(line: 4387, column: 24, scope: !24, inlinedAt: !35404)
!35502 = !DILocation(line: 2857, column: 18, scope: !618, inlinedAt: !35399)
!35503 = !DILocation(line: 810, column: 1, scope: !615, inlinedAt: !35409)
!35504 = !DILocation(line: 444, column: 20, scope: !616, inlinedAt: !35412)
!35505 = !DILocation(line: 3956, column: 24, scope: !619, inlinedAt: !35414)
!35506 = !DILocation(line: 2814, column: 12, scope: !618, inlinedAt: !35410)
!35507 = !DILocation(line: 33, column: 74, scope: !35384)
!35508 = !DILocation(line: 33, column: 74, scope: !35377)
!35509 = !DILocation(line: 34, column: 74, scope: !35383)
!35510 = !DILocation(line: 34, column: 74, scope: !35377)
!35511 = !DILocation(line: 36, column: 14, scope: !35415)
!35512 = !DILocation(line: 1003, column: 1, scope: !35416, inlinedAt: !35417)
!35513 = !DILocation(line: 36, column: 17, scope: !35415)
!35514 = !DILocation(line: 810, column: 1, scope: !613, inlinedAt: !35420)
!35515 = !DILocation(line: 810, column: 1, scope: !615, inlinedAt: !35425)
!35516 = !DILocation(line: 444, column: 20, scope: !616, inlinedAt: !35434)
!35517 = !DILocation(line: 3956, column: 24, scope: !619, inlinedAt: !35436)
!35518 = !DILocation(line: 2814, column: 12, scope: !618, inlinedAt: !35432)
!35519 = !DILocation(line: 4387, column: 24, scope: !24, inlinedAt: !35437)
!35520 = !DILocation(line: 2857, column: 18, scope: !618, inlinedAt: !35432)
!35521 = !DILocation(line: 810, column: 1, scope: !615, inlinedAt: !35442)
!35522 = !DILocation(line: 444, column: 20, scope: !616, inlinedAt: !35445)
!35523 = !DILocation(line: 3956, column: 24, scope: !619, inlinedAt: !35447)
!35524 = !DILocation(line: 2814, column: 12, scope: !618, inlinedAt: !35443)
!35525 = !DILocation(line: 4387, column: 24, scope: !24, inlinedAt: !35474)
!35526 = !DILocation(line: 2857, column: 18, scope: !618, inlinedAt: !35473)
!35527 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged000Bb_", scope: !35545, file: !1873, line: 236, type: !1514, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35528 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECslpwjCj2YNBy_9polars_io", scope: !1968, file: !1966, line: 613, type: !1514, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35529 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc6stringNtB2_6String6as_str", scope: !1937, file: !1921, line: 1052, type: !1514, scopeLine: 1052, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35530 = distinct !DISubprogram(name: "as_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE8as_sliceCslpwjCj2YNBy_9polars_io", scope: !1969, file: !1919, line: 1824, type: !1514, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35531 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE6as_ptrCslpwjCj2YNBy_9polars_io", scope: !1969, file: !1919, line: 1939, type: !1514, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35532 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE3ptrCslpwjCj2YNBy_9polars_io", scope: !1970, file: !1966, line: 295, type: !1514, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35533 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrhECslpwjCj2YNBy_9polars_io", scope: !1968, file: !1966, line: 608, type: !1514, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35534 = distinct !DISubprogram(name: "map<alloc::vec::into_iter::IntoIter<core::net::socket_addr::SocketAddr, alloc::alloc::Global>, std::io::error::Error, alloc::vec::Vec<core::net::socket_addr::SocketAddr, alloc::alloc::Global>, polars_io::cloud::dns::lookup_hedged::{async_fn#0}::{closure#0}::{closure#0}::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtB5_3net11socket_addr10SocketAddrENtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE3mapINtBN_3VecB1w_ENCNCNCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged0000EB3k_", scope: !1603, file: !1601, line: 831, type: !1514, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35535 = distinct !DILexicalBlock(scope: !35534, file: !1601, line: 837, column: 13)
!35536 = distinct !DILexicalBlock(scope: !35534, file: !1601, line: 836, column: 13)
!35537 = distinct !DISubprogram(name: "from_iter<core::net::socket_addr::SocketAddr, alloc::vec::into_iter::IntoIter<core::net::socket_addr::SocketAddr, alloc::alloc::Global>>", linkageName: "_RINvXse_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecNtNtNtCscgRAwXFJnXP_4core3net11socket_addr10SocketAddrEINtNtNtNtBM_4iter6traits7collect12FromIteratorBG_E9from_iterINtNtB6_9into_iter8IntoIterBG_EECslpwjCj2YNBy_9polars_io", scope: !1943, file: !1919, line: 3891, type: !1514, scopeLine: 3891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35538 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNCNCNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud3dns13lookup_hedged0000Bd_", scope: !35556, file: !1873, line: 239, type: !1514, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35539 = distinct !DISubprogram(name: "collect<alloc::vec::into_iter::IntoIter<core::net::socket_addr::SocketAddr, alloc::alloc::Global>, alloc::vec::Vec<core::net::socket_addr::SocketAddr, alloc::alloc::Global>>", linkageName: "_RINvYINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCscgRAwXFJnXP_4core3net11socket_addr10SocketAddrENtNtNtNtBX_4iter6traits8iterator8Iterator7collectINtB8_3VecBR_EECslpwjCj2YNBy_9polars_io", scope: !1735, file: !1732, line: 2091, type: !1514, scopeLine: 2091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35540 = distinct !DILocation(line: 240, column: 9, scope: !35527)
!35541 = distinct !DILocation(line: 810, column: 1, scope: !577, inlinedAt: !35540)
!35542 = distinct !DILocation(line: 810, column: 1, scope: !391, inlinedAt: !35541)
!35543 = distinct !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !35542)
!35544 = distinct !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !35542)
!35545 = !DINamespace(name: "{closure#0}", scope: !1965)
!35546 = !DILocation(line: 237, column: 18, scope: !35527)
!35547 = !DILocation(line: 1055, column: 52, scope: !35529, inlinedAt: !35546)
!35548 = !DILocation(line: 1841, column: 76, scope: !35530, inlinedAt: !35547)
!35549 = !DILocation(line: 1942, column: 18, scope: !35531, inlinedAt: !35548)
!35550 = !DILocation(line: 296, column: 20, scope: !35532, inlinedAt: !35549)
!35551 = !DILocation(line: 609, column: 14, scope: !35533, inlinedAt: !35550)
!35552 = !DILocation(line: 239, column: 18, scope: !35527)
!35553 = !DILocation(line: 836, column: 25, scope: !35536, inlinedAt: !35552)
!35554 = !DILocation(line: 239, column: 30, scope: !35538, inlinedAt: !35553)
!35555 = !DILocation(line: 2104, column: 9, scope: !35539, inlinedAt: !35554)
!35556 = !DINamespace(name: "{closure#0}", scope: !35545)
!35557 = !DILocation(line: 237, column: 13, scope: !35527)
!35558 = !DILocation(line: 614, column: 9, scope: !35528, inlinedAt: !35551)
!35559 = !DILocation(line: 1841, column: 86, scope: !35530, inlinedAt: !35547)
!35560 = !DILocation(line: 238, column: 18, scope: !35527)
!35561 = !DILocation(line: 240, column: 9, scope: !35527)
!35562 = !DILocation(line: 835, column: 15, scope: !35534, inlinedAt: !35552)
!35563 = !DILocation(line: 835, column: 9, scope: !35534, inlinedAt: !35552)
!35564 = !DILocation(line: 837, column: 17, scope: !35534, inlinedAt: !35552)
!35565 = !DILocation(line: 837, column: 23, scope: !35535, inlinedAt: !35552)
!35566 = !DILocation(line: 839, column: 5, scope: !35534, inlinedAt: !35552)
!35567 = !DILocation(line: 836, column: 16, scope: !35534, inlinedAt: !35552)
!35568 = !DILocation(line: 3892, column: 9, scope: !35537, inlinedAt: !35555)
!35569 = !DILocation(line: 836, column: 22, scope: !35536, inlinedAt: !35552)
!35570 = !DILocation(line: 836, column: 30, scope: !35536, inlinedAt: !35552)
!35571 = !DILocation(line: 836, column: 30, scope: !35534, inlinedAt: !35552)
!35572 = !DILocation(line: 239, column: 49, scope: !35527)
!35573 = !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !35542)
!35574 = !DILocation(line: 810, column: 1, scope: !284, inlinedAt: !35543)
!35575 = !DILocation(line: 0, scope: !35527)
!35576 = !DILocation(line: 810, column: 1, scope: !284, inlinedAt: !35544)
!35577 = !DILocation(line: 240, column: 10, scope: !35527)
!35578 = !DILocation(line: 236, column: 30, scope: !35527)
!35579 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtB9_9GetResult5bytes00CslpwjCj2YNBy_9polars_io", scope: !35626, file: !35623, line: 1661, type: !1514, scopeLine: 1661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35580 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECslpwjCj2YNBy_9polars_io", scope: !1968, file: !1966, line: 613, type: !1514, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35581 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXsH_NtCsh8eZTKRCwoO_3std4pathNtB5_7PathBufNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !35640, file: !35638, line: 2077, type: !1514, scopeLine: 2077, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35582 = distinct !DISubprogram(name: "new<std::ffi::os_str::OsString>", linkageName: "_RINvMs16_NtCsh8eZTKRCwoO_3std4pathNtB7_4Path3newNtNtNtB9_3ffi6os_str8OsStringECslpwjCj2YNBy_9polars_io", scope: !35641, file: !35638, line: 2394, type: !1514, scopeLine: 2394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35583 = distinct !DISubprogram(name: "as_ref", linkageName: "_RNvXsV_NtNtCsh8eZTKRCwoO_3std3ffi6os_strNtB5_8OsStringINtNtCscgRAwXFJnXP_4core7convert5AsRefNtB5_5OsStrE6as_ref", scope: !35645, file: !35642, line: 1716, type: !1514, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35584 = distinct !DISubprogram(name: "deref", linkageName: "_RNvXs5_NtNtCsh8eZTKRCwoO_3std3ffi6os_strNtB5_8OsStringNtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5deref", scope: !35646, file: !35642, line: 680, type: !1514, scopeLine: 680, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35585 = distinct !DISubprogram(name: "index", linkageName: "_RNvXs3_NtNtCsh8eZTKRCwoO_3std3ffi6os_strNtB5_8OsStringINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexNtNtBV_5range9RangeFullE5index", scope: !35647, file: !35642, line: 662, type: !1514, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35586 = distinct !DISubprogram(name: "as_slice", linkageName: "_RNvMs6_NtNtNtCsh8eZTKRCwoO_3std3sys6os_str5bytesNtB5_3Buf8as_slice", scope: !35651, file: !35648, line: 160, type: !1514, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35587 = distinct !DISubprogram(name: "as_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE8as_sliceCslpwjCj2YNBy_9polars_io", scope: !1969, file: !1919, line: 1824, type: !1514, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35588 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE6as_ptrCslpwjCj2YNBy_9polars_io", scope: !1969, file: !1919, line: 1939, type: !1514, scopeLine: 1939, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35589 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE3ptrCslpwjCj2YNBy_9polars_io", scope: !1970, file: !1966, line: 295, type: !1514, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35590 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB6_11RawVecInner3ptrhECslpwjCj2YNBy_9polars_io", scope: !1968, file: !1966, line: 608, type: !1514, scopeLine: 608, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35591 = distinct !DISubprogram(name: "branch<bytes::bytes::Bytes, object_store::Error>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtCshK0ivY6saku_5bytes5bytes5BytesNtCs8RKTHBS4OBx_12object_store5ErrorENtNtNtB7_3ops9try_trait3Try6branchCslpwjCj2YNBy_9polars_io", scope: !1660, file: !1601, line: 2172, type: !1514, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35592 = distinct !DISubprogram(name: "from_residual<bytes::bytes::Bytes, object_store::Error, object_store::Error>", linkageName: "_RNvXsq_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtCshK0ivY6saku_5bytes5bytes5BytesNtCs8RKTHBS4OBx_12object_store5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1k_EE13from_residualCslpwjCj2YNBy_9polars_io", scope: !1798, file: !1601, line: 2187, type: !1514, scopeLine: 2187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35593 = distinct !DILexicalBlock(scope: !35592, file: !1601, line: 2189, column: 13)
!35594 = distinct !DILexicalBlock(scope: !35579, file: !35623, line: 1664, column: 74)
!35595 = distinct !DILexicalBlock(scope: !35594, file: !35623, line: 1664, column: 74)
!35596 = distinct !{!35596, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtBQ_9GetResult5bytes00ECslpwjCj2YNBy_9polars_io"}
!35597 = distinct !{!35597, !35596, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtBQ_9GetResult5bytes00ECslpwjCj2YNBy_9polars_io: argument 0"}
!35598 = distinct !DILocation(line: 1667, column: 17, scope: !35579)
!35599 = distinct !DILocation(line: 810, column: 1, scope: !592, inlinedAt: !35598)
!35600 = distinct !DILocation(line: 810, column: 1, scope: !450, inlinedAt: !35599)
!35601 = distinct !DILocation(line: 810, column: 1, scope: !449, inlinedAt: !35600)
!35602 = distinct !DILocation(line: 810, column: 1, scope: !448, inlinedAt: !35601)
!35603 = distinct !DILocation(line: 810, column: 1, scope: !447, inlinedAt: !35602)
!35604 = distinct !DILocation(line: 810, column: 1, scope: !592, inlinedAt: !35598)
!35605 = distinct !DILocation(line: 810, column: 1, scope: !430, inlinedAt: !35604)
!35606 = distinct !DILocation(line: 810, column: 1, scope: !429, inlinedAt: !35605)
!35607 = distinct !DILocation(line: 810, column: 1, scope: !428, inlinedAt: !35606)
!35608 = distinct !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !35607)
!35609 = distinct !DILexicalBlock(scope: !35579, file: !35623, line: 1664, column: 21)
!35610 = distinct !{!35610, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtBQ_9GetResult5bytes00ECslpwjCj2YNBy_9polars_io"}
!35611 = distinct !{!35611, !35610, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNCNvMs1_Cs8RKTHBS4OBx_12object_storeNtBQ_9GetResult5bytes00ECslpwjCj2YNBy_9polars_io: argument 0"}
!35612 = distinct !DILocation(line: 1667, column: 17, scope: !35579)
!35613 = distinct !DILocation(line: 810, column: 1, scope: !592, inlinedAt: !35612)
!35614 = distinct !DILocation(line: 810, column: 1, scope: !450, inlinedAt: !35613)
!35615 = distinct !DILocation(line: 810, column: 1, scope: !449, inlinedAt: !35614)
!35616 = distinct !DILocation(line: 810, column: 1, scope: !448, inlinedAt: !35615)
!35617 = distinct !DILocation(line: 810, column: 1, scope: !447, inlinedAt: !35616)
!35618 = distinct !DILocation(line: 810, column: 1, scope: !592, inlinedAt: !35612)
!35619 = distinct !DILocation(line: 810, column: 1, scope: !430, inlinedAt: !35618)
!35620 = distinct !DILocation(line: 810, column: 1, scope: !429, inlinedAt: !35619)
!35621 = distinct !DILocation(line: 810, column: 1, scope: !428, inlinedAt: !35620)
!35622 = distinct !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !35621)
!35623 = !DIFile(filename: "src/lib.rs", directory: "/home/opt-bench/.cargo/git/checkouts/arrow-rs-object-store-0a9a5252a7655756/f50a6e5", checksumkind: CSK_MD5, checksum: "05f738a1341debb61ce09359e926ad72")
!35624 = !DINamespace(name: "{impl#3}", scope: !1923)
!35625 = !DINamespace(name: "bytes", scope: !35624)
!35626 = !DINamespace(name: "{async_fn#0}", scope: !35625)
!35627 = !DILocation(line: 1664, column: 56, scope: !35579)
!35628 = !DILocation(line: 2078, column: 9, scope: !35581, inlinedAt: !35627)
!35629 = !DILocation(line: 2395, column: 23, scope: !35582, inlinedAt: !35628)
!35630 = !DILocation(line: 1717, column: 9, scope: !35583, inlinedAt: !35629)
!35631 = !DILocation(line: 681, column: 14, scope: !35584, inlinedAt: !35630)
!35632 = !DILocation(line: 663, column: 38, scope: !35585, inlinedAt: !35631)
!35633 = !DILocation(line: 164, column: 44, scope: !35586, inlinedAt: !35632)
!35634 = !DILocation(line: 1841, column: 76, scope: !35587, inlinedAt: !35633)
!35635 = !DILocation(line: 1942, column: 18, scope: !35588, inlinedAt: !35634)
!35636 = !DILocation(line: 296, column: 20, scope: !35589, inlinedAt: !35635)
!35637 = !DILocation(line: 609, column: 14, scope: !35590, inlinedAt: !35636)
!35638 = !DIFile(filename: "library/std/src/path.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "714ac41e7eb6605489fc0c70ab623583")
!35639 = !DINamespace(name: "path", scope: !1562)
!35640 = !DINamespace(name: "{impl#45}", scope: !35639)
!35641 = !DINamespace(name: "Path", scope: !35639)
!35642 = !DIFile(filename: "library/std/src/ffi/os_str.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "30ebee51090fa40097bfe1a4130a1708")
!35643 = !DINamespace(name: "ffi", scope: !1562)
!35644 = !DINamespace(name: "os_str", scope: !35643)
!35645 = !DINamespace(name: "{impl#59}", scope: !35644)
!35646 = !DINamespace(name: "{impl#7}", scope: !35644)
!35647 = !DINamespace(name: "{impl#5}", scope: !35644)
!35648 = !DIFile(filename: "library/std/src/sys/os_str/bytes.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "6c7f4a29e2f232ef89a4a80dadafd37f")
!35649 = !DINamespace(name: "os_str", scope: !1563)
!35650 = !DINamespace(name: "bytes", scope: !35649)
!35651 = !DINamespace(name: "Buf", scope: !35650)
!35652 = !DILocation(line: 1664, column: 34, scope: !35579)
!35653 = !DILexicalBlockFile(scope: !35595, file: !35623, discriminator: 2)
!35654 = !DILocation(line: 1664, column: 34, scope: !35653)
!35655 = !{!35597}
!35656 = !{!35611}
!35657 = !DILocation(line: 1667, column: 17, scope: !35579)
!35658 = !DILocation(line: 810, column: 1, scope: !592, inlinedAt: !35657)
!35659 = !DILocation(line: 810, column: 1, scope: !430, inlinedAt: !35658)
!35660 = !DILocation(line: 810, column: 1, scope: !429, inlinedAt: !35659)
!35661 = !DILocation(line: 810, column: 1, scope: !428, inlinedAt: !35660)
!35662 = !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !35661)
!35663 = !DILocation(line: 1664, column: 45, scope: !35579)
!35664 = !DILocation(line: 614, column: 9, scope: !35580, inlinedAt: !35637)
!35665 = !DILocation(line: 1841, column: 86, scope: !35587, inlinedAt: !35633)
!35666 = !DILocation(line: 1664, column: 63, scope: !35579)
!35667 = !DILocation(line: 2173, column: 15, scope: !35591, inlinedAt: !35652)
!35668 = !DILocation(line: 0, scope: !35591, inlinedAt: !35652)
!35669 = !DILocation(line: 2173, column: 9, scope: !35591, inlinedAt: !35652)
!35670 = !DILocation(line: 2175, column: 17, scope: !35591, inlinedAt: !35652)
!35671 = !DILocation(line: 2189, column: 23, scope: !35593, inlinedAt: !35654)
!35672 = !DILocation(line: 1664, column: 74, scope: !35579)
!35673 = !DILocation(line: 1664, column: 75, scope: !35579)
!35674 = !DILocation(line: 810, column: 1, scope: !592, inlinedAt: !35598)
!35675 = !DILocation(line: 216, column: 25, scope: !446, inlinedAt: !35603)
!35676 = !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !35607)
!35677 = !DILocation(line: 810, column: 1, scope: !284, inlinedAt: !35608)
!35678 = !DILocation(line: 0, scope: !35579)
!35679 = !DILocation(line: 1666, column: 21, scope: !35609)
!35680 = !DILocation(line: 810, column: 1, scope: !592, inlinedAt: !35612)
!35681 = !DILocation(line: 216, column: 25, scope: !446, inlinedAt: !35617)
!35682 = !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !35621)
!35683 = !DILocation(line: 810, column: 1, scope: !284, inlinedAt: !35622)
!35684 = !DILocation(line: 810, column: 1, scope: !284, inlinedAt: !35662)
!35685 = !DILocation(line: 1667, column: 18, scope: !35579)
!35686 = !DILocation(line: 1661, column: 38, scope: !35579)
!35687 = distinct !DISubprogram(name: "{async_block#1}", linkageName: "_RNCNCNvNtNtCslpwjCj2YNBy_9polars_io10file_cache10cache_lock22GLOBAL_FILE_CACHE_LOCK0s_0B9_", scope: !35750, file: !1871, line: 31, type: !1514, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35688 = distinct !DILexicalBlock(scope: !35687, file: !1871, line: 32, column: 9)
!35689 = distinct !DILexicalBlock(scope: !35688, file: !1871, line: 33, column: 9)
!35690 = distinct !DISubprogram(name: "deref<core::sync::atomic::Atomic<bool>, alloc::alloc::Global>", linkageName: "_RNvXsw_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicbEENtNtNtBN_3ops5deref5Deref5derefCslpwjCj2YNBy_9polars_io", scope: !1907, file: !1533, line: 2427, type: !1514, scopeLine: 2427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35691 = distinct !DISubprogram(name: "as_ref<core::sync::atomic::Atomic<bool>, alloc::alloc::Global>", linkageName: "_RNvXs1j_NtCsgZ49sUHp3tW_5alloc4syncINtB6_3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicbEEINtNtBO_7convert5AsRefBH_E6as_refCslpwjCj2YNBy_9polars_io", scope: !1972, file: !1533, line: 4193, type: !1532, scopeLine: 4193, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35692 = distinct !DILocation(line: 33, column: 38, scope: !35688)
!35693 = distinct !DILocation(line: 4194, column: 10, scope: !35691, inlinedAt: !35692)
!35694 = distinct !DILexicalBlock(scope: !35689, file: !1871, line: 34, column: 9)
!35695 = distinct !DILexicalBlock(scope: !35694, file: !1871, line: 35, column: 9)
!35696 = distinct !DILexicalBlock(scope: !35695, file: !1871, line: 59, column: 60)
!35697 = distinct !DISubprogram(name: "atomic_swap<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic11atomic_swaphECslpwjCj2YNBy_9polars_io", scope: !1518, file: !1515, line: 3916, type: !1514, scopeLine: 3916, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35698 = distinct !DISubprogram(name: "swap", linkageName: "_RNvMs2_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicbE4swap", scope: !1523, file: !1515, line: 800, type: !1514, scopeLine: 800, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35699 = distinct !DILocation(line: 49, column: 36, scope: !35695)
!35700 = distinct !DILocation(line: 805, column: 22, scope: !35698, inlinedAt: !35699)
!35701 = distinct !DILexicalBlock(scope: !35695, file: !1871, line: 50, column: 94)
!35702 = distinct !DILocation(line: 50, column: 58, scope: !35701)
!35703 = distinct !DILocation(line: 357, column: 9, scope: !1016, inlinedAt: !35702)
!35704 = distinct !DILocation(line: 242, column: 19, scope: !1015, inlinedAt: !35703)
!35705 = distinct !DILocation(line: 221, column: 23, scope: !1014, inlinedAt: !35704)
!35706 = distinct !DILocation(line: 87, column: 31, scope: !1013, inlinedAt: !35705)
!35707 = distinct !DILocation(line: 2870, column: 26, scope: !1012, inlinedAt: !35706)
!35708 = distinct !DILocation(line: 42, column: 13, scope: !35695)
!35709 = distinct !DISubprogram(name: "into_future<tokio::sync::notify::Notified>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core6future11into_futureNtNtNtCskmDBXs7hs3c_5tokio4sync6notify8NotifiedNtB2_10IntoFuture11into_futureCslpwjCj2YNBy_9polars_io", scope: !1980, file: !1977, line: 142, type: !1514, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35710 = distinct !DILocation(line: 42, column: 45, scope: !35695)
!35711 = distinct !DILexicalBlock(scope: !35695, file: !1871, line: 42, column: 45)
!35712 = distinct !DILocation(line: 42, column: 49, scope: !35695)
!35713 = distinct !DILocation(line: 810, column: 1, scope: !844, inlinedAt: !35712)
!35714 = distinct !DILocation(line: 810, column: 1, scope: !845, inlinedAt: !35713)
!35715 = distinct !DILocation(line: 810, column: 1, scope: !744, inlinedAt: !35714)
!35716 = distinct !DILocation(line: 810, column: 1, scope: !743, inlinedAt: !35715)
!35717 = distinct !DILocation(line: 810, column: 1, scope: !742, inlinedAt: !35716)
!35718 = distinct !DILocation(line: 810, column: 1, scope: !746, inlinedAt: !35717)
!35719 = distinct !DILocation(line: 810, column: 1, scope: !844, inlinedAt: !35712)
!35720 = distinct !DILocation(line: 810, column: 1, scope: !845, inlinedAt: !35719)
!35721 = distinct !DILocation(line: 810, column: 1, scope: !744, inlinedAt: !35720)
!35722 = distinct !DILocation(line: 810, column: 1, scope: !743, inlinedAt: !35721)
!35723 = distinct !DILocation(line: 810, column: 1, scope: !742, inlinedAt: !35722)
!35724 = distinct !DILocation(line: 810, column: 1, scope: !746, inlinedAt: !35723)
!35725 = distinct !{!35725, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyEECslpwjCj2YNBy_9polars_io"}
!35726 = distinct !{!35726, !35725, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyEECslpwjCj2YNBy_9polars_io: argument 0"}
!35727 = distinct !{!35727, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io"}
!35728 = distinct !{!35728, !35727, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io: argument 0"}
!35729 = distinct !DILocation(line: 62, column: 5, scope: !35689)
!35730 = distinct !DILocation(line: 810, column: 1, scope: !836, inlinedAt: !35729)
!35731 = distinct !DILocation(line: 2814, column: 17, scope: !837, inlinedAt: !35730)
!35732 = distinct !DILocation(line: 2110, column: 27, scope: !848, inlinedAt: !35731)
!35733 = distinct !DILocation(line: 2814, column: 32, scope: !837, inlinedAt: !35730)
!35734 = distinct !DILocation(line: 3193, column: 26, scope: !850, inlinedAt: !35733)
!35735 = distinct !DILocation(line: 64, column: 9, scope: !837, inlinedAt: !35730)
!35736 = distinct !DILocation(line: 59, column: 60, scope: !35695)
!35737 = distinct !{!35737, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyEECslpwjCj2YNBy_9polars_io"}
!35738 = distinct !{!35738, !35737, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyEECslpwjCj2YNBy_9polars_io: argument 0"}
!35739 = distinct !{!35739, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io"}
!35740 = distinct !{!35740, !35739, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCskmDBXs7hs3c_5tokio4sync6notify6NotifyENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io: argument 0"}
!35741 = distinct !DILocation(line: 62, column: 5, scope: !35687)
!35742 = distinct !DILocation(line: 810, column: 1, scope: !836, inlinedAt: !35741)
!35743 = distinct !DILocation(line: 2814, column: 17, scope: !837, inlinedAt: !35742)
!35744 = distinct !DILocation(line: 2110, column: 27, scope: !848, inlinedAt: !35743)
!35745 = distinct !DILocation(line: 2814, column: 32, scope: !837, inlinedAt: !35742)
!35746 = distinct !DILocation(line: 3193, column: 26, scope: !850, inlinedAt: !35745)
!35747 = distinct !DILocation(line: 64, column: 9, scope: !837, inlinedAt: !35742)
!35748 = !DINamespace(name: "cache_lock", scope: !1971)
!35749 = !DINamespace(name: "GLOBAL_FILE_CACHE_LOCK", scope: !35748)
!35750 = !DINamespace(name: "{closure#0}", scope: !35749)
!35751 = !DILexicalBlockFile(scope: !35687, file: !1661, discriminator: 0)
!35752 = !DILexicalBlockFile(scope: !35695, file: !1661, discriminator: 0)
!35753 = !{!35726}
!35754 = !{!35728}
!35755 = !{!35728, !35726}
!35756 = !{!35738}
!35757 = !{!35740}
!35758 = !{!35740, !35738}
!35759 = !DILocation(line: 31, column: 17, scope: !35687)
!35760 = !DILocation(line: 0, scope: !35751)
!35761 = !DILocation(line: 62, column: 5, scope: !35687)
!35762 = !DILocation(line: 32, column: 13, scope: !35687)
!35763 = !DILocation(line: 32, column: 51, scope: !35687)
!35764 = !DILocation(line: 33, column: 30, scope: !35688)
!35765 = !DILocation(line: 34, column: 36, scope: !35689)
!35766 = !DILocation(line: 32, column: 23, scope: !35687)
!35767 = !DILocation(line: 2428, column: 9, scope: !35690, inlinedAt: !35693)
!35768 = !DILocation(line: 35, column: 23, scope: !35694)
!35769 = !DILocation(line: 37, column: 9, scope: !35695)
!35770 = !DILocation(line: 38, column: 16, scope: !35695)
!35771 = !DILocation(line: 59, column: 64, scope: !35695)
!35772 = !DILocation(line: 59, column: 60, scope: !35696)
!35773 = !DILocation(line: 0, scope: !35695)
!35774 = !DILocation(line: 49, column: 21, scope: !35695)
!35775 = !DILocation(line: 3920, column: 24, scope: !35697, inlinedAt: !35700)
!35776 = !DILocation(line: 805, column: 22, scope: !35698, inlinedAt: !35699)
!35777 = !DILocation(line: 3905, column: 24, scope: !1011, inlinedAt: !35707)
!35778 = !DILocation(line: 221, column: 12, scope: !1014, inlinedAt: !35704)
!35779 = !DILocation(line: 225, column: 13, scope: !1014, inlinedAt: !35704)
!35780 = !DILocation(line: 225, column: 21, scope: !1014, inlinedAt: !35704)
!35781 = !DILocation(line: 226, column: 36, scope: !1017, inlinedAt: !35704)
!35782 = !DILocation(line: 226, column: 20, scope: !1017, inlinedAt: !35704)
!35783 = !DILocation(line: 226, column: 61, scope: !1017, inlinedAt: !35704)
!35784 = !DILocation(line: 227, column: 5, scope: !1014, inlinedAt: !35704)
!35785 = !DILocation(line: 50, column: 81, scope: !35701)
!35786 = !DILocation(line: 50, column: 28, scope: !35701)
!35787 = !DILocation(line: 51, column: 53, scope: !35701)
!35788 = !DILocation(line: 0, scope: !35752)
!35789 = !DILocation(line: 52, column: 29, scope: !35701)
!35790 = !DILocation(line: 39, column: 17, scope: !35695)
!35791 = !DILocation(line: 42, column: 13, scope: !35695)
!35792 = !DILocation(line: 2428, column: 9, scope: !1018, inlinedAt: !35708)
!35793 = !DILocation(line: 42, column: 34, scope: !35695)
!35794 = !DILocation(line: 42, column: 49, scope: !35695)
!35795 = !DILocation(line: 143, column: 9, scope: !35709, inlinedAt: !35710)
!35796 = !DILocation(line: 42, column: 45, scope: !35711)
!35797 = !DILocation(line: 810, column: 1, scope: !844, inlinedAt: !35712)
!35798 = !DILocation(line: 810, column: 1, scope: !742, inlinedAt: !35716)
!35799 = !DILocation(line: 674, column: 18, scope: !745, inlinedAt: !35718)
!35800 = !DILocation(line: 810, column: 1, scope: !742, inlinedAt: !35722)
!35801 = !DILocation(line: 674, column: 18, scope: !745, inlinedAt: !35724)
!35802 = !DILocation(line: 44, column: 16, scope: !35695)
!35803 = !DILocation(line: 45, column: 17, scope: !35695)
!35804 = !DILocation(line: 62, column: 5, scope: !35689)
!35805 = !DILocation(line: 810, column: 1, scope: !836, inlinedAt: !35729)
!35806 = !DILocation(line: 444, column: 20, scope: !847, inlinedAt: !35732)
!35807 = !DILocation(line: 3956, column: 24, scope: !849, inlinedAt: !35734)
!35808 = !DILocation(line: 2814, column: 12, scope: !837, inlinedAt: !35730)
!35809 = !DILocation(line: 4387, column: 24, scope: !24, inlinedAt: !35735)
!35810 = !DILocation(line: 2857, column: 18, scope: !837, inlinedAt: !35730)
!35811 = !DILocation(line: 59, column: 17, scope: !35695)
!35812 = !DILocation(line: 143, column: 9, scope: !1019, inlinedAt: !35736)
!35813 = !DILocation(line: 810, column: 1, scope: !836, inlinedAt: !35741)
!35814 = !DILocation(line: 444, column: 20, scope: !847, inlinedAt: !35744)
!35815 = !DILocation(line: 3956, column: 24, scope: !849, inlinedAt: !35746)
!35816 = !DILocation(line: 2814, column: 12, scope: !837, inlinedAt: !35742)
!35817 = !DILocation(line: 4387, column: 24, scope: !24, inlinedAt: !35747)
!35818 = !DILocation(line: 2857, column: 18, scope: !837, inlinedAt: !35742)
!35819 = distinct !DISubprogram(name: "{async_block#0}", linkageName: "_RNCNCNvXs0_NtNtCslpwjCj2YNBy_9polars_io5cloud3dnsNtB9_15CachingResolverNtNtNtCs1lTGjXZLbkb_7reqwest3dns7resolve7Resolve7resolve00Bd_", scope: !35946, file: !1873, line: 175, type: !1514, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35820 = distinct !DILexicalBlock(scope: !35819, file: !1873, line: 176, column: 33)
!35821 = distinct !DILexicalBlock(scope: !35820, file: !1873, line: 181, column: 59)
!35822 = distinct !DILexicalBlock(scope: !35821, file: !1873, line: 182, column: 73)
!35823 = distinct !DILexicalBlock(scope: !35819, file: !1873, line: 177, column: 91)
!35824 = distinct !DILexicalBlock(scope: !35823, file: !1873, line: 177, column: 91)
!35825 = distinct !DILocation(line: 182, column: 77, scope: !35821)
!35826 = distinct !DILocation(line: 809, column: 37, scope: !854, inlinedAt: !35825)
!35827 = distinct !DILocation(line: 783, column: 50, scope: !835, inlinedAt: !35826)
!35828 = distinct !DILocation(line: 810, column: 1, scope: !831, inlinedAt: !35827)
!35829 = distinct !DILocation(line: 810, column: 1, scope: !832, inlinedAt: !35828)
!35830 = distinct !DILocation(line: 810, column: 1, scope: !744, inlinedAt: !35829)
!35831 = distinct !DILocation(line: 810, column: 1, scope: !743, inlinedAt: !35830)
!35832 = distinct !DILocation(line: 810, column: 1, scope: !742, inlinedAt: !35831)
!35833 = distinct !DILocation(line: 810, column: 1, scope: !746, inlinedAt: !35832)
!35834 = distinct !DILocation(line: 810, column: 1, scope: !831, inlinedAt: !35827)
!35835 = distinct !DILocation(line: 810, column: 1, scope: !832, inlinedAt: !35834)
!35836 = distinct !DILocation(line: 810, column: 1, scope: !744, inlinedAt: !35835)
!35837 = distinct !DILocation(line: 810, column: 1, scope: !743, inlinedAt: !35836)
!35838 = distinct !DILocation(line: 810, column: 1, scope: !742, inlinedAt: !35837)
!35839 = distinct !DILocation(line: 810, column: 1, scope: !746, inlinedAt: !35838)
!35840 = distinct !DILexicalBlock(scope: !35821, file: !1873, line: 182, column: 37)
!35841 = distinct !DILocation(line: 186, column: 52, scope: !35840)
!35842 = distinct !{!35842, !"_RNvMse_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtNtCscgRAwXFJnXP_4core3net11socket_addr10SocketAddrEE3newCslpwjCj2YNBy_9polars_io"}
!35843 = distinct !{!35843, !35842, !"_RNvMse_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtNtCscgRAwXFJnXP_4core3net11socket_addr10SocketAddrEE3newCslpwjCj2YNBy_9polars_io: argument 0"}
!35844 = distinct !{!35844, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtB4_3vec3VecNtNtNtCscgRAwXFJnXP_4core3net11socket_addr10SocketAddrEEE3newCslpwjCj2YNBy_9polars_io"}
!35845 = distinct !{!35845, !35844, !"_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtB4_3vec3VecNtNtNtCscgRAwXFJnXP_4core3net11socket_addr10SocketAddrEEE3newCslpwjCj2YNBy_9polars_io: argument 0"}
!35846 = distinct !DILocation(line: 422, column: 25, scope: !1020, inlinedAt: !35841)
!35847 = distinct !DILocation(line: 286, column: 19, scope: !1027, inlinedAt: !35846)
!35848 = distinct !DILocation(line: 248, column: 18, scope: !1026, inlinedAt: !35847)
!35849 = distinct !DILocation(line: 449, column: 14, scope: !1025, inlinedAt: !35848)
!35850 = distinct !DILocation(line: 332, column: 9, scope: !1024, inlinedAt: !35849)
!35851 = distinct !DILocation(line: 210, column: 73, scope: !1023, inlinedAt: !35850)
!35852 = distinct !DILocation(line: 189, column: 41, scope: !35840)
!35853 = distinct !DILocation(line: 810, column: 1, scope: !657, inlinedAt: !35852)
!35854 = distinct !DILocation(line: 64, column: 9, scope: !660, inlinedAt: !35853)
!35855 = distinct !{!35855, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtBL_3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEEECslpwjCj2YNBy_9polars_io"}
!35856 = distinct !{!35856, !35855, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtBL_3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEEECslpwjCj2YNBy_9polars_io: argument 0"}
!35857 = distinct !{!35857, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtNtCscgRAwXFJnXP_4core3net11socket_addr10SocketAddrEENtNtNtB12_3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io"}
!35858 = distinct !{!35858, !35857, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtNtCscgRAwXFJnXP_4core3net11socket_addr10SocketAddrEENtNtNtB12_3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io: argument 0"}
!35859 = distinct !DILocation(line: 2814, column: 32, scope: !660, inlinedAt: !35853)
!35860 = distinct !DILocation(line: 3193, column: 26, scope: !662, inlinedAt: !35859)
!35861 = distinct !DILocation(line: 188, column: 68, scope: !35840)
!35862 = distinct !DILocation(line: 2394, column: 44, scope: !1031, inlinedAt: !35861)
!35863 = distinct !DILocation(line: 3162, column: 26, scope: !1030, inlinedAt: !35862)
!35864 = distinct !{!35864, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEEB18_"}
!35865 = distinct !{!35865, !35864, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEEB18_: argument 0"}
!35866 = distinct !DILocation(line: 190, column: 38, scope: !35840)
!35867 = distinct !{!35867, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEBM_"}
!35868 = distinct !{!35868, !35867, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCslpwjCj2YNBy_9polars_io5cloud3dns11CachedAddrsEBM_: argument 0"}
!35869 = distinct !{!35869, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtBL_3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEEECslpwjCj2YNBy_9polars_io"}
!35870 = distinct !{!35870, !35869, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtBL_3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEEECslpwjCj2YNBy_9polars_io: argument 0"}
!35871 = distinct !DILocation(line: 810, column: 1, scope: !1033, inlinedAt: !35866)
!35872 = distinct !{!35872, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtNtCscgRAwXFJnXP_4core3net11socket_addr10SocketAddrEENtNtNtB12_3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io"}
!35873 = distinct !{!35873, !35872, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtB7_3vec3VecNtNtNtCscgRAwXFJnXP_4core3net11socket_addr10SocketAddrEENtNtNtB12_3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io: argument 0"}
!35874 = distinct !DILocation(line: 810, column: 1, scope: !912, inlinedAt: !35871)
!35875 = distinct !DILocation(line: 810, column: 1, scope: !657, inlinedAt: !35874)
!35876 = distinct !DILocation(line: 2814, column: 17, scope: !660, inlinedAt: !35875)
!35877 = distinct !DILocation(line: 2110, column: 27, scope: !659, inlinedAt: !35876)
!35878 = distinct !DILocation(line: 2814, column: 32, scope: !660, inlinedAt: !35875)
!35879 = distinct !DILocation(line: 3193, column: 26, scope: !662, inlinedAt: !35878)
!35880 = distinct !DILocation(line: 64, column: 9, scope: !660, inlinedAt: !35875)
!35881 = distinct !{!35881, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECslpwjCj2YNBy_9polars_io"}
!35882 = distinct !{!35882, !35881, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECslpwjCj2YNBy_9polars_io: argument 0"}
!35883 = distinct !{!35883, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io"}
!35884 = distinct !{!35884, !35883, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io: argument 0"}
!35885 = distinct !DILocation(line: 810, column: 1, scope: !912, inlinedAt: !35871)
!35886 = distinct !DILocation(line: 810, column: 1, scope: !838, inlinedAt: !35885)
!35887 = distinct !DILocation(line: 2814, column: 17, scope: !841, inlinedAt: !35886)
!35888 = distinct !DILocation(line: 2110, column: 27, scope: !840, inlinedAt: !35887)
!35889 = distinct !DILocation(line: 2814, column: 32, scope: !841, inlinedAt: !35886)
!35890 = distinct !DILocation(line: 3193, column: 26, scope: !843, inlinedAt: !35889)
!35891 = distinct !DILocation(line: 64, column: 9, scope: !841, inlinedAt: !35886)
!35892 = distinct !{!35892, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECslpwjCj2YNBy_9polars_io"}
!35893 = distinct !{!35893, !35892, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECslpwjCj2YNBy_9polars_io: argument 0"}
!35894 = distinct !{!35894, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io"}
!35895 = distinct !{!35895, !35894, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io: argument 0"}
!35896 = distinct !DILocation(line: 810, column: 1, scope: !912, inlinedAt: !35871)
!35897 = distinct !DILocation(line: 810, column: 1, scope: !838, inlinedAt: !35896)
!35898 = distinct !DILocation(line: 2814, column: 17, scope: !841, inlinedAt: !35897)
!35899 = distinct !DILocation(line: 2110, column: 27, scope: !840, inlinedAt: !35898)
!35900 = distinct !DILocation(line: 2814, column: 32, scope: !841, inlinedAt: !35897)
!35901 = distinct !DILocation(line: 3193, column: 26, scope: !843, inlinedAt: !35900)
!35902 = distinct !DILocation(line: 64, column: 9, scope: !841, inlinedAt: !35897)
!35903 = distinct !DILocation(line: 191, column: 33, scope: !35821)
!35904 = distinct !DILocation(line: 191, column: 33, scope: !35821)
!35905 = distinct !DILocation(line: 192, column: 33, scope: !35820)
!35906 = distinct !DISubprogram(name: "store", linkageName: "_RNvMs2_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB5_6AtomicbE5store", scope: !1523, file: !1515, line: 767, type: !1514, scopeLine: 767, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1513)
!35907 = distinct !DILocation(line: 192, column: 44, scope: !35820)
!35908 = distinct !DILocation(line: 771, column: 13, scope: !35906, inlinedAt: !35907)
!35909 = distinct !{!35909, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECslpwjCj2YNBy_9polars_io"}
!35910 = distinct !{!35910, !35909, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECslpwjCj2YNBy_9polars_io: argument 0"}
!35911 = distinct !{!35911, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io"}
!35912 = distinct !{!35912, !35911, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io: argument 0"}
!35913 = distinct !DILocation(line: 193, column: 29, scope: !35819)
!35914 = distinct !DILocation(line: 810, column: 1, scope: !838, inlinedAt: !35913)
!35915 = distinct !DILocation(line: 2814, column: 17, scope: !841, inlinedAt: !35914)
!35916 = distinct !DILocation(line: 2110, column: 27, scope: !840, inlinedAt: !35915)
!35917 = distinct !DILocation(line: 2814, column: 32, scope: !841, inlinedAt: !35914)
!35918 = distinct !DILocation(line: 3193, column: 26, scope: !843, inlinedAt: !35917)
!35919 = distinct !DILocation(line: 64, column: 9, scope: !841, inlinedAt: !35914)
!35920 = distinct !DILocation(line: 193, column: 29, scope: !35819)
!35921 = distinct !DILocation(line: 810, column: 1, scope: !391, inlinedAt: !35920)
!35922 = distinct !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !35921)
!35923 = distinct !DILocation(line: 810, column: 1, scope: !282, inlinedAt: !35921)
!35924 = distinct !{!35924, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECslpwjCj2YNBy_9polars_io"}
!35925 = distinct !{!35925, !35924, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECslpwjCj2YNBy_9polars_io: argument 0"}
!35926 = distinct !{!35926, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io"}
!35927 = distinct !{!35927, !35926, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io: argument 0"}
!35928 = distinct !DILocation(line: 193, column: 29, scope: !35819)
!35929 = distinct !DILocation(line: 810, column: 1, scope: !838, inlinedAt: !35928)
!35930 = distinct !DILocation(line: 2814, column: 17, scope: !841, inlinedAt: !35929)
!35931 = distinct !DILocation(line: 2110, column: 27, scope: !840, inlinedAt: !35930)
!35932 = distinct !DILocation(line: 2814, column: 32, scope: !841, inlinedAt: !35929)
!35933 = distinct !DILocation(line: 3193, column: 26, scope: !843, inlinedAt: !35932)
!35934 = distinct !DILocation(line: 64, column: 9, scope: !841, inlinedAt: !35929)
!35935 = distinct !{!35935, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECslpwjCj2YNBy_9polars_io"}
!35936 = distinct !{!35936, !35935, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtB4_4sync6atomic6AtomicbEEECslpwjCj2YNBy_9polars_io: argument 0"}
!35937 = distinct !{!35937, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io"}
!35938 = distinct !{!35938, !35937, !"_RNvXsD_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCscgRAwXFJnXP_4core4sync6atomic6AtomicbEENtNtNtBN_3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io: argument 0"}
!35939 = distinct !DILocation(line: 193, column: 29, scope: !35819)
!35940 = distinct !DILocation(line: 810, column: 1, scope: !838, inlinedAt: !35939)
!35941 = distinct !DILocation(line: 2814, column: 17, scope: !841, inlinedAt: !35940)
!35942 = distinct !DILocation(line: 2110, column: 27, scope: !840, inlinedAt: !35941)
!35943 = distinct !DILocation(line: 2814, column: 32, scope: !841, inlinedAt: !35940)
!35944 = distinct !DILocation(line: 3193, column: 26, scope: !843, inlinedAt: !35943)
!35945 = distinct !DILocation(line: 64, column: 9, scope: !841, inlinedAt: !35940)
!35946 = !DINamespace(name: "{async_block#0}", scope: !1982)
!35947 = !{!35843}
!35948 = !{!35845, !35843}
!35949 = !{!35858, !35856}
!35950 = !{!35865}
!35951 = !{!35868}
!35952 = !{!35870}
!35953 = !{!35873}
!35954 = !{!35873, !35870, !35868, !35865}
!35955 = !{!35882}
!35956 = !{!35884}
!35957 = !{!35884, !35882, !35868, !35865}
!35958 = !{!35884, !35882}
!35959 = !{!35893}
!35960 = !{!35895}
!35961 = !{!35895, !35893, !35868, !35865}
!35962 = !{!35895, !35893}
!35963 = !{!35910}
!35964 = !{!35912}
!35965 = !{!35912, !35910}
!35966 = !{!35925}
!35967 = !{!35927}
!35968 = !{!35927, !35925}
!35969 = !DILexicalBlockFile(scope: !35840, file: !1661, discriminator: 0)
!35970 = !{!35936}
!35971 = !{!35938}
!35972 = !{!35938, !35936}
!35973 = !DILocation(line: 175, column: 41, scope: !35819)
!35974 = !DILocation(line: 182, column: 73, scope: !35822)
!35975 = !DILocation(line: 176, column: 37, scope: !35819)
!35976 = !DILocation(line: 177, column: 51, scope: !35819)
!35977 = !DILocation(line: 177, column: 57, scope: !35819)
!35978 = !DILocation(line: 177, column: 74, scope: !35819)
!35979 = !DILocation(line: 177, column: 37, scope: !35819)
!35980 = !DILocation(line: 177, column: 91, scope: !35823)
!35981 = !DILocation(line: 177, column: 95, scope: !35823)
!35982 = !DILocation(line: 177, column: 95, scope: !35819)
!35983 = !DILocation(line: 0, scope: !35819)
!35984 = !DILocation(line: 177, column: 37, scope: !35824)
!35985 = !DILocation(line: 177, column: 37, scope: !35823)
!35986 = !DILocation(line: 181, column: 52, scope: !35821)
!35987 = !DILocation(line: 181, column: 40, scope: !35821)
!35988 = !DILocation(line: 181, column: 43, scope: !35821)
!35989 = !DILocation(line: 182, column: 41, scope: !35821)
!35990 = !DILocation(line: 182, column: 59, scope: !35821)
!35991 = !DILocation(line: 193, column: 29, scope: !35819)
!35992 = !DILocation(line: 182, column: 77, scope: !35822)
!35993 = !DILocation(line: 182, column: 77, scope: !35821)
!35994 = !DILocation(line: 182, column: 59, scope: !35822)
!35995 = !DILocation(line: 780, column: 58, scope: !851, inlinedAt: !35825)
!35996 = !DILocation(line: 781, column: 27, scope: !835, inlinedAt: !35826)
!35997 = !DILocation(line: 783, column: 50, scope: !835, inlinedAt: !35826)
!35998 = !DILocation(line: 810, column: 1, scope: !831, inlinedAt: !35827)
!35999 = !DILocation(line: 810, column: 1, scope: !742, inlinedAt: !35831)
!36000 = !DILocation(line: 674, column: 18, scope: !745, inlinedAt: !35833)
!36001 = !DILocation(line: 810, column: 1, scope: !742, inlinedAt: !35837)
!36002 = !DILocation(line: 674, column: 18, scope: !745, inlinedAt: !35839)
!36003 = !DILocation(line: 183, column: 37, scope: !35840)
!36004 = !DILocation(line: 184, column: 41, scope: !35840)
end_hunk_1
