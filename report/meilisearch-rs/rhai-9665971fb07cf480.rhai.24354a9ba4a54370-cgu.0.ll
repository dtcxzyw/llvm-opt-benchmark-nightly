Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 151
loop-unroll.NumUnrolled: 260
begin_hunk_0_@"_ZN4rhai4func4call38_$LT$impl$u20$rhai..engine..Engine$GT$16make_method_call17h50b909f062f62613E":bb.a

.noexc854:                                        ; preds = %bb.kp
  unreachable

.body862.thread:                                  ; preds = %bb.kp
  %i.ady = landingpad { ptr, i32 }
          cleanup
  br label %bb.kq

.body862:                                         ; preds = %bb.kv, %bb.kw
  br i1 %.not.i848, label %common.resume, label %bb.kq

bb.kq:                                            ; preds = %.body862.thread, %.body862
  %eh.lpad-body8631403 = phi { ptr, i32 } [ %i.ady, %.body862.thread ], [ %i.aek, %.body862 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.adv) ]
  %i.adz = atomicrmw sub ptr %i.adv, i32 1 release, align 4
  %i.aea = add i32 %i.adz, -1                     ; 2 uses
  %i.aeb = and i32 %i.aea, -1073741825
  %or.cond.not.i.i.i.i856 = icmp eq i32 %i.aeb, -2147483648
  br i1 %or.cond.not.i.i.i.i856, label %bb.kr, label %common.resume, !prof !68

bb.kr:                                            ; preds = %bb.kq
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.adv, i32 noundef %i.aea)
          to label %common.resume unwind label %bb.cw

"_ZN90_$LT$rhai..types..dynamic..DynamicReadLock$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h7aae5aa33c8df96eE.exit855": ; preds = %bb.ko, %bb.kn
  %.sroa.0.0.i853 = phi ptr [ %i.adv, %bb.ko ], [ %.val4.i850, %bb.kn ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31205)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !31206
  %i.aec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i853, i64 24
  %i.aed = load ptr, ptr %i.aec, align 8, !alias.scope !31205, !noalias !31207, !nonnull !55, !noundef !55 ; 4 uses
  %i.aee = atomicrmw add ptr %i.aed, i64 1 monotonic, align 8, !noalias !31206
  %i.aef = icmp slt i64 %i.aee, 0
  br i1 %i.aef, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %"_ZN90_$LT$rhai..types..dynamic..DynamicReadLock$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h7aae5aa33c8df96eE.exit855"
  store ptr %i.aed, ptr %i.h, align 8, !noalias !31206
  %i.aeg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i853, i64 32 ; 2 uses
  %i.aeh = load ptr, ptr %i.aeg, align 8, !alias.scope !31205, !noalias !31207, !nonnull !55, !noundef !55
  %i.aei = icmp eq ptr %i.aeh, @_ZN8thin_vec12EMPTY_HEADER17h705e9b5c893b15cbE
  br i1 %i.aei, label %bb.kx, label %bb.ku, !prof !74

bb.kt:                                            ; preds = %"_ZN90_$LT$rhai..types..dynamic..DynamicReadLock$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h7aae5aa33c8df96eE.exit855"
  tail call void @llvm.trap()
  unreachable

bb.ku:                                            ; preds = %bb.ks
  %i.aej = invoke i64 @"_ZN65_$LT$thin_vec..ThinVec$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone19clone_non_singleton17hfbfa8918faed19ffE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aeg)
          to label %bb.kx unwind label %bb.kw, !noalias !31207, !inline_history !30760

bb.kv:                                            ; preds = %bb.kw
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.h)
          to label %.body862 unwind label %bb.lg, !noalias !31206, !inline_history !30760

bb.kw:                                            ; preds = %bb.ku
  %i.aek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ael = atomicrmw sub ptr %i.aed, i64 1 release, align 8, !noalias !31208
  %i.aem = icmp eq i64 %i.ael, 1
  br i1 %i.aem, label %bb.kv, label %.body862

bb.kx:                                            ; preds = %bb.ku, %bb.ks
  %storemerge.i = phi i64 [ %i.aej, %bb.ku ], [ ptrtoint (ptr @_ZN8thin_vec12EMPTY_HEADER17h705e9b5c893b15cbE to i64), %bb.ks ] ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i853, i64 40
  %i.aeo = load ptr, ptr %i.aen, align 8, !alias.scope !31205, !noalias !31207, !noundef !55 ; 3 uses
  %.not.i859 = icmp eq ptr %i.aeo, null
  br i1 %.not.i859, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.aep = atomicrmw add ptr %i.aeo, i64 1 monotonic, align 8, !noalias !31206
  %i.aeq = icmp slt i64 %i.aep, 0
  br i1 %i.aeq, label %bb.lf, label %bb.kz

