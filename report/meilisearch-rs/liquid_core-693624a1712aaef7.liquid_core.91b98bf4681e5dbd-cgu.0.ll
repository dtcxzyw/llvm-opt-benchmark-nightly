Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/liquid_core-693624a1712aaef7.liquid_core.91b98bf4681e5dbd-cgu.0?download=true
inline.NumInlined: 4312
inline.NumDeleted: 1825
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h796489c0d919fce2E:.lr.ph.preheader
  %..i = select i1 %i.ac, ptr %.sroa.015.06, ptr %.sroa.013.07
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.017.05, ptr noundef nonnull align 8 dereferenceable(16) %..i, i64 16, i1 false), !noalias !11058
  %.neg.i = sext i1 %i.ac to i64
  %i.ad = getelementptr [16 x i8], ptr %.sroa.015.06, i64 %.neg.i ; 2 uses
  %spec.store.select.i.i.i.i.i29.lobit = ashr i64 %spec.store.select.i.i.i.i.i29, 63
  %i.ae = getelementptr [16 x i8], ptr %.sroa.013.07, i64 %spec.store.select.i.i.i.i.i29.lobit ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.017.05, i64 -16
  %exitcond.not = icmp eq i64 %i.k, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.a:                                             ; preds = %._crit_edge
  %i.ag = icmp ult ptr %i.u, %i.g                 ; 3 uses
  %.sroa.0.0..sroa.06.0 = select i1 %i.ag, ptr %i.u, ptr %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0..sroa.06.0, i64 16, i1 false)
  %i.ah = zext i1 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.ah
  %i.aj = xor i1 %i.ag, true
  %i.ak = zext i1 %i.aj to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.ak
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.06.1 = phi ptr [ %i.s, %._crit_edge ], [ %i.al, %bb.a ]
  %.sroa.0.1 = phi ptr [ %i.u, %._crit_edge ], [ %i.ai, %bb.a ]
  %i.am = icmp ne ptr %.sroa.0.1, %i.g
  %i.an = icmp ne ptr %.sroa.06.1, %i.h
  %or.cond = select i1 %i.am, i1 true, i1 %i.an, !prof !41
  br i1 %or.cond, label %bb.d, label %bb.c, !prof !41

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17h481967bb377c264aE() #57
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h9579b4e420c7e1b7E(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 2, 21) %1) unnamed_addr #31 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %.idx = shl nuw nsw i64 %1, 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %.sroa.0.01 = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit
  %.sroa.0.04 = phi ptr [ %.sroa.0.0, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit ], [ %.sroa.0.01, %.lr.ph.preheader ] ; 4 uses
  %.pn3 = phi ptr [ %.sroa.0.04, %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit ], [ %0, %.lr.ph.preheader ] ; 6 uses
  %.val11.i = load ptr, ptr %.sroa.0.04, align 8, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.b = getelementptr i8, ptr %.pn3, i64 24
  %.val12.i = load i64, ptr %i.b, align 8, !noundef !6 ; 5 uses
  %.val13.i = load ptr, ptr %.pn3, align 8, !nonnull !6, !align !8, !noundef !6
  %i.c = getelementptr i8, ptr %.pn3, i64 8
  %.val14.i = load i64, ptr %i.c, align 8, !noundef !6 ; 2 uses
  %..i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val14.i)
  %i.d = sub i64 %.val12.i, %.val14.i
  %i.e = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i, ptr nonnull readonly align 1 %.val13.i, i64 %..i.i.i.i.i.i), !alias.scope !11081 ; 2 uses
  %i.f = sext i32 %i.e to i64
  %i.g = icmp eq i32 %i.e, 0
  %spec.store.select.i.i.i.i.i.i = select i1 %i.g, i64 %i.d, i64 %i.f
  %i.h = icmp slt i64 %spec.store.select.i.i.i.i.i.i, 0
  br i1 %i.h, label %.preheader.preheader, label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit

.preheader.preheader:                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.04, ptr noundef nonnull align 8 dereferenceable(16) %.pn3, i64 16, i1 false)
  %i.i = icmp eq ptr %.pn3, %0
  br i1 %i.i, label %._crit_edge3, label %.lr.ph2

.preheader:                                       ; preds = %.lr.ph2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i1, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.j = icmp eq ptr %i.k, %0
  br i1 %i.j, label %._crit_edge3, label %.lr.ph2

.lr.ph2:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i1 = phi ptr [ %i.k, %.preheader ], [ %.pn3, %.preheader.preheader ] ; 4 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.0.0.i1, i64 -16 ; 4 uses
  %.val9.i = load ptr, ptr %i.k, align 8, !nonnull !6, !align !8, !noundef !6
  %i.l = getelementptr i8, ptr %.sroa.0.0.i1, i64 -8
  %.val10.i = load i64, ptr %i.l, align 8, !noundef !6 ; 2 uses
  %..i.i.i.i.i15.i = tail call i64 @llvm.umin.i64(i64 %.val12.i, i64 %.val10.i)
  %i.m = sub i64 %.val12.i, %.val10.i
  %i.n = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val11.i, ptr nonnull readonly align 1 %.val9.i, i64 %..i.i.i.i.i15.i), !alias.scope !11082 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 0
  %spec.store.select.i.i.i.i.i16.i = select i1 %i.p, i64 %i.m, i64 %i.o
  %i.q = icmp slt i64 %spec.store.select.i.i.i.i.i16.i, 0
  br i1 %i.q, label %.preheader, label %._crit_edge3

._crit_edge3:                                     ; preds = %.preheader, %.lr.ph2, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i1, %.lr.ph2 ] ; 2 uses
  store ptr %.val11.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !11083
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  store i64 %.val12.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !11083
  br label %_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit

