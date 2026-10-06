Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/fuzz_indexing-6b65dc084f7ace2a.fuzz_indexing.ea400c9b89110869-cgu.0?download=true
inline.NumInlined: 15600
inline.NumDeleted: 7430
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hd6ef2da2fe844777E:.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28749
  %i.ba = fcmp olt double %i.as, %i.ay
  br i1 %i.ba, label %.split.i, label %.split10.us.i

.split10.us.i:                                    ; preds = %.split.i, %bb.n, %.split.us.i, %bb.k, %.split.i.preheader, %.split.us.i.preheader
  %.us-phi.i = phi ptr [ %0, %.split.i.preheader ], [ %0, %.split.us.i.preheader ], [ %.sroa.0.0.us.i28, %bb.k ], [ %0, %.split.us.i ], [ %.sroa.0.0.i26, %bb.n ], [ %0, %.split.i ] ; 3 uses
  store i64 %i.j, ptr %.us-phi.i, align 8, !noalias !28761
  %.sroa.6.0..us-phi.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..us-phi.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, i64 40, i1 false), !noalias !28761
  %.sroa.9.0..us-phi.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..us-phi.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i, i64 24, i1 false), !noalias !28761
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h71159411d4fdfcbbE.exit

bb.o:                                             ; preds = %.split16.us.i, %.split12.us.i
  %i.bb = phi i64 [ %i.aq, %.split12.us.i ], [ %i.az, %.split16.us.i ]
  %.sroa.0.08.i = phi ptr [ %.us-phi13.i, %.split12.us.i ], [ %.us-phi17.i, %.split16.us.i ] ; 3 uses
  %i.bc = landingpad { ptr, i32 }
          cleanup
  store i64 %i.bb, ptr %.sroa.0.08.i, align 8, !noalias !28762
  %.sroa.6.0..sroa.0.08.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa.0.08.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, i64 40, i1 false), !noalias !28762
  %.sroa.9.0..sroa.0.08.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa.0.08.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.i, i64 24, i1 false), !noalias !28762
  resume { ptr, i32 } %i.bc

_ZN4core5slice4sort6shared9smallsort11insert_tail17h71159411d4fdfcbbE.exit: ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$16sort_unstable_by28_$u7b$$u7b$closure$u7d$$u7d$17hd398996a6b678920E.exit.i", %.split10.us.i
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.026, i64 72 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.e
  br i1 %.not, label %._crit_edge, label %bb.a
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable14driftsort_main17h53e282d1762a483aE(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 21, 0) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 8              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw i64 %1, %i.b                     ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 333333)
  %.sroa.0.0.i19 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c) ; 2 uses
  %.sroa.0.0.i20 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i19, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = icmp ult i64 %.sroa.0.0.i19, 171
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = mul i64 %.sroa.0.0.i20, 24               ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.c, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.b
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !28769
  %i.g = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 8) #65, !noalias !28769 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @761) #66
  unreachable

bb.d:                                             ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.g, %bb.c ] ; 3 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %.sroa.0.0.i20, %bb.c ] ; 4 uses
  %i.i = icmp samesign ule i64 %.sroa.0.0.i20, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h93c98e84c88429bbE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i, i64 noundef %.sroa.4.0.i.i, i1 noundef zeroext %i.j)
          to label %"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$LP$u16$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17ha621529b12697abeE.exit" unwind label %"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$LP$u16$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17ha621529b12697abeE.exit21"

"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$LP$u16$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17ha621529b12697abeE.exit": ; preds = %bb.d
  %i.k = mul nuw nsw i64 %.sroa.4.0.i.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %1, 65
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h93c98e84c88429bbE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.a, i64 noundef 170, i1 noundef zeroext %i.l)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$LP$u16$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17ha621529b12697abeE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$LP$u16$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17ha621529b12697abeE.exit21": ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.m = mul nuw nsw i64 %.sroa.4.0.i.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable14driftsort_main17he2f94f5ae73fb14bE(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 21, 0) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 8              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw i64 %1, %i.b                     ; 2 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 333333)
  %.sroa.0.0.i19 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c) ; 2 uses
  %.sroa.0.0.i20 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i19, i64 48) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = icmp ult i64 %.sroa.0.0.i19, 171
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = mul i64 %.sroa.0.0.i20, 24               ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %i.c, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !34

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.b
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !28776
  %i.g = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 8) #65, !noalias !28776 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @761) #66
  unreachable

bb.d:                                             ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.g, %bb.c ] ; 3 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %.sroa.0.0.i20, %bb.c ] ; 4 uses
  %i.i = icmp samesign ule i64 %.sroa.0.0.i20, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h9ac19a30d32ac0fbE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i, i64 noundef %.sroa.4.0.i.i, i1 noundef zeroext %i.j)
          to label %"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$LP$u16$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17ha621529b12697abeE.exit" unwind label %"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$LP$u16$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17ha621529b12697abeE.exit21"

"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$LP$u16$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17ha621529b12697abeE.exit": ; preds = %bb.d
  %i.k = mul nuw nsw i64 %.sroa.4.0.i.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.l = icmp ult i64 %1, 65
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h9ac19a30d32ac0fbE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %i.a, i64 noundef 170, i1 noundef zeroext %i.l)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$LP$u16$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17ha621529b12697abeE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

