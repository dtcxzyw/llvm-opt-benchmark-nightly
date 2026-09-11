Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.12?download=true
inline.NumInlined: 7127
inline.NumDeleted: 3581
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 18
begin_hunk_0_@"_ZN5hyper5proto2h12io21Buffered$LT$T$C$B$GT$10into_inner17habe298f1e4b18e04E":bb.a
"_ZN4core3ptr122drop_in_place$LT$hyper..proto..h1..io..WriteBuf$LT$hyper..proto..h1..encode..EncodedBuf$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h7d8bbf4ffb4fd560E.exit": ; preds = %"_ZN4core3ptr82drop_in_place$LT$hyper..proto..h1..io..Cursor$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$17h09f3387048503311E.exit.i"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2c52f1dc9f052aafE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aj)
  ret void

bb.n:                                             ; preds = %bb.o, %.body
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #36
  unreachable

bb.o:                                             ; preds = %.body
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke fastcc void @"_ZN4core3ptr122drop_in_place$LT$hyper..proto..h1..io..WriteBuf$LT$hyper..proto..h1..encode..EncodedBuf$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h7d8bbf4ffb4fd560E"(ptr noalias noundef align 8 dereferenceable(80) %i.ao) #35
          to label %common.resume unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN5hyper5proto2h12io21Buffered$LT$T$C$B$GT$10poll_flush17hd2da04176956257cE"(ptr noalias noundef align 8 dereferenceable(224) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [1024 x i8], align 8              ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load i8, ptr %i.f, align 8, !range !25, !noundef !14
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp ne i64 %i.j, 0
  %or.cond.not = select i1 %i.h, i1 %i.k, i1 false
  %.sroa.0.0.i.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br i1 %or.cond.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 9 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !14
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 8 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !14
  %i.p = sub i64 %i.m, %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  call void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h71d8a58c8a9b2d81E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q)
  %i.r = call noundef i64 @"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hebed533c8e36d264E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.s = sub i64 0, %i.r
  %i.t = icmp eq i64 %i.p, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = call { i64, ptr } @"_ZN84_$LT$hyper_util..common..rewind..Rewind$LT$T$GT$$u20$as$u20$hyper..rt..io..Write$GT$10poll_flush17hafbb6bc986aa91d2E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.v = extractvalue { i64, ptr } %i.u, 0
  %i.w = extractvalue { i64, ptr } %i.u, 1
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.y = load i8, ptr %i.x, align 8, !range !25, !noundef !14
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br i1 %i.z, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sink.i.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink.i.i.sroa.gep11.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sink8.i.i.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sink8.i.i.i.sroa.gep12.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sink7.i.i.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink5.i.i.i.sroa.gep14.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %.pre.i = load i64, ptr %i.l, align 8, !alias.scope !10083, !noalias !10084
  %.pre30.i = load i64, ptr %i.n, align 8, !alias.scope !10085, !noalias !10084
  br label %bb.g

bb.g:                                             ; preds = %bb.l, %bb.f
  %i.af = phi i64 [ %i.ar, %bb.l ], [ %.pre30.i, %bb.f ] ; 4 uses
  %i.ag = phi i64 [ %i.as, %bb.l ], [ %.pre.i, %bb.f ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10086)
  %i.ah = icmp ugt i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.h, label %"_ZN83_$LT$hyper..proto..h1..io..Cursor$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h4d8f322e0e19ab0aE.exit.i", !prof !21

bb.h:                                             ; preds = %bb.g
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.af, i64 noundef %i.ag, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @209) #37, !noalias !10086
  unreachable

"_ZN83_$LT$hyper..proto..h1..io..Cursor$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h4d8f322e0e19ab0aE.exit.i": ; preds = %bb.g
  %i.ai = load ptr, ptr %i.aa, align 8, !alias.scope !10083, !noalias !10084, !nonnull !14, !noundef !14
  %i.aj = sub nuw i64 %i.ag, %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %i.al = call { i64, ptr } @"_ZN84_$LT$hyper_util..common..rewind..Rewind$LT$T$GT$$u20$as$u20$hyper..rt..io..Write$GT$10poll_write17h308d91c6c2e2e025E"(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ak, i64 noundef %i.aj) ; 2 uses
  %i.am = extractvalue { i64, ptr } %i.al, 0
  %i.an = extractvalue { i64, ptr } %i.al, 1      ; 4 uses
  switch i64 %i.am, label %bb.i [
    i64 2, label %.loopexit.loopexit.i
    i64 0, label %bb.j
  ]

