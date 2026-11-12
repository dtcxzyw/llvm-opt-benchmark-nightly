Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_RNvMNtNtCs63DIHKhvmTb_10lance_core5cache8entry_ioNtB2_16CacheEntryWriter9write_ipc:bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNCNvMNtNtCs63DIHKhvmTb_10lance_core5cache8entry_ioNtB4_16CacheEntryWriter9write_ipc0B8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs63DIHKhvmTb_10lance_core5cache8entry_ioNtB2_16CacheEntryWriter9write_raw(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality !guid !14353 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %1, align 8, !nonnull !48, !noundef !48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !48, !align !75, !noundef !48
  call void @_RNvNtCsc2V0exE7CWf_11lance_arrow3ipc24write_len_prefixed_bytes(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noundef nonnull %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.i = load i64, ptr %i.e, align 8, !range !132, !noundef !48
  %.not = icmp eq i64 %i.i, -1
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14354
  store i64 0, ptr %i.c, align 8, !noalias !14354
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !14354
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !14354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14354
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.j, align 8, !noalias !14354
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !14354
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i, align 2, !noalias !14354
  store ptr %i.c, ptr %i.b, align 8, !noalias !14354
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @9, ptr %i.k, align 8, !noalias !14354
  %i.l = invoke noundef zeroext i1 @_RNvXs3_NtCs8SUNSmrkv52_12arrow_schema5errorNtB5_10ArrowErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.c, !noalias !14355

bb.c:                                             ; preds = %bb.f, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14356)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !14356, !noalias !14354 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.n, label %.body.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !14356, !noalias !14354, !nonnull !48, !noundef !48
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !14357
  br label %.body.i

bb.e:                                             ; preds = %bb.b
  br i1 %i.l, label %bb.f, label %bb.g, !prof !51

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1049, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @367, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1051) #68
          to label %.noexc.i.i unwind label %bb.c, !noalias !14355

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

.body.i:                                          ; preds = %bb.j, %bb.i, %bb.d, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.m, %bb.c ], [ %i.m, %bb.d ], [ %i.q, %bb.i ], [ %i.q, %bb.j ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #69
          to label %bb.l unwind label %bb.k, !noalias !14358

bb.g:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !14359 ; 3 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !14359 ; 3 uses
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !14359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14354
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !14360
  %i.o = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #65, !noalias !14360 ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.h, label %_RNCNvMNtNtCs63DIHKhvmTb_10lance_core5cache8entry_ioNtB4_16CacheEntryWriter9write_raw0B8_.exit, !prof !64

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #68
          to label %.noexc.i2.i unwind label %bb.i, !noalias !14361

.noexc.i2.i:                                      ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.r, label %.body.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !14362
  br label %.body.i

bb.k:                                             ; preds = %.body.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !14358
  unreachable

bb.l:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RNCNvMNtNtCs63DIHKhvmTb_10lance_core5cache8entry_ioNtB4_16CacheEntryWriter9write_raw0B8_.exit: ; preds = %bb.g
  store i64 %.sroa.0.0.copyload.i, ptr %i.o, align 8, !noalias !14361
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !14361
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.6.0..sroa_idx4.i.i, align 8, !noalias !14361
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i8 17, ptr %0, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %.sroa.532.0..sroa_idx, align 8
  %.sroa.633.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @61, ptr %.sroa.633.0..sroa_idx, align 8
  %.sroa.734.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @172, ptr %.sroa.734.0..sroa_idx, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.t = add nuw i64 %3, 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !48
  %i.w = add i64 %i.t, %i.v
  store i64 %i.w, ptr %i.u, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNCNvMNtNtCs63DIHKhvmTb_10lance_core5cache8entry_ioNtB4_16CacheEntryWriter9write_raw0B8_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB2_12RowAddrRemap18affected_fragments(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !14409 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = load i64, ptr %1, align 8, !range !50, !noundef !48
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14410)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !14410, !nonnull !48, !noundef !48 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.i, align 16, !noalias !14411
  %i.j = load i64, ptr %i.g, align 8, !alias.scope !14410, !noundef !48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14412
  store i64 0, ptr %i.c, align 8, !noalias !14412
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !14412
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !14412
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14413)
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvXsc_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB8_13RoaringBitmapINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB19_8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysyINtNtB1b_6option6OptionyEENCNvMNtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB44_12RowAddrRemap18affected_fragments0EEB48_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.not12.i.i.i.i.i.i = icmp eq i16 %i.m, 0
  br i1 %.not12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %.loopexit11.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %i.o = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.p = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %bb.c ]
  %.val10.i.i.i.i.i.i = load <16 x i8>, ptr %i.o, align 16, !noalias !14414
  %i.q = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i, splat (i8 -1)
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -384 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.q to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %.loopexit11.i

.loopexit11.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  %.sroa.8.0.i.i = phi ptr [ %i.n, %bb.c ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.0.0.i.i = phi ptr [ %i.i, %bb.c ], [ %i.r, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.m, %bb.c ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.t = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = and i16 %i.t, %.lcssa.i.i.i.i.i.i
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds [24 x i8], ptr %.sroa.0.0.i.i, i64 %i.x
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -24
  %.val.i.i.i = load i64, ptr %i.z, align 8, !noalias !14415, !noundef !48 ; 2 uses
  %2 = lshr i64 %.val.i.i.i, 48
  %i.aa = trunc nuw i64 %2 to i16                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14416)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14417
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i16 %i.aa, ptr %i.ab, align 8, !noalias !14417
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !noalias !14417
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !14417
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !14417
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.e unwind label %bb.d, !noalias !14418

common.resume.i.i:                                ; preds = %bb.m, %bb.d
  %.sink.i.i = phi ptr [ %i.a, %bb.m ], [ %i.b, %bb.d ]
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.bv, %bb.m ], [ %i.ac, %bb.d ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %.sink.i.i) #69, !noalias !14419
  br label %.body.i

