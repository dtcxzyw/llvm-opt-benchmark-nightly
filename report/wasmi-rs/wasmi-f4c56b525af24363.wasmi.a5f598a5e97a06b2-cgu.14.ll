Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.14?download=true
inline.NumInlined: 895
inline.NumDeleted: 521
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE6insertB1x_:bb.a
bb.g:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %3, 0
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit21.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %2, i64 noundef range(i64 1, 0) %3, i64 noundef 1) #30, !noalias !2088
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeEECsefoF4u9kbII_5wasmi.exit21.i

bb.i:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.7.8.copyload1, ptr %i.e, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.15.24.copyload, ptr %.sroa.11.8..sroa_idx, align 8
  %.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.13.8.copyload5, ptr %.sroa.13.8..sroa_idx, align 8
  %.sroa.15.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %1, ptr %.sroa.15.8..sroa_idx, align 8
  call void @_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryINtNtBd_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE6insertB1L_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.a
  %.sroa.16.0 = phi i64 [ undef, %bb.a ], [ %.sroa.16.24.copyload, %bb.f ]
  %.sroa.15.0 = phi ptr [ undef, %bb.a ], [ %.sroa.15.24.copyload, %bb.f ]
  %.sroa.13.0 = phi ptr [ null, %bb.a ], [ %.sroa.13.24.copyload, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %2, ptr %i.d, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %3, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %1, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.15.0, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_11VacantEntryINtNtBd_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE12insert_entryB1J_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %4)
  %i.p = call noundef nonnull align 4 ptr @_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryINtNtBd_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE8into_mutB1L_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i32 -1, ptr %0, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE10dying_nextB1x_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !2111
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2111 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2111 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2111 ; 6 uses
  store i64 0, ptr %1, align 8, !alias.scope !2111
  %i.h = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.h, label %bb.c, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE16deallocating_endNtNtBc_5alloc6GlobalEB2a_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.i = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter4 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0
  br i1 %lcmp.mod5.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter6 = phi i64 [ %prol.iter6.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 280
  %i.k = load ptr, ptr %i.j, align 8, !noalias !2112, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter6.next = add i64 %prol.iter6, 1       ; 2 uses
  %prol.iter6.cmp.not = icmp eq i64 %prol.iter6.next, %xtraiter4
  br i1 %prol.iter6.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2096

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.l, %.lr.ph.i.i.prol ]
  %i.m = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.m, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 280
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2112, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 280
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2112, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 280
  %i.s = load ptr, ptr %i.r, align 8, !noalias !2112, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 280
  %i.u = load ptr, ptr %i.t, align 8, !noalias !2112, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 280
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2112, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 280
  %i.y = load ptr, ptr %i.x, align 8, !noalias !2112, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 280
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !2112, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 280
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !2112, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = add i64 %.sroa.020.024.i.i, -8          ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.10.0.ph.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.sroa.6.0.copyload.i.i, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2109
  store ptr %.sroa.0.0.ph.i, ptr %i.c, align 8, !noalias !2109
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2109
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !2109
  call void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalEB2i_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !noalias !2109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2109
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE16deallocating_endNtNtBc_5alloc6GlobalEB2a_.exit

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE16deallocating_endNtNtBc_5alloc6GlobalEB2a_.exit: ; preds = %bb.b, %.loopexit.i
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.af = add i64 %i.f, -1
  store i64 %i.af, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2114)
  %i.ag = load i64, ptr %1, align 8, !range !9, !alias.scope !2115, !noundef !4
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !2115, !noundef !4
  %.not.i.i1 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1, label %bb.g, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE10init_frontB29_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !2115, !noundef !4 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !2115, !nonnull !4, !noundef !4 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i2.prol ], [ %i.am, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 280
  %i.ap = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ao, align 8, !noalias !2116, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !2102

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.am, %.lr.ph.i.i2.preheader ], [ %i.ap, %.lr.ph.i.i2.prol ]
  %i.aq = icmp ult i64 %i.am, 8
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ]
  store ptr %.sroa.013.0.lcssa.i.i, ptr %i.ai, align 8, !alias.scope !2115
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !alias.scope !2115
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE10init_frontB29_.exit.i

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 280
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !noalias !2116, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 280
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !noalias !2116, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 280
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !noalias !2116, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 280
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !noalias !2116, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 280
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !noalias !2116, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 280
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !noalias !2116, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 280
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !noalias !2116, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 280
  %i.az = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !noalias !2116, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE10init_frontB29_.exit.i: ; preds = %._crit_edge.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2117
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalEB2i_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !noalias !2118

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE10init_frontB29_.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !noalias !2117, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB2a_.exit, !prof !10

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
          to label %.noexc1.i.i unwind label %bb.i, !noalias !2119

.noexc1.i.i:                                      ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE10init_frontB29_.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #28, !noalias !2120
  unreachable

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB2a_.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB2a_.exit, %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE16deallocating_endNtNtBc_5alloc6GlobalEB2a_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE10dying_nextB1x_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2140)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !2141
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2141 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2141 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2141 ; 6 uses
  store i64 0, ptr %1, align 8, !alias.scope !2141
  %i.h = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.h, label %bb.c, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE16deallocating_endNtNtBc_5alloc6GlobalEB2a_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.i = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter4 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0
  br i1 %lcmp.mod5.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter6 = phi i64 [ %prol.iter6.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 320
  %i.k = load ptr, ptr %i.j, align 8, !noalias !2142, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter6.next = add i64 %prol.iter6, 1       ; 2 uses
  %prol.iter6.cmp.not = icmp eq i64 %prol.iter6.next, %xtraiter4
  br i1 %prol.iter6.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2126

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.l, %.lr.ph.i.i.prol ]
  %i.m = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.m, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 320
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2142, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2142, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 320
  %i.s = load ptr, ptr %i.r, align 8, !noalias !2142, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 320
  %i.u = load ptr, ptr %i.t, align 8, !noalias !2142, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 320
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2142, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 320
  %i.y = load ptr, ptr %i.x, align 8, !noalias !2142, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 320
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !2142, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 320
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !2142, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = add i64 %.sroa.020.024.i.i, -8          ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.10.0.ph.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.sroa.6.0.copyload.i.i, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2139
  store ptr %.sroa.0.0.ph.i, ptr %i.c, align 8, !noalias !2139
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2139
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !2139
  call void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalEB2i_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !noalias !2139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2139
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE16deallocating_endNtNtBc_5alloc6GlobalEB2a_.exit

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE16deallocating_endNtNtBc_5alloc6GlobalEB2a_.exit: ; preds = %bb.b, %.loopexit.i
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.af = add i64 %i.f, -1
  store i64 %i.af, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  %i.ag = load i64, ptr %1, align 8, !range !9, !alias.scope !2145, !noundef !4
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !2145, !noundef !4
  %.not.i.i1 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1, label %bb.g, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE10init_frontB29_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !2145, !noundef !4 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !2145, !nonnull !4, !noundef !4 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i2.prol ], [ %i.am, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 320
  %i.ap = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ao, align 8, !noalias !2146, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !2132

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.am, %.lr.ph.i.i2.preheader ], [ %i.ap, %.lr.ph.i.i2.prol ]
  %i.aq = icmp ult i64 %i.am, 8
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ]
  store ptr %.sroa.013.0.lcssa.i.i, ptr %i.ai, align 8, !alias.scope !2145
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !alias.scope !2145
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE10init_frontB29_.exit.i

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 320
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !noalias !2146, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 320
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !noalias !2146, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 320
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !noalias !2146, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 320
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !noalias !2146, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 320
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !noalias !2146, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 320
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !noalias !2146, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 320
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !noalias !2146, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 320
  %i.az = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !noalias !2146, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE10init_frontB29_.exit.i: ; preds = %._crit_edge.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2147
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalEB2i_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !noalias !2148

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE10init_frontB29_.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !noalias !2147, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB2a_.exit, !prof !10

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
          to label %.noexc1.i.i unwind label %bb.i, !noalias !2149

