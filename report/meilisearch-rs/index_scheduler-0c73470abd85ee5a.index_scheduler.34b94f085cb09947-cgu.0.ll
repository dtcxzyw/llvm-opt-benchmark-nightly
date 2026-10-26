Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 564
loop-unroll.NumUnrolled: 782
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@"_ZN15index_scheduler9scheduler15process_upgrade49_$LT$impl$u20$index_scheduler..IndexScheduler$GT$16process_rollback17hea3c44f735cb1fe9E":bb.a
          to label %.noexc249 unwind label %.loopexit.split-lp440.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc249:                                        ; preds = %bb.bo
  %i.mx = extractvalue { ptr, i64 } %i.mw, 0      ; 5 uses
  %.not.i248 = icmp eq ptr %i.mx, null
  br i1 %.not.i248, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %.noexc249
  %i.my = icmp slt i64 %i.mv, 0
  br i1 %i.my, label %.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !85

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.bp
  %i.mz = icmp eq i64 %i.mv, 0
  br i1 %i.mz, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !65563
  %i.na = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.mv, i64 noundef range(i64 1, 9) 1) #77, !noalias !65563 ; 2 uses
  %i.nb = icmp eq ptr %i.na, null
  br i1 %i.nb, label %.invoke, label %bb.br

.loopexit.split-lp440.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.hb, %bb.gz, %bb.cl, %bb.ck, %"_ZN4core3ptr151drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$core..option..Option$LT$$LP$alloc..string..String$C$milli..index..Index$RP$$GT$$GT$$GT$17h909079c4baacd20bE.exit.i", %bb.cg, %bb.ce, %bb.bu, %bb.bt, %bb.bo, %.invoke, %bb.dn, %bb.dl, %bb.hv
  %lpad.loopexit.split-lp1946 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp440.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.ho, %bb.bw, %bb.cc, %bb.cn, %bb.ct
  %eh.lpad-body = phi { ptr, i32 } [ %.pn335.i, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i ], [ %i.ot, %bb.cn ], [ %i.np, %bb.bw ], [ %i.ny, %bb.cc ], [ %eh.lpad-body.i, %bb.ct ], [ %.pn335.i, %bb.ho ], [ %lpad.loopexit.split-lp1946, %.loopexit.split-lp440.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$heed..txn..RoTxn$LT$heed..txn..WithoutTls$GT$$GT$17h0978caa936472573E"(ptr noalias noundef align 8 dereferenceable(24) %i.ca) #79
          to label %.loopexit.split-lp unwind label %bb.ib

bb.br:                                            ; preds = %bb.bq, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.na, %bb.bq ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.mt, i64 %i.mv, i1 false), !noalias !65564
  %i.nc = ptrtoint ptr %.sroa.10.0.i.i.i to i64
  %i.nd = inttoptr i64 %i.mv to ptr
  store i64 114, ptr %0, align 8
  %.sroa.2168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.nd, ptr %.sroa.2168.0..sroa_idx, align 8
  %.sroa.3169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.nc, ptr %.sroa.3169.0..sroa_idx, align 8
  %.sroa.4170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.mv, ptr %.sroa.4170.0..sroa_idx, align 8
  br label %bb.hx

bb.bs:                                            ; preds = %.noexc249
  %i.ne = extractvalue { ptr, i64 } %i.mw, 1      ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.766.sroa.7.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.28)
  call void @llvm.experimental.noalias.scope.decl(metadata !65565)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !65566
  %i.nf = cmpxchg weak ptr %i.ie, i32 0, i32 1073741823 acquire monotonic, align 4, !noalias !65567
  %i.ng = extractvalue { i32, i1 } %i.nf, 1
  br i1 %i.ng, label %.noexc262, label %bb.bt, !prof !58

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock15write_contended17h55a2cbc8e1b81353E(ptr noundef nonnull align 8 %i.ie)
          to label %.noexc262 unwind label %.loopexit.split-lp440.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc262:                                        ; preds = %bb.bt, %bb.bs
  %i.nh = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !65567
  %i.ni = and i64 %i.nh, 9223372036854775807
  %i.nj = icmp eq i64 %i.ni, 0
  br i1 %i.nj, label %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$5write17haadcf87ffb94ab66E.exit.i", label %bb.bu, !prof !58