bb.kz:                                            ; preds = %bb.ky, %bb.kx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31210)
  %i.aer = load i64, ptr %.sroa.0.0.i853, align 8, !range !78, !alias.scope !31211, !noalias !31212, !noundef !55 ; 2 uses
  switch i64 %i.aer, label %default.unreachable [
    i64 0, label %bb.lh
    i64 1, label %bb.la
    i64 2, label %bb.lb
  ]

bb.la:                                            ; preds = %bb.kz
  %i.aes = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i853, i64 8
  %i.aet = load ptr, ptr %i.aes, align 8, !alias.scope !31211, !noalias !31212, !nonnull !55, !noundef !55 ; 2 uses
  %i.aeu = atomicrmw add ptr %i.aet, i64 1 monotonic, align 8, !noalias !31213
  %i.aev = icmp slt i64 %i.aeu, 0
  br i1 %i.aev, label %bb.lc, label %.sink.split.i.i

bb.lb:                                            ; preds = %bb.kz
  %i.aew = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i853, i64 8
  %i.aex = load ptr, ptr %i.aew, align 8, !alias.scope !31211, !noalias !31212, !nonnull !55, !noundef !55 ; 2 uses
  %i.aey = atomicrmw add ptr %i.aex, i64 1 monotonic, align 8, !noalias !31213
  %i.aez = icmp slt i64 %i.aey, 0
  br i1 %i.aez, label %bb.le, label %bb.ld

.sink.split.i.i:                                  ; preds = %bb.ld, %bb.la
  %.sink5.i.sroa.phi.i = phi ptr [ %.sroa.6.i, %bb.ld ], [ %.sroa.4.i, %bb.la ]
  %.sink3.i.i = phi ptr [ %i.afb, %bb.ld ], [ %i.aet, %bb.la ]
  store ptr %.sink3.i.i, ptr %.sink5.i.sroa.phi.i, align 8, !alias.scope !31209, !noalias !31214
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.pre.i = load ptr, ptr %.sroa.4.i, align 8, !noalias !31206
  %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.pre.i = load ptr, ptr %.sroa.6.i, align 8, !noalias !31206
  br label %bb.lh

bb.lc:                                            ; preds = %bb.la
  tail call void @llvm.trap()
  unreachable

bb.ld:                                            ; preds = %bb.lb
  %i.afa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i853, i64 16
  %i.afb = load ptr, ptr %i.afa, align 8, !alias.scope !31211, !noalias !31212, !nonnull !55, !align !56, !noundef !55
  store ptr %i.aex, ptr %.sroa.4.i, align 8, !alias.scope !31209, !noalias !31214
  br label %.sink.split.i.i

bb.le:                                            ; preds = %bb.lb
  tail call void @llvm.trap()
  unreachable

bb.lf:                                            ; preds = %bb.ky
  tail call void @llvm.trap()
  unreachable

bb.lg:                                            ; preds = %bb.kv
  %i.afc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !31206, !inline_history !30760
  unreachable

bb.lh:                                            ; preds = %.sink.split.i.i, %bb.kz
  %.sroa.6.0..sroa.6.0..sroa.6.0.copyload.i = phi ptr [ %.sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.i.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.pre.i, %.sink.split.i.i ], [ undef, %bb.kz ]
  %.sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = phi ptr [ %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.pre.i, %.sink.split.i.i ], [ undef, %bb.kz ]
  %i.afd = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store ptr %i.aed, ptr %i.afd, align 8
  %i.afe = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 5 uses
  store i64 %storemerge.i, ptr %i.afe, align 8
  %i.aff = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr %i.aeo, ptr %i.aff, align 8
  store i64 %i.aer, ptr %i.ar, align 8
  %.sroa.4.0..sroa_idx.i860 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %.sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i860, align 8
  %.sroa.6.0..sroa_idx.i861 = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %.sroa.6.0..sroa.6.0..sroa.6.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i861, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !31206
  %i.afg = inttoptr i64 %storemerge.i to ptr
  br i1 %.not.i848, label %"_ZN4core3ptr92drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$rhai..types..fn_ptr..FnPtr$GT$$GT$17h45f8bdf82bb85642E.exit866", label %bb.li