bb.i:                                             ; preds = %"_ZN83_$LT$hyper..proto..h1..io..Cursor$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h4d8f322e0e19ab0aE.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  %i.ao = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.an, 1
  br label %"_ZN5hyper5proto2h12io21Buffered$LT$T$C$B$GT$20poll_flush_flattened17h08ce41daa5118e6eE.exit"

bb.j:                                             ; preds = %"_ZN83_$LT$hyper..proto..h1..io..Cursor$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h4d8f322e0e19ab0aE.exit.i"
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = load i64, ptr %i.n, align 8, !alias.scope !10087, !noalias !10084, !noundef !14
  %i.ar = add i64 %i.aq, %i.ap                    ; 3 uses
  store i64 %i.ar, ptr %i.n, align 8, !alias.scope !10087, !noalias !10084
  %i.as = load i64, ptr %i.l, align 8, !alias.scope !10087, !noalias !10084, !noundef !14 ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.ar
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !alias.scope !10087, !noalias !10084
  %i.au = call { i64, ptr } @"_ZN84_$LT$hyper_util..common..rewind..Rewind$LT$T$GT$$u20$as$u20$hyper..rt..io..Write$GT$10poll_flush17hafbb6bc986aa91d2E"(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  br label %"_ZN5hyper5proto2h12io21Buffered$LT$T$C$B$GT$20poll_flush_flattened17h08ce41daa5118e6eE.exit"

bb.l:                                             ; preds = %bb.j
  %i.av = icmp eq ptr %i.an, null
  br i1 %i.av, label %.loopexit.loopexit.i, label %bb.g

.loopexit.loopexit.i:                             ; preds = %bb.l, %"_ZN83_$LT$hyper..proto..h1..io..Cursor$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h4d8f322e0e19ab0aE.exit.i"
  %.sroa.0.0.ph.i = phi i64 [ 0, %bb.l ], [ 1, %"_ZN83_$LT$hyper..proto..h1..io..Cursor$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h4d8f322e0e19ab0aE.exit.i" ]
  %i.aw = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.ph.i, 0
  %i.ax = insertvalue { i64, ptr } %i.aw, ptr inttoptr (i64 98784247811 to ptr), 1
  br label %"_ZN5hyper5proto2h12io21Buffered$LT$T$C$B$GT$20poll_flush_flattened17h08ce41daa5118e6eE.exit"

"_ZN5hyper5proto2h12io21Buffered$LT$T$C$B$GT$20poll_flush_flattened17h08ce41daa5118e6eE.exit": ; preds = %bb.i, %bb.k, %.loopexit.loopexit.i
  %.merged.i = phi { i64, ptr } [ %i.ao, %bb.i ], [ %i.au, %bb.k ], [ %i.ax, %.loopexit.loopexit.i ] ; 2 uses
  %i.ay = extractvalue { i64, ptr } %.merged.i, 0
  %i.az = extractvalue { i64, ptr } %.merged.i, 1
  br label %.loopexit

bb.m:                                             ; preds = %bb.m, %bb.e
  %i.ba = phi i64 [ 0, %bb.e ], [ %i.bm, %bb.m ]  ; 5 uses
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ba ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 0, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ba ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store i64 0, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ba ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i64 0, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ba ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  store i64 0, ptr %i.bl, align 8
  %i.bm = add nuw nsw i64 %i.ba, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bm, 64
  br i1 %exitcond.not.3, label %bb.n, label %bb.m

bb.n:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !10088)
  call void @llvm.experimental.noalias.scope.decl(metadata !10089)
  call void @llvm.experimental.noalias.scope.decl(metadata !10090)
  call void @llvm.experimental.noalias.scope.decl(metadata !10091)
  %.val.i.i = load i64, ptr %i.l, align 8, !alias.scope !10092, !noalias !10093, !noundef !14 ; 5 uses
  %.val1.i.i = load i64, ptr %i.n, align 8, !alias.scope !10094, !noalias !10093, !noundef !14 ; 5 uses
  %.not.i.i = icmp eq i64 %.val.i.i, %.val1.i.i
  br i1 %.not.i.i, label %_ZN5bytes3buf8buf_impl3Buf15chunks_vectored17h3ac2e8da4a30dbe0E.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !10095)
  %i.bn = icmp ugt i64 %.val1.i.i, %.val.i.i
  br i1 %i.bn, label %bb.p, label %"_ZN83_$LT$hyper..proto..h1..io..Cursor$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h4d8f322e0e19ab0aE.exit.i.i", !prof !21