.noexc1.i.i:                                      ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE10init_frontB29_.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #28, !noalias !2150
  unreachable

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB2a_.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB2a_.exit, %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtBc_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE16deallocating_endNtNtBc_5alloc6GlobalEB2a_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE10dying_nextCsefoF4u9kbII_5wasmi(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2170)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !2171
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2171 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2171 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2171 ; 6 uses
  store i64 0, ptr %1, align 8, !alias.scope !2171
  %i.h = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.h, label %bb.c, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.i = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter4 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0
  br i1 %lcmp.mod5.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter6 = phi i64 [ %prol.iter6.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 368
  %i.k = load ptr, ptr %i.j, align 8, !noalias !2172, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter6.next = add i64 %prol.iter6, 1       ; 2 uses
  %prol.iter6.cmp.not = icmp eq i64 %prol.iter6.next, %xtraiter4
  br i1 %prol.iter6.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2156

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.l, %.lr.ph.i.i.prol ]
  %i.m = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.m, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 368
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2172, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 368
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2172, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 368
  %i.s = load ptr, ptr %i.r, align 8, !noalias !2172, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 368
  %i.u = load ptr, ptr %i.t, align 8, !noalias !2172, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 368
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2172, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 368
  %i.y = load ptr, ptr %i.x, align 8, !noalias !2172, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 368
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !2172, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 368
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !2172, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = add i64 %.sroa.020.024.i.i, -8          ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.10.0.ph.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.sroa.6.0.copyload.i.i, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2169
  store ptr %.sroa.0.0.ph.i, ptr %i.c, align 8, !noalias !2169
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2169
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !2169
  call void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !noalias !2169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2169
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit: ; preds = %bb.b, %.loopexit.i
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.af = add i64 %i.f, -1
  store i64 %i.af, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2174)
  %i.ag = load i64, ptr %1, align 8, !range !9, !alias.scope !2175, !noundef !4
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !2175, !noundef !4
  %.not.i.i1 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1, label %bb.g, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE10init_frontCsefoF4u9kbII_5wasmi.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !2175, !noundef !4 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !2175, !nonnull !4, !noundef !4 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i2.prol ], [ %i.am, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 368
  %i.ap = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ao, align 8, !noalias !2176, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !2162

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.am, %.lr.ph.i.i2.preheader ], [ %i.ap, %.lr.ph.i.i2.prol ]
  %i.aq = icmp ult i64 %i.am, 8
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ]
  store ptr %.sroa.013.0.lcssa.i.i, ptr %i.ai, align 8, !alias.scope !2175
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !alias.scope !2175
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE10init_frontCsefoF4u9kbII_5wasmi.exit.i

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 368
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !noalias !2176, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 368
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !noalias !2176, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 368
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !noalias !2176, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 368
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !noalias !2176, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 368
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !noalias !2176, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 368
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !noalias !2176, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 368
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !noalias !2176, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 368
  %i.az = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !noalias !2176, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE10init_frontCsefoF4u9kbII_5wasmi.exit.i: ; preds = %._crit_edge.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2177
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtBc_6string6StringNtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !noalias !2178

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE10init_frontCsefoF4u9kbII_5wasmi.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !noalias !2177, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit, !prof !10

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
          to label %.noexc1.i.i unwind label %bb.i, !noalias !2179

