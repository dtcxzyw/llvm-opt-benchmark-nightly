Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.05?download=true
inline.NumInlined: 5793
inline.NumDeleted: 2830
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4anki4sync5media8database6client13MediaDatabase12record_clean17h82ad234f38caddcaE:bb.a
  store ptr @153, ptr %.sroa.546.0..sroa_idx, align 8
  store ptr %i.i, ptr %i.j, align 8
  store i64 2, ptr %i.ah, align 8
  store ptr %i.by, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  invoke void @_ZN7tracing15__macro_support13__tracing_log17h48fba2a1e547b7beE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bm, ptr noundef nonnull align 1 %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.y unwind label %.loopexit

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.z

bb.z:                                             ; preds = %bb.u, %bb.y, %bb.r, %.thread142, %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_ZN4anki4sync5media8database6client13MediaDatabase9set_entry17h1152d9f1105c7527E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r)
          to label %bb.ag unwind label %.loopexit

bb.aa:                                            ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx29, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  store ptr %i.bc, ptr %i.o, align 8
  store i64 0, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx29.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr @152, ptr %i.n, align 8
  store i64 1, ptr %i.x, align 8
  store ptr null, ptr %i.y, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.z, align 8
  store i64 0, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.not155 = icmp eq i64 %i.be, 1
  br i1 %.not155, label %.invoke, label %bb.ab, !prof !261

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.bc, ptr %i.m, align 8
  store i64 %i.be, ptr %.sroa.635.0..sroa_idx36, align 8
  store <2 x ptr> %i.bg, ptr %.sroa.635.sroa.0.sroa.4.0..sroa.635.0..sroa_idx36.sroa_idx, align 8
  store i64 1, ptr %.sroa.635.sroa.4.0..sroa.635.0..sroa_idx36.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.r, ptr %i.l, align 8
  store ptr %i.o, ptr %i.p, align 8
  store ptr %i.n, ptr %.sroa.425.0..sroa_idx, align 8
  store ptr @44, ptr %.sroa.526.0..sroa_idx, align 8
  store ptr %i.m, ptr %i.ab, align 8
  store ptr %i.l, ptr %.sroa.431.0..sroa_idx, align 8
  store ptr @153, ptr %.sroa.532.0..sroa_idx, align 8
  store ptr %i.p, ptr %i.q, align 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.bb, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN12tracing_core5event5Event8dispatch17h90a40a5c2adbda05E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ba, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.ab
  %i.ce = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9325306da66b02e3E monotonic, align 1, !noalias !3165
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %.noexc
  %i.cg = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hb57afb2b1cb16849E monotonic, align 8, !noalias !3165 ; 2 uses
  %i.ch = icmp ult i64 %i.cg, 6
  call void @llvm.assume(i1 %i.ch)
  %i.ci = icmp samesign ugt i64 %i.cg, 3
  br i1 %i.ci, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.cj = load ptr, ptr @_ZN4anki4sync5media8database6client13MediaDatabase12record_clean10__CALLSITE17h42302cb3dedee886E, align 8, !noalias !3165, !nonnull !3, !align !17, !noundef !3 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !3, !align !24, !noundef !3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !3
  store i64 4, ptr %i.b, align 8, !noalias !3165
  store ptr %i.cl, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !3165
  store i64 %i.cn, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3165
  %i.co = invoke { ptr, ptr } @_ZN3log6logger17hef834f2fd8d55c8dE()
          to label %.noexc130 unwind label %.loopexit ; 2 uses

.noexc130:                                        ; preds = %bb.ad
  %i.cp = extractvalue { ptr, ptr } %i.co, 0      ; 2 uses
  %i.cq = extractvalue { ptr, ptr } %i.co, 1      ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !invariant.load !3, !nonnull !3
  %i.ct = invoke noundef zeroext i1 %i.cs(ptr noundef align 1 %i.cp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %.noexc131 unwind label %.loopexit, !inline_history !3168

.noexc131:                                        ; preds = %.noexc130
  br i1 %i.ct, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.noexc131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3165
  invoke void @_ZN7tracing15__macro_support13__tracing_log17h48fba2a1e547b7beE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cj, ptr noundef nonnull align 1 %i.cp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q)
          to label %.noexc132 unwind label %.loopexit

