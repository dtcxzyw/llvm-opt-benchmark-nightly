Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel-0bf7be8da7660119.nickel.eb3b3307132f046e-cgu.0?download=true
inline.NumInlined: 19446
inline.NumDeleted: 8632
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 133
begin_hunk_0_@_ZN4core5slice4sort6stable14driftsort_main17h635ad0d5ceadb7caE:bb.a
  %or.cond.i.i.i.i = or i1 %i.f, %i.g
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !46498
  %i.h = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 8) #53, !noalias !46498 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @815) #59
  unreachable

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.j = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17hd79a828948c2cea2E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.h, i64 noundef %.sroa.0.0.i20, i1 noundef zeroext %i.j)
          to label %"_ZN4core3ptr138drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h105d3cff457e872dE.exit" unwind label %"_ZN4core3ptr138drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h105d3cff457e872dE.exit21"

"_ZN4core3ptr138drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h105d3cff457e872dE.exit": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %1, 65
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17hd79a828948c2cea2E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.a, i64 noundef 256, i1 noundef zeroext %i.k)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %"_ZN4core3ptr138drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h105d3cff457e872dE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

"_ZN4core3ptr138drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h105d3cff457e872dE.exit21": ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable14driftsort_main17hd483605606183bf0E(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 21, 0) %1) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 8              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw i64 %1, %i.b                     ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 500000)
  %.sroa.0.0.i19 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c) ; 2 uses
  %.sroa.0.0.i20 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i19, i64 48) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = icmp ult i64 %.sroa.0.0.i19, 257
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl i64 %.sroa.0.0.i20, 4                ; 5 uses
  %i.f = icmp ugt i64 %i.c, 1152921504606846975
  %i.g = icmp ugt i64 %i.e, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.f, %i.g
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !46505
  %i.h = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 8) #53, !noalias !46505 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @815) #59
  unreachable

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.j = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h43c1afd21db70549E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.h, i64 noundef %.sroa.0.0.i20, i1 noundef zeroext %i.j)
          to label %"_ZN4core3ptr138drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h105d3cff457e872dE.exit" unwind label %"_ZN4core3ptr138drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h105d3cff457e872dE.exit21"

"_ZN4core3ptr138drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h105d3cff457e872dE.exit": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %1, 65
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h43c1afd21db70549E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.a, i64 noundef 256, i1 noundef zeroext %i.k)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %"_ZN4core3ptr138drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h105d3cff457e872dE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

"_ZN4core3ptr138drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h105d3cff457e872dE.exit21": ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable14driftsort_main17hdb6dbe50401fdc68E(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 21, 0) %1) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 8              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw i64 %1, %i.b                     ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 500000)
  %.sroa.0.0.i19 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c) ; 2 uses
  %.sroa.0.0.i20 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i19, i64 48) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = icmp ult i64 %.sroa.0.0.i19, 257
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = shl i64 %.sroa.0.0.i20, 4                ; 5 uses
  %i.f = icmp ugt i64 %i.c, 1152921504606846975
  %i.g = icmp ugt i64 %i.e, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.f, %i.g
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !46512
  %i.h = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 8) #53, !noalias !46512 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.noexc, label %bb.c

.noexc:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @815) #59
  unreachable

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.j = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17hab00a5bf934256fcE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.h, i64 noundef %.sroa.0.0.i20, i1 noundef zeroext %i.j)
          to label %"_ZN4core3ptr138drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h105d3cff457e872dE.exit" unwind label %"_ZN4core3ptr138drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h105d3cff457e872dE.exit21"

"_ZN4core3ptr138drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h105d3cff457e872dE.exit": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.k = icmp ult i64 %1, 65
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17hab00a5bf934256fcE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.a, i64 noundef 256, i1 noundef zeroext %i.k)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %"_ZN4core3ptr138drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h105d3cff457e872dE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

"_ZN4core3ptr138drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$$RF$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h105d3cff457e872dE.exit21": ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #53
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h43c1afd21db70549E(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 21, 0) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [66 x i8], align 1                ; 4 uses
  %i.l = alloca [528 x i8], align 8               ; 4 uses
  %i.m = udiv i64 4611686018427387904, %1
  %i.n = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.n, 0
  %i.o = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.m, %i.o         ; 2 uses
  %i.p = icmp ult i64 %1, 4097
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = lshr i64 %1, 1
  %i.s = sub nuw nsw i64 %1, %i.r
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.s, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.c ], [ %i.q, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.not5.i114 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i119 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.z, %bb.d
  %.sroa.018.0 = phi i64 [ 1, %bb.d ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.eo, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.em, %bb.z ] ; 3 uses
  %i.t = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.t, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit", label %bb.o

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit": ; preds = %bb.e
  %i.u = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46537)
  %.not.i33 = icmp ult i64 %i.u, %.sroa.01.0
  br i1 %.not.i33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hf9a2d2cd77a59bdbE.exit.i.thread117, %_ZN4core5slice4sort6shared17find_existing_run17hf9a2d2cd77a59bdbE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hf9a2d2cd77a59bdbE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit"
  br i1 %4, label %bb.m, label %bb.l

bb.g:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit"
  %i.w = icmp ult i64 %i.u, 2
  br i1 %i.w, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val10.i = load i32, ptr %i.x, align 8, !alias.scope !46537, !noalias !46538, !noundef !34 ; 3 uses
  %.val11.i = load i32, ptr %i.v, align 8, !alias.scope !46537, !noalias !46538, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46539
  store i32 %.val10.i, ptr %i.b, align 4, !noalias !46539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46539
  store i32 %.val11.i, ptr %i.a, align 4, !noalias !46539
  %i.y = call noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a), !noalias !46539
  %i.z = icmp slt i8 %i.y, 0                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46539
  %.not83 = icmp eq i64 %i.u, 2                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader51

.preheader51:                                     ; preds = %bb.h
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17hf9a2d2cd77a59bdbE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.h
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17hf9a2d2cd77a59bdbE.exit.i.thread117, label %.lr.ph70

.lr.ph:                                           ; preds = %.preheader51, %bb.i
  %.val9.i = phi i32 [ %.val8.i, %bb.i ], [ %.val10.i, %.preheader51 ]
  %.sroa.01.0.i.i66 = phi i64 [ %i.ad, %bb.i ], [ 2, %.preheader51 ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.01.0.i.i66
  %5 = add i64 %.sroa.01.0.i.i66, -1
  %6 = icmp ult i64 %5, %i.u
  call void @llvm.assume(i1 %6)
  %.val8.i = load i32, ptr %i.aa, align 8, !alias.scope !46537, !noalias !46538, !noundef !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !46539
  store i32 %.val8.i, ptr %i.d, align 4, !noalias !46539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46539
  store i32 %.val9.i, ptr %i.c, align 4, !noalias !46539
  %i.ab = call noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c), !noalias !46539
  %i.ac = icmp slt i8 %i.ab, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46539
  br i1 %i.ac, label %_ZN4core5slice4sort6shared17find_existing_run17hf9a2d2cd77a59bdbE.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ad = add nuw i64 %.sroa.01.0.i.i66, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.u
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hf9a2d2cd77a59bdbE.exit.i, label %.lr.ph

.lr.ph70:                                         ; preds = %.preheader, %bb.j
  %.val7.i = phi i32 [ %.val.i, %bb.j ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i69 = phi i64 [ %i.ah, %bb.j ], [ 2, %.preheader ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.01.1.i.i69
  %7 = add i64 %.sroa.01.1.i.i69, -1
  %8 = icmp ult i64 %7, %i.u
  call void @llvm.assume(i1 %8)
  %.val.i = load i32, ptr %i.ae, align 8, !alias.scope !46537, !noalias !46538, !noundef !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !46539
  store i32 %.val.i, ptr %i.f, align 4, !noalias !46539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !46539
  store i32 %.val7.i, ptr %i.e, align 4, !noalias !46539
  %i.af = call noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e), !noalias !46539
  %i.ag = icmp slt i8 %i.af, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !46539
  br i1 %i.ag, label %bb.j, label %_ZN4core5slice4sort6shared17find_existing_run17hf9a2d2cd77a59bdbE.exit.i

bb.j:                                             ; preds = %.lr.ph70
  %i.ah = add nuw i64 %.sroa.01.1.i.i69, 1        ; 2 uses
  %exitcond96.not = icmp eq i64 %i.ah, %i.u
  br i1 %exitcond96.not, label %_ZN4core5slice4sort6shared17find_existing_run17hf9a2d2cd77a59bdbE.exit.i, label %.lr.ph70

_ZN4core5slice4sort6shared17find_existing_run17hf9a2d2cd77a59bdbE.exit.i: ; preds = %bb.i, %.lr.ph, %bb.j, %.lr.ph70
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i69, %.lr.ph70 ], [ %i.u, %bb.j ], [ %.sroa.01.0.i.i66, %.lr.ph ], [ %i.u, %bb.i ] ; 6 uses
  %i.ai = icmp ule i64 %.sroa.0.0.i.i, %i.u
  call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.f, label %bb.k

_ZN4core5slice4sort6shared17find_existing_run17hf9a2d2cd77a59bdbE.exit.i.thread117: ; preds = %.preheader
  br i1 %.not5.i119, label %bb.f, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hf9a2d2cd77a59bdbE.exit.i.thread: ; preds = %.preheader51
  br i1 %.not5.i114, label %bb.f, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"

bb.k:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hf9a2d2cd77a59bdbE.exit.i
  br i1 %i.z, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"

bb.l:                                             ; preds = %bb.f
  %.sroa.0.0.i41 = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %.sroa.01.0)
  %i.aj = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he4947e342a86c30eE.exit

bb.m:                                             ; preds = %bb.f
  %.sroa.0.0.i40 = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 32) ; 2 uses
  call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h52d7158ddb3b2b0dE(ptr noalias noundef nonnull align 8 %i.v, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he4947e342a86c30eE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i39
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit", label %.lr.ph.i.i39.epil.preheader

.lr.ph.i.i39.epil.preheader:                      ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa", %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.bo, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.aw to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.am = xor i64 %.sroa.0.014.i.i.epil.init, -1
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.014.i.i.epil.init ; 3 uses
  %i.ao = getelementptr [16 x i8], ptr %i.ax, i64 %i.am ; 3 uses
  %i.ap = load i32, ptr %i.an, align 8, !alias.scope !46540, !noalias !46541, !noundef !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !46540, !noalias !46541, !nonnull !34, !align !41, !noundef !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !46542, !noalias !46538
  store i32 %i.ap, ptr %i.ao, align 8, !alias.scope !46543, !noalias !46544
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !alias.scope !46543, !noalias !46544
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit": ; preds = %.lr.ph.i.i39.epil.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa", %_ZN4core5slice4sort6shared17find_existing_run17hf9a2d2cd77a59bdbE.exit.i.thread, %bb.g, %bb.n, %bb.k
  %.sroa.0.0.i.i4649 = phi i64 [ %i.u, %bb.g ], [ %.sroa.0.0.i.i, %bb.k ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hf9a2d2cd77a59bdbE.exit.i.thread ], [ %.sroa.0.0.i.i115122126, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa" ], [ %.sroa.0.0.i.i115122126, %.lr.ph.i.i39.epil.preheader ]
  %i.at = shl i64 %.sroa.0.0.i.i4649, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17he4947e342a86c30eE.exit

bb.n:                                             ; preds = %bb.k
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46545), !noalias !46538
  call void @llvm.experimental.noalias.scope.decl(metadata !46546), !noalias !46538
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hf9a2d2cd77a59bdbE.exit.i.thread117, %bb.n
  %i.aw = phi i64 [ %i.av, %bb.n ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hf9a2d2cd77a59bdbE.exit.i.thread117 ] ; 4 uses
  %.sroa.0.0.i.i115122126 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hf9a2d2cd77a59bdbE.exit.i.thread117 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.0.i.i115122126 ; 3 uses
  %xtraiter = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.aw, 1
  br i1 %i.ay, label %.lr.ph.i.i39.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.aw, 9223372036854775806
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39, %.lr.ph.preheader.i.i.new
  %.sroa.0.014.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.bo, %.lr.ph.i.i39 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i39 ]
  %i.az = xor i64 %.sroa.0.014.i.i, -1
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.014.i.i ; 3 uses
  %i.bb = getelementptr [16 x i8], ptr %i.ax, i64 %i.az ; 3 uses
  %i.bc = load i32, ptr %i.ba, align 8, !alias.scope !46540, !noalias !46541, !noundef !34
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !46540, !noalias !46541, !nonnull !34, !align !41, !noundef !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !alias.scope !46542, !noalias !46538
  store i32 %i.bc, ptr %i.bb, align 8, !alias.scope !46543, !noalias !46544
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !46543, !noalias !46544
  %i.bg = xor i64 %.sroa.0.014.i.i, -2
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.014.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bj = getelementptr [16 x i8], ptr %i.ax, i64 %i.bg ; 3 uses
  %i.bk = load i32, ptr %i.bi, align 8, !alias.scope !46540, !noalias !46541, !noundef !34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !46540, !noalias !46541, !nonnull !34, !align !41, !noundef !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !alias.scope !46542, !noalias !46538
  store i32 %i.bk, ptr %i.bj, align 8, !alias.scope !46543, !noalias !46544
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !alias.scope !46543, !noalias !46544
  %i.bo = add nuw nsw i64 %.sroa.0.014.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa", label %.lr.ph.i.i39

_ZN4core5slice4sort6stable5drift10create_run17he4947e342a86c30eE.exit: ; preds = %bb.l, %bb.m, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit" ], [ %i.al, %bb.m ], [ %i.aj, %bb.l ] ; 2 uses
  %i.bp = lshr i64 %.sroa.018.0, 1
  %i.bq = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.br = sub i64 %factor, %i.bp
  %i.bs = add i64 %i.bq, %factor
  %i.bt = mul i64 %i.br, %.sroa.0.0
  %i.bu = mul i64 %i.bs, %.sroa.0.0
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bv, i1 false)
  %i.bx = trunc nuw nsw i64 %i.bw to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZN4core5slice4sort6stable5drift10create_run17he4947e342a86c30eE.exit
  %.sroa.026.0 = phi i8 [ %i.bx, %_ZN4core5slice4sort6stable5drift10create_run17he4947e342a86c30eE.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17he4947e342a86c30eE.exit ], [ 1, %bb.e ] ; 2 uses
  %i.by = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.by, label %.lr.ph76, label %._crit_edge

