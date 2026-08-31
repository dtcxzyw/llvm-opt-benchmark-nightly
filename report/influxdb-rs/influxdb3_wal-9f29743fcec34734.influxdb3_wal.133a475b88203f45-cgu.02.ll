Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_wal-9f29743fcec34734.influxdb3_wal.133a475b88203f45-cgu.02?download=true
inline.NumInlined: 263
inline.NumDeleted: 176
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE6retainNCNvMBG_NtBG_15SnapshotTracker29snapshot_in_order_wal_periodss1_0EBI_:bb.a
.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.m = sub nuw i64 %i.b, %.lcssa
  %.neg = add i64 %.lcssa, 1
  %xtraiter13 = and i64 %i.m, 1
  %lcmp.mod14.not = icmp eq i64 %xtraiter13, 0
  br i1 %lcmp.mod14.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.lcssa ; 2 uses
  %.val12.i.prol = load i64, ptr %i.n, align 8, !noalias !9, !noundef !3
  %i.o = icmp ugt i64 %.val12.i.prol, %i.g
  br i1 %i.o, label %bb.c, label %.lr.ph.i.prol.loopexit.unr-lcssa

bb.c:                                             ; preds = %.lr.ph.i.prol
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.0.0.i.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !9
  %i.q = add i64 %.sroa.0.0.i.lcssa, 1
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.c, %.lr.ph.i.prol
  %.sroa.13.1.i.prol = phi i64 [ %i.q, %bb.c ], [ %.sroa.0.0.i.lcssa, %.lr.ph.i.prol ] ; 2 uses
  %.sroa.7.0.i.prol = add nuw nsw i64 %.lcssa, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.13.1.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %.sroa.13.1.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.sroa.7.031.i.unr = phi i64 [ %.lcssa, %.lr.ph.i.preheader ], [ %.sroa.7.0.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.sroa.13.030.i.unr = phi i64 [ %.sroa.0.0.i.lcssa, %.lr.ph.i.preheader ], [ %.sroa.13.1.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.r = icmp eq i64 %i.b, %.neg
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.k
  %.val10.i.1 = load i64, ptr %i.s, align 8, !noalias !9, !noundef !3
  %i.t = icmp ugt i64 %.val10.i.1, %i.g
  %i.u = or disjoint i64 %.sroa.0.0.i, 2          ; 3 uses
  br i1 %i.t, label %bb.e, label %.preheader.i, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.u
  %.val10.i.2 = load i64, ptr %i.v, align 8, !noalias !9, !noundef !3
  %i.w = icmp ugt i64 %.val10.i.2, %i.g
  %i.x = or disjoint i64 %.sroa.0.0.i, 3          ; 3 uses
  br i1 %i.w, label %bb.f, label %.preheader.i, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.x
  %.val10.i.3 = load i64, ptr %i.y, align 8, !noalias !9, !noundef !3
  %i.z = icmp ugt i64 %.val10.i.3, %i.g
  %i.aa = add nuw nsw i64 %.sroa.0.0.i, 4         ; 3 uses
  br i1 %i.z, label %bb.g, label %.preheader.i, !prof !10

bb.g:                                             ; preds = %bb.f
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE10retain_mutNCINvB2_6retainNCNvMBG_NtBG_15SnapshotTracker29snapshot_in_order_wal_periodss1_0E0EBI_.exit.loopexit.unr-lcssa, label %bb.b

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %bb.j, %.preheader.i
  %.sroa.13.0.lcssa.i = phi i64 [ %.sroa.0.0.i.lcssa, %.preheader.i ], [ %.sroa.13.1.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.sroa.13.1.i.1, %bb.j ]
  store i64 %.sroa.13.0.lcssa.i, ptr %i.a, align 8, !alias.scope !4, !noalias !7
  br label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE10retain_mutNCINvB2_6retainNCNvMBG_NtBG_15SnapshotTracker29snapshot_in_order_wal_periodss1_0E0EBI_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.j
  %.sroa.7.031.i = phi i64 [ %.sroa.7.0.i.1, %bb.j ], [ %.sroa.7.031.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.13.030.i = phi i64 [ %.sroa.13.1.i.1, %bb.j ], [ %.sroa.13.030.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.7.031.i ; 2 uses
  %.val12.i = load i64, ptr %i.ab, align 8, !noalias !9, !noundef !3
  %i.ac = icmp ugt i64 %.val12.i, %i.g
  br i1 %i.ac, label %bb.h, label %.lr.ph.i.1

bb.h:                                             ; preds = %.lr.ph.i
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.13.030.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !9
  %i.ae = add i64 %.sroa.13.030.i, 1
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.h, %.lr.ph.i
  %.sroa.13.1.i = phi i64 [ %i.ae, %bb.h ], [ %.sroa.13.030.i, %.lr.ph.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.7.031.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %.val12.i.1 = load i64, ptr %i.ag, align 8, !noalias !9, !noundef !3
  %i.ah = icmp ugt i64 %.val12.i.1, %i.g
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.1
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.13.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !noalias !9
  %i.aj = add i64 %.sroa.13.1.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.1
  %.sroa.13.1.i.1 = phi i64 [ %i.aj, %bb.i ], [ %.sroa.13.1.i, %.lr.ph.i.1 ] ; 2 uses
  %.sroa.7.0.i.1 = add nuw nsw i64 %.sroa.7.031.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %.sroa.7.0.i.1, %i.b
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i

_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE10retain_mutNCINvB2_6retainNCNvMBG_NtBG_15SnapshotTracker29snapshot_in_order_wal_periodss1_0E0EBI_.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE10retain_mutNCINvB2_6retainNCNvMBG_NtBG_15SnapshotTracker29snapshot_in_order_wal_periodss1_0E0EBI_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE10retain_mutNCINvB2_6retainNCNvMBG_NtBG_15SnapshotTracker29snapshot_in_order_wal_periodss1_0E0EBI_.exit.loopexit.unr-lcssa, %.preheader25.i
  %.sroa.0.0.i.epil.init = phi i64 [ 0, %.preheader25.i ], [ %i.aa, %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE10retain_mutNCINvB2_6retainNCNvMBG_NtBG_15SnapshotTracker29snapshot_in_order_wal_periodss1_0E0EBI_.exit.loopexit.unr-lcssa ]
  %lcmp.mod9 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod9)
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.epil.preheader
  %.sroa.0.0.i.epil = phi i64 [ %i.am, %bb.l ], [ %.sroa.0.0.i.epil.init, %.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.l ], [ 0, %.epil.preheader ]
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.0.0.i.epil
  %.val10.i.epil = load i64, ptr %i.ak, align 8, !noalias !9, !noundef !3
  %i.al = icmp ugt i64 %.val10.i.epil, %i.g
  %i.am = add nuw i64 %.sroa.0.0.i.epil, 1        ; 2 uses
  br i1 %i.al, label %bb.l, label %.preheader.i, !prof !10

bb.l:                                             ; preds = %bb.k
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE10retain_mutNCINvB2_6retainNCNvMBG_NtBG_15SnapshotTracker29snapshot_in_order_wal_periodss1_0E0EBI_.exit, label %bb.k, !llvm.loop !11

_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE10retain_mutNCINvB2_6retainNCNvMBG_NtBG_15SnapshotTracker29snapshot_in_order_wal_periodss1_0E0EBI_.exit: ; preds = %_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE10retain_mutNCINvB2_6retainNCNvMBG_NtBG_15SnapshotTracker29snapshot_in_order_wal_periodss1_0E0EBI_.exit.loopexit.unr-lcssa, %bb.l, %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE11resize_withNvYBE_NtNtCs4NRVxsYgnAr_4core7default7Default7defaultECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 9 uses
  %i.c = icmp ult i64 %i.b, 96076792050570582
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13)
  %i.e = sub nuw nsw i64 %i.b, %1                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !13, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw [96 x i8], ptr %i.g, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8, !alias.scope !13
  %i.i = icmp eq i64 %i.b, %1
  br i1 %i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE8truncateCs1ElB0qm0ygX_13influxdb3_wal.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal.exit.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw [96 x i8], ptr %i.h, i64 %.sroa.0.09.i.i ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  %i.l = load i64, ptr %i.j, align 8, !range !16, !alias.scope !17, !noalias !13, !noundef !3
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser16SpecifiedEncoderECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.j) #20
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal.exit.i.i unwind label %bb.d, !noalias !13, !inline_history !22

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %i.n = icmp eq i64 %i.k, %i.e
  br i1 %i.n, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE8truncateCs1ElB0qm0ygX_13influxdb3_wal.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.k, %i.e
  br i1 %i.p, label %._crit_edge13.i.i, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal.exit8.i.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [96 x i8], ptr %i.h, i64 %.sroa.0.110.i.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  %i.s = load i64, ptr %i.q, align 8, !range !16, !alias.scope !23, !noalias !13, !noundef !3
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal.exit8.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph12.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser16SpecifiedEncoderECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.q) #20
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal.exit8.i.i unwind label %bb.f, !noalias !13, !inline_history !22

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal.exit8.i.i: ; preds = %bb.e, %.lr.ph12.i.i
  %i.u = icmp eq i64 %i.r, %i.e
  br i1 %i.u, label %._crit_edge13.i.i, label %.lr.ph12.i.i

._crit_edge13.i.i:                                ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal.exit8.i.i, %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !13, !inline_history !26
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.w = sub nuw i64 %1, %i.b                     ; 5 uses
  %i.x = load i64, ptr %0, align 8, !range !27, !alias.scope !28, !noundef !3
  %i.y = sub nsw i64 %i.x, %i.b
  %i.z = icmp ugt i64 %i.w, %i.y
  br i1 %i.z, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.thread.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.i, !prof !33

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.thread.i: ; preds = %bb.g
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.w, i64 noundef 8, i64 noundef 96)
  %i.aa = load i64, ptr %i.a, align 8, !alias.scope !34
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.i: ; preds = %bb.g, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.thread.i
  %i.ab = phi i64 [ %i.aa, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.thread.i ], [ %i.b, %bb.g ] ; 2 uses
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %.in.i, align 8, !alias.scope !34, !nonnull !3, !noundef !3 ; 5 uses
  %xtraiter = and i64 %i.w, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.i, %.prol.preheader
  %i.ad = phi i64 [ %i.af, %.prol.preheader ], [ %i.ab, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.i ] ; 2 uses
  %.sroa.0.0.i.in.i.i.i.prol = phi i64 [ %.sroa.0.0.i.i.i.i.prol, %.prol.preheader ], [ %i.w, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.i ]
  %.sroa.0.0.i.i.i.i.prol = add i64 %.sroa.0.0.i.in.i.i.i.prol, -1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [96 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  store i64 -1, ptr %i.ae, align 8, !noalias !35
  %.sroa.52.8..sroa_idx.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i.prol, align 8, !noalias !35
  %i.af = add i64 %i.ad, 1                        ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !46

.prol.loopexit:                                   ; preds = %.prol.preheader, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.i
  %.lcssa.unr = phi i64 [ poison, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.i ], [ %i.af, %.prol.preheader ]
  %.unr = phi i64 [ %i.ab, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.i ], [ %i.af, %.prol.preheader ]
  %.sroa.0.0.i.in.i.i.i.unr = phi i64 [ %i.w, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.i ], [ %.sroa.0.0.i.i.i.i.prol, %.prol.preheader ]
  %i.ag = sub i64 %i.b, %1
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB1S_7sources11repeat_with10RepeatWithNvYBF_NtNtB1U_7default7Default7defaultEEECs1ElB0qm0ygX_13influxdb3_wal.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.i.new

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.i.new: ; preds = %.prol.loopexit, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.i.new
  %i.ai = phi i64 [ %i.aq, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.i.new ], [ %.unr, %.prol.loopexit ] ; 5 uses
  %.sroa.0.0.i.in.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.3, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.i.new ], [ %.sroa.0.0.i.in.i.i.i.unr, %.prol.loopexit ]
  %i.aj = getelementptr inbounds nuw [96 x i8], ptr %i.ac, i64 %i.ai ; 2 uses
  store i64 -1, ptr %i.aj, align 8, !noalias !35
  %.sroa.52.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i, align 8, !noalias !35
  %i.ak = getelementptr [96 x i8], ptr %i.ac, i64 %i.ai ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 96
  store i64 -1, ptr %i.al, align 8, !noalias !35
  %.sroa.52.8..sroa_idx.i.i.i.i.1 = getelementptr i8, ptr %i.ak, i64 104
  store i64 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i.1, align 8, !noalias !35
  %i.am = getelementptr [96 x i8], ptr %i.ac, i64 %i.ai ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 192
  store i64 -1, ptr %i.an, align 8, !noalias !35
  %.sroa.52.8..sroa_idx.i.i.i.i.2 = getelementptr i8, ptr %i.am, i64 200
  store i64 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i.2, align 8, !noalias !35
  %.sroa.0.0.i.i.i.i.3 = add i64 %.sroa.0.0.i.in.i.i.i, -4 ; 2 uses
  %i.ao = getelementptr [96 x i8], ptr %i.ac, i64 %i.ai ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 288
  store i64 -1, ptr %i.ap, align 8, !noalias !35
  %.sroa.52.8..sroa_idx.i.i.i.i.3 = getelementptr i8, ptr %i.ao, i64 296
  store i64 0, ptr %.sroa.52.8..sroa_idx.i.i.i.i.3, align 8, !noalias !35
  %i.aq = add i64 %i.ai, 4                        ; 2 uses
  %i.ar = icmp eq i64 %.sroa.0.0.i.i.i.i.3, 0
  br i1 %i.ar, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB1S_7sources11repeat_with10RepeatWithNvYBF_NtNtB1U_7default7Default7defaultEEECs1ElB0qm0ygX_13influxdb3_wal.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.i.new

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB1S_7sources11repeat_with10RepeatWithNvYBF_NtNtB1U_7default7Default7defaultEEECs1ElB0qm0ygX_13influxdb3_wal.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.i.new, %.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.aq, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal.exit.i.new ]
  store i64 %.lcssa, ptr %i.a, align 8, !alias.scope !34, !noalias !47
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE8truncateCs1ElB0qm0ygX_13influxdb3_wal.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE8truncateCs1ElB0qm0ygX_13influxdb3_wal.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal.exit.i.i, %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB1S_7sources11repeat_with10RepeatWithNvYBF_NtNtB1U_7default7Default7defaultEEECs1ElB0qm0ygX_13influxdb3_wal.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtCsc96bKABWO34_9hashbrown3map10IntoValuesINtNtB8_4sync3ArceENtBH_10WriteBatchENcNtBF_5Write0EEBH_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 5 uses
  %.sroa.49.i = alloca [96 x i8], align 8         ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 6 uses
  %.sroa.6 = alloca [96 x i8], align 8            ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49.i)
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !48, !noalias !53, !noundef !3 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpE7reserveBF_.exit
  %i.k = phi i64 [ %i.d, %.lr.ph ], [ %i.at, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpE7reserveBF_.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !56)
  call void @llvm.experimental.noalias.scope.decl(metadata !58)
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.l = load i16, ptr %i.g, align 8, !alias.scope !63, !noalias !53, !noundef !3 ; 2 uses
  %.not11.i.i.i = icmp eq i16 %i.l, 0
  %.promoted.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !63, !noalias !53 ; 2 uses
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEE9next_implKb0_EB1E_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %.promoted13.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !63, !noalias !53
  br label %bb.c

