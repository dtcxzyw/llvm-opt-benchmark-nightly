Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.14?download=true
inline.NumInlined: 6502
inline.NumDeleted: 2826
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN4core5slice4sort6stable14driftsort_main17h7e1ec916b41fdcf9E:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.e ], [ %lpad.thr_comm, %bb.i ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h4f90eaa7244d469dE.exit": ; preds = %bb.d
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce2e7982f9276536E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %1, 65
  call void @_ZN4core5slice4sort6stable5drift4sort17h5fc3b1ca0c4bac2cE(ptr noalias noundef nonnull align 2 %0, i64 noundef %1, ptr noalias noundef nonnull align 2 %i.b, i64 noundef 2048, i1 noundef zeroext %i.l, ptr noalias noundef nonnull align 1 %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h4f90eaa7244d469dE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.b, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u16$GT$$GT$17h4f90eaa7244d469dE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #33
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17hfc0b943494f31193E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nuw i64 %1, %i.c
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 142857)
  %.sroa.0.0.i15 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp ult i64 %.sroa.0.0.i15, 74
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$13with_capacity17h8d5bc7cda6c90d83E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i15)
  %i.f = invoke { ptr, i64 } @"_ZN5alloc5slice99_$LT$impl$u20$core..slice..sort..stable..BufGuard$LT$T$GT$$u20$for$u20$alloc..vec..Vec$LT$T$GT$$GT$19as_uninit_slice_mut17haeb7ec02cbfbb692E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.i       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.g = extractvalue { ptr, i64 } %i.f, 1
  %i.h = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %i.i = icmp ult i64 %1, 65
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  invoke void @_ZN4core5slice4sort6stable5drift4sort17h05dc83366e083f86E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.h, i64 noundef %i.g, i1 noundef zeroext %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb09f965eab34c828E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$anki..scheduler..queue..builder..NewCard$GT$$GT$17h76d8e801ac96fa8bE.exit" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h74bdfc2ec640514dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.e ], [ %lpad.thr_comm, %bb.i ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$anki..scheduler..queue..builder..NewCard$GT$$GT$17h76d8e801ac96fa8bE.exit": ; preds = %bb.d
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h74bdfc2ec640514dE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %1, 65
  call void @_ZN4core5slice4sort6stable5drift4sort17h05dc83366e083f86E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.b, i64 noundef 73, i1 noundef zeroext %i.l, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$anki..scheduler..queue..builder..NewCard$GT$$GT$17h76d8e801ac96fa8bE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.b, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$anki..scheduler..queue..builder..NewCard$GT$$GT$17h76d8e801ac96fa8bE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #33
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4core6result6Result2Ok17h39ec7c618702b7f5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) initializes((0, 128)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(128) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4hmac11get_der_key17ha7356d8bfc044bd4E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 1 captures(none) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [128 x i8], align 1               ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 1                ; 6 uses
  %i.f = alloca [224 x i8], align 16              ; 11 uses
  %i.g = alloca [64 x i8], align 1                ; 5 uses
  %i.h = alloca [224 x i8], align 16              ; 9 uses
  %i.i = alloca [128 x i8], align 1               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @"_ZN110_$LT$generic_array..GenericArray$LT$T$C$N$GT$$u20$as$u20$generic_array..sequence..GenericSequence$LT$T$GT$$GT$8generate17h7b9c6e71b0230d8aE"(ptr noalias noundef nonnull sret([128 x i8]) align 1 captures(address) dereferenceable(128) %i.i)
  %i.j = icmp ult i64 %2, 129
  br i1 %i.j, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10222
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 4 uses
  call void @"_ZN92_$LT$block_buffer..BlockBuffer$LT$BlockSize$C$Kind$GT$$u20$as$u20$core..default..Default$GT$7default17h04879785cfff0c90E"(ptr noalias noundef nonnull sret([129 x i8]) align 1 captures(address) dereferenceable(129) %i.k), !noalias !10222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %i.h, ptr noundef nonnull align 16 dereferenceable(64) @842, i64 64, i1 false), !noalias !10222
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 4 uses
  store i128 0, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !alias.scope !10223, !noalias !10222
  call void @llvm.experimental.noalias.scope.decl(metadata !10224)
  call void @llvm.experimental.noalias.scope.decl(metadata !10225)
  call void @llvm.experimental.noalias.scope.decl(metadata !10226)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 208 ; 2 uses
  %i.m = load i8, ptr %i.l, align 16, !alias.scope !10227, !noalias !10228, !noundef !10 ; 3 uses
  %i.n = icmp sgt i8 %i.m, -1
  call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i8 %i.m, 0
  br i1 %i.o, label %bb.c, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i"