.lr.ph76:                                         ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph76, %_ZN4core5slice4sort6stable5drift13logical_merge17h7a80a1e57c62d371E.exit
  %.sroa.02.175 = phi i64 [ %.sroa.02.0, %.lr.ph76 ], [ %i.ca, %_ZN4core5slice4sort6stable5drift13logical_merge17h7a80a1e57c62d371E.exit ] ; 2 uses
  %.sroa.018.174 = phi i64 [ %.sroa.018.0, %.lr.ph76 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h7a80a1e57c62d371E.exit ] ; 4 uses
  %i.ca = add i64 %.sroa.02.175, -1               ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noundef !34
  %.not29 = icmp ult i8 %i.cc, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h7a80a1e57c62d371E.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.174, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h7a80a1e57c62d371E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.175, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h7a80a1e57c62d371E.exit ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.ce, align 1
  br i1 %i.t, label %bb.z, label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ca
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !34 ; 3 uses
  %i.ch = lshr i64 %i.cg, 1                       ; 8 uses
  %i.ci = lshr i64 %.sroa.018.174, 1              ; 6 uses
  %i.cj = add nuw i64 %i.ch, %i.ci                ; 4 uses
  %i.ck = sub i64 %.sroa.09.0, %i.cj
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ck ; 6 uses
  %i.cm = icmp ugt i64 %i.cj, %3
  %i.cn = trunc i64 %.sroa.018.174 to i1
  %i.co = or i64 %i.cg, %.sroa.018.174
  %i.cp = trunc i64 %i.co to i1
  %or.cond3.i = or i1 %i.cm, %i.cp
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cq = trunc i64 %i.cg to i1
  br i1 %i.cq, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.cr = shl i64 %i.cj, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h7a80a1e57c62d371E.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.cn, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit35"

bb.u:                                             ; preds = %bb.r
  %i.cs = or i64 %i.ch, 1
  %i.ct = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h52d7158ddb3b2b0dE(ptr noalias noundef nonnull align 8 %i.cl, i64 noundef %i.ch, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit35": ; preds = %bb.t
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.ch
  %i.cy = or i64 %i.ci, 1
  %i.cz = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cy, i1 true)
  %i.da = trunc nuw nsw i64 %i.cz to i32
end_hunk_0
begin_hunk_1_@_ZN4core5slice4sort6stable5drift4sort17h43c1afd21db70549E:bb.a
bb.v:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit35", %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !46547)
  call void @llvm.experimental.noalias.scope.decl(metadata !46548)
  %i.dd = icmp eq i64 %i.ch, 0
  %i.de = icmp eq i64 %i.ci, 0
  %or.cond.i = or i1 %i.de, %i.dd
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hd1360358ecbb833fE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.i.i36 = call i64 @llvm.umin.i64(i64 %i.ci, i64 range(i64 0, -9223372036854775808) %i.ch) ; 2 uses
  %i.df = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.df, label %_ZN4core5slice4sort6stable5merge5merge17hd1360358ecbb833fE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.ch ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ch, %i.ci  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dg, ptr %i.cl
  %i.dh = shl i64 %.sroa.0.0.i.i36, 4             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.dh, i1 false), !alias.scope !46549
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %i.dh ; 4 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.x, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.dp, %.noexc.i ], [ %i.dg, %bb.x ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.dr, %.noexc.i ], [ %i.di, %bb.x ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dm, %.noexc.i ], [ %i.bz, %bb.x ]
  %i.dj = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -16 ; 3 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -16 ; 3 uses
  %.val.i.i = load i32, ptr %i.dk, align 8, !alias.scope !46548, !noalias !46550, !noundef !34
  %.val10.i.i = load i32, ptr %i.dj, align 8, !alias.scope !46547, !noalias !46551, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !46552
  store i32 %.val.i.i, ptr %i.j, align 4, !noalias !46552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !46552
  store i32 %.val10.i.i, ptr %i.i, align 4, !noalias !46552
  %i.dl = invoke noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.j, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !46549 ; 2 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.dm = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16 ; 2 uses
  %i.dn = icmp sgt i8 %i.dl, -1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !46552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !46552
  %..i.i = select i1 %i.dn, ptr %i.dk, ptr %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !46549, !noalias !46553
  %i.do = zext i1 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.do ; 3 uses
  %.lobit.i.i = lshr i8 %i.dl, 7
  %i.dq = zext nneg i8 %.lobit.i.i to i64
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.dq ; 3 uses
  %i.ds = icmp eq ptr %i.dp, %i.cl
  %i.dt = icmp eq ptr %i.dr, %2
  %or.cond.i.i = select i1 %i.ds, i1 true, i1 %i.dt
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h51585bef969ef0caE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.x, %.noexc22.i
  %.sroa.13.1.i = phi ptr [ %i.ea, %.noexc22.i ], [ %i.cl, %bb.x ] ; 3 uses
  %.sroa.0.0.i38 = phi ptr [ %i.dx, %.noexc22.i ], [ %2, %bb.x ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dz, %.noexc22.i ], [ %i.dg, %bb.x ] ; 3 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.02.i.i, align 8, !alias.scope !46547, !noalias !46554, !noundef !34
  %.val.i19.i = load i32, ptr %.sroa.0.0.i38, align 8, !alias.scope !46548, !noalias !46555, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !46556
  store i32 %.sroa.0.0.val.i.i, ptr %i.h, align 4, !noalias !46556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !46556
  store i32 %.val.i19.i, ptr %i.g, align 4, !noalias !46556
  %i.du = invoke noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.h, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g)
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !46549 ; 2 uses

.noexc22.i:                                       ; preds = %.lr.ph.i.i
  %i.dv = icmp sgt i8 %i.du, -1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !46556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !46556
  %spec.select.i.i = select i1 %i.dv, ptr %.sroa.0.0.i38, ptr %.sroa.0.02.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !alias.scope !46549, !noalias !46557
  %i.dw = zext i1 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i38, i64 %i.dw ; 3 uses
  %.lobit.i20.i = lshr i8 %i.du, 7
  %i.dy = zext nneg i8 %.lobit.i20.i to i64
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 16 ; 2 uses
  %i.eb = icmp ne ptr %i.dx, %i.di
  %i.ec = icmp ne ptr %i.dz, %i.bz
  %or.cond.i21.i = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h51585bef969ef0caE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h51585bef969ef0caE.exit.i": ; preds = %.noexc22.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.dp, %.noexc.i ], [ %i.ea, %.noexc22.i ]
  %.sroa.7.2.i = phi ptr [ %i.dr, %.noexc.i ], [ %i.di, %.noexc22.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dx, %.noexc22.i ] ; 2 uses
  %i.ed = ptrtoint ptr %.sroa.7.2.i to i64
  %i.ee = ptrtoint ptr %.sroa.0.3.i to i64
  %i.ef = sub nuw i64 %i.ed, %i.ee
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.ef, i1 false), !alias.scope !46549, !noalias !46558
  br label %_ZN4core5slice4sort6stable5merge5merge17hd1360358ecbb833fE.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.di, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.eg = ptrtoint ptr %.sroa.7.1.i to i64
  %i.eh = ptrtoint ptr %.sroa.0.2.i to i64
  %i.ei = sub nuw i64 %i.eg, %i.eh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.ei, i1 false), !alias.scope !46549, !noalias !46559
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17hd1360358ecbb833fE.exit: ; preds = %bb.v, %bb.w, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h51585bef969ef0caE.exit.i"
  %i.ej = shl i64 %i.cj, 1
  %i.ek = or disjoint i64 %i.ej, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h7a80a1e57c62d371E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h7a80a1e57c62d371E.exit: ; preds = %bb.s, %_ZN4core5slice4sort6stable5merge5merge17hd1360358ecbb833fE.exit
  %.sroa.0.0.i = phi i64 [ %i.ek, %_ZN4core5slice4sort6stable5merge5merge17hd1360358ecbb833fE.exit ], [ %i.cr, %bb.s ] ; 2 uses
  %i.el = icmp ugt i64 %i.ca, 1
  br i1 %i.el, label %bb.p, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.em = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.en = lshr i64 %.sroa.023.0, 1
  %i.eo = add i64 %i.en, %.sroa.09.0
  br label %bb.e

bb.aa:                                            ; preds = %._crit_edge
  %i.ep = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ep, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eq = or i64 %1, 1
  %i.er = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.eq, i1 true)
  %i.es = trunc nuw nsw i64 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 1
  %i.eu = xor i32 %i.et, 126
  call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h52d7158ddb3b2b0dE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.eu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h5335fe279afbb54cE(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 21, 0) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [66 x i8], align 1                ; 4 uses
  %i.l = alloca [528 x i8], align 8               ; 4 uses
  %i.m = udiv i64 4611686018427387904, %1
  %i.n = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.n, 0
  %i.o = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.m, %i.o         ; 2 uses
  %i.p = icmp ult i64 %1, 4097
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = lshr i64 %1, 1
  %i.s = sub nuw nsw i64 %1, %i.r
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.s, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.c ], [ %i.q, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.not5.i114 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i119 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.z, %bb.d
  %.sroa.018.0 = phi i64 [ 1, %bb.d ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.eo, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.em, %bb.z ] ; 3 uses
  %i.t = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.t, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit", label %bb.o

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit": ; preds = %bb.e
  %i.u = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46584)
  %.not.i33 = icmp ult i64 %i.u, %.sroa.01.0
  br i1 %.not.i33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hfa9cfea20f7709cbE.exit.i.thread117, %_ZN4core5slice4sort6shared17find_existing_run17hfa9cfea20f7709cbE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17hfa9cfea20f7709cbE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit"
  br i1 %4, label %bb.m, label %bb.l

bb.g:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit"
  %i.w = icmp ult i64 %i.u, 2
  br i1 %i.w, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val10.i = load i32, ptr %i.x, align 8, !alias.scope !46584, !noalias !46585, !noundef !34 ; 3 uses
  %.val11.i = load i32, ptr %i.v, align 8, !alias.scope !46584, !noalias !46585, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46586
  store i32 %.val10.i, ptr %i.b, align 4, !noalias !46586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46586
  store i32 %.val11.i, ptr %i.a, align 4, !noalias !46586
  %i.y = call noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a), !noalias !46586
  %i.z = icmp slt i8 %i.y, 0                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46586
  %.not83 = icmp eq i64 %i.u, 2                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader51

.preheader51:                                     ; preds = %bb.h
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17hfa9cfea20f7709cbE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.h
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17hfa9cfea20f7709cbE.exit.i.thread117, label %.lr.ph70

.lr.ph:                                           ; preds = %.preheader51, %bb.i
  %.val9.i = phi i32 [ %.val8.i, %bb.i ], [ %.val10.i, %.preheader51 ]
  %.sroa.01.0.i.i66 = phi i64 [ %i.ad, %bb.i ], [ 2, %.preheader51 ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.01.0.i.i66
  %5 = add i64 %.sroa.01.0.i.i66, -1
  %6 = icmp ult i64 %5, %i.u
  call void @llvm.assume(i1 %6)
  %.val8.i = load i32, ptr %i.aa, align 8, !alias.scope !46584, !noalias !46585, !noundef !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !46586
  store i32 %.val8.i, ptr %i.d, align 4, !noalias !46586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46586
  store i32 %.val9.i, ptr %i.c, align 4, !noalias !46586
  %i.ab = call noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c), !noalias !46586
  %i.ac = icmp slt i8 %i.ab, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46586
  br i1 %i.ac, label %_ZN4core5slice4sort6shared17find_existing_run17hfa9cfea20f7709cbE.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ad = add nuw i64 %.sroa.01.0.i.i66, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.u
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hfa9cfea20f7709cbE.exit.i, label %.lr.ph

.lr.ph70:                                         ; preds = %.preheader, %bb.j
  %.val7.i = phi i32 [ %.val.i, %bb.j ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i69 = phi i64 [ %i.ah, %bb.j ], [ 2, %.preheader ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.01.1.i.i69
  %7 = add i64 %.sroa.01.1.i.i69, -1
  %8 = icmp ult i64 %7, %i.u
  call void @llvm.assume(i1 %8)
  %.val.i = load i32, ptr %i.ae, align 8, !alias.scope !46584, !noalias !46585, !noundef !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !46586
  store i32 %.val.i, ptr %i.f, align 4, !noalias !46586
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !46586
  store i32 %.val7.i, ptr %i.e, align 4, !noalias !46586
  %i.af = call noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e), !noalias !46586
  %i.ag = icmp slt i8 %i.af, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46586
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !46586
  br i1 %i.ag, label %bb.j, label %_ZN4core5slice4sort6shared17find_existing_run17hfa9cfea20f7709cbE.exit.i

bb.j:                                             ; preds = %.lr.ph70
  %i.ah = add nuw i64 %.sroa.01.1.i.i69, 1        ; 2 uses
  %exitcond96.not = icmp eq i64 %i.ah, %i.u
  br i1 %exitcond96.not, label %_ZN4core5slice4sort6shared17find_existing_run17hfa9cfea20f7709cbE.exit.i, label %.lr.ph70

_ZN4core5slice4sort6shared17find_existing_run17hfa9cfea20f7709cbE.exit.i: ; preds = %bb.i, %.lr.ph, %bb.j, %.lr.ph70
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i69, %.lr.ph70 ], [ %i.u, %bb.j ], [ %.sroa.01.0.i.i66, %.lr.ph ], [ %i.u, %bb.i ] ; 6 uses
  %i.ai = icmp ule i64 %.sroa.0.0.i.i, %i.u
  call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.f, label %bb.k

_ZN4core5slice4sort6shared17find_existing_run17hfa9cfea20f7709cbE.exit.i.thread117: ; preds = %.preheader
  br i1 %.not5.i119, label %bb.f, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17hfa9cfea20f7709cbE.exit.i.thread: ; preds = %.preheader51
  br i1 %.not5.i114, label %bb.f, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"

bb.k:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hfa9cfea20f7709cbE.exit.i
  br i1 %i.z, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"

bb.l:                                             ; preds = %bb.f
  %.sroa.0.0.i41 = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %.sroa.01.0)
  %i.aj = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h59c1682465ae3158E.exit