bb.p:                                             ; preds = %bb.o
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %.val1.i.i, i64 noundef %.val.i.i, i64 noundef %.val.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @209) #37, !noalias !10096
  unreachable

"_ZN83_$LT$hyper..proto..h1..io..Cursor$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h4d8f322e0e19ab0aE.exit.i.i": ; preds = %bb.o
  %i.bo = load ptr, ptr %i.aa, align 8, !alias.scope !10097, !noalias !10093, !nonnull !14, !noundef !14
  %i.bp = sub nuw i64 %.val.i.i, %.val1.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.val1.i.i
  store ptr %i.bq, ptr %i.e, align 8, !alias.scope !10093, !noalias !10098
  store i64 %i.bp, ptr %i.ab, align 8, !alias.scope !10093, !noalias !10098
  br label %_ZN5bytes3buf8buf_impl3Buf15chunks_vectored17h3ac2e8da4a30dbe0E.exit.i

_ZN5bytes3buf8buf_impl3Buf15chunks_vectored17h3ac2e8da4a30dbe0E.exit.i: ; preds = %"_ZN83_$LT$hyper..proto..h1..io..Cursor$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h4d8f322e0e19ab0aE.exit.i.i", %bb.n
  %.sroa.0.0.i.i.sroa.phi = phi ptr [ %.sroa.0.0.i.i.sroa.gep, %"_ZN83_$LT$hyper..proto..h1..io..Cursor$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h4d8f322e0e19ab0aE.exit.i.i" ], [ %i.e, %bb.n ]
  %.sroa.0.0.i.i = phi i64 [ 1, %"_ZN83_$LT$hyper..proto..h1..io..Cursor$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$5chunk17h4d8f322e0e19ab0aE.exit.i.i" ], [ 0, %bb.n ] ; 2 uses
  %i.br = sub nuw nsw i64 64, %.sroa.0.0.i.i      ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10099)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10100
  call void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h71d8a58c8a9b2d81E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q), !noalias !10101
  %.sroa.0.sroa.0.0.copyload.i.i = load ptr, ptr %i.b, align 8, !noalias !10100
  %.sroa.0.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.0.sroa.7.0..sroa_idx.i.i, align 8, !noalias !10100
  %.sroa.9.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !10100
  %.sroa.9.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10100
  br label %bb.q