bb.bu:                                            ; preds = %.noexc262
  %i.nk = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc263 unwind label %.loopexit.split-lp440.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc263:                                        ; preds = %bb.bu
  %i.nl = xor i1 %i.nk, true
  %i.nm = zext i1 %i.nl to i8
  br label %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$5write17haadcf87ffb94ab66E.exit.i"

"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$5write17haadcf87ffb94ab66E.exit.i": ; preds = %.noexc263, %.noexc262
  %.sroa.01.0.i.i.i = phi i8 [ %i.nm, %.noexc263 ], [ 0, %.noexc262 ] ; 3 uses
  %i.nn = load atomic i8, ptr %i.if monotonic, align 1, !noalias !65568
  %.not351.i = icmp eq i8 %i.nn, 0
  br i1 %.not351.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6f4bea80dde16b92E.exit.i", label %bb.bv, !prof !58

bb.bv:                                            ; preds = %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$5write17haadcf87ffb94ab66E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !65569
  store ptr %i.ie, ptr %i.at, align 8, !noalias !65569
  %i.no = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.no, align 8, !noalias !65569
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2141, i64 noundef 43, ptr noundef nonnull align 1 %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2162, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @531) #78
          to label %bb.bx unwind label %bb.bw, !noalias !65570

bb.bw:                                            ; preds = %bb.bv
  %i.np = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr189drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$core..option..Option$LT$$LP$alloc..string..String$C$milli..index..Index$RP$$GT$$GT$$GT$$GT$17hd6e5d292a577d37eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.at) #79
          to label %.body unwind label %bb.by, !noalias !65570

bb.bx:                                            ; preds = %bb.bv
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.nq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !65570
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6f4bea80dde16b92E.exit.i": ; preds = %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$5write17haadcf87ffb94ab66E.exit.i"
  %i.nr = trunc nuw i8 %.sroa.01.0.i.i.i to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(520) %i.bd, ptr noundef nonnull align 8 dereferenceable(520) %i.ig, i64 520, i1 false), !noalias !65571
  store i64 -9223372036854775808, ptr %i.ig, align 8, !noalias !65571
  call void @llvm.experimental.noalias.scope.decl(metadata !65572)
  %i.ns = load i64, ptr %i.bd, align 8, !range !83, !alias.scope !65572, !noalias !65566, !noundef !57 ; 3 uses
  %i.nt = icmp eq i64 %i.ns, -9223372036854775808
  br i1 %i.nt, label %"_ZN4core3ptr100drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$milli..index..Index$RP$$GT$$GT$17hbfc53cfe7da1f954E.exit.i", label %bb.bz

bb.bz:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6f4bea80dde16b92E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !65573)
  call void @llvm.experimental.noalias.scope.decl(metadata !65574)
  call void @llvm.experimental.noalias.scope.decl(metadata !65575)
  %i.nu = icmp eq i64 %i.ns, 0
  br i1 %i.nu, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i252", label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.val1.i.i.i.i.i251 = load ptr, ptr %i.ih, align 8, !alias.scope !65576, !noalias !65566, !nonnull !57, !noundef !57
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i251, i64 noundef %i.ns, i64 noundef range(i64 1, -9223372036854775807) 1) #77, !noalias !65577
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i252"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i252": ; preds = %bb.ca, %bb.bz
  call void @llvm.experimental.noalias.scope.decl(metadata !65578)
  call void @llvm.experimental.noalias.scope.decl(metadata !65579)
  call void @llvm.experimental.noalias.scope.decl(metadata !65580)
  call void @llvm.experimental.noalias.scope.decl(metadata !65581)
  %i.nv = load ptr, ptr %i.ii, align 8, !alias.scope !65582, !noalias !65566, !nonnull !57, !noundef !57
  %i.nw = atomicrmw add ptr %i.nv, i64 -1 release, align 8, !noalias !65583
  %i.nx = icmp eq i64 %i.nw, 1
  br i1 %i.nx, label %bb.cb, label %"_ZN4core3ptr100drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$milli..index..Index$RP$$GT$$GT$17hbfc53cfe7da1f954E.exit.i"

