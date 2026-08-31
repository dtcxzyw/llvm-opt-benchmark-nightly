Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.10?download=true
inline.NumInlined: 5637
inline.NumDeleted: 1815
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@"_ZN4anki4sync11http_client10io_monitor9IoMonitor25zstd_request_with_timeout28_$u7b$$u7b$closure$u7d$$u7d$17h26f48038f826eb16E":bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cl, align 8, !alias.scope !3859, !noalias !3862
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.cm, align 8, !alias.scope !3859, !noalias !3862
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @449) #44
          to label %bb.am unwind label %bb.ak

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.ao, %.body27
  store i8 0, ptr %i.at, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.ao:                                            ; preds = %.body27
  invoke fastcc void @"_ZN4core3ptr152drop_in_place$LT$anki..sync..http_client..io_monitor..IoMonitor..zstd_request_with_timeout..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h87139786645d19abE"(ptr noundef nonnull align 8 %i.f) #42
          to label %bb.an unwind label %bb.o

bb.ap:                                            ; preds = %bb.aq, %bb.p
  store i8 0, ptr %i.bc, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 1308 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 4, !range !65, !noundef !4
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.as, label %bb.ar

bb.aq:                                            ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 320
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cq) #42
          to label %bb.ap unwind label %bb.o

bb.ar:                                            ; preds = %bb.as, %bb.ap
  store i8 0, ptr %i.cn, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i8 2, ptr %i.k, align 8
  resume { ptr, i32 } %.pn22.pn

bb.as:                                            ; preds = %bb.ap
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$reqwest..async_impl..request..RequestBuilder$GT$17hc8b5ef564a76b23cE"(ptr noalias noundef align 8 dereferenceable(272) %i.j) #42
          to label %bb.ar unwind label %bb.o
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4anki4sync11http_client14HttpSyncClient3new17h4e89d6f86d347764E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(120) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [88 x i8], align 8                ; 6 uses
  %.sroa.517 = alloca [80 x i8], align 8          ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.i = load i32, ptr %i.h, align 8, !range !310, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.k = load i32, ptr %i.j, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3864
  %i.l = invoke noundef nonnull ptr @_ZN4rand4rngs6thread3rng17h40c84c12799071a0E()
          to label %.noexc10 unwind label %bb.h   ; 5 uses

.noexc10:                                         ; preds = %bb.a
  store ptr %i.l, ptr %i.a, align 8, !noalias !3864
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 336 ; 2 uses
  %i.o = load i64, ptr %i.n, align 16, !alias.scope !3867, !noalias !3870, !noundef !4 ; 2 uses
  %i.p = icmp ugt i64 %i.o, 63
  br i1 %i.p, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.noexc10
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 272
  invoke void @"_ZN103_$LT$rand..rngs..reseeding..ReseedingCore$LT$R$C$Rsdr$GT$$u20$as$u20$rand_core..block..BlockRngCore$GT$8generate17hf773f5c6a77b09a5E"(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.q, ptr noalias noundef nonnull align 16 dereferenceable(336) %i.m)
          to label %._crit_edge.i.i unwind label %bb.c, !noalias !3864

._crit_edge.i.i:                                  ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %i.a, align 8, !alias.scope !3873, !noalias !3864
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3880)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3886)
  %i.s = load ptr, ptr %i.a, align 8, !alias.scope !3889, !noalias !3864, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noalias !3890, !noundef !4
  %i.u = add i64 %i.t, -1                         ; 2 uses
  store i64 %i.u, ptr %i.s, align 8, !noalias !3890
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6600156bdc3d094bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.body unwind label %bb.g, !noalias !3864

bb.e:                                             ; preds = %._crit_edge.i.i, %.noexc10
  %i.w = phi ptr [ %i.l, %.noexc10 ], [ %.pre.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.x = phi i64 [ %i.o, %.noexc10 ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !alias.scope !3867, !noalias !3870, !noundef !4
  %i.aa = add nuw nsw i64 %i.x, 1
  store i64 %i.aa, ptr %i.n, align 16, !alias.scope !3867, !noalias !3870
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3893)
  %i.ab = load i64, ptr %i.w, align 8, !noalias !3894, !noundef !4
  %i.ac = add i64 %i.ab, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.w, align 8, !noalias !3894
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %_ZN4rand6random17h1f58885f2e1633ccE.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6600156bdc3d094bE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4rand6random17h1f58885f2e1633ccE.exit.i unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43, !noalias !3864
  unreachable

_ZN4rand6random17h1f58885f2e1633ccE.exit.i:       ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3864
  %i.af = zext i32 %i.z to i64
  invoke void @_ZN4anki5notes9to_base_n17hd476b2a2a1d04d0fE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, i64 noundef %i.af, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @456, i64 noundef 62)
          to label %_ZN4anki4sync11http_client17simple_session_id17h24a1fa33065be32fE.exit unwind label %bb.h

