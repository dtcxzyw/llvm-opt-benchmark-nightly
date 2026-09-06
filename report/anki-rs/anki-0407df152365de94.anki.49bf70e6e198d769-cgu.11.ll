Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.11?download=true
inline.NumInlined: 6091
inline.NumDeleted: 2657
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 42
begin_hunk_0_@"_ZN4anki7backend13import_export95_$LT$impl$u20$anki..services..BackendImportExportService$u20$for$u20$anki..backend..Backend$GT$25import_collection_package17h85b6ff6ebd71b98eE":bb.a
  store i64 %i.d, ptr %0, align 8
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %.sroa.215.0..sroa_idx, align 8
  %.sroa.316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.h, ptr %.sroa.316.0..sroa_idx, align 8
  tail call fastcc void @"_ZN4core3ptr78drop_in_place$LT$anki_proto..import_export..ImportCollectionPackageRequest$GT$17h5d00576b39ccb316E"(ptr noalias noundef align 8 dereferenceable(96) %2)
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !9, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !9
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !9, !noundef !9
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !9
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !9, !noundef !9
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.t = load i64, ptr %i.s, align 8, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !9, !noundef !9
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.x = load i64, ptr %i.w, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = getelementptr inbounds nuw i8, ptr %.val24, i64 24 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !noalias !1365, !nonnull !9, !noundef !9
  %i.aa = atomicrmw add ptr %i.z, i64 1 monotonic, align 8, !noalias !1365
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.y, align 8, !noalias !1365, !nonnull !9, !noundef !9
  invoke void @"_ZN4anki8progress34ThrottlingProgressHandler$LT$P$GT$3new17hc84c1fffdbe5f295E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull %i.ac)
          to label %_ZN4anki7backend7Backend20new_progress_handler17hca17b5aac898bc28E.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g, %_ZN4anki7backend7Backend20new_progress_handler17hca17b5aac898bc28E.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr121drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$GT$17h02b35b9401f3527bE"(ptr nonnull %i.f, i8 %i.h) #31
          to label %bb.b unwind label %bb.p

_ZN4anki7backend7Backend20new_progress_handler17hca17b5aac898bc28E.exit: ; preds = %bb.g
  invoke void @_ZN4anki13import_export7package6colpkg6import13import_colpkg17hed898b8d34aa84c3E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.j, i64 noundef %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.r, i64 noundef %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.v, i64 noundef %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.j unwind label %bb.i

bb.j:                                             ; preds = %_ZN4anki7backend7Backend20new_progress_handler17hca17b5aac898bc28E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.af = trunc nuw i8 %i.h to i1
  br i1 %i.af, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h543844e35c7d658cE monotonic, align 8
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.l, !prof !17

bb.l:                                             ; preds = %bb.k
  %i.aj = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE()
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.l
  br i1 %i.aj, label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc
  store atomic i8 1, ptr %i.ae monotonic, align 1
  br label %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i

_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i: ; preds = %bb.m, %.noexc, %bb.k, %bb.j
  %i.ak = atomicrmw xchg ptr %i.f, i32 0 release, align 4
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.n, label %"_ZN4core3ptr121drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$GT$17h02b35b9401f3527bE.exit", !prof !12

bb.n:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17ha402b8fc74de280aE(ptr noundef nonnull align 4 %i.f)
          to label %"_ZN4core3ptr121drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$GT$17h02b35b9401f3527bE.exit" unwind label %bb.c

"_ZN4core3ptr121drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$GT$17h02b35b9401f3527bE.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h1eb528b2cb443aa9E.exit.i.i, %bb.n
  call fastcc void @"_ZN4core3ptr78drop_in_place$LT$anki_proto..import_export..ImportCollectionPackageRequest$GT$17h5d00576b39ccb316E"(ptr noalias noundef align 8 dereferenceable(96) %2)
  br label %bb.o

bb.o:                                             ; preds = %"_ZN4core3ptr121drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$core..option..Option$LT$anki..collection..Collection$GT$$GT$$GT$17h02b35b9401f3527bE.exit", %bb.e
  ret void

bb.p:                                             ; preds = %bb.i, %bb.b
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