bb.cb:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i252"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hdfb7a3544ec9f782E"(ptr noalias noundef nonnull align 8 dereferenceable(496) %i.ii)
          to label %"_ZN4core3ptr100drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$milli..index..Index$RP$$GT$$GT$17hbfc53cfe7da1f954E.exit.i" unwind label %bb.cc, !noalias !65571

bb.cc:                                            ; preds = %bb.cb
  %i.ny = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr151drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$core..option..Option$LT$$LP$alloc..string..String$C$milli..index..Index$RP$$GT$$GT$$GT$17h909079c4baacd20bE"(ptr nonnull %i.ie, i8 %.sroa.01.0.i.i.i) #79
          to label %.body unwind label %bb.hk, !noalias !65571

"_ZN4core3ptr100drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$milli..index..Index$RP$$GT$$GT$17hbfc53cfe7da1f954E.exit.i": ; preds = %bb.cb, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he52df50a9b2815cbE.exit.i.i.i252", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h6f4bea80dde16b92E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !65566
  br i1 %i.nr, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %"_ZN4core3ptr100drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$milli..index..Index$RP$$GT$$GT$17hbfc53cfe7da1f954E.exit.i"
  %i.nz = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !65566
  %i.oa = and i64 %i.nz, 9223372036854775807
  %i.ob = icmp eq i64 %i.oa, 0
  br i1 %i.ob, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.ce, !prof !58

bb.ce:                                            ; preds = %bb.cd
  %i.oc = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc264 unwind label %.loopexit.split-lp440.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc264:                                        ; preds = %bb.ce
  br i1 %i.oc, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %.noexc264
  store atomic i8 1, ptr %i.if monotonic, align 8, !noalias !65571
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i: ; preds = %bb.cf, %.noexc264, %bb.cd, %"_ZN4core3ptr100drop_in_place$LT$core..option..Option$LT$$LP$alloc..string..String$C$milli..index..Index$RP$$GT$$GT$17hbfc53cfe7da1f954E.exit.i"
  %i.od = atomicrmw add ptr %i.ie, i32 -1073741823 release, align 4, !noalias !65571
  %i.oe = add i32 %i.od, -1073741823              ; 2 uses
  %or.cond.i.i.i = icmp ult i32 %i.oe, 1073741824
  br i1 %or.cond.i.i.i, label %"_ZN4core3ptr151drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$core..option..Option$LT$$LP$alloc..string..String$C$milli..index..Index$RP$$GT$$GT$$GT$17h909079c4baacd20bE.exit.i", label %bb.cg, !prof !108

bb.cg:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %i.ie, i32 noundef %i.oe)
          to label %"_ZN4core3ptr151drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$core..option..Option$LT$$LP$alloc..string..String$C$milli..index..Index$RP$$GT$$GT$$GT$17h909079c4baacd20bE.exit.i" unwind label %.loopexit.split-lp440.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr151drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$core..option..Option$LT$$LP$alloc..string..String$C$milli..index..Index$RP$$GT$$GT$$GT$17h909079c4baacd20bE.exit.i": ; preds = %bb.cg, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !65566
  invoke fastcc void @"_ZN4heed9databases8database34Database$LT$KC$C$DC$C$C$C$CDUP$GT$3get17h047f5fe9fe85c352E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bc, i64 %.val64.i, i32 %.val65.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.mx, i64 noundef %i.ne)
          to label %.noexc266 unwind label %.loopexit.split-lp440.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc266:                                        ; preds = %"_ZN4core3ptr151drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$core..option..Option$LT$$LP$alloc..string..String$C$milli..index..Index$RP$$GT$$GT$$GT$17h909079c4baacd20bE.exit.i"
  %i.of = load i32, ptr %i.bc, align 8, !range !145, !noalias !65566, !noundef !57 ; 2 uses
  %.not.i253 = icmp eq i32 %i.of, 5
  %.sroa.026.0.copyload.i = load i8, ptr %i.il, align 4, !noalias !65566 ; 2 uses
  %.sroa.527.sroa.0.0.copyload.i = load i64, ptr %.sroa.527.0..sroa_idx.i, align 1, !noalias !65566 ; 3 uses
  %.sroa.527.sroa.5.0.copyload.i = load ptr, ptr %.sroa.527.sroa.5.0..sroa.527.0..sroa_idx.sroa_idx.i, align 1, !noalias !65566 ; 2 uses
  br i1 %.not.i253, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %.noexc266
  %i.og = lshr i64 %.sroa.527.sroa.0.0.copyload.i, 24
  %i.oh = trunc nuw i64 %i.og to i40
  %.sroa.735.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 21
  %.sroa.18.29..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.18.29..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.735.0..sroa_idx.i, i64 3, i1 false), !noalias !65584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !65566
  store i40 %i.oh, ptr %.sroa.18, align 8
  %.sroa.18.5..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18, i64 5
  store ptr %.sroa.527.sroa.5.0.copyload.i, ptr %.sroa.18.5..sroa_idx, align 1, !alias.scope !65565
  br label %.thread406