"_ZN4core3ptr87drop_in_place$LT$alloc..vec..Vec$LT$$LP$u16$C$$RF$serde_json..raw..RawValue$RP$$GT$$GT$17ha621529b12697abeE.exit21": ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.m = mul nuw nsw i64 %.sroa.4.0.i.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #65
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h93c98e84c88429bbE(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 21, 0) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = udiv i64 4611686018427387904, %1
  %i.d = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.d, 0
  %i.e = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.c, %i.e         ; 2 uses
  %i.f = icmp ult i64 %1, 4097
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = lshr i64 %1, 1
  %i.i = sub nuw nsw i64 %1, %i.h
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.c ], [ %i.g, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.y, %bb.d
  %.sroa.018.0 = phi i64 [ 1, %bb.d ], [ %.sroa.023.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.dm, %bb.y ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.dk, %bb.y ] ; 3 uses
  %i.j = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.j, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha568bc79642a2095E.exit", label %bb.o

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha568bc79642a2095E.exit": ; preds = %bb.e
  %i.k = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.k, %.sroa.01.0
  br i1 %.not.i33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h39f232abd7c7a54dE.exit.i.thread96, %_ZN4core5slice4sort6shared17find_existing_run17h39f232abd7c7a54dE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h39f232abd7c7a54dE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha568bc79642a2095E.exit"
  br i1 %4, label %bb.m, label %bb.l

bb.g:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha568bc79642a2095E.exit"
  %i.m = icmp ult i64 %i.k, 2
  br i1 %i.m, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6f2abbacd2c972bfE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.val10.i = load i16, ptr %i.n, align 8, !alias.scope !28804, !noalias !28805, !noundef !16 ; 3 uses
  %.val11.i = load i16, ptr %i.l, align 8, !alias.scope !28804, !noalias !28805, !noundef !16
  %i.o = icmp ult i16 %.val10.i, %.val11.i        ; 2 uses
  %.not72 = icmp eq i64 %i.k, 2                   ; 2 uses
  br i1 %i.o, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.h
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17h39f232abd7c7a54dE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.h
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17h39f232abd7c7a54dE.exit.i.thread96, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.i
  %.val9.i = phi i16 [ %.val8.i, %bb.i ], [ %.val10.i, %.preheader50 ]
  %.sroa.01.0.i.i55 = phi i64 [ %i.r, %bb.i ], [ 2, %.preheader50 ] ; 4 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.01.0.i.i55
  %5 = add i64 %.sroa.01.0.i.i55, -1
  %6 = icmp ult i64 %5, %i.k
  tail call void @llvm.assume(i1 %6)
  %.val8.i = load i16, ptr %i.p, align 8, !alias.scope !28804, !noalias !28805, !noundef !16 ; 2 uses
  %i.q = icmp ult i16 %.val8.i, %.val9.i
  br i1 %i.q, label %_ZN4core5slice4sort6shared17find_existing_run17h39f232abd7c7a54dE.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.r = add nuw i64 %.sroa.01.0.i.i55, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.k
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h39f232abd7c7a54dE.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.j
  %.val7.i = phi i16 [ %.val.i, %bb.j ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i58 = phi i64 [ %i.u, %bb.j ], [ 2, %.preheader ] ; 4 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.01.1.i.i58
  %7 = add i64 %.sroa.01.1.i.i58, -1
  %8 = icmp ult i64 %7, %i.k
  tail call void @llvm.assume(i1 %8)
  %.val.i = load i16, ptr %i.s, align 8, !alias.scope !28804, !noalias !28805, !noundef !16 ; 2 uses
  %i.t = icmp ult i16 %.val.i, %.val7.i
  br i1 %i.t, label %bb.j, label %_ZN4core5slice4sort6shared17find_existing_run17h39f232abd7c7a54dE.exit.i

bb.j:                                             ; preds = %.lr.ph59
  %i.u = add nuw i64 %.sroa.01.1.i.i58, 1         ; 2 uses
  %exitcond79.not = icmp eq i64 %i.u, %i.k
  br i1 %exitcond79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h39f232abd7c7a54dE.exit.i, label %.lr.ph59

_ZN4core5slice4sort6shared17find_existing_run17h39f232abd7c7a54dE.exit.i: ; preds = %bb.i, %.lr.ph, %bb.j, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.k, %bb.j ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.k, %bb.i ] ; 6 uses
  %i.v = icmp ule i64 %.sroa.0.0.i.i, %i.k
  tail call void @llvm.assume(i1 %i.v)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.f, label %bb.k

_ZN4core5slice4sort6shared17find_existing_run17h39f232abd7c7a54dE.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.f, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17h39f232abd7c7a54dE.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i93, label %bb.f, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6f2abbacd2c972bfE.exit"

bb.k:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h39f232abd7c7a54dE.exit.i
  br i1 %i.o, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6f2abbacd2c972bfE.exit"

bb.l:                                             ; preds = %bb.f
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %.sroa.01.0)
  %i.w = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h710d66efd127321cE.exit

bb.m:                                             ; preds = %bb.f
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 32) ; 2 uses
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h36cc6bc9382fb453E(ptr noalias noundef nonnull align 8 %i.l, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null)
  %i.x = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.y = or disjoint i64 %i.x, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h710d66efd127321cE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6f2abbacd2c972bfE.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17h39f232abd7c7a54dE.exit.i.thread, %bb.g, %bb.n, %bb.k
  %.sroa.0.0.i.i4548 = phi i64 [ %i.k, %bb.g ], [ %.sroa.0.0.i.i, %bb.k ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h39f232abd7c7a54dE.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %.lr.ph.i.i38 ]
  %i.z = shl i64 %.sroa.0.0.i.i4548, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h710d66efd127321cE.exit

bb.n:                                             ; preds = %bb.k
  %i.ab = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28806), !noalias !28805
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28807), !noalias !28805
  %.not15.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6f2abbacd2c972bfE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h39f232abd7c7a54dE.exit.i.thread96, %bb.n
  %i.ac = phi i64 [ %i.ab, %bb.n ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h39f232abd7c7a54dE.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h39f232abd7c7a54dE.exit.i.thread96 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.0.0.i.i94101105
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.al, %.lr.ph.i.i38 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ae = xor i64 %.sroa.0.014.i.i, -1
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.0.014.i.i ; 3 uses
  %i.ag = getelementptr [24 x i8], ptr %i.ad, i64 %i.ae ; 3 uses
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !alias.scope !28808, !noalias !28809
  %i.ai = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !28810, !noalias !28811
  store <2 x i64> %i.ai, ptr %i.af, align 8, !alias.scope !28808, !noalias !28809
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !alias.scope !28810, !noalias !28811
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28812), !noalias !28805
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28813), !noalias !28805
  %.sroa.0.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !28814, !noalias !28815
  %.sroa.02.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !28816, !noalias !28817
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i.i.i, ptr %i.aj, align 8, !alias.scope !28814, !noalias !28815
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i.i.i, ptr %i.ak, align 8, !alias.scope !28816, !noalias !28817
  %i.al = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.al, %i.ac
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6f2abbacd2c972bfE.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h710d66efd127321cE.exit: ; preds = %bb.l, %bb.m, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6f2abbacd2c972bfE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.aa, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6f2abbacd2c972bfE.exit" ], [ %i.y, %bb.m ], [ %i.w, %bb.l ] ; 2 uses
  %i.am = lshr i64 %.sroa.018.0, 1
  %i.an = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.ao = sub i64 %factor, %i.am
  %i.ap = add i64 %i.an, %factor
  %i.aq = mul i64 %i.ao, %.sroa.0.0
  %i.ar = mul i64 %i.ap, %.sroa.0.0
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.as, i1 false)
  %i.au = trunc nuw nsw i64 %i.at to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZN4core5slice4sort6stable5drift10create_run17h710d66efd127321cE.exit
  %.sroa.026.0 = phi i8 [ %i.au, %_ZN4core5slice4sort6stable5drift10create_run17h710d66efd127321cE.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h710d66efd127321cE.exit ], [ 1, %bb.e ] ; 2 uses
  %i.av = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.av, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph65, %_ZN4core5slice4sort6stable5drift13logical_merge17h35380f8fa681e4a8E.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.ax, %_ZN4core5slice4sort6stable5drift13logical_merge17h35380f8fa681e4a8E.exit ] ; 2 uses
  %.sroa.018.163 = phi i64 [ %.sroa.018.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h35380f8fa681e4a8E.exit ] ; 4 uses
  %i.ax = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noundef !16
  %.not29 = icmp ult i8 %i.az, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17h35380f8fa681e4a8E.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.163, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17h35380f8fa681e4a8E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.164, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17h35380f8fa681e4a8E.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bb, align 1
  br i1 %i.j, label %bb.y, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !16 ; 3 uses
  %i.be = lshr i64 %i.bd, 1                       ; 8 uses
  %i.bf = lshr i64 %.sroa.018.163, 1              ; 6 uses
  %i.bg = add nuw i64 %i.be, %i.bf                ; 4 uses
  %i.bh = sub i64 %.sroa.09.0, %i.bg
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bh ; 6 uses
  %i.bj = icmp ugt i64 %i.bg, %3
  %i.bk = trunc i64 %.sroa.018.163 to i1
  %i.bl = or i64 %i.bd, %.sroa.018.163
  %i.bm = trunc i64 %i.bl to i1
  %or.cond3.i = or i1 %i.bj, %i.bm
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bn = trunc i64 %i.bd to i1
  br i1 %i.bn, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bo = shl i64 %i.bg, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h35380f8fa681e4a8E.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.bk, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha568bc79642a2095E.exit35"

bb.u:                                             ; preds = %bb.r
  %i.bp = or i64 %i.be, 1
  %i.bq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h36cc6bc9382fb453E(ptr noalias noundef nonnull align 8 %i.bi, i64 noundef %i.be, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null)
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha568bc79642a2095E.exit35": ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.be
  %i.bv = or i64 %i.bf, 1
  %i.bw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h36cc6bc9382fb453E(ptr noalias noundef nonnull align 8 %i.bu, i64 noundef %i.bf, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null)
  br label %bb.v

