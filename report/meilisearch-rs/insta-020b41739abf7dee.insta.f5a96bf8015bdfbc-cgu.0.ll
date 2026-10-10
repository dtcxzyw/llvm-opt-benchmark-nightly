Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@_ZN5insta3env15get_tool_config17h016556f261d07703E:bb.a
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h2a159089507e2e4fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.i), !noalias !6530
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  br i1 %i.lp, label %.body30, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6601
  br label %.body30

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h9a1e7f1187879c36E.exit.thread": ; preds = %bb.hi, %bb.fd, %.thread.i.i.i, %bb.ft, %.thread112.i.i.i, %bb.hk
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24 ; 2 uses
  %i.wp = load i64, ptr %i.wo, align 8, !alias.scope !6520, !noalias !6530, !noundef !17
  %i.wq = add i64 %i.wp, 1
  store i64 %i.wq, ptr %i.wo, align 8, !alias.scope !6520, !noalias !6530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6528
  br label %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$17h4cd6c56a48ecacccE.exit"

bb.hp:                                            ; preds = %bb.et
  call void @llvm.trap()
  unreachable

bb.hq:                                            ; preds = %bb.fa, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17hb7a48eaccdd54deeE.exit.i.i"
  %i.wr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 272
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %.sroa.8.0.i.i.i.i389 ; 2 uses
  %i.wt = load ptr, ptr %i.ws, align 8, !noalias !6602, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ll, ptr %i.ws, align 8, !noalias !6602
  store ptr %i.wt, ptr %i.aa, align 8
  %i.wu = atomicrmw sub ptr %i.wt, i64 1 release, align 8, !noalias !6603
  %i.wv = icmp eq i64 %i.wu, 1
  br i1 %i.wv, label %bb.hr, label %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$17h4cd6c56a48ecacccE.exit"

bb.hr:                                            ; preds = %bb.hq
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h2a159089507e2e4fE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.aa)
  br label %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$17h4cd6c56a48ecacccE.exit"

"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$17h4cd6c56a48ecacccE.exit": ; preds = %bb.hr, %bb.hq, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h9a1e7f1187879c36E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br i1 %i.as, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i32, label %bb.hs

bb.hs:                                            ; preds = %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$17h4cd6c56a48ecacccE.exit"
  %i.ww = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.wx = and i64 %i.ww, 9223372036854775807
  %i.wy = icmp eq i64 %i.wx, 0
  br i1 %i.wy, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i32, label %bb.ht, !prof !23

bb.ht:                                            ; preds = %bb.hs
  %i.wz = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.wz, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i32, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  store atomic i8 1, ptr %i.an monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i32

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i32: ; preds = %bb.hu, %bb.ht, %bb.hs, %"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$17h4cd6c56a48ecacccE.exit"
  %i.xa = atomicrmw xchg ptr %.sroa.0.0.i.i, i32 0 release, align 4
  %i.xb = icmp eq i32 %i.xa, 2
  br i1 %i.xb, label %bb.hv, label %"_ZN4core3ptr183drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$$GT$17h450a86ba0230a52aE.exit", !prof !22

bb.hv:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i32
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.sroa.0.0.i.i)
  br label %"_ZN4core3ptr183drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..sync..Arc$LT$insta..env..ToolConfig$GT$$GT$$GT$$GT$17h450a86ba0230a52aE.exit"

bb.hw:                                            ; preds = %.body
  %i.xc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_ZN5insta3env19get_cargo_workspace17ha45e33e1c19dd782E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 15 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 15 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [64 x i8], align 8                ; 10 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [72 x i8], align 8                ; 8 uses
  %i.k = alloca [200 x i8], align 8               ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 3 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [48 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [32 x i8], align 8                ; 10 uses
  %i.t = alloca [200 x i8], align 8               ; 10 uses
  %i.u = alloca [56 x i8], align 8                ; 6 uses
  %i.v = alloca [56 x i8], align 8                ; 10 uses
  %i.w = alloca [32 x i8], align 8                ; 11 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %i.y = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h642343348153e75bE", i64 32) acquire, align 8 ; 2 uses
  %i.z = icmp ult i8 %i.y, 4
  tail call void @llvm.assume(i1 %i.z)
  %.not.i.i = icmp eq i8 %i.y, 2
  br i1 %.not.i.i, label %"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf52751edbd6fa1c6E.exit", label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.aa = tail call fastcc noundef nonnull align 8 ptr @"_ZN4spin4once17Once$LT$T$C$R$GT$18try_call_once_slow17he193102fc3095ee6E"()
  br label %"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf52751edbd6fa1c6E.exit"

"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf52751edbd6fa1c6E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.aa, %bb.b ], [ @"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h642343348153e75bE", %bb.a ] ; 9 uses
  %i.ab = cmpxchg ptr %.sroa.0.0.i.i, i32 0, i32 1 acquire monotonic, align 4, !noalias !6838
  %i.ac = extractvalue { i32, i1 } %i.ab, 1
  br i1 %i.ac, label %bb.d, label %bb.c, !prof !23

bb.c:                                             ; preds = %"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf52751edbd6fa1c6E.exit"
  tail call void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 8 %.sroa.0.0.i.i), !noalias !6838
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %"_ZN66_$LT$insta..env..WORKSPACES$u20$as$u20$core..ops..deref..Deref$GT$5deref17hf52751edbd6fa1c6E.exit"
  %i.ad = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !6838
  %i.ae = and i64 %i.ad, 9223372036854775807
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hb4a4c5dd9f6a1b9bE.exit", label %bb.e, !prof !23

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE(), !noalias !6838
  %i.ah = xor i1 %i.ag, true
  %i.ai = zext i1 %i.ah to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hb4a4c5dd9f6a1b9bE.exit"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hb4a4c5dd9f6a1b9bE.exit": ; preds = %bb.d, %bb.e
  %.sroa.01.0.i.i = phi i8 [ %i.ai, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 4 ; 2 uses
  %i.ak = load atomic i8, ptr %i.aj monotonic, align 4, !noalias !6838 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 5 uses
  %.val = load ptr, ptr %i.al, align 8, !noundef !17 ; 2 uses
  %i.am = getelementptr i8, ptr %.sroa.0.0.i.i, i64 16 ; 5 uses
  %.not.i47 = icmp eq ptr %.val, null
  br i1 %.not.i47, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hb4a4c5dd9f6a1b9bE.exit"
  %.val38 = load i64, ptr %i.am, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.h
  %.sroa.3.0.i.i = phi i64 [ %i.bi, %bb.h ], [ %.val38, %.preheader.i.preheader ] ; 2 uses
  %.sroa.0.0.i.i48 = phi ptr [ %i.bh, %bb.h ], [ %.val, %.preheader.i.preheader ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i48, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i48, i64 362
  %i.ap = load i16, ptr %i.ao, align 2, !noalias !6839, !noundef !17 ; 2 uses
  %i.aq = zext i16 %i.ap to i64                   ; 3 uses
  %.idx = mul nuw nsw i64 %i.aq, 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx
  %i.as = icmp eq i16 %i.ap, 0
  br i1 %i.as, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i484, i64 24 ; 2 uses
  %i.au = add nuw nsw i64 %.sroa.8.0.i.i.i483, 1
  %i.av = icmp eq ptr %i.at, %i.ar
  br i1 %i.av, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i, %bb.f
  %.sroa.01.0.i.i.i484 = phi ptr [ %i.at, %bb.f ], [ %i.an, %.preheader.i ] ; 3 uses
  %.sroa.8.0.i.i.i483 = phi i64 [ %i.au, %bb.f ], [ 0, %.preheader.i ] ; 4 uses
  %i.aw = getelementptr i8, ptr %.sroa.01.0.i.i.i484, i64 8
  %.val6.i.i.i = load ptr, ptr %i.aw, align 8, !noalias !6839, !nonnull !17, !noundef !17
  %i.ax = getelementptr i8, ptr %.sroa.01.0.i.i.i484, i64 16
  %.val7.i.i.i = load i64, ptr %i.ax, align 8, !noalias !6839, !noundef !17 ; 2 uses
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %.val7.i.i.i)
  %i.ay = sub i64 %1, %.val7.i.i.i
  %i.az = tail call i32 @memcmp(ptr nonnull readonly align 1 %0, ptr nonnull readonly align 1 %.val6.i.i.i, i64 %..i.i.i.i), !alias.scope !6840, !noalias !6841 ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp eq i32 %i.az, 0
  %spec.store.select.i.i.i.i = select i1 %i.bb, i64 %i.ay, i64 %i.ba
  %i.bc = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i, i64 0)
  switch i8 %i.bc, label %bb.g [
    i8 -1, label %._crit_edge
    i8 0, label %bb.j
    i8 1, label %bb.f
  ]