.noexc132:                                        ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3165
  br label %bb.af

bb.af:                                            ; preds = %.noexc132, %.noexc131, %bb.ac, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.z

bb.ag:                                            ; preds = %bb.z
  %i.cu = load i64, ptr %i.d, align 8, !range !1616, !noundef !3 ; 2 uses
  %.not127 = icmp eq i64 %i.cu, -9223372036854775773
  br i1 %.not127, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.2111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2111.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4109.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.cu, ptr %0, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %"_ZN4core3ptr68drop_in_place$LT$anki..sync..media..database..client..MediaEntry$GT$17h9699a2eb64dfa2e8E.exit134" unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.r)
          to label %common.resume unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

"_ZN4core3ptr68drop_in_place$LT$anki..sync..media..database..client..MediaEntry$GT$17h9699a2eb64dfa2e8E.exit134": ; preds = %bb.ah
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.c

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.al:                                            ; preds = %bb.k
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4anki4sync5media8database6client13MediaDatabase12remove_entry17h5ab0b6335c3ee311E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [112 x i8], align 8               ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.10 = alloca [40 x i8], align 8           ; 2 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.67 = alloca [64 x i8], align 8           ; 6 uses
  %i.h = alloca [72 x i8], align 8                ; 9 uses
  %i.i = alloca [64 x i8], align 8                ; 10 uses
  %i.j = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZN8rusqlite5cache14StatementCache3get17h24c80f6f37a9f3a2E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.g, ptr noundef nonnull align 8 %i.l, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @154, i64 noundef 32)
  %i.m = load ptr, ptr %i.g, align 8, !noundef !3 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.67, ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.67, i64 64, i1 false)
  call void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.67, i64 64, i1 false)
  store ptr %i.m, ptr %i.h, align 8
  %i.p = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !noundef !3
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.e, label %.lr.ph.i, !prof !261

.lr.ph.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.j, ptr %i.f, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @157, ptr %i.q, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3169)
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !3169, !noalias !3172, !noundef !3
  %i.t = call noundef i32 @sqlite3_bind_parameter_count(ptr noundef %i.s) #53, !noalias !3175 ; 3 uses
  %i.u = sext i32 %i.t to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3175
  store ptr %i.f, ptr %i.b, align 8, !noalias !3175
  %.not.i.not = icmp eq i32 %i.t, 0
  br i1 %.not.i.not, label %.sink.split, label %4

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.a": ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3175
  %.not13.i = icmp eq i32 %i.t, 1
  br i1 %.not13.i, label %_ZN8rusqlite9statement9Statement15bind_parameters17h1d4c92658edb0c43E.exit, label %bb.h

4:                                                ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3175
  invoke void @_ZN8rusqlite9statement9Statement14bind_parameter17h7961f4d8e5b60af7E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef 1)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %4
  %i.v = load i64, ptr %i.a, align 8, !range !3125, !noalias !3175, !noundef !3 ; 2 uses
  %.not12.i = icmp eq i64 %i.v, -9223372036854775783
  br i1 %.not12.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.a", label %bb.d

bb.d:                                             ; preds = %.noexc
  %.sroa.824.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.824.0.copyload26 = load i64, ptr %.sroa.824.0..sroa_idx25, align 8, !noalias !3176
  %.sroa.9.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.9.0.copyload28 = load i64, ptr %.sroa.9.0..sroa_idx27, align 8, !noalias !3176
  %.sroa.10.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.0..sroa_idx29, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3175
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #50
          to label %bb.g unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %4
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.e, %bb.j, %_ZN8rusqlite9statement9Statement15bind_parameters17h1d4c92658edb0c43E.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$rusqlite..cache..CachedStatement$GT$17h2276c7a4a6ff9881E"(ptr noalias noundef align 8 dereferenceable(72) %i.h) #52
          to label %bb.p unwind label %bb.o

bb.g:                                             ; preds = %bb.e
  unreachable