bb.m:                                             ; preds = %bb.f
  %.sroa.0.0.i40 = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 32) ; 2 uses
  call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h675d37bb7aa17db9E(ptr noalias noundef nonnull align 8 %i.v, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h59c1682465ae3158E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i39
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit", label %.lr.ph.i.i39.epil.preheader

.lr.ph.i.i39.epil.preheader:                      ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa", %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.bo, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.aw to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.am = xor i64 %.sroa.0.014.i.i.epil.init, -1
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.014.i.i.epil.init ; 3 uses
  %i.ao = getelementptr [16 x i8], ptr %i.ax, i64 %i.am ; 3 uses
  %i.ap = load i32, ptr %i.an, align 8, !alias.scope !46587, !noalias !46588, !noundef !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !46587, !noalias !46588, !nonnull !34, !align !41, !noundef !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !46589, !noalias !46585
  store i32 %i.ap, ptr %i.ao, align 8, !alias.scope !46590, !noalias !46591
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !alias.scope !46590, !noalias !46591
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit": ; preds = %.lr.ph.i.i39.epil.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa", %_ZN4core5slice4sort6shared17find_existing_run17hfa9cfea20f7709cbE.exit.i.thread, %bb.g, %bb.n, %bb.k
  %.sroa.0.0.i.i4649 = phi i64 [ %i.u, %bb.g ], [ %.sroa.0.0.i.i, %bb.k ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hfa9cfea20f7709cbE.exit.i.thread ], [ %.sroa.0.0.i.i115122126, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa" ], [ %.sroa.0.0.i.i115122126, %.lr.ph.i.i39.epil.preheader ]
  %i.at = shl i64 %.sroa.0.0.i.i4649, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h59c1682465ae3158E.exit

bb.n:                                             ; preds = %bb.k
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46592), !noalias !46585
  call void @llvm.experimental.noalias.scope.decl(metadata !46593), !noalias !46585
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hfa9cfea20f7709cbE.exit.i.thread117, %bb.n
  %i.aw = phi i64 [ %i.av, %bb.n ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17hfa9cfea20f7709cbE.exit.i.thread117 ] ; 4 uses
  %.sroa.0.0.i.i115122126 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17hfa9cfea20f7709cbE.exit.i.thread117 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.0.i.i115122126 ; 3 uses
  %xtraiter = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.aw, 1
  br i1 %i.ay, label %.lr.ph.i.i39.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.aw, 9223372036854775806
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39, %.lr.ph.preheader.i.i.new
  %.sroa.0.014.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.bo, %.lr.ph.i.i39 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i39 ]
  %i.az = xor i64 %.sroa.0.014.i.i, -1
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.014.i.i ; 3 uses
  %i.bb = getelementptr [16 x i8], ptr %i.ax, i64 %i.az ; 3 uses
  %i.bc = load i32, ptr %i.ba, align 8, !alias.scope !46587, !noalias !46588, !noundef !34
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !46587, !noalias !46588, !nonnull !34, !align !41, !noundef !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !alias.scope !46589, !noalias !46585
  store i32 %i.bc, ptr %i.bb, align 8, !alias.scope !46590, !noalias !46591
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !46590, !noalias !46591
  %i.bg = xor i64 %.sroa.0.014.i.i, -2
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.014.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bj = getelementptr [16 x i8], ptr %i.ax, i64 %i.bg ; 3 uses
  %i.bk = load i32, ptr %i.bi, align 8, !alias.scope !46587, !noalias !46588, !noundef !34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !46587, !noalias !46588, !nonnull !34, !align !41, !noundef !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !alias.scope !46589, !noalias !46585
  store i32 %i.bk, ptr %i.bj, align 8, !alias.scope !46590, !noalias !46591
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !alias.scope !46590, !noalias !46591
  %i.bo = add nuw nsw i64 %.sroa.0.014.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa", label %.lr.ph.i.i39

_ZN4core5slice4sort6stable5drift10create_run17h59c1682465ae3158E.exit: ; preds = %bb.l, %bb.m, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit" ], [ %i.al, %bb.m ], [ %i.aj, %bb.l ] ; 2 uses
  %i.bp = lshr i64 %.sroa.018.0, 1
  %i.bq = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.br = sub i64 %factor, %i.bp
  %i.bs = add i64 %i.bq, %factor
  %i.bt = mul i64 %i.br, %.sroa.0.0
  %i.bu = mul i64 %i.bs, %.sroa.0.0
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bv, i1 false)
  %i.bx = trunc nuw nsw i64 %i.bw to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZN4core5slice4sort6stable5drift10create_run17h59c1682465ae3158E.exit
  %.sroa.026.0 = phi i8 [ %i.bx, %_ZN4core5slice4sort6stable5drift10create_run17h59c1682465ae3158E.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h59c1682465ae3158E.exit ], [ 1, %bb.e ] ; 2 uses
  %i.by = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.by, label %.lr.ph76, label %._crit_edge

.lr.ph76:                                         ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph76, %_ZN4core5slice4sort6stable5drift13logical_merge17he469a86e2eecf00aE.exit
  %.sroa.02.175 = phi i64 [ %.sroa.02.0, %.lr.ph76 ], [ %i.ca, %_ZN4core5slice4sort6stable5drift13logical_merge17he469a86e2eecf00aE.exit ] ; 2 uses
  %.sroa.018.174 = phi i64 [ %.sroa.018.0, %.lr.ph76 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17he469a86e2eecf00aE.exit ] ; 4 uses
  %i.ca = add i64 %.sroa.02.175, -1               ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noundef !34
  %.not29 = icmp ult i8 %i.cc, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17he469a86e2eecf00aE.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.174, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17he469a86e2eecf00aE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.175, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17he469a86e2eecf00aE.exit ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.ce, align 1
  br i1 %i.t, label %bb.z, label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ca
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !34 ; 3 uses
  %i.ch = lshr i64 %i.cg, 1                       ; 8 uses
  %i.ci = lshr i64 %.sroa.018.174, 1              ; 6 uses
  %i.cj = add nuw i64 %i.ch, %i.ci                ; 4 uses
  %i.ck = sub i64 %.sroa.09.0, %i.cj
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ck ; 6 uses
  %i.cm = icmp ugt i64 %i.cj, %3
  %i.cn = trunc i64 %.sroa.018.174 to i1
  %i.co = or i64 %i.cg, %.sroa.018.174
  %i.cp = trunc i64 %i.co to i1
  %or.cond3.i = or i1 %i.cm, %i.cp
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cq = trunc i64 %i.cg to i1
  br i1 %i.cq, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.cr = shl i64 %i.cj, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17he469a86e2eecf00aE.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.cn, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit35"

bb.u:                                             ; preds = %bb.r
  %i.cs = or i64 %i.ch, 1
  %i.ct = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h675d37bb7aa17db9E(ptr noalias noundef nonnull align 8 %i.cl, i64 noundef %i.ch, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit35": ; preds = %bb.t
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.ch
  %i.cy = or i64 %i.ci, 1
  %i.cz = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cy, i1 true)
  %i.da = trunc nuw nsw i64 %i.cz to i32
end_hunk_1
begin_hunk_2_@_ZN4core5slice4sort6stable5drift4sort17h5335fe279afbb54cE:bb.a
bb.v:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit35", %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !46594)
  call void @llvm.experimental.noalias.scope.decl(metadata !46595)
  %i.dd = icmp eq i64 %i.ch, 0
  %i.de = icmp eq i64 %i.ci, 0
  %or.cond.i = or i1 %i.de, %i.dd
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h1f4971d8764abdf2E.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.i.i36 = call i64 @llvm.umin.i64(i64 %i.ci, i64 range(i64 0, -9223372036854775808) %i.ch) ; 2 uses
  %i.df = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.df, label %_ZN4core5slice4sort6stable5merge5merge17h1f4971d8764abdf2E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.ch ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ch, %i.ci  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dg, ptr %i.cl
  %i.dh = shl i64 %.sroa.0.0.i.i36, 4             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.dh, i1 false), !alias.scope !46596
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %i.dh ; 4 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.x, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.dp, %.noexc.i ], [ %i.dg, %bb.x ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.dr, %.noexc.i ], [ %i.di, %bb.x ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dm, %.noexc.i ], [ %i.bz, %bb.x ]
  %i.dj = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -16 ; 3 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -16 ; 3 uses
  %.val.i.i = load i32, ptr %i.dk, align 8, !alias.scope !46595, !noalias !46597, !noundef !34
  %.val10.i.i = load i32, ptr %i.dj, align 8, !alias.scope !46594, !noalias !46598, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !46599
  store i32 %.val.i.i, ptr %i.j, align 4, !noalias !46599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !46599
  store i32 %.val10.i.i, ptr %i.i, align 4, !noalias !46599
  %i.dl = invoke noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.j, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !46596 ; 2 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.dm = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16 ; 2 uses
  %i.dn = icmp sgt i8 %i.dl, -1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !46599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !46599
  %..i.i = select i1 %i.dn, ptr %i.dk, ptr %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !46596, !noalias !46600
  %i.do = zext i1 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.do ; 3 uses
  %.lobit.i.i = lshr i8 %i.dl, 7
  %i.dq = zext nneg i8 %.lobit.i.i to i64
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.dq ; 3 uses
  %i.ds = icmp eq ptr %i.dp, %i.cl
  %i.dt = icmp eq ptr %i.dr, %2
  %or.cond.i.i = select i1 %i.ds, i1 true, i1 %i.dt
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha0391f1d2337f36cE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.x, %.noexc22.i
  %.sroa.13.1.i = phi ptr [ %i.ea, %.noexc22.i ], [ %i.cl, %bb.x ] ; 3 uses
  %.sroa.0.0.i38 = phi ptr [ %i.dx, %.noexc22.i ], [ %2, %bb.x ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dz, %.noexc22.i ], [ %i.dg, %bb.x ] ; 3 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.02.i.i, align 8, !alias.scope !46594, !noalias !46601, !noundef !34
  %.val.i19.i = load i32, ptr %.sroa.0.0.i38, align 8, !alias.scope !46595, !noalias !46602, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !46603
  store i32 %.sroa.0.0.val.i.i, ptr %i.h, align 4, !noalias !46603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !46603
  store i32 %.val.i19.i, ptr %i.g, align 4, !noalias !46603
  %i.du = invoke noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.h, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g)
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !46596 ; 2 uses

.noexc22.i:                                       ; preds = %.lr.ph.i.i
  %i.dv = icmp sgt i8 %i.du, -1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !46603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !46603
  %spec.select.i.i = select i1 %i.dv, ptr %.sroa.0.0.i38, ptr %.sroa.0.02.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !alias.scope !46596, !noalias !46604
  %i.dw = zext i1 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i38, i64 %i.dw ; 3 uses
  %.lobit.i20.i = lshr i8 %i.du, 7
  %i.dy = zext nneg i8 %.lobit.i20.i to i64
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 16 ; 2 uses
  %i.eb = icmp ne ptr %i.dx, %i.di
  %i.ec = icmp ne ptr %i.dz, %i.bz
  %or.cond.i21.i = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha0391f1d2337f36cE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha0391f1d2337f36cE.exit.i": ; preds = %.noexc22.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.dp, %.noexc.i ], [ %i.ea, %.noexc22.i ]
  %.sroa.7.2.i = phi ptr [ %i.dr, %.noexc.i ], [ %i.di, %.noexc22.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dx, %.noexc22.i ] ; 2 uses
  %i.ed = ptrtoint ptr %.sroa.7.2.i to i64
  %i.ee = ptrtoint ptr %.sroa.0.3.i to i64
  %i.ef = sub nuw i64 %i.ed, %i.ee
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.ef, i1 false), !alias.scope !46596, !noalias !46605
  br label %_ZN4core5slice4sort6stable5merge5merge17h1f4971d8764abdf2E.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.di, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.eg = ptrtoint ptr %.sroa.7.1.i to i64
  %i.eh = ptrtoint ptr %.sroa.0.2.i to i64
  %i.ei = sub nuw i64 %i.eg, %i.eh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.ei, i1 false), !alias.scope !46596, !noalias !46606
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17h1f4971d8764abdf2E.exit: ; preds = %bb.v, %bb.w, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17ha0391f1d2337f36cE.exit.i"
  %i.ej = shl i64 %i.cj, 1
  %i.ek = or disjoint i64 %i.ej, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17he469a86e2eecf00aE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17he469a86e2eecf00aE.exit: ; preds = %bb.s, %_ZN4core5slice4sort6stable5merge5merge17h1f4971d8764abdf2E.exit
  %.sroa.0.0.i = phi i64 [ %i.ek, %_ZN4core5slice4sort6stable5merge5merge17h1f4971d8764abdf2E.exit ], [ %i.cr, %bb.s ] ; 2 uses
  %i.el = icmp ugt i64 %i.ca, 1
  br i1 %i.el, label %bb.p, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.em = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.en = lshr i64 %.sroa.023.0, 1
  %i.eo = add i64 %i.en, %.sroa.09.0
  br label %bb.e

bb.aa:                                            ; preds = %._crit_edge
  %i.ep = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ep, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eq = or i64 %1, 1
  %i.er = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.eq, i1 true)
  %i.es = trunc nuw nsw i64 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 1
  %i.eu = xor i32 %i.et, 126
  call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h675d37bb7aa17db9E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.eu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h6258e43d14f263dfE(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 21, 0) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [66 x i8], align 1                ; 4 uses
  %i.l = alloca [528 x i8], align 8               ; 4 uses
  %i.m = udiv i64 4611686018427387904, %1
  %i.n = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.n, 0
  %i.o = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.m, %i.o         ; 2 uses
  %i.p = icmp ult i64 %1, 4097
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = lshr i64 %1, 1
  %i.s = sub nuw nsw i64 %1, %i.r
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.s, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.c ], [ %i.q, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.not5.i114 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i119 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.z, %bb.d
  %.sroa.018.0 = phi i64 [ 1, %bb.d ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.eo, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.em, %bb.z ] ; 3 uses
  %i.t = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.t, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit", label %bb.o

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit": ; preds = %bb.e
  %i.u = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46631)
  %.not.i33 = icmp ult i64 %i.u, %.sroa.01.0
  br i1 %.not.i33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h4b4c93f41e1903f6E.exit.i.thread117, %_ZN4core5slice4sort6shared17find_existing_run17h4b4c93f41e1903f6E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h4b4c93f41e1903f6E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit"
  br i1 %4, label %bb.m, label %bb.l