bb.d:                                             ; preds = %.loopexit11.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.e:                                             ; preds = %.loopexit11.i
  %3 = lshr i64 %.val.i.i.i, 32
  %i.ad = trunc i64 %3 to i16
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !14420, !noalias !14412 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.pre.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !14419
  store i64 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !14420, !noalias !14412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14417
  %i.ae = invoke fastcc noundef zeroext i1 @_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert(ptr noalias noundef align 8 dereferenceable(32) %.pre.i.i.i, i16 noundef %i.ad)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14412

.noexc.i:                                         ; preds = %bb.e
  br i1 %i.ae, label %bb.f, label %.noexc4.i

bb.f:                                             ; preds = %.noexc.i
  %i.af = invoke noundef zeroext i1 @_RNvMs_NtNtCs1akgR21QTtx_7roaring6bitmap9containerNtB4_9Container20ensure_correct_store(ptr noalias noundef nonnull align 8 dereferenceable(40) %.pre.i.i.i)
          to label %.noexc4.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14412 ; 0 uses

.noexc4.i:                                        ; preds = %bb.f, %.noexc.i
  %.sroa.14.0101.i.i = add i64 %i.j, -1           ; 2 uses
  %i.ag = icmp eq i64 %.sroa.14.0101.i.i, 0
  br i1 %i.ag, label %_RINvXsc_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB8_13RoaringBitmapINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB19_8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysyINtNtB1b_6option6OptionyEENCNvMNtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB44_12RowAddrRemap18affected_fragments0EEB48_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc4.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i44.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i45.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.g

bb.g:                                             ; preds = %.noexc8.i, %.lr.ph.i.i
  %.sroa.14.0107.i.i = phi i64 [ %.sroa.14.0101.i.i, %.lr.ph.i.i ], [ %.sroa.14.0.i.i, %.noexc8.i ]
  %.sroa.011.0106.i.i = phi ptr [ %.pre.i.i.i, %.lr.ph.i.i ], [ %.sroa.011.1.i.i, %.noexc8.i ] ; 3 uses
  %.sroa.015.0105.i.i = phi i16 [ %i.aa, %.lr.ph.i.i ], [ %.sroa.015.1.i.i, %.noexc8.i ] ; 3 uses
  %.sroa.1070.0104.i.i = phi i16 [ %i.w, %.lr.ph.i.i ], [ %i.aq, %.noexc8.i ] ; 2 uses
  %.sroa.669.0103.i.i = phi ptr [ %.sroa.8.0.i.i, %.lr.ph.i.i ], [ %.sroa.669.1.i.i, %.noexc8.i ] ; 2 uses
  %.sroa.068.0102.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.068.1.i.i, %.noexc8.i ] ; 2 uses
  %.not12.i.i.i.i25.i.i = icmp eq i16 %.sroa.1070.0104.i.i, 0
  br i1 %.not12.i.i.i.i25.i.i, label %.lr.ph.i.i.i.i32.i.i, label %.loopexit.i.i

.lr.ph.i.i.i.i32.i.i:                             ; preds = %bb.g, %.lr.ph.i.i.i.i32.i.i
  %i.ai = phi ptr [ %i.am, %.lr.ph.i.i.i.i32.i.i ], [ %.sroa.669.0103.i.i, %bb.g ] ; 2 uses
  %i.aj = phi ptr [ %i.al, %.lr.ph.i.i.i.i32.i.i ], [ %.sroa.068.0102.i.i, %bb.g ]
  %.val10.i.i.i.i35.i.i = load <16 x i8>, ptr %i.ai, align 16, !noalias !14421
  %i.ak = icmp sgt <16 x i8> %.val10.i.i.i.i35.i.i, splat (i8 -1)
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -384 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %.cast.i.i.i.i36.i.i = bitcast <16 x i1> %i.ak to i16 ; 2 uses
  %.not.i.i.i.i37.i.i = icmp eq i16 %.cast.i.i.i.i36.i.i, 0
  br i1 %.not.i.i.i.i37.i.i, label %.lr.ph.i.i.i.i32.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i32.i.i, %bb.g
  %.sroa.068.1.i.i = phi ptr [ %.sroa.068.0102.i.i, %bb.g ], [ %i.al, %.lr.ph.i.i.i.i32.i.i ] ; 2 uses
  %.sroa.669.1.i.i = phi ptr [ %.sroa.669.0103.i.i, %bb.g ], [ %i.am, %.lr.ph.i.i.i.i32.i.i ]
  %.lcssa.i.i.i.i28.i.i = phi i16 [ %.sroa.1070.0104.i.i, %bb.g ], [ %.cast.i.i.i.i36.i.i, %.lr.ph.i.i.i.i32.i.i ] ; 3 uses
  %i.an = add i16 %.lcssa.i.i.i.i28.i.i, -1
  %i.ao = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i28.i.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = and i16 %i.an, %.lcssa.i.i.i.i28.i.i
  %i.ar = sub nsw i64 0, %i.ap
  %i.as = getelementptr inbounds [24 x i8], ptr %.sroa.068.1.i.i, i64 %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -24
  %.val.i29.i.i = load i64, ptr %i.at, align 8, !noalias !14422, !noundef !48 ; 2 uses
  %4 = lshr i64 %.val.i29.i.i, 32
  %5 = lshr i64 %.val.i29.i.i, 48
  %i.au = trunc nuw i64 %5 to i16                 ; 7 uses
  %i.av = trunc i64 %4 to i16                     ; 2 uses
  %i.aw = icmp eq i16 %.sroa.015.0105.i.i, %i.au
  br i1 %i.aw, label %bb.o, label %bb.h

bb.h:                                             ; preds = %.loopexit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !14423)
  %i.ax = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !14424, !noalias !14412, !nonnull !48, !noundef !48 ; 3 uses
  %i.ay = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !14424, !noalias !14412, !noundef !48 ; 11 uses
  switch i64 %i.ay, label %.lr.ph.i.i.i50.i.i [
    i64 0, label %bb.j
    i64 1, label %._crit_edge.i.i.i40.i.i
  ]