.sink.split:                                      ; preds = %.lr.ph.i, %bb.d
  %.sroa.9.0.ph.ph = phi i64 [ %.sroa.9.0.copyload28, %bb.d ], [ 0, %.lr.ph.i ]
  %.sroa.824.0.ph.ph = phi i64 [ %.sroa.824.0.copyload26, %bb.d ], [ 1, %.lr.ph.i ]
  %.sroa.0.0.ph.ph = phi i64 [ %i.v, %bb.d ], [ -9223372036854775786, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3175
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.a"
  %.sroa.9.0.ph = phi i64 [ %i.u, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.a" ], [ %.sroa.9.0.ph.ph, %.sink.split ]
  %.sroa.824.0.ph = phi i64 [ 1, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.a" ], [ %.sroa.824.0.ph.ph, %.sink.split ]
  %.sroa.0.0.ph = phi i64 [ -9223372036854775786, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.a" ], [ %.sroa.0.0.ph.ph, %.sink.split ]
  %.sroa.332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.9.0.ph, ptr %.sroa.332.0..sroa_idx, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.433.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10, i64 40, i1 false)
  br label %bb.j

_ZN8rusqlite9statement9Statement15bind_parameters17h1d4c92658edb0c43E.exit: ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.a"
  %.sroa.4.0..sroa_idx.val = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx.val22 = load ptr, ptr %i.r, align 8, !noundef !3
  invoke fastcc void @_ZN8rusqlite9statement9Statement29execute_with_bound_parameters17h99b9f01282993d44E(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.i, ptr %.sroa.4.0..sroa_idx.val, ptr %.sroa.4.0..sroa_idx.val22)
          to label %bb.i unwind label %.loopexit.split-lp

bb.i:                                             ; preds = %_ZN8rusqlite9statement9Statement15bind_parameters17h1d4c92658edb0c43E.exit
  %i.w = load i64, ptr %i.i, align 8, !range !3125, !noundef !3 ; 2 uses
  %.not21 = icmp eq i64 %i.w, -9223372036854775783
  br i1 %.not21, label %bb.k, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i
  %.sroa.616.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.616.0.copyload.pre = load i64, ptr %.sroa.616.0..sroa_idx.phi.trans.insert, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.616.0.copyload = phi i64 [ %.sroa.616.0.copyload.pre, %._crit_edge ], [ %.sroa.824.0.ph, %bb.h ]
  %.sroa.015.0.copyload = phi i64 [ %i.w, %._crit_edge ], [ %.sroa.0.0.ph, %bb.h ]
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %.sroa.015.0.copyload, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.616.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.d)
          to label %bb.m unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$rusqlite..cache..CachedStatement$GT$17h2276c7a4a6ff9881E"(ptr noalias noundef align 8 dereferenceable(72) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  ret void

bb.m:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$rusqlite..cache..CachedStatement$GT$17h2276c7a4a6ff9881E"(ptr noalias noundef align 8 dereferenceable(72) %i.h)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.l

bb.o:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

bb.p:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4anki4sync5media8database6client13MediaDatabase15record_removals17h6cc989bab40eb12eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [112 x i8], align 8               ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [40 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [40 x i8], align 8                ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %.idx = mul nuw nsw i64 %3, 24
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.r = icmp eq i64 %3, 0
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.1116 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx18.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.624.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.624.sroa.0.sroa.4.0..sroa.624.0..sroa_idx25.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.624.sroa.4.0..sroa.624.0..sroa_idx25.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.631.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.631.sroa.4.0..sroa.631.0..sroa_idx32.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.638.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.638.sroa.0.sroa.4.0..sroa.638.0..sroa_idx39.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx39.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.v
  %.sroa.0.1118 = phi ptr [ %.sroa.0.1116, %.lr.ph ], [ %.sroa.0.1, %bb.v ] ; 3 uses
  %.sroa.0.0117 = phi ptr [ %2, %.lr.ph ], [ %.sroa.0.1118, %bb.v ]
  store ptr %.sroa.0.0117, ptr %i.p, align 8
  %i.ae = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17he6f6358534555047E monotonic, align 8
  %i.af = icmp ult i64 %i.ae, 2
  br i1 %i.af, label %bb.c, label %.thread99

._crit_edge:                                      ; preds = %bb.v, %bb.a, %bb.u
  %storemerge = phi i64 [ %i.bu, %bb.u ], [ -9223372036854775773, %bb.a ], [ -9223372036854775773, %bb.v ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.b
  %i.ag = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4anki4sync5media8database6client13MediaDatabase15record_removals10__CALLSITE17h80668332fff4285bE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ag, label %bb.d [
    i8 0, label %.thread99
    i8 1, label %.thread
    i8 2, label %.thread
  ], !prof !1674

bb.d:                                             ; preds = %bb.c
  %i.ah = call noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17h04e030585b2863adE(ptr noundef nonnull align 8 @_ZN4anki4sync5media8database6client13MediaDatabase15record_removals10__CALLSITE17h80668332fff4285bE) ; 2 uses
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %.thread99, label %.thread

.thread:                                          ; preds = %bb.c, %bb.c, %bb.d
  %.sroa.010.098 = phi i8 [ %i.ah, %bb.d ], [ %i.ag, %bb.c ], [ %i.ag, %bb.c ]
  %i.aj = load ptr, ptr @_ZN4anki4sync5media8database6client13MediaDatabase15record_removals10__CALLSITE17h80668332fff4285bE, align 8, !nonnull !3, !align !17, !noundef !3
  %i.ak = call noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17h7ea8ceed54f5561bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aj, i8 noundef %.sroa.010.098)
  br i1 %i.ak, label %bb.e, label %.thread99

bb.e:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.al = load ptr, ptr @_ZN4anki4sync5media8database6client13MediaDatabase15record_removals10__CALLSITE17h80668332fff4285bE, align 8, !nonnull !3, !align !17, !noundef !3 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !3, !align !17, !noundef !3 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 56 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !3 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ar = load <2 x ptr>, ptr %i.aq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %.not88 = icmp eq i64 %i.ap, 0
  br i1 %.not88, label %bb.o, label %bb.n

.thread99:                                        ; preds = %bb.c, %bb.d, %.thread, %bb.b
  %i.as = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9325306da66b02e3E monotonic, align 1
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %bb.f, label %bb.m

bb.f:                                             ; preds = %.thread99
  %i.au = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hb57afb2b1cb16849E monotonic, align 8 ; 2 uses
  %i.av = icmp ult i64 %i.au, 6
  call void @llvm.assume(i1 %i.av)
  %i.aw = icmp samesign ugt i64 %i.au, 3
  br i1 %i.aw, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr @_ZN4anki4sync5media8database6client13MediaDatabase15record_removals10__CALLSITE17h80668332fff4285bE, align 8, !nonnull !3, !align !17, !noundef !3 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !3, !align !24, !noundef !3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !3
  store i64 4, ptr %i.j, align 8
  store ptr %i.az, ptr %.sroa.361.0..sroa_idx, align 8
  store i64 %i.bb, ptr %.sroa.562.0..sroa_idx, align 8
  %i.bc = call { ptr, ptr } @_ZN3log6logger17hef834f2fd8d55c8dE() ; 2 uses
  %i.bd = extractvalue { ptr, ptr } %i.bc, 0      ; 2 uses
  %i.be = extractvalue { ptr, ptr } %i.bc, 1      ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
end_hunk_0
begin_hunk_1_@_ZN4anki4sync5media8database6client13MediaDatabase16record_additions17h4bac4fcd79ce6da3E:bb.a

bb.cw:                                            ; preds = %bb.cv
  %i.km = load ptr, ptr @_ZN4anki4sync5media8database6client13MediaDatabase16record_additions10__CALLSITE17hea73f5343588c956E, align 8, !noalias !3204, !nonnull !3, !align !17, !noundef !3 ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 32
  %i.ko = load ptr, ptr %i.kn, align 8, !nonnull !3, !align !24, !noundef !3
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  %i.kq = load i64, ptr %i.kp, align 8, !noundef !3
  store i64 4, ptr %i.b, align 8, !noalias !3204
  store ptr %i.ko, ptr %.sroa.3.0..sroa_idx.i357, align 8, !noalias !3204
  store i64 %i.kq, ptr %.sroa.5.0..sroa_idx.i358, align 8, !noalias !3204
  %i.kr = invoke { ptr, ptr } @_ZN3log6logger17hef834f2fd8d55c8dE()
          to label %.noexc360 unwind label %bb.cy ; 2 uses

.noexc360:                                        ; preds = %bb.cw
  %i.ks = extractvalue { ptr, ptr } %i.kr, 0      ; 2 uses
  %i.kt = extractvalue { ptr, ptr } %i.kr, 1      ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8, !invariant.load !3, !nonnull !3
  %i.kw = invoke noundef zeroext i1 %i.kv(ptr noundef align 1 %i.ks, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %.noexc361 unwind label %bb.cy, !inline_history !3207

.noexc361:                                        ; preds = %.noexc360
  br i1 %i.kw, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %.noexc361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3204
  invoke void @_ZN7tracing15__macro_support13__tracing_log17h48fba2a1e547b7beE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.km, ptr noundef nonnull align 1 %i.ks, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.kt, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %.noexc362 unwind label %bb.cy

.noexc362:                                        ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3204
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cx, %.noexc360, %bb.cw, %bb.cu
  %i.kx = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v) #52
          to label %.body353 unwind label %bb.br

bb.cz:                                            ; preds = %.noexc362, %.noexc361, %bb.cv, %.noexc359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i364" unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ky = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %.body353 unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.kz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i364": ; preds = %bb.cz
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit368" unwind label %.loopexit480

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit368": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i364"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.co

bb.dc:                                            ; preds = %bb.co
  %i.la = load i64, ptr %i.l, align 8, !range !1616, !noundef !3 ; 2 uses
  %.not289 = icmp eq i64 %i.la, -9223372036854775773
  br i1 %.not289, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.sroa.4266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.2268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2268.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4266.0..sroa_idx, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %i.la, ptr %0, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ad)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i370" unwind label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.lb = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ad)
          to label %.thread unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.lc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i370": ; preds = %bb.dd
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ad)
          to label %"_ZN4core3ptr68drop_in_place$LT$anki..sync..media..database..client..MediaEntry$GT$17h9699a2eb64dfa2e8E.exit374" unwind label %.loopexit.split-lp476

bb.dg:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ad)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i376" unwind label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ld = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ad)
          to label %.thread unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.le = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i376": ; preds = %bb.dg
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ad)
          to label %"_ZN4core3ptr68drop_in_place$LT$anki..sync..media..database..client..MediaEntry$GT$17h9699a2eb64dfa2e8E.exit380" unwind label %.loopexit475