bb.li:                                            ; preds = %bb.lh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.adv) ]
  %i.afh = atomicrmw sub ptr %i.adv, i32 1 release, align 4
  %i.afi = add i32 %i.afh, -1                     ; 2 uses
  %i.afj = and i32 %i.afi, -1073741825
  %or.cond.not.i.i.i.i864 = icmp eq i32 %i.afj, -2147483648
  br i1 %or.cond.not.i.i.i.i864, label %bb.lj, label %"_ZN4core3ptr92drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$rhai..types..fn_ptr..FnPtr$GT$$GT$17h45f8bdf82bb85642E.exit866", !prof !68

bb.lj:                                            ; preds = %bb.li
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.adv, i32 noundef %i.afi)
          to label %"_ZN4core3ptr92drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$rhai..types..fn_ptr..FnPtr$GT$$GT$17h45f8bdf82bb85642E.exit866" unwind label %bb.lk

bb.lk:                                            ; preds = %.lr.ph.i, %bb.lj
  %i.afk = landingpad { ptr, i32 }
          cleanup
  br label %bb.lv

"_ZN4core3ptr92drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$rhai..types..fn_ptr..FnPtr$GT$$GT$17h45f8bdf82bb85642E.exit866": ; preds = %bb.li, %bb.lh, %bb.lj
  %.idx = shl nuw nsw i64 %9, 4
  %i.afl = getelementptr inbounds nuw i8, ptr %8, i64 %.idx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.715.i)
  %.not.i867 = icmp eq i64 %9, 0
  br i1 %.not.i867, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.thread.i", label %.lr.ph.i

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.thread.i": ; preds = %bb.lm, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.i", %"_ZN4core3ptr92drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$rhai..types..fn_ptr..FnPtr$GT$$GT$17h45f8bdf82bb85642E.exit866"
  %i.afm = phi ptr [ %i.afg, %"_ZN4core3ptr92drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$rhai..types..fn_ptr..FnPtr$GT$$GT$17h45f8bdf82bb85642E.exit866" ], [ %.val8.i, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.i" ], [ %.val8.i, %bb.lm ]
  %.sroa.0.0.i868 = phi ptr [ %8, %"_ZN4core3ptr92drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$rhai..types..fn_ptr..FnPtr$GT$$GT$17h45f8bdf82bb85642E.exit866" ], [ %i.afr, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.i" ], [ %i.afr, %bb.lm ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.721.i)
  %i.afn = icmp eq ptr %.sroa.0.0.i868, %i.afl
  br i1 %i.afn, label %.loopexit1536, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit9.lr.ph.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit9.lr.ph.i": ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.thread.i"
  %.sroa.721.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  br label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit9.i"

.lr.ph.i:                                         ; preds = %"_ZN4core3ptr92drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$rhai..types..fn_ptr..FnPtr$GT$$GT$17h45f8bdf82bb85642E.exit866"
  invoke fastcc void @"_ZN8thin_vec16ThinVec$LT$T$GT$7reserve17h2dc772c777ede91eE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.afe, i64 noundef %9)
          to label %.noexc871 unwind label %bb.lk

.noexc871:                                        ; preds = %.lr.ph.i
  %.val8.i = load ptr, ptr %i.afe, align 8, !nonnull !55 ; 5 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %.val8.i, i64 16
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lm, %.noexc871
  %.sroa.01.029.i = phi i64 [ %9, %.noexc871 ], [ %i.afp, %bb.lm ]
  %.sroa.0.128.i = phi ptr [ %8, %.noexc871 ], [ %i.afr, %bb.lm ] ; 5 uses
  %i.afp = add i64 %.sroa.01.029.i, -1            ; 2 uses
  %i.afq = icmp eq ptr %.sroa.0.128.i, %i.afl
  br i1 %i.afq, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.thread.i.thread", label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.i"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.thread.i.thread": ; preds = %bb.ll
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.721.i)
  br label %.loopexit1536

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.i": ; preds = %bb.ll
  %i.afr = getelementptr inbounds nuw i8, ptr %.sroa.0.128.i, i64 16 ; 3 uses
  %.sroa.013.0.copyload14.i = load i8, ptr %.sroa.0.128.i, align 8, !noalias !31215 ; 2 uses
  %.sroa.715.0..sroa.0.0.10.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.128.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.715.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.715.0..sroa.0.0.10.sroa_idx.i, i64 15, i1 false), !noalias !31216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.128.i, i8 0, i64 16, i1 false), !alias.scope !31217, !noalias !31218
  %.not4.i = icmp eq i8 %.sroa.013.0.copyload14.i, 12
  br i1 %.not4.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.thread.i", label %bb.lm