bb.c:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i", %bb.b
  %.sroa.7.0.i.i.i = phi i64 [ %2, %bb.b ], [ %i.w, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i.i = phi ptr [ %1, %bb.b ], [ %i.x, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i" ] ; 2 uses
  %i.p = lshr i64 %.sroa.7.0.i.i.i, 7             ; 3 uses
  %i.q = and i64 %.sroa.7.0.i.i.i, -128
  %i.r = and i64 %.sroa.7.0.i.i.i, 127            ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %i.q
  %i.t = icmp eq i64 %i.p, 0
  br i1 %i.t, label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17h7b6d9e5921c8e308E.exit.i", label %bb.d

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i": ; preds = %bb.b
  %i.u = zext nneg i8 %i.m to i64                 ; 2 uses
  %i.v = sub nuw nsw i64 128, %i.u                ; 3 uses
  %i.w = sub nuw i64 %2, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 %i.v, i1 false), !alias.scope !10229, !noalias !10230
  store i128 1, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !alias.scope !10231, !noalias !10232
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(224) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(129) %i.k, i64 noundef range(i64 1, 0) 1), !noalias !10228
  br label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.z = zext nneg i64 %i.p to i128
  %i.aa = load i128, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !alias.scope !10233, !noalias !10234, !noundef !10
  %i.ab = add i128 %i.aa, %i.z
  store i128 %i.ab, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !alias.scope !10233, !noalias !10234
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(224) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef range(i64 1, 0) %i.p), !noalias !10235
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17h7b6d9e5921c8e308E.exit.i"

"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17h7b6d9e5921c8e308E.exit.i": ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(129) %i.k, ptr nonnull readonly align 1 %i.s, i64 %i.r, i1 false), !alias.scope !10236, !noalias !10237
  %storemerge.i.i.i = trunc nuw nsw i64 %i.r to i8
  store i8 %storemerge.i.i.i, ptr %i.l, align 16, !alias.scope !10227, !noalias !10228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %i.f, ptr noundef nonnull align 16 dereferenceable(224) %i.h, i64 224, i1 false), !noalias !10222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10238
  call void @"_ZN110_$LT$generic_array..GenericArray$LT$T$C$N$GT$$u20$as$u20$generic_array..sequence..GenericSequence$LT$T$GT$$GT$8generate17hdf506f7d63e2b6a3E"(ptr noalias noundef nonnull sret([64 x i8]) align 1 captures(address) dereferenceable(64) %i.g), !noalias !10239
  call void @llvm.experimental.noalias.scope.decl(metadata !10240)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10241)
  call void @llvm.experimental.noalias.scope.decl(metadata !10242)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10243
  call void @"_ZN110_$LT$generic_array..GenericArray$LT$T$C$N$GT$$u20$as$u20$generic_array..sequence..GenericSequence$LT$T$GT$$GT$8generate17hdf506f7d63e2b6a3E"(ptr noalias noundef nonnull sret([64 x i8]) align 1 captures(address) dereferenceable(64) %i.e), !noalias !10244
  call void @llvm.experimental.noalias.scope.decl(metadata !10245)
  call void @llvm.experimental.noalias.scope.decl(metadata !10246)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10243
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 208 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 16, !alias.scope !10247, !noalias !10248, !noundef !10 ; 4 uses
  %i.af = icmp sgt i8 %i.ae, -1
  call void @llvm.assume(i1 %i.af)
  %3 = zext nneg i8 %i.ae to i128
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.ah = load i128, ptr %i.ag, align 16, !alias.scope !10249, !noalias !10250, !noundef !10
  %4 = shl i128 %i.ah, 10
  %5 = shl nuw nsw i128 %3, 3
  %6 = or disjoint i128 %4, %5
  %7 = call i128 @llvm.bswap.i128(i128 %6)        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10251)
  %i.ai = zext nneg i8 %i.ae to i64               ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ai ; 2 uses
  store i8 -128, ptr %i.aj, align 1, !alias.scope !10252, !noalias !10253
  %i.ak = icmp eq i8 %i.ae, 127
  br i1 %i.ak, label %._crit_edge.thread.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17h7b6d9e5921c8e308E.exit.i"
  %8 = getelementptr i8, ptr %i.aj, i64 1
  %9 = xor i64 %i.ai, 127
  call void @llvm.memset.p0.i64(ptr align 1 %8, i8 0, i64 %9, i1 false), !alias.scope !10252, !noalias !10253
  %i.al = xor i64 %i.ai, 112
  %i.am = icmp samesign ult i64 %i.al, 16
  br i1 %i.am, label %._crit_edge.thread.i.i.i.i.i, label %bb.e