._crit_edge.i.i.i:                                ; preds = %bb.c
  store ptr %i.q, ptr %i.h, align 8, !alias.scope !63, !noalias !53
  store ptr %i.p, ptr %i.f, align 8, !alias.scope !63, !noalias !53
  br label %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEE9next_implKb0_EB1E_.exit.i.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.m = phi ptr [ %.promoted13.i.i.i, %.lr.ph.i.i.i ], [ %i.q, %bb.c ] ; 2 uses
  %i.n = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.p, %bb.c ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.m, align 16, !noalias !64
  %i.o = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -1920 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.o to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.c, label %._crit_edge.i.i.i

_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEE9next_implKb0_EB1E_.exit.i.i: ; preds = %bb.b, %._crit_edge.i.i.i
  %i.r = phi ptr [ %i.p, %._crit_edge.i.i.i ], [ %.promoted.i.i.i, %bb.b ]
  %.lcssa.i.i.i = phi i16 [ %.cast.i.i.i, %._crit_edge.i.i.i ], [ %i.l, %bb.b ] ; 3 uses
  %i.s = add i16 %.lcssa.i.i.i, -1
  %i.t = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = and i16 %i.s, %.lcssa.i.i.i
  store i16 %i.v, ptr %i.g, align 8, !alias.scope !63, !noalias !53
  %i.w = sub nsw i64 0, %i.u
  %i.x = getelementptr inbounds [120 x i8], ptr %i.r, i64 %i.w ; 3 uses
  %i.y = add i64 %i.k, -1
  store i64 %i.y, ptr %i.c, align 8, !alias.scope !65, !noalias !53
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %i.z, i64 120, i1 false), !noalias !66
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 -104
  %.sroa.08.0.copyload.i = load i64, ptr %i.aa, align 8, !noalias !66 ; 3 uses
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.x, i64 -96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.49.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.49.0..sroa_idx.i, i64 96, i1 false), !noalias !67
  call void @llvm.experimental.noalias.scope.decl(metadata !68)
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.ab = load ptr, ptr %i.a, align 8, !alias.scope !74, !noalias !66, !nonnull !3, !noundef !3
  %i.ac = atomicrmw sub ptr %i.ab, i64 1 release, align 8, !noalias !75
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.d, label %_RNvXsk_NtCsc96bKABWO34_9hashbrown3mapINtB5_10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1s_.exit.i