bb.lm:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.i"
  %i.afs = load i64, ptr %.val8.i, align 8, !noalias !31219, !noundef !55 ; 2 uses
  %i.aft = getelementptr inbounds nuw [16 x i8], ptr %i.afo, i64 %i.afs ; 2 uses
  store i8 %.sroa.013.0.copyload14.i, ptr %i.aft, align 8, !noalias !31216
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aft, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.715.i, i64 15, i1 false), !noalias !31216
  %i.afu = add i64 %i.afs, 1
  store i64 %i.afu, ptr %.val8.i, align 8, !noalias !31219
  %i.afv = icmp eq i64 %i.afp, 0
  br i1 %i.afv, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.thread.i", label %bb.ll

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit9.i": ; preds = %"_ZN8thin_vec16ThinVec$LT$T$GT$4push17hc1b59168a569b572E.exit.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit9.lr.ph.i"
  %i.afw = phi ptr [ %i.afm, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit9.lr.ph.i" ], [ %i.age, %"_ZN8thin_vec16ThinVec$LT$T$GT$4push17hc1b59168a569b572E.exit.i" ] ; 3 uses
  %.sroa.017.033.i = phi ptr [ %.sroa.0.0.i868, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit9.lr.ph.i" ], [ %i.afx, %"_ZN8thin_vec16ThinVec$LT$T$GT$4push17hc1b59168a569b572E.exit.i" ] ; 4 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 16 ; 2 uses
  %.sroa.019.0.copyload20.i = load i8, ptr %.sroa.017.033.i, align 8, !noalias !31220 ; 2 uses
  %.sroa.721.0..sroa.017.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.017.033.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.721.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.721.0..sroa.017.0..sroa_idx.i, i64 15, i1 false), !noalias !31220
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.017.033.i, i8 0, i64 16, i1 false), !alias.scope !31221, !noalias !31222
  %.not5.i = icmp eq i8 %.sroa.019.0.copyload20.i, 12
  br i1 %.not5.i, label %.loopexit1536, label %bb.ln

bb.ln:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit9.i"
  store i8 %.sroa.019.0.copyload20.i, ptr %i.g, align 8, !noalias !31216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.721.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.721.i, i64 15, i1 false), !noalias !31216
  %i.afy = load i64, ptr %i.afw, align 8, !noalias !31223, !noundef !55 ; 2 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afw, i64 8
  %i.aga = load i64, ptr %i.afz, align 8, !noalias !31223, !noundef !55
  %i.agb = icmp eq i64 %i.afy, %i.aga
  br i1 %i.agb, label %bb.lo, label %"_ZN8thin_vec16ThinVec$LT$T$GT$4push17hc1b59168a569b572E.exit.i"

bb.lo:                                            ; preds = %bb.ln
  invoke fastcc void @"_ZN8thin_vec16ThinVec$LT$T$GT$7reserve17h2dc772c777ede91eE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.afe, i64 noundef 1)
          to label %._crit_edge.i.i unwind label %bb.lp

._crit_edge.i.i:                                  ; preds = %bb.lo
  %.val.pre.i.i = load ptr, ptr %i.afe, align 8   ; 2 uses
  %.pre.i.i870 = load i64, ptr %.val.pre.i.i, align 8, !noalias !31224
  br label %"_ZN8thin_vec16ThinVec$LT$T$GT$4push17hc1b59168a569b572E.exit.i"

bb.lp:                                            ; preds = %bb.lo
  %i.agc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.g)
          to label %bb.lv unwind label %bb.lq, !noalias !31225, !inline_history !73

bb.lq:                                            ; preds = %bb.lp
  %i.agd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !31223
  unreachable

"_ZN8thin_vec16ThinVec$LT$T$GT$4push17hc1b59168a569b572E.exit.i": ; preds = %._crit_edge.i.i, %bb.ln
  %i.age = phi ptr [ %.val.pre.i.i, %._crit_edge.i.i ], [ %i.afw, %bb.ln ] ; 3 uses
  %i.agf = phi i64 [ %.pre.i.i870, %._crit_edge.i.i ], [ %i.afy, %bb.ln ] ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.age, i64 16
  %i.agh = getelementptr inbounds nuw [16 x i8], ptr %i.agg, i64 %i.agf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agh, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !31225
  %i.agi = add i64 %i.agf, 1
  store i64 %i.agi, ptr %i.age, align 8, !noalias !31224
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.721.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.721.i)
  %i.agj = icmp eq ptr %i.afx, %i.afl
  br i1 %i.agj, label %.loopexit1536, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit9.i"