bb.v:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha568bc79642a2095E.exit35", %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28819)
  %i.ca = icmp eq i64 %i.be, 0
  %i.cb = icmp eq i64 %i.bf, 0
  %or.cond.i = or i1 %i.cb, %i.ca
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17h4ae66e075a1c2fd0E.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 range(i64 0, -9223372036854775808) %i.be) ; 2 uses
  %i.cc = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cc, label %_ZN4core5slice4sort6stable5merge5merge17h4ae66e075a1c2fd0E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.be ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.be, %i.bf  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cd, ptr %i.bi
  %i.ce = mul i64 %.sroa.0.0.i.i36, 24            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ce, i1 false), !alias.scope !28820
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.x, %.preheader.i
  %i.cg = phi ptr [ %i.cq, %.preheader.i ], [ %i.cf, %bb.x ]
  %i.ch = phi ptr [ %i.co, %.preheader.i ], [ %i.cd, %bb.x ]
  %.sroa.0.0.i17.i = phi ptr [ %i.ck, %.preheader.i ], [ %i.aw, %bb.x ]
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -24 ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 -24 ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -24 ; 2 uses
  %.val.i.i = load i16, ptr %i.cj, align 8, !alias.scope !28819, !noalias !28821, !noundef !16
  %.val10.i.i = load i16, ptr %i.ci, align 8, !alias.scope !28818, !noalias !28822, !noundef !16
  %i.cl = icmp ult i16 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.cl, ptr %i.ci, ptr %i.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !alias.scope !28820, !noalias !28823
  %i.cm = xor i1 %i.cl, true
  %i.cn = zext i1 %i.cm to i64
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %i.cn ; 3 uses
  %i.cp = zext i1 %i.cl to i64
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.cp ; 3 uses
  %i.cr = icmp eq ptr %i.co, %i.bi
  %i.cs = icmp eq ptr %i.cq, %2
  %or.cond.i.i = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %or.cond.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h249c8f8614371522E.exit.i", label %.preheader.i

.lr.ph.i.i:                                       ; preds = %bb.x, %.lr.ph.i.i
  %i.ct = phi ptr [ %i.db, %.lr.ph.i.i ], [ %i.bi, %bb.x ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %i.cd, %bb.x ] ; 3 uses
  %i.cu = phi ptr [ %i.cy, %.lr.ph.i.i ], [ %2, %bb.x ] ; 3 uses
  %.sroa.0.0.val.i.i = load i16, ptr %.sroa.0.02.i.i, align 8, !alias.scope !28818, !noalias !28824, !noundef !16
  %.val.i19.i = load i16, ptr %i.cu, align 8, !alias.scope !28819, !noalias !28825, !noundef !16
  %i.cv = icmp ult i16 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.cw = xor i1 %i.cv, true
  %spec.select.i.i = select i1 %i.cv, ptr %.sroa.0.02.i.i, ptr %i.cu
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %spec.select.i.i, i64 24, i1 false), !alias.scope !28820, !noalias !28826
  %i.cx = zext i1 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cu, i64 %i.cx ; 3 uses
  %i.cz = zext i1 %i.cv to i64
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.02.i.i, i64 %i.cz ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 24 ; 2 uses
  %i.dc = icmp ne ptr %i.cy, %i.cf
  %i.dd = icmp ne ptr %i.da, %i.aw
  %or.cond.i20.i = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h249c8f8614371522E.exit.i"

"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h249c8f8614371522E.exit.i": ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.co, %.preheader.i ], [ %i.db, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.cq, %.preheader.i ], [ %i.cf, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.cy, %.lr.ph.i.i ] ; 2 uses
  %i.de = ptrtoint ptr %.sroa.7.0.i to i64
  %i.df = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dg = sub nuw i64 %i.de, %i.df
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dg, i1 false), !alias.scope !28820, !noalias !28827
  br label %_ZN4core5slice4sort6stable5merge5merge17h4ae66e075a1c2fd0E.exit

_ZN4core5slice4sort6stable5merge5merge17h4ae66e075a1c2fd0E.exit: ; preds = %bb.v, %bb.w, %"_ZN4core5slice4sort6stable5merge19MergeState$LT$T$GT$10merge_down17h249c8f8614371522E.exit.i"
  %i.dh = shl i64 %i.bg, 1
  %i.di = or disjoint i64 %i.dh, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h35380f8fa681e4a8E.exit

_ZN4core5slice4sort6stable5drift13logical_merge17h35380f8fa681e4a8E.exit: ; preds = %bb.s, %_ZN4core5slice4sort6stable5merge5merge17h4ae66e075a1c2fd0E.exit
  %.sroa.0.0.i = phi i64 [ %i.di, %_ZN4core5slice4sort6stable5merge5merge17h4ae66e075a1c2fd0E.exit ], [ %i.bo, %bb.s ] ; 2 uses
  %i.dj = icmp ugt i64 %i.ax, 1
  br i1 %i.dj, label %bb.p, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.dk = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.dl = lshr i64 %.sroa.023.0, 1
  %i.dm = add i64 %i.dl, %.sroa.09.0
  br label %bb.e