._crit_edge.i.i.i40.i.i:                          ; preds = %.lr.ph.i.i.i50.i.i, %bb.h
  %.sroa.05.0.lcssa.i.i.i41.i.i = phi i64 [ 0, %bb.h ], [ %i.bi, %.lr.ph.i.i.i50.i.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %.sroa.05.0.lcssa.i.i.i41.i.i
  %i.ba = getelementptr i8, ptr %i.az, i64 32
  %.val14.i.i.i42.i.i = load i16, ptr %i.ba, align 8, !alias.scope !14425, !noalias !14426, !noundef !48 ; 2 uses
  %i.bb = icmp eq i16 %.val14.i.i.i42.i.i, %i.au
  br i1 %i.bb, label %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap21find_container_by_key.exit54.i.i, label %bb.i

.lr.ph.i.i.i50.i.i:                               ; preds = %bb.h, %.lr.ph.i.i.i50.i.i
  %.sroa.01.019.i.i.i51.i.i = phi i64 [ %i.bj, %.lr.ph.i.i.i50.i.i ], [ %i.ay, %bb.h ] ; 2 uses
  %.sroa.05.018.i.i.i52.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i50.i.i ], [ 0, %bb.h ] ; 2 uses
  %i.bc = lshr i64 %.sroa.01.019.i.i.i51.i.i, 1   ; 2 uses
  %i.bd = add nuw nsw i64 %i.bc, %.sroa.05.018.i.i.i52.i.i ; 3 uses
  %i.be = icmp ult i64 %i.bd, %i.ay
  call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw [40 x i8], ptr %i.ax, i64 %i.bd
  %i.bg = getelementptr i8, ptr %i.bf, i64 32
  %.val16.i.i.i53.i.i = load i16, ptr %i.bg, align 8, !alias.scope !14425, !noalias !14426, !noundef !48
  %i.bh = icmp ugt i16 %.val16.i.i.i53.i.i, %i.au
  %i.bi = select i1 %i.bh, i64 %.sroa.05.018.i.i.i52.i.i, i64 %i.bd, !unpredictable !48 ; 2 uses
  %i.bj = sub nuw nsw i64 %.sroa.01.019.i.i.i51.i.i, %i.bc ; 2 uses
  %i.bk = icmp ugt i64 %i.bj, 1
  br i1 %i.bk, label %.lr.ph.i.i.i50.i.i, label %._crit_edge.i.i.i40.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i40.i.i
  %i.bl = icmp ult i16 %.val14.i.i.i42.i.i, %i.au
  %i.bm = zext i1 %i.bl to i64
  %i.bn = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i41.i.i, %i.bm ; 2 uses
  %i.bo = icmp ule i64 %i.bn, %i.ay
  call void @llvm.assume(i1 %i.bo)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.4.0.i.i.ph.i43.i.i = phi i64 [ %i.bn, %bb.i ], [ %i.ay, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14427
  store i16 %i.au, ptr %i.ah, align 8, !noalias !14427
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !noalias !14427
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i44.i.i, align 8, !noalias !14427
  store i64 0, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i45.i.i, align 8, !noalias !14427
  %i.bp = icmp ult i64 %i.ay, 230584300921369396
  call void @llvm.assume(i1 %i.bp)
  %i.bq = load i64, ptr %i.c, align 8, !range !63, !alias.scope !14428, !noalias !14412, !noundef !48
  %i.br = icmp eq i64 %i.ay, %i.bq
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._crit_edge.i48.i.i unwind label %bb.m, !noalias !14429

._crit_edge.i48.i.i:                              ; preds = %bb.k
  %.pre.i49.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !14428, !noalias !14412
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i48.i.i, %bb.j
  %i.bs = phi ptr [ %.pre.i49.i.i, %._crit_edge.i48.i.i ], [ %i.ax, %bb.j ]
  %i.bt = getelementptr inbounds nuw [40 x i8], ptr %i.bs, i64 %.sroa.4.0.i.i.ph.i43.i.i ; 3 uses
  %i.bu = icmp samesign ult i64 %.sroa.4.0.i.i.ph.i43.i.i, %i.ay
  br i1 %i.bu, label %bb.n, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i46.i.i

bb.m:                                             ; preds = %bb.k
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.n:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bx = sub nuw nsw i64 %i.ay, %.sroa.4.0.i.i.ph.i43.i.i
  %i.by = mul nuw nsw i64 %i.bx, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr nonnull align 8 %i.bt, i64 %i.by, i1 false), !noalias !14429
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i46.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i46.i.i: ; preds = %bb.n, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !14419
  %i.bz = add nuw nsw i64 %i.ay, 1                ; 2 uses
  store i64 %i.bz, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !14428, !noalias !14412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14427
  br label %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap21find_container_by_key.exit54.i.i

_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap21find_container_by_key.exit54.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i46.i.i, %._crit_edge.i.i.i40.i.i
  %i.ca = phi i64 [ %i.bz, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i46.i.i ], [ %i.ay, %._crit_edge.i.i.i40.i.i ] ; 2 uses
  %.sroa.4.0.i.i15.i47.i.i = phi i64 [ %.sroa.4.0.i.i.ph.i43.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i46.i.i ], [ %.sroa.05.0.lcssa.i.i.i41.i.i, %._crit_edge.i.i.i40.i.i ] ; 3 uses
  %i.cb = icmp ult i64 %.sroa.4.0.i.i15.i47.i.i, %i.ca
  br i1 %i.cb, label %bb.p, label %bb.q

bb.o:                                             ; preds = %.loopexit.i.i
  %i.cc = invoke fastcc noundef zeroext i1 @_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert(ptr noalias noundef align 8 dereferenceable(32) %.sroa.011.0106.i.i, i16 noundef %i.av)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14412

.noexc5.i:                                        ; preds = %bb.o
  br i1 %i.cc, label %.sink.split.i.i, label %.noexc8.i