._crit_edge.thread.i.i.i.i.i:                     ; preds = %._crit_edge.i.i.i.i.i, %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17h7b6d9e5921c8e308E.exit.i"
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(224) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(129) %i.ac, i64 noundef 1), !noalias !10254
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10255
  call void @"_ZN110_$LT$generic_array..GenericArray$LT$T$C$N$GT$$u20$as$u20$generic_array..sequence..GenericSequence$LT$T$GT$$GT$8generate17h7b9c6e71b0230d8aE"(ptr noalias noundef nonnull sret([128 x i8]) align 1 captures(address) dereferenceable(128) %i.b), !noalias !10256
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i128 %7, ptr %i.an, align 1, !alias.scope !10257, !noalias !10258
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(224) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(128) %i.b, i64 noundef 1), !noalias !10254
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10255
  br label %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i.i.i.i.i"

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  store i128 %7, ptr %i.ao, align 16, !alias.scope !10259, !noalias !10260
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(224) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(129) %i.ac, i64 noundef 1), !noalias !10254
  br label %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i.i.i.i.i"

"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i.i.i.i.i": ; preds = %bb.e, %._crit_edge.thread.i.i.i.i.i
  store i8 0, ptr %i.ad, align 16, !alias.scope !10252, !noalias !10253
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10261
  store ptr %i.ap, ptr %i.a, align 8, !noalias !10262
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10262
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10262
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10262
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 8, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10262
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h58850fa5ebba578bE"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull align 16 dereferenceable(224) %i.f, ptr noundef nonnull %i.ag), !noalias !10263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !noalias !10264
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.as = load i64, ptr %i.aq, align 8, !alias.scope !10265, !noalias !10266, !noundef !10 ; 2 uses
  %i.at = load i64, ptr %i.ar, align 8, !alias.scope !10265, !noalias !10266, !noundef !10
  %i.au = icmp ult i64 %i.as, %i.at
  br i1 %i.au, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.lr.ph.i.i.i.i.i", label %"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6digest17hca542b68b820a217E.exit"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.lr.ph.i.i.i.i.i": ; preds = %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i.i.i.i.i"
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.i.i.i.i.i"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.i.i.i.i.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i.i", %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.lr.ph.i.i.i.i.i"
  %i.aw = phi i64 [ %i.as, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.lr.ph.i.i.i.i.i" ], [ %i.be, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i.i" ] ; 3 uses
  %i.ax = add nuw i64 %i.aw, 1
  store i64 %i.ax, ptr %i.aq, align 8, !alias.scope !10265, !noalias !10266
  %i.ay = call { ptr, i64 } @"_ZN101_$LT$core..slice..iter..ChunksExactMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$24__iterator_get_unchecked17hc722127bb720d610E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, i64 noundef %i.aw), !noalias !10267 ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.ay, 0      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i, label %"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6digest17hca542b68b820a217E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.i.i.i.i.i"
  %i.ba = extractvalue { ptr, i64 } %i.ay, 1      ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !10265, !noalias !10266, !nonnull !10, !noundef !10
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.aw
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !10268, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !10269)
  call void @llvm.experimental.noalias.scope.decl(metadata !10270)
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ba, 8
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i.i", label %bb.g, !prof !36