_ZN4core5slice4sort6shared9smallsort11insert_tail17h0a193978e0570a07E.exit: ; preds = %.lr.ph, %._crit_edge3
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.04, i64 16 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort6stable14driftsort_main17h6ca2d67db22bc15eE(ptr noalias noundef nonnull align 1 %0, i64 noundef %1, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %2) unnamed_addr #32 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 1              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw i64 %1, %i.b
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 8000000)
  %.sroa.0.0.i16 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c) ; 2 uses
  %.sroa.0.0.i17 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i16, i64 48) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = icmp ult i64 %.sroa.0.0.i16, 4097
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %.sroa.0.0.i17, 0
  br i1 %i.e, label %.noexc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !14

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !11094
  %i.f = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef range(i64 4097, 0) %.sroa.0.0.i17, i64 noundef range(i64 1, 9) 1) #59, !noalias !11094 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.noexc, label %bb.c

.noexc:                                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.b
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 range(i64 4097, 0) %.sroa.0.0.i17, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @567) #57
  unreachable

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.h = icmp ult i64 %1, 65
  invoke fastcc void @_ZN4core5slice4sort6stable5drift4sort17h9d163c9c4c3c8779E(ptr noalias noundef nonnull align 1 %0, i64 noundef %1, ptr noalias noundef nonnull align 1 %i.f, i64 noundef %.sroa.0.0.i17, i1 noundef zeroext %i.h, ptr noalias noundef nonnull align 1 %2)
          to label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit" unwind label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit20"