bb.g:                                             ; preds = %.lr.ph
  unreachable

._crit_edge:                                      ; preds = %bb.f, %.lr.ph, %.preheader.i
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.aq, %.preheader.i ], [ %i.aq, %bb.f ], [ %.sroa.8.0.i.i.i483, %.lr.ph ] ; 2 uses
  %i.bd = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.bd, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i48, i64 368
  %i.bf = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.sroa.4.0.i.ph.i.i
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !6842, !nonnull !17, !noundef !17
  %i.bi = add i64 %.sroa.3.0.i.i, -1
  br label %.preheader.i

"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit": ; preds = %bb.u, %bb.v, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i118", %.body35.thread, %bb.bz, %.body113, %.body35, %bb.i
  %.pn29 = phi { ptr, i32 } [ %i.bj, %bb.i ], [ %i.eu, %.body35 ], [ %eh.lpad-body114, %bb.bz ], [ %eh.lpad-body114, %.body113 ], [ %.pn27338, %.body35.thread ], [ %.pn27338, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i118" ], [ %i.cd, %bb.v ], [ %i.cd, %bb.u ]
  invoke fastcc void @"_ZN4core3ptr179drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$$GT$17h82f7c8c0896ca791E"(ptr nonnull %.sroa.0.0.i.i, i8 %.sroa.01.0.i.i) #55
          to label %bb.fa unwind label %bb.ez

bb.i:                                             ; preds = %.loopexit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit"

bb.j:                                             ; preds = %.lr.ph
  %i.bk = icmp samesign ult i64 %.sroa.8.0.i.i.i483, 11
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i48, i64 272
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.sroa.8.0.i.i.i483 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !17, !noundef !17
  %i.bo = atomicrmw add ptr %i.bn, i64 1 monotonic, align 8
  %i.bp = icmp slt i64 %i.bo, 0
  br i1 %i.bp, label %bb.l, label %bb.k

.loopexit:                                        ; preds = %._crit_edge, %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17hb4a4c5dd9f6a1b9bE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_ZN3std3env4_var17hedc9fcdb7326c51fE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.w, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @270, i64 noundef 20)
          to label %_ZN3std3env3var17h96a3dfc9e5c5af63E.exit unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.bq = load ptr, ptr %i.bm, align 8, !nonnull !17, !noundef !17
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.m:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$17h2d613f30944ec956E.exit", %bb.k
  %.sroa.0.0 = phi ptr [ %i.bq, %bb.k ], [ %i.fh, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$17h2d613f30944ec956E.exit" ]
  %i.br = trunc nuw i8 %.sroa.01.0.i.i to i1
  br i1 %i.br, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.bt = and i64 %i.bs, 9223372036854775807
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.o, !prof !23

bb.o:                                             ; preds = %bb.n
  %i.bv = call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.bv, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic i8 1, ptr %i.aj monotonic, align 4
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.bw = atomicrmw xchg ptr %.sroa.0.0.i.i, i32 0 release, align 4
  %i.bx = icmp eq i32 %i.bw, 2
  br i1 %i.bx, label %bb.q, label %"_ZN4core3ptr179drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$$GT$17h82f7c8c0896ca791E.exit", !prof !22

bb.q:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  call void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %.sroa.0.0.i.i)
  br label %"_ZN4core3ptr179drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$$GT$17h82f7c8c0896ca791E.exit"

"_ZN4core3ptr179drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$$GT$17h82f7c8c0896ca791E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.q
  ret ptr %.sroa.0.0

_ZN3std3env3var17h96a3dfc9e5c5af63E.exit:         ; preds = %.loopexit
  %i.by = load i64, ptr %i.w, align 8, !range !44, !noundef !17 ; 2 uses
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN3std3env3var17h96a3dfc9e5c5af63E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_ZN3std3env4_var17hedc9fcdb7326c51fE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @271, i64 noundef 5)
          to label %_ZN3std3env3var17h96a3dfc9e5c5af63E.exit51 unwind label %bb.w

bb.s:                                             ; preds = %_ZN3std3env3var17h96a3dfc9e5c5af63E.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.0167.0.copyload = load i64, ptr %i.ca, align 8 ; 3 uses
  %.sroa.2168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.2168.0.copyload = load ptr, ptr %.sroa.2168.0..sroa_idx, align 8 ; 3 uses
  %.sroa.3169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.3169.0.copyload = load i64, ptr %.sroa.3169.0..sroa_idx, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !6843
  %i.cb = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !6843 ; 8 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.t, label %.thread, !prof !18

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #54
          to label %.noexc52 unwind label %bb.u

.noexc52:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = icmp eq i64 %.sroa.0167.0.copyload, 0
  br i1 %i.ce, label %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit", label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2168.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.2168.0.copyload, i64 noundef %.sroa.0167.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #51
  br label %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit"

.body35.thread343:                                ; preds = %.body33, %bb.ap, %bb.ax, %bb.aw
  %.pn.ph = phi { ptr, i32 } [ %i.dl, %bb.ax ], [ %i.cy, %bb.ap ], [ %i.dl, %bb.aw ], [ %eh.lpad-body34, %.body33 ]
  call fastcc void @"_ZN4core3ptr41drop_in_place$LT$std..process..Output$GT$17h1f37fb7fdb4e03eeE"(ptr noalias noundef align 8 dereferenceable(56) %i.v) #55
  br label %.body35.thread

.body35:                                          ; preds = %bb.bt, %.body.i
  call fastcc void @"_ZN4core3ptr41drop_in_place$LT$std..process..Output$GT$17h1f37fb7fdb4e03eeE"(ptr noalias noundef align 8 dereferenceable(56) %i.v) #55
  %2 = icmp eq i64 %i.by, 0
  br i1 %2, label %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit", label %.body35.thread

bb.w:                                             ; preds = %bb.ab, %bb.r
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.body35.thread

.thread:                                          ; preds = %bb.s
  store i64 1, ptr %i.cb, align 8
  %.sroa.4137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i64 1, ptr %.sroa.4137.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i64 %.sroa.0167.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store ptr %.sroa.2168.0.copyload, ptr %.sroa.7138.0..sroa_idx, align 8
  %.sroa.8139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store i64 %.sroa.3169.0.copyload, ptr %.sroa.8139.0..sroa_idx, align 8
  store ptr %i.cb, ptr %i.x, align 8
  br label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit99"

bb.x:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1b3003a3f44d0ff2E.exit.i", %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !6844)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val.i92 = load i64, ptr %i.cg, align 8, !range !30, !alias.scope !6844, !noundef !17 ; 2 uses
  %switch.i93 = icmp sgt i64 %.val.i92, 0
  br i1 %switch.i93, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i95", label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit99"

_ZN3std3env3var17h96a3dfc9e5c5af63E.exit51:       ; preds = %bb.r
  %i.ch = load i64, ptr %i.s, align 8, !range !44, !noundef !17
  %i.ci = trunc nuw i64 %i.ch to i1
  br i1 %i.ci, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZN3std3env3var17h96a3dfc9e5c5af63E.exit51
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.013.0.copyload = load i64, ptr %i.cj, align 8 ; 2 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.614.sroa.0.0.copyload = load ptr, ptr %.sroa.614.0..sroa_idx, align 8
  %.sroa.614.sroa.6.0..sroa.614.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.614.sroa.6.0.copyload = load i64, ptr %.sroa.614.sroa.6.0..sroa.614.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.not23 = icmp eq i64 %.sroa.013.0.copyload, -9223372036854775808
  br i1 %.not23, label %bb.aa, label %bb.ac