bb.g:                                             ; preds = %bb.f
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17hb23ab9e23fc1a789E"(i64 noundef %i.ba, i64 noundef 8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @841) #35, !noalias !10271
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i.i": ; preds = %bb.f
  %i.bd = call i64 @llvm.bswap.i64(i64 %i.bc)
  store i64 %i.bd, ptr %i.az, align 1, !alias.scope !10272, !noalias !10273
  %i.be = load i64, ptr %i.aq, align 8, !alias.scope !10265, !noalias !10266, !noundef !10 ; 2 uses
  %i.bf = load i64, ptr %i.ar, align 8, !alias.scope !10265, !noalias !10266, !noundef !10
  %i.bg = icmp ult i64 %i.be, %i.bf
  br i1 %i.bg, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.i.i.i.i.i", label %"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6digest17hca542b68b820a217E.exit"

"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6digest17hca542b68b820a217E.exit": ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.i.i.i.i.i", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i.i", %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.e, i64 64, i1 false), !alias.scope !10274, !noalias !10275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.i, ptr noundef nonnull align 1 dereferenceable(64) %i.g, i64 64, i1 false), !noalias !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10222
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6digest17hca542b68b820a217E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %0, ptr noundef nonnull align 1 dereferenceable(128) %i.i, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.i:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !alias.scope !10276, !noalias !10277
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4hmac11get_der_key17he73918ba56005b2eE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 1 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [64 x i8], align 1                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 1                ; 6 uses
  %i.f = alloca [112 x i8], align 8               ; 11 uses
  %i.g = alloca [32 x i8], align 1                ; 5 uses
  %i.h = alloca [112 x i8], align 8               ; 9 uses
  %i.i = alloca [64 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @"_ZN110_$LT$generic_array..GenericArray$LT$T$C$N$GT$$u20$as$u20$generic_array..sequence..GenericSequence$LT$T$GT$$GT$8generate17hdf506f7d63e2b6a3E"(ptr noalias noundef nonnull sret([64 x i8]) align 1 captures(address) dereferenceable(64) %i.i)
  %i.j = icmp ult i64 %2, 65
  br i1 %i.j, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10358
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 4 uses
  call void @"_ZN92_$LT$block_buffer..BlockBuffer$LT$BlockSize$C$Kind$GT$$u20$as$u20$core..default..Default$GT$7default17h1cc16571f7c69110E"(ptr noalias noundef nonnull sret([65 x i8]) align 1 captures(address) dereferenceable(65) %i.k), !noalias !10358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @588, i64 32, i1 false), !noalias !10358
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !10359, !noalias !10358
  call void @llvm.experimental.noalias.scope.decl(metadata !10360)
  call void @llvm.experimental.noalias.scope.decl(metadata !10361)
  call void @llvm.experimental.noalias.scope.decl(metadata !10362)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !10363, !noalias !10364, !noundef !10 ; 3 uses
  %i.n = icmp ult i8 %i.m, 64
  call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i8 %i.m, 0
  br i1 %i.o, label %bb.c, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i"