bb.g:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit"
  %i.w = icmp ult i64 %i.u, 2
  br i1 %i.w, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val10.i = load i32, ptr %i.x, align 8, !alias.scope !46631, !noalias !46632, !noundef !34 ; 3 uses
  %.val11.i = load i32, ptr %i.v, align 8, !alias.scope !46631, !noalias !46632, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46633
  store i32 %.val10.i, ptr %i.b, align 4, !noalias !46633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46633
  store i32 %.val11.i, ptr %i.a, align 4, !noalias !46633
  %i.y = call noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a), !noalias !46633
  %i.z = icmp slt i8 %i.y, 0                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46633
  %.not83 = icmp eq i64 %i.u, 2                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader51

.preheader51:                                     ; preds = %bb.h
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17h4b4c93f41e1903f6E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.h
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17h4b4c93f41e1903f6E.exit.i.thread117, label %.lr.ph70

.lr.ph:                                           ; preds = %.preheader51, %bb.i
  %.val9.i = phi i32 [ %.val8.i, %bb.i ], [ %.val10.i, %.preheader51 ]
  %.sroa.01.0.i.i66 = phi i64 [ %i.ad, %bb.i ], [ 2, %.preheader51 ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.01.0.i.i66
  %5 = add i64 %.sroa.01.0.i.i66, -1
  %6 = icmp ult i64 %5, %i.u
  call void @llvm.assume(i1 %6)
  %.val8.i = load i32, ptr %i.aa, align 8, !alias.scope !46631, !noalias !46632, !noundef !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !46633
  store i32 %.val8.i, ptr %i.d, align 4, !noalias !46633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46633
  store i32 %.val9.i, ptr %i.c, align 4, !noalias !46633
  %i.ab = call noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c), !noalias !46633
  %i.ac = icmp slt i8 %i.ab, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46633
  br i1 %i.ac, label %_ZN4core5slice4sort6shared17find_existing_run17h4b4c93f41e1903f6E.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ad = add nuw i64 %.sroa.01.0.i.i66, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.u
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h4b4c93f41e1903f6E.exit.i, label %.lr.ph

.lr.ph70:                                         ; preds = %.preheader, %bb.j
  %.val7.i = phi i32 [ %.val.i, %bb.j ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i69 = phi i64 [ %i.ah, %bb.j ], [ 2, %.preheader ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.01.1.i.i69
  %7 = add i64 %.sroa.01.1.i.i69, -1
  %8 = icmp ult i64 %7, %i.u
  call void @llvm.assume(i1 %8)
  %.val.i = load i32, ptr %i.ae, align 8, !alias.scope !46631, !noalias !46632, !noundef !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !46633
  store i32 %.val.i, ptr %i.f, align 4, !noalias !46633
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !46633
  store i32 %.val7.i, ptr %i.e, align 4, !noalias !46633
  %i.af = call noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e), !noalias !46633
  %i.ag = icmp slt i8 %i.af, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46633
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !46633
  br i1 %i.ag, label %bb.j, label %_ZN4core5slice4sort6shared17find_existing_run17h4b4c93f41e1903f6E.exit.i

bb.j:                                             ; preds = %.lr.ph70
  %i.ah = add nuw i64 %.sroa.01.1.i.i69, 1        ; 2 uses
  %exitcond96.not = icmp eq i64 %i.ah, %i.u
  br i1 %exitcond96.not, label %_ZN4core5slice4sort6shared17find_existing_run17h4b4c93f41e1903f6E.exit.i, label %.lr.ph70

_ZN4core5slice4sort6shared17find_existing_run17h4b4c93f41e1903f6E.exit.i: ; preds = %bb.i, %.lr.ph, %bb.j, %.lr.ph70
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i69, %.lr.ph70 ], [ %i.u, %bb.j ], [ %.sroa.01.0.i.i66, %.lr.ph ], [ %i.u, %bb.i ] ; 6 uses
  %i.ai = icmp ule i64 %.sroa.0.0.i.i, %i.u
  call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.f, label %bb.k

_ZN4core5slice4sort6shared17find_existing_run17h4b4c93f41e1903f6E.exit.i.thread117: ; preds = %.preheader
  br i1 %.not5.i119, label %bb.f, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h4b4c93f41e1903f6E.exit.i.thread: ; preds = %.preheader51
  br i1 %.not5.i114, label %bb.f, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"

bb.k:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h4b4c93f41e1903f6E.exit.i
  br i1 %i.z, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"

bb.l:                                             ; preds = %bb.f
  %.sroa.0.0.i41 = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %.sroa.01.0)
  %i.aj = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h704597713ab22ec9E.exit

bb.m:                                             ; preds = %bb.f
  %.sroa.0.0.i40 = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 32) ; 2 uses
  call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h36990ed610208fe1E(ptr noalias noundef nonnull align 8 %i.v, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h704597713ab22ec9E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i39
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit", label %.lr.ph.i.i39.epil.preheader

.lr.ph.i.i39.epil.preheader:                      ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa", %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.bo, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.aw to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.am = xor i64 %.sroa.0.014.i.i.epil.init, -1
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.014.i.i.epil.init ; 3 uses
  %i.ao = getelementptr [16 x i8], ptr %i.ax, i64 %i.am ; 3 uses
  %i.ap = load i32, ptr %i.an, align 8, !alias.scope !46634, !noalias !46635, !noundef !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !46634, !noalias !46635, !nonnull !34, !align !41, !noundef !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !46636, !noalias !46632
  store i32 %i.ap, ptr %i.ao, align 8, !alias.scope !46637, !noalias !46638
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !alias.scope !46637, !noalias !46638
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit": ; preds = %.lr.ph.i.i39.epil.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa", %_ZN4core5slice4sort6shared17find_existing_run17h4b4c93f41e1903f6E.exit.i.thread, %bb.g, %bb.n, %bb.k
  %.sroa.0.0.i.i4649 = phi i64 [ %i.u, %bb.g ], [ %.sroa.0.0.i.i, %bb.k ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h4b4c93f41e1903f6E.exit.i.thread ], [ %.sroa.0.0.i.i115122126, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa" ], [ %.sroa.0.0.i.i115122126, %.lr.ph.i.i39.epil.preheader ]
  %i.at = shl i64 %.sroa.0.0.i.i4649, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h704597713ab22ec9E.exit

bb.n:                                             ; preds = %bb.k
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46639), !noalias !46632
  call void @llvm.experimental.noalias.scope.decl(metadata !46640), !noalias !46632
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h4b4c93f41e1903f6E.exit.i.thread117, %bb.n
  %i.aw = phi i64 [ %i.av, %bb.n ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h4b4c93f41e1903f6E.exit.i.thread117 ] ; 4 uses
  %.sroa.0.0.i.i115122126 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h4b4c93f41e1903f6E.exit.i.thread117 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.0.i.i115122126 ; 3 uses
  %xtraiter = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.aw, 1
  br i1 %i.ay, label %.lr.ph.i.i39.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.aw, 9223372036854775806
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39, %.lr.ph.preheader.i.i.new
  %.sroa.0.014.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.bo, %.lr.ph.i.i39 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i39 ]
  %i.az = xor i64 %.sroa.0.014.i.i, -1
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.014.i.i ; 3 uses
  %i.bb = getelementptr [16 x i8], ptr %i.ax, i64 %i.az ; 3 uses
  %i.bc = load i32, ptr %i.ba, align 8, !alias.scope !46634, !noalias !46635, !noundef !34
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !46634, !noalias !46635, !nonnull !34, !align !41, !noundef !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !alias.scope !46636, !noalias !46632
  store i32 %i.bc, ptr %i.bb, align 8, !alias.scope !46637, !noalias !46638
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !46637, !noalias !46638
  %i.bg = xor i64 %.sroa.0.014.i.i, -2
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.014.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bj = getelementptr [16 x i8], ptr %i.ax, i64 %i.bg ; 3 uses
  %i.bk = load i32, ptr %i.bi, align 8, !alias.scope !46634, !noalias !46635, !noundef !34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !46634, !noalias !46635, !nonnull !34, !align !41, !noundef !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !alias.scope !46636, !noalias !46632
  store i32 %i.bk, ptr %i.bj, align 8, !alias.scope !46637, !noalias !46638
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !alias.scope !46637, !noalias !46638
  %i.bo = add nuw nsw i64 %.sroa.0.014.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa", label %.lr.ph.i.i39

_ZN4core5slice4sort6stable5drift10create_run17h704597713ab22ec9E.exit: ; preds = %bb.l, %bb.m, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit" ], [ %i.al, %bb.m ], [ %i.aj, %bb.l ] ; 2 uses
  %i.bp = lshr i64 %.sroa.018.0, 1
  %i.bq = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.br = sub i64 %factor, %i.bp
  %i.bs = add i64 %i.bq, %factor
  %i.bt = mul i64 %i.br, %.sroa.0.0
  %i.bu = mul i64 %i.bs, %.sroa.0.0
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bv, i1 false)
  %i.bx = trunc nuw nsw i64 %i.bw to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZN4core5slice4sort6stable5drift10create_run17h704597713ab22ec9E.exit
  %.sroa.026.0 = phi i8 [ %i.bx, %_ZN4core5slice4sort6stable5drift10create_run17h704597713ab22ec9E.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h704597713ab22ec9E.exit ], [ 1, %bb.e ] ; 2 uses
  %i.by = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.by, label %.lr.ph76, label %._crit_edge

.lr.ph76:                                         ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph76, %_ZN4core5slice4sort6stable5drift13logical_merge17h09039ea966da4ebeE.exit
  %.sroa.02.175 = phi i64 [ %.sroa.02.0, %.lr.ph76 ], [ %i.ca, %_ZN4core5slice4sort6stable5drift13logical_merge17h09039ea966da4ebeE.exit ] ; 2 uses
  %.sroa.018.174 = phi i64 [ %.sroa.018.0, %.lr.ph76 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h09039ea966da4ebeE.exit ] ; 4 uses
  %i.ca = add i64 %.sroa.02.175, -1               ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noundef !34
  %.not29 = icmp ult i8 %i.cc, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h09039ea966da4ebeE.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.174, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h09039ea966da4ebeE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.175, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h09039ea966da4ebeE.exit ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.ce, align 1
  br i1 %i.t, label %bb.z, label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ca
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !34 ; 3 uses
  %i.ch = lshr i64 %i.cg, 1                       ; 8 uses
  %i.ci = lshr i64 %.sroa.018.174, 1              ; 6 uses
  %i.cj = add nuw i64 %i.ch, %i.ci                ; 4 uses
  %i.ck = sub i64 %.sroa.09.0, %i.cj
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ck ; 6 uses
  %i.cm = icmp ugt i64 %i.cj, %3
  %i.cn = trunc i64 %.sroa.018.174 to i1
  %i.co = or i64 %i.cg, %.sroa.018.174
  %i.cp = trunc i64 %i.co to i1
  %or.cond3.i = or i1 %i.cm, %i.cp
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cq = trunc i64 %i.cg to i1
  br i1 %i.cq, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.cr = shl i64 %i.cj, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h09039ea966da4ebeE.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.cn, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit35"

bb.u:                                             ; preds = %bb.r
  %i.cs = or i64 %i.ch, 1
  %i.ct = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h36990ed610208fe1E(ptr noalias noundef nonnull align 8 %i.cl, i64 noundef %i.ch, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit35": ; preds = %bb.t
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.ch
  %i.cy = or i64 %i.ci, 1
  %i.cz = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cy, i1 true)
  %i.da = trunc nuw nsw i64 %i.cz to i32
end_hunk_2
begin_hunk_3_@_ZN4core5slice4sort6stable5drift4sort17h6258e43d14f263dfE:bb.a
bb.v:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit35", %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !46641)
  call void @llvm.experimental.noalias.scope.decl(metadata !46642)
  %i.dd = icmp eq i64 %i.ch, 0
  %i.de = icmp eq i64 %i.ci, 0
  %or.cond.i = or i1 %i.de, %i.dd
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h537842003c2ccb37E.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.i.i36 = call i64 @llvm.umin.i64(i64 %i.ci, i64 range(i64 0, -9223372036854775808) %i.ch) ; 2 uses
  %i.df = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.df, label %_ZN4core5slice4sort6stable5merge5merge17h537842003c2ccb37E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.ch ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ch, %i.ci  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dg, ptr %i.cl
  %i.dh = shl i64 %.sroa.0.0.i.i36, 4             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.dh, i1 false), !alias.scope !46643
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %i.dh ; 4 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.x, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.dp, %.noexc.i ], [ %i.dg, %bb.x ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.dr, %.noexc.i ], [ %i.di, %bb.x ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dm, %.noexc.i ], [ %i.bz, %bb.x ]
  %i.dj = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -16 ; 3 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -16 ; 3 uses
  %.val.i.i = load i32, ptr %i.dk, align 8, !alias.scope !46642, !noalias !46644, !noundef !34
  %.val10.i.i = load i32, ptr %i.dj, align 8, !alias.scope !46641, !noalias !46645, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !46646
  store i32 %.val.i.i, ptr %i.j, align 4, !noalias !46646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !46646
  store i32 %.val10.i.i, ptr %i.i, align 4, !noalias !46646
  %i.dl = invoke noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.j, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !46643 ; 2 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.dm = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16 ; 2 uses
  %i.dn = icmp sgt i8 %i.dl, -1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !46646
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !46646
  %..i.i = select i1 %i.dn, ptr %i.dk, ptr %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !46643, !noalias !46647
  %i.do = zext i1 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.do ; 3 uses
  %.lobit.i.i = lshr i8 %i.dl, 7
  %i.dq = zext nneg i8 %.lobit.i.i to i64
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.dq ; 3 uses
  %i.ds = icmp eq ptr %i.dp, %i.cl
  %i.dt = icmp eq ptr %i.dr, %2
  %or.cond.i.i = select i1 %i.ds, i1 true, i1 %i.dt
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h70a25ef8db6b0f65E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.x, %.noexc22.i
  %.sroa.13.1.i = phi ptr [ %i.ea, %.noexc22.i ], [ %i.cl, %bb.x ] ; 3 uses
  %.sroa.0.0.i38 = phi ptr [ %i.dx, %.noexc22.i ], [ %2, %bb.x ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dz, %.noexc22.i ], [ %i.dg, %bb.x ] ; 3 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.02.i.i, align 8, !alias.scope !46641, !noalias !46648, !noundef !34
  %.val.i19.i = load i32, ptr %.sroa.0.0.i38, align 8, !alias.scope !46642, !noalias !46649, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !46650
  store i32 %.sroa.0.0.val.i.i, ptr %i.h, align 4, !noalias !46650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !46650
  store i32 %.val.i19.i, ptr %i.g, align 4, !noalias !46650
  %i.du = invoke noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.h, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g)
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !46643 ; 2 uses