bb.p:                                             ; preds = %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap21find_container_by_key.exit54.i.i
  %i.cd = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !14413, !noalias !14412, !nonnull !48, !noundef !48
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %i.cd, i64 %.sroa.4.0.i.i15.i47.i.i ; 3 uses
  %i.cf = invoke fastcc noundef zeroext i1 @_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert(ptr noalias noundef align 8 dereferenceable(32) %i.ce, i16 noundef %i.av)
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14412

.noexc6.i:                                        ; preds = %bb.p
  br i1 %i.cf, label %.sink.split.i.i, label %.noexc8.i

bb.q:                                             ; preds = %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap21find_container_by_key.exit54.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.4.0.i.i15.i47.i.i, i64 noundef %i.ca, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #68
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14412

.noexc7.i:                                        ; preds = %bb.q
  unreachable

.sink.split.i.i:                                  ; preds = %.noexc6.i, %.noexc5.i
  %.sink125.i.i = phi ptr [ %.sroa.011.0106.i.i, %.noexc5.i ], [ %i.ce, %.noexc6.i ] ; 2 uses
  %.sroa.015.1.ph.i.i = phi i16 [ %.sroa.015.0105.i.i, %.noexc5.i ], [ %i.au, %.noexc6.i ]
  %i.cg = invoke noundef zeroext i1 @_RNvMs_NtNtCs1akgR21QTtx_7roaring6bitmap9containerNtB4_9Container20ensure_correct_store(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sink125.i.i)
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14412 ; 0 uses

.noexc8.i:                                        ; preds = %.sink.split.i.i, %.noexc6.i, %.noexc5.i
  %.sroa.015.1.i.i = phi i16 [ %i.au, %.noexc6.i ], [ %.sroa.015.0105.i.i, %.noexc5.i ], [ %.sroa.015.1.ph.i.i, %.sink.split.i.i ]
  %.sroa.011.1.i.i = phi ptr [ %i.ce, %.noexc6.i ], [ %.sroa.011.0106.i.i, %.noexc5.i ], [ %.sink125.i.i, %.sink.split.i.i ]
  %.sroa.14.0.i.i = add i64 %.sroa.14.0107.i.i, -1 ; 2 uses
  %i.ch = icmp eq i64 %.sroa.14.0.i.i, 0
  br i1 %i.ch, label %_RINvXsc_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB8_13RoaringBitmapINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB19_8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysyINtNtB1b_6option6OptionyEENCNvMNtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB44_12RowAddrRemap18affected_fragments0EEB48_.exit, label %bb.g

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.sink.split.i.i, %bb.p, %bb.o, %bb.q, %bb.f, %bb.e
  %lpad.loopexit.split-lp53 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %common.resume.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %common.resume.op.i.i, %common.resume.i.i ], [ %lpad.loopexit.split-lp53, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #69, !noalias !14412
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXsc_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB8_13RoaringBitmapINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB19_8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysyINtNtB1b_6option6OptionyEENCNvMNtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB44_12RowAddrRemap18affected_fragments0EEB48_.exit: ; preds = %.noexc8.i, %bb.b, %.noexc4.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !14430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14412
  br label %bb.s

bb.r:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14431)
  %i.cj = load ptr, ptr %i.ci, align 8, !alias.scope !14431, !nonnull !48, !noundef !48 ; 4 uses
  %i.ck = load i64, ptr %i.g, align 8, !alias.scope !14431, !noundef !48
  %i.cl = getelementptr i8, ptr %i.cj, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 1
  %.val3.i.i1 = load <16 x i8>, ptr %i.cj, align 16, !noalias !14432
  %i.cn = icmp sgt <16 x i8> %.val3.i.i1, splat (i8 -1)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !14431, !noundef !48
  store ptr %i.cj, ptr %i.d, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.co, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.cm, ptr %.sroa.524.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store <16 x i1> %i.cn, ptr %.sroa.625.0..sroa_idx, align 8
  %.sroa.827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.cq, ptr %.sroa.827.0..sroa_idx, align 8
  call fastcc void @_RINvXsc_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB8_13RoaringBitmapINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB19_8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysmjEEECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_RINvXsc_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB8_13RoaringBitmapINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB19_8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysyINtNtB1b_6option6OptionyEENCNvMNtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB44_12RowAddrRemap18affected_fragments0EEB48_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB2_12RowAddrRemap23fully_deleted_fragments(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !14492 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = load i64, ptr %1, align 8, !range !50, !noundef !48
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14493)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !14493, !nonnull !48, !noundef !48 ; 5 uses
  %.val3.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !14494
  %i.i = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !14493, !noundef !48 ; 4 uses
  %i.m = bitcast <16 x i1> %i.i to i16            ; 3 uses
  %.not.not.not.i.not67 = icmp eq i64 %i.l, 0
  br i1 %.not.not.not.i.not67, label %._crit_edge, label %.lr.ph70

bb.c:                                             ; preds = %._crit_edge19.i.i.i.i
  %i.n = add i64 %i.q, -1                         ; 2 uses
  %i.o = add i16 %.lcssa.i.i.i.i, -1
  %i.p = and i16 %i.o, %.lcssa.i.i.i.i
  %.not.not.not.i.not = icmp eq i64 %i.n, 0
  br i1 %.not.not.not.i.not, label %._crit_edge, label %.lr.ph70