"_ZN4core3ptr68drop_in_place$LT$anki..sync..media..database..client..MediaEntry$GT$17h9699a2eb64dfa2e8E.exit380": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i376"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.bi

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.lf = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !3208, !noalias !3184, !nonnull !3, !noundef !3
  %i.lg = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !3208, !noalias !3184, !nonnull !3, !noundef !3 ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.lf
  br i1 %i.lh, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h13cabfe11055ceafE.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h13cabfe11055ceafE.exit"

"_ZN4core3ptr68drop_in_place$LT$anki..sync..media..database..client..MediaEntry$GT$17h9699a2eb64dfa2e8E.exit374": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i370"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.bo

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit350": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i346"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3f50adf575e3e2caE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %bb.c

"_ZN4core3ptr89drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$anki..media..files..AddedFile$GT$$GT$17h8199304bb38bb2e3E.exit": ; preds = %.body335
  resume { ptr, i32 } %.pn310
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4anki4sync5media8database6client13MediaDatabase19get_pending_uploads17he13f22982f63edfbE(ptr dead_on_unwind noalias noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noundef nonnull align 8 %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.11.i.sroa.4 = alloca [32 x i8], align 8  ; 2 uses
  %i.c = alloca [112 x i8], align 8               ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [64 x i8], align 8            ; 6 uses
  %i.i = alloca [64 x i8], align 8                ; 9 uses
  %i.j = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %2, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call fastcc void @_ZN8rusqlite10Connection18prepare_with_flags17hc0e8780ef00dc013E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.h, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @178, i64 noundef 45)
  %i.k = load i64, ptr %i.h, align 8, !range !5, !noundef !3
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, i64 64, i1 false)
  call void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.j, ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @179, ptr %i.n, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3210)
  call void @llvm.experimental.noalias.scope.decl(metadata !3213)
  call void @llvm.experimental.noalias.scope.decl(metadata !3216)
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !3219, !noalias !3220, !noundef !3
  %i.q = call noundef i32 @sqlite3_bind_parameter_count(ptr noundef %i.p) #53, !noalias !3227 ; 3 uses
  %i.r = sext i32 %i.q to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3227
  store ptr %i.g, ptr %i.b, align 8, !noalias !3227
  %.not.i.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.not.i.i, label %.sink.split.i, label %3

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.i.i.a": ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3227
  %.not13.i.i.i = icmp eq i32 %i.q, 1
  br i1 %.not13.i.i.i, label %bb.g, label %bb.f