bb.d:                                             ; preds = %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEE9next_implKb0_EB1E_.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RNvXsk_NtCsc96bKABWO34_9hashbrown3mapINtB5_10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1s_.exit.i unwind label %bb.f

_RNvXsk_NtCsc96bKABWO34_9hashbrown3mapINtB5_10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1s_.exit.i: ; preds = %bb.d, %_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEE9next_implKb0_EB1E_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66
  %.not.i = icmp eq i64 %.sroa.08.0.copyload.i, -1
  br i1 %.not.i, label %.thread, label %bb.g

bb.e:                                             ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.av, %bb.k ], [ %i.ae, %bb.f ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsc96bKABWO34_9hashbrown3map10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENcNtNtB2t_5WalOp5Write0EEB2t_(ptr noalias noundef align 8 dereferenceable(64) %1) #22
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.thread:                                          ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpE7reserveBF_.exit, %_RNvXsk_NtCsc96bKABWO34_9hashbrown3mapINtB5_10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1s_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49.i)
  br label %.loopexit

bb.g:                                             ; preds = %_RNvXsk_NtCsc96bKABWO34_9hashbrown3mapINtB5_10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1s_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.49.i, i64 96, i1 false), !noalias !56
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.49.i)
  %.not = icmp eq i64 %.sroa.08.0.copyload.i, -2
  br i1 %.not, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.08.0.copyload.i, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6, i64 96, i1 false)
  %i.af = load i64, ptr %i.i, align 8, !noundef !3 ; 5 uses
  %i.ag = icmp ult i64 %i.af, 88686269585142076
  call void @llvm.assume(i1 %i.ag)
  %i.ah = load i64, ptr %0, align 8, !range !27, !noundef !3
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.l, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpE7reserveBF_.exit

.loopexit:                                        ; preds = %bb.g, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvMsn_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_7RawIterTINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEE13drop_elementsB1x_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.aj)
  %i.ak = load i64, ptr %1, align 8, !range !76, !alias.scope !77, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsc96bKABWO34_9hashbrown3map10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENcNtNtB2t_5WalOp5Write0EEB2t_.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !77, !noundef !3 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsc96bKABWO34_9hashbrown3map10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENcNtNtB2t_5WalOp5Write0EEB2t_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !77, !nonnull !3, !noundef !3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) %i.ak) #23
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsc96bKABWO34_9hashbrown3map10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENcNtNtB2t_5WalOp5Write0EEB2t_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsc96bKABWO34_9hashbrown3map10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENcNtNtB2t_5WalOp5Write0EEB2t_.exit: ; preds = %.loopexit, %bb.i, %bb.j
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpE7reserveBF_.exit: ; preds = %bb.l, %bb.h
  %i.aq = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3
  %i.ar = getelementptr inbounds nuw [104 x i8], ptr %i.aq, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ar, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false)
  %i.as = add nuw nsw i64 %i.af, 1
  store i64 %i.as, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.49.i)
  %i.at = load i64, ptr %i.c, align 8, !alias.scope !88, !noalias !53, !noundef !3 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.thread, label %bb.b

bb.k:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpEBD_(ptr noalias noundef align 8 dereferenceable(104) %i.b) #22
          to label %bb.e unwind label %bb.m

bb.l:                                             ; preds = %bb.h
  %.val = load i64, ptr %i.c, align 8, !noundef !3
  %i.aw = call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1)
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.af, i64 noundef range(i64 1, 0) %i.aw, i64 noundef 8, i64 noundef 104)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtCs1ElB0qm0ygX_13influxdb3_wal5WalOpE7reserveBF_.exit unwind label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.e
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1ElB0qm0ygX_13influxdb3_wal(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias noundef nonnull readonly captures(none) %4, i64 noundef range(i64 0, -9223372036854775808) %5, i1 noundef zeroext %6) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.b = add nsw i64 %5, -1                       ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.c = add i64 %i.b, %.promoted                 ; 2 uses
  %i.d = icmp ult i64 %i.c, %3
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  %i.g = load i64, ptr %1, align 8                ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = sub i64 %5, %i.j
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter15SplitTerminatorReENCNvMNtCs1LivM9IBWqb_12object_store4pathNtB1E_4Path5parts0ENtNtNtB9_6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal:bb.a
  %i.av = icmp samesign ne i64 %i.au, %.val1.i.i
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i8, ptr %i.at, align 1, !noalias !323, !noundef !3
  %i.ax = shl nuw nsw i32 %i.z, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.ap, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = zext nneg i8 %i.v to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i.peel.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.peel.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.peel.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i = phi i32 [ %i.ar, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.peel.i.i ], [ %i.bd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i.peel.i.i ], [ %i.ag, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.peel.i.i ], [ %i.be, %bb.g ] ; 4 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bf)
  br i1 %i.n, label %.sink.split.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 128
  br i1 %i.bg, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 2048
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i, 65536
  %..i.i.peel.i.i = select i1 %i.bi, i64 3, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !311, !noalias !306, !noundef !3
  %i.bl = icmp eq i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !311, !noalias !306, !nonnull !3, !noundef !3 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !311, !noalias !306, !noundef !3 ; 2 uses
  br i1 %i.bl, label %bb.t, label %bb.u

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.i.i.peel.i.i = phi i64 [ 2, %bb.j ], [ %..i.i.peel.i.i, %bb.k ], [ 1, %bb.i ]
  %i.bq = add i64 %.sroa.01.0.i.i.peel.i.i, %.promoted.i.i.i ; 16 uses
  store i64 %i.bq, ptr %i.i, align 8, !alias.scope !326, !noalias !315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i.i = icmp ult i64 %i.bq, %.val1.i.i
  br i1 %.not.i.i.i.i.i, label %bb.o, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.n
  %i.bs = icmp eq i64 %i.bq, %.val1.i.i
  br i1 %i.bs, label %bb.p, label %.loopexit.i.i

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !319, !noalias !328, !noundef !3
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %bb.p, label %.loopexit.i.i