bb.z:                                             ; preds = %._crit_edge
  %i.dn = and i64 %.sroa.018.1.lcssa, 1
  %.not31 = icmp eq i64 %i.dn, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.do = or i64 %1, 1
  %i.dp = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.do, i1 true)
  %i.dq = trunc nuw nsw i64 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 1
  %i.ds = xor i32 %i.dr, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h36cc6bc9382fb453E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ds, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h9ac19a30d32ac0fbE(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 21, 0) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = udiv i64 4611686018427387904, %1
  %i.d = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.d, 0
  %i.e = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.c, %i.e         ; 2 uses
  %i.f = icmp ult i64 %1, 4097
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = lshr i64 %1, 1
  %i.i = sub nuw nsw i64 %1, %i.h
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.i, i64 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.c ], [ %i.g, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i93 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i98 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.y, %bb.d
  %.sroa.018.0 = phi i64 [ 1, %bb.d ], [ %.sroa.023.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.d ], [ %i.dm, %bb.y ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.d ], [ %i.dk, %bb.y ] ; 3 uses
  %i.j = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.j, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha568bc79642a2095E.exit", label %bb.o

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha568bc79642a2095E.exit": ; preds = %bb.e
  %i.k = sub nuw i64 %1, %.sroa.09.0              ; 13 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i33 = icmp ult i64 %i.k, %.sroa.01.0
  br i1 %.not.i33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17ha86895d25150d9feE.exit.i.thread96, %_ZN4core5slice4sort6shared17find_existing_run17ha86895d25150d9feE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17ha86895d25150d9feE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha568bc79642a2095E.exit"
  br i1 %4, label %bb.m, label %bb.l

bb.g:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha568bc79642a2095E.exit"
  %i.m = icmp ult i64 %i.k, 2
  br i1 %i.m, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6f2abbacd2c972bfE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.val10.i = load i16, ptr %i.n, align 8, !alias.scope !28855, !noalias !28856, !noundef !16 ; 3 uses
  %.val11.i = load i16, ptr %i.l, align 8, !alias.scope !28855, !noalias !28856, !noundef !16
  %i.o = icmp ult i16 %.val10.i, %.val11.i        ; 2 uses
  %.not72 = icmp eq i64 %i.k, 2                   ; 2 uses
  br i1 %i.o, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.h
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17ha86895d25150d9feE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.h
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17ha86895d25150d9feE.exit.i.thread96, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.i
  %.val9.i = phi i16 [ %.val8.i, %bb.i ], [ %.val10.i, %.preheader50 ]
  %.sroa.01.0.i.i55 = phi i64 [ %i.r, %bb.i ], [ 2, %.preheader50 ] ; 4 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.01.0.i.i55
  %5 = add i64 %.sroa.01.0.i.i55, -1
  %6 = icmp ult i64 %5, %i.k
  tail call void @llvm.assume(i1 %6)
  %.val8.i = load i16, ptr %i.p, align 8, !alias.scope !28855, !noalias !28856, !noundef !16 ; 2 uses
  %i.q = icmp ult i16 %.val8.i, %.val9.i
  br i1 %i.q, label %_ZN4core5slice4sort6shared17find_existing_run17ha86895d25150d9feE.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.r = add nuw i64 %.sroa.01.0.i.i55, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.k
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17ha86895d25150d9feE.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.j
  %.val7.i = phi i16 [ %.val.i, %bb.j ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i58 = phi i64 [ %i.u, %bb.j ], [ 2, %.preheader ] ; 4 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.01.1.i.i58
  %7 = add i64 %.sroa.01.1.i.i58, -1
  %8 = icmp ult i64 %7, %i.k
  tail call void @llvm.assume(i1 %8)
  %.val.i = load i16, ptr %i.s, align 8, !alias.scope !28855, !noalias !28856, !noundef !16 ; 2 uses
  %i.t = icmp ult i16 %.val.i, %.val7.i
  br i1 %i.t, label %bb.j, label %_ZN4core5slice4sort6shared17find_existing_run17ha86895d25150d9feE.exit.i

bb.j:                                             ; preds = %.lr.ph59
  %i.u = add nuw i64 %.sroa.01.1.i.i58, 1         ; 2 uses
  %exitcond79.not = icmp eq i64 %i.u, %i.k
  br i1 %exitcond79.not, label %_ZN4core5slice4sort6shared17find_existing_run17ha86895d25150d9feE.exit.i, label %.lr.ph59

_ZN4core5slice4sort6shared17find_existing_run17ha86895d25150d9feE.exit.i: ; preds = %bb.i, %.lr.ph, %bb.j, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.k, %bb.j ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.k, %bb.i ] ; 6 uses
  %i.v = icmp ule i64 %.sroa.0.0.i.i, %i.k
  tail call void @llvm.assume(i1 %i.v)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.f, label %bb.k

_ZN4core5slice4sort6shared17find_existing_run17ha86895d25150d9feE.exit.i.thread96: ; preds = %.preheader
  br i1 %.not5.i98, label %bb.f, label %.lr.ph.preheader.i.i

_ZN4core5slice4sort6shared17find_existing_run17ha86895d25150d9feE.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i93, label %bb.f, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6f2abbacd2c972bfE.exit"

bb.k:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17ha86895d25150d9feE.exit.i
  br i1 %i.o, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6f2abbacd2c972bfE.exit"

bb.l:                                             ; preds = %bb.f
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 %.sroa.01.0)
  %i.w = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h37200f73e990a1d9E.exit

bb.m:                                             ; preds = %bb.f
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.k, i64 32) ; 2 uses
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h0c11d39d751593d5E(ptr noalias noundef nonnull align 8 %i.l, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null)
  %i.x = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.y = or disjoint i64 %i.x, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h37200f73e990a1d9E.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6f2abbacd2c972bfE.exit": ; preds = %.lr.ph.i.i38, %_ZN4core5slice4sort6shared17find_existing_run17ha86895d25150d9feE.exit.i.thread, %bb.g, %bb.n, %bb.k
  %.sroa.0.0.i.i4548 = phi i64 [ %i.k, %bb.g ], [ %.sroa.0.0.i.i, %bb.k ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17ha86895d25150d9feE.exit.i.thread ], [ %.sroa.0.0.i.i94101105, %.lr.ph.i.i38 ]
  %i.z = shl i64 %.sroa.0.0.i.i4548, 1
  %i.aa = or disjoint i64 %i.z, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h37200f73e990a1d9E.exit

bb.n:                                             ; preds = %bb.k
  %i.ab = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28857), !noalias !28856
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28858), !noalias !28856
  %.not15.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6f2abbacd2c972bfE.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17ha86895d25150d9feE.exit.i.thread96, %bb.n
  %i.ac = phi i64 [ %i.ab, %bb.n ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17ha86895d25150d9feE.exit.i.thread96 ]
  %.sroa.0.0.i.i94101105 = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17ha86895d25150d9feE.exit.i.thread96 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.0.0.i.i94101105
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38, %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i = phi i64 [ %i.al, %.lr.ph.i.i38 ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ae = xor i64 %.sroa.0.014.i.i, -1
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.sroa.0.014.i.i ; 3 uses
  %i.ag = getelementptr [24 x i8], ptr %i.ad, i64 %i.ae ; 3 uses
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !alias.scope !28859, !noalias !28860
  %i.ai = load <2 x i64>, ptr %i.ag, align 8, !alias.scope !28861, !noalias !28862
  store <2 x i64> %i.ai, ptr %i.af, align 8, !alias.scope !28859, !noalias !28860
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !alias.scope !28861, !noalias !28862
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28863), !noalias !28856
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28864), !noalias !28856
  %.sroa.0.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !28865, !noalias !28866
  %.sroa.02.0.copyload.i.i.i.2.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !28867, !noalias !28868
  store i64 %.sroa.02.0.copyload.i.i.i.2.i.i.i.i, ptr %i.aj, align 8, !alias.scope !28865, !noalias !28866
  store i64 %.sroa.0.0.copyload.i.i.i.2.i.i.i.i, ptr %i.ak, align 8, !alias.scope !28867, !noalias !28868
  %i.al = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.al, %i.ac
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6f2abbacd2c972bfE.exit", label %.lr.ph.i.i38