.noexc22.i:                                       ; preds = %.lr.ph.i.i
  %i.dv = icmp sgt i8 %i.du, -1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !46650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !46650
  %spec.select.i.i = select i1 %i.dv, ptr %.sroa.0.0.i38, ptr %.sroa.0.02.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !alias.scope !46643, !noalias !46651
  %i.dw = zext i1 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i38, i64 %i.dw ; 3 uses
  %.lobit.i20.i = lshr i8 %i.du, 7
  %i.dy = zext nneg i8 %.lobit.i20.i to i64
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 16 ; 2 uses
  %i.eb = icmp ne ptr %i.dx, %i.di
  %i.ec = icmp ne ptr %i.dz, %i.bz
  %or.cond.i21.i = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h70a25ef8db6b0f65E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h70a25ef8db6b0f65E.exit.i": ; preds = %.noexc22.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.dp, %.noexc.i ], [ %i.ea, %.noexc22.i ]
  %.sroa.7.2.i = phi ptr [ %i.dr, %.noexc.i ], [ %i.di, %.noexc22.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dx, %.noexc22.i ] ; 2 uses
  %i.ed = ptrtoint ptr %.sroa.7.2.i to i64
  %i.ee = ptrtoint ptr %.sroa.0.3.i to i64
  %i.ef = sub nuw i64 %i.ed, %i.ee
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.ef, i1 false), !alias.scope !46643, !noalias !46652
  br label %_ZN4core5slice4sort6stable5merge5merge17h537842003c2ccb37E.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.di, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.eg = ptrtoint ptr %.sroa.7.1.i to i64
  %i.eh = ptrtoint ptr %.sroa.0.2.i to i64
  %i.ei = sub nuw i64 %i.eg, %i.eh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.ei, i1 false), !alias.scope !46643, !noalias !46653
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17h537842003c2ccb37E.exit: ; preds = %bb.v, %bb.w, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h70a25ef8db6b0f65E.exit.i"
  %i.ej = shl i64 %i.cj, 1
  %i.ek = or disjoint i64 %i.ej, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h09039ea966da4ebeE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h09039ea966da4ebeE.exit: ; preds = %bb.s, %_ZN4core5slice4sort6stable5merge5merge17h537842003c2ccb37E.exit
  %.sroa.0.0.i = phi i64 [ %i.ek, %_ZN4core5slice4sort6stable5merge5merge17h537842003c2ccb37E.exit ], [ %i.cr, %bb.s ] ; 2 uses
  %i.el = icmp ugt i64 %i.ca, 1
  br i1 %i.el, label %bb.p, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.em = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.en = lshr i64 %.sroa.023.0, 1
  %i.eo = add i64 %i.en, %.sroa.09.0
  br label %bb.e

bb.aa:                                            ; preds = %._crit_edge
  %i.ep = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ep, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eq = or i64 %1, 1
  %i.er = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.eq, i1 true)
  %i.es = trunc nuw nsw i64 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 1
  %i.eu = xor i32 %i.et, 126
  call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h36990ed610208fe1E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.eu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hab00a5bf934256fcE(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 21, 0) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [66 x i8], align 1                ; 4 uses
  %i.l = alloca [528 x i8], align 8               ; 4 uses
  %i.m = udiv i64 4611686018427387904, %1
  %i.n = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.n, 0
  %i.o = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.m, %i.o         ; 2 uses
  %i.p = icmp ult i64 %1, 4097
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = lshr i64 %1, 1
  %i.s = sub nuw nsw i64 %1, %i.r
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.s, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.c ], [ %i.q, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.not5.i114 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i119 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.z, %bb.d
  %.sroa.018.0 = phi i64 [ 1, %bb.d ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.eo, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.em, %bb.z ] ; 3 uses
  %i.t = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.t, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit", label %bb.o

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit": ; preds = %bb.e
  %i.u = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46678)
  %.not.i33 = icmp ult i64 %i.u, %.sroa.01.0
  br i1 %.not.i33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h2eca2a4881f58f54E.exit.i.thread117, %_ZN4core5slice4sort6shared17find_existing_run17h2eca2a4881f58f54E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h2eca2a4881f58f54E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit"
  br i1 %4, label %bb.m, label %bb.l

bb.g:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit"
  %i.w = icmp ult i64 %i.u, 2
  br i1 %i.w, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val10.i = load i32, ptr %i.x, align 8, !alias.scope !46678, !noalias !46679, !noundef !34 ; 3 uses
  %.val11.i = load i32, ptr %i.v, align 8, !alias.scope !46678, !noalias !46679, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46680
  store i32 %.val10.i, ptr %i.b, align 4, !noalias !46680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46680
  store i32 %.val11.i, ptr %i.a, align 4, !noalias !46680
  %i.y = call noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a), !noalias !46680
  %i.z = icmp slt i8 %i.y, 0                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46680
  %.not83 = icmp eq i64 %i.u, 2                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader51

.preheader51:                                     ; preds = %bb.h
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17h2eca2a4881f58f54E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.h
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17h2eca2a4881f58f54E.exit.i.thread117, label %.lr.ph70

.lr.ph:                                           ; preds = %.preheader51, %bb.i
  %.val9.i = phi i32 [ %.val8.i, %bb.i ], [ %.val10.i, %.preheader51 ]
  %.sroa.01.0.i.i66 = phi i64 [ %i.ad, %bb.i ], [ 2, %.preheader51 ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.01.0.i.i66
  %5 = add i64 %.sroa.01.0.i.i66, -1
  %6 = icmp ult i64 %5, %i.u
  call void @llvm.assume(i1 %6)
  %.val8.i = load i32, ptr %i.aa, align 8, !alias.scope !46678, !noalias !46679, !noundef !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !46680
  store i32 %.val8.i, ptr %i.d, align 4, !noalias !46680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46680
  store i32 %.val9.i, ptr %i.c, align 4, !noalias !46680
  %i.ab = call noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c), !noalias !46680
  %i.ac = icmp slt i8 %i.ab, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46680
  br i1 %i.ac, label %_ZN4core5slice4sort6shared17find_existing_run17h2eca2a4881f58f54E.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ad = add nuw i64 %.sroa.01.0.i.i66, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.u
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h2eca2a4881f58f54E.exit.i, label %.lr.ph

.lr.ph70:                                         ; preds = %.preheader, %bb.j
  %.val7.i = phi i32 [ %.val.i, %bb.j ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i69 = phi i64 [ %i.ah, %bb.j ], [ 2, %.preheader ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.01.1.i.i69
  %7 = add i64 %.sroa.01.1.i.i69, -1
  %8 = icmp ult i64 %7, %i.u
  call void @llvm.assume(i1 %8)
  %.val.i = load i32, ptr %i.ae, align 8, !alias.scope !46678, !noalias !46679, !noundef !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !46680
  store i32 %.val.i, ptr %i.f, align 4, !noalias !46680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !46680
  store i32 %.val7.i, ptr %i.e, align 4, !noalias !46680
  %i.af = call noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e), !noalias !46680
  %i.ag = icmp slt i8 %i.af, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !46680
  br i1 %i.ag, label %bb.j, label %_ZN4core5slice4sort6shared17find_existing_run17h2eca2a4881f58f54E.exit.i

bb.j:                                             ; preds = %.lr.ph70
  %i.ah = add nuw i64 %.sroa.01.1.i.i69, 1        ; 2 uses
  %exitcond96.not = icmp eq i64 %i.ah, %i.u
  br i1 %exitcond96.not, label %_ZN4core5slice4sort6shared17find_existing_run17h2eca2a4881f58f54E.exit.i, label %.lr.ph70

_ZN4core5slice4sort6shared17find_existing_run17h2eca2a4881f58f54E.exit.i: ; preds = %bb.i, %.lr.ph, %bb.j, %.lr.ph70
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i69, %.lr.ph70 ], [ %i.u, %bb.j ], [ %.sroa.01.0.i.i66, %.lr.ph ], [ %i.u, %bb.i ] ; 6 uses
  %i.ai = icmp ule i64 %.sroa.0.0.i.i, %i.u
  call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.f, label %bb.k

_ZN4core5slice4sort6shared17find_existing_run17h2eca2a4881f58f54E.exit.i.thread117: ; preds = %.preheader
  br i1 %.not5.i119, label %bb.f, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h2eca2a4881f58f54E.exit.i.thread: ; preds = %.preheader51
  br i1 %.not5.i114, label %bb.f, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"

bb.k:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h2eca2a4881f58f54E.exit.i
  br i1 %i.z, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"

bb.l:                                             ; preds = %bb.f
  %.sroa.0.0.i41 = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %.sroa.01.0)
  %i.aj = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h05cbcd9fb07f4cceE.exit

bb.m:                                             ; preds = %bb.f
  %.sroa.0.0.i40 = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 32) ; 2 uses
  call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha142470a3ef8aac5E(ptr noalias noundef nonnull align 8 %i.v, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h05cbcd9fb07f4cceE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i39
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit", label %.lr.ph.i.i39.epil.preheader

.lr.ph.i.i39.epil.preheader:                      ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa", %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.bo, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.aw to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.am = xor i64 %.sroa.0.014.i.i.epil.init, -1
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.014.i.i.epil.init ; 3 uses
  %i.ao = getelementptr [16 x i8], ptr %i.ax, i64 %i.am ; 3 uses
  %i.ap = load i32, ptr %i.an, align 8, !alias.scope !46681, !noalias !46682, !noundef !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !46681, !noalias !46682, !nonnull !34, !align !41, !noundef !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !46683, !noalias !46679
  store i32 %i.ap, ptr %i.ao, align 8, !alias.scope !46684, !noalias !46685
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !alias.scope !46684, !noalias !46685
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit": ; preds = %.lr.ph.i.i39.epil.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa", %_ZN4core5slice4sort6shared17find_existing_run17h2eca2a4881f58f54E.exit.i.thread, %bb.g, %bb.n, %bb.k
  %.sroa.0.0.i.i4649 = phi i64 [ %i.u, %bb.g ], [ %.sroa.0.0.i.i, %bb.k ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h2eca2a4881f58f54E.exit.i.thread ], [ %.sroa.0.0.i.i115122126, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa" ], [ %.sroa.0.0.i.i115122126, %.lr.ph.i.i39.epil.preheader ]
  %i.at = shl i64 %.sroa.0.0.i.i4649, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h05cbcd9fb07f4cceE.exit

bb.n:                                             ; preds = %bb.k
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46686), !noalias !46679
  call void @llvm.experimental.noalias.scope.decl(metadata !46687), !noalias !46679
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h2eca2a4881f58f54E.exit.i.thread117, %bb.n
  %i.aw = phi i64 [ %i.av, %bb.n ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h2eca2a4881f58f54E.exit.i.thread117 ] ; 4 uses
  %.sroa.0.0.i.i115122126 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h2eca2a4881f58f54E.exit.i.thread117 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.0.i.i115122126 ; 3 uses
  %xtraiter = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.aw, 1
  br i1 %i.ay, label %.lr.ph.i.i39.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.aw, 9223372036854775806
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39, %.lr.ph.preheader.i.i.new
  %.sroa.0.014.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.bo, %.lr.ph.i.i39 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i39 ]
  %i.az = xor i64 %.sroa.0.014.i.i, -1
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.014.i.i ; 3 uses
  %i.bb = getelementptr [16 x i8], ptr %i.ax, i64 %i.az ; 3 uses
  %i.bc = load i32, ptr %i.ba, align 8, !alias.scope !46681, !noalias !46682, !noundef !34
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !46681, !noalias !46682, !nonnull !34, !align !41, !noundef !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !alias.scope !46683, !noalias !46679
  store i32 %i.bc, ptr %i.bb, align 8, !alias.scope !46684, !noalias !46685
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !46684, !noalias !46685
  %i.bg = xor i64 %.sroa.0.014.i.i, -2
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.014.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bj = getelementptr [16 x i8], ptr %i.ax, i64 %i.bg ; 3 uses
  %i.bk = load i32, ptr %i.bi, align 8, !alias.scope !46681, !noalias !46682, !noundef !34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !46681, !noalias !46682, !nonnull !34, !align !41, !noundef !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !alias.scope !46683, !noalias !46679
  store i32 %i.bk, ptr %i.bj, align 8, !alias.scope !46684, !noalias !46685
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !alias.scope !46684, !noalias !46685
  %i.bo = add nuw nsw i64 %.sroa.0.014.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa", label %.lr.ph.i.i39

_ZN4core5slice4sort6stable5drift10create_run17h05cbcd9fb07f4cceE.exit: ; preds = %bb.l, %bb.m, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit" ], [ %i.al, %bb.m ], [ %i.aj, %bb.l ] ; 2 uses
  %i.bp = lshr i64 %.sroa.018.0, 1
  %i.bq = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.br = sub i64 %factor, %i.bp
  %i.bs = add i64 %i.bq, %factor
  %i.bt = mul i64 %i.br, %.sroa.0.0
  %i.bu = mul i64 %i.bs, %.sroa.0.0
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bv, i1 false)
  %i.bx = trunc nuw nsw i64 %i.bw to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZN4core5slice4sort6stable5drift10create_run17h05cbcd9fb07f4cceE.exit
  %.sroa.026.0 = phi i8 [ %i.bx, %_ZN4core5slice4sort6stable5drift10create_run17h05cbcd9fb07f4cceE.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h05cbcd9fb07f4cceE.exit ], [ 1, %bb.e ] ; 2 uses
  %i.by = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.by, label %.lr.ph76, label %._crit_edge