.loopexit1536:                                    ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit9.i", %"_ZN8thin_vec16ThinVec$LT$T$GT$4push17hc1b59168a569b572E.exit.i", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.thread.i.thread", %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d6f7f10207fc700E.exit.thread.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.721.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.715.i)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !31226
  %i.agk = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !31226 ; 3 uses
  %i.agl = icmp eq ptr %i.agk, null
  br i1 %i.agl, label %bb.lr, label %bb.lu, !prof !58

bb.lr:                                            ; preds = %.loopexit1536
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #70
          to label %.noexc874 unwind label %bb.ls

.noexc874:                                        ; preds = %bb.lr
  unreachable

bb.ls:                                            ; preds = %bb.lr
  %i.agm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$rhai..types..fn_ptr..FnPtr$GT$17hb4a2b9fd1bf00e83E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ar) #72
          to label %common.resume unwind label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.agn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.lu:                                            ; preds = %.loopexit1536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.agk, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 48, i1 false)
  store i8 9, ptr %i.bs, align 8
  %.sroa.092.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store i8 0, ptr %.sroa.092.sroa.4.0..sroa_idx, align 1
  %.sroa.092.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store i32 0, ptr %.sroa.092.sroa.6.0..sroa_idx, align 4
  %.sroa.092.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.agk, ptr %.sroa.092.sroa.7.0..sroa_idx, align 8
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i8 0, ptr %.sroa.493.0..sroa_idx, align 8
  br label %"_ZN4core3ptr92drop_in_place$LT$rhai..types..dynamic..DynamicReadLock$LT$rhai..types..fn_ptr..FnPtr$GT$$GT$17h45f8bdf82bb85642E.exit697"

bb.lv:                                            ; preds = %bb.lk, %bb.lp
  %eh.lpad-body426.ph = phi { ptr, i32 } [ %i.afk, %bb.lk ], [ %i.agc, %bb.lp ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$rhai..types..fn_ptr..FnPtr$GT$17hb4a2b9fd1bf00e83E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ar) #72
          to label %common.resume unwind label %bb.cw

bb.lw:                                            ; preds = %bb.a
  %i.ago = load i64, ptr %4, align 1
  %i.agp = xor i64 %i.ago, 7310012246415864681
  %i.agq = getelementptr i8, ptr %4, i64 8
  %i.agr = load i8, ptr %i.agq, align 1
  %i.ags = zext i8 %i.agr to i64
  %i.agt = xor i64 %i.ags, 100
  %i.agu = or i64 %i.agp, %i.agt
  %i.agv = icmp ne i64 %i.agu, 0
  %i.agw = zext i1 %i.agv to i32
  %i.agx = icmp eq i32 %i.agw, 0
  %i.agy = icmp eq i64 %9, 0
  %or.cond6 = and i1 %i.agy, %i.agx
  br i1 %or.cond6, label %bb.ly, label %bb.lx

bb.lx:                                            ; preds = %bb.jr, %bb.b, %bb.a, %bb.lw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i64 0, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.agz = load i8, ptr %7, align 8, !range !114, !noundef !55
  switch i8 %i.agz, label %default.unreachable [
    i8 0, label %bb.md
    i8 1, label %bb.me
    i8 2, label %bb.mf
    i8 3, label %bb.mg
    i8 4, label %bb.mh
    i8 5, label %bb.mi
    i8 6, label %bb.mj
    i8 7, label %bb.mk
  ]

bb.ly:                                            ; preds = %bb.lw
  %i.aha = load i8, ptr %7, align 8, !range !114, !noundef !55
  switch i8 %i.aha, label %default.unreachable [
    i8 0, label %bb.lz
    i8 1, label %bb.mc
    i8 2, label %bb.ma
    i8 3, label %bb.mb
    i8 4, label %bb.mb
    i8 5, label %bb.mb
    i8 6, label %bb.mb
    i8 7, label %bb.mb
  ]

bb.lz:                                            ; preds = %bb.ly
  %i.ahb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ahc = load ptr, ptr %i.ahb, align 8, !nonnull !55, !align !56, !noundef !55
  %i.ahd = load i8, ptr %i.ahc, align 8, !range !67, !noundef !55
  %i.ahe = icmp eq i8 %i.ahd, 11
  br label %bb.mc

bb.ma:                                            ; preds = %bb.ly
  %i.ahf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ahg = load i8, ptr %i.ahf, align 8, !range !67, !noundef !55
  %i.ahh = icmp eq i8 %i.ahg, 11
  br label %bb.mc

bb.mb:                                            ; preds = %bb.ly, %bb.ly, %bb.ly, %bb.ly, %bb.ly
  br label %bb.mc