_ZN4core5slice4sort6stable5drift10create_run17h37200f73e990a1d9E.exit: ; preds = %bb.l, %bb.m, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6f2abbacd2c972bfE.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.aa, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h6f2abbacd2c972bfE.exit" ], [ %i.y, %bb.m ], [ %i.w, %bb.l ] ; 2 uses
  %i.am = lshr i64 %.sroa.018.0, 1
  %i.an = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.ao = sub i64 %factor, %i.am
  %i.ap = add i64 %i.an, %factor
  %i.aq = mul i64 %i.ao, %.sroa.0.0
  %i.ar = mul i64 %i.ap, %.sroa.0.0
  %i.as = xor i64 %i.ar, %i.aq
  %i.at = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.as, i1 false)
  %i.au = trunc nuw nsw i64 %i.at to i8
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZN4core5slice4sort6stable5drift10create_run17h37200f73e990a1d9E.exit
  %.sroa.026.0 = phi i8 [ %i.au, %_ZN4core5slice4sort6stable5drift10create_run17h37200f73e990a1d9E.exit ], [ 0, %bb.e ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h37200f73e990a1d9E.exit ], [ 1, %bb.e ] ; 2 uses
  %i.av = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.av, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph65, %_ZN4core5slice4sort6stable5drift13logical_merge17hc07e31bee1efa2ebE.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.ax, %_ZN4core5slice4sort6stable5drift13logical_merge17hc07e31bee1efa2ebE.exit ] ; 2 uses
  %.sroa.018.163 = phi i64 [ %.sroa.018.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hc07e31bee1efa2ebE.exit ] ; 4 uses
  %i.ax = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noundef !16
  %.not29 = icmp ult i8 %i.az, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hc07e31bee1efa2ebE.exit, %bb.p, %bb.o
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.o ], [ %.sroa.018.163, %bb.p ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hc07e31bee1efa2ebE.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.o ], [ %.sroa.02.164, %bb.p ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hc07e31bee1efa2ebE.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bb, align 1
  br i1 %i.j, label %bb.y, label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !16 ; 3 uses
  %i.be = lshr i64 %i.bd, 1                       ; 8 uses
  %i.bf = lshr i64 %.sroa.018.163, 1              ; 6 uses
  %i.bg = add nuw i64 %i.be, %i.bf                ; 4 uses
  %i.bh = sub i64 %.sroa.09.0, %i.bg
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bh ; 6 uses
  %i.bj = icmp ugt i64 %i.bg, %3
  %i.bk = trunc i64 %.sroa.018.163 to i1
  %i.bl = or i64 %i.bd, %.sroa.018.163
  %i.bm = trunc i64 %i.bl to i1
  %or.cond3.i = or i1 %i.bj, %i.bm
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bn = trunc i64 %i.bd to i1
  br i1 %i.bn, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bo = shl i64 %i.bg, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hc07e31bee1efa2ebE.exit

bb.t:                                             ; preds = %bb.u, %bb.r
  br i1 %i.bk, label %bb.v, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha568bc79642a2095E.exit35"

bb.u:                                             ; preds = %bb.r
  %i.bp = or i64 %i.be, 1
  %i.bq = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h0c11d39d751593d5E(ptr noalias noundef nonnull align 8 %i.bi, i64 noundef %i.be, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null)
  br label %bb.t

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha568bc79642a2095E.exit35": ; preds = %bb.t
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.be
  %i.bv = or i64 %i.bf, 1
  %i.bw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h0c11d39d751593d5E(ptr noalias noundef nonnull align 8 %i.bu, i64 noundef %i.bf, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.bz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null)
  br label %bb.v

bb.v:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha568bc79642a2095E.exit35", %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28870)
  %i.ca = icmp eq i64 %i.be, 0
  %i.cb = icmp eq i64 %i.bf, 0
  %or.cond.i = or i1 %i.cb, %i.ca
  br i1 %or.cond.i, label %_ZN4core5slice4sort6stable5merge5merge17hf6d7f1d85ec60885E.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.i.i36 = tail call i64 @llvm.umin.i64(i64 %i.bf, i64 range(i64 0, -9223372036854775808) %i.be) ; 2 uses
  %i.cc = icmp ult i64 %3, %.sroa.0.0.i.i36
  br i1 %i.cc, label %_ZN4core5slice4sort6stable5merge5merge17hf6d7f1d85ec60885E.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.be ; 3 uses
  %.not.i37 = icmp samesign ugt i64 %i.be, %i.bf  ; 2 uses
  %.16.i = select i1 %.not.i37, ptr %i.cd, ptr %i.bi
  %i.ce = mul i64 %.sroa.0.0.i.i36, 24            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %.16.i, i64 %i.ce, i1 false), !alias.scope !28871
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce ; 3 uses
  br i1 %.not.i37, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %bb.x, %.preheader.i
  %i.cg = phi ptr [ %i.cq, %.preheader.i ], [ %i.cf, %bb.x ]
  %i.ch = phi ptr [ %i.co, %.preheader.i ], [ %i.cd, %bb.x ]
  %.sroa.0.0.i17.i = phi ptr [ %i.ck, %.preheader.i ], [ %i.aw, %bb.x ]
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -24 ; 3 uses
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 -24 ; 3 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.0.0.i17.i, i64 -24 ; 2 uses
  %.val.i.i = load i16, ptr %i.cj, align 8, !alias.scope !28870, !noalias !28872, !noundef !16
  %.val10.i.i = load i16, ptr %i.ci, align 8, !alias.scope !28869, !noalias !28873, !noundef !16
  %i.cl = icmp ult i16 %.val.i.i, %.val10.i.i     ; 3 uses
  %..i.i = select i1 %i.cl, ptr %i.ci, ptr %i.cj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !alias.scope !28871, !noalias !28874
  %i.cm = xor i1 %i.cl, true
  %i.cn = zext i1 %i.cm to i64
end_hunk_0
begin_hunk_1_@_ZN4core5slice4sort6stable9quicksort9quicksort17h36cc6bc9382fb453E:bb.a
  %i.fm = getelementptr [24 x i8], ptr %i.fe, i64 %.sroa.04.014.i
  %i.fn = getelementptr i8, ptr %i.fm, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fn, ptr noundef nonnull align 8 dereferenceable(24) %i.fl, i64 24, i1 false), !alias.scope !28984
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h71718ba3d784e73eE.exit.loopexit.unr-lcssa, label %bb.z

_ZN4core5slice4sort6stable9quicksort16stable_partition17h71718ba3d784e73eE.exit.loopexit.unr-lcssa: ; preds = %bb.z
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h71718ba3d784e73eE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h71718ba3d784e73eE.exit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.04.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.fj, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h71718ba3d784e73eE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod124 = trunc i64 %i.fd to i1
  call void @llvm.assume(i1 %lcmp.mod124)
  %i.fo = xor i64 %.sroa.04.014.i.epil.init, -1
  %i.fp = getelementptr [24 x i8], ptr %i.eo, i64 %i.fo
  %i.fq = getelementptr [24 x i8], ptr %i.fe, i64 %.sroa.04.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, ptr noundef nonnull align 8 dereferenceable(24) %i.fp, i64 24, i1 false), !alias.scope !28984
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17h71718ba3d784e73eE.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17h71718ba3d784e73eE.exit: ; preds = %.epil.preheader, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h71718ba3d784e73eE.exit.loopexit.unr-lcssa, %bb.y
  %i.fr = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.fr, label %.critedge35, label %bb.aa

bb.aa:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17h71718ba3d784e73eE.exit
  %.not33 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.15.09244
  br i1 %.not33, label %bb.aj, label %bb.ak, !prof !18

.critedge35:                                      ; preds = %bb.s, %_ZN4core5slice4sort6stable9quicksort16stable_partition17h71718ba3d784e73eE.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !28987)
  %.not62 = icmp ult i64 %3, %.sroa.15.09244
  br i1 %.not62, label %bb.ac, label %bb.ab, !prof !47

bb.ab:                                            ; preds = %.critedge35
  %i.fs = getelementptr [24 x i8], ptr %2, i64 %.sroa.15.09244 ; 4 uses
  br label %bb.ad

