Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.15?download=true
inline.NumInlined: 4530
inline.NumDeleted: 1604
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZN52_$LT$F$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17hc1143a307ddeb42cE":bb.a
  %.sroa.7.i.sroa.7.0..sroa.7.0..sroa_idx.i91.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.7.i.sroa.7.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.7.i.sroa.7.0..sroa.7.0..sroa_idx.i91.sroa_idx.i.i.i.i.i, align 8, !noalias !14480
  %.sroa.7.i.sroa.8.0..sroa.7.0..sroa_idx.i91.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.0.0.copyload92.i.i.i = load i64, ptr %.sroa.7.i.sroa.8.0..sroa.7.0..sroa_idx.i91.sroa_idx.i.i.i.i.i, align 8, !noalias !14478
  %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.6.0..sroa.7.i.sroa.8.0..sroa.7.0..sroa_idx.i91.sroa_idx.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.6.0.copyload94.i.i.i = load i64, ptr %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.6.0..sroa.7.i.sroa.8.0..sroa.7.0..sroa_idx.i91.sroa_idx.i.i.sroa_idx.i.i.i, align 8, !noalias !14478
  %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.7.0..sroa.7.i.sroa.8.0..sroa.7.0..sroa_idx.i91.sroa_idx.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.7.0.copyload96.i.i.i = load i64, ptr %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.7.0..sroa.7.i.sroa.8.0..sroa.7.0..sroa_idx.i91.sroa_idx.i.i.sroa_idx.i.i.i, align 8, !noalias !14478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14480
  br label %bb.l

bb.j:                                             ; preds = %.noexc17.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !14480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14478
  invoke fastcc void @_ZN4anki6search6parser15quoted_term_str17hc499508c504b687cE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ai, i64 noundef %i.ak)
          to label %.noexc18.i.i unwind label %bb.o

.noexc18.i.i:                                     ; preds = %bb.j
  %i.al = load i64, ptr %i.h, align 8, !range !8, !noalias !14481, !noundef !6 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.037.0.copyload.i.i.i.i.i.i = load i64, ptr %i.am, align 8, !noalias !14481 ; 3 uses
  %.sroa.538.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.538.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.538.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !14481 ; 2 uses
  %.sroa.538.sroa.5.0..sroa.538.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.538.sroa.5.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.538.sroa.5.0..sroa.538.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !14481 ; 3 uses
  %.sroa.538.sroa.6.0..sroa.538.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.538.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.538.sroa.6.0..sroa.538.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !14481 ; 2 uses
  switch i64 %i.al, label %.sink.split.i.i.i.i.i [
    i64 3, label %bb.m
    i64 0, label %bb.k
  ]

.sink.split.i.i.i.i.i:                            ; preds = %.noexc18.i.i
  %.sroa.526.sroa.5.0..sroa.526.0..sroa_idx.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.1032.sroa.7.i.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.526.sroa.5.0..sroa.526.0..sroa_idx.sroa_idx.i.i.i.i.i.i, align 8, !noalias !14481
  %.sroa.1032.sroa.7.i.sroa.5.0..sroa.526.sroa.5.0..sroa.526.0..sroa_idx.sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.1032.sroa.7.i.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.1032.sroa.7.i.sroa.5.0..sroa.526.sroa.5.0..sroa.526.0..sroa_idx.sroa_idx.i.sroa_idx.i.i.i.i.i, align 8, !noalias !14481
  %.sroa.1032.sroa.7.i.sroa.6.0..sroa.526.sroa.5.0..sroa.526.0..sroa_idx.sroa_idx.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.0.0.copyload93.i.i.i = load i64, ptr %.sroa.1032.sroa.7.i.sroa.6.0..sroa.526.sroa.5.0..sroa.526.0..sroa_idx.sroa_idx.i.sroa_idx.i.i.i.i.i, align 8, !noalias !14478
  %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.6.0..sroa.1032.sroa.7.i.sroa.6.0..sroa.526.sroa.5.0..sroa.526.0..sroa_idx.sroa_idx.i.sroa_idx.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.6.0.copyload95.i.i.i = load i64, ptr %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.6.0..sroa.1032.sroa.7.i.sroa.6.0..sroa.526.sroa.5.0..sroa.526.0..sroa_idx.sroa_idx.i.sroa_idx.i.i.sroa_idx.i.i.i, align 8, !noalias !14478
  %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.7.0..sroa.1032.sroa.7.i.sroa.6.0..sroa.526.sroa.5.0..sroa.526.0..sroa_idx.sroa_idx.i.sroa_idx.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.7.0.copyload97.i.i.i = load i64, ptr %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.7.0..sroa.1032.sroa.7.i.sroa.6.0..sroa.526.sroa.5.0..sroa.526.0..sroa_idx.sroa_idx.i.sroa_idx.i.i.sroa_idx.i.i.i, align 8, !noalias !14478
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i.i.i.i.i, %.noexc18.i.i
  %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.0.0.i.i.i = phi i64 [ %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.0.0.copyload93.i.i.i, %.sink.split.i.i.i.i.i ], [ undef, %.noexc18.i.i ]
  %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.6.0.i.i.i = phi i64 [ %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.6.0.copyload95.i.i.i, %.sink.split.i.i.i.i.i ], [ undef, %.noexc18.i.i ]
  %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.7.0.i.i.i = phi i64 [ %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.7.0.copyload97.i.i.i, %.sink.split.i.i.i.i.i ], [ undef, %.noexc18.i.i ]
  %.sroa.1032.sroa.7.i.sroa.0.0.i.i.i.i.i = phi ptr [ %.sroa.1032.sroa.7.i.sroa.0.0.copyload.i.i.i.i.i, %.sink.split.i.i.i.i.i ], [ undef, %.noexc18.i.i ]
  %.sroa.1032.sroa.7.i.sroa.5.0.i.i.i.i.i = phi i64 [ %.sroa.1032.sroa.7.i.sroa.5.0.copyload.i.i.i.i.i, %.sink.split.i.i.i.i.i ], [ undef, %.noexc18.i.i ]
  %.sroa.1032.sroa.6.0.i.i.i.i.i.i = phi i64 [ %.sroa.538.sroa.6.0.copyload.i.i.i.i.i.i, %.sink.split.i.i.i.i.i ], [ undef, %.noexc18.i.i ]
  %.sroa.1032.sroa.5.0.i.i.i.i.i.i = phi ptr [ %.sroa.538.sroa.5.0.copyload.i.i.i.i.i.i, %.sink.split.i.i.i.i.i ], [ undef, %.noexc18.i.i ]
  %.sroa.1032.sroa.0.0.i.i.i.i.i.i = phi i64 [ %.sroa.538.sroa.0.0.copyload.i.i.i.i.i.i, %.sink.split.i.i.i.i.i ], [ undef, %.noexc18.i.i ]
  %i.an = inttoptr i64 %.sroa.037.0.copyload.i.i.i.i.i.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14478
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.g
  %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.0.1.i.i.i = phi i64 [ %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.0.0.i.i.i, %bb.k ], [ %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.0.0.copyload92.i.i.i, %bb.i ], [ %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.0.0.copyload.i.i.i, %bb.g ]
  %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.6.1.i.i.i = phi i64 [ %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.6.0.i.i.i, %bb.k ], [ %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.6.0.copyload94.i.i.i, %bb.i ], [ %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.6.0.copyload.i.i.i, %bb.g ]
  %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.7.1.i.i.i = phi i64 [ %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.7.0.i.i.i, %bb.k ], [ %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.7.0.copyload96.i.i.i, %bb.i ], [ %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.7.0.copyload.i.i.i, %bb.g ]
  %.sroa.30.0.ph.i.i.i.i.i = phi i64 [ %.sroa.1032.sroa.7.i.sroa.5.0.i.i.i.i.i, %bb.k ], [ %.sroa.7.i.sroa.7.0.copyload.i.i.i.i.i, %bb.i ], [ %.sroa.953.i.sroa.5.0.copyload.i.i.i.i.i, %bb.g ]
  %.sroa.26.0.ph.i.i.i.i.i = phi ptr [ %.sroa.1032.sroa.7.i.sroa.0.0.i.i.i.i.i, %bb.k ], [ %.sroa.7.i.sroa.6.0.copyload.i.i.i.i.i, %bb.i ], [ %.sroa.953.i.sroa.0.0.copyload.i.i.i.i.i, %bb.g ]
  %.sroa.22.0.ph.i.i.i.i.i = phi i64 [ %.sroa.1032.sroa.6.0.i.i.i.i.i.i, %bb.k ], [ %.sroa.7.i.sroa.5.0.copyload.i.i.i.i.i, %bb.i ], [ %.sroa.7.0.copyload.i.i.i.i.i.i, %bb.g ]
  %.sroa.17.0.ph.i.i.i.i.i = phi ptr [ %.sroa.1032.sroa.5.0.i.i.i.i.i.i, %bb.k ], [ %.sroa.7.i.sroa.0.0.copyload.i.i.i.i.i, %bb.i ], [ %.sroa.641.0.copyload.i.i.i.i.i.i, %bb.g ]
  %.sroa.12.0.ph.i.i.i.i.i = phi i64 [ %.sroa.1032.sroa.0.0.i.i.i.i.i.i, %bb.k ], [ %i.ak, %bb.i ], [ %.sroa.540.0.copyload.i.i.i.i.i.i, %bb.g ]
  %.sroa.7.0.ph.i.i.i.i.i = phi ptr [ %i.an, %bb.k ], [ %i.ai, %bb.i ], [ %.sroa.039.0.copyload.i.i.i.i.i.i, %bb.g ]
  %.sroa.0.0.ph.i.i.i.i.i = phi i64 [ %i.al, %bb.k ], [ %i.ag, %bb.i ], [ %i.ae, %bb.g ]
  %i.ao = ptrtoint ptr %.sroa.7.0.ph.i.i.i.i.i to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !14478
  %i.ap = ptrtoint ptr %.sroa.26.0.ph.i.i.i.i.i to i64
  br label %bb.p