bb.q:                                             ; preds = %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h8fbea078ace9ce39E.exit.i.i", %_ZN5bytes3buf8buf_impl3Buf15chunks_vectored17h3ac2e8da4a30dbe0E.exit.i
  %.sroa.0.sroa.7.0.i.i = phi ptr [ %.sroa.0.sroa.7.0.copyload.i.i, %_ZN5bytes3buf8buf_impl3Buf15chunks_vectored17h3ac2e8da4a30dbe0E.exit.i ], [ %.sroa.0.sroa.7.1.i.i, %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h8fbea078ace9ce39E.exit.i.i" ] ; 3 uses
  %.sroa.0.sroa.0.0.i.i = phi ptr [ %.sroa.0.sroa.0.0.copyload.i.i, %_ZN5bytes3buf8buf_impl3Buf15chunks_vectored17h3ac2e8da4a30dbe0E.exit.i ], [ %i.bu, %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h8fbea078ace9ce39E.exit.i.i" ] ; 3 uses
  %.sroa.9.sroa.5.0.i.i = phi ptr [ %.sroa.9.sroa.5.0.copyload.i.i, %_ZN5bytes3buf8buf_impl3Buf15chunks_vectored17h3ac2e8da4a30dbe0E.exit.i ], [ %.sroa.9.sroa.5.1.i.i, %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h8fbea078ace9ce39E.exit.i.i" ] ; 3 uses
  %.sroa.9.sroa.0.0.i.i = phi ptr [ %.sroa.9.sroa.0.0.copyload.i.i, %_ZN5bytes3buf8buf_impl3Buf15chunks_vectored17h3ac2e8da4a30dbe0E.exit.i ], [ %.sroa.9.sroa.0.1.i.i, %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h8fbea078ace9ce39E.exit.i.i" ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ 0, %_ZN5bytes3buf8buf_impl3Buf15chunks_vectored17h3ac2e8da4a30dbe0E.exit.i ], [ %i.ck, %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h8fbea078ace9ce39E.exit.i.i" ] ; 7 uses
  %i.bs = icmp eq ptr %.sroa.0.sroa.0.0.i.i, %.sroa.0.sroa.7.0.i.i
  br i1 %i.bs, label %bb.r, label %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h90526b73b23fb79bE.exit.i.i"

bb.r:                                             ; preds = %bb.q
  %i.bt = icmp eq ptr %.sroa.9.sroa.0.0.i.i, %.sroa.9.sroa.5.0.i.i
  br i1 %i.bt, label %"_ZN85_$LT$hyper..proto..h1..io..WriteBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hce614a55c702703bE.exit", label %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h90526b73b23fb79bE.exit.i.i"

"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h90526b73b23fb79bE.exit.i.i": ; preds = %bb.r, %bb.q
  %.sroa.0.sroa.7.1.i.i = phi ptr [ %.sroa.9.sroa.5.0.i.i, %bb.r ], [ %.sroa.0.sroa.7.0.i.i, %bb.q ]
  %.sroa.9.sroa.5.1.i.i = phi ptr [ %.sroa.0.sroa.7.0.i.i, %bb.r ], [ %.sroa.9.sroa.5.0.i.i, %bb.q ]
  %.sroa.9.sroa.0.1.i.i = phi ptr [ %.sroa.0.sroa.0.0.i.i, %bb.r ], [ %.sroa.9.sroa.0.0.i.i, %bb.q ]
  %.sink6.i.i.i = phi ptr [ %.sroa.9.sroa.0.0.i.i, %bb.r ], [ %.sroa.0.sroa.0.0.i.i, %bb.q ] ; 10 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 80
  %.not.i3.i = icmp eq ptr %.sink6.i.i.i, null
  br i1 %.not.i3.i, label %"_ZN85_$LT$hyper..proto..h1..io..WriteBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hce614a55c702703bE.exit", label %bb.s

bb.s:                                             ; preds = %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h90526b73b23fb79bE.exit.i.i"
  %i.bv = icmp ugt i64 %.sroa.0.1.i.i, %i.br
  br i1 %i.bv, label %bb.ab, label %bb.t, !prof !21

bb.t:                                             ; preds = %bb.s
  %i.bw = sub nuw nsw i64 %i.br, %.sroa.0.1.i.i   ; 3 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i.sroa.phi, i64 %.sroa.0.1.i.i ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10102)
  %i.by = load i64, ptr %.sink6.i.i.i, align 8, !range !51, !noalias !10102, !noundef !14
  switch i64 %i.by, label %default.unreachable [
    i64 0, label %bb.u
    i64 1, label %bb.w
    i64 2, label %bb.x
    i64 3, label %bb.y
    i64 4, label %bb.aa
  ]

default.unreachable:                              ; preds = %bb.t, %bb.al
  unreachable

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !10103)
  %i.bz = getelementptr i8, ptr %.sink6.i.i.i, i64 24
  %.val.i.i.i.i.i = load i64, ptr %i.bz, align 8, !noalias !10104, !noundef !14 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h8fbea078ace9ce39E.exit.i.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = getelementptr i8, ptr %.sink6.i.i.i, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.ca, align 8, !noalias !10104, !noundef !14
  store ptr %.val.i.i.i.i, ptr %i.bx, align 8, !alias.scope !10105, !noalias !10106
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %.val.i.i.i.i.i, ptr %i.cb, align 8, !alias.scope !10105, !noalias !10106
  br label %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h8fbea078ace9ce39E.exit.i.i"

bb.w:                                             ; preds = %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 8
  %i.cd = call noundef i64 @"_ZN77_$LT$bytes..buf..take..Take$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hd4b42ec04b0eb9d1E"(ptr noundef nonnull align 8 %i.cc, ptr noalias noundef nonnull align 8 %i.bx, i64 noundef range(i64 0, 65) %i.bw)
  br label %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h8fbea078ace9ce39E.exit.i.i"

bb.x:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 8
  %i.cf = call noundef i64 @"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hc6261f87c3f75a6dE"(ptr noundef nonnull align 8 %i.ce, ptr noalias noundef nonnull align 8 %i.bx, i64 noundef range(i64 0, 65) %i.bw)
  br label %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h8fbea078ace9ce39E.exit.i.i"

bb.y:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !10107)
  call void @llvm.experimental.noalias.scope.decl(metadata !10108)
  %2 = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 16
  %.val.i.i1.i.i.i = load i64, ptr %2, align 8, !alias.scope !10109, !noalias !10110, !noundef !14 ; 2 uses
  %i.cg = icmp eq i64 %.val.i.i1.i.i.i, 0
  br i1 %i.cg, label %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h8fbea078ace9ce39E.exit.i.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %3 = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 8
  %.val.i3.i.i.i = load ptr, ptr %3, align 8, !alias.scope !10107, !noalias !10110, !nonnull !14, !align !24, !noundef !14
  store ptr %.val.i3.i.i.i, ptr %i.bx, align 8, !alias.scope !10111, !noalias !10112
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %.val.i.i1.i.i.i, ptr %i.ch, align 8, !alias.scope !10111, !noalias !10112
  br label %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h8fbea078ace9ce39E.exit.i.i"