bb.q:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki7backend14card_rendering96_$LT$impl$u20$anki..services..BackendCardRenderingService$u20$for$u20$anki..backend..Backend$GT$10strip_html17hc6ba1714394b6544E"(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  tail call void @_ZN4anki14card_rendering7service16strip_html_proto17hce91872661685cb4E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki7backend14card_rendering96_$LT$impl$u20$anki..services..BackendCardRenderingService$u20$for$u20$anki..backend..Backend$GT$14all_tts_voices17h0eab6ca5f6c9ab4cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) initializes((0, 32)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4anki14card_rendering3tts10all_voices17h363ff357a97ac0b1E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, i1 noundef zeroext %2)
  %i.b = load i64, ptr %i.a, align 8, !range !33, !noundef !9
  %.not = icmp eq i64 %i.b, -9223372036854775773
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki7backend14card_rendering96_$LT$impl$u20$anki..services..BackendCardRenderingService$u20$for$u20$anki..backend..Backend$GT$16write_tts_stream17hcac8bbba8de521a0E"(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !9
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = load i64, ptr %i.g, align 8, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.j = load float, ptr %i.i, align 8, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !9, !noundef !9
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.n = load i64, ptr %i.m, align 8, !noundef !9
  invoke void @_ZN4anki14card_rendering3tts12write_stream17hed7aebe581116f30E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.f, i64 noundef %i.h, float noundef %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef %i.n)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$anki_proto..card_rendering..WriteTtsStreamRequest$GT$17hc6200bde070a842fE"(ptr noalias noundef align 8 dereferenceable(80) %2) #31
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr70drop_in_place$LT$anki_proto..card_rendering..WriteTtsStreamRequest$GT$17hc6200bde070a842fE"(ptr noalias noundef align 8 dereferenceable(80) %2)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki7backend3ops111_$LT$impl$u20$core..convert..From$LT$anki..ops..OpChanges$GT$$u20$for$u20$anki_proto..collection..OpChanges$GT$4from17h218800f6a4537b4dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 1 captures(none) dereferenceable(12) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.c = load <8 x i8>, ptr %i.a, align 8         ; 5 uses
  %i.d = load i8, ptr %i.b, align 1, !range !18, !noundef !9
  %i.e = invoke noundef zeroext i1 @_ZN4anki3ops9OpChanges29requires_browser_table_redraw17hd09b71ed64150bdfE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr41drop_in_place$LT$anki..ops..OpChanges$GT$17hf1a0d6ba58b56271E"(ptr noalias noundef align 8 dereferenceable(32) %1) #31
          to label %common.resume unwind label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = invoke noundef zeroext i1 @_ZN4anki3ops9OpChanges28requires_study_queue_rebuild17h3eaee985b495da2dE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = extractelement <8 x i8> %i.c, i64 4      ; 2 uses
  %.sroa.01.0 = or i8 %i.d, %i.h
  %i.i = extractelement <8 x i8> %i.c, i64 2
  %i.j = extractelement <8 x i8> %i.c, i64 3
  %i.k = or i8 %i.j, %i.i
  %2 = or i8 %i.k, %i.h
  %or.cond3.not = icmp eq i8 %2, 0
  %i.l = extractelement <8 x i8> %i.c, i64 5
  %.sroa.0.0 = select i1 %or.cond3.not, i8 %i.l, i8 1
  store <8 x i8> %i.c, ptr %0, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = zext i1 %i.e to i8
  store i8 %i.n, ptr %i.m, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.0.0, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %.sroa.01.0, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.r = zext i1 %i.g to i8
  store i8 %i.r, ptr %i.q, align 1
  %i.s = load i64, ptr %1, align 8, !range !41, !alias.scope !1370, !noundef !9
  %i.t = icmp sgt i64 %i.s, -1
  br i1 %i.t, label %bb.e, label %"_ZN4core3ptr41drop_in_place$LT$anki..ops..OpChanges$GT$17hf1a0d6ba58b56271E.exit"

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i": ; preds = %bb.e
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  br label %"_ZN4core3ptr41drop_in_place$LT$anki..ops..OpChanges$GT$17hf1a0d6ba58b56271E.exit"

"_ZN4core3ptr41drop_in_place$LT$anki..ops..OpChanges$GT$17hf1a0d6ba58b56271E.exit": ; preds = %bb.d, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.i"
  ret void