.body:                                            ; preds = %bb.h, %bb.d, %bb.c, %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17hdb12900588f2300dE.exit"
  %.pn = phi { ptr, i32 } [ %i.ai, %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17hdb12900588f2300dE.exit" ], [ %i.ag, %bb.h ], [ %i.r, %bb.d ], [ %i.r, %bb.c ]
  %.sroa.06.0 = phi i1 [ false, %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17hdb12900588f2300dE.exit" ], [ true, %bb.h ], [ true, %bb.d ], [ true, %bb.c ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #42
          to label %bb.r unwind label %bb.q

bb.h:                                             ; preds = %_ZN4rand6random17h1f58885f2e1633ccE.exit.i, %bb.f, %bb.a
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN4anki4sync11http_client17simple_session_id17h24a1fa33065be32fE.exit: ; preds = %_ZN4rand6random17h1f58885f2e1633ccE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.517)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.03.0.copyload = load i64, ptr %i.ah, align 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.03.0.copyload, -9223372036854775808
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4anki4sync11http_client17simple_session_id17h24a1fa33065be32fE.exit
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.517, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, i64 80, i1 false)
  br label %bb.p

bb.j:                                             ; preds = %_ZN4anki4sync11http_client17simple_session_id17h24a1fa33065be32fE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN66_$LT$url..Url$u20$as$u20$core..convert..TryFrom$LT$$RF$str$GT$$GT$8try_from17h07730b8ace7a501aE"(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @453, i64 noundef 25)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !3895
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.l, label %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17hdb12900588f2300dE.exit"

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h182276ab6784abedE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17hdb12900588f2300dE.exit" unwind label %bb.q

bb.m:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !3902)
  call void @llvm.experimental.noalias.scope.decl(metadata !3905)
  %i.al = load i64, ptr %i.c, align 8, !range !3, !alias.scope !3905, !noalias !3907, !noundef !4 ; 2 uses
  %i.am = icmp eq i64 %i.al, -9223372036854775808
  br i1 %i.am, label %bb.n, label %bb.o, !prof !28

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3909
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ao = load i8, ptr %i.an, align 8, !range !102, !alias.scope !3905, !noalias !3907, !noundef !4
  store i8 %i.ao, ptr %i.b, align 1, !noalias !3909
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @867, i64 noundef 43, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @870, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @454) #44
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %.sroa.517.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.517, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.517.0..sroa_idx18, i64 80, i1 false), !alias.scope !3910, !noalias !3911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.i
  %.sroa.0.019 = phi i64 [ %i.al, %bb.o ], [ %.sroa.03.0.copyload, %bb.i ]
  %i.ap = trunc nuw i32 %i.i to i1
  %3 = zext i32 %i.k to i64
  %.sroa.0.0 = select i1 %i.ap, i64 %3, i64 30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %2, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.0.019, ptr %i.as, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.517.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.517, i64 80, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.0.0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 0, ptr %i.au, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.517)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.q:                                             ; preds = %bb.t, %bb.l, %.noexc14, %"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17hdb12900588f2300dE.exit", %.body
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

"_ZN4core3ptr56drop_in_place$LT$reqwest..async_impl..client..Client$GT$17hdb12900588f2300dE.exit": ; preds = %bb.k, %bb.l
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #42
          to label %.body unwind label %bb.q

bb.r:                                             ; preds = %.body
  br i1 %.sroa.06.0, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !3912)
  call void @llvm.experimental.noalias.scope.decl(metadata !3915)
  call void @llvm.experimental.noalias.scope.decl(metadata !3918)
  %i.aw = load ptr, ptr %i.g, align 8, !alias.scope !3921, !nonnull !4, !noundef !4
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !3921
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.t, label %.noexc14

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h182276ab6784abedE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc14 unwind label %bb.q

.critedge:                                        ; preds = %bb.r, %.noexc14
  resume { ptr, i32 } %.pn