bb.c:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i", %bb.b
  %.sroa.7.0.i.i.i = phi i64 [ %2, %bb.b ], [ %i.w, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i.i = phi ptr [ %1, %bb.b ], [ %i.x, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i" ] ; 2 uses
  %i.p = lshr i64 %.sroa.7.0.i.i.i, 6             ; 3 uses
  %i.q = and i64 %.sroa.7.0.i.i.i, -64
  %i.r = and i64 %.sroa.7.0.i.i.i, 63             ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %i.q
  %i.t = icmp eq i64 %i.p, 0
  br i1 %i.t, label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17h9ecdcc65f94f0ae4E.exit.i", label %bb.d

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i": ; preds = %bb.b
  %i.u = zext nneg i8 %i.m to i64                 ; 2 uses
  %i.v = sub nuw nsw i64 64, %i.u                 ; 3 uses
  %i.w = sub nuw i64 %2, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull readonly align 1 %1, i64 %i.v, i1 false), !alias.scope !10365, !noalias !10366
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !10367, !noalias !10368
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.k, i64 noundef range(i64 1, 0) 1), !noalias !10364
  br label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.z = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !10369, !noalias !10370, !noundef !10
  %i.aa = add i64 %i.z, %i.p
  store i64 %i.aa, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !10369, !noalias !10370
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef range(i64 1, 0) %i.p), !noalias !10371
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17h9ecdcc65f94f0ae4E.exit.i"

"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17h9ecdcc65f94f0ae4E.exit.i": ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(65) %i.k, ptr nonnull readonly align 1 %i.s, i64 %i.r, i1 false), !alias.scope !10372, !noalias !10373
  %storemerge.i.i.i = trunc nuw nsw i64 %i.r to i8
  store i8 %storemerge.i.i.i, ptr %i.l, align 8, !alias.scope !10363, !noalias !10364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull align 8 dereferenceable(112) %i.h, i64 112, i1 false), !noalias !10358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10374
  call void @"_ZN110_$LT$generic_array..GenericArray$LT$T$C$N$GT$$u20$as$u20$generic_array..sequence..GenericSequence$LT$T$GT$$GT$8generate17h6c9e262b1de4992dE"(ptr noalias noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.g), !noalias !10375
  call void @llvm.experimental.noalias.scope.decl(metadata !10376)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10377)
  call void @llvm.experimental.noalias.scope.decl(metadata !10378)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10379
  call void @"_ZN110_$LT$generic_array..GenericArray$LT$T$C$N$GT$$u20$as$u20$generic_array..sequence..GenericSequence$LT$T$GT$$GT$8generate17h6c9e262b1de4992dE"(ptr noalias noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.e), !noalias !10380
  call void @llvm.experimental.noalias.scope.decl(metadata !10381)
  call void @llvm.experimental.noalias.scope.decl(metadata !10382)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10379
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !alias.scope !10383, !noalias !10384, !noundef !10 ; 3 uses
  %i.ae = zext nneg i8 %i.ad to i64               ; 4 uses
  %i.af = icmp ult i8 %i.ad, 64
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !10385, !noalias !10386, !noundef !10
  %3 = shl i64 %i.ah, 9
  %4 = shl nuw nsw i64 %i.ae, 3
  %5 = or disjoint i64 %3, %4
  %6 = call i64 @llvm.bswap.i64(i64 %5)           ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10387)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae ; 2 uses
  store i8 -128, ptr %i.ai, align 1, !alias.scope !10388, !noalias !10389
  %i.aj = icmp eq i8 %i.ad, 63
  br i1 %i.aj, label %._crit_edge.thread.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17h9ecdcc65f94f0ae4E.exit.i"
  %7 = getelementptr i8, ptr %i.ai, i64 1
  %8 = xor i64 %i.ae, 63
  call void @llvm.memset.p0.i64(ptr align 1 %7, i8 0, i64 %8, i1 false), !alias.scope !10388, !noalias !10389
  %i.ak = xor i64 %i.ae, 56
  %i.al = icmp samesign ult i64 %i.ak, 8
  br i1 %i.al, label %._crit_edge.thread.i.i.i.i.i, label %bb.e