bb.z:                                             ; preds = %_ZN3std3env3var17h96a3dfc9e5c5af63E.exit51
  call void @llvm.experimental.noalias.scope.decl(metadata !6845)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val.i53 = load i64, ptr %i.ck, align 8, !range !30, !alias.scope !6845, !noundef !17 ; 2 uses
  %switch.i54 = icmp sgt i64 %.val.i53, 0
  br i1 %switch.i54, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i55", label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit59"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i55": ; preds = %bb.z
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val1.i57 = load ptr, ptr %i.cl, align 8, !alias.scope !6845, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i57, i64 noundef %.val.i53, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6845
  br label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit59"

bb.aa:                                            ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit59", %bb.y
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !6846
  %i.cm = call noundef dereferenceable_or_null(5) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 5, i64 noundef range(i64 1, 17) 1) #51, !noalias !6846 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54
          to label %.noexc60 unwind label %bb.w

.noexc60:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.y, %bb.ah
  %.sroa.8131.0 = phi i64 [ 5, %bb.ah ], [ %.sroa.614.sroa.6.0.copyload, %bb.y ]
  %.sroa.6130.0 = phi ptr [ %i.cm, %bb.ah ], [ %.sroa.614.sroa.0.0.copyload, %bb.y ] ; 3 uses
  %.sroa.0129.0 = phi i64 [ 5, %bb.ah ], [ %.sroa.013.0.copyload, %bb.y ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6847
  invoke void @_ZN3std3sys7process4unix6common7Command3new17h32f380f7324f3eb9E(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.6130.0, i64 noundef %.sroa.8131.0)
          to label %bb.af unwind label %bb.ad, !noalias !6847

bb.ad:                                            ; preds = %bb.ac
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = icmp eq i64 %.sroa.0129.0, 0
  br i1 %i.cp, label %.body35.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6130.0, i64 noundef %.sroa.0129.0, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6848
  br label %.body35.thread

bb.af:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.t, ptr noundef nonnull align 8 dereferenceable(200) %i.k, i64 200, i1 false), !noalias !6849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6847
  %i.cq = icmp eq i64 %.sroa.0129.0, 0
  br i1 %i.cq, label %_ZN3std7process7Command3new17hb2ba495e99e18c94E.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6130.0, i64 noundef %.sroa.0129.0, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6850
  br label %_ZN3std7process7Command3new17hb2ba495e99e18c94E.exit

"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit59": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i55", %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.aa

bb.ah:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.cm, ptr noundef nonnull align 1 dereferenceable(5) @272, i64 5, i1 false), !noalias !6851
  br label %bb.ac

_ZN3std7process7Command3new17hb2ba495e99e18c94E.exit: ; preds = %bb.ag, %bb.af
  invoke void @_ZN3std3sys7process4unix6common7Command3arg17h1fba8cb9bc28b1e8E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @273, i64 noundef 8)
          to label %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit unwind label %bb.ai

bb.ai:                                            ; preds = %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit70, %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit68, %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit, %_ZN3std7process7Command3new17hb2ba495e99e18c94E.exit, %_ZN3std7process7Command11current_dir17h5da3a1e2599e47aaE.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body31

.body31:                                          ; preds = %bb.al, %bb.ai
  %eh.lpad-body32 = phi { ptr, i32 } [ %i.cr, %bb.ai ], [ %i.cw, %bb.al ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..process..Command$GT$17hef1e85d7257766f3E"(ptr noalias noundef align 8 dereferenceable(200) %i.t) #55
          to label %.body35.thread unwind label %bb.ez

_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit: ; preds = %_ZN3std7process7Command3new17hb2ba495e99e18c94E.exit
  invoke void @_ZN3std3sys7process4unix6common7Command3arg17h1fba8cb9bc28b1e8E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @274, i64 noundef 18)
          to label %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit68 unwind label %bb.ai

_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit68: ; preds = %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit
  invoke void @_ZN3std3sys7process4unix6common7Command3arg17h1fba8cb9bc28b1e8E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @275, i64 noundef 9)
          to label %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit70 unwind label %bb.ai

_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit70: ; preds = %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit68
  invoke void @_ZN3std3sys7process4unix6common7Command3cwd17ha513e54c1ebad924E(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
          to label %_ZN3std7process7Command11current_dir17h5da3a1e2599e47aaE.exit unwind label %bb.ai

_ZN3std7process7Command11current_dir17h5da3a1e2599e47aaE.exit: ; preds = %_ZN3std7process7Command3arg17h0da8bab005a71b41E.exit70
  invoke void @_ZN3std7process7Command6output17h43c2bcdedd19a7a1E(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(200) %i.t)
          to label %bb.aj unwind label %bb.ai

bb.aj:                                            ; preds = %_ZN3std7process7Command11current_dir17h5da3a1e2599e47aaE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !6852)
  call void @llvm.experimental.noalias.scope.decl(metadata !6853)
  %i.cs = load i64, ptr %i.u, align 8, !range !30, !alias.scope !6853, !noalias !6852, !noundef !17
  %i.ct = icmp eq i64 %i.cs, -9223372036854775808
  br i1 %i.ct, label %bb.ak, label %bb.ao, !prof !22

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6854
  %i.cu = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !6853, !noalias !6852, !nonnull !17, !noundef !17
  store ptr %i.cv, ptr %i.l, align 8, !noalias !6854
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @111, i64 noundef 43, ptr noundef nonnull align 1 %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @276) #54
          to label %bb.am unwind label %bb.al, !noalias !6854

bb.al:                                            ; preds = %bb.ak
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h485fd57239593cb0E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #55
          to label %.body31 unwind label %bb.an, !noalias !6854

bb.am:                                            ; preds = %bb.ak
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !6854
  unreachable

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(56) %i.u, i64 56, i1 false), !alias.scope !6854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..process..Command$GT$17hef1e85d7257766f3E"(ptr noalias noundef align 8 dereferenceable(200) %i.t)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.as, %bb.at, %bb.aq, %bb.ao
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body35.thread343

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !noundef !17
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.da, i64 noundef %i.dc)
          to label %bb.ar unwind label %bb.ap

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !6855)
  %i.dd = load i64, ptr %i.p, align 8, !range !44, !alias.scope !6855, !noalias !6856, !noundef !17
  %i.de = trunc nuw i64 %i.dd to i1
  br i1 %i.de, label %bb.as, label %bb.at, !prof !22

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6857
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !noalias !6856
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @111, i64 noundef 43, ptr noundef nonnull align 1 %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @120, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @277) #54
          to label %.noexc unwind label %bb.ap

.noexc:                                           ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.dg = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !6855, !noalias !6856, !nonnull !17, !align !31, !noundef !17
  %i.di = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !6855, !noalias !6856, !noundef !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke fastcc void @_ZN5insta7content4yaml8vendored4yaml10YamlLoader13load_from_str17h79de1e42ca6e037bE(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dh, i64 noundef %i.dj)
          to label %bb.au unwind label %bb.ap

bb.au:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !6858)
  call void @llvm.experimental.noalias.scope.decl(metadata !6859)
  %i.dk = load i64, ptr %i.q, align 8, !range !30, !alias.scope !6859, !noalias !6858, !noundef !17
  %.not.i = icmp eq i64 %i.dk, -9223372036854775808
  br i1 %.not.i, label %bb.az, label %bb.av, !prof !23

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.q, i64 48, i1 false), !noalias !6858
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @111, i64 noundef 43, ptr noundef nonnull align 1 %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @114, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @278) #54
          to label %bb.ay unwind label %bb.aw, !noalias !6860