bb.aa:                                            ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i, i64 8
  %i.cj = call noundef i64 @"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h01dcd2727dd78d37E"(ptr noundef nonnull align 8 %i.ci, ptr noalias noundef nonnull align 8 %i.bx, i64 noundef range(i64 0, 65) %i.bw)
  br label %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h8fbea078ace9ce39E.exit.i.i"

"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h8fbea078ace9ce39E.exit.i.i": ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.sroa.0.0.i7.i.i = phi i64 [ %i.cj, %bb.aa ], [ %i.cd, %bb.w ], [ %i.cf, %bb.x ], [ 0, %bb.u ], [ 0, %bb.y ], [ 1, %bb.v ], [ 1, %bb.z ]
  %i.ck = add i64 %.sroa.0.0.i7.i.i, %.sroa.0.1.i.i ; 2 uses
  %i.cl = icmp eq i64 %i.ck, %i.br
  br i1 %i.cl, label %"_ZN85_$LT$hyper..proto..h1..io..WriteBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hce614a55c702703bE.exit", label %bb.q

bb.ab:                                            ; preds = %bb.s
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %.sroa.0.1.i.i, i64 noundef range(i64 0, 65) %i.br, i64 noundef range(i64 0, 65) %i.br, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #37
  unreachable

"_ZN85_$LT$hyper..proto..h1..io..WriteBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hce614a55c702703bE.exit": ; preds = %bb.r, %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h90526b73b23fb79bE.exit.i.i", %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h8fbea078ace9ce39E.exit.i.i"
  %.sroa.0.2.i.i = phi i64 [ %i.br, %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17h8fbea078ace9ce39E.exit.i.i" ], [ %.sroa.0.1.i.i, %"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h90526b73b23fb79bE.exit.i.i" ], [ %.sroa.0.1.i.i, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10100
  %i.cm = add i64 %.sroa.0.2.i.i, %.sroa.0.0.i.i  ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 65
  br i1 %i.cn, label %bb.ad, label %bb.ac, !prof !27

bb.ac:                                            ; preds = %"_ZN85_$LT$hyper..proto..h1..io..WriteBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hce614a55c702703bE.exit"
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %i.cm, i64 noundef 64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #37
  unreachable

bb.ad:                                            ; preds = %"_ZN85_$LT$hyper..proto..h1..io..WriteBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$15chunks_vectored17hce614a55c702703bE.exit"
  %i.co = call { i64, ptr } @"_ZN84_$LT$hyper_util..common..rewind..Rewind$LT$T$GT$$u20$as$u20$hyper..rt..io..Write$GT$19poll_write_vectored17h8aaac19f18de7a3dE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef %i.cm) ; 2 uses
  %i.cp = extractvalue { i64, ptr } %i.co, 0      ; 2 uses
  %i.cq = extractvalue { i64, ptr } %i.co, 1      ; 4 uses
  %i.cr = icmp eq i64 %i.cp, 2
  br i1 %i.cr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  %i.cs = ptrtoint ptr %i.cq to i64               ; 3 uses
  %i.ct = trunc nuw i64 %i.cp to i1
  br i1 %i.ct, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.loopexit

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cu = load i64, ptr %i.l, align 8, !noundef !14
  %i.cv = load i64, ptr %i.n, align 8, !noundef !14 ; 2 uses
  %i.cw = sub i64 %i.cu, %i.cv                    ; 2 uses
  %i.cx = call i8 @llvm.ucmp.i8.i64(i64 %i.cw, i64 %i.cs)
  switch i8 %i.cx, label %bb.ai [
    i8 -1, label %bb.aj
    i8 0, label %bb.av
    i8 1, label %bb.aw
  ]

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cy = sub i64 %i.cs, %i.cw                    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10113)
  %.not19.i = icmp eq i64 %i.cy, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  br i1 %.not19.i, label %"_ZN82_$LT$hyper..common..buf..BufList$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hd562fbe1ccb58b0eE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aj, %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$hyper..proto..h1..encode..EncodedBuf$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h5347c27cfba3fa64E.exit.i"
  %.sroa.0.020.i = phi i64 [ %i.dr, %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$hyper..proto..h1..encode..EncodedBuf$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h5347c27cfba3fa64E.exit.i" ], [ %i.cy, %bb.aj ] ; 3 uses
  %i.cz = load i64, ptr %i.ac, align 8, !alias.scope !10113, !noundef !14
  %.not9.i = icmp eq i64 %i.cz, 0
  br i1 %.not9.i, label %bb.ak, label %bb.al, !prof !21

bb.ak:                                            ; preds = %.lr.ph.i
  call void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @203, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #37
  unreachable

bb.al:                                            ; preds = %.lr.ph.i
  %i.da = load i64, ptr %i.ad, align 8, !alias.scope !10113, !noundef !14 ; 2 uses
  %i.db = load i64, ptr %i.q, align 8, !range !22, !alias.scope !10113, !noundef !14 ; 2 uses
  %.not10.i = icmp ult i64 %i.da, %i.db
  %i.dc = select i1 %.not10.i, i64 0, i64 %i.db
  %.sroa.04.0.i = sub nuw i64 %i.da, %i.dc
  %i.dd = load ptr, ptr %i.ae, align 8, !alias.scope !10113, !nonnull !14, !noundef !14
  %i.de = getelementptr inbounds nuw [80 x i8], ptr %i.dd, i64 %.sroa.04.0.i ; 9 uses
  %i.df = load i64, ptr %i.de, align 8, !range !51, !noundef !14
  switch i64 %i.df, label %default.unreachable [
    i64 0, label %bb.am
    i64 1, label %bb.an
    i64 2, label %bb.ao
    i64 3, label %bb.ap
    i64 4, label %bb.aq
  ]

bb.am:                                            ; preds = %bb.al
  %i.dg = getelementptr i8, ptr %i.de, i64 24
  %.val1.i.i15 = load i64, ptr %i.dg, align 8, !noundef !14
  br label %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hda76c215bc47f095E.exit.i"

bb.an:                                            ; preds = %bb.al
  %i.dh = getelementptr i8, ptr %i.de, i64 24
  %.val.i.i14 = load i64, ptr %i.dh, align 8, !noundef !14
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.dj = load i64, ptr %i.di, align 8, !noundef !14
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 %.val.i.i14)
  br label %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hda76c215bc47f095E.exit.i"