bb.ci:                                            ; preds = %.noexc266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !65566
  %i.oi = trunc nuw i8 %.sroa.026.0.copyload.i to i1
  br i1 %i.oi, label %bb.cj, label %bb.cq

bb.cj:                                            ; preds = %bb.ci
  store i64 %.sroa.527.sroa.0.0.copyload.i, ptr %i.bb, align 16, !noalias !65566
  store ptr %.sroa.527.sroa.5.0.copyload.i, ptr %.sroa.6.sroa.7.0..sroa_idx.i, align 8, !noalias !65566
  %.sroa.0343.0.copyload = load i128, ptr %i.bb, align 16, !noalias !65566
  %i.oj = cmpxchg weak ptr %i.io, i32 0, i32 1073741823 acquire monotonic, align 4, !noalias !65585
  %i.ok = extractvalue { i32, i1 } %i.oj, 1
  br i1 %i.ok, label %.noexc267, label %bb.ck, !prof !58

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN3std3sys4sync6rwlock5futex6RwLock15write_contended17h55a2cbc8e1b81353E(ptr noundef nonnull align 8 %i.io)
          to label %.noexc267 unwind label %.loopexit.split-lp440.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc267:                                        ; preds = %bb.ck, %bb.cj
  %i.ol = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !65586
  %i.om = and i64 %i.ol, 9223372036854775807
  %i.on = icmp eq i64 %i.om, 0
  br i1 %i.on, label %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$5write17h5d255261a75a677bE.exit.i", label %bb.cl, !prof !58

bb.cl:                                            ; preds = %.noexc267
  %i.oo = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc268 unwind label %.loopexit.split-lp440.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc268:                                        ; preds = %bb.cl
  %i.op = xor i1 %i.oo, true
  %i.oq = zext i1 %i.op to i8
  br label %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$5write17h5d255261a75a677bE.exit.i"

"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$5write17h5d255261a75a677bE.exit.i": ; preds = %.noexc268, %.noexc267
  %.sroa.01.0.i.i78.i = phi i8 [ %i.oq, %.noexc268 ], [ 0, %.noexc267 ] ; 3 uses
  %i.or = load atomic i8, ptr %i.ip monotonic, align 1, !noalias !65585
  %.not352.i = icmp eq i8 %i.or, 0
  br i1 %.not352.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hbf00d73a6c3c5359E.exit.i", label %bb.cm, !prof !58

bb.cm:                                            ; preds = %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$5write17h5d255261a75a677bE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !65587
  store ptr %i.io, ptr %i.as, align 8, !noalias !65587
  %i.os = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i8 %.sroa.01.0.i.i78.i, ptr %i.os, align 8, !noalias !65587
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2141, i64 noundef 43, ptr noundef nonnull align 1 %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2174, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @532) #78
          to label %bb.co unwind label %bb.cn, !noalias !65588

bb.cn:                                            ; preds = %bb.cm
  %i.ot = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr160drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$index_scheduler..index_mapper..index_map..IndexMap$GT$$GT$$GT$17h06f8a2d737716ea0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.as) #79
          to label %.body unwind label %bb.cp, !noalias !65588

bb.co:                                            ; preds = %bb.cm
  unreachable