bb.p:                                             ; preds = %bb.o, %.split.i.i.i.i.i, %bb.m
  %i.bw = icmp samesign eq i64 %i.bq, %.val1.i.i
  br i1 %i.bw, label %.sink.split.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bq
  %i.by = load i8, ptr %i.bx, align 1, !noalias !329, !noundef !3 ; 3 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %.sink.split.i.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.i.i: ; preds = %bb.q
  %i.ca = add nuw nsw i64 %i.bq, 1
  %i.cb = icmp samesign ne i64 %i.ca, %.val1.i.i
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp samesign ugt i8 %i.by, -33
  br i1 %i.cc, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.i.i, label %.sink.split.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.i.i
  %i.cd = add nuw nsw i64 %i.bq, 2
  %i.ce = icmp samesign ne i64 %i.cd, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp samesign ugt i8 %i.by, -17
  br i1 %i.cf, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i.i.i, label %.sink.split.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.i.i
  %i.cg = add nuw nsw i64 %i.bq, 3
  %i.ch = icmp samesign ne i64 %i.cg, %.val1.i.i
  tail call void @llvm.assume(i1 %i.ch)
  br label %.sink.split.i.i

.loopexit.i.i:                                    ; preds = %bb.o, %.split.i.i.i.i.i, %bb.d, %.split.i.i.i.peel.i.i
  %.lcssa15.i.i = phi i8 [ %.promoted26.i.i.i, %.split.i.i.i.peel.i.i ], [ %.promoted26.i.i.i, %bb.d ], [ 1, %.split.i.i.i.i.i ], [ 1, %bb.o ]
  %.lcssa12.i.i = phi i64 [ %.promoted.i.i.i, %.split.i.i.i.peel.i.i ], [ %.promoted.i.i.i, %bb.d ], [ %i.bq, %.split.i.i.i.i.i ], [ %i.bq, %bb.o ]
  %i.ci = xor i8 %.lcssa15.i.i, 1
  store i8 %i.ci, ptr %i.m, align 8, !alias.scope !312, !noalias !315
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, i64 noundef %.lcssa12.i.i, i64 noundef %.val1.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #24, !noalias !328
  unreachable

.loopexit19.i.i:                                  ; preds = %bb.e
  %i.cj = xor i8 %.promoted26.i.i.i, 1
  store i8 %i.cj, ptr %i.m, align 8, !alias.scope !312, !noalias !315
  br i1 %i.n, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit19.i.i
  store i8 1, ptr %i.j, align 2, !alias.scope !312, !noalias !315
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i.i

.sink.split.i.i:                                  ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i.i.i, %bb.q, %bb.p, %bb.h
  %.ph.i.i = phi i64 [ %.val1.i.i, %bb.p ], [ %.promoted.i.i.i, %bb.h ], [ %i.bq, %bb.q ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.i.i ]
  store i8 0, ptr %i.m, align 8, !alias.scope !312, !noalias !315
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i.i, %.loopexit19.i.i
  %i.ck = phi i64 [ %.val1.i.i, %.loopexit19.i.i ], [ %.ph.i.i, %.sink.split.i.i ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ck, ptr %i.cl, align 8, !alias.scope !306, !noalias !311
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ck, ptr %i.cm, align 8, !alias.scope !306, !noalias !311
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i.i: ; preds = %bb.s, %bb.r, %.preheader.i.i.i
  %storemerge.i.i.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ], [ 0, %.preheader.i.i.i ]
  store i64 %storemerge.i.i.i, ptr %i.a, align 8, !alias.scope !306, !noalias !311
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

bb.t:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext true)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

bb.u:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext false)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i: ; preds = %bb.u, %bb.t, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i.i.i
  %i.cn = load i64, ptr %i.a, align 8, !range !240, !noalias !305, !noundef !3
  %i.co = trunc nuw i64 %i.cn to i1
  br i1 %i.co, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !305, !noundef !3
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !noalias !305, !noundef !3
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !305, !noundef !3 ; 2 uses
  %i.cv = sub nuw i64 %i.cq, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.cu
  store i64 %i.cs, ptr %i.ct, align 8, !alias.scope !305
  br label %bb.aa

bb.w:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i
  %i.cx = load i8, ptr %i.b, align 1, !range !304, !alias.scope !330, !noundef !3
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %_RNvXs17_NtNtCs4NRVxsYgnAr_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit.thread6, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.b, align 1, !alias.scope !330
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.da = load i8, ptr %i.cz, align 8, !range !304, !alias.scope !330, !noundef !3
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %._crit_edge.i.i.i, label %bb.y

._crit_edge.i.i.i:                                ; preds = %bb.x
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !330
  %.phi.trans.insert2.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.pre3.i.i.i = load i64, ptr %.phi.trans.insert2.i.i.i, align 8, !alias.scope !330
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !330, !noundef !3 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !330, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.dd, %i.df
  br i1 %.not.i.i.i, label %_RNvXs17_NtNtCs4NRVxsYgnAr_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit.thread6, label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i
  %i.dg = phi i64 [ %.pre3.i.i.i, %._crit_edge.i.i.i ], [ %i.dd, %bb.y ]
  %i.dh = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.df, %bb.y ] ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !330, !nonnull !3, !noundef !3
  %i.di = sub nuw i64 %i.dg, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.dh
  br label %bb.aa

_RNvXs17_NtNtCs4NRVxsYgnAr_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit.thread6: ; preds = %bb.y, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !305
  br label %_RNvXs17_NtNtCs4NRVxsYgnAr_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit.thread

bb.aa:                                            ; preds = %bb.z, %bb.v
  %.sroa.4.0.i.i = phi i64 [ %i.cv, %bb.v ], [ %i.di, %bb.z ]
  %.sroa.0.0.i.i = phi ptr [ %i.cw, %bb.v ], [ %i.dj, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !305
  %2 = ptrtoint ptr %.sroa.0.0.i.i to i64
  store i64 -1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.ab

_RNvXs17_NtNtCs4NRVxsYgnAr_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit.thread: ; preds = %bb.a, %_RNvXs17_NtNtCs4NRVxsYgnAr_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit.thread6
  store i64 -2, ptr %0, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvXs17_NtNtCs4NRVxsYgnAr_4core3str4iterINtB6_15SplitTerminatorReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit.thread, %bb.aa
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodENtB6_5Debug3fmtB16_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !333, !noundef !3 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !3
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodNtB5_5Debug3fmtBz_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtCs87O7Q65ve1k_7bitcode4fastINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB7_7u8_char6U8CharEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_7FastVecB14_EE4fromCs1ElB0qm0ygX_13influxdb3_wal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !noundef !3
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.e
  store i64 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.l, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtCs87O7Q65ve1k_7bitcode4fastINtNtCscdodAO9FK5_5alloc3vec3VecaEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_7FastVecaEE4fromCs1ElB0qm0ygX_13influxdb3_wal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !noundef !3
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.e
  store i64 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.l, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtCs87O7Q65ve1k_7bitcode4fastINtNtCscdodAO9FK5_5alloc3vec3VecbEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_7FastVecbEE4fromCs1ElB0qm0ygX_13influxdb3_wal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !noundef !3
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.e
  store i64 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.l, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtCs87O7Q65ve1k_7bitcode4fastINtNtCscdodAO9FK5_5alloc3vec3VecfEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_7FastVecfEE4fromCs1ElB0qm0ygX_13influxdb3_wal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noundef !3
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.e
  %i.l = lshr i64 %i.k, 2
  store i64 %i.l, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.n, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtCs87O7Q65ve1k_7bitcode4fastINtNtCscdodAO9FK5_5alloc3vec3VechEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_7FastVechEE4fromCs1ElB0qm0ygX_13influxdb3_wal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !noundef !3
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.e
  store i64 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %i.l, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtCs87O7Q65ve1k_7bitcode4fastINtNtCscdodAO9FK5_5alloc3vec3VecjEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_7FastVecjEE4fromCs1ElB0qm0ygX_13influxdb3_wal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noundef !3
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.e
  %i.l = lshr i64 %i.k, 3
  store i64 %i.l, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.n, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtCs87O7Q65ve1k_7bitcode4fastINtNtCscdodAO9FK5_5alloc3vec3VeclEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_7FastVeclEE4fromCs1ElB0qm0ygX_13influxdb3_wal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noundef !3
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.e
  %i.l = lshr i64 %i.k, 2
  store i64 %i.l, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.n, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs2_NtCs87O7Q65ve1k_7bitcode4fastINtNtCscdodAO9FK5_5alloc3vec3VecmEINtNtCs4NRVxsYgnAr_4core7convert4FromINtB5_7FastVecmEE4fromCs1ElB0qm0ygX_13influxdb3_wal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !3
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !noundef !3
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.e
  %i.l = lshr i64 %i.k, 2
  store i64 %i.l, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.n, align 8
  ret void
}