bb.ac:                                            ; preds = %.critedge35
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.af, %bb.ab
  %.sroa.19.0.i40 = phi ptr [ %i.fs, %bb.ab ], [ %i.gd, %bb.af ] ; 2 uses
  %.sroa.11.0.i41 = phi i64 [ 0, %bb.ab ], [ %i.gf, %bb.af ] ; 2 uses
  %.sroa.5.0.i42 = phi ptr [ %.sroa.0.0.ph99, %bb.ab ], [ %i.gg, %bb.af ] ; 3 uses
  %.sroa.02.0.i43 = phi i64 [ %.sroa.0.0.i36, %bb.ab ], [ %.sroa.15.09244, %bb.af ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph99, i64 %.sroa.02.0.i43 ; 2 uses
  %i.fu = icmp ult ptr %.sroa.5.0.i42, %i.ft
  br i1 %i.fu, label %.lr.ph.i52, label %._crit_edge.i44

.lr.ph.i52:                                       ; preds = %bb.ad
  %.val24.i53 = load i16, ptr %i.en, align 8, !alias.scope !28988, !noalias !28987, !noundef !16
  br label %bb.ae

._crit_edge.i44:                                  ; preds = %bb.ae, %bb.ad
  %.sroa.19.1.lcssa.i45 = phi ptr [ %.sroa.19.0.i40, %bb.ad ], [ %i.fx, %bb.ae ]
  %.sroa.11.1.lcssa.i46 = phi i64 [ %.sroa.11.0.i41, %bb.ad ], [ %i.ga, %bb.ae ] ; 10 uses
  %.sroa.5.1.lcssa.i47 = phi ptr [ %.sroa.5.0.i42, %bb.ad ], [ %i.gb, %bb.ae ] ; 2 uses
  %i.fv = icmp eq i64 %.sroa.02.0.i43, %.sroa.15.09244
  br i1 %i.fv, label %bb.ag, label %bb.af

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i52
  %.sroa.5.111.i54 = phi ptr [ %.sroa.5.0.i42, %.lr.ph.i52 ], [ %i.gb, %bb.ae ] ; 3 uses
  %.sroa.11.110.i55 = phi i64 [ %.sroa.11.0.i41, %.lr.ph.i52 ], [ %i.ga, %bb.ae ] ; 2 uses
  %.sroa.19.19.i56 = phi ptr [ %.sroa.19.0.i40, %.lr.ph.i52 ], [ %i.fx, %bb.ae ]
  %.val.i57 = load i16, ptr %.sroa.5.111.i54, align 8, !alias.scope !28988, !noalias !28987, !noundef !16
  %i.fw = icmp uge i16 %.val24.i53, %.val.i57     ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %.sroa.19.19.i56, i64 -24 ; 3 uses
  %.sroa.01.0.i.i58 = select i1 %i.fw, ptr %2, ptr %i.fx
  %i.fy = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i58, i64 %.sroa.11.110.i55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fy, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i54, i64 24, i1 false), !alias.scope !28989, !noalias !28990
  %i.fz = zext i1 %i.fw to i64
  %i.ga = add i64 %.sroa.11.110.i55, %i.fz        ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i54, i64 24 ; 3 uses
  %i.gc = icmp ult ptr %i.gb, %i.ft
  br i1 %i.gc, label %bb.ae, label %._crit_edge.i44

bb.af:                                            ; preds = %._crit_edge.i44
  %i.gd = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i45, i64 -24
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ge, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i47, i64 24, i1 false), !alias.scope !28989, !noalias !28991
  %i.gf = add i64 %.sroa.11.1.lcssa.i46, 1
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i47, i64 24
  br label %bb.ad

bb.ag:                                            ; preds = %._crit_edge.i44
  %i.gh = mul i64 %.sroa.11.1.lcssa.i46, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph99, ptr nonnull align 8 %2, i64 %i.gh, i1 false), !alias.scope !28989
  %i.gi = sub i64 %.sroa.15.09244, %.sroa.11.1.lcssa.i46 ; 6 uses
  %.not18.i48 = icmp eq i64 %.sroa.15.09244, %.sroa.11.1.lcssa.i46
  br i1 %.not18.i48, label %.outer._crit_edge.thread, label %.lr.ph16.i49

.lr.ph16.i49:                                     ; preds = %bb.ag
  %i.gj = getelementptr [24 x i8], ptr %.sroa.0.0.ph99, i64 %.sroa.11.1.lcssa.i46 ; 3 uses
  %.neg137 = add i64 %.sroa.11.1.lcssa.i46, 1
  %xtraiter132 = and i64 %i.gi, 1
  %i.gk = icmp eq i64 %.sroa.15.09244, %.neg137
  br i1 %i.gk, label %.epil.preheader125, label %.lr.ph16.i49.new

.lr.ph16.i49.new:                                 ; preds = %.lr.ph16.i49
  %unroll_iter135 = and i64 %i.gi, -2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph16.i49.new
  %.sroa.04.014.i50 = phi i64 [ 0, %.lr.ph16.i49.new ], [ %i.go, %bb.ah ] ; 5 uses
  %niter136 = phi i64 [ 0, %.lr.ph16.i49.new ], [ %niter136.next.1, %bb.ah ]
  %i.gl = xor i64 %.sroa.04.014.i50, -1
  %i.gm = getelementptr [24 x i8], ptr %i.fs, i64 %i.gl
  %i.gn = getelementptr [24 x i8], ptr %i.gj, i64 %.sroa.04.014.i50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gn, ptr noundef nonnull align 8 dereferenceable(24) %i.gm, i64 24, i1 false), !alias.scope !28989
  %i.go = add nuw i64 %.sroa.04.014.i50, 2        ; 2 uses
  %i.gp = xor i64 %.sroa.04.014.i50, -2
  %i.gq = getelementptr [24 x i8], ptr %i.fs, i64 %i.gp
  %i.gr = getelementptr [24 x i8], ptr %i.gj, i64 %.sroa.04.014.i50
  %i.gs = getelementptr i8, ptr %i.gr, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gs, ptr noundef nonnull align 8 dereferenceable(24) %i.gq, i64 24, i1 false), !alias.scope !28989
  %niter136.next.1 = add i64 %niter136, 2         ; 2 uses
  %niter136.ncmp.1 = icmp eq i64 %niter136.next.1, %unroll_iter135
  br i1 %niter136.ncmp.1, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf14ba037dc498417E.exit.unr-lcssa, label %bb.ah

_ZN4core5slice4sort6stable9quicksort16stable_partition17hf14ba037dc498417E.exit.unr-lcssa: ; preds = %bb.ah
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf14ba037dc498417E.exit, label %.epil.preheader125

.epil.preheader125:                               ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf14ba037dc498417E.exit.unr-lcssa, %.lr.ph16.i49
  %.sroa.04.014.i50.epil.init = phi i64 [ 0, %.lr.ph16.i49 ], [ %i.go, %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf14ba037dc498417E.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod134 = trunc i64 %i.gi to i1
  call void @llvm.assume(i1 %lcmp.mod134)
  %i.gt = xor i64 %.sroa.04.014.i50.epil.init, -1
  %i.gu = getelementptr [24 x i8], ptr %i.fs, i64 %i.gt
  %i.gv = getelementptr [24 x i8], ptr %i.gj, i64 %.sroa.04.014.i50.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gv, ptr noundef nonnull align 8 dereferenceable(24) %i.gu, i64 24, i1 false), !alias.scope !28989
  br label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf14ba037dc498417E.exit

_ZN4core5slice4sort6stable9quicksort16stable_partition17hf14ba037dc498417E.exit: ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf14ba037dc498417E.exit.unr-lcssa, %.epil.preheader125
  %i.gw = icmp ugt i64 %.sroa.11.1.lcssa.i46, %.sroa.15.09244
  br i1 %i.gw, label %bb.ai, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha568bc79642a2095E.exit", !prof !18

.outer._crit_edge.thread:                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h1afe0fb47b6dc199E.exit

bb.ai:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf14ba037dc498417E.exit
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.11.1.lcssa.i46, i64 noundef %.sroa.15.09244, i64 noundef %.sroa.15.09244, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @447) #66, !noalias !28992
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17ha568bc79642a2095E.exit": ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf14ba037dc498417E.exit
  %i.gx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph99, i64 %.sroa.11.1.lcssa.i46 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.gy = icmp ult i64 %i.gi, 33
  br i1 %i.gy, label %.outer._crit_edge, label %.lr.ph

bb.aj:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @146, ptr %i.a, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.gz, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.ha, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.hb, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.hc, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @446) #66
  unreachable