bb.ao:                                            ; preds = %bb.al
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dl = call noundef i64 @"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17h3000069405f7a9a8E"(ptr noundef nonnull align 8 %i.dk)
  br label %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hda76c215bc47f095E.exit.i"

bb.ap:                                            ; preds = %bb.al
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !noundef !14
  br label %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hda76c215bc47f095E.exit.i"

bb.aq:                                            ; preds = %bb.al
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dp = call noundef i64 @"_ZN83_$LT$bytes..buf..chain..Chain$LT$T$C$U$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17h0ffb7de87730b792E"(ptr noundef nonnull align 8 %i.do)
  br label %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hda76c215bc47f095E.exit.i"

"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hda76c215bc47f095E.exit.i": ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am
  %.sroa.0.0.i.i13 = phi i64 [ %.val1.i.i15, %bb.am ], [ %.sroa.0.0.i.i.i, %bb.an ], [ %i.dl, %bb.ao ], [ %i.dn, %bb.ap ], [ %i.dp, %bb.aq ] ; 3 uses
  %i.dq = icmp ugt i64 %.sroa.0.0.i.i13, %.sroa.0.020.i
  br i1 %i.dq, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hda76c215bc47f095E.exit.i"
  call fastcc void @"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h569eb5bfb9d8bcd6E"(ptr noalias noundef align 8 dereferenceable(80) %i.de, i64 noundef %.sroa.0.0.i.i13)
  %i.dr = sub nuw i64 %.sroa.0.020.i, %.sroa.0.0.i.i13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10113
  call void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$9pop_front17hcdc053b26223ed46E"(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !10114)
  %i.ds = load i64, ptr %i.a, align 8, !range !61, !alias.scope !10114, !noalias !10113, !noundef !14 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 5
  br i1 %i.dt, label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$hyper..proto..h1..encode..EncodedBuf$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h5347c27cfba3fa64E.exit.i", label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !10115)
  call void @llvm.experimental.noalias.scope.decl(metadata !10116)
  switch i64 %i.ds, label %.sink.split.i.i.i.i [
    i64 0, label %bb.at
    i64 1, label %bb.at
    i64 2, label %bb.at
    i64 3, label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$hyper..proto..h1..encode..EncodedBuf$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h5347c27cfba3fa64E.exit.i"
  ]