bb.cp:                                            ; preds = %bb.cn
  %i.ou = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !65588
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hbf00d73a6c3c5359E.exit.i": ; preds = %"_ZN3std4sync6poison6rwlock15RwLock$LT$T$GT$5write17h5d255261a75a677bE.exit.i"
  %i.ov = trunc nuw i8 %.sroa.01.0.i.i78.i to i1  ; 3 uses
  br label %bb.cs

bb.cq:                                            ; preds = %bb.ci
  %i.ow = icmp slt i64 %i.ne, 0
  br i1 %i.ow, label %.invoke, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i254, !prof !85

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i254: ; preds = %bb.cq
  %i.ox = icmp eq i64 %i.ne, 0
  br i1 %i.ox, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit.i255", label %bb.cr

bb.cr:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i254
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !65589
  %i.oy = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ne, i64 noundef range(i64 1, 9) 1) #77, !noalias !65589 ; 2 uses
  %i.oz = icmp eq ptr %i.oy, null
  br i1 %i.oz, label %.invoke, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit.i255"

.invoke:                                          ; preds = %bb.bp, %bb.bq, %bb.cq, %bb.cr
  %i.pa = phi i64 [ 0, %bb.cq ], [ 1, %bb.cr ], [ 1, %bb.bq ], [ 0, %bb.bp ]
  %i.pb = phi i64 [ %i.ne, %bb.cq ], [ %i.ne, %bb.cr ], [ %i.mv, %bb.bq ], [ %i.mv, %bb.bp ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.pa, i64 %i.pb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #78
          to label %.cont unwind label %.loopexit.split-lp440.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h9660f7607dd08246E.exit.i255": ; preds = %bb.cr, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i254
  %.sroa.10.0.i.i.i256 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i254 ], [ %i.oy, %bb.cr ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i256, ptr nonnull readonly align 1 %i.mx, i64 %i.ne, i1 false), !noalias !65590
  %.sroa.8297.sroa.0.0.extract.trunc305 = trunc i64 %i.ne to i32
  %.sroa.8297.sroa.9.0.extract.shift308 = lshr i64 %i.ne, 32
  %.sroa.8297.sroa.9.0.extract.trunc309 = trunc i64 %.sroa.8297.sroa.9.0.extract.shift308 to i8
  %.sroa.8297.sroa.12.0.extract.shift315 = lshr i64 %i.ne, 40
  store ptr %.sroa.10.0.i.i.i256, ptr %.sroa.18, align 8, !alias.scope !65565
  %.sroa.18.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.18, i64 8
  store i64 %i.ne, ptr %.sroa.18.8..sroa_idx, align 8, !alias.scope !65565
  br label %.thread406

bb.cs:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..index_mapper..IndexStatus$GT$17h675b313e6f6af1cfE.exit120.i", %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hbf00d73a6c3c5359E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !65566
  call void @_ZN15index_scheduler12index_mapper9index_map8IndexMap3get17he2534f747d025f1aE(ptr noalias noundef nonnull sret([504 x i8]) align 8 captures(address) dereferenceable(504) %i.ba, ptr noundef nonnull align 8 %i.iq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(16) %i.bb), !noalias !65571
  %i.pc = load i64, ptr %i.ba, align 8, !range !62, !noalias !65566, !noundef !57
  switch i64 %i.pc, label %default.unreachable [
    i64 0, label %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..index_mapper..IndexStatus$GT$17h675b313e6f6af1cfE.exit99.i"
    i64 1, label %bb.cv
    i64 2, label %bb.cy
    i64 3, label %bb.de
  ]

bb.ct:                                            ; preds = %bb.hj, %.body.i
  br i1 %.sroa.023.1.lpad-body.i, label %.thread.i, label %.body

.loopexit.split-lp354.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.hi, %bb.gq, %bb.fu, %bb.fo, %bb.eq, %bb.du, %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..index_mapper..IndexStatus$GT$17h675b313e6f6af1cfE.exit99.i", %bb.dq
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

default.unreachable:                              ; preds = %bb.cs
  unreachable