.lr.ph76:                                         ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph76, %_ZN4core5slice4sort6stable5drift13logical_merge17hc3d1a5f80c56a8acE.exit
  %.sroa.02.175 = phi i64 [ %.sroa.02.0, %.lr.ph76 ], [ %i.ca, %_ZN4core5slice4sort6stable5drift13logical_merge17hc3d1a5f80c56a8acE.exit ] ; 2 uses
  %.sroa.018.174 = phi i64 [ %.sroa.018.0, %.lr.ph76 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hc3d1a5f80c56a8acE.exit ] ; 4 uses
  %i.ca = add i64 %.sroa.02.175, -1               ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noundef !34
  %.not29 = icmp ult i8 %i.cc, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hc3d1a5f80c56a8acE.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.174, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hc3d1a5f80c56a8acE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.175, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hc3d1a5f80c56a8acE.exit ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.ce, align 1
  br i1 %i.t, label %bb.z, label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ca
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !34 ; 3 uses
  %i.ch = lshr i64 %i.cg, 1                       ; 8 uses
  %i.ci = lshr i64 %.sroa.018.174, 1              ; 6 uses
  %i.cj = add nuw i64 %i.ch, %i.ci                ; 4 uses
  %i.ck = sub i64 %.sroa.09.0, %i.cj
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ck ; 6 uses
  %i.cm = icmp ugt i64 %i.cj, %3
  %i.cn = trunc i64 %.sroa.018.174 to i1
  %i.co = or i64 %i.cg, %.sroa.018.174
  %i.cp = trunc i64 %i.co to i1
  %or.cond3.i = or i1 %i.cm, %i.cp
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cq = trunc i64 %i.cg to i1
  br i1 %i.cq, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.cr = shl i64 %i.cj, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hc3d1a5f80c56a8acE.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.cn, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit35"

bb.u:                                             ; preds = %bb.r
  %i.cs = or i64 %i.ch, 1
  %i.ct = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha142470a3ef8aac5E(ptr noalias noundef nonnull align 8 %i.cl, i64 noundef %i.ch, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit35": ; preds = %bb.t
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.ch
  %i.cy = or i64 %i.ci, 1
  %i.cz = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cy, i1 true)
  %i.da = trunc nuw nsw i64 %i.cz to i32
end_hunk_3
begin_hunk_4_@_ZN4core5slice4sort6stable5drift4sort17hab00a5bf934256fcE:bb.a
bb.v:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit35", %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !46688)
  call void @llvm.experimental.noalias.scope.decl(metadata !46689)
  %i.dd = icmp eq i64 %i.ch, 0
  %i.de = icmp eq i64 %i.ci, 0
  %or.cond.i = or i1 %i.de, %i.dd
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h248c2f11600bd1adE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.i.i36 = call i64 @llvm.umin.i64(i64 %i.ci, i64 range(i64 0, -9223372036854775808) %i.ch) ; 2 uses
  %i.df = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.df, label %_ZN4core5slice4sort6stable5merge5merge17h248c2f11600bd1adE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.ch ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ch, %i.ci  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dg, ptr %i.cl
  %i.dh = shl i64 %.sroa.0.0.i.i36, 4             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.dh, i1 false), !alias.scope !46690
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %i.dh ; 4 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.x, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.dp, %.noexc.i ], [ %i.dg, %bb.x ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.dr, %.noexc.i ], [ %i.di, %bb.x ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dm, %.noexc.i ], [ %i.bz, %bb.x ]
  %i.dj = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -16 ; 3 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -16 ; 3 uses
  %.val.i.i = load i32, ptr %i.dk, align 8, !alias.scope !46689, !noalias !46691, !noundef !34
  %.val10.i.i = load i32, ptr %i.dj, align 8, !alias.scope !46688, !noalias !46692, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !46693
  store i32 %.val.i.i, ptr %i.j, align 4, !noalias !46693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !46693
  store i32 %.val10.i.i, ptr %i.i, align 4, !noalias !46693
  %i.dl = invoke noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.j, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !46690 ; 2 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.dm = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16 ; 2 uses
  %i.dn = icmp sgt i8 %i.dl, -1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !46693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !46693
  %..i.i = select i1 %i.dn, ptr %i.dk, ptr %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !46690, !noalias !46694
  %i.do = zext i1 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.do ; 3 uses
  %.lobit.i.i = lshr i8 %i.dl, 7
  %i.dq = zext nneg i8 %.lobit.i.i to i64
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.dq ; 3 uses
  %i.ds = icmp eq ptr %i.dp, %i.cl
  %i.dt = icmp eq ptr %i.dr, %2
  %or.cond.i.i = select i1 %i.ds, i1 true, i1 %i.dt
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2cd4cd0693e7e0aaE.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.x, %.noexc22.i
  %.sroa.13.1.i = phi ptr [ %i.ea, %.noexc22.i ], [ %i.cl, %bb.x ] ; 3 uses
  %.sroa.0.0.i38 = phi ptr [ %i.dx, %.noexc22.i ], [ %2, %bb.x ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dz, %.noexc22.i ], [ %i.dg, %bb.x ] ; 3 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.02.i.i, align 8, !alias.scope !46688, !noalias !46695, !noundef !34
  %.val.i19.i = load i32, ptr %.sroa.0.0.i38, align 8, !alias.scope !46689, !noalias !46696, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !46697
  store i32 %.sroa.0.0.val.i.i, ptr %i.h, align 4, !noalias !46697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !46697
  store i32 %.val.i19.i, ptr %i.g, align 4, !noalias !46697
  %i.du = invoke noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.h, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g)
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !46690 ; 2 uses

.noexc22.i:                                       ; preds = %.lr.ph.i.i
  %i.dv = icmp sgt i8 %i.du, -1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !46697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !46697
  %spec.select.i.i = select i1 %i.dv, ptr %.sroa.0.0.i38, ptr %.sroa.0.02.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !alias.scope !46690, !noalias !46698
  %i.dw = zext i1 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i38, i64 %i.dw ; 3 uses
  %.lobit.i20.i = lshr i8 %i.du, 7
  %i.dy = zext nneg i8 %.lobit.i20.i to i64
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 16 ; 2 uses
  %i.eb = icmp ne ptr %i.dx, %i.di
  %i.ec = icmp ne ptr %i.dz, %i.bz
  %or.cond.i21.i = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2cd4cd0693e7e0aaE.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2cd4cd0693e7e0aaE.exit.i": ; preds = %.noexc22.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.dp, %.noexc.i ], [ %i.ea, %.noexc22.i ]
  %.sroa.7.2.i = phi ptr [ %i.dr, %.noexc.i ], [ %i.di, %.noexc22.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dx, %.noexc22.i ] ; 2 uses
  %i.ed = ptrtoint ptr %.sroa.7.2.i to i64
  %i.ee = ptrtoint ptr %.sroa.0.3.i to i64
  %i.ef = sub nuw i64 %i.ed, %i.ee
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.ef, i1 false), !alias.scope !46690, !noalias !46699
  br label %_ZN4core5slice4sort6stable5merge5merge17h248c2f11600bd1adE.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.di, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.eg = ptrtoint ptr %.sroa.7.1.i to i64
  %i.eh = ptrtoint ptr %.sroa.0.2.i to i64
  %i.ei = sub nuw i64 %i.eg, %i.eh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.ei, i1 false), !alias.scope !46690, !noalias !46700
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17h248c2f11600bd1adE.exit: ; preds = %bb.v, %bb.w, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h2cd4cd0693e7e0aaE.exit.i"
  %i.ej = shl i64 %i.cj, 1
  %i.ek = or disjoint i64 %i.ej, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hc3d1a5f80c56a8acE.exit

_ZN4core5slice4sort6stable5drift13logical_merge17hc3d1a5f80c56a8acE.exit: ; preds = %bb.s, %_ZN4core5slice4sort6stable5merge5merge17h248c2f11600bd1adE.exit
  %.sroa.0.0.i = phi i64 [ %i.ek, %_ZN4core5slice4sort6stable5merge5merge17h248c2f11600bd1adE.exit ], [ %i.cr, %bb.s ] ; 2 uses
  %i.el = icmp ugt i64 %i.ca, 1
  br i1 %i.el, label %bb.p, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.em = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.en = lshr i64 %.sroa.023.0, 1
  %i.eo = add i64 %i.en, %.sroa.09.0
  br label %bb.e

bb.aa:                                            ; preds = %._crit_edge
  %i.ep = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ep, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eq = or i64 %1, 1
  %i.er = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.eq, i1 true)
  %i.es = trunc nuw nsw i64 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 1
  %i.eu = xor i32 %i.et, 126
  call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha142470a3ef8aac5E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.eu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hd1084c0167b471c5E(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 21, 0) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [66 x i8], align 1                ; 4 uses
  %i.l = alloca [528 x i8], align 8               ; 4 uses
  %i.m = udiv i64 4611686018427387904, %1
  %i.n = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.n, 0
  %i.o = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.m, %i.o         ; 2 uses
  %i.p = icmp ult i64 %1, 4097
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = lshr i64 %1, 1
  %i.s = sub nuw nsw i64 %1, %i.r
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.s, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.c ], [ %i.q, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.not5.i114 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i119 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.z, %bb.d
  %.sroa.018.0 = phi i64 [ 1, %bb.d ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.eo, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.em, %bb.z ] ; 3 uses
  %i.t = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.t, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit", label %bb.o

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit": ; preds = %bb.e
  %i.u = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46725)
  %.not.i33 = icmp ult i64 %i.u, %.sroa.01.0
  br i1 %.not.i33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h72ae91345c7e8961E.exit.i.thread117, %_ZN4core5slice4sort6shared17find_existing_run17h72ae91345c7e8961E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h72ae91345c7e8961E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit"
  br i1 %4, label %bb.m, label %bb.l

bb.g:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit"
  %i.w = icmp ult i64 %i.u, 2
  br i1 %i.w, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val10.i = load i32, ptr %i.x, align 8, !alias.scope !46725, !noalias !46726, !noundef !34 ; 3 uses
  %.val11.i = load i32, ptr %i.v, align 8, !alias.scope !46725, !noalias !46726, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46727
  store i32 %.val10.i, ptr %i.b, align 4, !noalias !46727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46727
  store i32 %.val11.i, ptr %i.a, align 4, !noalias !46727
  %i.y = call noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a), !noalias !46727
  %i.z = icmp slt i8 %i.y, 0                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46727
  %.not83 = icmp eq i64 %i.u, 2                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader51

.preheader51:                                     ; preds = %bb.h
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17h72ae91345c7e8961E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.h
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17h72ae91345c7e8961E.exit.i.thread117, label %.lr.ph70

.lr.ph:                                           ; preds = %.preheader51, %bb.i
  %.val9.i = phi i32 [ %.val8.i, %bb.i ], [ %.val10.i, %.preheader51 ]
  %.sroa.01.0.i.i66 = phi i64 [ %i.ad, %bb.i ], [ 2, %.preheader51 ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.01.0.i.i66
  %5 = add i64 %.sroa.01.0.i.i66, -1
  %6 = icmp ult i64 %5, %i.u
  call void @llvm.assume(i1 %6)
  %.val8.i = load i32, ptr %i.aa, align 8, !alias.scope !46725, !noalias !46726, !noundef !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !46727
  store i32 %.val8.i, ptr %i.d, align 4, !noalias !46727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46727
  store i32 %.val9.i, ptr %i.c, align 4, !noalias !46727
  %i.ab = call noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c), !noalias !46727
  %i.ac = icmp slt i8 %i.ab, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46727
  br i1 %i.ac, label %_ZN4core5slice4sort6shared17find_existing_run17h72ae91345c7e8961E.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ad = add nuw i64 %.sroa.01.0.i.i66, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.u
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h72ae91345c7e8961E.exit.i, label %.lr.ph

.lr.ph70:                                         ; preds = %.preheader, %bb.j
  %.val7.i = phi i32 [ %.val.i, %bb.j ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i69 = phi i64 [ %i.ah, %bb.j ], [ 2, %.preheader ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.01.1.i.i69
  %7 = add i64 %.sroa.01.1.i.i69, -1
  %8 = icmp ult i64 %7, %i.u
  call void @llvm.assume(i1 %8)
  %.val.i = load i32, ptr %i.ae, align 8, !alias.scope !46725, !noalias !46726, !noundef !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !46727
  store i32 %.val.i, ptr %i.f, align 4, !noalias !46727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !46727
  store i32 %.val7.i, ptr %i.e, align 4, !noalias !46727
  %i.af = call noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e), !noalias !46727
  %i.ag = icmp slt i8 %i.af, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46727
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !46727
  br i1 %i.ag, label %bb.j, label %_ZN4core5slice4sort6shared17find_existing_run17h72ae91345c7e8961E.exit.i

bb.j:                                             ; preds = %.lr.ph70
  %i.ah = add nuw i64 %.sroa.01.1.i.i69, 1        ; 2 uses
  %exitcond96.not = icmp eq i64 %i.ah, %i.u
  br i1 %exitcond96.not, label %_ZN4core5slice4sort6shared17find_existing_run17h72ae91345c7e8961E.exit.i, label %.lr.ph70

_ZN4core5slice4sort6shared17find_existing_run17h72ae91345c7e8961E.exit.i: ; preds = %bb.i, %.lr.ph, %bb.j, %.lr.ph70
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i69, %.lr.ph70 ], [ %i.u, %bb.j ], [ %.sroa.01.0.i.i66, %.lr.ph ], [ %i.u, %bb.i ] ; 6 uses
  %i.ai = icmp ule i64 %.sroa.0.0.i.i, %i.u
  call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.f, label %bb.k

_ZN4core5slice4sort6shared17find_existing_run17h72ae91345c7e8961E.exit.i.thread117: ; preds = %.preheader
  br i1 %.not5.i119, label %bb.f, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h72ae91345c7e8961E.exit.i.thread: ; preds = %.preheader51
  br i1 %.not5.i114, label %bb.f, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"

bb.k:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h72ae91345c7e8961E.exit.i
  br i1 %i.z, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"

bb.l:                                             ; preds = %bb.f
  %.sroa.0.0.i41 = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %.sroa.01.0)
  %i.aj = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hfaedb0f5e8c4d29aE.exit