bb.at:                                            ; preds = %bb.as, %bb.as, %bb.as
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.at, %bb.as
  %.sink.i.i.sroa.phi.i = phi ptr [ %.sink.i.i.sroa.gep.i, %bb.at ], [ %.sink.i.i.sroa.gep11.i, %bb.as ]
  %.sink8.i.i.i.sroa.phi.i = phi ptr [ %.sink8.i.i.i.sroa.gep.i, %bb.at ], [ %.sink8.i.i.i.sroa.gep12.i, %bb.as ]
  %.sink7.i.i.i.sroa.phi.i = phi ptr [ %.sink7.i.i.i.sroa.gep.i, %bb.at ], [ %.sink8.i.i.i.sroa.gep.i, %bb.as ]
  %.sink5.i.i.i.sroa.phi.i = phi ptr [ %.sink.i.i.sroa.gep11.i, %bb.at ], [ %.sink5.i.i.i.sroa.gep14.i, %bb.as ]
  %.sink9.i.i.i.i = load ptr, ptr %.sink.i.i.sroa.phi.i, align 8, !alias.scope !10117, !noalias !10113, !nonnull !14, !align !16, !noundef !14
  %i.du = getelementptr inbounds nuw i8, ptr %.sink9.i.i.i.i, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !10117, !nonnull !14, !noundef !14
  %i.dw = load ptr, ptr %.sink7.i.i.i.sroa.phi.i, align 8, !alias.scope !10117, !noalias !10113, !noundef !14
  %i.dx = load i64, ptr %.sink5.i.i.i.sroa.phi.i, align 8, !alias.scope !10117, !noalias !10113, !noundef !14
  call void %i.dv(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sink8.i.i.i.sroa.phi.i, ptr noundef %i.dw, i64 noundef %i.dx), !inline_history !10082
  br label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$hyper..proto..h1..encode..EncodedBuf$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h5347c27cfba3fa64E.exit.i"