._crit_edge.thread.i.i.i.i.i:                     ; preds = %._crit_edge.i.i.i.i.i, %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17h9ecdcc65f94f0ae4E.exit.i"
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.ab, i64 noundef 1), !noalias !10390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10391
  call void @"_ZN110_$LT$generic_array..GenericArray$LT$T$C$N$GT$$u20$as$u20$generic_array..sequence..GenericSequence$LT$T$GT$$GT$8generate17hdf506f7d63e2b6a3E"(ptr noalias noundef nonnull sret([64 x i8]) align 1 captures(address) dereferenceable(64) %i.b), !noalias !10392
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %6, ptr %i.am, align 1, !alias.scope !10393, !noalias !10394
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(64) %i.b, i64 noundef 1), !noalias !10390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10391
  br label %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h32f878d07b5c89dbE.exit.i.i.i.i.i"

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i64 %6, ptr %i.an, align 8, !alias.scope !10395, !noalias !10396
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.ab, i64 noundef 1), !noalias !10390
  br label %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h32f878d07b5c89dbE.exit.i.i.i.i.i"

"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h32f878d07b5c89dbE.exit.i.i.i.i.i": ; preds = %bb.e, %._crit_edge.thread.i.i.i.i.i
  store i8 0, ptr %i.ac, align 8, !alias.scope !10388, !noalias !10389
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10397
  store ptr %i.ao, ptr %i.a, align 8, !noalias !10398
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10398
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10398
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 32, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10398
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 4, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i, align 8, !noalias !10398
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h18877e97783a925dE"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %i.f, ptr noundef nonnull %i.ag), !noalias !10399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !noalias !10400
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ar = load i64, ptr %i.ap, align 8, !alias.scope !10401, !noalias !10402, !noundef !10 ; 2 uses
  %i.as = load i64, ptr %i.aq, align 8, !alias.scope !10401, !noalias !10402, !noundef !10
  %i.at = icmp ult i64 %i.ar, %i.as
  br i1 %i.at, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.lr.ph.i.i.i.i.i", label %"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6digest17hc3f8b10f5a2bb962E.exit"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.lr.ph.i.i.i.i.i": ; preds = %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h32f878d07b5c89dbE.exit.i.i.i.i.i"
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.i.i.i.i.i"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.i.i.i.i.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i.i", %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.lr.ph.i.i.i.i.i"
  %i.av = phi i64 [ %i.ar, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.lr.ph.i.i.i.i.i" ], [ %i.bd, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i.i" ] ; 3 uses
  %i.aw = add nuw i64 %i.av, 1
  store i64 %i.aw, ptr %i.ap, align 8, !alias.scope !10401, !noalias !10402
  %i.ax = call { ptr, i64 } @"_ZN101_$LT$core..slice..iter..ChunksExactMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$24__iterator_get_unchecked17hc722127bb720d610E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, i64 noundef %i.av), !noalias !10403 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0      ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i.i, label %"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6digest17hc3f8b10f5a2bb962E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.i.i.i.i.i"
  %i.az = extractvalue { ptr, i64 } %i.ax, 1      ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !10401, !noalias !10402, !nonnull !10, !noundef !10
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.av
  %i.bb = load i32, ptr %i.ba, align 4, !noalias !10404, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !10405)
  call void @llvm.experimental.noalias.scope.decl(metadata !10406)
  %.not.i.i.i.i.i.i = icmp eq i64 %i.az, 4
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i.i", label %bb.g, !prof !36