end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodEINtB4_18SpecFromIterNestedB12_INtNtB6_5drain5DrainB12_EE9from_iterB16_:bb.a
  unreachable

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #24
          to label %bb.q unwind label %bb.r

bb.f:                                             ; preds = %.noexc
  %i.r = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.s = icmp ule i64 %i.k, %i.o
  call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.o, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 0, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !340
  invoke void @_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintBS_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
          to label %bb.g unwind label %bb.l, !noalias !343

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !240, !noalias !340, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !340 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !340
  %i.z = trunc nuw i64 %i.w to i1
  br i1 %i.z, label %bb.h, label %bb.j, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp ugt i64 %i.y, %i.o
  br i1 %i.aa, label %bb.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE7reserveBH_.exit.i.i, !prof !33

bb.i:                                             ; preds = %bb.h
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0, i64 noundef %i.y, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE7reserveBH_.exit_crit_edge.i.i unwind label %bb.l

._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE7reserveBH_.exit_crit_edge.i.i: ; preds = %bb.i
  %.pre.i.i = load i64, ptr %i.u, align 8, !alias.scope !343, !noalias !344
  %.pre = load ptr, ptr %i.t, align 8, !alias.scope !343, !noalias !344
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE7reserveBH_.exit.i.i

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
          to label %bb.k unwind label %bb.l, !noalias !343

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE7reserveBH_.exit.i.i: ; preds = %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE7reserveBH_.exit_crit_edge.i.i, %bb.h
  %i.ab = phi ptr [ %.pre, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE7reserveBH_.exit_crit_edge.i.i ], [ %i.r, %bb.h ]
  %i.ac = phi i64 [ %.pre.i.i, %._RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE7reserveBH_.exit_crit_edge.i.i ], [ 0, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !343
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = load ptr, ptr %i.a, align 8, !alias.scope !351, !noalias !354, !nonnull !3, !noundef !3 ; 2 uses
  %i.af = load ptr, ptr %i.ad, align 8, !alias.scope !351, !noalias !354, !nonnull !3, !noundef !3 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE14extend_trustedINtNtB6_5drain5DrainBF_EEBJ_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE7reserveBH_.exit.i.i, %.lr.ph.i.i.i.i
  %i.ah = phi i64 [ %i.al, %.lr.ph.i.i.i.i ], [ %i.ac, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE7reserveBH_.exit.i.i ] ; 2 uses
  %i.ai = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %i.ae, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE7reserveBH_.exit.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 3 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.ah
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false), !noalias !358
  %i.al = add i64 %i.ah, 1                        ; 2 uses
  %i.am = icmp eq ptr %i.aj, %i.af
  br i1 %i.am, label %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB1J_8for_each4callBJ_NCINvMsj_B8_INtB8_3VecBJ_E14extend_trustedB3_E0E0EBN_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i

_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB1J_8for_each4callBJ_NCINvMsj_B8_INtB8_3VecBJ_E14extend_trustedB3_E0E0EBN_.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.aj, ptr %i.a, align 8, !alias.scope !359, !noalias !354
  br label %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE14extend_trustedINtNtB6_5drain5DrainBF_EEBJ_.exit.i

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.f
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE14extend_trustedINtNtB6_5drain5DrainBF_EEBJ_.exit.i: ; preds = %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB1J_8for_each4callBJ_NCINvMsj_B8_INtB8_3VecBJ_E14extend_trustedB3_E0E0EBN_.exit.loopexit.i.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE7reserveBH_.exit.i.i
  %.val5.i.i.i.i = phi i64 [ %i.ac, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE7reserveBH_.exit.i.i ], [ %i.al, %_RINvYINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvB1J_8for_each4callBJ_NCINvMsj_B8_INtB8_3VecBJ_E14extend_trustedB3_E0E0EBN_.exit.loopexit.i.i.i ]
  store i64 %.val5.i.i.i.i, ptr %i.u, align 8, !alias.scope !343, !noalias !361
  invoke void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE14extend_trustedINtNtB6_5drain5DrainBF_EEBJ_.exit.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.n ], [ %lpad.thr_comm.i.i, %bb.l ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodEEB1l_.exit unwind label %bb.p

bb.o:                                             ; preds = %_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE14extend_trustedINtNtB6_5drain5DrainBF_EEBJ_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.p:                                             ; preds = %bb.r, %.body
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.q:                                             ; preds = %bb.e
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodEEB1l_.exit: ; preds = %bb.r, %.body
  %.pn9 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.aq, %bb.r ]
  resume { ptr, i32 } %.pn9

bb.r:                                             ; preds = %bb.d, %bb.c, %bb.e, %bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec5drain5DrainNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodEEB1l_.exit unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !365
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !365
  %i.f = load i64, ptr %i.a, align 8, !range !240, !noalias !365, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !76, !noalias !365, !noundef !3 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1ElB0qm0ygX_13influxdb3_wal.exit.i, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !noalias !365
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24, !noalias !365
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1ElB0qm0ygX_13influxdb3_wal.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !noalias !365, !nonnull !3, !noundef !3 ; 2 uses
  %i.m = icmp ule i64 %i.e, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !365
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e
  %i.o = icmp eq i64 %i.i, 0
  br i1 %i.o, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB13_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1ElB0qm0ygX_13influxdb3_wal.exit.i, %bb.e
  %.sroa.014.024.i = phi ptr [ %i.v, %bb.e ], [ %i.d, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1ElB0qm0ygX_13influxdb3_wal.exit.i ] ; 4 uses
  %.sroa.7.023.i = phi i64 [ %i.u, %bb.e ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1ElB0qm0ygX_13influxdb3_wal.exit.i ] ; 2 uses
  %.sroa.10.022.i = phi i64 [ %i.p, %bb.e ], [ %i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1ElB0qm0ygX_13influxdb3_wal.exit.i ]
  %i.p = add i64 %.sroa.10.022.i, -1              ; 2 uses
  %i.q = icmp eq ptr %.sroa.014.024.i, %i.n
  br i1 %i.q, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB13_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.val12.i = load ptr, ptr %.sroa.014.024.i, align 8, !alias.scope !362, !noalias !367, !nonnull !3, !noundef !3 ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.014.024.i, i64 8
  %.val13.i = load ptr, ptr %i.r, align 8, !alias.scope !362, !noalias !367 ; 2 uses
  %i.s = atomicrmw add ptr %.val12.i, i64 1 monotonic, align 8, !noalias !365
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.u = add nuw nsw i64 %.sroa.7.023.i, 1
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.014.024.i, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i) ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.7.023.i ; 2 uses
  store ptr %.val12.i, ptr %i.w, align 8, !noalias !365
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %.val13.i, ptr %i.x, align 8, !noalias !365
  %i.y = icmp eq i64 %i.p, 0
  br i1 %i.y, label %_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB13_.exit, label %.lr.ph.i