3:                                                ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3227
  invoke void @_ZN8rusqlite9statement9Statement14bind_parameter17h7961f4d8e5b60af7E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef 1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %3
  %i.s = load i64, ptr %i.a, align 8, !range !3125, !noalias !3227, !noundef !3 ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.s, -9223372036854775783
  br i1 %.not12.i.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.i.i.a", label %bb.d

bb.d:                                             ; preds = %.noexc
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !3228
  %.sroa.919.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.919.0.copyload.i = load i64, ptr %.sroa.919.0..sroa_idx.i, align 8, !noalias !3228
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.11.i.sroa.0.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !3229
  %.sroa.11.i.sroa.4.0..sroa.11.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i.sroa.4.0..sroa.11.0..sroa_idx.i.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3227
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.c
  %.sroa.11.i.sroa.0.0 = phi ptr [ undef, %bb.c ], [ %.sroa.11.i.sroa.0.0.copyload, %bb.d ]
  %.sroa.919.0.ph.ph.i = phi i64 [ 0, %bb.c ], [ %.sroa.919.0.copyload.i, %bb.d ]
  %.sroa.7.0.ph.ph.i = phi i64 [ 1, %bb.c ], [ %.sroa.7.0.copyload.i, %bb.d ]
  %.sroa.0.0.ph.ph.i = phi i64 [ -9223372036854775786, %bb.c ], [ %i.s, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3227
  br label %bb.f

bb.e:                                             ; preds = %3, %bb.g, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$rusqlite..statement..Statement$GT$17h4565240abdd5efccE"(ptr noalias noundef align 8 dereferenceable(64) %i.i) #52
          to label %bb.l unwind label %bb.k

bb.f:                                             ; preds = %.sink.split.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.i.i.a"
  %.sroa.11.i.sroa.0.1 = phi ptr [ %.sroa.11.i.sroa.0.0, %.sink.split.i ], [ undef, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.i.i.a" ]
  %.sroa.919.0.ph.i = phi i64 [ %.sroa.919.0.ph.ph.i, %.sink.split.i ], [ %i.r, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.i.i.a" ]
  %.sroa.7.0.ph.i = phi i64 [ %.sroa.7.0.ph.ph.i, %.sink.split.i ], [ 1, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.i.i.a" ]
  %.sroa.0.0.ph.i = phi i64 [ %.sroa.0.0.ph.ph.i, %.sink.split.i ], [ -9223372036854775786, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.i.i.a" ]
  %i.u = inttoptr i64 %.sroa.7.0.ph.i to ptr
  %i.v = inttoptr i64 %.sroa.919.0.ph.i to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.0.0.ph.i, ptr %i.d, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.u, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.v, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.11.i.sroa.0.1, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i.sroa.4, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.d)
          to label %bb.j unwind label %bb.e

bb.g:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.i.i.a"
  store ptr %1, ptr %i.f, align 8
  %.sroa.6.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %.sroa.6.sroa.7.0..sroa_idx, align 8
  %.sroa.6.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr null, ptr %.sroa.6.sroa.8.0..sroa_idx, align 8
  invoke void @_ZN4core4iter8adapters11try_process17h01d6e0f5c61bf4e5E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$rusqlite..statement..Statement$GT$17h4565240abdd5efccE"(ptr noalias noundef align 8 dereferenceable(64) %i.i)
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.j, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$rusqlite..statement..Statement$GT$17h4565240abdd5efccE"(ptr noalias noundef align 8 dereferenceable(64) %i.i)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

bb.l:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.t
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4anki4sync5media8database6client13MediaDatabase24all_registered_checksums17h95d48571275c0c66E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [64 x i8], align 8            ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 8 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call fastcc void @_ZN8rusqlite10Connection18prepare_with_flags17hc0e8780ef00dc013E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.d, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @180, i64 noundef 52)
  %i.g = load i64, ptr %i.d, align 8, !range !5, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, i64 64, i1 false)
  call void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.c:                                             ; preds = %bb.f, %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$rusqlite..statement..Statement$GT$17h4565240abdd5efccE"(ptr noalias noundef align 8 dereferenceable(64) %i.e) #52
          to label %bb.n unwind label %bb.m

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5, i64 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3230)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.val.i = load ptr, ptr %i.k, align 8, !alias.scope !3230, !noalias !3233, !noundef !3
  %i.l = tail call noundef i32 @sqlite3_bind_parameter_count(ptr noundef %.val.i) #53, !noalias !3235 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.l, 0
  %i.m = sext i32 %i.l to i64
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -9223372036854775786, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.n, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.b)
          to label %bb.l unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  invoke void @_ZN4core4iter8adapters11try_process17hf2b2261348490f47E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.f, ptr noundef nonnull align 8 %i.e, ptr noundef align 8 %i.n)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr %i.f, align 8, !range !1616, !noundef !3
  %.not21 = icmp eq i64 %i.o, -9223372036854775773
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false)
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$rusqlite..statement..Statement$GT$17h4565240abdd5efccE"(ptr noalias noundef align 8 dereferenceable(64) %i.e)
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.l, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.l:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$rusqlite..statement..Statement$GT$17h4565240abdd5efccE"(ptr noalias noundef align 8 dereferenceable(64) %i.e)
  br label %bb.k