bb.m:                                             ; preds = %bb.f
  %.sroa.0.0.i40 = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 32) ; 2 uses
  call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h1e3e1d594664e874E(ptr noalias noundef nonnull align 8 %i.v, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hfaedb0f5e8c4d29aE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i39
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit", label %.lr.ph.i.i39.epil.preheader

.lr.ph.i.i39.epil.preheader:                      ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa", %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.bo, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.aw to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.am = xor i64 %.sroa.0.014.i.i.epil.init, -1
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.014.i.i.epil.init ; 3 uses
  %i.ao = getelementptr [16 x i8], ptr %i.ax, i64 %i.am ; 3 uses
  %i.ap = load i32, ptr %i.an, align 8, !alias.scope !46728, !noalias !46729, !noundef !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !46728, !noalias !46729, !nonnull !34, !align !41, !noundef !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !46730, !noalias !46726
  store i32 %i.ap, ptr %i.ao, align 8, !alias.scope !46731, !noalias !46732
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !alias.scope !46731, !noalias !46732
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit": ; preds = %.lr.ph.i.i39.epil.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa", %_ZN4core5slice4sort6shared17find_existing_run17h72ae91345c7e8961E.exit.i.thread, %bb.g, %bb.n, %bb.k
  %.sroa.0.0.i.i4649 = phi i64 [ %i.u, %bb.g ], [ %.sroa.0.0.i.i, %bb.k ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h72ae91345c7e8961E.exit.i.thread ], [ %.sroa.0.0.i.i115122126, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa" ], [ %.sroa.0.0.i.i115122126, %.lr.ph.i.i39.epil.preheader ]
  %i.at = shl i64 %.sroa.0.0.i.i4649, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17hfaedb0f5e8c4d29aE.exit

bb.n:                                             ; preds = %bb.k
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46733), !noalias !46726
  call void @llvm.experimental.noalias.scope.decl(metadata !46734), !noalias !46726
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h72ae91345c7e8961E.exit.i.thread117, %bb.n
  %i.aw = phi i64 [ %i.av, %bb.n ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h72ae91345c7e8961E.exit.i.thread117 ] ; 4 uses
  %.sroa.0.0.i.i115122126 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h72ae91345c7e8961E.exit.i.thread117 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.0.i.i115122126 ; 3 uses
  %xtraiter = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.aw, 1
  br i1 %i.ay, label %.lr.ph.i.i39.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.aw, 9223372036854775806
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39, %.lr.ph.preheader.i.i.new
  %.sroa.0.014.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.bo, %.lr.ph.i.i39 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i39 ]
  %i.az = xor i64 %.sroa.0.014.i.i, -1
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.014.i.i ; 3 uses
  %i.bb = getelementptr [16 x i8], ptr %i.ax, i64 %i.az ; 3 uses
  %i.bc = load i32, ptr %i.ba, align 8, !alias.scope !46728, !noalias !46729, !noundef !34
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !46728, !noalias !46729, !nonnull !34, !align !41, !noundef !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !alias.scope !46730, !noalias !46726
  store i32 %i.bc, ptr %i.bb, align 8, !alias.scope !46731, !noalias !46732
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !46731, !noalias !46732
  %i.bg = xor i64 %.sroa.0.014.i.i, -2
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.014.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bj = getelementptr [16 x i8], ptr %i.ax, i64 %i.bg ; 3 uses
  %i.bk = load i32, ptr %i.bi, align 8, !alias.scope !46728, !noalias !46729, !noundef !34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !46728, !noalias !46729, !nonnull !34, !align !41, !noundef !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !alias.scope !46730, !noalias !46726
  store i32 %i.bk, ptr %i.bj, align 8, !alias.scope !46731, !noalias !46732
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !alias.scope !46731, !noalias !46732
  %i.bo = add nuw nsw i64 %.sroa.0.014.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa", label %.lr.ph.i.i39

_ZN4core5slice4sort6stable5drift10create_run17hfaedb0f5e8c4d29aE.exit: ; preds = %bb.l, %bb.m, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit" ], [ %i.al, %bb.m ], [ %i.aj, %bb.l ] ; 2 uses
  %i.bp = lshr i64 %.sroa.018.0, 1
  %i.bq = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.br = sub i64 %factor, %i.bp
  %i.bs = add i64 %i.bq, %factor
  %i.bt = mul i64 %i.br, %.sroa.0.0
  %i.bu = mul i64 %i.bs, %.sroa.0.0
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bv, i1 false)
  %i.bx = trunc nuw nsw i64 %i.bw to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZN4core5slice4sort6stable5drift10create_run17hfaedb0f5e8c4d29aE.exit
  %.sroa.026.0 = phi i8 [ %i.bx, %_ZN4core5slice4sort6stable5drift10create_run17hfaedb0f5e8c4d29aE.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17hfaedb0f5e8c4d29aE.exit ], [ 1, %bb.e ] ; 2 uses
  %i.by = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.by, label %.lr.ph76, label %._crit_edge

.lr.ph76:                                         ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph76, %_ZN4core5slice4sort6stable5drift13logical_merge17h332728120a1bb9f2E.exit
  %.sroa.02.175 = phi i64 [ %.sroa.02.0, %.lr.ph76 ], [ %i.ca, %_ZN4core5slice4sort6stable5drift13logical_merge17h332728120a1bb9f2E.exit ] ; 2 uses
  %.sroa.018.174 = phi i64 [ %.sroa.018.0, %.lr.ph76 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h332728120a1bb9f2E.exit ] ; 4 uses
  %i.ca = add i64 %.sroa.02.175, -1               ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noundef !34
  %.not29 = icmp ult i8 %i.cc, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h332728120a1bb9f2E.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.174, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h332728120a1bb9f2E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.175, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h332728120a1bb9f2E.exit ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.ce, align 1
  br i1 %i.t, label %bb.z, label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ca
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !34 ; 3 uses
  %i.ch = lshr i64 %i.cg, 1                       ; 8 uses
  %i.ci = lshr i64 %.sroa.018.174, 1              ; 6 uses
  %i.cj = add nuw i64 %i.ch, %i.ci                ; 4 uses
  %i.ck = sub i64 %.sroa.09.0, %i.cj
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ck ; 6 uses
  %i.cm = icmp ugt i64 %i.cj, %3
  %i.cn = trunc i64 %.sroa.018.174 to i1
  %i.co = or i64 %i.cg, %.sroa.018.174
  %i.cp = trunc i64 %i.co to i1
  %or.cond3.i = or i1 %i.cm, %i.cp
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cq = trunc i64 %i.cg to i1
  br i1 %i.cq, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.cr = shl i64 %i.cj, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h332728120a1bb9f2E.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.cn, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit35"

bb.u:                                             ; preds = %bb.r
  %i.cs = or i64 %i.ch, 1
  %i.ct = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h1e3e1d594664e874E(ptr noalias noundef nonnull align 8 %i.cl, i64 noundef %i.ch, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit35": ; preds = %bb.t
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.ch
  %i.cy = or i64 %i.ci, 1
  %i.cz = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cy, i1 true)
  %i.da = trunc nuw nsw i64 %i.cz to i32
end_hunk_4
begin_hunk_5_@_ZN4core5slice4sort6stable5drift4sort17hd1084c0167b471c5E:bb.a
bb.v:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit35", %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !46735)
  call void @llvm.experimental.noalias.scope.decl(metadata !46736)
  %i.dd = icmp eq i64 %i.ch, 0
  %i.de = icmp eq i64 %i.ci, 0
  %or.cond.i = or i1 %i.de, %i.dd
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h9cee042531eff4ebE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.i.i36 = call i64 @llvm.umin.i64(i64 %i.ci, i64 range(i64 0, -9223372036854775808) %i.ch) ; 2 uses
  %i.df = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.df, label %_ZN4core5slice4sort6stable5merge5merge17h9cee042531eff4ebE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.ch ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.ch, %i.ci  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.dg, ptr %i.cl
  %i.dh = shl i64 %.sroa.0.0.i.i36, 4             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.dh, i1 false), !alias.scope !46737
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %i.dh ; 4 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.x, %.noexc.i
  %.sroa.13.0.i = phi ptr [ %i.dp, %.noexc.i ], [ %i.dg, %bb.x ] ; 2 uses
  %.sroa.7.0.i = phi ptr [ %i.dr, %.noexc.i ], [ %i.di, %bb.x ] ; 2 uses
  %.sroa.0.0.i17.i = phi ptr [ %i.dm, %.noexc.i ], [ %i.bz, %bb.x ]
  %i.dj = getelementptr inbounds i8, ptr %.sroa.13.0.i, i64 -16 ; 3 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -16 ; 3 uses
  %.val.i.i = load i32, ptr %i.dk, align 8, !alias.scope !46736, !noalias !46738, !noundef !34
  %.val10.i.i = load i32, ptr %i.dj, align 8, !alias.scope !46735, !noalias !46739, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !46740
  store i32 %.val.i.i, ptr %i.j, align 4, !noalias !46740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !46740
  store i32 %.val10.i.i, ptr %i.i, align 4, !noalias !46740
  %i.dl = invoke noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.j, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i)
          to label %.noexc.i unwind label %.loopexit.i, !noalias !46737 ; 2 uses

.noexc.i:                                         ; preds = %.preheader.i
  %i.dm = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -16 ; 2 uses
  %i.dn = icmp sgt i8 %i.dl, -1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !46740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !46740
  %..i.i = select i1 %i.dn, ptr %i.dk, ptr %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !alias.scope !46737, !noalias !46741
  %i.do = zext i1 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.do ; 3 uses
  %.lobit.i.i = lshr i8 %i.dl, 7
  %i.dq = zext nneg i8 %.lobit.i.i to i64
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.dq ; 3 uses
  %i.ds = icmp eq ptr %i.dp, %i.cl
  %i.dt = icmp eq ptr %i.dr, %2
  %or.cond.i.i = select i1 %i.ds, i1 true, i1 %i.dt
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf544d86d385d3535E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.x, %.noexc22.i
  %.sroa.13.1.i = phi ptr [ %i.ea, %.noexc22.i ], [ %i.cl, %bb.x ] ; 3 uses
  %.sroa.0.0.i38 = phi ptr [ %i.dx, %.noexc22.i ], [ %2, %bb.x ] ; 4 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dz, %.noexc22.i ], [ %i.dg, %bb.x ] ; 3 uses
  %.sroa.0.0.val.i.i = load i32, ptr %.sroa.0.02.i.i, align 8, !alias.scope !46735, !noalias !46742, !noundef !34
  %.val.i19.i = load i32, ptr %.sroa.0.0.i38, align 8, !alias.scope !46736, !noalias !46743, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !46744
  store i32 %.sroa.0.0.val.i.i, ptr %i.h, align 4, !noalias !46744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !46744
  store i32 %.val.i19.i, ptr %i.g, align 4, !noalias !46744
  %i.du = invoke noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.h, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g)
          to label %.noexc22.i unwind label %.loopexit.split-lp.i, !noalias !46737 ; 2 uses

.noexc22.i:                                       ; preds = %.lr.ph.i.i
  %i.dv = icmp sgt i8 %i.du, -1                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !46744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !46744
  %spec.select.i.i = select i1 %i.dv, ptr %.sroa.0.0.i38, ptr %.sroa.0.02.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.1.i, ptr noundef nonnull align 8 dereferenceable(16) %spec.select.i.i, i64 16, i1 false), !alias.scope !46737, !noalias !46745
  %i.dw = zext i1 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i38, i64 %i.dw ; 3 uses
  %.lobit.i20.i = lshr i8 %i.du, 7
  %i.dy = zext nneg i8 %.lobit.i20.i to i64
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.dy ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.13.1.i, i64 16 ; 2 uses
  %i.eb = icmp ne ptr %i.dx, %i.di
  %i.ec = icmp ne ptr %i.dz, %i.bz
  %or.cond.i21.i = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %or.cond.i21.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf544d86d385d3535E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf544d86d385d3535E.exit.i": ; preds = %.noexc22.i, %.noexc.i
  %.sroa.13.4.i = phi ptr [ %i.dp, %.noexc.i ], [ %i.ea, %.noexc22.i ]
  %.sroa.7.2.i = phi ptr [ %i.dr, %.noexc.i ], [ %i.di, %.noexc22.i ]
  %.sroa.0.3.i = phi ptr [ %2, %.noexc.i ], [ %i.dx, %.noexc22.i ] ; 2 uses
  %i.ed = ptrtoint ptr %.sroa.7.2.i to i64
  %i.ee = ptrtoint ptr %.sroa.0.3.i to i64
  %i.ef = sub nuw i64 %i.ed, %i.ee
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.4.i, ptr align 8 %.sroa.0.3.i, i64 %i.ef, i1 false), !alias.scope !46737, !noalias !46746
  br label %_ZN4core5slice4sort6stable5merge5merge17h9cee042531eff4ebE.exit

.loopexit.i:                                      ; preds = %.preheader.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp.i:                             ; preds = %.lr.ph.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.13.3.i = phi ptr [ %.sroa.13.0.i, %.loopexit.i ], [ %.sroa.13.1.i, %.loopexit.split-lp.i ]
  %.sroa.7.1.i = phi ptr [ %.sroa.7.0.i, %.loopexit.i ], [ %i.di, %.loopexit.split-lp.i ]
  %.sroa.0.2.i = phi ptr [ %2, %.loopexit.i ], [ %.sroa.0.0.i38, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.eg = ptrtoint ptr %.sroa.7.1.i to i64
  %i.eh = ptrtoint ptr %.sroa.0.2.i to i64
  %i.ei = sub nuw i64 %i.eg, %i.eh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.3.i, ptr nonnull align 8 %.sroa.0.2.i, i64 %i.ei, i1 false), !alias.scope !46737, !noalias !46747
  resume { ptr, i32 } %lpad.phi.i

_ZN4core5slice4sort6stable5merge5merge17h9cee042531eff4ebE.exit: ; preds = %bb.v, %bb.w, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17hf544d86d385d3535E.exit.i"
  %i.ej = shl i64 %i.cj, 1
  %i.ek = or disjoint i64 %i.ej, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h332728120a1bb9f2E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h332728120a1bb9f2E.exit: ; preds = %bb.s, %_ZN4core5slice4sort6stable5merge5merge17h9cee042531eff4ebE.exit
  %.sroa.0.0.i = phi i64 [ %i.ek, %_ZN4core5slice4sort6stable5merge5merge17h9cee042531eff4ebE.exit ], [ %i.cr, %bb.s ] ; 2 uses
  %i.el = icmp ugt i64 %i.ca, 1
  br i1 %i.el, label %bb.p, label %._crit_edge