.lr.ph70:                                         ; preds = %bb.b, %bb.c
  %i.q = phi i64 [ %i.n, %bb.c ], [ %i.l, %bb.b ]
  %.lcssa1115.i69 = phi ptr [ %.lcssa1114.i, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.r = phi i16 [ %i.p, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %.lcssa19.i68 = phi ptr [ %.lcssa18.i, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %.not12.i.i.i.i = icmp eq i16 %i.r, 0
  br i1 %.not12.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge19.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph70, %.lr.ph.i.i.i.i
  %i.s = phi ptr [ %i.w, %.lr.ph.i.i.i.i ], [ %.lcssa19.i68, %.lr.ph70 ] ; 2 uses
  %i.t = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %.lcssa1115.i69, %.lr.ph70 ]
  %.val10.i.i.i.i = load <16 x i8>, ptr %i.s, align 16, !noalias !14495
  %i.u = icmp sgt <16 x i8> %.val10.i.i.i.i, splat (i8 -1)
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -384 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.u to i16  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge19.i.i.i.i

._crit_edge19.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i, %.lr.ph70
  %.lcssa18.i = phi ptr [ %.lcssa19.i68, %.lr.ph70 ], [ %i.w, %.lr.ph.i.i.i.i ]
  %.lcssa1114.i = phi ptr [ %.lcssa1115.i69, %.lr.ph70 ], [ %i.v, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %i.r, %.lr.ph70 ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds [24 x i8], ptr %.lcssa1114.i, i64 %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -16
  %.val.i = load i64, ptr %i.ab, align 8, !range !56, !noalias !14496, !noundef !48
  %.not.i.i.not.i = icmp eq i64 %.val.i, 0
  br i1 %.not.i.i.not.i, label %bb.c, label %bb.g

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14498)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !14498, !nonnull !48, !noundef !48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !14498, !noundef !48 ; 2 uses
  %.idx = mul nuw nsw i64 %i.af, 72
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx
  %.not3.not.not.i.not.i66 = icmp eq i64 %i.af, 0
  br i1 %.not3.not.not.i.not.i66, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remap10GroupRemapENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_BS_NtBS_19CompactRowAddrRemap23fully_deleted_fragments0EBW_.exit.i, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ai, i64 72 ; 2 uses
  %.not3.not.not.i.not.i = icmp eq ptr %i.ah, %i.ag
  br i1 %.not3.not.not.i.not.i, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remap10GroupRemapENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_BS_NtBS_19CompactRowAddrRemap23fully_deleted_fragments0EBW_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %i.ai = phi ptr [ %i.ah, %bb.e ], [ %i.ad, %bb.d ] ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 48
  %.val.i.i = load i64, ptr %i.aj, align 8, !noalias !14499, !noundef !48
  %.not.i.i = icmp eq i64 %.val.i.i, 0
  br i1 %.not.i.i, label %bb.e, label %bb.f

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remap10GroupRemapENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_BS_NtBS_19CompactRowAddrRemap23fully_deleted_fragments0EBW_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14500
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14501)
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !14502, !nonnull !48, !noundef !48 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !14502, !noundef !48
  %i.ao = getelementptr i8, ptr %i.al, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 1
  %.val3.i.i.i = load <16 x i8>, ptr %i.al, align 16, !noalias !14503
  %i.aq = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !14502, !noundef !48
  store ptr %i.al, ptr %i.d, align 8, !noalias !14500
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ar, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !14500
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.ap, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !14500
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store <16 x i1> %i.aq, ptr %.sroa.67.0..sroa_idx.i, align 8, !noalias !14500
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.at, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !14500
  call fastcc void @_RINvXsc_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB8_13RoaringBitmapINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB19_8adapters6copied6CopiedINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysmjEEECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.d), !noalias !14498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14500
  br label %_RNvMs0_NtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB5_19CompactRowAddrRemap23fully_deleted_fragments.exit

bb.f:                                             ; preds = %.lr.ph
  store i64 -1, ptr %0, align 8, !alias.scope !14497
  br label %_RNvMs0_NtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB5_19CompactRowAddrRemap23fully_deleted_fragments.exit

_RNvMs0_NtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB5_19CompactRowAddrRemap23fully_deleted_fragments.exit: ; preds = %bb.f, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remap10GroupRemapENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_BS_NtBS_19CompactRowAddrRemap23fully_deleted_fragments0EBW_.exit.i, %bb.g, %_RINvXsc_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB8_13RoaringBitmapINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB19_8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysyINtNtB1b_6option6OptionyEENCNvMNtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB44_12RowAddrRemap23fully_deleted_fragmentss_0EEB48_.exit
  ret void

bb.g:                                             ; preds = %._crit_edge19.i.i.i.i
  store i64 -1, ptr %0, align 8
  br label %_RNvMs0_NtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB5_19CompactRowAddrRemap23fully_deleted_fragments.exit

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14504
  store i64 0, ptr %i.c, align 8, !noalias !14504
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !14504
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !14504
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14505)
  %i.au = icmp eq i64 %i.l, 0
  br i1 %i.au, label %_RINvXsc_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB8_13RoaringBitmapINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB19_8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysyINtNtB1b_6option6OptionyEENCNvMNtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB44_12RowAddrRemap23fully_deleted_fragmentss_0EEB48_.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %.not12.i.i.i.i.i.i = icmp eq i16 %i.m, 0
  br i1 %.not12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %.loopexit11.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %i.av = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i.i ], [ %i.j, %bb.h ] ; 2 uses
  %i.aw = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i ], [ %i.h, %bb.h ]
  %.val10.i.i.i.i.i.i = load <16 x i8>, ptr %i.av, align 16, !noalias !14506
  %i.ax = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i, splat (i8 -1)
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -384 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.ax to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %.loopexit11.i

.loopexit11.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i, %bb.h
  %.sroa.8.0.i.i = phi ptr [ %i.j, %bb.h ], [ %i.az, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.0.0.i.i = phi ptr [ %i.h, %bb.h ], [ %i.ay, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.m, %bb.h ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.ba = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.bb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = and i16 %i.ba, %.lcssa.i.i.i.i.i.i
  %i.be = sub nsw i64 0, %i.bc
  %i.bf = getelementptr inbounds [24 x i8], ptr %.sroa.0.0.i.i, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -24
  %.val.i.i.i = load i64, ptr %i.bg, align 8, !noalias !14507, !noundef !48 ; 2 uses
  %2 = lshr i64 %.val.i.i.i, 48
  %i.bh = trunc nuw i64 %2 to i16                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14508)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14509
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i16 %i.bh, ptr %i.bi, align 8, !noalias !14509
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !noalias !14509
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !14509
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !14509
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.j unwind label %bb.i, !noalias !14510

common.resume.i.i:                                ; preds = %bb.r, %bb.i
  %.sink.i.i = phi ptr [ %i.a, %bb.r ], [ %i.b, %bb.i ]
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.dc, %bb.r ], [ %i.bj, %bb.i ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %.sink.i.i) #69, !noalias !14511
  br label %.body.i