.noexc1.i.i:                                      ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE10init_frontCsefoF4u9kbII_5wasmi.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #28, !noalias !2180
  unreachable

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit, %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtBc_6string6StringNtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs9FmeSmcCnTG_10wasmparser9validator5types10CoreTypeIdNtNtNtNtB1d_11collections9index_map6detail9SlotIndexE10dying_nextCsefoF4u9kbII_5wasmi(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !2201
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2201 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2201 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2201 ; 6 uses
  store i64 0, ptr %1, align 8, !alias.scope !2201
  %i.h = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.h, label %bb.c, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCs9FmeSmcCnTG_10wasmparser9validator5types10CoreTypeIdNtNtNtNtB1Q_11collections9index_map6detail9SlotIndexE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.i = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter4 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0
  br i1 %lcmp.mod5.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter6 = phi i64 [ %prol.iter6.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 144
  %i.k = load ptr, ptr %i.j, align 8, !noalias !2202, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter6.next = add i64 %prol.iter6, 1       ; 2 uses
  %prol.iter6.cmp.not = icmp eq i64 %prol.iter6.next, %xtraiter4
  br i1 %prol.iter6.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2186

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.l, %.lr.ph.i.i.prol ]
  %i.m = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.m, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 144
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2202, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2202, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.s = load ptr, ptr %i.r, align 8, !noalias !2202, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !noalias !2202, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 144
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2202, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !noalias !2202, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !2202, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !2202, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = add i64 %.sroa.020.024.i.i, -8          ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.10.0.ph.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.sroa.6.0.copyload.i.i, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2199
  store ptr %.sroa.0.0.ph.i, ptr %i.c, align 8, !noalias !2199
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2199
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !2199
  call void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCs9FmeSmcCnTG_10wasmparser9validator5types10CoreTypeIdNtNtNtNtB1Y_11collections9index_map6detail9SlotIndexNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !noalias !2199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2199
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCs9FmeSmcCnTG_10wasmparser9validator5types10CoreTypeIdNtNtNtNtB1Q_11collections9index_map6detail9SlotIndexE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCs9FmeSmcCnTG_10wasmparser9validator5types10CoreTypeIdNtNtNtNtB1Q_11collections9index_map6detail9SlotIndexE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit: ; preds = %bb.b, %.loopexit.i
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.af = add i64 %i.f, -1
  store i64 %i.af, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  %i.ag = load i64, ptr %1, align 8, !range !9, !alias.scope !2205, !noundef !4
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !2205, !noundef !4
  %.not.i.i1 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1, label %bb.g, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs9FmeSmcCnTG_10wasmparser9validator5types10CoreTypeIdNtNtNtNtB1P_11collections9index_map6detail9SlotIndexE10init_frontCsefoF4u9kbII_5wasmi.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !2205, !noundef !4 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !2205, !nonnull !4, !noundef !4 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i2.prol ], [ %i.am, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 144
  %i.ap = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ao, align 8, !noalias !2206, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !2192

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.am, %.lr.ph.i.i2.preheader ], [ %i.ap, %.lr.ph.i.i2.prol ]
  %i.aq = icmp ult i64 %i.am, 8
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ]
  store ptr %.sroa.013.0.lcssa.i.i, ptr %i.ai, align 8, !alias.scope !2205
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !alias.scope !2205
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs9FmeSmcCnTG_10wasmparser9validator5types10CoreTypeIdNtNtNtNtB1P_11collections9index_map6detail9SlotIndexE10init_frontCsefoF4u9kbII_5wasmi.exit.i

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 144
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !noalias !2206, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 144
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !noalias !2206, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 144
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !noalias !2206, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 144
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !noalias !2206, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 144
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !noalias !2206, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 144
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !noalias !2206, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 144
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !noalias !2206, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 144
  %i.az = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !noalias !2206, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs9FmeSmcCnTG_10wasmparser9validator5types10CoreTypeIdNtNtNtNtB1P_11collections9index_map6detail9SlotIndexE10init_frontCsefoF4u9kbII_5wasmi.exit.i: ; preds = %._crit_edge.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2207
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCs9FmeSmcCnTG_10wasmparser9validator5types10CoreTypeIdNtNtNtNtB1Y_11collections9index_map6detail9SlotIndexNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !noalias !2208

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs9FmeSmcCnTG_10wasmparser9validator5types10CoreTypeIdNtNtNtNtB1P_11collections9index_map6detail9SlotIndexE10init_frontCsefoF4u9kbII_5wasmi.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !noalias !2207, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCs9FmeSmcCnTG_10wasmparser9validator5types10CoreTypeIdNtNtNtNtB1Q_11collections9index_map6detail9SlotIndexE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit, !prof !10

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
          to label %.noexc1.i.i unwind label %bb.i, !noalias !2209

.noexc1.i.i:                                      ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCs9FmeSmcCnTG_10wasmparser9validator5types10CoreTypeIdNtNtNtNtB1P_11collections9index_map6detail9SlotIndexE10init_frontCsefoF4u9kbII_5wasmi.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #28, !noalias !2210
  unreachable

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCs9FmeSmcCnTG_10wasmparser9validator5types10CoreTypeIdNtNtNtNtB1Q_11collections9index_map6detail9SlotIndexE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCs9FmeSmcCnTG_10wasmparser9validator5types10CoreTypeIdNtNtNtNtB1Q_11collections9index_map6detail9SlotIndexE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit, %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCs9FmeSmcCnTG_10wasmparser9validator5types10CoreTypeIdNtNtNtNtB1Q_11collections9index_map6detail9SlotIndexE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1d_6handle9RawHandleNtNtNtB1d_6engine10func_types13DedupFuncTypeEE10dying_nextB1d_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2230)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !2231
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2231 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2231 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2231 ; 6 uses
  store i64 0, ptr %1, align 8, !alias.scope !2231
  %i.h = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.h, label %bb.c, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1Q_6handle9RawHandleNtNtNtB1Q_6engine10func_types13DedupFuncTypeEE16deallocating_endNtNtBc_5alloc6GlobalEB1Q_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.i = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter4 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0
  br i1 %lcmp.mod5.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter6 = phi i64 [ %prol.iter6.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 320
  %i.k = load ptr, ptr %i.j, align 8, !noalias !2232, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter6.next = add i64 %prol.iter6, 1       ; 2 uses
  %prol.iter6.cmp.not = icmp eq i64 %prol.iter6.next, %xtraiter4
  br i1 %prol.iter6.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2216

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.l, %.lr.ph.i.i.prol ]
  %i.m = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.m, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 320
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2232, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2232, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 320
  %i.s = load ptr, ptr %i.r, align 8, !noalias !2232, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 320
  %i.u = load ptr, ptr %i.t, align 8, !noalias !2232, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 320
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2232, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 320
  %i.y = load ptr, ptr %i.x, align 8, !noalias !2232, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 320
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !2232, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 320
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !2232, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = add i64 %.sroa.020.024.i.i, -8          ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.10.0.ph.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.sroa.6.0.copyload.i.i, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2229
  store ptr %.sroa.0.0.ph.i, ptr %i.c, align 8, !noalias !2229
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2229
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !2229
  call void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1Y_6handle9RawHandleNtNtNtB1Y_6engine10func_types13DedupFuncTypeENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalEB1Y_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !noalias !2229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2229
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1Q_6handle9RawHandleNtNtNtB1Q_6engine10func_types13DedupFuncTypeEE16deallocating_endNtNtBc_5alloc6GlobalEB1Q_.exit

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1Q_6handle9RawHandleNtNtNtB1Q_6engine10func_types13DedupFuncTypeEE16deallocating_endNtNtBc_5alloc6GlobalEB1Q_.exit: ; preds = %bb.b, %.loopexit.i
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.af = add i64 %i.f, -1
  store i64 %i.af, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2234)
  %i.ag = load i64, ptr %1, align 8, !range !9, !alias.scope !2235, !noundef !4
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !2235, !noundef !4
  %.not.i.i1 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1, label %bb.g, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1P_6handle9RawHandleNtNtNtB1P_6engine10func_types13DedupFuncTypeEE10init_frontB1P_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !2235, !noundef !4 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !2235, !nonnull !4, !noundef !4 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i2.prol ], [ %i.am, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 320
  %i.ap = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ao, align 8, !noalias !2236, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !2222

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.am, %.lr.ph.i.i2.preheader ], [ %i.ap, %.lr.ph.i.i2.prol ]
  %i.aq = icmp ult i64 %i.am, 8
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ]
  store ptr %.sroa.013.0.lcssa.i.i, ptr %i.ai, align 8, !alias.scope !2235
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !alias.scope !2235
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1P_6handle9RawHandleNtNtNtB1P_6engine10func_types13DedupFuncTypeEE10init_frontB1P_.exit.i

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 320
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !noalias !2236, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 320
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !noalias !2236, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 320
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !noalias !2236, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 320
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !noalias !2236, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 320
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !noalias !2236, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 320
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !noalias !2236, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 320
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !noalias !2236, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 320
  %i.az = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !noalias !2236, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1P_6handle9RawHandleNtNtNtB1P_6engine10func_types13DedupFuncTypeEE10init_frontB1P_.exit.i: ; preds = %._crit_edge.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2237
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1Y_6handle9RawHandleNtNtNtB1Y_6engine10func_types13DedupFuncTypeENtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalEB1Y_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !noalias !2238

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1P_6handle9RawHandleNtNtNtB1P_6engine10func_types13DedupFuncTypeEE10init_frontB1P_.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !noalias !2237, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1Q_6handle9RawHandleNtNtNtB1Q_6engine10func_types13DedupFuncTypeEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB1Q_.exit, !prof !10

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
          to label %.noexc1.i.i unwind label %bb.i, !noalias !2239