bb.m:                                             ; preds = %.noexc18.i.i
  %i.aq = icmp ne i64 %.sroa.037.0.copyload.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !14478
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.538.sroa.5.0.copyload.i.i.i.i.i.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !14478
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14478
  invoke fastcc void @_ZN4anki6search6parser34search_node_for_text_with_argument17hccced9a87c65afddE(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.641.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.7.0.copyload.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.538.sroa.5.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.538.sroa.6.0.copyload.i.i.i.i.i.i)
          to label %.noexc19.i.i unwind label %bb.o

.noexc19.i.i:                                     ; preds = %bb.m
  %i.ar = load i64, ptr %i.k, align 8, !range !8, !noalias !14478, !noundef !6 ; 2 uses
  %.not87.i.i.i.i.i = icmp eq i64 %i.ar, 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.623.i.i.sroa.0.0.copyload56.i.i.i = load i64, ptr %i.as, align 8, !noalias !14478 ; 2 uses
  %.sroa.623.i.i.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.623.i.i.sroa.7.0.copyload57.i.i.i = load i64, ptr %.sroa.623.i.i.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !14478 ; 2 uses
  %.sroa.623.i.i.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.623.i.i.sroa.9.0.copyload58.i.i.i = load i64, ptr %.sroa.623.i.i.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !14478 ; 2 uses
  %.sroa.623.i.i.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.623.i.i.sroa.11.0.copyload59.i.i.i = load i64, ptr %.sroa.623.i.i.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !14478 ; 2 uses
  %.sroa.623.i.i.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.623.i.i.sroa.13.0.copyload60.i.i.i = load i64, ptr %.sroa.623.i.i.sroa.13.0..sroa_idx.i.i.i, align 8, !noalias !14478 ; 2 uses
  %.sroa.623.i.i.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %.sroa.623.i.i.sroa.15.0.copyload61.i.i.i = load i64, ptr %.sroa.623.i.i.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !14478 ; 2 uses
  %.sroa.623.i.i.sroa.17.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %.sroa.623.i.i.sroa.17.sroa.0.0.copyload71.i.i.i = load i64, ptr %.sroa.623.i.i.sroa.17.0..sroa_idx.i.i.i, align 8, !noalias !14478 ; 2 uses
  %.sroa.623.i.i.sroa.17.sroa.7.0..sroa.623.i.i.sroa.17.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %.sroa.623.i.i.sroa.17.sroa.7.0.copyload72.i.i.i = load i64, ptr %.sroa.623.i.i.sroa.17.sroa.7.0..sroa.623.i.i.sroa.17.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !14478 ; 2 uses
  %.sroa.623.i.i.sroa.18.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %.sroa.623.i.i.sroa.18.0.copyload62.i.i.i = load i64, ptr %.sroa.623.i.i.sroa.18.0..sroa_idx.i.i.i, align 8, !noalias !14478 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14478
  br i1 %.not87.i.i.i.i.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %.noexc19.i.i
  %i.at = inttoptr i64 %.sroa.623.i.i.sroa.9.0.copyload58.i.i.i to ptr
  br label %bb.p

.thread:                                          ; preds = %.noexc19.i.i
  %i.au = inttoptr i64 %.sroa.623.i.i.sroa.7.0.copyload57.i.i.i to ptr
  br label %.critedge.i.i.i