bb.i:                                             ; preds = %.loopexit11.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.j:                                             ; preds = %.loopexit11.i
  %3 = lshr i64 %.val.i.i.i, 32
  %i.bk = trunc i64 %3 to i16
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !14512, !noalias !14504 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.pre.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !14511
  store i64 1, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !14512, !noalias !14504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14509
  %i.bl = invoke fastcc noundef zeroext i1 @_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert(ptr noalias noundef align 8 dereferenceable(32) %.pre.i.i.i, i16 noundef %i.bk)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14504

.noexc.i:                                         ; preds = %bb.j
  br i1 %i.bl, label %bb.k, label %.noexc4.i

bb.k:                                             ; preds = %.noexc.i
  %i.bm = invoke noundef zeroext i1 @_RNvMs_NtNtCs1akgR21QTtx_7roaring6bitmap9containerNtB4_9Container20ensure_correct_store(ptr noalias noundef nonnull align 8 dereferenceable(40) %.pre.i.i.i)
          to label %.noexc4.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14504 ; 0 uses

.noexc4.i:                                        ; preds = %bb.k, %.noexc.i
  %.sroa.14.0101.i.i = add i64 %i.l, -1           ; 2 uses
  %i.bn = icmp eq i64 %.sroa.14.0101.i.i, 0
  br i1 %i.bn, label %_RINvXsc_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB8_13RoaringBitmapINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB19_8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysyINtNtB1b_6option6OptionyEENCNvMNtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB44_12RowAddrRemap23fully_deleted_fragmentss_0EEB48_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc4.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i44.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i45.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.l

bb.l:                                             ; preds = %.noexc8.i, %.lr.ph.i.i
  %.sroa.14.0107.i.i = phi i64 [ %.sroa.14.0101.i.i, %.lr.ph.i.i ], [ %.sroa.14.0.i.i, %.noexc8.i ]
  %.sroa.011.0106.i.i = phi ptr [ %.pre.i.i.i, %.lr.ph.i.i ], [ %.sroa.011.1.i.i, %.noexc8.i ] ; 3 uses
  %.sroa.015.0105.i.i = phi i16 [ %i.bh, %.lr.ph.i.i ], [ %.sroa.015.1.i.i, %.noexc8.i ] ; 3 uses
  %.sroa.1070.0104.i.i = phi i16 [ %i.bd, %.lr.ph.i.i ], [ %i.bx, %.noexc8.i ] ; 2 uses
  %.sroa.669.0103.i.i = phi ptr [ %.sroa.8.0.i.i, %.lr.ph.i.i ], [ %.sroa.669.1.i.i, %.noexc8.i ] ; 2 uses
  %.sroa.068.0102.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.068.1.i.i, %.noexc8.i ] ; 2 uses
  %.not12.i.i.i.i25.i.i = icmp eq i16 %.sroa.1070.0104.i.i, 0
  br i1 %.not12.i.i.i.i25.i.i, label %.lr.ph.i.i.i.i32.i.i, label %.loopexit.i.i

.lr.ph.i.i.i.i32.i.i:                             ; preds = %bb.l, %.lr.ph.i.i.i.i32.i.i
  %i.bp = phi ptr [ %i.bt, %.lr.ph.i.i.i.i32.i.i ], [ %.sroa.669.0103.i.i, %bb.l ] ; 2 uses
  %i.bq = phi ptr [ %i.bs, %.lr.ph.i.i.i.i32.i.i ], [ %.sroa.068.0102.i.i, %bb.l ]
  %.val10.i.i.i.i35.i.i = load <16 x i8>, ptr %i.bp, align 16, !noalias !14513
  %i.br = icmp sgt <16 x i8> %.val10.i.i.i.i35.i.i, splat (i8 -1)
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 -384 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %.cast.i.i.i.i36.i.i = bitcast <16 x i1> %i.br to i16 ; 2 uses
  %.not.i.i.i.i37.i.i = icmp eq i16 %.cast.i.i.i.i36.i.i, 0
  br i1 %.not.i.i.i.i37.i.i, label %.lr.ph.i.i.i.i32.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i32.i.i, %bb.l
  %.sroa.068.1.i.i = phi ptr [ %.sroa.068.0102.i.i, %bb.l ], [ %i.bs, %.lr.ph.i.i.i.i32.i.i ] ; 2 uses
  %.sroa.669.1.i.i = phi ptr [ %.sroa.669.0103.i.i, %bb.l ], [ %i.bt, %.lr.ph.i.i.i.i32.i.i ]
  %.lcssa.i.i.i.i28.i.i = phi i16 [ %.sroa.1070.0104.i.i, %bb.l ], [ %.cast.i.i.i.i36.i.i, %.lr.ph.i.i.i.i32.i.i ] ; 3 uses
  %i.bu = add i16 %.lcssa.i.i.i.i28.i.i, -1
  %i.bv = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i28.i.i, i1 true)
  %i.bw = zext nneg i16 %i.bv to i64
  %i.bx = and i16 %i.bu, %.lcssa.i.i.i.i28.i.i
  %i.by = sub nsw i64 0, %i.bw
  %i.bz = getelementptr inbounds [24 x i8], ptr %.sroa.068.1.i.i, i64 %i.by
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -24
  %.val.i29.i.i = load i64, ptr %i.ca, align 8, !noalias !14514, !noundef !48 ; 2 uses
  %4 = lshr i64 %.val.i29.i.i, 32
  %5 = lshr i64 %.val.i29.i.i, 48
  %i.cb = trunc nuw i64 %5 to i16                 ; 7 uses
  %i.cc = trunc i64 %4 to i16                     ; 2 uses
  %i.cd = icmp eq i16 %.sroa.015.0105.i.i, %i.cb
  br i1 %i.cd, label %bb.t, label %bb.m