.noexc1.i.i:                                      ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1P_6handle9RawHandleNtNtNtB1P_6engine10func_types13DedupFuncTypeEE10init_frontB1P_.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #28, !noalias !2240
  unreachable

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1Q_6handle9RawHandleNtNtNtB1Q_6engine10func_types13DedupFuncTypeEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB1Q_.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1Q_6handle9RawHandleNtNtNtB1Q_6engine10func_types13DedupFuncTypeEE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalEB1Q_.exit, %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeINtNtB1Q_6handle9RawHandleNtNtNtB1Q_6engine10func_types13DedupFuncTypeEE16deallocating_endNtNtBc_5alloc6GlobalEB1Q_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types8RecGroupNtNtNtB1f_9validator5types10RecGroupIdE10dying_nextCsefoF4u9kbII_5wasmi(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2260)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !2261
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2261 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2261 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2261 ; 6 uses
  store i64 0, ptr %1, align 8, !alias.scope !2261
  %i.h = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.h, label %bb.c, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types8RecGroupNtNtNtB1S_9validator5types10RecGroupIdE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.i = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter4 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0
  br i1 %lcmp.mod5.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter6 = phi i64 [ %prol.iter6.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 760
  %i.k = load ptr, ptr %i.j, align 8, !noalias !2262, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter6.next = add i64 %prol.iter6, 1       ; 2 uses
  %prol.iter6.cmp.not = icmp eq i64 %prol.iter6.next, %xtraiter4
  br i1 %prol.iter6.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2246

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.l, %.lr.ph.i.i.prol ]
  %i.m = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.m, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 760
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2262, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 760
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2262, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 760
  %i.s = load ptr, ptr %i.r, align 8, !noalias !2262, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 760
  %i.u = load ptr, ptr %i.t, align 8, !noalias !2262, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 760
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2262, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 760
  %i.y = load ptr, ptr %i.x, align 8, !noalias !2262, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 760
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !2262, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 760
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !2262, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = add i64 %.sroa.020.024.i.i, -8          ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.10.0.ph.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.sroa.6.0.copyload.i.i, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2259
  store ptr %.sroa.0.0.ph.i, ptr %i.c, align 8, !noalias !2259
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2259
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !2259
  call void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types8RecGroupNtNtNtB20_9validator5types10RecGroupIdNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !noalias !2259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2259
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types8RecGroupNtNtNtB1S_9validator5types10RecGroupIdE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types8RecGroupNtNtNtB1S_9validator5types10RecGroupIdE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit: ; preds = %bb.b, %.loopexit.i
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.af = add i64 %i.f, -1
  store i64 %i.af, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2264)
  %i.ag = load i64, ptr %1, align 8, !range !9, !alias.scope !2265, !noundef !4
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !2265, !noundef !4
  %.not.i.i1 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1, label %bb.g, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types8RecGroupNtNtNtB1R_9validator5types10RecGroupIdE10init_frontCsefoF4u9kbII_5wasmi.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !2265, !noundef !4 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !2265, !nonnull !4, !noundef !4 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i2.prol ], [ %i.am, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 760
  %i.ap = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ao, align 8, !noalias !2266, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !2252

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.am, %.lr.ph.i.i2.preheader ], [ %i.ap, %.lr.ph.i.i2.prol ]
  %i.aq = icmp ult i64 %i.am, 8
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ]
  store ptr %.sroa.013.0.lcssa.i.i, ptr %i.ai, align 8, !alias.scope !2265
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !alias.scope !2265
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types8RecGroupNtNtNtB1R_9validator5types10RecGroupIdE10init_frontCsefoF4u9kbII_5wasmi.exit.i

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 760
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !noalias !2266, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 760
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !noalias !2266, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 760
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !noalias !2266, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 760
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !noalias !2266, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 760
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !noalias !2266, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 760
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !noalias !2266, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 760
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !noalias !2266, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 760
  %i.az = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !noalias !2266, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types8RecGroupNtNtNtB1R_9validator5types10RecGroupIdE10init_frontCsefoF4u9kbII_5wasmi.exit.i: ; preds = %._crit_edge.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2267
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types8RecGroupNtNtNtB20_9validator5types10RecGroupIdNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !noalias !2268

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types8RecGroupNtNtNtB1R_9validator5types10RecGroupIdE10init_frontCsefoF4u9kbII_5wasmi.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !noalias !2267, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types8RecGroupNtNtNtB1S_9validator5types10RecGroupIdE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit, !prof !10

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
          to label %.noexc1.i.i unwind label %bb.i, !noalias !2269

