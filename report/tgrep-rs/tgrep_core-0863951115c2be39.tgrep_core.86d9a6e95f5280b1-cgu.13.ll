Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.13?download=true
inline.NumInlined: 911
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringbE10init_frontCsbzNSmZPCnTx_10tgrep_core:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !4
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 288
  %i.k = add i64 %.sroa.011.016.prol, -1          ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1118

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ]
  store i64 1, ptr %0, align 8
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 288
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 288
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 288
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 288
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 288
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 288
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 288
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 288
  %i.u = add i64 %.sroa.011.016, -8               ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutReRSB1J_E10init_frontCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !4
  %i.b = trunc nuw i64 %i.a to i1                 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !4
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null
  ret ptr %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 5 uses
  %.sroa.013.015 = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.017.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.015, %.lr.ph.preheader ]
  %.sroa.011.016.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.017.prol, i64 368
  %i.k = add i64 %.sroa.011.016.prol, -1          ; 2 uses
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1119

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa21.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.017.unr = phi ptr [ %.sroa.013.015, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.016.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.015, %bb.d ], [ %.sroa.013.0.lcssa21.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ]
  store i64 1, ptr %0, align 8
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.017 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.017.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.016 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.016.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.017, i64 368
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 368
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 368
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 368
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 368
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 368
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 368
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 368
  %i.u = add i64 %.sroa.011.016, -8               ; 2 uses
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef zeroext i1 @_RNvNtCsbzNSmZPCnTx_10tgrep_core7trigram15check_adjacency(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %.loopexit, label %.preheader.preheader

.loopexit:                                        ; preds = %.preheader.preheader, %bb.a
  %.sroa.0.0 = phi i1 [ true, %bb.a ], [ %i.h, %.preheader.preheader ]
  ret i1 %.sroa.0.0

.preheader.preheader:                             ; preds = %bb.a, %.preheader.preheader
  %.sroa.0.0612 = phi ptr [ %i.i, %.preheader.preheader ], [ %0, %bb.a ] ; 3 uses
  %.sroa.6.011 = phi i64 [ %i.j, %.preheader.preheader ], [ %1, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0612, i64 4
  %i.c = load i8, ptr %i.b, align 4, !noundef !4  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0612, i64 12
  %i.e = load i8, ptr %i.d, align 4, !noundef !4
  %i.f = tail call noundef i8 @llvm.fshl.i8(i8 %i.c, i8 %i.c, i8 1)
  %i.g = and i8 %i.f, %i.e
  %i.h = icmp ne i8 %i.g, 0                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0612, i64 8
  %i.j = add nsw i64 %.sroa.6.011, -1
  %i.k = icmp ugt i64 %.sroa.6.011, 2
  %or.cond.not = select i1 %i.h, i1 %i.k, i1 false
  br i1 %or.cond.not, label %.preheader.preheader, label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbzNSmZPCnTx_10tgrep_core7trigram18extract_with_masks(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = icmp samesign ult i64 %2, 3
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %i.g, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = add nsw i64 %2, -3
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8
  br label %bb.g

bb.d:                                             ; preds = %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.e:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.k = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = load i64, ptr %i.c, align 8, !range !12, !noundef !4
  %i.m = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.n = icmp ult i64 %i.m, 2305843009213693952
  call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.m
  store ptr %i.k, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.l, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.o, ptr %.sroa.6.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.p, align 8
  invoke void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoItermENCNvB17_18extract_with_maskss_0EE9from_iterB19_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  ret void

bb.h:                                             ; preds = %bb.b, %bb.n
  %.sroa.0.044 = phi ptr [ %1, %bb.b ], [ %i.q, %bb.n ] ; 3 uses
  %.sroa.10.042 = phi i64 [ 0, %bb.b ], [ %i.r, %bb.n ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.044, i64 1
  %i.r = add nuw nsw i64 %.sroa.10.042, 1
  %3 = load i16, ptr %.sroa.0.044, align 1
  %4 = call i16 @llvm.bswap.i16(i16 %3)
  %i.s = zext i16 %4 to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0.044, i64 2
  %6 = load i8, ptr %5, align 1, !noundef !4
  %i.u = zext i8 %6 to i32
  %i.v = or disjoint i32 %i.t, %i.u               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCsbDKHzkXHCUM_9hashbrown11rustc_entryINtNtB4_3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtB12_13TrigramHasherEE11rustc_entryB14_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef %i.v)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not12 = icmp eq ptr %i.w, null
  br i1 %.not12, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.424.0.copyload = load i64, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0.copyload = load ptr, ptr %.sroa.525.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = ptrtoint ptr %.sroa.525.0.copyload to i64
  %i.y = load i64, ptr %i.g, align 8, !alias.scope !1124, !noalias !1125, !noundef !4 ; 3 uses
  %i.z = load i64, ptr %i.c, align 8, !range !12, !alias.scope !1124, !noalias !1125, !noundef !4
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %bb.k, label %_RNCINvMs18_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB9_5EntrymNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksE14or_insert_withNCNvB18_18extract_with_masks0E0B1a_.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs9GQRcUOyOHv_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #28
          to label %_RNCINvMs18_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB9_5EntrymNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksE14or_insert_withNCNvB18_18extract_with_masks0E0B1a_.exit.i unwind label %bb.q

_RNCINvMs18_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB9_5EntrymNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksE14or_insert_withNCNvB18_18extract_with_masks0E0B1a_.exit.i: ; preds = %bb.k, %bb.j
  %i.ab = load ptr, ptr %i.f, align 8, !alias.scope !1124, !noalias !1125, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.y
  store i32 %i.v, ptr %i.ac, align 4, !noalias !1125
  %i.ad = add i64 %i.y, 1
  store i64 %i.ad, ptr %i.g, align 8, !alias.scope !1124, !noalias !1125
  %.sroa.018.0.insert.ext.i = and i64 %i.x, 4294967295
  %i.ae = invoke noundef nonnull ptr @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEE14insert_no_growBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w, i64 noundef %.sroa.424.0.copyload, i64 %.sroa.018.0.insert.ext.i)
          to label %bb.m unwind label %bb.q

bb.l:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %.sroa.424.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.m:                                             ; preds = %_RNCINvMs18_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB9_5EntrymNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksE14or_insert_withNCNvB18_18extract_with_masks0E0B1a_.exit.i, %bb.l
  %.pn.i = phi ptr [ %i.af, %bb.l ], [ %i.ae, %_RNCINvMs18_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB9_5EntrymNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksE14or_insert_withNCNvB18_18extract_with_masks0E0B1a_.exit.i ] ; 2 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -4 ; 2 uses
  %i.ag = trunc i64 %.sroa.10.042 to i8
  %i.ah = and i8 %i.ag, 7
  %i.ai = shl nuw i8 1, %i.ah
  %i.aj = load i8, ptr %.sroa.0.0.i, align 1, !noundef !4
  %i.ak = or i8 %i.aj, %i.ai
  store i8 %i.ak, ptr %.sroa.0.0.i, align 1
  %i.al = add nuw nsw i64 %.sroa.10.042, 3        ; 2 uses
  %i.am = icmp samesign ult i64 %i.al, %2
  br i1 %i.am, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %exitcond = icmp eq i64 %.sroa.10.042, %i.h
  br i1 %exitcond, label %bb.e, label %bb.h

bb.o:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.al
  %i.ao = load i8, ptr %i.an, align 1, !noundef !4
  %i.ap = mul i8 %i.ao, -98
  %i.aq = lshr i8 %i.ap, 5
  %i.ar = shl nuw i8 1, %i.aq
  %i.as = getelementptr inbounds i8, ptr %.pn.i, i64 -3 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !noundef !4
  %i.au = or i8 %i.ar, %i.at
  store i8 %i.au, ptr %i.as, align 1
  br label %bb.n

bb.p:                                             ; preds = %bb.d, %bb.q
  %lpad.phi28 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.q ], [ %lpad.thr_comm.split-lp, %bb.d ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtB4_4hash18BuildHasherDefaultNtB1z_13TrigramHasherEEEB1B_.exit unwind label %bb.r

bb.q:                                             ; preds = %_RNCINvMs18_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB9_5EntrymNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksE14or_insert_withNCNvB18_18extract_with_masks0E0B1a_.exit.i, %bb.h, %bb.k
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #27
          to label %bb.p unwind label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtB4_4hash18BuildHasherDefaultNtB1z_13TrigramHasherEEEB1B_.exit: ; preds = %bb.p
  resume { ptr, i32 } %lpad.phi28
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbzNSmZPCnTx_10tgrep_core7trigram20extract_from_literal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtCsbzNSmZPCnTx_10tgrep_core7trigram7extract(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbzNSmZPCnTx_10tgrep_core7trigram20extract_merged_masks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %i.e = icmp samesign ult i64 %2, 3
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.g, %i.f
  br i1 %.not.not.not.i.not, label %.lr.ph.split.us.preheader, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.h = phi ptr [ %1, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %.val.i = load i8, ptr %i.h, align 1, !noalias !1128, !noundef !4
  %i.i = add i8 %.val.i, -65
  %.sroa.0.0.i.i = icmp ult i8 %i.i, 26
  br i1 %.sroa.0.0.i.i, label %.lr.ph.split.preheader, label %bb.b

.split:                                           ; preds = %bb.u, %bb.o, %bb.r, %bb.m
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.split.us, %.split
  %.us-phi = phi { ptr, i32 } [ %i.j, %.split ], [ %i.al, %.split.us ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtB4_4hash18BuildHasherDefaultNtB1z_13TrigramHasherEEEB1B_.exit unwind label %bb.x

.lr.ph.split.preheader:                           ; preds = %bb.c
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = add nsw i64 %2, -3
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %bb.b
  %.sroa.458.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.559.0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = add nsw i64 %2, -3
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.backedge.us
  %.sroa.042.097.us = phi ptr [ %i.m, %.backedge.us ], [ %1, %.lr.ph.split.us.preheader ] ; 3 uses
  %.sroa.10.095.us = phi i64 [ %i.n, %.backedge.us ], [ 0, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.042.097.us, i64 1
  %i.n = add nuw nsw i64 %.sroa.10.095.us, 1
  %3 = load i16, ptr %.sroa.042.097.us, align 1
  %4 = call i16 @llvm.bswap.i16(i16 %3)
  %i.o = zext i16 %4 to i32
  %i.p = shl nuw nsw i32 %i.o, 8
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.042.097.us, i64 2
  %6 = load i8, ptr %5, align 1, !noundef !4
  %i.q = zext i8 %6 to i32
  %i.r = or disjoint i32 %i.p, %i.q
  %i.s = trunc i64 %.sroa.10.095.us to i8
  %i.t = and i8 %i.s, 7
  %i.u = shl nuw i8 1, %i.t
  %i.v = add nuw nsw i64 %.sroa.10.095.us, 3      ; 2 uses
  %i.w = icmp samesign ult i64 %i.v, %2
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.y = load i8, ptr %i.x, align 1, !noundef !4
  %i.z = mul i8 %i.y, -98
  %i.aa = lshr i8 %i.z, 5
  %i.ab = shl nuw i8 1, %i.aa
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.us
  %.sroa.0.0.us = phi i8 [ %i.ab, %bb.e ], [ 0, %.lr.ph.split.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtCsbDKHzkXHCUM_9hashbrown11rustc_entryINtNtB4_3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtB12_13TrigramHasherEE11rustc_entryB14_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef %i.r)
          to label %bb.g unwind label %.split.us

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.not21.us = icmp eq ptr %i.ac, null
  br i1 %.not21.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.458.0.copyload.us = load i64, ptr %.sroa.458.0..sroa_idx115, align 8
  %.sroa.559.0.copyload.us = load ptr, ptr %.sroa.559.0..sroa_idx116, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = ptrtoint ptr %.sroa.559.0.copyload.us to i64
  %.sroa.013.0.insert.ext.i.us = and i64 %i.ad, 4294967295
  %i.ae = invoke noundef nonnull ptr @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEE14insert_no_growBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %.sroa.458.0.copyload.us, i64 %.sroa.013.0.insert.ext.i.us)
          to label %.backedge.us unwind label %.split.us

bb.i:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %.sroa.458.0..sroa_idx115, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.backedge.us

.backedge.us:                                     ; preds = %bb.i, %bb.h
  %.pn.i.us = phi ptr [ %i.af, %bb.i ], [ %i.ae, %bb.h ] ; 2 uses
  %.sroa.0.0.i.us = getelementptr inbounds i8, ptr %.pn.i.us, i64 -4 ; 2 uses
  %i.ag = load i8, ptr %.sroa.0.0.i.us, align 1, !noundef !4
  %i.ah = or i8 %i.ag, %i.u
  store i8 %i.ah, ptr %.sroa.0.0.i.us, align 1
  %i.ai = getelementptr inbounds i8, ptr %.pn.i.us, i64 -3 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !noundef !4
  %i.ak = or i8 %i.aj, %.sroa.0.0.us
  store i8 %i.ak, ptr %i.ai, align 1
  %exitcond100 = icmp eq i64 %.sroa.10.095.us, %i.l
  br i1 %exitcond100, label %._crit_edge, label %.lr.ph.split.us

.split.us:                                        ; preds = %bb.h, %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

._crit_edge:                                      ; preds = %.backedge.us, %.backedge, %bb.a
  %.sink = phi ptr [ @1, %bb.a ], [ %i.d, %.backedge ], [ %i.d, %.backedge.us ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.backedge
  %.sroa.042.097 = phi ptr [ %i.am, %.backedge ], [ %1, %.lr.ph.split.preheader ] ; 3 uses
  %.sroa.10.095 = phi i64 [ %i.an, %.backedge ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.042.097, i64 1
  %i.an = add nuw nsw i64 %.sroa.10.095, 1
  %7 = load i16, ptr %.sroa.042.097, align 1      ; 3 uses
  %8 = call i16 @llvm.bswap.i16(i16 %7)
  %9 = zext i16 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = trunc i16 %7 to i8                        ; 2 uses
  %12 = lshr i16 %7, 8
  %13 = trunc nuw i16 %12 to i8                   ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %.sroa.042.097, i64 2
  %15 = load i8, ptr %14, align 1, !noundef !4    ; 3 uses
  %i.ao = zext i8 %15 to i32
  %i.ap = or disjoint i32 %10, %i.ao              ; 2 uses
  %i.aq = trunc i64 %.sroa.10.095 to i8
  %i.ar = and i8 %i.aq, 7
  %i.as = shl nuw i8 1, %i.ar                     ; 2 uses
  %i.at = add nuw nsw i64 %.sroa.10.095, 3        ; 3 uses
  %i.au = icmp samesign ult i64 %i.at, %2         ; 2 uses
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.at
  %i.aw = load i8, ptr %i.av, align 1, !noundef !4
  %i.ax = mul i8 %i.aw, -98
  %i.ay = lshr i8 %i.ax, 5
  %i.az = shl nuw i8 1, %i.ay
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.split, %bb.j
  %.sroa.0.0 = phi i8 [ %i.az, %bb.j ], [ 0, %.lr.ph.split ]
  %i.ba = add i8 %11, -65
  %i.bb = icmp ult i8 %i.ba, 26
  %i.bc = select i1 %i.bb, i8 32, i8 0
  %.sroa.06.0 = or i8 %i.bc, %11
  %i.bd = add i8 %13, -65
  %i.be = icmp ult i8 %i.bd, 26
  %i.bf = select i1 %i.be, i8 32, i8 0
  %.sroa.07.0 = or i8 %i.bf, %13
  %i.bg = add i8 %15, -65
  %i.bh = icmp ult i8 %i.bg, 26
  %i.bi = select i1 %i.bh, i8 32, i8 0
  %.sroa.08.0 = or i8 %i.bi, %15
  %i.bj = zext i8 %.sroa.06.0 to i32
  %i.bk = shl nuw nsw i32 %i.bj, 16
  %i.bl = zext i8 %.sroa.07.0 to i32
  %i.bm = shl nuw nsw i32 %i.bl, 8
  %i.bn = or disjoint i32 %i.bm, %i.bk
  %i.bo = zext i8 %.sroa.08.0 to i32
  %i.bp = or disjoint i32 %i.bn, %i.bo            ; 2 uses
  br i1 %i.au, label %bb.l, label %bb.m

.backedge:                                        ; preds = %bb.s, %bb.w
  %exitcond = icmp eq i64 %.sroa.10.095, %i.k
  br i1 %exitcond, label %._crit_edge, label %.lr.ph.split

bb.l:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %i.at
  %i.br = load i8, ptr %i.bq, align 1, !noundef !4 ; 2 uses
  %i.bs = add i8 %i.br, -65
  %i.bt = icmp ult i8 %i.bs, 26
  %i.bu = select i1 %i.bt, i8 32, i8 0
  %.sroa.09.0 = or i8 %i.bu, %i.br
  %i.bv = mul i8 %.sroa.09.0, -98
  %i.bw = lshr i8 %i.bv, 5
  %i.bx = shl nuw i8 1, %i.bw
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sroa.04.0 = phi i8 [ %i.bx, %bb.l ], [ 0, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtCsbDKHzkXHCUM_9hashbrown11rustc_entryINtNtB4_3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtB12_13TrigramHasherEE11rustc_entryB14_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef %i.ap)
          to label %bb.n unwind label %.split

bb.n:                                             ; preds = %bb.m
  %i.by = load ptr, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %.not22 = icmp eq ptr %i.by, null
  br i1 %.not22, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.464.0.copyload = load i64, ptr %.sroa.464.0..sroa_idx, align 8
  %.sroa.565.0.copyload = load ptr, ptr %.sroa.565.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bz = ptrtoint ptr %.sroa.565.0.copyload to i64
  %.sroa.013.0.insert.ext.i28 = and i64 %i.bz, 4294967295
  %i.ca = invoke noundef nonnull ptr @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEE14insert_no_growBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.by, i64 noundef %.sroa.464.0.copyload, i64 %.sroa.013.0.insert.ext.i28)
          to label %bb.q unwind label %.split

bb.p:                                             ; preds = %bb.n
  %i.cb = load ptr, ptr %.sroa.464.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn.i29 = phi ptr [ %i.cb, %bb.p ], [ %i.ca, %bb.o ] ; 2 uses
  %.sroa.0.0.i30 = getelementptr inbounds i8, ptr %.pn.i29, i64 -4 ; 2 uses
  %i.cc = load i8, ptr %.sroa.0.0.i30, align 1, !noundef !4
  %i.cd = or i8 %i.cc, %i.as
  store i8 %i.cd, ptr %.sroa.0.0.i30, align 1
  %i.ce = icmp eq i32 %i.bp, %i.ap
  %i.cf = getelementptr inbounds i8, ptr %.pn.i29, i64 -3 ; 3 uses
  %i.cg = load i8, ptr %i.cf, align 1, !noundef !4
  %i.ch = or i8 %.sroa.0.0, %i.cg                 ; 2 uses
  br i1 %i.ce, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 %i.ch, ptr %i.cf, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMNtCsbDKHzkXHCUM_9hashbrown11rustc_entryINtNtB4_3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtB12_13TrigramHasherEE11rustc_entryB14_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef %i.bp)
          to label %bb.t unwind label %.split

bb.s:                                             ; preds = %bb.q
  %i.ci = or i8 %i.ch, %.sroa.04.0
  store i8 %i.ci, ptr %i.cf, align 1
  br label %.backedge

bb.t:                                             ; preds = %bb.r
  %i.cj = load ptr, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not23 = icmp eq ptr %i.cj, null
  br i1 %.not23, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.470.0.copyload = load i64, ptr %.sroa.470.0..sroa_idx, align 8
  %.sroa.571.0.copyload = load ptr, ptr %.sroa.571.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ck = ptrtoint ptr %.sroa.571.0.copyload to i64
  %.sroa.013.0.insert.ext.i37 = and i64 %i.ck, 4294967295
  %i.cl = invoke noundef nonnull ptr @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEE14insert_no_growBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cj, i64 noundef %.sroa.470.0.copyload, i64 %.sroa.013.0.insert.ext.i37)
          to label %bb.w unwind label %.split

bb.v:                                             ; preds = %bb.t
  %i.cm = load ptr, ptr %.sroa.470.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn.i38 = phi ptr [ %i.cm, %bb.v ], [ %i.cl, %bb.u ] ; 2 uses
  %.sroa.0.0.i39 = getelementptr inbounds i8, ptr %.pn.i38, i64 -4 ; 2 uses
  %i.cn = load i8, ptr %.sroa.0.0.i39, align 1, !noundef !4
  %i.co = or i8 %i.cn, %i.as
  store i8 %i.co, ptr %.sroa.0.0.i39, align 1
  %i.cp = getelementptr inbounds i8, ptr %.pn.i38, i64 -3 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !noundef !4
  %i.cr = or i8 %i.cq, %.sroa.04.0
  store i8 %i.cr, ptr %i.cp, align 1
  br label %.backedge

bb.x:                                             ; preds = %bb.d
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtB4_4hash18BuildHasherDefaultNtB1z_13TrigramHasherEEEB1B_.exit: ; preds = %bb.d
  resume { ptr, i32 } %.us-phi
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsbzNSmZPCnTx_10tgrep_core7trigram7extract(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = icmp samesign ult i64 %2, 3
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = tail call { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @5) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.e, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.f, ptr %.sroa.57.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %i.h, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.k, %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecmEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #27
          to label %bb.m unwind label %bb.l

bb.e:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  ret void

bb.g:                                             ; preds = %bb.b, %bb.i
  %.sroa.0.019 = phi ptr [ %1, %bb.b ], [ %i.m, %bb.i ] ; 3 uses
  %.sroa.5.018 = phi i64 [ %2, %bb.b ], [ %i.l, %bb.i ] ; 2 uses
  %i.l = add nsw i64 %.sroa.5.018, -1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 1
  %3 = load i16, ptr %.sroa.0.019, align 1
  %4 = call i16 @llvm.bswap.i16(i16 %3)
  %i.n = zext i16 %4 to i32
  %i.o = shl nuw nsw i32 %i.n, 8
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 2
  %6 = load i8, ptr %5, align 1, !noundef !4
  %i.p = zext i8 %6 to i32
  %i.q = or disjoint i32 %i.o, %i.p               ; 2 uses
  %i.r = invoke noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapmuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, i32 noundef %i.q)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit, %bb.h
  %i.s = icmp ult i64 %.sroa.5.018, 4
  br i1 %i.s, label %bb.e, label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.t = load i64, ptr %i.h, align 8, !alias.scope !1131, !noundef !4 ; 3 uses
  %i.u = load i64, ptr %i.a, align 8, !range !12, !alias.scope !1131, !noundef !4
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.k, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs9GQRcUOyOHv_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #28
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.d

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmE8push_mutCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.k, %bb.j
  %i.w = load ptr, ptr %i.g, align 8, !alias.scope !1131, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.t
  store i32 %i.q, ptr %i.x, align 4
  %i.y = add i64 %i.t, 1
  store i64 %i.y, ptr %i.h, align 8, !alias.scope !1131
  br label %bb.i

bb.l:                                             ; preds = %bb.m, %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.m:                                             ; preds = %bb.d
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set7HashSetmEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.m
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCsbzNSmZPCnTx_10tgrep_core7trigram9is_binary(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @llvm.umin.i64(i64 %1, i64 8192) ; 3 uses
  %i.b = icmp samesign ult i64 %1, 16
  br i1 %i.b, label %.preheader.i.i, label %bb.b

.preheader.i.i:                                   ; preds = %bb.a
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %_RNvXsg_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_13SliceContains14slice_containsCsbzNSmZPCnTx_10tgrep_core.exit, label %.lr.ph.i.i

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, 8193) %i.a) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  %i.f = trunc nuw i64 %i.d to i1
  br i1 %i.f, label %.loopexit9.i.i, label %_RNvXsg_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_13SliceContains14slice_containsCsbzNSmZPCnTx_10tgrep_core.exit

.loopexit9.i.i:                                   ; preds = %.lr.ph.i.i, %bb.b
  %.sroa.5.0.i.i = phi i64 [ %i.e, %bb.b ], [ %.sroa.04.011.i.i, %.lr.ph.i.i ]
  %i.g = icmp ult i64 %.sroa.5.0.i.i, %i.a
  tail call void @llvm.assume(i1 %i.g)
  br label %_RNvXsg_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_13SliceContains14slice_containsCsbzNSmZPCnTx_10tgrep_core.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.c
  %.sroa.04.011.i.i = phi i64 [ %i.k, %bb.c ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.04.011.i.i
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !1136, !noundef !4
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %.loopexit9.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = add nuw nsw i64 %.sroa.04.011.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.k, %i.a
  br i1 %exitcond.not.i.i, label %_RNvXsg_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_13SliceContains14slice_containsCsbzNSmZPCnTx_10tgrep_core.exit, label %.lr.ph.i.i

_RNvXsg_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_13SliceContains14slice_containsCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.c, %.preheader.i.i, %bb.b, %.loopexit9.i.i
  %i.l = phi i1 [ true, %.loopexit9.i.i ], [ false, %bb.b ], [ false, %.preheader.i.i ], [ false, %bb.c ]
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define hidden noundef range(i64 0, -9223372036854775808) i64 @_RNvXNtCsbZZSDSnXQ8V_6memchr3extPhNtB2_7Pointer8distanceCsbzNSmZPCnTx_10tgrep_core(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  ret i64 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_7Display3fmtCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtNtCsjFxWRWgRcyr_5rayon11collections8hash_mapQINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEENtNtB9_4iter20IntoParallelIterator13into_par_iterB2n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE8iter_mutB1p_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  call void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTRmQIBL_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtB2_12SpecFromIterBU_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7IterMutmBY_EE9from_iterB16_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, -9223372036854775808) i64 @_RNvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterAhj2_ENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 1
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 768614336404564651) i64 @_RNvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 0, 2305843009213693952) i64 @_RNvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IteryENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RNvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMuthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  ret i64 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !8, !noalias !1141, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsbzNSmZPCnTx_10tgrep_core.exit, label %bb.b, !prof !1142

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsbzNSmZPCnTx_10tgrep_core.exit

_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #10

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEE14insert_no_growBU_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, i64) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #14

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsaPjlYXXNcv6_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTReNtNtCsbzNSmZPCnTx_10tgrep_core4meta16EvidenceEntryRefEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTReNtNtCsgCecv3eZDcN_5alloc6string6StringEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTmuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtB7_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB15_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTmIBw_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTmINtNtB7_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB18_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtB9_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1R_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTmIB1c_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1C_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB7_7HashMapReNtNtCsbzNSmZPCnTx_10tgrep_core4meta16EvidenceEntryRefNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendTBP_BR_EE6extendINtNtNtB2D_8adapters3map3MapINtNtNtNtB1O_11collections4hash3map4IterNtNtCsgCecv3eZDcN_5alloc6string6StringNtBT_9FileStampENCNvBT_19write_file_evidences0_0EEBV_(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB7_7HashMapReNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendTBP_BR_EE6extendINtNtNtB2o_8adapters3map3MapINtNtB3v_6filter6FilterINtNtNtNtB1z_11collections4hash3map4IterBR_NtNtCsbzNSmZPCnTx_10tgrep_core4meta9ContentIdENCNvB4Y_19write_file_evidence0ENCB5I_s_0EEB50_(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_mapINtNvXs3e_NtB1j_5implsINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMappppENtB1j_11Deserialize11deserialize10MapVisitorNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta13EvidenceEntryNtNtNtB2O_4hash6random11RandomStateEEB52_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_mapINtNvXs3e_NtB1j_5implsINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMappppENtB1j_11Deserialize11deserialize10MapVisitorNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampNtNtNtB2O_4hash6random11RandomStateEEB52_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjFxWRWgRcyr_5rayon4iter6extend12fast_collectINtNtB4_10filter_map9FilterMapINtNtB6_5slice4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNvNtCsbzNSmZPCnTx_10tgrep_core4meta18collect_filestamps0ETB1D_NtB2k_9FileStampEEB2m_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEE7reserveNCINvNtB8_3map11make_hasherBQ_B1s_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EB1w_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB7_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendTBP_B1r_EE6extendINtNtBT_3vec3VecB3R_EEB1v_(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs6_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTNtNtB9_6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEE9pop_frontB1R_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsjFxWRWgRcyr_5rayon4iter6extend12fast_collectINtNtB4_10filter_map9FilterMapINtNtB6_5range4IterjENCNvMNtCsbzNSmZPCnTx_10tgrep_core6hybridNtB1K_11HybridIndex13full_snapshot0ETmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtB1M_6ondisk12PostingEntryEEEB1M_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEE7reserveNCINvNtB8_3map11make_hashermBR_NtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE0EB1s_(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB7_7HashMapmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendTmBQ_EE6extendIBR_B3U_EEB1r_(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs6_NtNtCsgCecv3eZDcN_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTmIB1c_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEE9pop_frontB1C_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #18

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64, i64) #15

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs9GQRcUOyOHv_12aho_corasick(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB6_3VecTmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoItermENCNvB17_18extract_with_maskss_0EE9from_iterB19_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsbDKHzkXHCUM_9hashbrown11rustc_entryINtNtB4_3map7HashMapmNtNtCsbzNSmZPCnTx_10tgrep_core7trigram12TrigramMasksINtNtCsf3Ta7LF998c_4core4hash18BuildHasherDefaultNtB12_13TrigramHasherEE11rustc_entryB14_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(32), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapmuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(48), i32 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path10components(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -1, 2) i8 @_RNvNtCs5Xr050g3D4S_3std4path18compare_components(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryENtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE8iter_mutB1p_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec14spec_from_iterINtB4_3VecTRmQIBL_NtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtB2_12SpecFromIterBU_INtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7IterMutmBY_EE9from_iterB16_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #21 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { cold noreturn nounwind }
attributes #25 = { noinline noreturn }
attributes #26 = { inlinehint }
attributes #27 = { cold }
attributes #28 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!4 = !{}
!5 = !{i64 8}
!6 = !{!"branch_weights", i32 4001, i32 4000000}
!7 = !{i64 4}
!8 = !{i8 0, i8 2}
!9 = !{i64 0, i64 2}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{i64 -1, i64 -9223372036854775808}
!12 = !{i64 0, i64 -9223372036854775808}
!13 = distinct !{!13, !"_RINvNtCsaPjlYXXNcv6_3log13___private_api8log_implNtB2_12GlobalLoggerECsbzNSmZPCnTx_10tgrep_core"}
!14 = distinct !{!14, !13, !"_RINvNtCsaPjlYXXNcv6_3log13___private_api8log_implNtB2_12GlobalLoggerECsbzNSmZPCnTx_10tgrep_core: argument 0"}
!15 = !{!14}
!16 = distinct !{!16, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core"}
!17 = distinct !{!17, !16, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core: argument 0"}
!18 = distinct !{!18, !"_RNvXs5_NtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtBd_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core"}
!19 = distinct !{!19, !18, !"_RNvXs5_NtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtBd_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!20 = distinct !{!20, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core"}
!21 = distinct !{!21, !20, !"_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbzNSmZPCnTx_10tgrep_core: argument 0"}
!22 = distinct !{!22, !"_RNvXs5_NtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtBd_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core"}
!23 = distinct !{!23, !22, !"_RNvXs5_NtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtBd_3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!24 = !{!19, !17}
!25 = !{!23, !21}
!26 = distinct !{!26, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core"}
!27 = distinct !{!27, !26, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!28 = distinct !{!28, !26, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!29 = distinct !{!29, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core"}
!30 = distinct !{!30, !29, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!31 = distinct !{!31, !29, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!32 = distinct !{!32, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core"}
!33 = distinct !{!33, !32, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!34 = distinct !{!34, !32, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!35 = distinct !{!35, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core"}
!36 = distinct !{!36, !35, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!37 = distinct !{!37, !35, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!38 = distinct !{!38, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core"}
!39 = distinct !{!39, !38, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!40 = distinct !{!40, !38, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!41 = !{!28, !27}
!42 = !{!31, !30}
!43 = !{!34, !33}
!44 = !{!37, !36}
!45 = !{!40, !39}
!46 = distinct !{!46, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core"}
!47 = distinct !{!47, !46, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!48 = distinct !{!48, !46, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!49 = distinct !{!49, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core"}
!50 = distinct !{!50, !49, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!51 = distinct !{!51, !49, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!52 = distinct !{!52, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core"}
!53 = distinct !{!53, !52, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!54 = distinct !{!54, !52, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!55 = distinct !{!55, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core"}
!56 = distinct !{!56, !55, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!57 = distinct !{!57, !55, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!58 = distinct !{!58, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core"}
!59 = distinct !{!59, !58, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core: argument 1"}
!60 = distinct !{!60, !58, !"_RNvXsd_NtNtCsf3Ta7LF998c_4core5slice3cmphNtB5_8SliceOrd7compareCsbzNSmZPCnTx_10tgrep_core: argument 0"}
!61 = !{!48, !47}
!62 = !{!51, !50}
!63 = !{!54, !53}
!64 = !{!57, !56}
!65 = !{!60, !59}
!66 = distinct !{!66, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_11sort_by_keymNCNvB1i_8simplify0E0EB1k_"}
!67 = distinct !{!67, !66, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_11sort_by_keymNCNvB1i_8simplify0E0EB1k_: argument 0"}
!68 = distinct !{!68, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB14_11sort_by_keymNCNvB16_8simplify0E0EB18_"}
!69 = distinct !{!69, !68, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB14_11sort_by_keymNCNvB16_8simplify0E0EB18_: argument 1"}
!70 = distinct !{!70, !68, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB14_11sort_by_keymNCNvB16_8simplify0E0EB18_: argument 0"}
!71 = distinct !{!71, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_11sort_by_keymNCNvB19_8simplify0E0EB1b_"}
!72 = distinct !{!72, !71, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_11sort_by_keymNCNvB19_8simplify0E0EB1b_: argument 1"}
!73 = distinct !{!73, !71, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_11sort_by_keymNCNvB19_8simplify0E0EB1b_: argument 0"}
!74 = !{!67}
!75 = !{!70, !69, !67}
!76 = !{!73, !72, !67}
!77 = !{!70, !69}
!78 = !{!73, !72}
!79 = distinct !{!79, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1g_20sort_unstable_by_keymNCNCNvMNtB1k_6hybridNtB2N_11HybridIndex13full_snapshots0_00E0EB1k_"}
!80 = distinct !{!80, !79, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1g_20sort_unstable_by_keymNCNCNvMNtB1k_6hybridNtB2N_11HybridIndex13full_snapshots0_00E0EB1k_: argument 0"}
!81 = distinct !{!81, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB14_20sort_unstable_by_keymNCNCNvMNtB18_6hybridNtB2B_11HybridIndex13full_snapshots0_00E0EB18_"}
!82 = distinct !{!82, !81, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB14_20sort_unstable_by_keymNCNCNvMNtB18_6hybridNtB2B_11HybridIndex13full_snapshots0_00E0EB18_: argument 1"}
!83 = distinct !{!83, !81, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB14_20sort_unstable_by_keymNCNCNvMNtB18_6hybridNtB2B_11HybridIndex13full_snapshots0_00E0EB18_: argument 0"}
!84 = distinct !{!84, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB17_20sort_unstable_by_keymNCNCNvMNtB1b_6hybridNtB2E_11HybridIndex13full_snapshots0_00E0EB1b_"}
!85 = distinct !{!85, !84, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB17_20sort_unstable_by_keymNCNCNvMNtB1b_6hybridNtB2E_11HybridIndex13full_snapshots0_00E0EB1b_: argument 1"}
!86 = distinct !{!86, !84, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB17_20sort_unstable_by_keymNCNCNvMNtB1b_6hybridNtB2E_11HybridIndex13full_snapshots0_00E0EB1b_: argument 0"}
!87 = !{!80}
!88 = !{!83, !82, !80}
!89 = !{!86, !85, !80}
!90 = !{!83, !82}
!91 = !{!86, !85}
!92 = distinct !{!92, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1g_20sort_unstable_by_keymNCNvNtB1k_8external14merge_segmentss0_0E0EB1k_"}
!93 = distinct !{!93, !92, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB1g_20sort_unstable_by_keymNCNvNtB1k_8external14merge_segmentss0_0E0EB1k_: argument 0"}
!94 = distinct !{!94, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB14_20sort_unstable_by_keymNCNvNtB18_8external14merge_segmentss0_0E0EB18_"}
!95 = distinct !{!95, !94, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB14_20sort_unstable_by_keymNCNvNtB18_8external14merge_segmentss0_0E0EB18_: argument 1"}
!96 = distinct !{!96, !94, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB14_20sort_unstable_by_keymNCNvNtB18_8external14merge_segmentss0_0E0EB18_: argument 0"}
!97 = distinct !{!97, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB17_20sort_unstable_by_keymNCNvNtB1b_8external14merge_segmentss0_0E0EB1b_"}
!98 = distinct !{!98, !97, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB17_20sort_unstable_by_keymNCNvNtB1b_8external14merge_segmentss0_0E0EB1b_: argument 1"}
!99 = distinct !{!99, !97, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMB8_SB17_20sort_unstable_by_keymNCNvNtB1b_8external14merge_segmentss0_0E0EB1b_: argument 0"}
!100 = !{!93}
!101 = !{!96, !95, !93}
!102 = !{!99, !98, !93}
!103 = !{!96, !95}
!104 = !{!99, !98}
!105 = distinct !{!105, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_11sort_by_keymNCNvNtB1k_5query30sort_dedup_postings_by_file_ids_0E0EB1k_"}
!106 = distinct !{!106, !105, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_11sort_by_keymNCNvNtB1k_5query30sort_dedup_postings_by_file_ids_0E0EB1k_: argument 0"}
!107 = distinct !{!107, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB14_11sort_by_keymNCNvNtB18_5query30sort_dedup_postings_by_file_ids_0E0EB18_"}
!108 = distinct !{!108, !107, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB14_11sort_by_keymNCNvNtB18_5query30sort_dedup_postings_by_file_ids_0E0EB18_: argument 1"}
!109 = distinct !{!109, !107, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB14_11sort_by_keymNCNvNtB18_5query30sort_dedup_postings_by_file_ids_0E0EB18_: argument 0"}
!110 = distinct !{!110, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_11sort_by_keymNCNvNtB1b_5query30sort_dedup_postings_by_file_ids_0E0EB1b_"}
!111 = distinct !{!111, !110, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_11sort_by_keymNCNvNtB1b_5query30sort_dedup_postings_by_file_ids_0E0EB1b_: argument 1"}
!112 = distinct !{!112, !110, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB17_11sort_by_keymNCNvNtB1b_5query30sort_dedup_postings_by_file_ids_0E0EB1b_: argument 0"}
!113 = !{!106}
!114 = !{!109, !108, !106}
!115 = !{!112, !111, !106}
!116 = !{!109, !108}
!117 = !{!112, !111}
!118 = distinct !{!118, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1g_16sort_unstable_byNCNvMs0_B1i_NtB1i_14ExternalSorter10sort_arena0E0EB1k_"}
!119 = distinct !{!119, !118, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1g_16sort_unstable_byNCNvMs0_B1i_NtB1i_14ExternalSorter10sort_arena0E0EB1k_: argument 0"}
!120 = distinct !{!120, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB14_16sort_unstable_byNCNvMs0_B16_NtB16_14ExternalSorter10sort_arena0E0EB18_"}
!121 = distinct !{!121, !120, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB14_16sort_unstable_byNCNvMs0_B16_NtB16_14ExternalSorter10sort_arena0E0EB18_: argument 1"}
!122 = distinct !{!122, !120, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB14_16sort_unstable_byNCNvMs0_B16_NtB16_14ExternalSorter10sort_arena0E0EB18_: argument 0"}
!123 = distinct !{!123, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB17_16sort_unstable_byNCNvMs0_B19_NtB19_14ExternalSorter10sort_arena0E0EB1b_"}
!124 = distinct !{!124, !123, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB17_16sort_unstable_byNCNvMs0_B19_NtB19_14ExternalSorter10sort_arena0E0EB1b_: argument 1"}
!125 = distinct !{!125, !123, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB17_16sort_unstable_byNCNvMs0_B19_NtB19_14ExternalSorter10sort_arena0E0EB1b_: argument 0"}
!126 = !{!119}
!127 = !{!122, !121}
!128 = !{!125, !124}
!129 = distinct !{!129, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1g_16sort_unstable_byNCNvNtB1k_7builder28write_index_v2_from_postings0E0EB1k_"}
!130 = distinct !{!130, !129, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1g_16sort_unstable_byNCNvNtB1k_7builder28write_index_v2_from_postings0E0EB1k_: argument 0"}
!131 = distinct !{!131, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB14_16sort_unstable_byNCNvNtB18_7builder28write_index_v2_from_postings0E0EB18_"}
!132 = distinct !{!132, !131, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB14_16sort_unstable_byNCNvNtB18_7builder28write_index_v2_from_postings0E0EB18_: argument 1"}
!133 = distinct !{!133, !131, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB14_16sort_unstable_byNCNvNtB18_7builder28write_index_v2_from_postings0E0EB18_: argument 0"}
!134 = distinct !{!134, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB17_16sort_unstable_byNCNvNtB1b_7builder28write_index_v2_from_postings0E0EB1b_"}
!135 = distinct !{!135, !134, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB17_16sort_unstable_byNCNvNtB1b_7builder28write_index_v2_from_postings0E0EB1b_: argument 1"}
!136 = distinct !{!136, !134, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB17_16sort_unstable_byNCNvNtB1b_7builder28write_index_v2_from_postings0E0EB1b_: argument 0"}
!137 = !{!130}
!138 = !{!133, !132}
!139 = !{!136, !135}
!140 = distinct !{!140, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1o_5sliceSB1g_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2G_9LiveIndex14remap_snapshot0E0EB2I_"}
!141 = distinct !{!141, !140, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1o_5sliceSB1g_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2G_9LiveIndex14remap_snapshot0E0EB2I_: argument 0"}
!142 = distinct !{!142, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1c_5sliceSB14_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2u_9LiveIndex14remap_snapshot0E0EB2w_"}
!143 = distinct !{!143, !142, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1c_5sliceSB14_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2u_9LiveIndex14remap_snapshot0E0EB2w_: argument 1"}
!144 = distinct !{!144, !142, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1c_5sliceSB14_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2u_9LiveIndex14remap_snapshot0E0EB2w_: argument 0"}
!145 = distinct !{!145, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1f_5sliceSB17_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2x_9LiveIndex14remap_snapshot0E0EB2z_"}
!146 = distinct !{!146, !145, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1f_5sliceSB17_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2x_9LiveIndex14remap_snapshot0E0EB2z_: argument 1"}
!147 = distinct !{!147, !145, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1f_5sliceSB17_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2x_9LiveIndex14remap_snapshot0E0EB2z_: argument 0"}
!148 = !{!141}
!149 = !{!144, !143}
!150 = !{!147, !146}
!151 = distinct !{!151, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1o_5sliceSB1g_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2G_9LiveIndex17all_paths_ordered0E0EB2I_"}
!152 = distinct !{!152, !151, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1o_5sliceSB1g_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2G_9LiveIndex17all_paths_ordered0E0EB2I_: argument 0"}
!153 = distinct !{!153, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1c_5sliceSB14_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2u_9LiveIndex17all_paths_ordered0E0EB2w_"}
!154 = distinct !{!154, !153, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1c_5sliceSB14_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2u_9LiveIndex17all_paths_ordered0E0EB2w_: argument 1"}
!155 = distinct !{!155, !153, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort8merge_upTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1c_5sliceSB14_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2u_9LiveIndex17all_paths_ordered0E0EB2w_: argument 0"}
!156 = distinct !{!156, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1f_5sliceSB17_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2x_9LiveIndex17all_paths_ordered0E0EB2z_"}
!157 = distinct !{!157, !156, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1f_5sliceSB17_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2x_9LiveIndex17all_paths_ordered0E0EB2z_: argument 1"}
!158 = distinct !{!158, !156, !"_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort10merge_downTRmRNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB1f_5sliceSB17_11sort_by_keymNCNvMs0_NtCsbzNSmZPCnTx_10tgrep_core4liveNtB2x_9LiveIndex17all_paths_ordered0E0EB2z_: argument 0"}
!159 = !{!152}
!160 = !{!155, !154}
!161 = !{!158, !157}
!162 = distinct !{!162, !"_RNvXs10_NtNtCsf3Ta7LF998c_4core3cmp5implsmNtB8_10PartialOrd2lt"}
!163 = distinct !{!163, !162, !"_RNvXs10_NtNtCsf3Ta7LF998c_4core3cmp5implsmNtB8_10PartialOrd2lt: argument 0"}
!164 = distinct !{!164, !162, !"_RNvXs10_NtNtCsf3Ta7LF998c_4core3cmp5implsmNtB8_10PartialOrd2lt: argument 1"}
!165 = distinct !{!165, !"_RNvXs10_NtNtCsf3Ta7LF998c_4core3cmp5implsmNtB8_10PartialOrd2lt"}
!166 = distinct !{!166, !165, !"_RNvXs10_NtNtCsf3Ta7LF998c_4core3cmp5implsmNtB8_10PartialOrd2lt: argument 0"}
end_hunk_0