bb.m:                                             ; preds = %.loopexit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !14515)
  %i.ce = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !14516, !noalias !14504, !nonnull !48, !noundef !48 ; 3 uses
  %i.cf = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !14516, !noalias !14504, !noundef !48 ; 11 uses
  switch i64 %i.cf, label %.lr.ph.i.i.i50.i.i [
    i64 0, label %bb.o
    i64 1, label %._crit_edge.i.i.i40.i.i
  ]

._crit_edge.i.i.i40.i.i:                          ; preds = %.lr.ph.i.i.i50.i.i, %bb.m
  %.sroa.05.0.lcssa.i.i.i41.i.i = phi i64 [ 0, %bb.m ], [ %i.cp, %.lr.ph.i.i.i50.i.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [40 x i8], ptr %i.ce, i64 %.sroa.05.0.lcssa.i.i.i41.i.i
  %i.ch = getelementptr i8, ptr %i.cg, i64 32
  %.val14.i.i.i42.i.i = load i16, ptr %i.ch, align 8, !alias.scope !14517, !noalias !14518, !noundef !48 ; 2 uses
  %i.ci = icmp eq i16 %.val14.i.i.i42.i.i, %i.cb
  br i1 %i.ci, label %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap21find_container_by_key.exit54.i.i, label %bb.n

.lr.ph.i.i.i50.i.i:                               ; preds = %bb.m, %.lr.ph.i.i.i50.i.i
  %.sroa.01.019.i.i.i51.i.i = phi i64 [ %i.cq, %.lr.ph.i.i.i50.i.i ], [ %i.cf, %bb.m ] ; 2 uses
  %.sroa.05.018.i.i.i52.i.i = phi i64 [ %i.cp, %.lr.ph.i.i.i50.i.i ], [ 0, %bb.m ] ; 2 uses
  %i.cj = lshr i64 %.sroa.01.019.i.i.i51.i.i, 1   ; 2 uses
  %i.ck = add nuw nsw i64 %i.cj, %.sroa.05.018.i.i.i52.i.i ; 3 uses
  %i.cl = icmp ult i64 %i.ck, %i.cf
  call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw [40 x i8], ptr %i.ce, i64 %i.ck
  %i.cn = getelementptr i8, ptr %i.cm, i64 32
  %.val16.i.i.i53.i.i = load i16, ptr %i.cn, align 8, !alias.scope !14517, !noalias !14518, !noundef !48
  %i.co = icmp ugt i16 %.val16.i.i.i53.i.i, %i.cb
  %i.cp = select i1 %i.co, i64 %.sroa.05.018.i.i.i52.i.i, i64 %i.ck, !unpredictable !48 ; 2 uses
  %i.cq = sub nuw nsw i64 %.sroa.01.019.i.i.i51.i.i, %i.cj ; 2 uses
  %i.cr = icmp ugt i64 %i.cq, 1
  br i1 %i.cr, label %.lr.ph.i.i.i50.i.i, label %._crit_edge.i.i.i40.i.i

bb.n:                                             ; preds = %._crit_edge.i.i.i40.i.i
  %i.cs = icmp ult i16 %.val14.i.i.i42.i.i, %i.cb
  %i.ct = zext i1 %i.cs to i64
  %i.cu = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i41.i.i, %i.ct ; 2 uses
  %i.cv = icmp ule i64 %i.cu, %i.cf
  call void @llvm.assume(i1 %i.cv)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.4.0.i.i.ph.i43.i.i = phi i64 [ %i.cu, %bb.n ], [ %i.cf, %bb.m ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14519
  store i16 %i.cb, ptr %i.bo, align 8, !noalias !14519
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !noalias !14519
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i44.i.i, align 8, !noalias !14519
  store i64 0, ptr %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i45.i.i, align 8, !noalias !14519
  %i.cw = icmp ult i64 %i.cf, 230584300921369396
  call void @llvm.assume(i1 %i.cw)
  %i.cx = load i64, ptr %i.c, align 8, !range !63, !alias.scope !14520, !noalias !14504, !noundef !48
  %i.cy = icmp eq i64 %i.cf, %i.cx
  br i1 %i.cy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._crit_edge.i48.i.i unwind label %bb.r, !noalias !14521

._crit_edge.i48.i.i:                              ; preds = %bb.p
  %.pre.i49.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !14520, !noalias !14504
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i48.i.i, %bb.o
  %i.cz = phi ptr [ %.pre.i49.i.i, %._crit_edge.i48.i.i ], [ %i.ce, %bb.o ]
  %i.da = getelementptr inbounds nuw [40 x i8], ptr %i.cz, i64 %.sroa.4.0.i.i.ph.i43.i.i ; 3 uses
  %i.db = icmp samesign ult i64 %.sroa.4.0.i.i.ph.i43.i.i, %i.cf
  br i1 %i.db, label %bb.s, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i46.i.i

bb.r:                                             ; preds = %bb.p
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.s:                                             ; preds = %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.de = sub nuw nsw i64 %i.cf, %.sroa.4.0.i.i.ph.i43.i.i
  %i.df = mul nuw nsw i64 %i.de, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr nonnull align 8 %i.da, i64 %i.df, i1 false), !noalias !14521
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i46.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i46.i.i: ; preds = %bb.s, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.da, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !14511
  %i.dg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  store i64 %i.dg, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !14520, !noalias !14504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14519
  br label %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap21find_container_by_key.exit54.i.i

_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap21find_container_by_key.exit54.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i46.i.i, %._crit_edge.i.i.i40.i.i
  %i.dh = phi i64 [ %i.dg, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i46.i.i ], [ %i.cf, %._crit_edge.i.i.i40.i.i ] ; 2 uses
  %.sroa.4.0.i.i15.i47.i.i = phi i64 [ %.sroa.4.0.i.i.ph.i43.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE10insert_mutCs63DIHKhvmTb_10lance_core.exit.i46.i.i ], [ %.sroa.05.0.lcssa.i.i.i41.i.i, %._crit_edge.i.i.i40.i.i ] ; 3 uses
  %i.di = icmp ult i64 %.sroa.4.0.i.i15.i47.i.i, %i.dh
  br i1 %i.di, label %bb.u, label %bb.v

bb.t:                                             ; preds = %.loopexit.i.i
  %i.dj = invoke fastcc noundef zeroext i1 @_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert(ptr noalias noundef align 8 dereferenceable(32) %.sroa.011.0106.i.i, i16 noundef %i.cc)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14504

.noexc5.i:                                        ; preds = %bb.t
  br i1 %i.dj, label %.sink.split.i.i, label %.noexc8.i

bb.u:                                             ; preds = %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap21find_container_by_key.exit54.i.i
  %i.dk = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !14505, !noalias !14504, !nonnull !48, !noundef !48
  %i.dl = getelementptr inbounds nuw [40 x i8], ptr %i.dk, i64 %.sroa.4.0.i.i15.i47.i.i ; 3 uses
  %i.dm = invoke fastcc noundef zeroext i1 @_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap5storeNtB2_5Store6insert(ptr noalias noundef align 8 dereferenceable(32) %i.dl, i16 noundef %i.cc)
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14504

.noexc6.i:                                        ; preds = %bb.u
  br i1 %i.dm, label %.sink.split.i.i, label %.noexc8.i

bb.v:                                             ; preds = %_RNvMNtNtCs1akgR21QTtx_7roaring6bitmap8inherentNtB4_13RoaringBitmap21find_container_by_key.exit54.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.sroa.4.0.i.i15.i47.i.i, i64 noundef %i.dh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @113) #68
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14504