.noexc1.i.i:                                      ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types8RecGroupNtNtNtB1R_9validator5types10RecGroupIdE10init_frontCsefoF4u9kbII_5wasmi.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #28, !noalias !2270
  unreachable

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types8RecGroupNtNtNtB1S_9validator5types10RecGroupIdE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2267
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types8RecGroupNtNtNtB1S_9validator5types10RecGroupIdE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit, %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5types8RecGroupNtNtNtB1S_9validator5types10RecGroupIdE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterTNtNtBb_6string6StringB18_ENtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE10dying_nextCsefoF4u9kbII_5wasmi(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2290)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !2291
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2291 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2291 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2291 ; 6 uses
  store i64 0, ptr %1, align 8, !alias.scope !2291
  %i.h = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.h, label %bb.c, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtBc_6string6StringB1L_ENtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.i = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter4 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0
  br i1 %lcmp.mod5.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter6 = phi i64 [ %prol.iter6.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 632
  %i.k = load ptr, ptr %i.j, align 8, !noalias !2292, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter6.next = add i64 %prol.iter6, 1       ; 2 uses
  %prol.iter6.cmp.not = icmp eq i64 %prol.iter6.next, %xtraiter4
  br i1 %prol.iter6.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2276

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.l, %.lr.ph.i.i.prol ]
  %i.m = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.m, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 632
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2292, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 632
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2292, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 632
  %i.s = load ptr, ptr %i.r, align 8, !noalias !2292, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 632
  %i.u = load ptr, ptr %i.t, align 8, !noalias !2292, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 632
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2292, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 632
  %i.y = load ptr, ptr %i.x, align 8, !noalias !2292, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 632
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !2292, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 632
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !2292, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = add i64 %.sroa.020.024.i.i, -8          ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.10.0.ph.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.sroa.6.0.copyload.i.i, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2289
  store ptr %.sroa.0.0.ph.i, ptr %i.c, align 8, !noalias !2289
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2289
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !2289
  call void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingTNtNtBc_6string6StringB1T_ENtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !noalias !2289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2289
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtBc_6string6StringB1L_ENtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtBc_6string6StringB1L_ENtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit: ; preds = %bb.b, %.loopexit.i
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.af = add i64 %i.f, -1
  store i64 %i.af, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2294)
  %i.ag = load i64, ptr %1, align 8, !range !9, !alias.scope !2295, !noundef !4
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !2295, !noundef !4
  %.not.i.i1 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1, label %bb.g, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtBb_6string6StringB1K_ENtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE10init_frontCsefoF4u9kbII_5wasmi.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !2295, !noundef !4 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !2295, !nonnull !4, !noundef !4 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i2.prol ], [ %i.am, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 632
  %i.ap = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ao, align 8, !noalias !2296, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !2282

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.am, %.lr.ph.i.i2.preheader ], [ %i.ap, %.lr.ph.i.i2.prol ]
  %i.aq = icmp ult i64 %i.am, 8
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ]
  store ptr %.sroa.013.0.lcssa.i.i, ptr %i.ai, align 8, !alias.scope !2295
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !alias.scope !2295
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtBb_6string6StringB1K_ENtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE10init_frontCsefoF4u9kbII_5wasmi.exit.i

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 632
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !noalias !2296, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 632
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !noalias !2296, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 632
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !noalias !2296, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 632
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !noalias !2296, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 632
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !noalias !2296, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 632
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !noalias !2296, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 632
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !noalias !2296, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 632
  %i.az = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !noalias !2296, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtBb_6string6StringB1K_ENtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE10init_frontCsefoF4u9kbII_5wasmi.exit.i: ; preds = %._crit_edge.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2297
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingTNtNtBc_6string6StringB1T_ENtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !noalias !2298

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtBb_6string6StringB1K_ENtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE10init_frontCsefoF4u9kbII_5wasmi.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !noalias !2297, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtBc_6string6StringB1L_ENtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit, !prof !10

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
          to label %.noexc1.i.i unwind label %bb.i, !noalias !2299

.noexc1.i.i:                                      ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTNtNtBb_6string6StringB1K_ENtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE10init_frontCsefoF4u9kbII_5wasmi.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #28, !noalias !2300
  unreachable

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtBc_6string6StringB1L_ENtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2297
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtBc_6string6StringB1L_ENtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit, %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTNtNtBc_6string6StringB1L_ENtNtNtNtCs9FmeSmcCnTG_10wasmparser11collections9index_map6detail9SlotIndexE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoItermNtNtB7_7set_val9SetValZSTE10dying_nextCsefoF4u9kbII_5wasmi(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2320)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !2321
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2321 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2321 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !2321 ; 6 uses
  store i64 0, ptr %1, align 8, !alias.scope !2321
  %i.h = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.h, label %bb.c, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.i = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter4 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0
  br i1 %lcmp.mod5.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter6 = phi i64 [ %prol.iter6.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !noalias !2322, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter6.next = add i64 %prol.iter6, 1       ; 2 uses
  %prol.iter6.cmp.not = icmp eq i64 %prol.iter6.next, %xtraiter4
  br i1 %prol.iter6.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !2306

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.l, %.lr.ph.i.i.prol ]
  %i.m = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.m, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !noalias !2322, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2322, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !noalias !2322, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !noalias !2322, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2322, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !noalias !2322, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !2322, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !2322, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = add i64 %.sroa.020.024.i.i, -8          ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.10.0.ph.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.sroa.6.0.copyload.i.i, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2319
  store ptr %.sroa.0.0.ph.i, ptr %i.c, align 8, !noalias !2319
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !2319
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !2319
  call void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingmNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !noalias !2319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2319
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit: ; preds = %bb.b, %.loopexit.i
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.af = add i64 %i.f, -1
  store i64 %i.af, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2324)
  %i.ag = load i64, ptr %1, align 8, !range !9, !alias.scope !2325, !noundef !4
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !2325, !noundef !4
  %.not.i.i1 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1, label %bb.g, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtB7_7set_val9SetValZSTE10init_frontCsefoF4u9kbII_5wasmi.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !2325, !noundef !4 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !2325, !nonnull !4, !noundef !4 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i2.prol ], [ %i.am, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 56
  %i.ap = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ao, align 8, !noalias !2326, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !2312

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.am, %.lr.ph.i.i2.preheader ], [ %i.ap, %.lr.ph.i.i2.prol ]
  %i.aq = icmp ult i64 %i.am, 8
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ]
  store ptr %.sroa.013.0.lcssa.i.i, ptr %i.ai, align 8, !alias.scope !2325
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !alias.scope !2325
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtB7_7set_val9SetValZSTE10init_frontCsefoF4u9kbII_5wasmi.exit.i

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 56
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !noalias !2326, !nonnull !4, !noundef !4
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 56
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !noalias !2326, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 56
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !noalias !2326, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 56
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !noalias !2326, !nonnull !4, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 56
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !noalias !2326, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 56
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !noalias !2326, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 56
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !noalias !2326, !nonnull !4, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 56
  %i.az = add i64 %.sroa.011.016.i.i, -8          ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !noalias !2326, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtB7_7set_val9SetValZSTE10init_frontCsefoF4u9kbII_5wasmi.exit.i: ; preds = %._crit_edge.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2327
  invoke void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingmNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !noalias !2328

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtB7_7set_val9SetValZSTE10init_frontCsefoF4u9kbII_5wasmi.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !noalias !2327, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit, !prof !10

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #28
          to label %.noexc1.i.i unwind label %bb.i, !noalias !2329