_RINvXNvMNtCscdodAO9FK5_5alloc5sliceSp9to_vec_inINtNtB8_4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEB13_.exit: ; preds = %.lr.ph.i, %bb.e, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs1ElB0qm0ygX_13influxdb3_wal.exit.i
  %2 = ptrtoint ptr %i.l to i64
  store i64 %i.i, ptr %0, align 8, !noalias !362
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !362
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !362
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1P_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEEB1N_.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEEB1M_.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEEB1N_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEEB1M_.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEEB1M_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.0.i1 ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  invoke void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTxNtCs1ElB0qm0ygX_13influxdb3_wal10TableChunkENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalEB1o_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 32, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEEB1M_.exit.i unwind label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEEB1M_.exit7.i: ; preds = %.lr.ph3
  %i.j = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.d
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEEB1M_.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.h, %i.d
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEEB1M_.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEEB1M_.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEEB1M_.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %.sroa.0.1.i2 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  invoke void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTxNtCs1ElB0qm0ygX_13influxdb3_wal10TableChunkENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalEB1o_(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef 32, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEEB1M_.exit7.i unwind label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEEB1M_.exit7.i._crit_edge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEEB1M_.exit7.i, %bb.b
  resume { ptr, i32 } %i.l

bb.c:                                             ; preds = %.lr.ph3
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEEB1N_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEEB1M_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EEB1c_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EEB1b_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EEB1b_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !374, !nonnull !3, !noundef !3
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !377
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EEB1b_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_E9drop_slowBI_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EEB1b_.exit.i unwind label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EEB1b_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EEB1c_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.g, %i.d
  br i1 %i.m, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EEB1b_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EEB1b_.exit8.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.o = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !384, !nonnull !3, !noundef !3
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !385
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EEB1b_.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_E9drop_slowBI_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EEB1b_.exit8.i unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EEB1b_.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.s = icmp eq i64 %i.o, %i.d
  br i1 %i.s, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EEB1b_.exit8.i, %bb.c
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EEB1c_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_EEB1b_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1r_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1q_.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1q_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.010.i ; 5 uses
  %i.g = add nuw nsw i64 %.sroa.0.010.i, 1        ; 4 uses
  invoke void @_RNvXs0_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.i = load ptr, ptr %i.f, align 8, !alias.scope !389, !noundef !3 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.body.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !394
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.d, label %.body.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEE9drop_slowB1t_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.body.i unwind label %bb.h

bb.e:                                             ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  %i.m = load ptr, ptr %i.f, align 8, !alias.scope !402, !noundef !3 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1q_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !403
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1q_.exit.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEE9drop_slowB1t_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1q_.exit.i unwind label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1q_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.r = icmp eq i64 %i.g, %i.d
  br i1 %i.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEB1r_.exit, label %.lr.ph.i

bb.i:                                             ; preds = %.lr.ph
  %i.s = add i64 %.sroa.0.1.i24, 1                ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.d
  br i1 %i.t, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.j, %bb.d, %bb.c, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.u, %bb.j ], [ %i.h, %bb.d ], [ %i.h, %bb.c ], [ %i.h, %bb.b ]