bb.h:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki7backend3ops126_$LT$impl$u20$core..convert..From$LT$anki..ops..OpOutput$LT$$LP$$RP$$GT$$GT$$u20$for$u20$anki_proto..collection..OpChanges$GT$4from17ha48c66c8ec224a44E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 1 captures(none) dereferenceable(12) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @"_ZN4anki7backend3ops111_$LT$impl$u20$core..convert..From$LT$anki..ops..OpChanges$GT$$u20$for$u20$anki_proto..collection..OpChanges$GT$4from17h218800f6a4537b4dE"(ptr noalias noundef nonnull sret([12 x i8]) align 1 captures(address) dereferenceable(12) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki7backend3ops127_$LT$impl$u20$core..convert..From$LT$anki..ops..OpOutput$LT$i64$GT$$GT$$u20$for$u20$anki_proto..collection..OpChangesWithId$GT$4from17hd95a390aa474eb65E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @"_ZN4anki7backend3ops111_$LT$impl$u20$core..convert..From$LT$anki..ops..OpChanges$GT$$u20$for$u20$anki_proto..collection..OpChanges$GT$4from17h218800f6a4537b4dE"(ptr noalias noundef nonnull sret([12 x i8]) align 1 captures(address) dereferenceable(12) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki7backend3ops132_$LT$impl$u20$core..convert..From$LT$anki..ops..OpOutput$LT$usize$GT$$GT$$u20$for$u20$anki_proto..collection..OpChangesWithCount$GT$4from17h9e383fb562690a60E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !9
  %i.d = trunc i64 %i.c to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @"_ZN4anki7backend3ops111_$LT$impl$u20$core..convert..From$LT$anki..ops..OpChanges$GT$$u20$for$u20$anki_proto..collection..OpChanges$GT$4from17h218800f6a4537b4dE"(ptr noalias noundef nonnull sret([12 x i8]) align 1 captures(address) dereferenceable(12) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.d, ptr %i.e, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki7backend4i18n87_$LT$impl$u20$anki..services..BackendI18nService$u20$for$u20$anki..backend..Backend$GT$14i18n_resources17hda1a25f54502541eE"(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_ZN4anki4i18n7service14i18n_resources17h799a1dea2bb4f64cE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki7backend4i18n87_$LT$impl$u20$anki..services..BackendI18nService$u20$for$u20$anki..backend..Backend$GT$15format_timespan17h191ae20b2c22031dE"(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, float noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_ZN4anki4i18n7service15format_timespan17hccc3b9d8d929653cE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, float noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki7backend4i18n87_$LT$impl$u20$anki..services..BackendI18nService$u20$for$u20$anki..backend..Backend$GT$16translate_string17h0cbb2cfb5ac9e0e9E"(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(56) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @_ZN4anki4i18n7service16translate_string17h5a87e1eec673be3dE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(56) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki7backend4sync141_$LT$impl$u20$core..convert..From$LT$anki..sync..collection..normal..ClientSyncState$GT$$u20$for$u20$anki_proto..sync..SyncStatusResponse$GT$4from17h843f5bc8fdafa738E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.b = load i8, ptr %i.a, align 4, !range !42, !noundef !9 ; 3 uses
  %i.c = icmp ne i8 %i.b, 3
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i8 %i.b, -2
  %i.e = icmp samesign ugt i8 %i.b, 1
  %narrow = select i1 %i.e, i8 %i.d, i8 1
  %i.f = zext nneg i8 %narrow to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN4anki7backend4sync87_$LT$impl$u20$anki..services..BackendSyncService$u20$for$u20$anki..backend..Backend$GT$15sync_collection17he72f114907f7df97E", i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %switch.ext, ptr %i.h, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit" unwind label %bb.a

bb.a:                                             ; preds = %switch.lookup
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h3449b25ddf1a7620E.exit.i.i" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h3449b25ddf1a7620E.exit.i.i": ; preds = %bb.a
  resume { ptr, i32 } %i.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %switch.lookup
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4anki7backend4sync40_$LT$impl$u20$anki..backend..Backend$GT$17sync_abort_handle17h2212f691599bdc9fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = tail call { ptr, ptr } @_ZN12futures_util9abortable11AbortHandle8new_pair17h1d37058a6c1689dfE() ; 2 uses
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.f, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.h, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 768
  invoke void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hf4992720783c29edE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.i)
          to label %bb.d unwind label %bb.c

.body:                                            ; preds = %bb.f, %bb.c, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.l ], [ %i.m, %bb.c ], [ %i.u, %bb.f ]
  %.sroa.0.0 = phi i1 [ false, %bb.l ], [ %.sroa.0.1, %bb.c ], [ true, %bb.f ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  %i.j = load ptr, ptr %i.d, align 8, !alias.scope !1397, !nonnull !9, !noundef !9
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !1397
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.b, label %"_ZN4core3ptr63drop_in_place$LT$futures_util..abortable..AbortRegistration$GT$17he19f404662cbfcdcE.exit"

bb.b:                                             ; preds = %.body
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hdaca7e9996f5d876E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %"_ZN4core3ptr63drop_in_place$LT$futures_util..abortable..AbortRegistration$GT$17he19f404662cbfcdcE.exit" unwind label %bb.s

bb.c:                                             ; preds = %bb.p, %bb.n, %bb.a
  %.sroa.0.1 = phi i1 [ false, %bb.p ], [ true, %bb.a ], [ false, %bb.n ]
  %i.m = landingpad { ptr, i32 }
end_hunk_0