.noexc1.i.i:                                      ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtB7_7set_val9SetValZSTE10init_frontCsefoF4u9kbII_5wasmi.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #28, !noalias !2330
  unreachable

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit, %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECsefoF4u9kbII_5wasmi.exit
  ret void
}

; Function Attrs: cold noreturn nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsefoF4u9kbII_5wasmi8instance6entity16too_many_handles(i64 noundef range(i64 0, 576460752303423488) %0) unnamed_addr #8 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @86, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.not = icmp eq ptr %.sroa.06.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.58.0.copyload = load i64, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.47.0.copyload = load i64, ptr %.sroa.47.0..sroa_idx, align 8 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.06.0.copyload, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.47.0.copyload, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx, align 8
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.06.0.copyload, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.47.0.copyload, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink31 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %.sroa.58.0.copyload.sink = phi i64 [ %.sroa.58.0.copyload, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink31, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink31, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.58.0.copyload.sink, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2335
  call fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE10dying_nextB1x_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
  %i.e = load ptr, ptr %i.a, align 8, !noalias !2335, !noundef !4 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8IntoIterINtNtBK_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB20_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB24_.exit.i.i, %.lr.ph.i.i
  %i.f = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.j, %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB24_.exit.i.i ]
  %.sroa.43.0.copyload.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !2335
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.43.0.copyload.i.i ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val1.i.i.i = load i64, ptr %i.h, align 8, !noalias !2335, !noundef !4 ; 2 uses
  %i.i = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.i, label %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB24_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i = load ptr, ptr %i.g, align 8, !noalias !2335, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #30, !noalias !2335
  br label %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB24_.exit.i.i

_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB24_.exit.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2335
  call fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE10dying_nextB1x_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
  %i.j = load ptr, ptr %i.a, align 8, !noalias !2335, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8IntoIterINtNtBK_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB20_.exit, label %bb.d

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8IntoIterINtNtBK_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB20_.exit: ; preds = %_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB24_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.not = icmp eq ptr %.sroa.06.0.copyload, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.58.0.copyload = load i64, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.47.0.copyload = load i64, ptr %.sroa.47.0..sroa_idx, align 8 ; 2 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.06.0.copyload, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.47.0.copyload, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx, align 8
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.06.0.copyload, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.47.0.copyload, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink31 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]   ; 2 uses
  %.sroa.58.0.copyload.sink = phi i64 [ %.sroa.58.0.copyload, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink31, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink31, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.58.0.copyload.sink, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2340
  call fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE10dying_nextB1x_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
  %i.e = load ptr, ptr %i.a, align 8, !noalias !2340, !noundef !4 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8IntoIterINtNtBK_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternEEB20_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree17dedup_sorted_iterINtB4_15DedupSortedIterINtNtBa_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxINtNtNtBa_3vec9into_iter8IntoIterTB1t_B1N_EEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1T_:bb.a
  store i64 %.sroa.5.20.insert.insert.le56, ptr %.sroa.542.0..sroa_idx, align 8
  br label %bb.e

_RNvXsg_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsefoF4u9kbII_5wasmi.exit: ; preds = %bb.g
  %.val17 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.030.sroa.0.0) ]
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.030.sroa.0.0, ptr nonnull readonly %.val17, i64 %.sroa.030.sroa.6.0), !alias.scope !2459
  %.not52 = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not52, label %bb.h, label %_RNvXsg_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsefoF4u9kbII_5wasmi.exit.thread

bb.h:                                             ; preds = %_RNvXsg_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsefoF4u9kbII_5wasmi.exit
  %i.n = icmp eq i64 %.sroa.030.sroa.6.0, 0
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19.backedge, label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19.backedge: ; preds = %bb.h, %bb.i
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.030.sroa.0.0, i64 noundef range(i64 1, 0) %.sroa.030.sroa.6.0, i64 noundef 1) #30
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB1j_.exit19.backedge