"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit": ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %.sroa.0.0.i17, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !11095
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 65
  call fastcc void @_ZN4core5slice4sort6stable5drift4sort17h9d163c9c4c3c8779E(ptr noalias noundef nonnull align 1 %0, i64 noundef %1, ptr noalias noundef nonnull align 1 %i.a, i64 noundef 4096, i1 noundef zeroext %i.i, ptr noalias noundef nonnull align 1 %2)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$liquid_core..parser..parser..inner..Rule$GT$$GT$17h040725f7e42063feE.exit20": ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %.sroa.0.0.i17, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !11096
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6stable5drift4sort17h9d163c9c4c3c8779E(ptr noalias noundef nonnull align 1 %0, i64 noundef %1, ptr noalias noundef nonnull align 1 %2, i64 noundef %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN4core5slice4sort6stable5drift11sqrt_approx17h43164af9ba479437E(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i92 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i97 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.z, %bb.e
  %.sroa.018.0 = phi i64 [ 1, %bb.e ], [ %.sroa.023.0, %bb.z ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.dx, %bb.z ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dv, %bb.z ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b1a56c575260d01E.exit", label %bb.p

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b1a56c575260d01E.exit": ; preds = %bb.f
  %i.l = sub nuw i64 %1, %.sroa.09.0              ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i33 = icmp ult i64 %i.l, %.sroa.01.0
  br i1 %.not.i33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h56e0bc05f6e27f9fE.exit.i.thread95, %_ZN4core5slice4sort6shared17find_existing_run17h56e0bc05f6e27f9fE.exit.i.thread, %_ZN4core5slice4sort6shared17find_existing_run17h56e0bc05f6e27f9fE.exit.i, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b1a56c575260d01E.exit"
  br i1 %4, label %bb.n, label %bb.m

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b1a56c575260d01E.exit"
  %i.n = icmp ult i64 %i.l, 2
  br i1 %i.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8a2e201b58846a13E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %.val10.i = load i8, ptr %i.o, align 1, !range !28, !alias.scope !11122, !noalias !11123, !noundef !6 ; 3 uses
  %.val11.i = load i8, ptr %i.m, align 1, !range !28, !alias.scope !11122, !noalias !11123, !noundef !6
  %i.p = icmp samesign ult i8 %.val10.i, %.val11.i ; 2 uses
  %.not72 = icmp eq i64 %i.l, 2                   ; 2 uses
  br i1 %i.p, label %.preheader, label %.preheader50

.preheader50:                                     ; preds = %bb.i
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17h56e0bc05f6e27f9fE.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.i
  br i1 %.not72, label %_ZN4core5slice4sort6shared17find_existing_run17h56e0bc05f6e27f9fE.exit.i.thread95, label %.lr.ph59

.lr.ph:                                           ; preds = %.preheader50, %bb.j
  %.val9.i = phi i8 [ %.val8.i, %bb.j ], [ %.val10.i, %.preheader50 ]
  %.sroa.01.0.i.i55 = phi i64 [ %i.s, %bb.j ], [ 2, %.preheader50 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.0.i.i55
  %.val8.i = load i8, ptr %i.q, align 1, !range !28, !alias.scope !11122, !noalias !11123, !noundef !6 ; 2 uses
  %i.r = icmp samesign ult i8 %.val8.i, %.val9.i
  br i1 %i.r, label %_ZN4core5slice4sort6shared17find_existing_run17h56e0bc05f6e27f9fE.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.s = add nuw i64 %.sroa.01.0.i.i55, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %i.l
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17h56e0bc05f6e27f9fE.exit.i, label %.lr.ph

.lr.ph59:                                         ; preds = %.preheader, %bb.k
  %.val7.i = phi i8 [ %.val.i, %bb.k ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i58 = phi i64 [ %i.v, %bb.k ], [ 2, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.01.1.i.i58
  %.val.i = load i8, ptr %i.t, align 1, !range !28, !alias.scope !11122, !noalias !11123, !noundef !6 ; 2 uses
  %i.u = icmp samesign ult i8 %.val.i, %.val7.i
  br i1 %i.u, label %bb.k, label %_ZN4core5slice4sort6shared17find_existing_run17h56e0bc05f6e27f9fE.exit.i

bb.k:                                             ; preds = %.lr.ph59
  %i.v = add nuw i64 %.sroa.01.1.i.i58, 1         ; 2 uses
  %exitcond79.not = icmp eq i64 %i.v, %i.l
  br i1 %exitcond79.not, label %_ZN4core5slice4sort6shared17find_existing_run17h56e0bc05f6e27f9fE.exit.i, label %.lr.ph59

_ZN4core5slice4sort6shared17find_existing_run17h56e0bc05f6e27f9fE.exit.i: ; preds = %bb.j, %.lr.ph, %bb.k, %.lr.ph59
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i58, %.lr.ph59 ], [ %i.l, %bb.k ], [ %.sroa.01.0.i.i55, %.lr.ph ], [ %i.l, %bb.j ] ; 6 uses
  %i.w = icmp ule i64 %.sroa.0.0.i.i, %i.l
  tail call void @llvm.assume(i1 %i.w)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.g, label %bb.l

_ZN4core5slice4sort6shared17find_existing_run17h56e0bc05f6e27f9fE.exit.i.thread95: ; preds = %.preheader
  br i1 %.not5.i97, label %bb.g, label %iter.check

_ZN4core5slice4sort6shared17find_existing_run17h56e0bc05f6e27f9fE.exit.i.thread: ; preds = %.preheader50
  br i1 %.not5.i92, label %bb.g, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8a2e201b58846a13E.exit"

bb.l:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h56e0bc05f6e27f9fE.exit.i
  br i1 %i.p, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8a2e201b58846a13E.exit"

bb.m:                                             ; preds = %bb.g
  %.sroa.0.0.i40 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %.sroa.01.0)
  %i.x = shl i64 %.sroa.0.0.i40, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h3e4b3e0d5839885dE.exit

bb.n:                                             ; preds = %bb.g
  %.sroa.0.0.i39 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 32) ; 2 uses
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h85e3c1cb048071eaE(ptr noalias noundef nonnull align 1 %i.m, i64 noundef %.sroa.0.0.i39, ptr noalias noundef nonnull align 1 %2, i64 noundef %3, i32 noundef 0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable_or_null(1) null, ptr noalias noundef nonnull align 1 %5), !inline_history !11101
  %i.y = shl nuw nsw i64 %.sroa.0.0.i39, 1
  %i.z = or disjoint i64 %i.y, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h3e4b3e0d5839885dE.exit

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8a2e201b58846a13E.exit": ; preds = %.lr.ph.i.i38, %middle.block, %vec.epilog.middle.block, %_ZN4core5slice4sort6shared17find_existing_run17h56e0bc05f6e27f9fE.exit.i.thread, %bb.h, %bb.o, %bb.l
  %.sroa.0.0.i.i4548 = phi i64 [ %i.l, %bb.h ], [ %.sroa.0.0.i.i, %bb.l ], [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h56e0bc05f6e27f9fE.exit.i.thread ], [ %.sroa.0.0.i.i93100104, %middle.block ], [ %.sroa.0.0.i.i93100104, %vec.epilog.middle.block ], [ %.sroa.0.0.i.i93100104, %.lr.ph.i.i38 ]
  %i.aa = shl i64 %.sroa.0.0.i.i4548, 1
  %i.ab = or disjoint i64 %i.aa, 1
  br label %_ZN4core5slice4sort6stable5drift10create_run17h3e4b3e0d5839885dE.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11124), !noalias !11123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11125), !noalias !11123
  %.not15.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not15.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8a2e201b58846a13E.exit", label %iter.check

iter.check:                                       ; preds = %_ZN4core5slice4sort6shared17find_existing_run17h56e0bc05f6e27f9fE.exit.i.thread95, %bb.o
  %i.ad = phi i64 [ %i.ac, %bb.o ], [ 1, %_ZN4core5slice4sort6shared17find_existing_run17h56e0bc05f6e27f9fE.exit.i.thread95 ] ; 8 uses
  %.sroa.0.0.i.i93100104 = phi i64 [ %.sroa.0.0.i.i, %bb.o ], [ 2, %_ZN4core5slice4sort6shared17find_existing_run17h56e0bc05f6e27f9fE.exit.i.thread95 ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.0.i.i93100104 ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.ad, 4
  br i1 %min.iters.check, label %.lr.ph.i.i38.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check117 = icmp samesign ult i64 %i.ad, 16
  br i1 %min.iters.check117, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.ad, 12
  %n.vec = and i64 %i.ad, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = xor i64 %index, -1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 %index ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ae, i64 %i.ag
  %wide.load = load <16 x i8>, ptr %i.ah, align 1, !alias.scope !11126, !noalias !11127
  %i.aj = getelementptr i8, ptr %i.ai, i64 -15    ; 2 uses
  %wide.load118 = load <16 x i8>, ptr %i.aj, align 1, !alias.scope !11128, !noalias !11129
  %reverse = shufflevector <16 x i8> %wide.load118, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.ah, align 1, !alias.scope !11126, !noalias !11127
  %reverse119 = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse119, ptr %i.aj, align 1, !alias.scope !11128, !noalias !11129
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !11107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8a2e201b58846a13E.exit", label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i38.preheader, label %vec.epilog.ph, !prof !11130

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec120 = and i64 %i.ad, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index121 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next126, %vec.epilog.vector.body ] ; 3 uses
  %i.al = xor i64 %index121, -1
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 %index121 ; 2 uses
  %i.an = getelementptr i8, ptr %i.ae, i64 %i.al
  %wide.load122 = load <4 x i8>, ptr %i.am, align 1, !alias.scope !11126, !noalias !11127
  %i.ao = getelementptr i8, ptr %i.an, i64 -3     ; 2 uses
  %wide.load123 = load <4 x i8>, ptr %i.ao, align 1, !alias.scope !11128, !noalias !11129
  %reverse124 = shufflevector <4 x i8> %wide.load123, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse124, ptr %i.am, align 1, !alias.scope !11126, !noalias !11127
  %reverse125 = shufflevector <4 x i8> %wide.load122, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %reverse125, ptr %i.ao, align 1, !alias.scope !11128, !noalias !11129
  %index.next126 = add nuw i64 %index121, 4       ; 2 uses
  %i.ap = icmp eq i64 %index.next126, %n.vec120
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !11108

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n127 = icmp eq i64 %i.ad, %n.vec120
  br i1 %cmp.n127, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8a2e201b58846a13E.exit", label %.lr.ph.i.i38.preheader

.lr.ph.i.i38.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.014.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec120, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i38

.lr.ph.i.i38:                                     ; preds = %.lr.ph.i.i38.preheader, %.lr.ph.i.i38
  %.sroa.0.014.i.i = phi i64 [ %i.av, %.lr.ph.i.i38 ], [ %.sroa.0.014.i.i.ph, %.lr.ph.i.i38.preheader ] ; 3 uses
  %i.aq = xor i64 %.sroa.0.014.i.i, -1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.014.i.i ; 2 uses
  %i.as = getelementptr i8, ptr %i.ae, i64 %i.aq  ; 2 uses
  %i.at = load i8, ptr %i.ar, align 1, !range !28, !alias.scope !11126, !noalias !11127, !noundef !6
  %i.au = load i8, ptr %i.as, align 1, !alias.scope !11128, !noalias !11129
  store i8 %i.au, ptr %i.ar, align 1, !alias.scope !11126, !noalias !11127
  store i8 %i.at, ptr %i.as, align 1, !alias.scope !11128, !noalias !11129
  %i.av = add nuw nsw i64 %.sroa.0.014.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.av, %i.ad
  br i1 %exitcond.not.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8a2e201b58846a13E.exit", label %.lr.ph.i.i38, !llvm.loop !11109

_ZN4core5slice4sort6stable5drift10create_run17h3e4b3e0d5839885dE.exit: ; preds = %bb.m, %bb.n, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8a2e201b58846a13E.exit"
  %.sroa.0.0.i34 = phi i64 [ %i.ab, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17h8a2e201b58846a13E.exit" ], [ %i.z, %bb.n ], [ %i.x, %bb.m ] ; 2 uses
  %i.aw = lshr i64 %.sroa.018.0, 1
  %i.ax = lshr i64 %.sroa.0.0.i34, 1
  %factor = shl i64 %.sroa.09.0, 1                ; 2 uses
  %i.ay = sub i64 %factor, %i.aw
  %i.az = add i64 %i.ax, %factor
  %i.ba = mul i64 %i.ay, %.sroa.0.0
  %i.bb = mul i64 %i.az, %.sroa.0.0
  %i.bc = xor i64 %i.bb, %i.ba
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bc, i1 false)
  %i.be = trunc nuw nsw i64 %i.bd to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %_ZN4core5slice4sort6stable5drift10create_run17h3e4b3e0d5839885dE.exit
  %.sroa.026.0 = phi i8 [ %i.be, %_ZN4core5slice4sort6stable5drift10create_run17h3e4b3e0d5839885dE.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.023.0 = phi i64 [ %.sroa.0.0.i34, %_ZN4core5slice4sort6stable5drift10create_run17h3e4b3e0d5839885dE.exit ], [ 1, %bb.f ] ; 2 uses
  %i.bf = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.bf, label %.lr.ph65, label %._crit_edge

.lr.ph65:                                         ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph65, %_ZN4core5slice4sort6stable5drift13logical_merge17hba7e5178122c74b3E.exit
  %.sroa.02.164 = phi i64 [ %.sroa.02.0, %.lr.ph65 ], [ %i.bh, %_ZN4core5slice4sort6stable5drift13logical_merge17hba7e5178122c74b3E.exit ] ; 2 uses
  %.sroa.018.163 = phi i64 [ %.sroa.018.0, %.lr.ph65 ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hba7e5178122c74b3E.exit ] ; 4 uses
  %i.bh = add i64 %.sroa.02.164, -1               ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noundef !6
  %.not29 = icmp ult i8 %i.bj, %.sroa.026.0
  br i1 %.not29, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_ZN4core5slice4sort6stable5drift13logical_merge17hba7e5178122c74b3E.exit, %bb.q, %bb.p
  %.sroa.018.1.lcssa = phi i64 [ %.sroa.018.0, %bb.p ], [ %.sroa.018.163, %bb.q ], [ %.sroa.0.0.i, %_ZN4core5slice4sort6stable5drift13logical_merge17hba7e5178122c74b3E.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.p ], [ %.sroa.02.164, %bb.q ], [ 1, %_ZN4core5slice4sort6stable5drift13logical_merge17hba7e5178122c74b3E.exit ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.018.1.lcssa, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.026.0, ptr %i.bl, align 1
  br i1 %i.k, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bh
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !6 ; 3 uses
  %i.bo = lshr i64 %i.bn, 1                       ; 8 uses
  %i.bp = lshr i64 %.sroa.018.163, 1              ; 6 uses
  %i.bq = add nuw i64 %i.bo, %i.bp                ; 4 uses
  %i.br = sub i64 %.sroa.09.0, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br ; 6 uses
  %i.bt = icmp ugt i64 %i.bq, %3
  %i.bu = trunc i64 %.sroa.018.163 to i1
  %i.bv = or i64 %i.bn, %.sroa.018.163
  %i.bw = trunc i64 %i.bv to i1
  %or.cond3.i = or i1 %i.bt, %i.bw
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bx = trunc i64 %i.bn to i1
  br i1 %i.bx, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.by = shl i64 %i.bq, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17hba7e5178122c74b3E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bu, label %bb.w, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b1a56c575260d01E.exit35"

end_hunk_0
begin_hunk_1_@_ZN4core5slice4sort6stable9quicksort9quicksort17h85e3c1cb048071eaE:bb.a
  br i1 %i.js, label %._crit_edge39.i47, label %.lr.ph38.i59

._crit_edge39.i47:                                ; preds = %.lr.ph38.i59.prol.loopexit, %.lr.ph38.i59, %._crit_edge.i43
  %.sroa.43.2.lcssa.i48 = phi ptr [ %.sroa.43.1.lcssa.i44, %._crit_edge.i43 ], [ %.lcssa366.unr, %.lr.ph38.i59.prol.loopexit ], [ %i.kb, %.lr.ph38.i59 ]
  %.sroa.27.2.lcssa.i49 = phi i64 [ %.sroa.27.1.lcssa.i45, %._crit_edge.i43 ], [ %.lcssa365.unr, %.lr.ph38.i59.prol.loopexit ], [ %i.ke, %.lr.ph38.i59 ] ; 9 uses
  %.sroa.9.2.lcssa.i50 = phi ptr [ %.sroa.9.1.lcssa.i46, %._crit_edge.i43 ], [ %scevgep54.i58, %.lr.ph38.i59 ], [ %scevgep54.i58, %.lr.ph38.i59.prol.loopexit ] ; 2 uses
  %i.jt = icmp eq i64 %.sroa.02.0.i42, %.sroa.15.0119278
  br i1 %i.jt, label %bb.ac, label %bb.ab

.lr.ph38.i59:                                     ; preds = %.lr.ph38.i59.prol.loopexit, %.lr.ph38.i59
  %.sroa.9.236.i60 = phi ptr [ %i.kf, %.lr.ph38.i59 ], [ %.sroa.9.236.i60.unr, %.lr.ph38.i59.prol.loopexit ] ; 3 uses
  %.sroa.27.235.i61 = phi i64 [ %i.ke, %.lr.ph38.i59 ], [ %.sroa.27.235.i61.unr, %.lr.ph38.i59.prol.loopexit ] ; 2 uses
  %.sroa.43.234.i62 = phi ptr [ %i.kb, %.lr.ph38.i59 ], [ %.sroa.43.234.i62.unr, %.lr.ph38.i59.prol.loopexit ] ; 2 uses
  %.val.i63 = load i8, ptr %.sroa.9.236.i60, align 1, !range !28, !alias.scope !11218, !noalias !11219, !noundef !6 ; 2 uses
  %i.ju = icmp samesign uge i8 %.val27.i64, %.val.i63 ; 2 uses
  %i.jv = getelementptr inbounds i8, ptr %.sroa.43.234.i62, i64 -1
  %.sroa.01.0.i39.i65 = select i1 %i.ju, ptr %2, ptr %i.jv
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i39.i65, i64 %.sroa.27.235.i61
  store i8 %.val.i63, ptr %i.jw, align 1, !alias.scope !11219, !noalias !11224
  %i.jx = zext i1 %i.ju to i64
  %i.jy = add i64 %.sroa.27.235.i61, %i.jx        ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i60, i64 1
  %.val.i63.1 = load i8, ptr %i.jz, align 1, !range !28, !alias.scope !11218, !noalias !11219, !noundef !6 ; 2 uses
  %i.ka = icmp samesign uge i8 %.val27.i64, %.val.i63.1 ; 2 uses
  %i.kb = getelementptr inbounds i8, ptr %.sroa.43.234.i62, i64 -2 ; 3 uses
  %.sroa.01.0.i39.i65.1 = select i1 %i.ka, ptr %2, ptr %i.kb
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i39.i65.1, i64 %i.jy
  store i8 %.val.i63.1, ptr %i.kc, align 1, !alias.scope !11219, !noalias !11224
  %i.kd = zext i1 %i.ka to i64
  %i.ke = add i64 %i.jy, %i.kd                    ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i60, i64 2 ; 2 uses
  %exitcond.not.i66.1 = icmp eq ptr %i.kf, %scevgep54.i58
  br i1 %exitcond.not.i66.1, label %._crit_edge39.i47, label %.lr.ph38.i59

bb.ab:                                            ; preds = %._crit_edge39.i47
  %i.kg = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i48, i64 -1
  %i.kh = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.27.2.lcssa.i49
  %i.ki = load i8, ptr %.sroa.9.2.lcssa.i50, align 1, !alias.scope !11218, !noalias !11225
  store i8 %i.ki, ptr %i.kh, align 1, !alias.scope !11219, !noalias !11226
  %i.kj = add i64 %.sroa.27.2.lcssa.i49, 1
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i50, i64 1
  br label %bb.z

bb.ac:                                            ; preds = %._crit_edge39.i47
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.ph126, ptr nonnull align 1 %2, i64 %.sroa.27.2.lcssa.i49, i1 false), !alias.scope !11227
  %i.kl = sub i64 %.sroa.15.0119278, %.sroa.27.2.lcssa.i49 ; 11 uses
  %.not47.i51 = icmp eq i64 %.sroa.15.0119278, %.sroa.27.2.lcssa.i49
  br i1 %.not47.i51, label %.outer._crit_edge.thread, label %iter.check

iter.check:                                       ; preds = %bb.ac
  %i.km = getelementptr i8, ptr %.sroa.0.0.ph126, i64 %.sroa.27.2.lcssa.i49 ; 3 uses
  %min.iters.check = icmp ult i64 %i.kl, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check294 = icmp ult i64 %i.kl, 32
  br i1 %min.iters.check294, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kn = and i64 %i.kl, 24
  %n.vec = and i64 %i.kl, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ko = xor i64 %index, -1
  %i.kp = getelementptr i8, ptr %i.ic, i64 %i.ko  ; 2 uses
  %i.kq = getelementptr i8, ptr %i.km, i64 %index ; 2 uses
  %i.kr = getelementptr i8, ptr %i.kp, i64 -15
  %i.ks = getelementptr i8, ptr %i.kp, i64 -31
  %wide.load = load <16 x i8>, ptr %i.kr, align 1, !alias.scope !11219, !noalias !11218
  %wide.load295 = load <16 x i8>, ptr %i.ks, align 1, !alias.scope !11219, !noalias !11218
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse296 = shufflevector <16 x i8> %wide.load295, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.kt = getelementptr i8, ptr %i.kq, i64 16
  store <16 x i8> %reverse, ptr %i.kq, align 1, !alias.scope !11218, !noalias !11219
  store <16 x i8> %reverse296, ptr %i.kt, align 1, !alias.scope !11218, !noalias !11219
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ku = icmp eq i64 %index.next, %n.vec
  br i1 %i.ku, label %middle.block, label %vector.body, !llvm.loop !11193

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kl, %n.vec
  br i1 %cmp.n, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf24d1ae48faf54feE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kn, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec297 = and i64 %i.kl, -8                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index298 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next301, %vec.epilog.vector.body ] ; 3 uses
  %i.kv = xor i64 %index298, -1
  %i.kw = getelementptr i8, ptr %i.ic, i64 %i.kv
  %i.kx = getelementptr i8, ptr %i.km, i64 %index298
  %i.ky = getelementptr i8, ptr %i.kw, i64 -7
  %wide.load299 = load <8 x i8>, ptr %i.ky, align 1, !alias.scope !11219, !noalias !11218
  %reverse300 = shufflevector <8 x i8> %wide.load299, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse300, ptr %i.kx, align 1, !alias.scope !11218, !noalias !11219
  %index.next301 = add nuw i64 %index298, 8       ; 2 uses
  %i.kz = icmp eq i64 %index.next301, %n.vec297
  br i1 %i.kz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !11194

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n302 = icmp eq i64 %i.kl, %n.vec297
  br i1 %cmp.n302, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf24d1ae48faf54feE.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.05.043.i53.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec297, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.05.043.i53 = phi i64 [ %i.la, %vec.epilog.scalar.ph ], [ %.sroa.05.043.i53.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.la = add nuw i64 %.sroa.05.043.i53, 1        ; 2 uses
  %i.lb = xor i64 %.sroa.05.043.i53, -1
  %i.lc = getelementptr i8, ptr %i.ic, i64 %i.lb
  %i.ld = getelementptr i8, ptr %i.km, i64 %.sroa.05.043.i53
  %i.le = load i8, ptr %i.lc, align 1, !alias.scope !11219, !noalias !11218
  store i8 %i.le, ptr %i.ld, align 1, !alias.scope !11218, !noalias !11219
  %exitcond55.not.i54 = icmp eq i64 %i.la, %i.kl
  br i1 %exitcond55.not.i54, label %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf24d1ae48faf54feE.exit, label %vec.epilog.scalar.ph, !llvm.loop !11195

_ZN4core5slice4sort6stable9quicksort16stable_partition17hf24d1ae48faf54feE.exit: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.lf = icmp ugt i64 %.sroa.27.2.lcssa.i49, %.sroa.15.0119278
  br i1 %i.lf, label %bb.ad, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b1a56c575260d01E.exit", !prof !12

.outer._crit_edge.thread:                         ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4core5slice4sort6shared9smallsort31small_sort_general_with_scratch17h75963e787c2fe2e4E.exit

bb.ad:                                            ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf24d1ae48faf54feE.exit
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.27.2.lcssa.i49, i64 noundef %.sroa.15.0119278, i64 noundef %.sroa.15.0119278, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @465) #57, !noalias !11228
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h6b1a56c575260d01E.exit": ; preds = %_ZN4core5slice4sort6stable9quicksort16stable_partition17hf24d1ae48faf54feE.exit
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph126, i64 %.sroa.27.2.lcssa.i49 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.lh = icmp ult i64 %i.kl, 33
  br i1 %i.lh, label %.outer._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @462, ptr %i.a, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.li, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.lj, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.lk, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.ll, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @464) #57
  unreachable