bb.aw:                                            ; preds = %bb.av
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6861)
  call void @llvm.experimental.noalias.scope.decl(metadata !6862), !noalias !6860
  %.val.i.i72 = load i64, ptr %i.n, align 8, !alias.scope !6863, !noalias !6860 ; 2 uses
  %i.dm = icmp eq i64 %.val.i.i72, 0
  br i1 %i.dm, label %.body35.thread343, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val1.i.i = load ptr, ptr %i.dn, align 8, !alias.scope !6863, !noalias !6860, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i72, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6864
  br label %.body35.thread343

bb.ay:                                            ; preds = %bb.av
  unreachable

bb.az:                                            ; preds = %bb.au
  %i.do = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false), !alias.scope !6860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !17 ; 4 uses
  %.not24 = icmp eq i64 %i.dq, 0
  br i1 %.not24, label %bb.ba, label %bb.bb, !prof !22

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @279, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @280) #54
          to label %bb.bf unwind label %bb.be

bb.bb:                                            ; preds = %bb.az
  %i.dr = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !17, !noundef !17 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6865)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6866
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !6867
  %i.dt = call noundef dereferenceable_or_null(14) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 14, i64 noundef range(i64 1, 17) 1) #51, !noalias !6867 ; 3 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %.invoke, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit.i"

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit.i": ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.dt, ptr noundef nonnull readonly align 1 dereferenceable(14) @281, i64 14, i1 false), !noalias !6868
  %i.dv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 14, ptr %i.dv, align 8, !noalias !6866
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.dt, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !6866
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 14, ptr %.sroa.58.0..sroa_idx.i, align 8, !noalias !6866
  store i8 2, ptr %i.j, align 8, !noalias !6866
  %i.dw = load i8, ptr %i.ds, align 8, !range !16, !alias.scope !6865, !noalias !6869, !noundef !17
  %i.dx = icmp eq i8 %i.dw, 5
  br i1 %i.dx, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit.i"
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dz = call fastcc noundef align 8 dereferenceable_or_null(72) ptr @"_ZN15linked_hash_map30LinkedHashMap$LT$K$C$V$C$S$GT$3get17h80951a8a965ccc7dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.dy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.j), !noalias !6869 ; 2 uses
  %.not.i75 = icmp eq ptr %i.dz, null
  %_ZN5insta7content4yaml8vendored4yaml9BAD_VALUE17hafa023aeb1ede197E..i = select i1 %.not.i75, ptr @_ZN5insta7content4yaml8vendored4yaml9BAD_VALUE17hafa023aeb1ede197E, ptr %i.dz
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit.i"
  %.sroa.0.0.i74 = phi ptr [ %_ZN5insta7content4yaml8vendored4yaml9BAD_VALUE17hafa023aeb1ede197E..i, %bb.bc ], [ @_ZN5insta7content4yaml8vendored4yaml9BAD_VALUE17hafa023aeb1ede197E, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h040e81cb1e22e211E.exit.i" ] ; 3 uses
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$insta..content..yaml..vendored..yaml..Yaml$GT$17hb8081eeb1d574197E"(ptr noalias noundef align 8 dereferenceable(72) %i.j)
          to label %bb.bg unwind label %bb.be

bb.be:                                            ; preds = %.invoke, %bb.bd, %bb.bi, %bb.ba
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body33

.body33:                                          ; preds = %bb.bl, %bb.bm, %bb.be
  %eh.lpad-body34 = phi { ptr, i32 } [ %i.ea, %bb.be ], [ %i.eo, %bb.bm ], [ %i.eo, %bb.bl ]
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h43e739234e4e0f0bE"(ptr noalias noundef align 8 dereferenceable(24) %i.r) #55
          to label %.body35.thread343 unwind label %bb.ez

bb.bf:                                            ; preds = %bb.bi, %bb.ba
  unreachable

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6866
  %i.eb = load i8, ptr %.sroa.0.0.i74, align 8, !range !16, !noundef !17
  %.not = icmp eq i8 %i.eb, 2
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i74, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !17
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i74, i64 24
  %i.ef = load i64, ptr %i.ee, align 8            ; 9 uses
  br i1 %.not, label %bb.bh, label %bb.bi, !prof !23

bb.bh:                                            ; preds = %bb.bg
  %i.eg = icmp slt i64 %i.ef, 0
  br i1 %i.eg, label %.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.bh
  %i.eh = icmp eq i64 %i.ef, 0                    ; 2 uses
  br i1 %i.eh, label %bb.bj, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !6870
  %i.ei = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ef, i64 noundef range(i64 1, 17) 1) #51, !noalias !6870 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %.invoke, label %bb.bj

.invoke:                                          ; preds = %bb.bb, %bb.bh, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %i.ek = phi i64 [ 0, %bb.bh ], [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 1, %bb.bb ]
  %i.el = phi i64 [ %i.ef, %bb.bh ], [ %i.ef, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 14, %bb.bb ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.ek, i64 %i.el, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54
          to label %.cont unwind label %bb.be

.cont:                                            ; preds = %.invoke
  unreachable

bb.bi:                                            ; preds = %bb.bg
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @282) #54
          to label %bb.bf unwind label %bb.be

bb.bj:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.ei, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.ed, i64 %i.ef, i1 false), !noalias !6871
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !6872
  %i.em = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !6872 ; 9 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.bk, label %bb.bn, !prof !18

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #54
          to label %.noexc82 unwind label %bb.bl

.noexc82:                                         ; preds = %bb.bk
  unreachable

bb.bl:                                            ; preds = %bb.bk
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.eh, label %.body33, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.ef, i64 noundef range(i64 1, -9223372036854775807) 1) #51
  br label %.body33

bb.bn:                                            ; preds = %bb.bj
  store i64 1, ptr %i.em, align 8
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i64 1, ptr %.sroa.4161.0..sroa_idx, align 8
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store i64 %i.ef, ptr %.sroa.5162.0..sroa_idx, align 8
  %.sroa.7163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  store ptr %.sroa.10.0.i.i, ptr %.sroa.7163.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  store i64 %i.ef, ptr %.sroa.9.0..sroa_idx, align 8
  store ptr %i.em, ptr %i.x, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !6873)
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bp
  %i.ep = icmp eq i64 %i.er, %i.dq
  br i1 %i.ep, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6601c78f4953d730E.exit.i", label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %.sroa.0.0.i.i.i487 = phi i64 [ 0, %bb.bn ], [ %i.er, %bb.bo ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [72 x i8], ptr %i.ds, i64 %.sroa.0.0.i.i.i487
  %i.er = add i64 %.sroa.0.0.i.i.i487, 1          ; 4 uses
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$insta..content..yaml..vendored..yaml..Yaml$GT$17hb8081eeb1d574197E"(ptr noalias noundef align 8 dereferenceable(72) %i.eq)
          to label %bb.bo unwind label %bb.br, !noalias !6873, !inline_history !9

bb.bq:                                            ; preds = %.lr.ph490
  %i.es = add i64 %.sroa.0.1.i.i.i488, 1          ; 2 uses
  %i.et = icmp eq i64 %i.es, %i.dq
  br i1 %i.et, label %.body.i, label %.lr.ph490

bb.br:                                            ; preds = %bb.bp
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = icmp eq i64 %i.er, %i.dq
  br i1 %i.ev, label %.body.i, label %.lr.ph490