_RNvXsg_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsefoF4u9kbII_5wasmi.exit.thread: ; preds = %bb.g, %_RNvXsg_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxeENtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCsefoF4u9kbII_5wasmi.exit
  %.sroa.5.16.insert.ext.le63 = zext i32 %.sroa.6.0 to i64
  %.sroa.5.20.insert.ext.le = zext i32 %.sroa.933.0 to i64
  %.sroa.5.20.insert.shift.le59 = shl nuw i64 %.sroa.5.20.insert.ext.le, 32
  %.sroa.5.20.insert.insert.le = or disjoint i64 %.sroa.5.20.insert.shift.le59, %.sroa.5.16.insert.ext.le63
  store ptr %.sroa.030.sroa.0.0, ptr %0, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.030.sroa.6.0, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.20.insert.insert.le, ptr %.sroa.545.0..sroa_idx, align 8
  br label %bb.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsefoF4u9kbII_5wasmi4func4FuncEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #11 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !2462
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !2462
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !2462
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsefoF4u9kbII_5wasmi5table5TableEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #11 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !2465
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !2465
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !2465
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsefoF4u9kbII_5wasmi6global6GlobalEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #11 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !2468
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !2468
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !2468
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsefoF4u9kbII_5wasmi6memory6MemoryEENtNtNtB8_6traits8iterator8Iterator9size_hintB1v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #11 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !2471
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !2471
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !2471
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCsefoF4u9kbII_5wasmi5table7element14ElementSegmentEENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #11 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !2474
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !2474
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !2474
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtNtCsefoF4u9kbII_5wasmi6memory4data11DataSegmentEENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #11 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !2477
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !2477
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !2477
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1t_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2486)
  %i.h = load i64, ptr %0, align 8, !range !9, !alias.scope !2486, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2486, !noundef !4
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.d, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE10init_frontB29_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2486, !noundef !4 ; 5 uses
  %.sroa.013.015.i = load ptr, ptr %i.l, align 8, !alias.scope !2486, !nonnull !4, !noundef !4 ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.013.017.i.prol = phi ptr [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ], [ %.sroa.013.015.i, %.lr.ph.i.preheader ]
  %.sroa.011.016.i.prol = phi i64 [ %i.q, %.lr.ph.i.prol ], [ %i.n, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.prol, i64 280
  %i.q = add i64 %.sroa.011.016.i.prol, -1        ; 2 uses
  %.sroa.013.0.i.prol = load ptr, ptr %i.p, align 8, !noalias !2486, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !2480

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.013.0.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.013.017.i.unr = phi ptr [ %.sroa.013.015.i, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.011.016.i.unr = phi i64 [ %i.n, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %i.r = icmp ult i64 %i.n, 8
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  %.sroa.013.0.lcssa.i = phi ptr [ %.sroa.013.015.i, %bb.d ], [ %.sroa.013.0.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.013.0.i.7, %.lr.ph.i ]
  store ptr %.sroa.013.0.lcssa.i, ptr %i.j, align 8, !alias.scope !2486
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !alias.scope !2486
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE10init_frontB29_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.013.017.i = phi ptr [ %.sroa.013.0.i.7, %.lr.ph.i ], [ %.sroa.013.017.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.011.016.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %.sroa.011.016.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i, i64 280
  %.sroa.013.0.i = load ptr, ptr %i.s, align 8, !noalias !2486, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 280
  %.sroa.013.0.i.1 = load ptr, ptr %i.t, align 8, !noalias !2486, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.1, i64 280
  %.sroa.013.0.i.2 = load ptr, ptr %i.u, align 8, !noalias !2486, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.2, i64 280
  %.sroa.013.0.i.3 = load ptr, ptr %i.v, align 8, !noalias !2486, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.3, i64 280
  %.sroa.013.0.i.4 = load ptr, ptr %i.w, align 8, !noalias !2486, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.4, i64 280
  %.sroa.013.0.i.5 = load ptr, ptr %i.x, align 8, !noalias !2486, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.5, i64 280
  %.sroa.013.0.i.6 = load ptr, ptr %i.y, align 8, !noalias !2486, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.6, i64 280
  %i.aa = add i64 %.sroa.011.016.i, -8            ; 2 uses
  %.sroa.013.0.i.7 = load ptr, ptr %i.z, align 8, !noalias !2486, !nonnull !4, !noundef !4 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %._crit_edge.i, label %.lr.ph.i

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE10init_frontB29_.exit: ; preds = %bb.c, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2488
  invoke void @_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1y_4LeafENtB1y_4EdgeE7next_kvB2h_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i unwind label %bb.h

bb.e:                                             ; preds = %bb.a, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2b_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2h_.exit
  %.sroa.3.0 = phi ptr [ %i.aj, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2b_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2h_.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.ai, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2b_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2h_.exit ], [ null, %bb.a ]
  %i.ac = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.ad = insertvalue { ptr, ptr } %i.ac, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.ad

.noexc.i:                                         ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE10init_frontB29_.exit
  %i.ae = load ptr, ptr %i.b, align 8, !noalias !2488, !noundef !4 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2488
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28
          to label %.noexc1.i unwind label %bb.h, !noalias !2487

.noexc1.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !2488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2488
  store ptr %i.ae, ptr %i.a, align 8, !noalias !2488
  invoke void @_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB2h_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc2.i unwind label %bb.h, !noalias !2487

.noexc2.i:                                        ; preds = %bb.g
  %i.ag = invoke { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB24_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2b_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2h_.exit unwind label %bb.h, !noalias !2487 ; 2 uses

bb.h:                                             ; preds = %.noexc2.i, %bb.g, %bb.f, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxE10init_frontB29_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2b_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2h_.exit: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2487
  %i.ai = extractvalue { ptr, ptr } %i.ag, 0
  %i.aj = extractvalue { ptr, ptr } %i.ag, 1
  br label %bb.e

.critedge:                                        ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1t_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.e, -1
  store i64 %i.g, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  %i.h = load i64, ptr %0, align 8, !range !9, !alias.scope !2497, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2497, !noundef !4
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.d, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE10init_frontB29_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !2497, !noundef !4 ; 5 uses
  %.sroa.013.015.i = load ptr, ptr %i.l, align 8, !alias.scope !2497, !nonnull !4, !noundef !4 ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.d
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.013.017.i.prol = phi ptr [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ], [ %.sroa.013.015.i, %.lr.ph.i.preheader ]
  %.sroa.011.016.i.prol = phi i64 [ %i.q, %.lr.ph.i.prol ], [ %i.n, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.prol, i64 320
  %i.q = add i64 %.sroa.011.016.i.prol, -1        ; 2 uses
  %.sroa.013.0.i.prol = load ptr, ptr %i.p, align 8, !noalias !2497, !nonnull !4, !noundef !4 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !2491

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.013.0.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.013.017.i.unr = phi ptr [ %.sroa.013.015.i, %.lr.ph.i.preheader ], [ %.sroa.013.0.i.prol, %.lr.ph.i.prol ]
  %.sroa.011.016.i.unr = phi i64 [ %i.n, %.lr.ph.i.preheader ], [ %i.q, %.lr.ph.i.prol ]
  %i.r = icmp ult i64 %i.n, 8
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  %.sroa.013.0.lcssa.i = phi ptr [ %.sroa.013.015.i, %bb.d ], [ %.sroa.013.0.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.013.0.i.7, %.lr.ph.i ]
  store ptr %.sroa.013.0.lcssa.i, ptr %i.j, align 8, !alias.scope !2497
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !alias.scope !2497
  br label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE10init_frontB29_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.013.017.i = phi ptr [ %.sroa.013.0.i.7, %.lr.ph.i ], [ %.sroa.013.017.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.011.016.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %.sroa.011.016.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i, i64 320
  %.sroa.013.0.i = load ptr, ptr %i.s, align 8, !noalias !2497, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 320
  %.sroa.013.0.i.1 = load ptr, ptr %i.t, align 8, !noalias !2497, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.1, i64 320
  %.sroa.013.0.i.2 = load ptr, ptr %i.u, align 8, !noalias !2497, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.2, i64 320
  %.sroa.013.0.i.3 = load ptr, ptr %i.v, align 8, !noalias !2497, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.3, i64 320
  %.sroa.013.0.i.4 = load ptr, ptr %i.w, align 8, !noalias !2497, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.4, i64 320
  %.sroa.013.0.i.5 = load ptr, ptr %i.x, align 8, !noalias !2497, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.5, i64 320
  %.sroa.013.0.i.6 = load ptr, ptr %i.y, align 8, !noalias !2497, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.6, i64 320
  %i.aa = add i64 %.sroa.011.016.i, -8            ; 2 uses
  %.sroa.013.0.i.7 = load ptr, ptr %i.z, align 8, !noalias !2497, !nonnull !4, !noundef !4 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %._crit_edge.i, label %.lr.ph.i

_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE10init_frontB29_.exit: ; preds = %bb.c, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2499
  invoke void @_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1y_4LeafENtB1y_4EdgeE7next_kvB2h_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j)
          to label %.noexc.i unwind label %bb.h

bb.e:                                             ; preds = %bb.a, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2b_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2h_.exit
  %.sroa.3.0 = phi ptr [ %i.aj, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2b_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2h_.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.ai, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2b_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2h_.exit ], [ null, %bb.a ]
  %i.ac = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.ad = insertvalue { ptr, ptr } %i.ac, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.ad

.noexc.i:                                         ; preds = %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE10init_frontB29_.exit
  %i.ae = load ptr, ptr %i.b, align 8, !noalias !2499, !noundef !4 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.f, label %bb.g, !prof !10

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2499
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28
          to label %.noexc1.i unwind label %bb.h, !noalias !2498

.noexc1.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !noalias !2499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2499
  store ptr %i.ae, ptr %i.a, align 8, !noalias !2499
  invoke void @_RNvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB2h_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %.noexc2.i unwind label %bb.h, !noalias !2498

.noexc2.i:                                        ; preds = %bb.g
  %i.ag = invoke { ptr, ptr } @_RNvMsP_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvB24_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2b_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2h_.exit unwind label %bb.h, !noalias !2498 ; 2 uses

bb.h:                                             ; preds = %.noexc2.i, %bb.g, %bb.f, %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutINtNtBb_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternE10init_frontB29_.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5ImmutINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternNtB1y_4LeafENtB1y_4EdgeETRB1R_RB2b_ENCNvMsk_NtB4_8navigateBX_14next_unchecked0EB2h_.exit: ; preds = %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2498
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2498
  %i.ai = extractvalue { ptr, ptr } %i.ag, 0
  %i.aj = extractvalue { ptr, ptr } %i.ag, 1
  br label %bb.e

.critedge:                                        ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #28
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXss_NtNtCsefoF4u9kbII_5wasmi8instance6layoutNtB5_8FuncAddrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @94)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvYNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core18ValidatorResourcesNtNtB8_9resources19WasmModuleResources14check_ref_typeCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef captures(address, read_provenance) dereferenceable(3) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call i64 @_RNvMso_NtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5typesNtB5_7RefType9heap_type(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %1)
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef align 8 ptr @_RNvXs3_NtNtCs9FmeSmcCnTG_10wasmparser9validator4coreNtB5_18ValidatorResourcesNtNtB9_9resources19WasmModuleResources15check_heap_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.a, i64 noundef %2) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i8 %.sroa.5.0.copyload, 0
  %.sroa.05.0.copyload = load i64, ptr %i.a, align 8
  %i.e = call i32 @_RNvMso_NtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5typesNtB5_7RefType3new(i1 noundef zeroext %i.d, i64 %.sroa.05.0.copyload) ; 2 uses
  %i.f = trunc i32 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d, !prof !5

bb.c:                                             ; preds = %bb.b
  %.sroa.415.0.extract.shift = lshr i32 %i.e, 8
  %.sroa.415.0.extract.trunc = trunc nuw i32 %.sroa.415.0.extract.shift to i24
  store i24 %.sroa.415.0.extract.trunc, ptr %1, align 1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #28
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvYNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core18ValidatorResourcesNtNtB8_9resources19WasmModuleResources16check_value_typeCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef captures(address, read_provenance) dereferenceable(4) %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.06.0.copyload = load i32, ptr %1, align 1 ; 3 uses
  %i.b = tail call { ptr, i64 } @_RNvMs1_NtCs9FmeSmcCnTG_10wasmparser9validatorNtNtB7_8features12WasmFeatures16check_value_type(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %2, i32 %.sroa.06.0.copyload) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RINvMs0_NtCs9FmeSmcCnTG_10wasmparser13binary_readerNtB6_17BinaryReaderError3newReECsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d, i64 noundef %3)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = and i32 %.sroa.06.0.copyload, 255
  %i.g = icmp eq i32 %i.f, 5
  br i1 %i.g, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2503)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2504
  %i.i = tail call i64 @_RNvMso_NtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5typesNtB5_7RefType9heap_type(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.h), !noalias !2505
  store i64 %i.i, ptr %i.a, align 8, !noalias !2504
  %i.j = call noundef align 8 ptr @_RNvXs3_NtNtCs9FmeSmcCnTG_10wasmparser9validator4coreNtB5_18ValidatorResourcesNtNtB9_9resources19WasmModuleResources15check_heap_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.a, i64 noundef %3) ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %_RNvYNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core18ValidatorResourcesNtNtB8_9resources19WasmModuleResources14check_ref_typeCsefoF4u9kbII_5wasmi.exit

bb.e:                                             ; preds = %bb.d
  %i.k = icmp slt i32 %.sroa.06.0.copyload, 0
  %.sroa.05.0.copyload.i = load i64, ptr %i.a, align 8, !noalias !2504
  %i.l = call i32 @_RNvMso_NtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core5typesNtB5_7RefType3new(i1 noundef zeroext %i.k, i64 %.sroa.05.0.copyload.i) ; 2 uses
  %i.m = trunc i32 %i.l to i1
  br i1 %i.m, label %bb.f, label %bb.g, !prof !5

bb.f:                                             ; preds = %bb.e
  %.sroa.415.0.extract.shift.i = lshr i32 %i.l, 8
  %.sroa.415.0.extract.trunc.i = trunc nuw i32 %.sroa.415.0.extract.shift.i to i24
  store i24 %.sroa.415.0.extract.trunc.i, ptr %i.h, align 1, !alias.scope !2503
  br label %_RNvYNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core18ValidatorResourcesNtNtB8_9resources19WasmModuleResources14check_ref_typeCsefoF4u9kbII_5wasmi.exit

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #28
  unreachable

_RNvYNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core18ValidatorResourcesNtNtB8_9resources19WasmModuleResources14check_ref_typeCsefoF4u9kbII_5wasmi.exit: ; preds = %bb.d, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2504
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_RNvYNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core18ValidatorResourcesNtNtB8_9resources19WasmModuleResources14check_ref_typeCsefoF4u9kbII_5wasmi.exit, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ %i.j, %_RNvYNtNtNtCs9FmeSmcCnTG_10wasmparser9validator4core18ValidatorResourcesNtNtB8_9resources19WasmModuleResources14check_ref_typeCsefoF4u9kbII_5wasmi.exit ], [ null, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

end_hunk_1