bb.af:                                            ; preds = %bb.w
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph126, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph126) ]
  call void @_ZN4core5slice4sort6stable9quicksort9quicksort17h85e3c1cb048071eaE(ptr noalias noundef nonnull align 1 %i.lm, i64 noundef %i.hg, ptr noalias noundef nonnull align 1 %2, i64 noundef %3, i32 noundef %i.eh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable_or_null(1) %i.b, ptr noalias noundef nonnull align 1 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ln = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.ln, label %.outer._crit_edge, label %bb.b
}

; Function Attrs: noinline nonlazybind uwtable
define void @_ZN4core5slice4sort8unstable7ipnsort17ha0a4562283ee729bE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %2) unnamed_addr #32 {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val10 = load ptr, ptr %i.b, align 8, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val11 = load i64, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %.val12 = load ptr, ptr %0, align 8, !nonnull !6, !align !8, !noundef !6
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val13 = load i64, ptr %i.d, align 8, !noundef !6 ; 2 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val11, i64 %.val13)
  %i.e = sub i64 %.val11, %.val13
  %i.f = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val10, ptr nonnull readonly align 1 %.val12, i64 %..i.i.i.i.i), !alias.scope !11261 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i32 %i.f, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.h, i64 %i.e, i64 %i.g
  %i.i = icmp slt i64 %spec.store.select.i.i.i.i.i, 0 ; 2 uses
  %.not32 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.i, label %.preheader, label %.preheader22