bb.ak:                                            ; preds = %bb.aa
  %i.hd = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph99, i64 %.sroa.11.1.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph99) ]
  call fastcc void @_ZN4core5slice4sort6stable9quicksort9quicksort17h36cc6bc9382fb453E(ptr noalias noundef nonnull align 8 %i.hd, i64 noundef %i.fd, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.dz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.he = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.he, label %.outer._crit_edge, label %bb.b
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort8unstable7ipnsort17ha09fdf0d8198ab97E(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 21, 0) %1) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load ptr, ptr %i.a, align 8, !nonnull !16, !align !21, !noundef !16 ; 2 uses
  %.val7 = load ptr, ptr %0, align 8, !nonnull !16, !align !21, !noundef !16 ; 2 uses
  %.val.i.i = load ptr, ptr %.val6, align 8, !nonnull !16, !align !22, !noundef !16 ; 3 uses
  %i.b = getelementptr i8, ptr %.val6, i64 8
  %.val1.i.i = load i64, ptr %i.b, align 8, !noundef !16 ; 4 uses
  %.val2.i.i = load ptr, ptr %.val7, align 8, !nonnull !16, !align !22, !noundef !16
  %i.c = getelementptr i8, ptr %.val7, i64 8
  %.val3.i.i = load i64, ptr %i.c, align 8, !noundef !16 ; 2 uses
  %i.d = sub i64 %.val1.i.i, %.val3.i.i
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i, i64 %.val3.i.i)
  %i.e = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val2.i.i, i64 %..i.i.i.i.i), !alias.scope !29016 ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = icmp eq i32 %i.e, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.g, i64 %i.d, i64 %i.f
  %i.h = icmp slt i64 %spec.store.select.i.i.i.i.i, 0 ; 2 uses
  br i1 %i.h, label %.preheader, label %.preheader20

.preheader20:                                     ; preds = %bb.a, %bb.b
  %.val3.i.i11 = phi i64 [ %.val1.i.i9, %bb.b ], [ %.val1.i.i, %bb.a ] ; 2 uses
  %.val2.i.i10 = phi ptr [ %.val.i.i8, %bb.b ], [ %.val.i.i, %bb.a ]
  %.sroa.01.0.i22 = phi i64 [ %i.p, %bb.b ], [ 2, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i22
  %2 = add i64 %.sroa.01.0.i22, -1
  %3 = icmp ult i64 %2, %1
  tail call void @llvm.assume(i1 %3)
  %.val4 = load ptr, ptr %i.i, align 8, !nonnull !16, !align !21, !noundef !16 ; 2 uses
  %.val.i.i8 = load ptr, ptr %.val4, align 8, !nonnull !16, !align !22, !noundef !16 ; 2 uses
  %i.j = getelementptr i8, ptr %.val4, i64 8
  %.val1.i.i9 = load i64, ptr %i.j, align 8, !noundef !16 ; 3 uses
  %i.k = sub i64 %.val1.i.i9, %.val3.i.i11
  %..i.i.i.i.i12 = tail call i64 @llvm.umin.i64(i64 %.val1.i.i9, i64 %.val3.i.i11)
  %i.l = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i8, ptr nonnull readonly align 1 %.val2.i.i10, i64 %..i.i.i.i.i12), !alias.scope !29017 ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = icmp eq i32 %i.l, 0
  %spec.store.select.i.i.i.i.i13 = select i1 %i.n, i64 %i.k, i64 %i.m
  %i.o = icmp slt i64 %spec.store.select.i.i.i.i.i13, 0
  br i1 %i.o, label %_ZN4core5slice4sort6shared17find_existing_run17h025273f397fbf4c7E.exit, label %bb.b

bb.b:                                             ; preds = %.preheader20
  %i.p = add nuw i64 %.sroa.01.0.i22, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h025273f397fbf4c7E.exit.thread, label %.preheader20

.preheader:                                       ; preds = %bb.a, %bb.c
  %.val3.i.i17 = phi i64 [ %.val1.i.i15, %bb.c ], [ %.val1.i.i, %bb.a ] ; 2 uses
  %.val2.i.i16 = phi ptr [ %.val.i.i14, %bb.c ], [ %.val.i.i, %bb.a ]
  %.sroa.01.1.i23 = phi i64 [ %i.x, %bb.c ], [ 2, %bb.a ] ; 4 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i23
  %4 = add i64 %.sroa.01.1.i23, -1
  %5 = icmp ult i64 %4, %1
  tail call void @llvm.assume(i1 %5)
  %.val = load ptr, ptr %i.q, align 8, !nonnull !16, !align !21, !noundef !16 ; 2 uses
  %.val.i.i14 = load ptr, ptr %.val, align 8, !nonnull !16, !align !22, !noundef !16 ; 2 uses
  %i.r = getelementptr i8, ptr %.val, i64 8
  %.val1.i.i15 = load i64, ptr %i.r, align 8, !noundef !16 ; 3 uses
  %i.s = sub i64 %.val1.i.i15, %.val3.i.i17
  %..i.i.i.i.i18 = tail call i64 @llvm.umin.i64(i64 %.val1.i.i15, i64 %.val3.i.i17)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i14, ptr nonnull readonly align 1 %.val2.i.i16, i64 %..i.i.i.i.i18), !alias.scope !29018 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %spec.store.select.i.i.i.i.i19 = select i1 %i.v, i64 %i.s, i64 %i.u
  %i.w = icmp slt i64 %spec.store.select.i.i.i.i.i19, 0
  br i1 %i.w, label %bb.c, label %_ZN4core5slice4sort6shared17find_existing_run17h025273f397fbf4c7E.exit

bb.c:                                             ; preds = %.preheader
  %i.x = add nuw i64 %.sroa.01.1.i23, 1           ; 2 uses
  %exitcond26.not = icmp eq i64 %i.x, %1
  br i1 %exitcond26.not, label %_ZN4core5slice4sort6shared17find_existing_run17h025273f397fbf4c7E.exit.thread, label %.preheader

_ZN4core5slice4sort6shared17find_existing_run17h025273f397fbf4c7E.exit: ; preds = %.preheader20, %.preheader
  %.sroa.01.2.i = phi i64 [ %.sroa.01.1.i23, %.preheader ], [ %.sroa.01.0.i22, %.preheader20 ] ; 2 uses
  %i.y = icmp ule i64 %.sroa.01.2.i, %1
  tail call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %.sroa.01.2.i, %1
  br i1 %i.z, label %_ZN4core5slice4sort6shared17find_existing_run17h025273f397fbf4c7E.exit.thread, label %bb.d

_ZN4core5slice4sort6shared17find_existing_run17h025273f397fbf4c7E.exit.thread: ; preds = %bb.b, %bb.c, %_ZN4core5slice4sort6shared17find_existing_run17h025273f397fbf4c7E.exit
  br i1 %i.h, label %bb.e, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc4539d735e493411E.exit"

bb.d:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h025273f397fbf4c7E.exit
  %i.aa = or i64 %1, 1
  %i.ab = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = shl nuw nsw i32 %i.ac, 1
  %i.ae = xor i32 %i.ad, 126
  tail call fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17hcd5fe314ef21ec7bE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.ae)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc4539d735e493411E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc4539d735e493411E.exit.loopexit.unr-lcssa": ; preds = %.preheader.split.i.i
  %i.af = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.af, 0
  br i1 %lcmp.mod.not, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc4539d735e493411E.exit", label %.preheader.split.i.i.epil.preheader

.preheader.split.i.i.epil.preheader:              ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc4539d735e493411E.exit.loopexit.unr-lcssa", %bb.e
  %.sroa.0.014.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.aw, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc4539d735e493411E.exit.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod9 = trunc i64 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.ag = xor i64 %.sroa.0.014.i.i.epil.init, -1
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.014.i.i.epil.init ; 2 uses
  %i.ai = getelementptr [16 x i8], ptr %i.al, i64 %i.ag ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ah, align 8, !alias.scope !29019, !noalias !29020
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !alias.scope !29021
  store <2 x ptr> %i.aj, ptr %i.ai, align 8, !alias.scope !29022, !noalias !29023
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc4539d735e493411E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc4539d735e493411E.exit": ; preds = %.preheader.split.i.i.epil.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc4539d735e493411E.exit.loopexit.unr-lcssa", %_ZN4core5slice4sort6shared17find_existing_run17h025273f397fbf4c7E.exit.thread, %bb.d
  ret void