bb.o:                                             ; preds = %bb.bd, %bb.m, %bb.j, %bb.h, %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.p:                                             ; preds = %bb.l, %bb.n
  %.sroa.25.sroa.0.0.ph.i.i.i = phi i64 [ %.sroa.623.i.i.sroa.17.sroa.0.0.copyload71.i.i.i, %bb.n ], [ %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.0.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.25.sroa.8.0.ph.i.i.i = phi i64 [ %.sroa.623.i.i.sroa.17.sroa.7.0.copyload72.i.i.i, %bb.n ], [ %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.6.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.25.sroa.9.0.ph.i.i.i = phi i64 [ %.sroa.623.i.i.sroa.18.0.copyload62.i.i.i, %bb.n ], [ %.sroa.1032.sroa.7.i.sroa.6.i.i.sroa.7.1.i.i.i, %bb.l ] ; 2 uses
  %.sroa.24.0.ph.i.i.i = phi i64 [ %.sroa.623.i.i.sroa.15.0.copyload61.i.i.i, %bb.n ], [ %.sroa.30.0.ph.i.i.i.i.i, %bb.l ] ; 2 uses
  %.sroa.23.0.ph.i.i.i = phi i64 [ %.sroa.623.i.i.sroa.13.0.copyload60.i.i.i, %bb.n ], [ %i.ap, %bb.l ] ; 2 uses
  %.sroa.22.0.ph.i1.i.i = phi i64 [ %.sroa.623.i.i.sroa.11.0.copyload59.i.i.i, %bb.n ], [ %.sroa.22.0.ph.i.i.i.i.i, %bb.l ] ; 2 uses
  %.sroa.21.0.ph.i2.i.i = phi ptr [ %i.at, %bb.n ], [ %.sroa.17.0.ph.i.i.i.i.i, %bb.l ] ; 2 uses
  %.sroa.17.0.ph.i3.i.i = phi i64 [ %.sroa.623.i.i.sroa.7.0.copyload57.i.i.i, %bb.n ], [ %.sroa.12.0.ph.i.i.i.i.i, %bb.l ] ; 2 uses
  %.sroa.12.0.ph.i4.i.i = phi i64 [ %.sroa.623.i.i.sroa.0.0.copyload56.i.i.i, %bb.n ], [ %i.ao, %bb.l ] ; 2 uses
  %.sroa.7.0.ph.i5.i.i = phi i64 [ %i.ar, %bb.n ], [ %.sroa.0.0.ph.i.i.i.i.i, %bb.l ] ; 2 uses
  %i.aw = icmp eq i64 %.sroa.7.0.ph.i5.i.i, 1
  br i1 %i.aw, label %bb.q, label %.critedge.i.i.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !14476
  store i64 %.sroa.12.0.ph.i4.i.i, ptr %i.s, align 8, !noalias !14477
  %.sroa.32.16..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sroa.17.0.ph.i3.i.i, ptr %.sroa.32.16..sroa_idx17, align 8, !noalias !14477
  %.sroa.40.16..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %.sroa.21.0.ph.i2.i.i, ptr %.sroa.40.16..sroa_idx23, align 8, !noalias !14477
  %.sroa.46.16..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %.sroa.22.0.ph.i1.i.i, ptr %.sroa.46.16..sroa_idx29, align 8, !noalias !14477
  %.sroa.52.16..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 %.sroa.23.0.ph.i.i.i, ptr %.sroa.52.16..sroa_idx35, align 8, !noalias !14477
  %.sroa.58.16..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 %.sroa.24.0.ph.i.i.i, ptr %.sroa.58.16..sroa_idx41, align 8, !noalias !14477
  %.sroa.64.16..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store i64 %.sroa.25.sroa.0.0.ph.i.i.i, ptr %.sroa.64.16..sroa_idx47, align 8, !noalias !14477
  %.sroa.70.16..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i64 %.sroa.25.sroa.8.0.ph.i.i.i, ptr %.sroa.70.16..sroa_idx53, align 8, !noalias !14477
  %.sroa.76.16..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store i64 %.sroa.25.sroa.9.0.ph.i.i.i, ptr %.sroa.76.16..sroa_idx59, align 8, !noalias !14477
  call void @llvm.experimental.noalias.scope.decl(metadata !14482)
  call void @llvm.experimental.noalias.scope.decl(metadata !14483)
  call void @llvm.experimental.noalias.scope.decl(metadata !14484)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14485
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14486
  store ptr @430, ptr %i.g, align 8, !noalias !14486
  %.sroa.453.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 8, ptr %.sroa.453.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14486
  %.sroa.554.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 4, ptr %.sroa.554.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14486
  %.sroa.756.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr @422, ptr %.sroa.756.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14486
  %.sroa.857.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 4, ptr %.sroa.857.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14486
  %.sroa.958.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store i32 92, ptr %.sroa.958.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14486
  call void @llvm.experimental.noalias.scope.decl(metadata !14487)
  call void @llvm.experimental.noalias.scope.decl(metadata !14488)
  %.not207.i.i.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not207.i.i.i.i.i.i, label %.thread276, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.r

bb.r:                                             ; preds = %bb.aq, %.lr.ph.i.i.i.i.i.i
  %.sroa.0130.0209.i.i.i.i.i.i = phi ptr [ %1, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0130.1.i.i.i.i.i.i, %bb.aq ] ; 9 uses
  %.sroa.10.0208.i.i.i.i.i.i = phi i64 [ %2, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.10.1.i.i.i.i.i.i, %bb.aq ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14489
  invoke void @"_ZN52_$LT$F$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17hfb1f8e815c7648d5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0130.0209.i.i.i.i.i.i, i64 noundef %.sroa.10.0208.i.i.i.i.i.i)
          to label %.noexc40.i.i unwind label %.loopexit.i.i

.noexc40.i.i:                                     ; preds = %bb.r
  %i.az = load i8, ptr %i.ax, align 8, !range !57, !noalias !14489, !noundef !6
  switch i8 %i.az, label %.thread.i.i.i.i.i [
    i8 59, label %bb.s
    i8 58, label %bb.y
  ]

bb.s:                                             ; preds = %.noexc40.i.i
  %i.ba = load i64, ptr %i.ay, align 8, !noalias !14489, !noundef !6 ; 3 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %"_ZN91_$LT$nom..bytes..Escaped$LT$F$C$G$C$Error$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process28_$u7b$$u7b$closure$u7d$$u7d$17hc69043087309f000E.exit.i.i.i.i.i.i", label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = load ptr, ptr %i.b, align 8, !noalias !14489, !nonnull !6, !align !15, !noundef !6 ; 3 uses
  %i.bd = icmp eq i64 %i.ba, %.sroa.10.0208.i.i.i.i.i.i
  br i1 %i.bd, label %bb.u, label %bb.aq

bb.u:                                             ; preds = %bb.t
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %1 to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 7 uses
  %i.bh = icmp eq ptr %i.bc, %1
  br i1 %i.bh, label %"_ZN91_$LT$nom..bytes..Escaped$LT$F$C$G$C$Error$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process28_$u7b$$u7b$closure$u7d$$u7d$17hc69043087309f000E.exit.i.thread251.i.i.i.i.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not.i.i.i98.i.i.i.i.i.i = icmp ult i64 %i.bg, %2
  br i1 %.not.i.i.i98.i.i.i.i.i.i, label %bb.w, label %.split.i.i.i99.i.i.i.i.i.i

.split.i.i.i99.i.i.i.i.i.i:                       ; preds = %bb.v
  %i.bi = icmp eq i64 %i.bg, %2
  br i1 %i.bi, label %.split.i.i.i.i102.i.i.i.i.i.i, label %.invoke.i.i

bb.w:                                             ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %i.bg ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !14490, !noalias !14491, !noundef !6
  %i.bl = icmp sgt i8 %i.bk, -65
  br i1 %i.bl, label %bb.x, label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.ao, %.split.i.i.i.i.i.i.i.i.i.i.i, %bb.ai, %bb.ac, %.split.i.i.i104.i.i.i.i.i.i, %bb.w, %.split.i.i.i99.i.i.i.i.i.i
  %i.bm = phi ptr [ %1, %bb.ac ], [ %1, %.split.i.i.i99.i.i.i.i.i.i ], [ %1, %.split.i.i.i104.i.i.i.i.i.i ], [ %1, %bb.w ], [ %.sroa.0130.0209.i.i.i.i.i.i, %bb.ai ], [ %i.dm, %bb.ao ], [ %i.dm, %.split.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bn = phi i64 [ %2, %bb.ac ], [ %2, %.split.i.i.i99.i.i.i.i.i.i ], [ %2, %.split.i.i.i104.i.i.i.i.i.i ], [ %2, %bb.w ], [ %.sroa.10.0208.i.i.i.i.i.i, %bb.ai ], [ %i.dp, %bb.ao ], [ %i.dp, %.split.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bo = phi i64 [ %i.db, %bb.ac ], [ %i.bg, %.split.i.i.i99.i.i.i.i.i.i ], [ %i.db, %.split.i.i.i104.i.i.i.i.i.i ], [ %i.bg, %bb.w ], [ %.sroa.010.0.i.i.i.i.i.i, %bb.ai ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i, %bb.ao ], [ %.sroa.012.0.i.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i.i.i.i ]
  invoke void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bm, i64 noundef %i.bn, i64 noundef %i.bo, i64 noundef %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #50
          to label %.cont.i.i unwind label %.loopexit.split-lp.i.i

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

"_ZN91_$LT$nom..bytes..Escaped$LT$F$C$G$C$Error$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process28_$u7b$$u7b$closure$u7d$$u7d$17hc69043087309f000E.exit.i.thread251.i.i.i.i.i": ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14489
  br label %.thread276

.split.i.i.i.i102.i.i.i.i.i.i:                    ; preds = %.split.i.i.i99.i.i.i.i.i.i
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %.sink.split.i.i.i20.i.i

bb.x:                                             ; preds = %bb.w
  %i.bp = sub nuw i64 %2, %i.bg
  br label %.sink.split.i.i.i20.i.i

bb.y:                                             ; preds = %.noexc40.i.i
  %i.bq = load i8, ptr %.sroa.0130.0209.i.i.i.i.i.i, align 1, !noalias !14492, !noundef !6 ; 5 uses
  %i.br = icmp sgt i8 %i.bq, -1
  br i1 %i.br, label %bb.z, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i": ; preds = %bb.y
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0130.0209.i.i.i.i.i.i, i64 1
  %i.bt = and i8 %i.bq, 31
  %i.bu = zext nneg i8 %i.bt to i32               ; 3 uses
  %i.bv = icmp samesign ne i64 %.sroa.10.0208.i.i.i.i.i.i, 1
  call void @llvm.assume(i1 %i.bv)
  %i.bw = load i8, ptr %i.bs, align 1, !noalias !14492, !noundef !6
  %i.bx = shl nuw nsw i32 %i.bu, 6
  %i.by = and i8 %i.bw, 63
  %i.bz = zext nneg i8 %i.by to i32               ; 2 uses
  %i.ca = or disjoint i32 %i.bx, %i.bz
  %i.cb = icmp samesign ugt i8 %i.bq, -33
  br i1 %i.cb, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i.i.i.i.i"

bb.z:                                             ; preds = %bb.y
  %i.cc = zext nneg i8 %i.bq to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i"
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0130.0209.i.i.i.i.i.i, i64 2
  %i.ce = icmp samesign ne i64 %.sroa.10.0208.i.i.i.i.i.i, 2
  call void @llvm.assume(i1 %i.ce)
  %i.cf = load i8, ptr %i.cd, align 1, !noalias !14492, !noundef !6
  %i.cg = shl nuw nsw i32 %i.bz, 6
  %i.ch = and i8 %i.cf, 63
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = or disjoint i32 %i.cg, %i.ci            ; 2 uses
  %i.ck = shl nuw nsw i32 %i.bu, 12
  %i.cl = or disjoint i32 %i.cj, %i.ck
  %i.cm = icmp samesign ugt i8 %i.bq, -17
  br i1 %i.cm, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i"
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0130.0209.i.i.i.i.i.i, i64 3
  %i.co = icmp samesign ne i64 %.sroa.10.0208.i.i.i.i.i.i, 3
  call void @llvm.assume(i1 %i.co)
  %i.cp = load i8, ptr %i.cn, align 1, !noalias !14492, !noundef !6
  %i.cq = shl nuw nsw i32 %i.bu, 18
  %i.cr = and i32 %i.cq, 1835008
  %i.cs = shl nuw nsw i32 %i.cj, 6
  %i.ct = and i8 %i.cp, 63
  %i.cu = zext nneg i8 %i.ct to i32
  %i.cv = or disjoint i32 %i.cs, %i.cu
  %i.cw = or disjoint i32 %i.cv, %i.cr            ; 2 uses
  %.not48.i.i.i.i.i.i = icmp eq i32 %i.cw, 1114112
  br i1 %.not48.i.i.i.i.i.i, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread161.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i.i.i.i.i", !prof !25

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i", %bb.z, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i"
  %spec.select.i160.i.i.i.i.i.i = phi i32 [ %i.cw, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i" ], [ %i.cl, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i" ], [ %i.ca, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i" ], [ %i.cc, %bb.z ] ; 4 uses
  %i.cx = load i32, ptr %.sroa.958.0..sroa_idx.i.i.i.i.i, align 8, !range !20, !alias.scope !14487, !noalias !14493, !noundef !6
  %i.cy = icmp eq i32 %spec.select.i160.i.i.i.i.i.i, %i.cx
  br i1 %i.cy, label %bb.ae, label %bb.aa

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread161.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i"
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @639) #50
          to label %.noexc42.i.i unwind label %.loopexit.split-lp.i.i

.noexc42.i.i:                                     ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread161.i.i.i.i.i.i"
  unreachable

bb.aa:                                            ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i.i.i.i.i"
  %i.cz = ptrtoint ptr %.sroa.0130.0209.i.i.i.i.i.i to i64
  %i.da = ptrtoint ptr %1 to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 7 uses
  %i.dc = icmp eq ptr %.sroa.0130.0209.i.i.i.i.i.i, %1
  br i1 %i.dc, label %.thread.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not.i.i.i103.i.i.i.i.i.i = icmp ult i64 %i.db, %2
  br i1 %.not.i.i.i103.i.i.i.i.i.i, label %bb.ac, label %.split.i.i.i104.i.i.i.i.i.i

.split.i.i.i104.i.i.i.i.i.i:                      ; preds = %bb.ab
  %i.dd = icmp eq i64 %i.db, %2
  br i1 %i.dd, label %.split.i.i.i.i107.i.i.i.i.i.i, label %.invoke.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %i.db ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !alias.scope !14494, !noalias !14491, !noundef !6
  %i.dg = icmp sgt i8 %i.df, -65
  br i1 %i.dg, label %bb.ad, label %.invoke.i.i

.split.i.i.i.i107.i.i.i.i.i.i:                    ; preds = %.split.i.i.i104.i.i.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %.sink.split.i.i.i20.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.di = sub nuw i64 %2, %i.db
  br label %.sink.split.i.i.i20.i.i

bb.ae:                                            ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i.i.i.i.i"
  %i.dj = icmp samesign ult i32 %spec.select.i160.i.i.i.i.i.i, 128
  br i1 %i.dj, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dk = icmp samesign ult i32 %spec.select.i160.i.i.i.i.i.i, 2048
  br i1 %i.dk, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dl = icmp samesign ult i32 %spec.select.i160.i.i.i.i.i.i, 65536
  %..i.i.i.i.i.i = select i1 %i.dl, i64 3, i64 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.sroa.010.0.i.i.i.i.i.i = phi i64 [ 2, %bb.af ], [ %..i.i.i.i.i.i, %bb.ag ], [ 1, %bb.ae ] ; 4 uses
  %.not49.i.i.i.i.i.i = icmp ult i64 %.sroa.010.0.i.i.i.i.i.i, %.sroa.10.0208.i.i.i.i.i.i
  br i1 %.not49.i.i.i.i.i.i, label %bb.ai, label %.thread.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0130.0209.i.i.i.i.i.i, i64 %.sroa.010.0.i.i.i.i.i.i ; 9 uses
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !14495, !noalias !14496, !noundef !6 ; 6 uses
  %i.do = icmp sgt i8 %i.dn, -65
  br i1 %i.do, label %"_ZN46_$LT$$RF$str$u20$as$u20$nom..traits..Input$GT$9take_from17h0f7097cc130b3246E.exit110.i.i.i.i.i.i", label %.invoke.i.i

"_ZN46_$LT$$RF$str$u20$as$u20$nom..traits..Input$GT$9take_from17h0f7097cc130b3246E.exit110.i.i.i.i.i.i": ; preds = %bb.ai
  %i.dp = sub nuw i64 %.sroa.10.0208.i.i.i.i.i.i, %.sroa.010.0.i.i.i.i.i.i ; 9 uses
  %i.dq = icmp sgt i8 %i.dn, -1
  br i1 %i.dq, label %bb.aj, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN46_$LT$$RF$str$u20$as$u20$nom..traits..Input$GT$9take_from17h0f7097cc130b3246E.exit110.i.i.i.i.i.i"
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.ds = and i8 %i.dn, 31
  %i.dt = zext nneg i8 %i.ds to i32               ; 3 uses
  %i.du = icmp samesign ne i64 %i.dp, 1
  call void @llvm.assume(i1 %i.du), !noalias !14497
  %i.dv = load i8, ptr %i.dr, align 1, !alias.scope !14498, !noalias !14499, !noundef !6
  %i.dw = shl nuw nsw i32 %i.dt, 6
  %i.dx = and i8 %i.dv, 63
  %i.dy = zext nneg i8 %i.dx to i32               ; 2 uses
  %i.dz = or disjoint i32 %i.dw, %i.dy
  %i.ea = icmp samesign ugt i8 %i.dn, -33
  br i1 %i.ea, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i.i.i.i.i.i.i"

bb.aj:                                            ; preds = %"_ZN46_$LT$$RF$str$u20$as$u20$nom..traits..Input$GT$9take_from17h0f7097cc130b3246E.exit110.i.i.i.i.i.i"
  %i.eb = zext nneg i8 %i.dn to i32
  br label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i.i.i"
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %i.ed = icmp samesign ne i64 %i.dp, 2
  call void @llvm.assume(i1 %i.ed), !noalias !14497
  %i.ee = load i8, ptr %i.ec, align 1, !alias.scope !14498, !noalias !14499, !noundef !6
  %i.ef = shl nuw nsw i32 %i.dy, 6
  %i.eg = and i8 %i.ee, 63
  %i.eh = zext nneg i8 %i.eg to i32
  %i.ei = or disjoint i32 %i.ef, %i.eh            ; 2 uses
  %i.ej = shl nuw nsw i32 %i.dt, 12
  %i.ek = or disjoint i32 %i.ei, %i.ej
  %i.el = icmp samesign ugt i8 %i.dn, -17
  br i1 %i.el, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i.i.i", label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i.i.i"
  %i.em = getelementptr inbounds nuw i8, ptr %i.dm, i64 3
  %i.en = icmp samesign ne i64 %i.dp, 3
  call void @llvm.assume(i1 %i.en), !noalias !14497
  %i.eo = load i8, ptr %i.em, align 1, !alias.scope !14498, !noalias !14499, !noundef !6
  %i.ep = shl nuw nsw i32 %i.dt, 18
  %i.eq = and i32 %i.ep, 1835008
  %i.er = shl nuw nsw i32 %i.ei, 6
  %i.es = and i8 %i.eo, 63
  %i.et = zext nneg i8 %i.es to i32
  %i.eu = or disjoint i32 %i.er, %i.et
  %i.ev = or disjoint i32 %i.eu, %i.eq            ; 2 uses
  %.not.i.i.i111.i.i.i.i.i.i = icmp eq i32 %i.ev, 1114112
  br i1 %.not.i.i.i111.i.i.i.i.i.i, label %bb.ar, label %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i.i.i.i.i.i.i"

"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i.i.i", %bb.aj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i.i.i"
  %spec.select.i26.i.i.i.i.i.i.i.i = phi i32 [ %i.ev, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i.i.i" ], [ %i.ek, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i.i.i.i.i" ], [ %i.dz, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i.i.i.i.i" ], [ %i.eb, %bb.aj ] ; 4 uses
  %i.ew = invoke noundef zeroext i1 @"_ZN62_$LT$$RF$str$u20$as$u20$nom..traits..FindToken$LT$char$GT$$GT$10find_token17h4291eeabee2f612eE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.756.0..sroa_idx.i.i.i.i.i, i32 noundef range(i32 0, 1114112) %spec.select.i26.i.i.i.i.i.i.i.i)
          to label %.noexc45.i.i unwind label %.loopexit.i.i

.noexc45.i.i:                                     ; preds = %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.thread.i.i.i.i.i.i.i.i"
  br i1 %i.ew, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %.noexc45.i.i
  %i.ex = icmp samesign ult i32 %spec.select.i26.i.i.i.i.i.i.i.i, 128
  br i1 %i.ex, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ey = icmp samesign ult i32 %spec.select.i26.i.i.i.i.i.i.i.i, 2048
  br i1 %i.ey, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ez = icmp samesign ult i32 %spec.select.i26.i.i.i.i.i.i.i.i, 65536
  %..i.i.i.i.i.i.i.i.i = select i1 %i.ez, i64 3, i64 4
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %.sroa.012.0.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.al ], [ %..i.i.i.i.i.i.i.i.i, %bb.am ], [ 1, %bb.ak ] ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.sroa.012.0.i.i.i.i.i.i.i.i.i, %i.dp
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ao, label %.split.i.i.i.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.an
  %i.fa = icmp eq i64 %.sroa.012.0.i.i.i.i.i.i.i.i.i, %i.dp
  br i1 %i.fa, label %bb.ap, label %.invoke.i.i

bb.ao:                                            ; preds = %bb.an
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sroa.012.0.i.i.i.i.i.i.i.i.i
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !14500, !noalias !14501, !noundef !6
  %i.fd = icmp sgt i8 %i.fc, -65
  br i1 %i.fd, label %bb.ap, label %.invoke.i.i

bb.ap:                                            ; preds = %bb.ao, %.split.i.i.i.i.i.i.i.i.i.i.i
  %i.fe = sub nuw i64 %i.dp, %.sroa.012.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sroa.012.0.i.i.i.i.i.i.i.i.i
  %i.fg = icmp eq i64 %i.fe, 0
  br i1 %i.fg, label %"_ZN91_$LT$nom..bytes..Escaped$LT$F$C$G$C$Error$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process28_$u7b$$u7b$closure$u7d$$u7d$17hc69043087309f000E.exit.i.i.i.i.i.i", label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.t
  %.sroa.10.1.i.i.i.i.i.i = phi i64 [ %i.ba, %bb.t ], [ %i.fe, %bb.ap ]
  %.sroa.0130.1.i.i.i.i.i.i = phi ptr [ %i.bc, %bb.t ], [ %i.ff, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14489
  br label %bb.r

.thread.i.i.i.i.i:                                ; preds = %bb.ah, %.noexc40.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14489
  %i.fh = load i8, ptr %1, align 1, !alias.scope !14502, !noalias !14503, !noundef !6 ; 5 uses
  %i.fi = icmp sgt i8 %i.fh, -1
  br i1 %i.fi, label %bb.at, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i"

bb.ar:                                            ; preds = %.noexc45.i.i, %"_ZN81_$LT$core..str..iter..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5278c74934f49a32E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14486
  store ptr %i.dm, ptr %i.e, align 8, !noalias !14486
  %i.fj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.dp, ptr %i.fj, align 8, !noalias !14486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14486
  store ptr %i.e, ptr %i.d, align 8, !noalias !14486
  %.sroa.477.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h82beccbf362c8091E", ptr %.sroa.477.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14504
  store ptr @432, ptr %i.a, align 8, !noalias !14505
  %.sroa.4121.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4121.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14505
  %.sroa.5.0..sroa_idx122.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx122.i.i.i.i.i, align 8, !noalias !14505
  %.sroa.6123.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6123.0..sroa_idx.i.i.i.i.i, align 8, !noalias !14505
  %.sroa.7.0..sroa_idx.i.i.i39.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i.i39.i.i, align 8, !noalias !14505
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %.noexc47.i.i unwind label %.loopexit.split-lp.i.i

.noexc47.i.i:                                     ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14486
  %.sroa.32.24.copyload4.i.i.i = load i64, ptr %i.c, align 8, !noalias !14506
  %.sroa.41.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.41.24.copyload7.i.i.i = load ptr, ptr %.sroa.41.24..sroa_idx.i.i.i, align 8, !noalias !14506
  %.sroa.42.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.42.24.copyload10.i.i.i = load i64, ptr %.sroa.42.24..sroa_idx.i.i.i, align 8, !noalias !14506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14486
  br label %.thread294

"_ZN91_$LT$nom..bytes..Escaped$LT$F$C$G$C$Error$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process28_$u7b$$u7b$closure$u7d$$u7d$17hc69043087309f000E.exit.i.i.i.i.i.i": ; preds = %bb.ap, %bb.s
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %.sink.split.i.i.i20.i.i

.sink.split.i.i.i20.i.i:                          ; preds = %"_ZN91_$LT$nom..bytes..Escaped$LT$F$C$G$C$Error$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process28_$u7b$$u7b$closure$u7d$$u7d$17hc69043087309f000E.exit.i.i.i.i.i.i", %bb.ad, %.split.i.i.i.i107.i.i.i.i.i.i, %bb.x, %.split.i.i.i.i102.i.i.i.i.i.i
  %i.fl = phi ptr [ %i.fk, %"_ZN91_$LT$nom..bytes..Escaped$LT$F$C$G$C$Error$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process28_$u7b$$u7b$closure$u7d$$u7d$17hc69043087309f000E.exit.i.i.i.i.i.i" ], [ %i.de, %bb.ad ], [ %i.dh, %.split.i.i.i.i107.i.i.i.i.i.i ], [ %i.bj, %bb.x ], [ %3, %.split.i.i.i.i102.i.i.i.i.i.i ]
  %.sroa.24.0168.i.i.i.i.i = phi i64 [ 0, %"_ZN91_$LT$nom..bytes..Escaped$LT$F$C$G$C$Error$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process28_$u7b$$u7b$closure$u7d$$u7d$17hc69043087309f000E.exit.i.i.i.i.i.i" ], [ %i.di, %bb.ad ], [ 0, %.split.i.i.i.i107.i.i.i.i.i.i ], [ %i.bp, %bb.x ], [ 0, %.split.i.i.i.i102.i.i.i.i.i.i ]
  %.sroa.44.0167.i.i.i.i.i = phi i64 [ %2, %"_ZN91_$LT$nom..bytes..Escaped$LT$F$C$G$C$Error$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process28_$u7b$$u7b$closure$u7d$$u7d$17hc69043087309f000E.exit.i.i.i.i.i.i" ], [ %i.db, %bb.ad ], [ %2, %.split.i.i.i.i107.i.i.i.i.i.i ], [ %i.bg, %bb.x ], [ %2, %.split.i.i.i.i102.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14489
  switch i64 %.sroa.44.0167.i.i.i.i.i, label %.loopexit.i.i.i.i.i [
    i64 3, label %.preheader.i.preheader.i.i.i.i.i
    i64 2, label %.preheader.i101.preheader.i.i.i.i.i
  ]

.preheader.i.preheader.i.i.i.i.i:                 ; preds = %.sink.split.i.i.i20.i.i
  %i.fm = load i8, ptr %1, align 1, !alias.scope !14507, !noalias !14508, !noundef !6 ; 2 uses
  %i.fn = add i8 %i.fm, -65
  %i.fo = icmp ult i8 %i.fn, 26
  %i.fp = select i1 %i.fo, i8 32, i8 0
  %.sroa.016.0.i.i.i.i.i.i = or i8 %i.fp, %i.fm
  %i.fq = icmp eq i8 %.sroa.016.0.i.i.i.i.i.i, 97
  br i1 %i.fq, label %.preheader.i.1.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.preheader.i.1.i.i.i.i.i:                         ; preds = %.preheader.i.preheader.i.i.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.fs = load i8, ptr %i.fr, align 1, !alias.scope !14507, !noalias !14508, !noundef !6 ; 2 uses
  %i.ft = add i8 %i.fs, -65
  %i.fu = icmp ult i8 %i.ft, 26
  %i.fv = select i1 %i.fu, i8 32, i8 0
  %.sroa.016.0.i.1.i.i.i.i.i = or i8 %i.fv, %i.fs
  %i.fw = icmp eq i8 %.sroa.016.0.i.1.i.i.i.i.i, 110
  br i1 %i.fw, label %.preheader.i.2.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.preheader.i.2.i.i.i.i.i:                         ; preds = %.preheader.i.1.i.i.i.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !14507, !noalias !14508, !noundef !6 ; 2 uses
  %i.fz = add i8 %i.fy, -65
  %i.ga = icmp ult i8 %i.fz, 26
  %i.gb = select i1 %i.ga, i8 32, i8 0
  %.sroa.016.0.i.2.i.i.i.i.i = or i8 %i.gb, %i.fy
  %i.gc = icmp eq i8 %.sroa.016.0.i.2.i.i.i.i.i, 100
  br i1 %i.gc, label %.thread77.i.i, label %.loopexit.i.i.i.i.i

.preheader.i101.preheader.i.i.i.i.i:              ; preds = %.sink.split.i.i.i20.i.i
  %i.gd = load i8, ptr %1, align 1, !alias.scope !14509, !noalias !14510, !noundef !6 ; 2 uses
  %i.ge = add i8 %i.gd, -65
  %i.gf = icmp ult i8 %i.ge, 26
  %i.gg = select i1 %i.gf, i8 32, i8 0
  %.sroa.016.0.i109.i.i.i.i.i = or i8 %i.gg, %i.gd
  %i.gh = icmp eq i8 %.sroa.016.0.i109.i.i.i.i.i, 111
  br i1 %i.gh, label %.preheader.i101.1.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.preheader.i101.1.i.i.i.i.i:                      ; preds = %.preheader.i101.preheader.i.i.i.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.gj = load i8, ptr %i.gi, align 1, !alias.scope !14509, !noalias !14510, !noundef !6 ; 2 uses
  %i.gk = add i8 %i.gj, -65
  %i.gl = icmp ult i8 %i.gk, 26
  %i.gm = select i1 %i.gl, i8 32, i8 0
  %.sroa.016.0.i109.1.i.i.i.i.i = or i8 %i.gm, %i.gj
  %i.gn = icmp eq i8 %.sroa.016.0.i109.1.i.i.i.i.i, 114
  br i1 %i.gn, label %.thread77.i.i, label %.loopexit.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.preheader.i101.1.i.i.i.i.i, %.preheader.i101.preheader.i.i.i.i.i, %.preheader.i.2.i.i.i.i.i, %.preheader.i.1.i.i.i.i.i, %.preheader.i.preheader.i.i.i.i.i, %.sink.split.i.i.i20.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14486
  invoke fastcc void @_ZN4anki6search6parser20search_node_for_text17h47453719b01699c8E(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %.sroa.44.0167.i.i.i.i.i)
          to label %.noexc48.i.i unwind label %.loopexit.split-lp.i.i

.noexc48.i.i:                                     ; preds = %.loopexit.i.i.i.i.i
  %i.go = load i64, ptr %i.f, align 8, !range !8, !noalias !14486, !noundef !6 ; 3 uses
  %.not.i.i.i21.i.i = icmp eq i64 %i.go, 3
  %i.gp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.620.i.i.sroa.0.0.copyload.i.i.i = load i64, ptr %i.gp, align 8, !noalias !14486 ; 3 uses
  %.sroa.620.i.i.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.620.i.i.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.620.i.i.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !14486 ; 3 uses
  %.sroa.620.i.i.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.620.i.i.sroa.8.0.copyload.i.i.i = load i64, ptr %.sroa.620.i.i.sroa.8.0..sroa_idx.i.i.i, align 8, !noalias !14486 ; 2 uses
  %.sroa.620.i.i.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.620.i.i.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.620.i.i.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !14486 ; 3 uses
  %.sroa.620.i.i.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.620.i.i.sroa.12.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.620.i.i.sroa.12.0..sroa_idx.i.i.i, align 8, !noalias !14486 ; 3 uses
  %.sroa.620.i.i.sroa.12.sroa.6.0..sroa.620.i.i.sroa.12.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.620.i.i.sroa.12.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.620.i.i.sroa.12.sroa.6.0..sroa.620.i.i.sroa.12.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !14486 ; 3 uses
  %.sroa.620.i.i.sroa.13.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.620.i.i.sroa.13.0.copyload.i.i.i = load ptr, ptr %.sroa.620.i.i.sroa.13.0..sroa_idx.i.i.i, align 8, !noalias !14486
  %.sroa.620.i.i.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.620.i.i.sroa.14.0.copyload.i.i.i = load i64, ptr %.sroa.620.i.i.sroa.14.0..sroa_idx.i.i.i, align 8, !noalias !14486 ; 3 uses
  %.sroa.620.i.i.sroa.16.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.sroa.620.i.i.sroa.16.0.copyload.i.i.i = load i64, ptr %.sroa.620.i.i.sroa.16.0..sroa_idx.i.i.i, align 8, !noalias !14486 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14486
  %i.gq = ptrtoint ptr %.sroa.620.i.i.sroa.13.0.copyload.i.i.i to i64 ; 3 uses
  br i1 %.not.i.i.i21.i.i, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %.noexc48.i.i
  %i.gr = inttoptr i64 %.sroa.620.i.i.sroa.6.0.copyload.i.i.i to ptr
  br label %.thread77.i.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i": ; preds = %.thread.i.i.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.gt = and i8 %i.fh, 31
  %i.gu = zext nneg i8 %i.gt to i32               ; 3 uses
  %i.gv = icmp samesign ne i64 %2, 1
  call void @llvm.assume(i1 %i.gv)
  %i.gw = load i8, ptr %i.gs, align 1, !alias.scope !14502, !noalias !14503, !noundef !6
  %i.gx = shl nuw nsw i32 %i.gu, 6
  %i.gy = and i8 %i.gw, 63
  %i.gz = zext nneg i8 %i.gy to i32               ; 2 uses
  %i.ha = or disjoint i32 %i.gx, %i.gz
  %i.hb = icmp samesign ugt i8 %i.fh, -33
  br i1 %i.hb, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i", label %bb.au

bb.at:                                            ; preds = %.thread.i.i.i.i.i
  %i.hc = zext nneg i8 %i.fh to i32
  br label %bb.au

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i"
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.he = icmp samesign ne i64 %2, 2
  call void @llvm.assume(i1 %i.he)
  %i.hf = load i8, ptr %i.hd, align 1, !alias.scope !14502, !noalias !14503, !noundef !6
  %i.hg = shl nuw nsw i32 %i.gz, 6
  %i.hh = and i8 %i.hf, 63
  %i.hi = zext nneg i8 %i.hh to i32
  %i.hj = or disjoint i32 %i.hg, %i.hi            ; 2 uses
  %i.hk = shl nuw nsw i32 %i.gu, 12
  %i.hl = or disjoint i32 %i.hj, %i.hk
  %i.hm = icmp samesign ugt i8 %i.fh, -17
  br i1 %i.hm, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i", label %bb.au

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i"
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ho = icmp samesign ne i64 %2, 3
  call void @llvm.assume(i1 %i.ho)
  %i.hp = load i8, ptr %i.hn, align 1, !alias.scope !14502, !noalias !14503, !noundef !6
  %i.hq = shl nuw nsw i32 %i.gu, 18
  %i.hr = and i32 %i.hq, 1835008
  %i.hs = shl nuw nsw i32 %i.hj, 6
  %i.ht = and i8 %i.hp, 63
  %i.hu = zext nneg i8 %i.ht to i32
  %i.hv = or disjoint i32 %i.hs, %i.hu
  %i.hw = or disjoint i32 %i.hv, %i.hr
  br label %bb.au

bb.au:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i", %bb.at, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i"
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.hl, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i" ], [ %i.hw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i" ], [ %i.ha, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i" ], [ %i.hc, %bb.at ] ; 2 uses
  %i.hx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.hx)
  %i.hy = invoke fastcc noundef zeroext i1 @"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hb872c913c7d4b976E"(i32 noundef %.sroa.4.0.i.ph.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @433, i64 noundef 7)
          to label %.noexc49.i.i unwind label %.loopexit.split-lp.i.i

.noexc49.i.i:                                     ; preds = %bb.au
  br i1 %i.hy, label %.thread276, label %bb.av

bb.av:                                            ; preds = %.noexc49.i.i
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !14511
  %i.hz = call noundef dereferenceable_or_null(1) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !14511 ; 3 uses
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %bb.aw, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i.i.i.i.i"

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef 1, i64 1) #50
          to label %.noexc50.i.i unwind label %.loopexit.split-lp.i.i

.noexc50.i.i:                                     ; preds = %bb.aw
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i.i.i.i.i": ; preds = %bb.av
  store i8 92, ptr %i.hz, align 1, !noalias !14512
  br label %.thread294

.thread77.i.i:                                    ; preds = %bb.as, %.preheader.i101.1.i.i.i.i.i, %.preheader.i.2.i.i.i.i.i
  %.sroa.43.sroa.0.0.i.i.i = phi i64 [ %.sroa.620.i.i.sroa.10.0.copyload.i.i.i, %bb.as ], [ undef, %.preheader.i.2.i.i.i.i.i ], [ undef, %.preheader.i101.1.i.i.i.i.i ]
  %.sroa.43.sroa.7.0.i.i.i = phi i64 [ %.sroa.620.i.i.sroa.12.sroa.0.0.copyload.i.i.i, %bb.as ], [ undef, %.preheader.i.2.i.i.i.i.i ], [ undef, %.preheader.i101.1.i.i.i.i.i ]
  %.sroa.43.sroa.8.0.i.i.i = phi i64 [ %.sroa.620.i.i.sroa.12.sroa.6.0.copyload.i.i.i, %bb.as ], [ undef, %.preheader.i.2.i.i.i.i.i ], [ undef, %.preheader.i101.1.i.i.i.i.i ]
  %.sroa.51.0.i.i.i = phi i64 [ %.sroa.620.i.i.sroa.16.0.copyload.i.i.i, %bb.as ], [ undef, %.preheader.i.2.i.i.i.i.i ], [ undef, %.preheader.i101.1.i.i.i.i.i ]
  %.sroa.47.0.i.i.i = phi i64 [ %.sroa.620.i.i.sroa.14.0.copyload.i.i.i, %bb.as ], [ undef, %.preheader.i.2.i.i.i.i.i ], [ undef, %.preheader.i101.1.i.i.i.i.i ]
  %.sroa.4311.0.i.i.i = phi i64 [ %i.gq, %bb.as ], [ undef, %.preheader.i.2.i.i.i.i.i ], [ undef, %.preheader.i101.1.i.i.i.i.i ]
  %.sroa.42.0.i.i.i = phi i64 [ %.sroa.620.i.i.sroa.8.0.copyload.i.i.i, %bb.as ], [ undef, %.preheader.i.2.i.i.i.i.i ], [ undef, %.preheader.i101.1.i.i.i.i.i ]
  %.sroa.41.0.i.i.i = phi ptr [ %i.gr, %bb.as ], [ undef, %.preheader.i.2.i.i.i.i.i ], [ undef, %.preheader.i101.1.i.i.i.i.i ]
  %.sroa.32.0.i.i.i = phi i64 [ %.sroa.620.i.i.sroa.0.0.copyload.i.i.i, %bb.as ], [ -9223372036854775782, %.preheader.i.2.i.i.i.i.i ], [ -9223372036854775781, %.preheader.i101.1.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14485
  %i.ib = ptrtoint ptr %i.fl to i64
  br label %bb.bc

.thread276:                                       ; preds = %bb.q, %.noexc49.i.i, %"_ZN91_$LT$nom..bytes..Escaped$LT$F$C$G$C$Error$GT$$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process28_$u7b$$u7b$closure$u7d$$u7d$17hc69043087309f000E.exit.i.thread251.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14485
  %i.ic = ptrtoint ptr %1 to i64
  br label %bb.ay

.thread294:                                       ; preds = %.noexc47.i.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i.i.i.i.i"
  %.sroa.921.sroa.6.0.i.i.i.ph = phi i64 [ 1, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i.i.i.i.i" ], [ %.sroa.42.24.copyload10.i.i.i, %.noexc47.i.i ]
  %.sroa.921.sroa.5.0.i.i.i.ph = phi ptr [ %i.hz, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i.i.i.i.i" ], [ %.sroa.41.24.copyload7.i.i.i, %.noexc47.i.i ]
  %.sroa.921.sroa.0.0.i.i.i.ph = phi i64 [ 1, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit.i.i.i.i.i" ], [ %.sroa.32.24.copyload4.i.i.i, %.noexc47.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14485
  %i.id = ptrtoint ptr %1 to i64
  br label %bb.bc

bb.ax:                                            ; preds = %.noexc48.i.i
  %i.ie = inttoptr i64 %.sroa.620.i.i.sroa.8.0.copyload.i.i.i to ptr ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14485
  %i.if = icmp eq i64 %i.go, 1
  br i1 %i.if, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %.thread276, %bb.ax
  %i.ig = phi i64 [ %i.ic, %.thread276 ], [ %.sroa.620.i.i.sroa.14.0.copyload.i.i.i, %bb.ax ]
end_hunk_0