.preheader22:                                     ; preds = %bb.b
  br i1 %.not32, label %_ZN4core5slice4sort6shared17find_existing_run17hd359266dbe381889E.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not32, label %_ZN4core5slice4sort6shared17find_existing_run17hd359266dbe381889E.exit, label %.lr.ph28

.lr.ph:                                           ; preds = %.preheader22, %bb.c
  %.val9 = phi i64 [ %.val7, %bb.c ], [ %.val11, %.preheader22 ] ; 2 uses
  %.val8 = phi ptr [ %.val6, %bb.c ], [ %.val10, %.preheader22 ]
  %.sroa.01.0.i24 = phi i64 [ %i.q, %bb.c ], [ 2, %.preheader22 ] ; 3 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i24 ; 2 uses
  %.val6 = load ptr, ptr %i.j, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val7 = load i64, ptr %i.k, align 8, !noundef !6 ; 3 uses
  %..i.i.i.i.i14 = tail call i64 @llvm.umin.i64(i64 %.val7, i64 %.val9)
  %i.l = sub i64 %.val7, %.val9
  %i.m = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val6, ptr nonnull readonly align 1 %.val8, i64 %..i.i.i.i.i14), !alias.scope !11262 ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = icmp eq i32 %i.m, 0
  %spec.store.select.i.i.i.i.i15 = select i1 %i.o, i64 %i.l, i64 %i.n
  %i.p = icmp slt i64 %spec.store.select.i.i.i.i.i15, 0
  br i1 %i.p, label %_ZN4core5slice4sort6shared17find_existing_run17hd359266dbe381889E.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.q = add nuw i64 %.sroa.01.0.i24, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %1
  br i1 %exitcond.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd359266dbe381889E.exit.thread, label %.lr.ph