bb.m:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

bb.n:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4anki4sync5media8database6client13MediaDatabase3new17hb920e560c15b0302E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [64 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [64 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %i.g = alloca [64 x i8], align 8                ; 5 uses
  %i.h = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.1076.i.sroa.5.i.i = alloca [40 x i8], align 8 ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 10 uses
  %i.j = alloca [64 x i8], align 8                ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 4 uses
  %i.l = alloca [64 x i8], align 8                ; 6 uses
  %i.m = alloca [112 x i8], align 8               ; 4 uses
  %i.n = alloca [64 x i8], align 8                ; 7 uses
  %i.o = alloca [64 x i8], align 8                ; 4 uses
  %i.p = alloca [64 x i8], align 8                ; 6 uses
  %i.q = alloca [64 x i8], align 8                ; 6 uses
  %i.r = alloca [64 x i8], align 8                ; 11 uses
  %i.s = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.77.i.i = alloca [64 x i8], align 8       ; 6 uses
  %i.t = alloca [72 x i8], align 8                ; 9 uses
  %i.u = alloca [32 x i8], align 8                ; 8 uses
  %i.v = alloca [64 x i8], align 8                ; 9 uses
  %i.w = alloca [64 x i8], align 8                ; 10 uses
  %i.x = alloca [112 x i8], align 8               ; 4 uses
  %i.y = alloca [64 x i8], align 8                ; 4 uses
  %i.z = alloca [112 x i8], align 8               ; 4 uses
  %i.aa = alloca [64 x i8], align 8               ; 4 uses
  %i.ab = alloca [112 x i8], align 8              ; 4 uses
  %i.ac = alloca [64 x i8], align 8               ; 4 uses
  %i.ad = alloca [64 x i8], align 8               ; 9 uses
  %i.ae = alloca [112 x i8], align 8              ; 10 uses
  %i.af = alloca [64 x i8], align 8               ; 6 uses
  %i.ag = alloca [64 x i8], align 8               ; 6 uses
  %i.ah = alloca [64 x i8], align 8               ; 6 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %.sroa.12.i = alloca [32 x i8], align 8         ; 8 uses
  %.sroa.14.i = alloca [16 x i8], align 8         ; 5 uses
  %.sroa.0.sroa.11.i = alloca [32 x i8], align 8  ; 7 uses
  %i.aj = alloca [112 x i8], align 8              ; 23 uses
  %i.ak = alloca [120 x i8], align 8              ; 9 uses
  %.sroa.5 = alloca [112 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !3240
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.11.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3244)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3247
  call void @_ZN8rusqlite15path_to_cstring17h67ef4b71b1162b77E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.w, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2), !noalias !3249
  %i.al = load i64, ptr %i.w, align 8, !range !3125, !noalias !3247, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq i64 %i.al, -9223372036854775783
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !3247 ; 6 uses
end_hunk_1