end_hunk_2
begin_hunk_3_@_RNvXsf_NtCs2cNydW9rzW9_9hashbrown3rawINtB5_8RawTablejENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs87O7Q65ve1k_7bitcode4fastINtB4_7FastVecNtNtB6_7u8_char6U8CharENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs87O7Q65ve1k_7bitcode4fastINtB4_7FastVecaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs87O7Q65ve1k_7bitcode4fastINtB4_7FastVecbENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs87O7Q65ve1k_7bitcode4fastINtB4_7FastVecfENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs87O7Q65ve1k_7bitcode4fastINtB4_7FastVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs87O7Q65ve1k_7bitcode4fastINtB4_7FastVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs87O7Q65ve1k_7bitcode4fastINtB4_7FastVeclENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs87O7Q65ve1k_7bitcode4fastINtB4_7FastVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs87O7Q65ve1k_7bitcode4fastINtB4_7FastVecnENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs87O7Q65ve1k_7bitcode4fastINtB4_7FastVecoENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs87O7Q65ve1k_7bitcode4fastINtB4_7FastVecsENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs87O7Q65ve1k_7bitcode4fastINtB4_7FastVectENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs87O7Q65ve1k_7bitcode4fastINtB4_7FastVecxENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs87O7Q65ve1k_7bitcode4fastINtB4_7FastVecyENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1W_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCs1ElB0qm0ygX_13influxdb3_wal3RowENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCs1ElB0qm0ygX_13influxdb3_wal5FieldENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs1LivM9IBWqb_12object_store4path4PathENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal3RowENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCseCDlJsl44RV_5tokio4sync7oneshotINtB5_6SenderNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBX_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1ElB0qm0ygX_13influxdb3_wal(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #14

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtCs1ElB0qm0ygX_13influxdb3_wal3RowE8as_sliceBX_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCs1ElB0qm0ygX_13influxdb3_wal15WalFileNotifierEL_E9drop_slowBI_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEE9drop_slowB1t_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtNtCsc96bKABWO34_9hashbrown3raw5innerNtB6_13RawTableInner16drop_inner_tableTxNtCs1ElB0qm0ygX_13influxdb3_wal10TableChunkENtNtNtNtCsawk7LDN2ZMF_14allocator_api26stable5alloc6global6GlobalEB1o_(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodNtB5_5Debug3fmtBz_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #18

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsn_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_7RawIterTINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEE13drop_elementsB1x_(ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { "function-inline-cost-multiplier"="2" }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { cold }
attributes #23 = { nounwind }
attributes #24 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE10retain_mutNCINvB2_6retainNCNvMBG_NtBG_15SnapshotTracker29snapshot_in_order_wal_periodss1_0E0EBI_: argument 0"}
!6 = distinct !{!6, !"_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE10retain_mutNCINvB2_6retainNCNvMBG_NtBG_15SnapshotTracker29snapshot_in_order_wal_periodss1_0E0EBI_"}
!7 = !{!8}
!8 = distinct !{!8, !6, !"_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE10retain_mutNCINvB2_6retainNCNvMBG_NtBG_15SnapshotTracker29snapshot_in_order_wal_periodss1_0E0EBI_: argument 1"}
!9 = !{!5, !8}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE8truncateCs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!15 = distinct !{!15, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE8truncateCs1ElB0qm0ygX_13influxdb3_wal"}
!16 = !{i64 -1, i64 17}
!17 = !{!18, !20}
!18 = distinct !{!18, !19, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!19 = distinct !{!19, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal"}
!20 = distinct !{!20, !21, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!21 = distinct !{!21, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal"}
!22 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal, ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal}
!23 = !{!24, !20}
!24 = distinct !{!24, !25, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!25 = distinct !{!25, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal"}
!26 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal}
!27 = !{i64 0, i64 -9223372036854775808}
!28 = !{!29, !31}
!29 = distinct !{!29, !30, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!30 = distinct !{!30, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE7reserveCs1ElB0qm0ygX_13influxdb3_wal"}
!31 = distinct !{!31, !32, !"_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB1S_7sources11repeat_with10RepeatWithNvYBF_NtNtB1U_7default7Default7defaultEEECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!32 = distinct !{!32, !"_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB1S_7sources11repeat_with10RepeatWithNvYBF_NtNtB1U_7default7Default7defaultEEECs1ElB0qm0ygX_13influxdb3_wal"}
!33 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!34 = !{!31}
!35 = !{!36, !38, !40, !42, !44}
!36 = distinct !{!36, !37, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB1U_7sources11repeat_with10RepeatWithNvYBH_NtNtB1W_7default7Default7defaultEEE0Cs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!37 = distinct !{!37, !"_RNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB8_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4take4TakeINtNtNtB1U_7sources11repeat_with10RepeatWithNvYBH_NtNtB1W_7default7Default7defaultEEE0Cs1ElB0qm0ygX_13influxdb3_wal"}
!38 = distinct !{!38, !39, !"_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2C_3VecB1E_E14extend_trustedIBT_INtNtNtBe_7sources11repeat_with10RepeatWithNvYB1E_NtNtBg_7default7Default7defaultEEE0E0Cs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!39 = distinct !{!39, !"_RNCINvNvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2C_3VecB1E_E14extend_trustedIBT_INtNtNtBe_7sources11repeat_with10RepeatWithNvYB1E_NtNtBg_7default7Default7defaultEEE0E0Cs1ElB0qm0ygX_13influxdb3_wal"}
!40 = distinct !{!40, !41, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter7sources11repeat_withINtB5_10RepeatWithNvYNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderNtNtBb_7default7Default7defaultENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs7_NtNtB9_8adapters4takeINtB3t_4TakepENtB3t_8SpecTake13spec_for_each5checkB1f_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4P_3VecB1f_E14extend_trustedIB3P_BU_EE0E0INtNtBb_6option6OptionjEECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!41 = distinct !{!41, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter7sources11repeat_withINtB5_10RepeatWithNvYNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderNtNtBb_7default7Default7defaultENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNvXs7_NtNtB9_8adapters4takeINtB3t_4TakepENtB3t_8SpecTake13spec_for_each5checkB1f_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4P_3VecB1f_E14extend_trustedIB3P_BU_EE0E0INtNtBb_6option6OptionjEECs1ElB0qm0ygX_13influxdb3_wal"}
!42 = distinct !{!42, !43, !"_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtNtBa_7sources11repeat_with10RepeatWithNvYNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderNtNtBc_7default7Default7defaultEENtB6_8SpecTake13spec_for_eachNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3H_3VecB1J_E14extend_trustedBO_E0ECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!43 = distinct !{!43, !"_RINvXs7_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB6_4TakeINtNtNtBa_7sources11repeat_with10RepeatWithNvYNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderNtNtBc_7default7Default7defaultEENtB6_8SpecTake13spec_for_eachNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3H_3VecB1J_E14extend_trustedBO_E0ECs1ElB0qm0ygX_13influxdb3_wal"}
!44 = distinct !{!44, !45, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB5_4TakeINtNtNtB9_7sources11repeat_with10RepeatWithNvYNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderNtNtBb_7default7Default7defaultEENtNtNtB9_6traits8iterator8Iterator8for_eachNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecB1I_E14extend_trustedBN_E0ECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!45 = distinct !{!45, !"_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4takeINtB5_4TakeINtNtNtB9_7sources11repeat_with10RepeatWithNvYNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderNtNtBb_7default7Default7defaultEENtNtNtB9_6traits8iterator8Iterator8for_eachNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3U_3VecB1I_E14extend_trustedBN_E0ECs1ElB0qm0ygX_13influxdb3_wal"}
!46 = distinct !{!46, !12}
!47 = !{!40, !42, !44}
!48 = !{!49, !51}
!49 = distinct !{!49, !50, !"_RNvXsk_NtCsc96bKABWO34_9hashbrown3mapINtB5_10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1s_: argument 1:pre.rot"}
!50 = distinct !{!50, !"_RNvXsk_NtCsc96bKABWO34_9hashbrown3mapINtB5_10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1s_"}
!51 = distinct !{!51, !52, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtCsc96bKABWO34_9hashbrown3map10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENcNtNtB2g_5WalOp5Write0ENtNtNtB9_6traits8iterator8Iterator4nextB2g_: argument 1:pre.rot"}
!52 = distinct !{!52, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtCsc96bKABWO34_9hashbrown3map10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENcNtNtB2g_5WalOp5Write0ENtNtNtB9_6traits8iterator8Iterator4nextB2g_"}
!53 = !{!54, !55}
!54 = distinct !{!54, !50, !"_RNvXsk_NtCsc96bKABWO34_9hashbrown3mapINtB5_10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1s_: argument 0"}
!55 = distinct !{!55, !52, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtCsc96bKABWO34_9hashbrown3map10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENcNtNtB2g_5WalOp5Write0ENtNtNtB9_6traits8iterator8Iterator4nextB2g_: argument 0"}
!56 = !{!57}
!57 = distinct !{!57, !52, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtCsc96bKABWO34_9hashbrown3map10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENcNtNtB2g_5WalOp5Write0ENtNtNtB9_6traits8iterator8Iterator4nextB2g_: argument 1"}
!58 = !{!59}
!59 = distinct !{!59, !50, !"_RNvXsk_NtCsc96bKABWO34_9hashbrown3mapINtB5_10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1s_: argument 1"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEE9next_implKb0_EB1E_: argument 0"}
!62 = distinct !{!62, !"_RINvMsh_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB6_12RawIterRangeTINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEE9next_implKb0_EB1E_"}
!63 = !{!61, !59, !57}
!64 = !{!61, !54, !59, !55, !57}
!65 = !{!59, !57}
!66 = !{!54, !59, !55, !57}
!67 = !{!55, !57}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!70 = distinct !{!70, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs1ElB0qm0ygX_13influxdb3_wal"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!73 = distinct !{!73, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal"}
!74 = !{!72, !69}
!75 = !{!72, !69, !54, !59, !55, !57}
!76 = !{i64 0, i64 -9223372036854775807}
!77 = !{!78, !80, !82, !84, !86}
!78 = distinct !{!78, !79, !"_RNvXsz_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_11RawIntoIterTINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1C_: argument 0"}
!79 = distinct !{!79, !"_RNvXsz_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_11RawIntoIterTINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1C_"}
!80 = distinct !{!80, !81, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc96bKABWO34_9hashbrown3raw5inner11RawIntoIterTINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEEEB25_: argument 0"}
!81 = distinct !{!81, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc96bKABWO34_9hashbrown3raw5inner11RawIntoIterTINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEEEB25_"}
!82 = distinct !{!82, !83, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map8IntoIterINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEEB1S_: argument 0"}
!83 = distinct !{!83, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map8IntoIterINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEEB1S_"}
!84 = distinct !{!84, !85, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEEB1V_: argument 0"}
!85 = distinct !{!85, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEEB1V_"}
!86 = distinct !{!86, !87, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsc96bKABWO34_9hashbrown3map10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENcNtNtB2t_5WalOp5Write0EEB2t_: argument 0"}
!87 = distinct !{!87, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsc96bKABWO34_9hashbrown3map10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENcNtNtB2t_5WalOp5Write0EEB2t_"}
!88 = !{!89, !90}
!89 = distinct !{!89, !50, !"_RNvXsk_NtCsc96bKABWO34_9hashbrown3mapINtB5_10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB1s_: argument 1:h.rot"}
!90 = distinct !{!90, !52, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtCsc96bKABWO34_9hashbrown3map10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchENcNtNtB2g_5WalOp5Write0ENtNtNtB9_6traits8iterator8Iterator4nextB2g_: argument 1:h.rot"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_RNvXsy_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!93 = distinct !{!93, !"_RNvXsy_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1P_: argument 0"}
!96 = distinct !{!96, !"_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs96Uix8yqi9Q_8indexmap6BucketNtCsbFlE7Gjht9i_12influxdb3_id7TableIdNtCs1ElB0qm0ygX_13influxdb3_wal11TableChunksEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1P_"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!99 = distinct !{!99, !"_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal"}
!100 = !{i64 -1, i64 -9223372036854775808}
!101 = !{!102, !104, !106}
!102 = distinct !{!102, !103, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!103 = distinct !{!103, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs1ElB0qm0ygX_13influxdb3_wal"}
!104 = distinct !{!104, !105, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!105 = distinct !{!105, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECs1ElB0qm0ygX_13influxdb3_wal"}
!106 = distinct !{!106, !107, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!107 = distinct !{!107, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECs1ElB0qm0ygX_13influxdb3_wal"}
!108 = !{!109, !111, !106}
!109 = distinct !{!109, !110, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!110 = distinct !{!110, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs1ElB0qm0ygX_13influxdb3_wal"}
!111 = distinct !{!111, !112, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!112 = distinct !{!112, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs1LivM9IBWqb_12object_store4path5parts8PathPartECs1ElB0qm0ygX_13influxdb3_wal"}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!115 = distinct !{!115, !"_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal"}
!116 = !{!117, !119}
!117 = distinct !{!117, !118, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!118 = distinct !{!118, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal"}
!119 = distinct !{!119, !120, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!120 = distinct !{!120, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal"}
!121 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal, ptr @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal, ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal}
!122 = !{!123, !119}
!123 = distinct !{!123, !124, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!124 = distinct !{!124, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal"}
!125 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal, ptr @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!128 = distinct !{!128, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal"}
!129 = !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!132 = distinct !{!132, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal"}
!133 = distinct !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal, null}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!136 = distinct !{!136, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!139 = distinct !{!139, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal"}
!140 = distinct !{null}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_: argument 0"}
!143 = distinct !{!143, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_"}
!144 = !{!145, !147, !142}
!145 = distinct !{!145, !146, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_: argument 0"}
!146 = distinct !{!146, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_"}
!147 = distinct !{!147, !148, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_: argument 0"}
!148 = distinct !{!148, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_: argument 0"}
!151 = distinct !{!151, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEEB2i_"}
!152 = !{!153, !155, !150}
!153 = distinct !{!153, !154, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_: argument 0"}
!154 = distinct !{!154, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1t_"}
!155 = distinct !{!155, !156, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_: argument 0"}
!156 = distinct !{!156, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcINtNtNtCseCDlJsl44RV_5tokio4sync7oneshot5InnerNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store11WriteResultEEEB1W_"}
!157 = !{!158, !160, !162, !164}
!158 = distinct !{!158, !159, !"_RNvXsz_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_11RawIntoIterTINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1C_: argument 0"}
!159 = distinct !{!159, !"_RNvXsz_NtNtCsc96bKABWO34_9hashbrown3raw5innerINtB5_11RawIntoIterTINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1C_"}
!160 = distinct !{!160, !161, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc96bKABWO34_9hashbrown3raw5inner11RawIntoIterTINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEEEB25_: argument 0"}
!161 = distinct !{!161, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc96bKABWO34_9hashbrown3raw5inner11RawIntoIterTINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEEEB25_"}
!162 = distinct !{!162, !163, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map8IntoIterINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEEB1S_: argument 0"}
!163 = distinct !{!163, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map8IntoIterINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEEB1S_"}
!164 = distinct !{!164, !165, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEEB1V_: argument 0"}
!165 = distinct !{!165, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc96bKABWO34_9hashbrown3map10IntoValuesINtNtCscdodAO9FK5_5alloc4sync3ArceENtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEEB1V_"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs1ElB0qm0ygX_13influxdb3_wal5FieldEEB19_: argument 0"}
!168 = distinct !{!168, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs1ElB0qm0ygX_13influxdb3_wal5FieldEEB19_"}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs1ElB0qm0ygX_13influxdb3_wal5FieldENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBG_: argument 0"}
!171 = distinct !{!171, !"_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs1ElB0qm0ygX_13influxdb3_wal5FieldENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBG_"}
!172 = !{!170, !167}
!173 = !{i8 0, i8 8}
!174 = !{!175, !177, !179}
!175 = distinct !{!175, !176, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1ElB0qm0ygX_13influxdb3_wal9FieldDataEBD_: argument 0"}
!176 = distinct !{!176, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1ElB0qm0ygX_13influxdb3_wal9FieldDataEBD_"}
!177 = distinct !{!177, !178, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1ElB0qm0ygX_13influxdb3_wal5FieldEBD_: argument 0"}
!178 = distinct !{!178, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1ElB0qm0ygX_13influxdb3_wal5FieldEBD_"}
!179 = distinct !{!179, !180, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtCs1ElB0qm0ygX_13influxdb3_wal5FieldEBE_: argument 0"}
!180 = distinct !{!180, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtCs1ElB0qm0ygX_13influxdb3_wal5FieldEBE_"}
!181 = !{!182, !184, !179}
!182 = distinct !{!182, !183, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1ElB0qm0ygX_13influxdb3_wal9FieldDataEBD_: argument 0"}
!183 = distinct !{!183, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1ElB0qm0ygX_13influxdb3_wal9FieldDataEBD_"}
!184 = distinct !{!184, !185, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1ElB0qm0ygX_13influxdb3_wal5FieldEBD_: argument 0"}
!185 = distinct !{!185, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1ElB0qm0ygX_13influxdb3_wal5FieldEBD_"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEBD_: argument 0"}
!188 = distinct !{!188, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs1ElB0qm0ygX_13influxdb3_wal10WriteBatchEBD_"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!191 = distinct !{!191, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs1ElB0qm0ygX_13influxdb3_wal"}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!194 = distinct !{!194, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal"}
!195 = !{!193, !190, !187}
!196 = !{i64 0, i64 17}
!197 = distinct !{null}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderEECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!200 = distinct !{!200, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderEECs1ElB0qm0ygX_13influxdb3_wal"}
!201 = !{!202, !199}
!202 = distinct !{!202, !203, !"_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!203 = distinct !{!203, !"_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal"}
!204 = distinct !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderEECs1ElB0qm0ygX_13influxdb3_wal, null, ptr @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs1ElB0qm0ygX_13influxdb3_wal}
!205 = distinct !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderEECs1ElB0qm0ygX_13influxdb3_wal, null}
!206 = distinct !{null}
!207 = !{!208}
!208 = distinct !{!208, !209, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxTNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderB1a_EEECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!209 = distinct !{!209, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxTNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderB1a_EEECs1ElB0qm0ygX_13influxdb3_wal"}
!210 = distinct !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxTNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderB1a_EEECs1ElB0qm0ygX_13influxdb3_wal, null, null}
!211 = distinct !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxTNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderB1a_EEECs1ElB0qm0ygX_13influxdb3_wal, null}
!212 = distinct !{null}
!213 = !{!214}
!214 = distinct !{!214, !215, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderEECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!215 = distinct !{!215, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderEECs1ElB0qm0ygX_13influxdb3_wal"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!218 = distinct !{!218, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal"}
!219 = distinct !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderEECs1ElB0qm0ygX_13influxdb3_wal, null, ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal}
!220 = distinct !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderEECs1ElB0qm0ygX_13influxdb3_wal, null}
!221 = !{!222}
!222 = distinct !{!222, !223, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderEECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!223 = distinct !{!223, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderEECs1ElB0qm0ygX_13influxdb3_wal"}
!224 = !{!225, !227}
!225 = distinct !{!225, !226, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!226 = distinct !{!226, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal"}
!227 = distinct !{!227, !228, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!228 = distinct !{!228, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal"}
!229 = distinct !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal, null, ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal}
!230 = !{!231, !227}
!231 = distinct !{!231, !232, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!232 = distinct !{!232, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal"}
!233 = distinct !{ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal, null}
!234 = !{!235}
!235 = distinct !{!235, !236, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!236 = distinct !{!236, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal"}
!237 = !{!238}
!238 = distinct !{!238, !239, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal: argument 0"}
!239 = distinct !{!239, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs87O7Q65ve1k_7bitcode5serde3ser11LazyEncoderECs1ElB0qm0ygX_13influxdb3_wal"}
!240 = !{i64 0, i64 2}
!241 = !{!242}
!242 = distinct !{!242, !243, !"_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtB2g_10take_while9TakeWhileINtNtNtB2k_5slice4iter4IterBQ_ENCNvMBS_NtBS_15SnapshotTracker29snapshot_in_order_wal_periods0EEE11spec_extendBU_: argument 0"}
!243 = distinct !{!243, !"_RNvXNtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB4_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodEINtB2_10SpecExtendBQ_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtB2g_10take_while9TakeWhileINtNtNtB2k_5slice4iter4IterBQ_ENCNvMBS_NtBS_15SnapshotTracker29snapshot_in_order_wal_periods0EEE11spec_extendBU_"}
!244 = !{!245}
!245 = distinct !{!245, !246, !"_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtB22_10take_while9TakeWhileINtNtNtB26_5slice4iter4IterBF_ENCNvMBH_NtBH_15SnapshotTracker29snapshot_in_order_wal_periods0EEEBJ_: argument 0"}
!246 = distinct !{!246, !"_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtCs1ElB0qm0ygX_13influxdb3_wal16snapshot_tracker9WalPeriodE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtB22_10take_while9TakeWhileINtNtNtB26_5slice4iter4IterBF_ENCNvMBH_NtBH_15SnapshotTracker29snapshot_in_order_wal_periods0EEEBJ_"}
!247 = !{!242, !248}
end_hunk_3