.lr.ph28:                                         ; preds = %.preheader, %bb.d
  %.val5 = phi i64 [ %.val3, %bb.d ], [ %.val11, %.preheader ] ; 2 uses
  %.val4 = phi ptr [ %.val, %bb.d ], [ %.val10, %.preheader ]
  %.sroa.01.1.i27 = phi i64 [ %i.y, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i27 ; 2 uses
  %.val = load ptr, ptr %i.r, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val3 = load i64, ptr %i.s, align 8, !noundef !6 ; 3 uses
  %..i.i.i.i.i16 = tail call i64 @llvm.umin.i64(i64 %.val3, i64 %.val5)
  %i.t = sub i64 %.val3, %.val5
  %i.u = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val, ptr nonnull readonly align 1 %.val4, i64 %..i.i.i.i.i16), !alias.scope !11263 ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = icmp eq i32 %i.u, 0
  %spec.store.select.i.i.i.i.i17 = select i1 %i.w, i64 %i.t, i64 %i.v
  %i.x = icmp slt i64 %spec.store.select.i.i.i.i.i17, 0
  br i1 %i.x, label %bb.d, label %_ZN4core5slice4sort6shared17find_existing_run17hd359266dbe381889E.exit

bb.d:                                             ; preds = %.lr.ph28
  %i.y = add nuw i64 %.sroa.01.1.i27, 1           ; 2 uses
  %exitcond35.not = icmp eq i64 %i.y, %1
  br i1 %exitcond35.not, label %_ZN4core5slice4sort6shared17find_existing_run17hd359266dbe381889E.exit.thread, label %.lr.ph28