.noexc14:                                         ; preds = %bb.t, %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$core..option..Option$LT$url..Url$GT$$GT$17h41d538e7689c3439E"(ptr noalias noundef align 8 dereferenceable(88) %i.az) #42
          to label %.critedge unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @"_ZN4anki4sync11http_client8protocol116_$LT$impl$u20$anki..sync..collection..protocol..SyncProtocol$u20$for$u20$anki..sync..http_client..HttpSyncClient$GT$11apply_chunk17h92039b2463edf2e9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(144) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2032 x i8], align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %0, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 144, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2024
  store i8 0, ptr %i.c, align 8
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !3922
  %i.d = tail call noundef align 8 dereferenceable_or_null(2032) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef range(i64 0, 4225) 2032, i64 noundef range(i64 1, 9) 8) #45, !noalias !3922 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h415deab0d978e04dE.exit", !prof !1759

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 2032) #44
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr213drop_in_place$LT$anki..sync..http_client..protocol..$LT$impl$u20$anki..sync..collection..protocol..SyncProtocol$u20$for$u20$anki..sync..http_client..HttpSyncClient$GT$..apply_chunk..$u7b$$u7b$closure$u7d$$u7d$$GT$17h0a37ef7f616e5225E"(ptr noundef nonnull align 8 dereferenceable(2032) %i.a) #42
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #43
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h415deab0d978e04dE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2032) %i.d, ptr noundef nonnull align 8 dereferenceable(2032) %i.a, i64 2032, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr @457, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4anki4sync11http_client8protocol116_$LT$impl$u20$anki..sync..collection..protocol..SyncProtocol$u20$for$u20$anki..sync..http_client..HttpSyncClient$GT$11apply_chunk28_$u7b$$u7b$closure$u7d$$u7d$17hbc0f77a7fef1d69cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.3.i.i = alloca [24 x i8], align 8        ; 6 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 6 uses
  %.sroa.4.i.i = alloca [16 x i8], align 8        ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.0.i.i = alloca [296 x i8], align 8       ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [272 x i8], align 8               ; 7 uses
  %i.f = alloca [272 x i8], align 8               ; 6 uses
  %i.g = alloca [88 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [144 x i8], align 8               ; 6 uses
  %.sroa.814 = alloca [24 x i8], align 8          ; 6 uses
  %.sroa.915 = alloca [16 x i8], align 8          ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2024 ; 3 uses
  %i.n = load i8, ptr %i.m, align 8, !range !79, !noundef !4
  switch i8 %i.n, label %default.unreachable25 [
    i8 0, label %.thread
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable25:                            ; preds = %bb.m, %bb.e, %bb.a
  unreachable

.thread:                                          ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2025
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !align !17, !noundef !4
  store i8 0, ptr %i.o, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.r, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 144, i1 false)
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 296
  store ptr %i.q, ptr %.sroa.711.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2016
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2017
  store i8 6, ptr %.sroa.10.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.814)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.915)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2016
  br label %bb.f

bb.b:                                             ; preds = %.body
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2025
  %i.v = load i8, ptr %i.u, align 1, !range !65, !noundef !4
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.cb, label %bb.ca

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const28panic_const_async_fn_resumed17h3b6db46748f97cb2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @459) #44
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking11panic_const34panic_const_async_fn_resumed_panic17h9ee303addc83bb21E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @459) #44
  unreachable

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 2016
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !79, !noalias !3925
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.814)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.915)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2016 ; 4 uses
  switch i8 %.pre, label %default.unreachable25 [
    i8 0, label %bb.f
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.m
  ]

bb.f:                                             ; preds = %.thread, %bb.e
  %i.z = phi ptr [ %i.t, %.thread ], [ %i.y, %bb.e ] ; 2 uses
  %i.aa = phi ptr [ %i.s, %.thread ], [ %i.x, %bb.e ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !3925, !nonnull !4, !align !17, !noundef !4 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2017
  %i.ae = load i8, ptr %i.ad, align 1, !range !3929, !noalias !3925, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3925
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.l, ptr noundef nonnull align 8 dereferenceable(144) %i.aa, i64 144, i1 false), !noalias !3925
  %i.af = invoke noundef nonnull ptr @_ZN4anki4sync11http_client10io_monitor9IoMonitor3new17hc7ea36f7de68daf5E()
          to label %.thread.i unwind label %bb.h, !noalias !3930 ; 2 uses

.thread.i:                                        ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ag, ptr noundef nonnull align 8 dereferenceable(144) %i.l, i64 144, i1 false), !noalias !3925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3925
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 448
  store ptr %i.ac, ptr %.sroa.711.0..sroa_idx.i, align 8, !noalias !3925
end_hunk_0