.noexc7.i:                                        ; preds = %bb.v
  unreachable

.sink.split.i.i:                                  ; preds = %.noexc6.i, %.noexc5.i
  %.sink125.i.i = phi ptr [ %.sroa.011.0106.i.i, %.noexc5.i ], [ %i.dl, %.noexc6.i ] ; 2 uses
  %.sroa.015.1.ph.i.i = phi i16 [ %.sroa.015.0105.i.i, %.noexc5.i ], [ %i.cb, %.noexc6.i ]
  %i.dn = invoke noundef zeroext i1 @_RNvMs_NtNtCs1akgR21QTtx_7roaring6bitmap9containerNtB4_9Container20ensure_correct_store(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sink125.i.i)
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14504 ; 0 uses

.noexc8.i:                                        ; preds = %.sink.split.i.i, %.noexc6.i, %.noexc5.i
  %.sroa.015.1.i.i = phi i16 [ %i.cb, %.noexc6.i ], [ %.sroa.015.0105.i.i, %.noexc5.i ], [ %.sroa.015.1.ph.i.i, %.sink.split.i.i ]
  %.sroa.011.1.i.i = phi ptr [ %i.dl, %.noexc6.i ], [ %.sroa.011.0106.i.i, %.noexc5.i ], [ %.sink125.i.i, %.sink.split.i.i ]
  %.sroa.14.0.i.i = add i64 %.sroa.14.0107.i.i, -1 ; 2 uses
  %i.do = icmp eq i64 %.sroa.14.0.i.i, 0
  br i1 %i.do, label %_RINvXsc_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB8_13RoaringBitmapINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB19_8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysyINtNtB1b_6option6OptionyEENCNvMNtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB44_12RowAddrRemap23fully_deleted_fragmentss_0EEB48_.exit, label %bb.l

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.sink.split.i.i, %bb.u, %bb.t, %bb.v, %bb.k, %bb.j
  %lpad.loopexit.split-lp71 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %common.resume.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %common.resume.op.i.i, %common.resume.i.i ], [ %lpad.loopexit.split-lp71, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapECs63DIHKhvmTb_10lance_core(ptr noalias noundef align 8 dereferenceable(24) %i.c) #69, !noalias !14504
  resume { ptr, i32 } %eh.lpad-body.i

_RINvXsc_NtNtCs1akgR21QTtx_7roaring6bitmap4iterNtB8_13RoaringBitmapINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB19_8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map4KeysyINtNtB1b_6option6OptionyEENCNvMNtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB44_12RowAddrRemap23fully_deleted_fragmentss_0EEB48_.exit: ; preds = %.noexc8.i, %._crit_edge, %.noexc4.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14504
  br label %_RNvMs0_NtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB5_19CompactRowAddrRemap23fully_deleted_fragments.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs63DIHKhvmTb_10lance_core5utils14row_addr_remapNtB2_12RowAddrRemap5empty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 56)) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !14532 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !54, !noalias !14533, !noundef !48
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs63DIHKhvmTb_10lance_core.exit.i.i, !prof !53

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.a, align 8, !noalias !14534
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !14534
  br label %_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs63DIHKhvmTb_10lance_core.exit

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs63DIHKhvmTb_10lance_core.exit.i.i: ; preds = %bb.a
  %i.e = tail call { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys(), !noalias !14535 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1        ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.h, align 8, !noalias !14535
  store i8 1, ptr %i.b, align 8, !noalias !14535
  br label %_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs63DIHKhvmTb_10lance_core.exit

_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs63DIHKhvmTb_10lance_core.exit: ; preds = %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs63DIHKhvmTb_10lance_core.exit.i.i
  %.pre-phi5 = phi i64 [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i ], [ %i.g, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs63DIHKhvmTb_10lance_core.exit.i.i ]
  %i.i = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs63DIHKhvmTb_10lance_core.exit_crit_edge.i.i ], [ %i.f, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECs63DIHKhvmTb_10lance_core.exit.i.i ] ; 2 uses
  %i.j = add i64 %i.i, 1
  store i64 %i.j, ptr %i.a, align 8, !noalias !14534
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) @20, i64 32, i1 false)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.i, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.pre-phi5, ptr %.sroa.53.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs63DIHKhvmTb_10lance_core5utils8tempfileNtB2_7TempDir7try_new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 !guid !14536 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtCshSCwdrgHqBt_8tempfile3dir7tempdir(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !57, !noundef !48 ; 2 uses
  %i.d = icmp eq i8 %i.c, 2
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_0