.lr.ph490:                                        ; preds = %bb.br, %bb.bq
  %.sroa.0.1.i.i.i488 = phi i64 [ %i.es, %bb.bq ], [ %i.er, %bb.br ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [72 x i8], ptr %i.ds, i64 %.sroa.0.1.i.i.i488
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$insta..content..yaml..vendored..yaml..Yaml$GT$17hb8081eeb1d574197E"(ptr noalias noundef align 8 dereferenceable(72) %i.ew) #55
          to label %bb.bq unwind label %bb.bs, !noalias !6873, !inline_history !9

bb.bs:                                            ; preds = %.lr.ph490
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !6873, !inline_history !9
  unreachable

.body.i:                                          ; preds = %bb.bq, %bb.br
  %.val2.i = load i64, ptr %i.r, align 8, !range !20, !alias.scope !6873, !noundef !17 ; 2 uses
  %i.ey = icmp eq i64 %.val2.i, 0
  br i1 %i.ey, label %.body35, label %bb.bt

bb.bt:                                            ; preds = %.body.i
  %i.ez = mul nuw i64 %.val2.i, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ds, i64 noundef %i.ez, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !6873, !inline_history !64
  br label %.body35

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6601c78f4953d730E.exit.i": ; preds = %bb.bo
  %.val.i85 = load i64, ptr %i.r, align 8, !range !20, !alias.scope !6873, !noundef !17 ; 2 uses
  %i.fa = icmp eq i64 %.val.i85, 0
  br i1 %i.fa, label %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h43e739234e4e0f0bE.exit", label %bb.bu

bb.bu:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6601c78f4953d730E.exit.i"
  %i.fb = mul nuw i64 %.val.i85, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ds, i64 noundef %i.fb, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !6873, !inline_history !64
  br label %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h43e739234e4e0f0bE.exit"

"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h43e739234e4e0f0bE.exit": ; preds = %bb.bu, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6601c78f4953d730E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.experimental.noalias.scope.decl(metadata !6874)
  %.val4.i88 = load i64, ptr %i.v, align 8, !alias.scope !6874 ; 2 uses
  %i.fc = icmp eq i64 %.val4.i88, 0
  br i1 %i.fc, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1b3003a3f44d0ff2E.exit.i", label %bb.bv

bb.bv:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h43e739234e4e0f0bE.exit"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.da, i64 noundef %.val4.i88, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6874
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1b3003a3f44d0ff2E.exit.i"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1b3003a3f44d0ff2E.exit.i": ; preds = %bb.bv, %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$insta..content..yaml..vendored..yaml..Yaml$GT$$GT$17h43e739234e4e0f0bE.exit"
  %i.fd = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.val.i90 = load i64, ptr %i.fd, align 8, !alias.scope !6874 ; 2 uses
  %i.fe = icmp eq i64 %.val.i90, 0
  br i1 %i.fe, label %bb.x, label %bb.bw

bb.bw:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1b3003a3f44d0ff2E.exit.i"
  %i.ff = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.val1.i91 = load ptr, ptr %i.ff, align 8, !alias.scope !6874, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i91, i64 noundef %.val.i90, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6874
  br label %bb.x

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i95": ; preds = %bb.x
  %i.fg = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.val1.i97 = load ptr, ptr %i.fg, align 8, !alias.scope !6844, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i97, i64 noundef %.val.i92, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6844
  br label %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit99"

"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit99": ; preds = %.thread, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i95", %bb.x
  %i.fh = phi ptr [ %i.cb, %.thread ], [ %i.em, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i95" ], [ %i.em, %bb.x ] ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.fi = icmp slt i64 %1, 0
  br i1 %i.fi, label %bb.bx, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i100, !prof !15

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i100: ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit99"
  %i.fj = icmp eq i64 %1, 0                       ; 4 uses
  br i1 %i.fj, label %bb.ca, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i101"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i101": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i100
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !6875
  %i.fk = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 1, 17) 1) #51, !noalias !6875 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i101", %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit99"
  %.sroa.4.0.ph.i.i105 = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i101" ], [ 0, %"_ZN4core3ptr91drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..env..VarError$GT$$GT$17h7639f42ee67205ffE.exit99" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i105, i64 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @927) #54
          to label %.noexc106 unwind label %bb.by

.noexc106:                                        ; preds = %bb.bx
  unreachable

bb.by:                                            ; preds = %bb.bx
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body113

.body113:                                         ; preds = %bb.cy, %bb.cz, %bb.dk, %bb.dl, %bb.do, %bb.dp, %bb.en, %bb.eo, %bb.eu, %bb.ev, %bb.by
  %eh.lpad-body114 = phi { ptr, i32 } [ %i.fm, %bb.by ], [ %i.iy, %bb.dp ], [ %lpad.phi.i.i.i, %bb.eo ], [ %i.qf, %bb.ev ], [ %i.iy, %bb.do ], [ %i.iu, %bb.dl ], [ %i.qf, %bb.eu ], [ %i.iu, %bb.dk ], [ %i.ia, %bb.cy ], [ %lpad.phi.i.i.i, %bb.en ], [ %i.ia, %bb.cz ] ; 2 uses
  %i.fn = atomicrmw sub ptr %i.fh, i64 1 release, align 8, !noalias !6876
  %i.fo = icmp eq i64 %i.fn, 1
  br i1 %i.fo, label %bb.bz, label %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit"

bb.bz:                                            ; preds = %.body113
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb0af500350cceb38E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.x)
  br label %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit"

bb.ca:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i101", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i100
  %.sroa.10.0.i.i102 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i100 ], [ %i.fk, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i101" ] ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i102, ptr nonnull readonly align 1 %0, i64 %1, i1 false), !noalias !6877
  %i.fp = atomicrmw add ptr %i.fh, i64 1 monotonic, align 8
  %i.fq = icmp slt i64 %i.fp, 0
  br i1 %i.fq, label %bb.ew, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.experimental.noalias.scope.decl(metadata !6878)
  call void @llvm.experimental.noalias.scope.decl(metadata !6879)
  %i.fr = load ptr, ptr %i.al, align 8, !alias.scope !6880, !noalias !6881, !noundef !17 ; 2 uses
  %.not.i.i108 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i108, label %bb.ci, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fs = load i64, ptr %i.am, align 8, !alias.scope !6880, !noalias !6881, !noundef !17
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cg, %bb.cc
  %.sroa.3.0.i.i.i = phi i64 [ %i.fs, %bb.cc ], [ %i.go, %bb.cg ] ; 2 uses
  %.sroa.0.0.i.i.i110 = phi ptr [ %i.fr, %bb.cc ], [ %i.gn, %bb.cg ] ; 8 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i110, i64 8 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i110, i64 362
  %i.fv = load i16, ptr %i.fu, align 2, !noalias !6882, !noundef !17 ; 4 uses
  %i.fw = zext i16 %i.fv to i64                   ; 5 uses
  %.idx499 = mul nuw nsw i64 %i.fw, 24
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 %.idx499
  %i.fy = icmp eq i16 %i.fv, 0
  br i1 %i.fy, label %._crit_edge495, label %.lr.ph494

bb.ce:                                            ; preds = %.lr.ph494
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i492, i64 24 ; 2 uses
  %i.ga = add nuw nsw i64 %.sroa.8.0.i.i.i.i491, 1
  %i.gb = icmp eq ptr %i.fz, %i.fx
  br i1 %i.gb, label %._crit_edge495, label %.lr.ph494

.lr.ph494:                                        ; preds = %bb.cd, %bb.ce
  %.sroa.03.0.i.i.i.i492 = phi ptr [ %i.fz, %bb.ce ], [ %i.ft, %bb.cd ] ; 3 uses
  %.sroa.8.0.i.i.i.i491 = phi i64 [ %i.ga, %bb.ce ], [ 0, %bb.cd ] ; 3 uses
  %i.gc = getelementptr i8, ptr %.sroa.03.0.i.i.i.i492, i64 8
  %.val8.i.i.i.i = load ptr, ptr %i.gc, align 8, !noalias !6882, !nonnull !17, !noundef !17
  %i.gd = getelementptr i8, ptr %.sroa.03.0.i.i.i.i492, i64 16
  %.val9.i.i.i.i = load i64, ptr %i.gd, align 8, !noalias !6882, !noundef !17 ; 2 uses
  %..i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %1, i64 %.val9.i.i.i.i)
  %i.ge = sub i64 %1, %.val9.i.i.i.i
  %i.gf = call i32 @memcmp(ptr nonnull readonly align 1 %.sroa.10.0.i.i102, ptr nonnull readonly align 1 %.val8.i.i.i.i, i64 %..i.i.i.i.i.i.i), !alias.scope !6883, !noalias !6882 ; 2 uses
  %i.gg = sext i32 %i.gf to i64
  %i.gh = icmp eq i32 %i.gf, 0
  %spec.store.select.i.i.i.i.i.i.i = select i1 %i.gh, i64 %i.ge, i64 %i.gg
  %i.gi = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.store.select.i.i.i.i.i.i.i, i64 0)
  switch i8 %i.gi, label %bb.cf [
    i8 -1, label %._crit_edge495
    i8 0, label %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h282e0635a3347628E.exit.i.i"
    i8 1, label %bb.ce
  ]