bb.e:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h025273f397fbf4c7E.exit.thread
  %i.ak = lshr i64 %1, 1                          ; 3 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29020)
  %i.am = icmp eq i64 %i.ak, 1
  br i1 %i.am, label %.preheader.split.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.ak, 9223372036854775806
  br label %.preheader.split.i.i

.preheader.split.i.i:                             ; preds = %.preheader.split.i.i, %.new
  %.sroa.0.014.i.i = phi i64 [ 0, %.new ], [ %i.aw, %.preheader.split.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %.preheader.split.i.i ]
  %i.an = xor i64 %.sroa.0.014.i.i, -1
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ap = getelementptr [16 x i8], ptr %i.al, i64 %i.an ; 2 uses
  %i.aq = load <2 x ptr>, ptr %i.ao, align 8, !alias.scope !29019, !noalias !29020
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !alias.scope !29021
  store <2 x ptr> %i.aq, ptr %i.ap, align 8, !alias.scope !29022, !noalias !29023
  %i.ar = xor i64 %.sroa.0.014.i.i, -2
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.014.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.au = getelementptr [16 x i8], ptr %i.al, i64 %i.ar ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.at, align 8, !alias.scope !29019, !noalias !29020
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !alias.scope !29021
  store <2 x ptr> %i.av, ptr %i.au, align 8, !alias.scope !29022, !noalias !29023
  %i.aw = add nuw nsw i64 %.sroa.0.014.i.i, 2     ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hc4539d735e493411E.exit.loopexit.unr-lcssa", label %.preheader.split.i.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_ZN4core5slice4sort8unstable8heapsort8heapsort17hb066b72d55338205E(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 33, 0) %1) unnamed_addr #33 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = lshr i64 %1, 1
  %i.c = add i64 %i.b, %1                         ; 2 uses
  %.not4 = icmp eq i64 %i.c, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph6

._crit_edge:                                      ; preds = %_ZN4core5slice4sort8unstable8heapsort9sift_down17h29e6cbb87de0ac2bE.exit, %bb.a
  ret void

.lr.ph6:                                          ; preds = %bb.a, %_ZN4core5slice4sort8unstable8heapsort9sift_down17h29e6cbb87de0ac2bE.exit
  %.sroa.4.05 = phi i64 [ %i.d, %_ZN4core5slice4sort8unstable8heapsort9sift_down17h29e6cbb87de0ac2bE.exit ], [ %i.c, %bb.a ]
  %i.d = add i64 %.sroa.4.05, -1                  ; 6 uses
  %.not10 = icmp ult i64 %i.d, %1
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph6
  %i.e = sub nuw i64 %i.d, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph6
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.05.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.i15 = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 4 uses
  %i.g = icmp ule i64 %.sroa.05.0, %.sroa.0.0.i15
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl i64 %.sroa.05.0, 1                   ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i1 = icmp ult i64 %i.i, %.sroa.0.0.i15
  br i1 %.not.i1, label %.lr.ph, label %_ZN4core5slice4sort8unstable8heapsort9sift_down17h29e6cbb87de0ac2bE.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.j = phi i64 [ %i.ak, %bb.g ], [ %i.i, %bb.d ] ; 3 uses
  %i.k = phi i64 [ %i.aj, %bb.g ], [ %i.h, %bb.d ]
  %.sroa.0.0.i2 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.05.0, %bb.d ]
  %i.l = add nuw i64 %i.k, 2                      ; 2 uses
  %i.m = icmp ult i64 %i.l, %.sroa.0.0.i15
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.j
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l
  %.val = load ptr, ptr %i.n, align 8, !nonnull !16, !align !21, !noundef !16 ; 2 uses
  %.val12 = load ptr, ptr %i.o, align 8, !nonnull !16, !align !21, !noundef !16 ; 2 uses
  %.val.i.i = load ptr, ptr %.val, align 8, !nonnull !16, !align !22, !noundef !16
  %i.p = getelementptr i8, ptr %.val, i64 8
  %.val1.i.i = load i64, ptr %i.p, align 8, !noundef !16 ; 2 uses
  %.val2.i.i = load ptr, ptr %.val12, align 8, !nonnull !16, !align !22, !noundef !16
  %i.q = getelementptr i8, ptr %.val12, i64 8
  %.val3.i.i = load i64, ptr %i.q, align 8, !noundef !16 ; 2 uses
  %i.r = sub i64 %.val1.i.i, %.val3.i.i
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val1.i.i, i64 %.val3.i.i)
  %i.s = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val2.i.i, i64 %..i.i.i.i.i), !alias.scope !29041 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp eq i32 %i.s, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.u, i64 %i.r, i64 %i.t
  %spec.store.select.i.i.i.i.i.lobit = lshr i64 %spec.store.select.i.i.i.i.i, 63
  %i.v = add nuw i64 %spec.store.select.i.i.i.i.i.lobit, %i.j
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.v, %bb.e ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.0.i2 ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %.val13 = load ptr, ptr %i.w, align 8, !nonnull !16, !align !21, !noundef !16 ; 3 uses
  %.val14 = load ptr, ptr %i.x, align 8, !nonnull !16, !align !21, !noundef !16 ; 3 uses
  %.val.i.i16 = load ptr, ptr %.val13, align 8, !nonnull !16, !align !22, !noundef !16
  %i.y = getelementptr i8, ptr %.val13, i64 8
  %.val1.i.i17 = load i64, ptr %i.y, align 8, !noundef !16 ; 2 uses
  %.val2.i.i18 = load ptr, ptr %.val14, align 8, !nonnull !16, !align !22, !noundef !16
  %i.z = getelementptr i8, ptr %.val14, i64 8
  %.val3.i.i19 = load i64, ptr %i.z, align 8, !noundef !16 ; 2 uses
  %i.aa = sub i64 %.val1.i.i17, %.val3.i.i19
  %..i.i.i.i.i20 = tail call i64 @llvm.umin.i64(i64 %.val1.i.i17, i64 %.val3.i.i19)
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val.i.i16, ptr nonnull readonly align 1 %.val2.i.i18, i64 %..i.i.i.i.i20), !alias.scope !29042 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i21 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i21, 0
  br i1 %i.ae, label %bb.g, label %_ZN4core5slice4sort8unstable8heapsort9sift_down17h29e6cbb87de0ac2bE.exit

bb.g:                                             ; preds = %bb.f
  %i.af = ptrtoint ptr %.val14 to i64
  %i.ag = ptrtoint ptr %.val13 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29044)
  store i64 %i.af, ptr %i.w, align 8, !alias.scope !29043, !noalias !29044
  store i64 %i.ag, ptr %i.x, align 8, !alias.scope !29044, !noalias !29043
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29046)
  %.sroa.0.0.copyload.i.i.i.1.i = load i64, ptr %i.ah, align 8, !alias.scope !29045, !noalias !29046
  %.sroa.02.0.copyload.i.i.i.1.i = load i64, ptr %i.ai, align 8, !alias.scope !29046, !noalias !29045
  store i64 %.sroa.02.0.copyload.i.i.i.1.i, ptr %i.ah, align 8, !alias.scope !29045, !noalias !29046
  store i64 %.sroa.0.0.copyload.i.i.i.1.i, ptr %i.ai, align 8, !alias.scope !29046, !noalias !29045
  %i.aj = shl i64 %.sroa.04.0.i, 1                ; 2 uses
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %.not.i = icmp ult i64 %i.ak, %.sroa.0.0.i15
end_hunk_1