bb.g:                                             ; preds = %bb.f
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17hb23ab9e23fc1a789E"(i64 noundef %i.az, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @840) #35, !noalias !10407
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i.i": ; preds = %bb.f
  %i.bc = call i32 @llvm.bswap.i32(i32 %i.bb)
  store i32 %i.bc, ptr %i.ay, align 1, !alias.scope !10408, !noalias !10409
  %i.bd = load i64, ptr %i.ap, align 8, !alias.scope !10401, !noalias !10402, !noundef !10 ; 2 uses
  %i.be = load i64, ptr %i.aq, align 8, !alias.scope !10401, !noalias !10402, !noundef !10
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.i.i.i.i.i", label %"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6digest17hc3f8b10f5a2bb962E.exit"

"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6digest17hc3f8b10f5a2bb962E.exit": ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.i.i.i.i.i", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i.i", %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h32f878d07b5c89dbE.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.e, i64 32, i1 false), !alias.scope !10410, !noalias !10411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10374
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull align 1 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10358
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %"_ZN44_$LT$D$u20$as$u20$digest..digest..Digest$GT$6digest17hc3f8b10f5a2bb962E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %0, ptr noundef nonnull align 1 dereferenceable(64) %i.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.i:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !alias.scope !10412, !noalias !10413
  br label %bb.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hdc404a107fcc5846E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10420)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10421
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !10421
  %i.b = load i64, ptr %i.a, align 8, !range !18, !noalias !10421, !noundef !10
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !19, !noalias !10421, !noundef !10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %"_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17he5e601375d4b7e41E.exit", !prof !17

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !noalias !10421
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.e, i64 %i.g) #35, !noalias !10421
  unreachable

"_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17he5e601375d4b7e41E.exit": ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !noalias !10421, !nonnull !10, !noundef !10 ; 2 uses
  %i.i = icmp ule i64 %2, %i.e
  call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10421
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !10422
  store i64 %i.e, ptr %0, align 8, !alias.scope !10420, !noalias !10423
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !10420, !noalias !10423
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !10420, !noalias !10423
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hc2d8f31570e15d01E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @581, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN53_$LT$dyn$u20$tracing_core..subscriber..Subscriber$GT$12downcast_ref17ha4eb462a15c80adfE"(ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(152) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !10, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) @582, i64 16, i1 false)
  %i.d = call { i64, ptr } %i.c(ptr noundef nonnull align 1 %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1
  %i.g = trunc nuw i64 %i.e to i1
  %.sroa.0.0 = select i1 %i.g, ptr %i.f, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 dereferenceable_or_null(8) ptr @"_ZN53_$LT$dyn$u20$tracing_core..subscriber..Subscriber$GT$12downcast_ref17ha7b6f0823a986e91E"(ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(152) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !10, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) @583, i64 16, i1 false)
  %i.d = call { i64, ptr } %i.c(ptr noundef nonnull align 1 %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %i.f = extractvalue { i64, ptr } %i.d, 1
  %i.g = trunc nuw i64 %i.e to i1
  %.sroa.0.0 = select i1 %i.g, ptr %i.f, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden noundef { i64, ptr } @"_ZN55_$LT$T$u20$as$u20$std..io..copy..BufferedReaderSpec$GT$7copy_to17h91fd8af0ec608435E"(ptr noalias nofree noundef readnone align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(64) %1) unnamed_addr #14 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @585, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.e, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #35
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden noundef { i64, ptr } @"_ZN55_$LT$T$u20$as$u20$std..io..copy..BufferedReaderSpec$GT$7copy_to17hd87293e3b2a855e1E"(ptr noalias nofree noundef readnone align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(296) %1) unnamed_addr #14 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @585, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.e, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @587) #35
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN55_$LT$W$u20$as$u20$std..io..copy..BufferedWriterSpec$GT$9copy_from17h38ed0d1b352f0781E"(ptr noalias noundef nonnull align 1 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_ZN3std2io4copy17stack_buffer_copy17h024574f5690f2cb6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 1 %0)
  ret { i64, ptr } %i.a
}

end_hunk_0