bb.mc:                                            ; preds = %bb.ly, %bb.mb, %bb.ma, %bb.lz
  %.sroa.098.0.shrunk = phi i1 [ %i.ahe, %bb.lz ], [ false, %bb.mb ], [ %i.ahh, %bb.ma ], [ true, %bb.ly ]
  %.sroa.098.0 = zext i1 %.sroa.098.0.shrunk to i8
  store i8 1, ptr %0, align 8
  %.sroa.095.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.098.0, ptr %.sroa.095.sroa.4.0..sroa_idx, align 1
  %.sroa.095.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 0, ptr %.sroa.095.sroa.5.0..sroa_idx, align 2
  %.sroa.095.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.095.sroa.7.0..sroa_idx, align 4
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.496.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_ZN4rhai8packages11string_more16string_functions15pad_with_string17h3259d1e618e4221cE:bb.a
bb.e:                                             ; preds = %bb.d
  %i.k = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit23"

bb.f:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.i, align 8, !nonnull !55, !noundef !55
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.p = load i64, ptr %i.o, align 8, !noundef !55
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit23"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit23": ; preds = %bb.e, %bb.f
  %.sroa.0.0.i21 = phi ptr [ %i.l, %bb.e ], [ %i.n, %bb.f ] ; 3 uses
  %.merged.i22 = phi i64 [ %i.m, %bb.e ], [ %i.p, %bb.f ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i21) ]
  %i.q = icmp ult i64 %.merged.i22, 32
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit23"
  %i.r = tail call noundef i64 @_ZN4core3str5count14do_count_chars17h06c5e5b89e2be9c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i21, i64 noundef %.merged.i22)
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit"

bb.h:                                             ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit23"
  %i.s = tail call noundef i64 @_ZN4core3str5count23char_count_general_case17h131e6cedc3bd189cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i21, i64 noundef %.merged.i22)
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit": ; preds = %bb.g, %bb.h
  %.sroa.01.0.i = phi i64 [ %i.s, %bb.h ], [ %i.r, %bb.g ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 4 uses
  %i.u = icmp ult i64 %4, 32
  br i1 %i.u, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit"
  %i.v = tail call noundef i64 @_ZN4core3str5count14do_count_chars17h06c5e5b89e2be9c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit25"

bb.j:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit"
  %i.w = tail call noundef i64 @_ZN4core3str5count23char_count_general_case17h131e6cedc3bd189cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit25"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit25": ; preds = %bb.i, %bb.j
  %.sroa.01.0.i24 = phi i64 [ %i.w, %bb.j ], [ %i.v, %bb.i ]
  %.not15 = icmp ugt i64 %2, %.sroa.01.0.i
  br i1 %.not15, label %bb.p, label %bb.c

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !45881
  %i.x = tail call noundef dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, 9) 1) #71, !noalias !45881 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.l, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit"

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3069) #70, !noalias !45882
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit": ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.x, ptr noundef nonnull align 1 dereferenceable(16) @251, i64 16, i1 false), !noalias !45883
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 16, ptr %i.z, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.x, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 16, ptr %.sroa.537.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 0, ptr %i.aa, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i16 0, ptr %i.ab, align 4
  store i8 28, ptr %i.b, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !45884
  %i.ac = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !45884 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.m, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit20", !prof !58

bb.m:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #70
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.b) #72
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

common.resume:                                    ; preds = %bb.x, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %i.az, %bb.x ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit20": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.p:                                             ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$5count17hfd2fb0143bfc13aaE.exit25"
  %i.ag = tail call fastcc noundef align 8 dereferenceable(24) ptr @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$8make_mut17hbebdc65590243689E"(ptr noalias noundef align 8 dereferenceable(8) %1) ; 2 uses
  br label %bb.q

"_ZN104_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17h9007b2e6b4424768E.exit.thread": ; preds = %"_ZN104_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17h9007b2e6b4424768E.exit", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c60cb289dd63464E.exit.thread.i", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c60cb289dd63464E.exit.i", %.lr.ph.i
  %i.ah = load i64, ptr %i.e, align 8, !noundef !55
  %.not16 = icmp eq i64 %i.ah, 0
  br i1 %.not16, label %bb.c, label %bb.r

bb.q:                                             ; preds = %bb.p, %"_ZN104_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17h9007b2e6b4424768E.exit"
  %.sroa.04.044 = phi i64 [ %.sroa.01.0.i, %bb.p ], [ %i.ai, %"_ZN104_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17h9007b2e6b4424768E.exit" ] ; 2 uses
  %i.ai = add i64 %.sroa.04.044, %.sroa.01.0.i24  ; 3 uses
  %.not19 = icmp ugt i64 %i.ai, %2
  br i1 %.not19, label %.lr.ph.i.preheader, label %"_ZN104_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17h9007b2e6b4424768E.exit"