bb.cf:                                            ; preds = %.lr.ph494
  unreachable

._crit_edge495:                                   ; preds = %bb.ce, %.lr.ph494, %bb.cd
  %.sroa.4.0.i.ph.i.i.i = phi i64 [ %i.fw, %bb.cd ], [ %i.fw, %bb.ce ], [ %.sroa.8.0.i.i.i.i491, %.lr.ph494 ] ; 13 uses
  %i.gj = icmp eq i64 %.sroa.3.0.i.i.i, 0
  br i1 %i.gj, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h1a2b9517f2064d5cE.exit.i", label %bb.cg

bb.cg:                                            ; preds = %._crit_edge495
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i110, i64 368
  %i.gl = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i.i, 12
  call void @llvm.assume(i1 %i.gl)
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %.sroa.4.0.i.ph.i.i.i
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !6884, !nonnull !17, !noundef !17
  %i.go = add i64 %.sroa.3.0.i.i.i, -1
  br label %bb.cd

"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h282e0635a3347628E.exit.i.i": ; preds = %.lr.ph494
  br i1 %i.fj, label %bb.ex, label %bb.ch

bb.ch:                                            ; preds = %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h282e0635a3347628E.exit.i.i"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i102, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6885
  br label %bb.ex

bb.ci:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6886
  store ptr %i.fh, ptr %i.i, align 8, !noalias !6887
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51, !noalias !6888
  %i.gp = call noalias noundef align 8 dereferenceable_or_null(368) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 368, i64 noundef range(i64 1, -9223372036854775807) 8) #51, !noalias !6888 ; 8 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.cj, label %bb.ck, !prof !22

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 368) #54
          to label %.noexc.i.i unwind label %bb.es, !noalias !6888

.noexc.i.i:                                       ; preds = %bb.cj
  unreachable

end_hunk_0
begin_hunk_1_@_ZN5insta3env19get_cargo_workspace17ha45e33e1c19dd782E:bb.a
  %i.oy = trunc nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i.prol to i16
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 360
  store i16 %i.oy, ptr %i.oz, align 8, !noalias !6953
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i45.i.i.i.i.prol.loopexit, label %.lr.ph.i.i45.i.i.i.i.prol, !llvm.loop !6815

.lr.ph.i.i45.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i45.i.i.i.i.prol, %.lr.ph.i.i45.i.i.i.i.preheader
  %.sroa.0.06.i.i46.i.i.i.i.unr = phi i64 [ %i.ny, %.lr.ph.i.i45.i.i.i.i.preheader ], [ %i.ou, %.lr.ph.i.i45.i.i.i.i.prol ]
  %i.pa = icmp ult i64 %i.ot, 3
  br i1 %i.pa, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i", label %.lr.ph.i.i45.i.i.i.i

.lr.ph.i.i45.i.i.i.i:                             ; preds = %.lr.ph.i.i45.i.i.i.i.prol.loopexit, %.lr.ph.i.i45.i.i.i.i
  %.sroa.0.06.i.i46.i.i.i.i = phi i64 [ %i.pq, %.lr.ph.i.i45.i.i.i.i ], [ %.sroa.0.06.i.i46.i.i.i.i.unr, %.lr.ph.i.i45.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.pb = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i, 1 ; 2 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %.sroa.0.06.i.i46.i.i.i.i
  %i.pd = load ptr, ptr %i.pc, align 8, !noalias !6952, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ns, ptr %i.pd, align 8, !noalias !6953
  %i.pe = trunc nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i to i16
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 360
  store i16 %i.pe, ptr %i.pf, align 8, !noalias !6953
  %i.pg = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i, 2 ; 2 uses
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.pb
  %i.pi = load ptr, ptr %i.ph, align 8, !noalias !6952, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ns, ptr %i.pi, align 8, !noalias !6953
  %i.pj = trunc nuw nsw i64 %i.pb to i16
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 360
  store i16 %i.pj, ptr %i.pk, align 8, !noalias !6953
  %i.pl = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i, 3 ; 2 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.pg
  %i.pn = load ptr, ptr %i.pm, align 8, !noalias !6952, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ns, ptr %i.pn, align 8, !noalias !6953
  %i.po = trunc nuw nsw i64 %i.pg to i16
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 360
  store i16 %i.po, ptr %i.pp, align 8, !noalias !6953
  %i.pq = add nuw nsw i64 %.sroa.0.06.i.i46.i.i.i.i, 4 ; 2 uses
  %i.pr = icmp ult i64 %.sroa.0.06.i.i46.i.i.i.i, 9
  call void @llvm.assume(i1 %i.pr)
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.on, i64 %i.pl
  %i.pt = load ptr, ptr %i.ps, align 8, !noalias !6952, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.ns, ptr %i.pt, align 8, !noalias !6953
  %i.pu = trunc nuw nsw i64 %i.pl to i16
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 360
  store i16 %i.pu, ptr %i.pv, align 8, !noalias !6953
  %exitcond.not.i.i47.i.i.i.i.3 = icmp eq i64 %i.pq, %i.oo
  br i1 %exitcond.not.i.i47.i.i.i.i.3, label %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i", label %.lr.ph.i.i45.i.i.i.i

bb.ek:                                            ; preds = %bb.ea
  %i.pw = add nsw i64 %i.jg, -7
  br label %bb.eg

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i": ; preds = %.lr.ph.i.i45.i.i.i.i.prol.loopexit, %.lr.ph.i.i45.i.i.i.i, %bb.ej
  %.sroa.842.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.842.0..sroa_idx.i.i.i, align 8, !noalias !6954
  %.sroa.842.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.842.sroa.6.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6954
  %.sroa.842.sroa.7.0.copyload.i.i.i = load ptr, ptr %.sroa.842.sroa.7.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6954
  %.sroa.845.0.copyload.i.i.i = load ptr, ptr %.sroa.845.0..sroa_idx.i.i.i, align 8, !noalias !6954
  %.sroa.948.0.copyload.i.i.i = load i64, ptr %.sroa.948.0..sroa_idx.i.i.i, align 8, !noalias !6954
  br label %bb.ep

"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i": ; preds = %.lr.ph.i.i40.i.i.i.i.prol.loopexit, %.lr.ph.i.i40.i.i.i.i, %bb.ef
  %.sroa.842.sroa.0.0.copyload270.i.i.i = load ptr, ptr %.sroa.842.0..sroa_idx.i.i.i, align 8, !noalias !6954
  %.sroa.842.sroa.6.0.copyload271.i.i.i = load i64, ptr %.sroa.842.sroa.6.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6954
  %.sroa.842.sroa.7.0.copyload272.i.i.i = load ptr, ptr %.sroa.842.sroa.7.0..sroa.842.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !6954
  %.sroa.948.0.copyload50.i.i.i = load i64, ptr %.sroa.948.0..sroa_idx.i.i.i, align 8, !noalias !6954
  %.sroa.1051.0.copyload53.i.i.i = load ptr, ptr %i.ij, align 8, !noalias !6954
  br label %bb.ep

.loopexit.i.i.i:                                  ; preds = %bb.eb, %bb.ea, %.invoke.i34.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

.loopexit.split-lp.i.i.i:                         ; preds = %bb.dr
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.el:                                            ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %i.px = atomicrmw sub ptr %.sroa.16.1.i.i.i, i64 1 release, align 8, !noalias !6955
  %i.py = icmp eq i64 %i.px, 1
  br i1 %i.py, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb0af500350cceb38E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c), !noalias !6928
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el
  %i.pz = icmp eq i64 %.sroa.039.0180.i.i.i, 0
  br i1 %i.pz, label %.body113, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.1.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.1.i.i.i, i64 noundef %.sroa.039.0180.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6956
  br label %.body113