_ZN4core5slice4sort6shared17find_existing_run17hd359266dbe381889E.exit: ; preds = %.lr.ph, %.lr.ph28, %.preheader22, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader22 ], [ 2, %.preheader ], [ %.sroa.01.1.i27, %.lr.ph28 ], [ %.sroa.01.0.i24, %.lr.ph ] ; 2 uses
  %i.z = icmp ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.aa, label %_ZN4core5slice4sort6shared17find_existing_run17hd359266dbe381889E.exit.thread, label %bb.e

_ZN4core5slice4sort6shared17find_existing_run17hd359266dbe381889E.exit.thread: ; preds = %bb.c, %bb.d, %_ZN4core5slice4sort6shared17find_existing_run17hd359266dbe381889E.exit
  br i1 %i.i, label %.lr.ph.preheader.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit"

bb.e:                                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd359266dbe381889E.exit
  %i.ab = or i64 %1, 1
  %i.ac = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.ab, i1 true)
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = shl nuw nsw i32 %i.ad, 1
  %i.af = xor i32 %i.ae, 126
  tail call fastcc void @_ZN4core5slice4sort8unstable9quicksort9quicksort17hc327c0f35e0eb2fcE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.af, ptr noalias noundef nonnull align 1 %2)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit.loopexit.unr-lcssa": ; preds = %.lr.ph.i.i
  %i.ag = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.ag, 0
  br i1 %lcmp.mod.not, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit", label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit.loopexit.unr-lcssa", %.lr.ph.preheader.i.i
  %.sroa.0.014.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.bg, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit.loopexit.unr-lcssa" ] ; 2 uses
  %lcmp.mod58 = trunc i64 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod58)
  %i.ah = xor i64 %.sroa.0.014.i.i.epil.init, -1
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.014.i.i.epil.init ; 3 uses
  %i.aj = getelementptr [16 x i8], ptr %i.ap, i64 %i.ah ; 3 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !alias.scope !11264, !noalias !11265, !nonnull !6, !align !8, !noundef !6
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !11264, !noalias !11265, !noundef !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !alias.scope !11266
  store ptr %i.ak, ptr %i.aj, align 8, !alias.scope !11267, !noalias !11268
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.am, ptr %i.an, align 8, !alias.scope !11267, !noalias !11268
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit": ; preds = %.lr.ph.i.i.epil.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit.loopexit.unr-lcssa", %bb.a, %_ZN4core5slice4sort6shared17find_existing_run17hd359266dbe381889E.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_ZN4core5slice4sort6shared17find_existing_run17hd359266dbe381889E.exit.thread
  %i.ao = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11265)
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.aq = icmp eq i64 %i.ao, 1
  br i1 %i.aq, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.ao, 9223372036854775806
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.sroa.0.014.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.bg, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ar = xor i64 %.sroa.0.014.i.i, -1
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.014.i.i ; 3 uses
  %i.at = getelementptr [16 x i8], ptr %i.ap, i64 %i.ar ; 3 uses
  %i.au = load ptr, ptr %i.as, align 8, !alias.scope !11264, !noalias !11265, !nonnull !6, !align !8, !noundef !6
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !11264, !noalias !11265, !noundef !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !alias.scope !11266
  store ptr %i.au, ptr %i.at, align 8, !alias.scope !11267, !noalias !11268
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !alias.scope !11267, !noalias !11268
  %i.ay = xor i64 %.sroa.0.014.i.i, -2
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.014.i.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bb = getelementptr [16 x i8], ptr %i.ap, i64 %i.ay ; 3 uses
  %i.bc = load ptr, ptr %i.ba, align 8, !alias.scope !11264, !noalias !11265, !nonnull !6, !align !8, !noundef !6
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !11264, !noalias !11265, !noundef !6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !alias.scope !11266
  store ptr %i.bc, ptr %i.bb, align 8, !alias.scope !11267, !noalias !11268
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !alias.scope !11267, !noalias !11268
  %i.bg = add nuw nsw i64 %.sroa.0.014.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7reverse17hfc7356a5b92418f8E.exit.loopexit.unr-lcssa", label %.lr.ph.i.i
}