bb.cu:                                            ; preds = %_ZN15index_scheduler12index_mapper9index_map12ClosingIndex12wait_timeout17h8c16db5528278190E.exit.i
  %.pr.i = load i64, ptr %i.ba, align 8, !noalias !65566 ; 2 uses
  %i.pd = icmp eq i64 %.pr.i, 2
  br i1 %i.pd, label %"_ZN4core3ptr63drop_in_place$LT$index_scheduler..index_mapper..IndexStatus$GT$17h675b313e6f6af1cfE.exit99.i", label %bb.ds

bb.cv:                                            ; preds = %bb.cs
  %i.pe = icmp slt i64 %i.ne, 0
  br i1 %i.pe, label %bb.cx, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i80.i, !prof !85

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i80.i: ; preds = %bb.cv
  %i.pf = icmp eq i64 %i.ne, 0
  br i1 %i.pf, label %bb.dj, label %bb.cw

bb.cw:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i80.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #77, !noalias !65591
  %i.pg = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ne, i64 noundef range(i64 1, 9) 1) #77, !noalias !65591 ; 2 uses
  %i.ph = icmp eq ptr %i.pg, null
  br i1 %i.ph, label %bb.cx, label %bb.dj

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.sroa.4.0.ph.i.i84.i = phi i64 [ 1, %bb.cw ], [ 0, %bb.cv ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i84.i, i64 %i.ne, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4878) #78
          to label %.noexc85.i unwind label %.loopexit.split-lp.i.loopexit.split-lp, !noalias !65571

.noexc85.i:                                       ; preds = %bb.cx
  unreachable

bb.cy:                                            ; preds = %bb.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %i.iw, i64 48, i1 false), !noalias !65566
  %i.pi = invoke noundef zeroext i1 @_ZN4heed4envs15EnvClosingEvent12wait_timeout17hd9341f221a54235aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.az, i64 noundef 100, i32 noundef 0)
          to label %bb.db unwind label %bb.cz, !noalias !65592

bb.cz:                                            ; preds = %bb.cy
  %i.pj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !65593)
  call void @llvm.experimental.noalias.scope.decl(metadata !65594)
  call void @llvm.experimental.noalias.scope.decl(metadata !65595)
  call void @llvm.experimental.noalias.scope.decl(metadata !65596)
  %i.pk = load ptr, ptr %i.az, align 8, !alias.scope !65597, !noalias !65566, !nonnull !57, !noundef !57
  %i.pl = atomicrmw add ptr %i.pk, i64 -1 release, align 8, !noalias !65598
  %i.pm = icmp eq i64 %i.pl, 1
  br i1 %i.pm, label %bb.da, label %.body.i

bb.da:                                            ; preds = %bb.cz
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc53d2bff696e05a9E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.az)
          to label %.body.i unwind label %bb.dd, !noalias !65592

bb.db:                                            ; preds = %bb.cy
  call void @llvm.experimental.noalias.scope.decl(metadata !65599)
  call void @llvm.experimental.noalias.scope.decl(metadata !65600)
  call void @llvm.experimental.noalias.scope.decl(metadata !65601)
  call void @llvm.experimental.noalias.scope.decl(metadata !65602)
  %i.pn = load ptr, ptr %i.az, align 8, !alias.scope !65603, !noalias !65566, !nonnull !57, !noundef !57
  %i.po = atomicrmw add ptr %i.pn, i64 -1 release, align 8, !noalias !65604
  %i.pp = icmp eq i64 %i.po, 1
  br i1 %i.pp, label %bb.dc, label %_ZN15index_scheduler12index_mapper9index_map12ClosingIndex12wait_timeout17h8c16db5528278190E.exit.i

bb.dc:                                            ; preds = %bb.db
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc53d2bff696e05a9E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.az)
          to label %_ZN15index_scheduler12index_mapper9index_map12ClosingIndex12wait_timeout17h8c16db5528278190E.exit.i unwind label %.loopexit.split-lp.i.loopexit.loopexit.split-lp, !noalias !65571

bb.dd:                                            ; preds = %bb.da
  %i.pq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #80, !noalias !65592
  unreachable

bb.de:                                            ; preds = %bb.cs
  call void @llvm.experimental.noalias.scope.decl(metadata !65605)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !65566
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
end_hunk_0