.thread112.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6892
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h8bd30e2254572d81E.exit.thread"

bb.ep:                                            ; preds = %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i", %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i"
  %.sroa.842.sroa.0.0.i.i.i = phi ptr [ %.sroa.842.sroa.0.0.copyload270.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i" ], [ %.sroa.842.sroa.0.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i" ] ; 2 uses
  %.sroa.842.sroa.6.0.i.i.i = phi i64 [ %.sroa.842.sroa.6.0.copyload271.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i" ], [ %.sroa.842.sroa.6.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i" ] ; 2 uses
  %.sroa.842.sroa.7.0.i.i.i = phi ptr [ %.sroa.842.sroa.7.0.copyload272.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i" ], [ %.sroa.842.sroa.7.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i" ] ; 2 uses
  %.sroa.1051.0.i.i.i = phi ptr [ %.sroa.1051.0.copyload53.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i" ], [ %i.ns, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i" ] ; 3 uses
  %.sroa.948.0.i.i.i = phi i64 [ %.sroa.948.0.copyload50.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i" ], [ %.sroa.948.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i" ] ; 2 uses
  %.sroa.845.0.i.i.i = phi ptr [ %i.lo, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit43.i.i.i.i" ], [ %.sroa.845.0.copyload.i.i.i, %"_ZN5alloc11collections5btree4node214Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$10insert_fit17hd3a5b25b915117d8E.exit48.i.i.i.i" ] ; 4 uses
  %.sroa.039.0.i.i.i = load i64, ptr %i.a, align 8, !noalias !6954 ; 3 uses
  %.sroa.1154.0.copyload56.i.i.i = load i64, ptr %.sroa.1154.0..sroa_idx.i.i.i, align 8, !noalias !6954 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6892
  %.not16.i.i.i = icmp eq i64 %.sroa.039.0.i.i.i, -9223372036854775808
  br i1 %.not16.i.i.i, label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h8bd30e2254572d81E.exit.thread", label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.845.0.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1051.0.i.i.i) ]
  %i.qa = load ptr, ptr %.sroa.845.0.i.i.i, align 8, !noalias !6912, !noundef !17 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.qa, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i, label %bb.dq

bb.er:                                            ; preds = %bb.dh
  store i16 1, ptr %i.ip, align 2, !noalias !6921
  %i.qb = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store i64 %.sroa.0.0.i.i8.i, ptr %i.qb, align 8, !noalias !6913
  %.sroa.5.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store ptr %.sroa.12.0.i.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i.i, align 8, !noalias !6913
  %.sroa.6.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  store i64 %.sroa.15.0.i.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i.i, align 8, !noalias !6913
  %i.qc = getelementptr inbounds nuw i8, ptr %i.im, i64 272
  store ptr %.sroa.16.0.i.i.i, ptr %i.qc, align 8, !noalias !6921
  %i.qd = getelementptr inbounds nuw i8, ptr %i.im, i64 376
  store ptr %.lcssa134.i.i.i, ptr %i.qd, align 8, !noalias !6921
  store ptr %i.im, ptr %.lcssa134.i.i.i, align 8, !noalias !6957
  %i.qe = getelementptr inbounds nuw i8, ptr %.lcssa134.i.i.i, i64 360
  store i16 1, ptr %i.qe, align 8, !noalias !6957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6892
  br label %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h8bd30e2254572d81E.exit.thread"

bb.es:                                            ; preds = %bb.cj
  %i.qf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qg = atomicrmw sub ptr %i.fh, i64 1 release, align 8, !noalias !6958
  %i.qh = icmp eq i64 %i.qg, 1
  br i1 %i.qh, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb0af500350cceb38E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.i), !noalias !6888
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  br i1 %i.fj, label %.body113, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i102, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6959
  br label %.body113

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h8bd30e2254572d81E.exit.thread": ; preds = %bb.ep, %bb.ck, %.thread.i.i.i, %bb.da, %.thread112.i.i.i, %bb.er
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24 ; 2 uses
  %i.qj = load i64, ptr %i.qi, align 8, !alias.scope !6878, !noalias !6888, !noundef !17
  %i.qk = add i64 %i.qj, 1
  store i64 %i.qk, ptr %i.qi, align 8, !alias.scope !6878, !noalias !6888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6886
  br label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$17h2d613f30944ec956E.exit"

bb.ew:                                            ; preds = %bb.ca
  call void @llvm.trap()
  unreachable

bb.ex:                                            ; preds = %bb.ch, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h282e0635a3347628E.exit.i.i"
  %i.ql = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i110, i64 272
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %.sroa.8.0.i.i.i.i491 ; 2 uses
  %i.qn = load ptr, ptr %i.qm, align 8, !noalias !6960, !nonnull !17, !noundef !17 ; 2 uses
  store ptr %i.fh, ptr %i.qm, align 8, !noalias !6960
  store ptr %i.qn, ptr %i.o, align 8
  %i.qo = atomicrmw sub ptr %i.qn, i64 1 release, align 8, !noalias !6961
  %i.qp = icmp eq i64 %i.qo, 1
  br i1 %i.qp, label %bb.ey, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$17h2d613f30944ec956E.exit"

bb.ey:                                            ; preds = %bb.ex
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hb0af500350cceb38E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.o)
  br label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$17h2d613f30944ec956E.exit"

"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$$GT$17h2d613f30944ec956E.exit": ; preds = %bb.ey, %bb.ex, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h8bd30e2254572d81E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.m

bb.ez:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit", %.body33, %.body31
  %i.qq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

.body35.thread:                                   ; preds = %.body31, %bb.w, %bb.ae, %bb.ad, %.body35.thread343, %.body35
  %.pn27338 = phi { ptr, i32 } [ %.pn.ph, %.body35.thread343 ], [ %i.eu, %.body35 ], [ %i.co, %bb.ad ], [ %i.co, %bb.ae ], [ %i.cf, %bb.w ], [ %eh.lpad-body32, %.body31 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6962)
  %i.qr = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val.i115 = load i64, ptr %i.qr, align 8, !range !30, !alias.scope !6962, !noundef !17 ; 2 uses
  %switch.i116 = icmp sgt i64 %.val.i115, 0
  br i1 %switch.i116, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i118", label %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit.sink.split.i118": ; preds = %.body35.thread
  %i.qs = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.val1.i120 = load ptr, ptr %i.qs, align 8, !alias.scope !6962, !nonnull !17, !noundef !17
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i120, i64 noundef %.val.i115, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !6962
  br label %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit"

bb.fa:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$alloc..sync..Arc$LT$std..path..PathBuf$GT$$GT$17h7f530a8e6aa44a2fE.exit"
  resume { ptr, i32 } %.pn29
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef align 16 dereferenceable_or_null(64) ptr @_ZN5insta3env7resolve17h78cdb00d323002e5E(ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #27 personality ptr @rust_eh_personality {
.lr.ph.i:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6976)
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %bb.c, %.lr.ph.i
  %.tr.i.i.i = phi ptr [ %0, %.lr.ph.i ], [ %i.c, %bb.c ] ; 5 uses
  %i.a = load i8, ptr %.tr.i.i.i, align 16, !range !51, !noalias !6977, !noundef !17
  switch i8 %i.a, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit [
    i8 17, label %bb.c
    i8 21, label %bb.a
    i8 22, label %bb.b
    i8 27, label %bb.d
    i8 28, label %.loopexit40
    i8 29, label %bb.i
  ]

bb.a:                                             ; preds = %tailrecurse.i.i.i
  br label %bb.c

bb.b:                                             ; preds = %tailrecurse.i.i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %tailrecurse.i.i.i
  %.sink.i.i.i = phi i64 [ 40, %bb.b ], [ 24, %bb.a ], [ 8, %tailrecurse.i.i.i ]
  %i.b = getelementptr inbounds nuw i8, ptr %.tr.i.i.i, i64 %.sink.i.i.i
  %i.c = load ptr, ptr %i.b, align 8, !noalias !6977, !nonnull !17, !align !50, !noundef !17
  br label %tailrecurse.i.i.i