; Function Attrs: nofree noinline norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_ZN4core5slice4sort8unstable8heapsort8heapsort17h3dffb04160f4ba02E(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, ptr noalias nofree nonnull readnone align 1 captures(none) %2) unnamed_addr #33 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = lshr i64 %1, 1
  %i.c = add i64 %i.b, %1                         ; 2 uses
  %.not25 = icmp eq i64 %i.c, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph27

._crit_edge:                                      ; preds = %_ZN4core5slice4sort8unstable8heapsort9sift_down17h981c3d6608d2a6a9E.exit, %bb.a
  ret void

.lr.ph27:                                         ; preds = %bb.a, %_ZN4core5slice4sort8unstable8heapsort9sift_down17h981c3d6608d2a6a9E.exit
  %.sroa.4.026 = phi i64 [ %i.d, %_ZN4core5slice4sort8unstable8heapsort9sift_down17h981c3d6608d2a6a9E.exit ], [ %i.c, %bb.a ]
  %i.d = add i64 %.sroa.4.026, -1                 ; 6 uses
  %.not10 = icmp ult i64 %i.d, %1
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph27
  %i.e = sub nuw i64 %i.d, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph27
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.05.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.i19 = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 4 uses
  %i.g = icmp ule i64 %.sroa.05.0, %.sroa.0.0.i19
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl i64 %.sroa.05.0, 1                   ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i22 = icmp ult i64 %i.i, %.sroa.0.0.i19
  br i1 %.not.i22, label %.lr.ph, label %_ZN4core5slice4sort8unstable8heapsort9sift_down17h981c3d6608d2a6a9E.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.j = phi i64 [ %i.ai, %bb.g ], [ %i.i, %bb.d ] ; 3 uses
  %i.k = phi i64 [ %i.ah, %bb.g ], [ %i.h, %bb.d ]
  %.sroa.0.0.i23 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.05.0, %bb.d ]
  %i.l = add nuw i64 %i.k, 2                      ; 2 uses
  %i.m = icmp ult i64 %i.l, %.sroa.0.0.i19
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l ; 2 uses
  %.val = load ptr, ptr %i.n, align 8, !nonnull !6, !align !8, !noundef !6
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val12 = load i64, ptr %i.p, align 8, !noundef !6 ; 2 uses
  %.val13 = load ptr, ptr %i.o, align 8, !nonnull !6, !align !8, !noundef !6
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %.val14 = load i64, ptr %i.q, align 8, !noundef !6 ; 2 uses
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val12, i64 %.val14)
  %i.r = sub i64 %.val12, %.val14
  %i.s = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val, ptr nonnull readonly align 1 %.val13, i64 %..i.i.i.i.i), !alias.scope !11292 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp eq i32 %i.s, 0
  %spec.store.select.i.i.i.i.i = select i1 %i.u, i64 %i.r, i64 %i.t
  %spec.store.select.i.i.i.i.i.lobit = lshr i64 %spec.store.select.i.i.i.i.i, 63
  %i.v = add nuw i64 %spec.store.select.i.i.i.i.i.lobit, %i.j
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.v, %bb.e ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.0.i23 ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %.val15 = load ptr, ptr %i.w, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.y = getelementptr i8, ptr %i.w, i64 8        ; 2 uses
  %.val16 = load i64, ptr %i.y, align 8, !noundef !6 ; 3 uses
  %.val17 = load ptr, ptr %i.x, align 8, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 8        ; 2 uses
  %.val18 = load i64, ptr %i.z, align 8, !noundef !6 ; 3 uses
  %..i.i.i.i.i20 = tail call i64 @llvm.umin.i64(i64 %.val16, i64 %.val18)
  %i.aa = sub i64 %.val16, %.val18
  %i.ab = tail call i32 @memcmp(ptr nonnull readonly align 1 %.val15, ptr nonnull readonly align 1 %.val17, i64 %..i.i.i.i.i20), !alias.scope !11293 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %spec.store.select.i.i.i.i.i21 = select i1 %i.ad, i64 %i.aa, i64 %i.ac
  %i.ae = icmp slt i64 %spec.store.select.i.i.i.i.i21, 0
  br i1 %i.ae, label %bb.g, label %_ZN4core5slice4sort8unstable8heapsort9sift_down17h981c3d6608d2a6a9E.exit

bb.g:                                             ; preds = %bb.f
  %i.af = ptrtoint ptr %.val17 to i64
  %i.ag = ptrtoint ptr %.val15 to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11295)
  store i64 %i.af, ptr %i.w, align 8, !alias.scope !11294, !noalias !11295
  store i64 %i.ag, ptr %i.x, align 8, !alias.scope !11295, !noalias !11294
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11297)
  store i64 %.val18, ptr %i.y, align 8, !alias.scope !11296, !noalias !11297
  store i64 %.val16, ptr %i.z, align 8, !alias.scope !11297, !noalias !11296
end_hunk_1