"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$hyper..proto..h1..encode..EncodedBuf$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h5347c27cfba3fa64E.exit.i": ; preds = %.sink.split.i.i.i.i, %bb.as, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10113
  %.not.i = icmp eq i64 %i.dr, 0
  br i1 %.not.i, label %"_ZN82_$LT$hyper..common..buf..BufList$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hd562fbe1ccb58b0eE.exit", label %.lr.ph.i

bb.au:                                            ; preds = %"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$9remaining17hda76c215bc47f095E.exit.i"
  call fastcc void @"_ZN91_$LT$hyper..proto..h1..encode..EncodedBuf$LT$B$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17h569eb5bfb9d8bcd6E"(ptr noalias noundef align 8 dereferenceable(80) %i.de, i64 noundef %.sroa.0.020.i)
  br label %"_ZN82_$LT$hyper..common..buf..BufList$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hd562fbe1ccb58b0eE.exit"

bb.av:                                            ; preds = %bb.ah
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  br label %"_ZN82_$LT$hyper..common..buf..BufList$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hd562fbe1ccb58b0eE.exit"

bb.aw:                                            ; preds = %bb.ah
  %i.dy = add i64 %i.cv, %i.cs
  store i64 %i.dy, ptr %i.n, align 8
  br label %"_ZN82_$LT$hyper..common..buf..BufList$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hd562fbe1ccb58b0eE.exit"

"_ZN82_$LT$hyper..common..buf..BufList$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hd562fbe1ccb58b0eE.exit": ; preds = %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$hyper..proto..h1..encode..EncodedBuf$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h5347c27cfba3fa64E.exit.i", %bb.au, %bb.aj, %bb.aw, %bb.av
  %i.dz = load i64, ptr %i.l, align 8, !noundef !14
  %i.ea = load i64, ptr %i.n, align 8, !noundef !14
  %i.eb = sub i64 %i.dz, %i.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4iter17h71d8a58c8a9b2d81E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q)
  %i.ec = call noundef i64 @"_ZN109_$LT$alloc..collections..vec_deque..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hebed533c8e36d264E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ed = sub i64 0, %i.ec
  %i.ee = icmp eq i64 %i.eb, %i.ed
  br i1 %i.ee, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %"_ZN82_$LT$hyper..common..buf..BufList$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hd562fbe1ccb58b0eE.exit"
  %i.ef = call { i64, ptr } @"_ZN84_$LT$hyper_util..common..rewind..Rewind$LT$T$GT$$u20$as$u20$hyper..rt..io..Write$GT$10poll_flush17hafbb6bc986aa91d2E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.eg = extractvalue { i64, ptr } %i.ef, 0
  %i.eh = extractvalue { i64, ptr } %i.ef, 1
  br label %.loopexit

bb.ay:                                            ; preds = %"_ZN82_$LT$hyper..common..buf..BufList$LT$T$GT$$u20$as$u20$bytes..buf..buf_impl..Buf$GT$7advance17hd562fbe1ccb58b0eE.exit"
  %i.ei = icmp eq ptr %i.cq, null
  br i1 %i.ei, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %bb.ay, %bb.ae, %bb.ag, %bb.a, %bb.ax, %bb.c, %"_ZN5hyper5proto2h12io21Buffered$LT$T$C$B$GT$20poll_flush_flattened17h08ce41daa5118e6eE.exit"
  %.sroa.8.1 = phi ptr [ %i.w, %bb.c ], [ %i.cq, %bb.ag ], [ %i.eh, %bb.ax ], [ null, %bb.a ], [ %i.az, %"_ZN5hyper5proto2h12io21Buffered$LT$T$C$B$GT$20poll_flush_flattened17h08ce41daa5118e6eE.exit" ], [ undef, %bb.ae ], [ inttoptr (i64 98784247811 to ptr), %bb.ay ]
end_hunk_0