bb.d:                                             ; preds = %tailrecurse.i.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.tr.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !6977, !nonnull !17, !noundef !17 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.tr.i.i.i, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noalias !6977, !noundef !17 ; 2 uses
  %.idx5.i.i = shl nuw nsw i64 %i.g, 7
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx5.i.i
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.j = load ptr, ptr %1, align 8, !alias.scope !6976, !noalias !6978, !nonnull !17, !align !31, !noundef !17
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !6976, !noalias !6979 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge.i.i.i, %.lr.ph.i.i.i
  %i.m = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.q, %.backedge.i.i.i ] ; 3 uses
  br label %tailrecurse.i.i.i.i.i.i

tailrecurse.i.i.i.i.i.i:                          ; preds = %bb.h, %bb.e
  %.tr.i.i.i.i.i.i = phi ptr [ %i.m, %bb.e ], [ %i.p, %bb.h ] ; 4 uses
  %i.n = load i8, ptr %.tr.i.i.i.i.i.i, align 16, !range !51, !noalias !6980, !noundef !17 ; 2 uses
  switch i8 %i.n, label %_ZN5insta7content7Content6as_str17h9d6e2dc5d563d0d9E.exit.i.i.i.i [
    i8 17, label %bb.h
    i8 21, label %bb.f
    i8 22, label %bb.g
  ]

bb.f:                                             ; preds = %tailrecurse.i.i.i.i.i.i
  br label %bb.h

bb.g:                                             ; preds = %tailrecurse.i.i.i.i.i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %tailrecurse.i.i.i.i.i.i
  %.sink.i.i.i.i.i.i = phi i64 [ 40, %bb.g ], [ 24, %bb.f ], [ 8, %tailrecurse.i.i.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.i.i.i, i64 %.sink.i.i.i.i.i.i
  %i.p = load ptr, ptr %i.o, align 8, !noalias !6980, !nonnull !17, !align !50, !noundef !17
  br label %tailrecurse.i.i.i.i.i.i

_ZN5insta7content7Content6as_str17h9d6e2dc5d563d0d9E.exit.i.i.i.i: ; preds = %tailrecurse.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 128 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.n, 14
  %i.r = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.i.i.i, i64 24
  %i.s = load i64, ptr %i.r, align 8, !noalias !6980
  %.not6.i.i.i.i = icmp eq i64 %i.s, %i.l
  %or.cond.i.i = select i1 %.not.i.i.i.i, i1 %.not6.i.i.i.i, i1 false
  br i1 %or.cond.i.i, label %.split.i.i.i, label %.backedge.i.i.i

.split.i.i.i:                                     ; preds = %_ZN5insta7content7Content6as_str17h9d6e2dc5d563d0d9E.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !noalias !6980, !nonnull !17
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.u, ptr nonnull %i.j, i64 %i.l), !noalias !6980
  %i.v = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.v, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hd394626ef64e4cdfE.exit.i.i", label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %.split.i.i.i, %_ZN5insta7content7Content6as_str17h9d6e2dc5d563d0d9E.exit.i.i.i.i
  %i.w = icmp eq ptr %i.q, %i.h
  br i1 %i.w, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit, label %bb.e

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hd394626ef64e4cdfE.exit.i.i": ; preds = %.split.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  br label %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc2ebb89ce2623b34E.exit.i"

.loopexit40:                                      ; preds = %tailrecurse.i.i.i
  br label %bb.i

bb.i:                                             ; preds = %tailrecurse.i.i.i, %.loopexit40
  %.sink = phi i64 [ 24, %.loopexit40 ], [ 40, %tailrecurse.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.tr.i.i.i, i64 %.sink ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !6977, !nonnull !17, !noundef !17 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !6977, !noundef !17 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.ac, 80
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i.i
  %i.ae = icmp eq i64 %i.ac, 0
  br i1 %i.ae, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit, label %.lr.ph.i8.i.i

.lr.ph.i8.i.i:                                    ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !6976, !noalias !6981, !noundef !17 ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !alias.scope !6976, !noalias !6979, !nonnull !17, !align !31
  br label %bb.j

bb.j:                                             ; preds = %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i", %.lr.ph.i8.i.i
  %i.ai = phi ptr [ %i.aa, %.lr.ph.i8.i.i ], [ %i.aj, %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i" ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 80 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noalias !6982, !noundef !17
  %.not.i.i9.i.i = icmp eq i64 %i.al, %i.ag
  br i1 %.not.i.i9.i.i, label %.split.i11.i.i, label %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i"

.split.i11.i.i:                                   ; preds = %bb.j
  %i.am = load ptr, ptr %i.ai, align 16, !noalias !6982, !nonnull !17, !align !31, !noundef !17
  %bcmp.i.i12.i.i = tail call i32 @bcmp(ptr nonnull %i.am, ptr nonnull %i.ah, i64 %i.ag), !noalias !6982
  %i.an = icmp eq i32 %bcmp.i.i12.i.i, 0
  br i1 %i.an, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h9ac41a997e1b1fdbE.exit.i.i", label %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i"

"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i": ; preds = %.split.i11.i.i, %bb.j
  %i.ao = icmp eq ptr %i.aj, %i.ad
  br i1 %i.ao, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit, label %bb.j

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h9ac41a997e1b1fdbE.exit.i.i": ; preds = %.split.i11.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  br label %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc2ebb89ce2623b34E.exit.i"

"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc2ebb89ce2623b34E.exit.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h9ac41a997e1b1fdbE.exit.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hd394626ef64e4cdfE.exit.i.i"
  %.sroa.0.1.i.i = phi ptr [ %i.ap, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h9ac41a997e1b1fdbE.exit.i.i" ], [ %i.x, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17hd394626ef64e4cdfE.exit.i.i" ]
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6983)
  br label %tailrecurse.i.i.i.1

tailrecurse.i.i.i.1:                              ; preds = %bb.t, %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc2ebb89ce2623b34E.exit.i"
  %.tr.i.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$17hc2ebb89ce2623b34E.exit.i" ], [ %i.cf, %bb.t ] ; 5 uses
  %i.aq = load i8, ptr %.tr.i.i.i.1, align 16, !range !51, !noalias !6984, !noundef !17
  switch i8 %i.aq, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit [
    i8 17, label %bb.t
    i8 21, label %bb.s
    i8 22, label %bb.r
    i8 27, label %bb.m
    i8 28, label %bb.k
    i8 29, label %.loopexit
  ]

.loopexit:                                        ; preds = %tailrecurse.i.i.i.1
  br label %bb.k

bb.k:                                             ; preds = %tailrecurse.i.i.i.1, %.loopexit
  %.sink21 = phi i64 [ 40, %.loopexit ], [ 24, %tailrecurse.i.i.i.1 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.tr.i.i.i.1, i64 %.sink21 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !noalias !6984, !nonnull !17, !noundef !17 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.av = load i64, ptr %i.au, align 8, !noalias !6984, !noundef !17 ; 2 uses
  %.idx.i.i.1 = mul nuw nsw i64 %i.av, 80
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %.idx.i.i.1
  %i.ax = icmp eq i64 %i.av, 0
  br i1 %i.ax, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h1b057fc9b08297b5E.exit, label %.lr.ph.i8.i.i.1

.lr.ph.i8.i.i.1:                                  ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !6983, !noalias !6981, !noundef !17 ; 2 uses
  %i.ba = load ptr, ptr %.ptr.1, align 8, !alias.scope !6983, !noalias !6979, !nonnull !17, !align !31
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i.1", %.lr.ph.i8.i.i.1
  %i.bb = phi ptr [ %i.at, %.lr.ph.i8.i.i.1 ], [ %i.bc, %"_ZN5insta3env7resolve28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h58ce654531b48963E.exit.backedge.i.i.i.1" ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !noalias !6985, !noundef !17
  %.not.i.i9.i.i.1 = icmp eq i64 %i.be, %i.az
end_hunk_1