bb.z:                                             ; preds = %._crit_edge
  %i.em = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.en = lshr i64 %.sroa.023.0, 1
  %i.eo = add i64 %i.en, %.sroa.09.0
  br label %bb.e

bb.aa:                                            ; preds = %._crit_edge
  %i.ep = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ep, 0
  br i1 %.not31, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eq = or i64 %1, 1
  %i.er = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.eq, i1 true)
  %i.es = trunc nuw nsw i64 %i.er to i32
  %i.et = shl nuw nsw i32 %i.es, 1
  %i.eu = xor i32 %i.et, 126
  call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h1e3e1d594664e874E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.eu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17hd79a828948c2cea2E(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 21, 0) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [66 x i8], align 1                ; 4 uses
  %i.l = alloca [528 x i8], align 8               ; 4 uses
  %i.m = udiv i64 4611686018427387904, %1
  %i.n = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.n, 0
  %i.o = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.m, %i.o         ; 2 uses
  %i.p = icmp ult i64 %1, 4097
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = lshr i64 %1, 1
  %i.s = sub nuw nsw i64 %1, %i.r
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.s, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.c ], [ %i.q, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.not5.i114 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i119 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.z, %bb.d
  %.sroa.018.0 = phi i64 [ 1, %bb.d ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.eo, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.em, %bb.z ] ; 3 uses
  %i.t = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.t, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit", label %bb.o

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit": ; preds = %bb.e
  %i.u = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46772)
  %.not.i33 = icmp ult i64 %i.u, %.sroa.01.0
  br i1 %.not.i33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h9d59983d8eefc669E.exit.i.thread117, %_ZN4core5slice4sort6shared17find_existing_run17h9d59983d8eefc669E.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h9d59983d8eefc669E.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit"
  br i1 %4, label %bb.m, label %bb.l

bb.g:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit"
  %i.w = icmp ult i64 %i.u, 2
  br i1 %i.w, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.val10.i = load i32, ptr %i.x, align 8, !alias.scope !46772, !noalias !46773, !noundef !34 ; 3 uses
  %.val11.i = load i32, ptr %i.v, align 8, !alias.scope !46772, !noalias !46773, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46774
  store i32 %.val10.i, ptr %i.b, align 4, !noalias !46774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46774
  store i32 %.val11.i, ptr %i.a, align 4, !noalias !46774
  %i.y = call noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a), !noalias !46774
  %i.z = icmp slt i8 %i.y, 0                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46774
  %.not83 = icmp eq i64 %i.u, 2                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader51

.preheader51:                                     ; preds = %bb.h
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17h9d59983d8eefc669E.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.h
  br i1 %.not83, label %_ZN4core5slice4sort6shared17find_existing_run17h9d59983d8eefc669E.exit.i.thread117, label %.lr.ph70

.lr.ph:                                           ; preds = %.preheader51, %bb.i
  %.val9.i = phi i32 [ %.val8.i, %bb.i ], [ %.val10.i, %.preheader51 ]
  %.sroa.01.0.i.i66 = phi i64 [ %i.ad, %bb.i ], [ 2, %.preheader51 ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.01.0.i.i66
  %5 = add i64 %.sroa.01.0.i.i66, -1
  %6 = icmp ult i64 %5, %i.u
  call void @llvm.assume(i1 %6)
  %.val8.i = load i32, ptr %i.aa, align 8, !alias.scope !46772, !noalias !46773, !noundef !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !46774
  store i32 %.val8.i, ptr %i.d, align 4, !noalias !46774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46774
  store i32 %.val9.i, ptr %i.c, align 4, !noalias !46774
  %i.ab = call noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c), !noalias !46774
  %i.ac = icmp slt i8 %i.ab, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46774
  br i1 %i.ac, label %_ZN4core5slice4sort6shared17find_existing_run17h9d59983d8eefc669E.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ad = add nuw i64 %.sroa.01.0.i.i66, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.u
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h9d59983d8eefc669E.exit.i, label %.lr.ph

.lr.ph70:                                         ; preds = %.preheader, %bb.j
  %.val7.i = phi i32 [ %.val.i, %bb.j ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i69 = phi i64 [ %i.ah, %bb.j ], [ 2, %.preheader ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.01.1.i.i69
  %7 = add i64 %.sroa.01.1.i.i69, -1
  %8 = icmp ult i64 %7, %i.u
  call void @llvm.assume(i1 %8)
  %.val.i = load i32, ptr %i.ae, align 8, !alias.scope !46772, !noalias !46773, !noundef !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !46774
  store i32 %.val.i, ptr %i.f, align 4, !noalias !46774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !46774
  store i32 %.val7.i, ptr %i.e, align 4, !noalias !46774
  %i.af = call noundef i8 @"_ZN79_$LT$nickel_lang_parser..identifier..Ident$u20$as$u20$core..cmp..PartialOrd$GT$11partial_cmp17hd4c0d8b330fb3967E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e), !noalias !46774
  %i.ag = icmp slt i8 %i.af, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !46774
  br i1 %i.ag, label %bb.j, label %_ZN4core5slice4sort6shared17find_existing_run17h9d59983d8eefc669E.exit.i

bb.j:                                             ; preds = %.lr.ph70
  %i.ah = add nuw i64 %.sroa.01.1.i.i69, 1        ; 2 uses
  %exitcond96.not = icmp eq i64 %i.ah, %i.u
  br i1 %exitcond96.not, label %_ZN4core5slice4sort6shared17find_existing_run17h9d59983d8eefc669E.exit.i, label %.lr.ph70

_ZN4core5slice4sort6shared17find_existing_run17h9d59983d8eefc669E.exit.i: ; preds = %bb.i, %.lr.ph, %bb.j, %.lr.ph70
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i69, %.lr.ph70 ], [ %i.u, %bb.j ], [ %.sroa.01.0.i.i66, %.lr.ph ], [ %i.u, %bb.i ] ; 6 uses
  %i.ai = icmp ule i64 %.sroa.0.0.i.i, %i.u
  call void @llvm.assume(i1 %i.ai)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.f, label %bb.k

_ZN4core5slice4sort6shared17find_existing_run17h9d59983d8eefc669E.exit.i.thread117: ; preds = %.preheader
  br i1 %.not5.i119, label %bb.f, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h9d59983d8eefc669E.exit.i.thread: ; preds = %.preheader51
  br i1 %.not5.i114, label %bb.f, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"

bb.k:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h9d59983d8eefc669E.exit.i
  br i1 %i.z, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"

bb.l:                                             ; preds = %bb.f
  %.sroa.0.0.i41 = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 %.sroa.01.0)
  %i.aj = shl i64 %.sroa.0.0.i41, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h3cef0840f6e7d847E.exit

bb.m:                                             ; preds = %bb.f
  %.sroa.0.0.i40 = call noundef i64 @llvm.umin.i64(i64 %i.u, i64 32) ; 2 uses
  call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h89ed55bba5b5a68cE(ptr noalias noundef nonnull align 8 %i.v, i64 noundef %.sroa.0.0.i40, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  %i.ak = shl nuw nsw i64 %.sroa.0.0.i40, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h3cef0840f6e7d847E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i39
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit", label %.lr.ph.i.i39.epil.preheader

.lr.ph.i.i39.epil.preheader:                      ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa", %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.bo, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.aw to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.am = xor i64 %.sroa.0.014.i.i.epil.init, -1
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.014.i.i.epil.init ; 3 uses
  %i.ao = getelementptr [16 x i8], ptr %i.ax, i64 %i.am ; 3 uses
  %i.ap = load i32, ptr %i.an, align 8, !alias.scope !46775, !noalias !46776, !noundef !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !46775, !noalias !46776, !nonnull !34, !align !41, !noundef !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !46777, !noalias !46773
  store i32 %i.ap, ptr %i.ao, align 8, !alias.scope !46778, !noalias !46779
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !alias.scope !46778, !noalias !46779
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit": ; preds = %.lr.ph.i.i39.epil.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa", %_ZN4core5slice4sort6shared17find_existing_run17h9d59983d8eefc669E.exit.i.thread, %bb.g, %bb.n, %bb.k
  %.sroa.0.0.i.i4649 = phi i64 [ %i.u, %bb.g ], [ %.sroa.0.0.i.i, %bb.k ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h9d59983d8eefc669E.exit.i.thread ], [ %.sroa.0.0.i.i115122126, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa" ], [ %.sroa.0.0.i.i115122126, %.lr.ph.i.i39.epil.preheader ]
  %i.at = shl i64 %.sroa.0.0.i.i4649, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h3cef0840f6e7d847E.exit

bb.n:                                             ; preds = %bb.k
  %i.av = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !46780), !noalias !46773
  call void @llvm.experimental.noalias.scope.decl(metadata !46781), !noalias !46773
  %.not15.i.i = icmp eq i64 %i.av, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h9d59983d8eefc669E.exit.i.thread117, %bb.n
  %i.aw = phi i64 [ %i.av, %bb.n ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h9d59983d8eefc669E.exit.i.thread117 ] ; 4 uses
  %.sroa.0.0.i.i115122126 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h9d59983d8eefc669E.exit.i.thread117 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.0.i.i115122126 ; 3 uses
  %xtraiter = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.aw, 1
  br i1 %i.ay, label %.lr.ph.i.i39.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.aw, 9223372036854775806
  br label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.lr.ph.i.i39, %.lr.ph.preheader.i.i.new
  %.sroa.0.014.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.bo, %.lr.ph.i.i39 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i39 ]
  %i.az = xor i64 %.sroa.0.014.i.i, -1
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.014.i.i ; 3 uses
  %i.bb = getelementptr [16 x i8], ptr %i.ax, i64 %i.az ; 3 uses
  %i.bc = load i32, ptr %i.ba, align 8, !alias.scope !46775, !noalias !46776, !noundef !34
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !46775, !noalias !46776, !nonnull !34, !align !41, !noundef !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !alias.scope !46777, !noalias !46773
  store i32 %i.bc, ptr %i.bb, align 8, !alias.scope !46778, !noalias !46779
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !46778, !noalias !46779
  %i.bg = xor i64 %.sroa.0.014.i.i, -2
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.sroa.0.014.i.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bj = getelementptr [16 x i8], ptr %i.ax, i64 %i.bg ; 3 uses
  %i.bk = load i32, ptr %i.bi, align 8, !alias.scope !46775, !noalias !46776, !noundef !34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !46775, !noalias !46776, !nonnull !34, !align !41, !noundef !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !alias.scope !46777, !noalias !46773
  store i32 %i.bk, ptr %i.bj, align 8, !alias.scope !46778, !noalias !46779
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bm, ptr %i.bn, align 8, !alias.scope !46778, !noalias !46779
  %i.bo = add nuw nsw i64 %.sroa.0.014.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit.loopexit.unr-lcssa", label %.lr.ph.i.i39

_ZN4core5slice4sort6stable5drift10create_run17h3cef0840f6e7d847E.exit: ; preds = %bb.l, %bb.m, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.au, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h3f705fdec67cc6f1E.exit" ], [ %i.al, %bb.m ], [ %i.aj, %bb.l ] ; 2 uses
  %i.bp = lshr i64 %.sroa.018.0, 1
  %i.bq = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.br = sub i64 %factor, %i.bp
  %i.bs = add i64 %i.bq, %factor
  %i.bt = mul i64 %i.br, %.sroa.0.0
  %i.bu = mul i64 %i.bs, %.sroa.0.0
  %i.bv = xor i64 %i.bu, %i.bt
  %i.bw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bv, i1 false)
  %i.bx = trunc nuw nsw i64 %i.bw to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZN4core5slice4sort6stable5drift10create_run17h3cef0840f6e7d847E.exit
  %.sroa.026.0 = phi i8 [ %i.bx, %_ZN4core5slice4sort6stable5drift10create_run17h3cef0840f6e7d847E.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h3cef0840f6e7d847E.exit ], [ 1, %bb.e ] ; 2 uses
  %i.by = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.by, label %.lr.ph76, label %._crit_edge

.lr.ph76:                                         ; preds = %bb.o
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph76, %_ZN4core5slice4sort6stable5drift13logical_merge17h7bba4e52b0f40fe2E.exit
  %.sroa.02.175 = phi i64 [ %.sroa.02.0, %.lr.ph76 ], [ %i.ca, %_ZN4core5slice4sort6stable5drift13logical_merge17h7bba4e52b0f40fe2E.exit ] ; 2 uses
  %.sroa.018.174 = phi i64 [ %.sroa.018.0, %.lr.ph76 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h7bba4e52b0f40fe2E.exit ] ; 4 uses
  %i.ca = add i64 %.sroa.02.175, -1               ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noundef !34
  %.not29 = icmp ult i8 %i.cc, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h7bba4e52b0f40fe2E.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.174, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h7bba4e52b0f40fe2E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.175, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h7bba4e52b0f40fe2E.exit ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.ce, align 1
  br i1 %i.t, label %bb.z, label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ca
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !34 ; 3 uses
  %i.ch = lshr i64 %i.cg, 1                       ; 8 uses
  %i.ci = lshr i64 %.sroa.018.174, 1              ; 6 uses
  %i.cj = add nuw i64 %i.ch, %i.ci                ; 4 uses
  %i.ck = sub i64 %.sroa.09.0, %i.cj
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ck ; 6 uses
  %i.cm = icmp ugt i64 %i.cj, %3
  %i.cn = trunc i64 %.sroa.018.174 to i1
  %i.co = or i64 %i.cg, %.sroa.018.174
  %i.cp = trunc i64 %i.co to i1
  %or.cond3.i = or i1 %i.cm, %i.cp
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cq = trunc i64 %i.cg to i1
  br i1 %i.cq, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.cr = shl i64 %i.cj, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h7bba4e52b0f40fe2E.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.cn, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit35"

bb.u:                                             ; preds = %bb.r
  %i.cs = or i64 %i.ch, 1
  %i.ct = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = xor i32 %i.cv, 126
  call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h89ed55bba5b5a68cE(ptr noalias noundef nonnull align 8 %i.cl, i64 noundef %i.ch, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.cw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null)
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h2ffdd93ccbc5c2aeE.exit35": ; preds = %bb.t
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.ch
  %i.cy = or i64 %i.ci, 1
  %i.cz = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cy, i1 true)
  %i.da = trunc nuw nsw i64 %i.cz to i32
end_hunk_5