bb.r:                                             ; preds = %"_ZN104_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17h9007b2e6b4424768E.exit.thread"
  %i.aj = load ptr, ptr %1, align 8, !nonnull !55, !noundef !55 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.al = tail call noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak)
  br i1 %i.al, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.am = tail call { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak)
  %i.an = extractvalue { ptr, i64 } %i.am, 1
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"

bb.t:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !55
  br label %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"

"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit": ; preds = %bb.s, %bb.t
  %.merged.i = phi i64 [ %i.an, %bb.s ], [ %i.ap, %bb.t ]
  %i.aq = load i64, ptr %i.e, align 8, !noundef !55
  %i.ar = icmp ugt i64 %.merged.i, %i.aq
  br i1 %i.ar, label %bb.u, label %bb.c

bb.u:                                             ; preds = %"_ZN80_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h8e4644c56b27445cE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !45885
  %i.as = tail call noundef dereferenceable_or_null(16) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, 9) 1) #71, !noalias !45885 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.v, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit29"

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 16, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3069) #70, !noalias !45886
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit29": ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.as, ptr noundef nonnull align 1 dereferenceable(16) @251, i64 16, i1 false), !noalias !45887
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 16, ptr %i.au, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.as, ptr %.sroa.442.0..sroa_idx, align 8
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 16, ptr %.sroa.543.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 0, ptr %i.av, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i16 0, ptr %i.aw, align 4
  store i8 28, ptr %i.a, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !45888
  %i.ax = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !45888 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.w, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit", !prof !58

bb.w:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit29"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #70
          to label %.noexc30 unwind label %bb.x

.noexc30:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$rhai..types..error..EvalAltResult$GT$17hcde5cb98d1214e92E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a) #72
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h19965eb80f69d891E.exit": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E.exit29"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

.lr.ph.i.preheader:                               ; preds = %bb.q
  %i.bb = sub nuw nsw i64 %2, %.sroa.04.044
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c60cb289dd63464E.exit.thread.i"
  %.sroa.0.018.i = phi ptr [ %.sroa.0.19.i, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c60cb289dd63464E.exit.thread.i" ], [ %3, %.lr.ph.i.preheader ] ; 7 uses
  %.sroa.9.017.i = phi i64 [ %i.bc, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c60cb289dd63464E.exit.thread.i" ], [ %i.bb, %.lr.ph.i.preheader ]
  %i.bc = add i64 %.sroa.9.017.i, -1              ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.018.i) ]
  %.not.i.i.i = icmp eq ptr %.sroa.0.018.i, %i.t
  br i1 %.not.i.i.i, label %"_ZN104_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17h9007b2e6b4424768E.exit.thread", label %bb.z

bb.z:                                             ; preds = %.lr.ph.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i, i64 1 ; 3 uses
  %i.be = load i8, ptr %.sroa.0.018.i, align 1, !noalias !45889, !noundef !55 ; 5 uses
  %i.bf = icmp sgt i8 %i.be, -1
  br i1 %i.bf, label %bb.aa, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i": ; preds = %bb.z
  %i.bg = and i8 %i.be, 31
  %i.bh = zext nneg i8 %i.bg to i32               ; 3 uses
  %i.bi = icmp ne ptr %i.bd, %i.t
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i, i64 2 ; 3 uses
  %i.bk = load i8, ptr %i.bd, align 1, !noalias !45889, !noundef !55
  %i.bl = shl nuw nsw i32 %i.bh, 6
  %i.bm = and i8 %i.bk, 63
  %i.bn = zext nneg i8 %i.bm to i32               ; 2 uses
  %i.bo = or disjoint i32 %i.bl, %i.bn
  %i.bp = icmp samesign ugt i8 %i.be, -33
  br i1 %i.bp, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i", label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c60cb289dd63464E.exit.thread.i"

bb.aa:                                            ; preds = %bb.z
  %i.bq = zext nneg i8 %i.be to i32
  br label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c60cb289dd63464E.exit.thread.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i"
  %i.br = icmp ne ptr %i.bj, %i.t
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i, i64 3 ; 3 uses
  %i.bt = load i8, ptr %i.bj, align 1, !noalias !45889, !noundef !55
  %i.bu = shl nuw nsw i32 %i.bn, 6
  %i.bv = and i8 %i.bt, 63
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = or disjoint i32 %i.bu, %i.bw            ; 2 uses
  %i.by = shl nuw nsw i32 %i.bh, 12
  %i.bz = or disjoint i32 %i.bx, %i.by
  %i.ca = icmp samesign ugt i8 %i.be, -17
  br i1 %i.ca, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c60cb289dd63464E.exit.i", label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c60cb289dd63464E.exit.thread.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c60cb289dd63464E.exit.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i"
  %i.cb = icmp ne ptr %i.bs, %i.t
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i, i64 4
  %i.cd = load i8, ptr %i.bs, align 1, !noalias !45889, !noundef !55
  %i.ce = shl nuw nsw i32 %i.bh, 18
  %i.cf = and i32 %i.ce, 1835008
  %i.cg = shl nuw nsw i32 %i.bx, 6
  %i.ch = and i8 %i.cd, 63
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = or disjoint i32 %i.cg, %i.ci
  %i.ck = or disjoint i32 %i.cj, %i.cf            ; 2 uses
  %.not.i = icmp eq i32 %i.ck, 1114112
  br i1 %.not.i, label %"_ZN104_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17h9007b2e6b4424768E.exit.thread", label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c60cb289dd63464E.exit.thread.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c60cb289dd63464E.exit.thread.i": ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c60cb289dd63464E.exit.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i", %bb.aa, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i"
  %.sroa.0.0.i10.i = phi i32 [ %i.ck, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c60cb289dd63464E.exit.i" ], [ %i.bz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i" ], [ %i.bo, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i" ], [ %i.bq, %bb.aa ]
  %.sroa.0.19.i = phi ptr [ %i.cc, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0c60cb289dd63464E.exit.i" ], [ %i.bs, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit14.i.i.i.i" ], [ %i.bj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4d51f4279788147dE.exit12.i.i.i.i" ], [ %i.bd, %bb.aa ]
  tail call fastcc void @"_ZN11smartstring23SmartString$LT$Mode$GT$4push17h9885ce1ce9200adeE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag, i32 noundef %.sroa.0.0.i10.i), !noalias !45890
  %i.cl = icmp eq i64 %i.bc, 0
  br i1 %i.cl, label %"_ZN104_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17h9007b2e6b4424768E.exit.thread", label %.lr.ph.i

"_ZN104_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17h9007b2e6b4424768E.exit": ; preds = %bb.q
  tail call fastcc void @"_ZN11smartstring23SmartString$LT$Mode$GT$8push_str17he2803cb6aef450faE"(ptr noalias noundef align 8 dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4)
  %i.cm = icmp ult i64 %i.ai, %2
  br i1 %i.cm, label %bb.q, label %"_ZN104_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$char$GT$$GT$6extend17h9007b2e6b4424768E.exit.thread"
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_ZN4rhai8packages11string_more16string_functions16add_prepend_char17h53b6e6ab93a48ccbE(i32 noundef range(i32 0, 1114112) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.45.0..sroa_idx, i8 0, i64 23, i1 false)
  store i8 1, ptr %i.b, align 8
  invoke fastcc void @"_ZN11smartstring23SmartString$LT$Mode$GT$4push17h9885ce1ce9200adeE"(ptr noalias noundef align 8 dereferenceable(24) %i.b, i32 noundef %0)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN11smartstring23SmartString$LT$Mode$GT$8push_str17he2803cb6aef450faE"(ptr noalias noundef align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 1, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !45893
  %i.e = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !45893 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.h, !prof !58

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #70
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %.noexc10 unwind label %bb.g

.noexc10:                                         ; preds = %bb.e
  br i1 %i.h, label %.body, label %bb.f

bb.f:                                             ; preds = %.noexc10
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.h:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.e

.body:                                            ; preds = %.noexc12, %bb.j, %bb.f, %.noexc10
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.g, %.noexc10 ], [ %i.j, %bb.j ], [ %i.j, %.noexc12 ]
  resume { ptr, i32 } %eh.lpad-body16

bb.i:                                             ; preds = %bb.a, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %.noexc12 unwind label %bb.k

.noexc12:                                         ; preds = %bb.i
  br i1 %i.k, label %.body, label %bb.j

bb.j:                                             ; preds = %.noexc12
  invoke void @"_ZN73_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8f1af6f1d0a8e3b0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN4rhai8packages11string_more16string_functions16starts_with_char17habe91e5e6123ff0fE(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #39 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %2, 128
  br i1 %i.b, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %2, 2048
  %i.d = trunc i32 %2 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %2, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %2, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %2, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.c, label %bb.d

.thread.i:                                        ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %2 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !45902
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.c:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !45902
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !45902
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.d:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %2, 65536
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !45902
end_hunk_1
