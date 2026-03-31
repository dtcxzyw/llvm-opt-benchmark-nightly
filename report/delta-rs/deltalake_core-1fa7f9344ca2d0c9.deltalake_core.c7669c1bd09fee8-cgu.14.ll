begin_hunk_0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, i64 16, i1 false)
  store i64 %.sroa.07.0.copyload.i.i.i, ptr %i.q, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !7215)
  %i.x = load ptr, ptr %.sroa.59.0..sroa_idx.i.i.i, align 8, !alias.scope !7215, !nonnull !12, !noundef !12 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !7215, !noundef !12 ; 2 uses
  switch i64 %i.z, label %thread-pre-split.i.i.i.i.i [
    i64 0, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.aa = load i8, ptr %i.x, align 1, !alias.scope !7218, !noalias !7221, !noundef !12 ; 2 uses
  switch i8 %i.aa, label %bb.f [
    i8 43, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i
    i8 45, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i:                       ; preds = %bb.d
  %.pr.i.i.i.i.i = load i8, ptr %i.x, align 1, !alias.scope !7218, !noalias !7221
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split.i.i.i.i.i, %bb.e
  %2 = phi i8 [ %.pr.i.i.i.i.i, %thread-pre-split.i.i.i.i.i ], [ %i.aa, %bb.e ]
  %cond.i.i.i.i.i = icmp eq i8 %2, 43             ; 2 uses
  %i.ab = sext i1 %cond.i.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i.i = add nsw i64 %i.z, %i.ab ; 4 uses
  %.sroa.0.0.idx.i.i.i.i.i = zext i1 %cond.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.0.0.idx.i.i.i.i.i ; 2 uses
  %i.ac = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i, 17
  br i1 %i.ac, label %.preheader.i.i.i.i.i, label %.preheader56.i.i.i.i.i.preheader

.preheader.i.i.i.i.i:                             ; preds = %bb.f
  %.not5366.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i, 0
  br i1 %.not5366.i.i.i.i.i, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader56.i.i.i.i.i:                           ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i22, i64 1
end_hunk_0
begin_hunk_1
  %or.cond.i.i.i.i = select i1 %i.al, i1 true, i1 %i.ao, !prof !7223
  br i1 %or.cond.i.i.i.i, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i, label %.preheader56.i.i.i.i.i, !prof !7223

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.h
  %.sroa.0.269.i.i.i.i.i = phi ptr [ %i.av, %bb.h ], [ %.sroa.0.0.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i.i.i = phi i64 [ %i.au, %bb.h ], [ %.sroa.15.0.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %.sroa.042.267.i.i.i.i.i = phi i64 [ %i.ax, %bb.h ], [ 0, %.preheader.i.i.i.i.i ]
  %i.ap = load i8, ptr %.sroa.0.269.i.i.i.i.i, align 1, !alias.scope !7218, !noalias !7221, !noundef !12
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -48                  ; 2 uses
end_hunk_1
begin_hunk_2
  %.not53.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not53.i.i.i.i.i, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i: ; preds = %bb.g, %.preheader56.i.i.i.i.i.preheader, %.preheader56.i.i.i.i.i, %bb.h, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.e, %bb.e, %bb.d
  %.sroa.102.0.i.i.i.i = phi i64 [ undef, %bb.e ], [ 0, %.preheader.i.i.i.i.i ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %.lr.ph.i.i.i.i.i ], [ %i.ax, %bb.h ], [ undef, %bb.g ], [ %i.an, %.preheader56.i.i.i.i.i ], [ undef, %.preheader56.i.i.i.i.i.preheader ] ; 3 uses
  %.sink.i.i.i.i.i = phi i1 [ true, %bb.e ], [ false, %.preheader.i.i.i.i.i ], [ true, %bb.d ], [ true, %bb.e ], [ %i.as, %bb.h ], [ %i.as, %.lr.ph.i.i.i.i.i ], [ true, %bb.g ], [ false, %.preheader56.i.i.i.i.i ], [ true, %.preheader56.i.i.i.i.i.preheader ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer16upload_part_size00Bb_.exit.i.i.i unwind label %bb.i

end_hunk_2
begin_hunk_3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, i64 16, i1 false)
  store i64 %.sroa.06.0.copyload.i.i.i, ptr %i.a, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !7230)
  %i.h = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !7230, !nonnull !12, !noundef !12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !7230, !noundef !12 ; 2 uses
  switch i64 %i.j, label %thread-pre-split.i.i.i.i.i [
    i64 0, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = load i8, ptr %i.h, align 1, !alias.scope !7233, !noalias !7236, !noundef !12 ; 2 uses
  switch i8 %i.k, label %bb.f [
    i8 43, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i
    i8 45, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i:                       ; preds = %bb.d
  %.pr.i.i.i.i.i = load i8, ptr %i.h, align 1, !alias.scope !7233, !noalias !7236
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split.i.i.i.i.i, %bb.e
  %2 = phi i8 [ %.pr.i.i.i.i.i, %thread-pre-split.i.i.i.i.i ], [ %i.k, %bb.e ]
  %cond.i.i.i.i.i = icmp eq i8 %2, 43             ; 2 uses
  %i.l = sext i1 %cond.i.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i.i = add nsw i64 %i.j, %i.l  ; 4 uses
  %.sroa.0.0.idx.i.i.i.i.i = zext i1 %cond.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.0.0.idx.i.i.i.i.i ; 2 uses
  %i.m = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i, 17
  br i1 %i.m, label %.preheader.i.i.i.i.i, label %.preheader56.i.i.i.i.i.preheader

.preheader.i.i.i.i.i:                             ; preds = %bb.f
  %.not5366.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i, 0
  br i1 %.not5366.i.i.i.i.i, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader56.i.i.i.i.i:                           ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i16, i64 1
end_hunk_3
begin_hunk_4
  %or.cond.i.i.i.i = select i1 %i.v, i1 true, i1 %i.y, !prof !7223
  br i1 %or.cond.i.i.i.i, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i, label %.preheader56.i.i.i.i.i, !prof !7223

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.h
  %.sroa.0.269.i.i.i.i.i = phi ptr [ %i.af, %bb.h ], [ %.sroa.0.0.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i.i.i = phi i64 [ %i.ae, %bb.h ], [ %.sroa.15.0.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %.sroa.042.267.i.i.i.i.i = phi i64 [ %i.ah, %bb.h ], [ 0, %.preheader.i.i.i.i.i ]
  %i.z = load i8, ptr %.sroa.0.269.i.i.i.i.i, align 1, !alias.scope !7233, !noalias !7236, !noundef !12
  %i.aa = zext i8 %i.z to i32
  %i.ab = add nsw i32 %i.aa, -48                  ; 2 uses
end_hunk_4
begin_hunk_5
  %.not53.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not53.i.i.i.i.i, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i: ; preds = %bb.g, %.preheader56.i.i.i.i.i.preheader, %.preheader56.i.i.i.i.i, %bb.h, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.e, %bb.e, %bb.d
  %.sink.i.i.i.i.i = phi i64 [ 10, %bb.e ], [ 0, %.preheader.i.i.i.i.i ], [ 10, %bb.d ], [ 10, %bb.e ], [ 10, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.h ], [ 10, %bb.g ], [ %i.x, %.preheader56.i.i.i.i.i ], [ 10, %.preheader56.i.i.i.i.i.preheader ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writer25get_max_concurrency_tasks00Bb_.exit.i.i.i unwind label %bb.i

end_hunk_5
begin_hunk_6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, i64 16, i1 false)
  store i64 %.sroa.06.0.copyload.i.i.i, ptr %i.a, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !7238)
  %i.h = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !7238, !nonnull !12, !noundef !12 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !7238, !noundef !12 ; 2 uses
  switch i64 %i.j, label %thread-pre-split.i.i.i.i.i [
    i64 0, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = load i8, ptr %i.h, align 1, !alias.scope !7241, !noalias !7244, !noundef !12 ; 2 uses
  switch i8 %i.k, label %bb.f [
    i8 43, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i
    i8 45, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i:                       ; preds = %bb.d
  %.pr.i.i.i.i.i = load i8, ptr %i.h, align 1, !alias.scope !7241, !noalias !7244
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split.i.i.i.i.i, %bb.e
  %2 = phi i8 [ %.pr.i.i.i.i.i, %thread-pre-split.i.i.i.i.i ], [ %i.k, %bb.e ]
  %cond.i.i.i.i.i = icmp eq i8 %2, 43             ; 2 uses
  %i.l = sext i1 %cond.i.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i.i = add nsw i64 %i.j, %i.l  ; 4 uses
  %.sroa.0.0.idx.i.i.i.i.i = zext i1 %cond.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.0.0.idx.i.i.i.i.i ; 2 uses
  %i.m = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i, 17
  br i1 %i.m, label %.preheader.i.i.i.i.i, label %.preheader56.i.i.i.i.i.preheader

.preheader.i.i.i.i.i:                             ; preds = %bb.f
  %.not5366.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i, 0
  br i1 %.not5366.i.i.i.i.i, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.preheader56.i.i.i.i.i:                           ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i20, i64 1
end_hunk_6
begin_hunk_7
  %or.cond.i.i.i.i = select i1 %i.v, i1 true, i1 %i.y, !prof !7223
  br i1 %or.cond.i.i.i.i, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i, label %.preheader56.i.i.i.i.i, !prof !7223

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.h
  %.sroa.0.269.i.i.i.i.i = phi ptr [ %i.af, %bb.h ], [ %.sroa.0.0.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i.i.i = phi i64 [ %i.ae, %bb.h ], [ %.sroa.15.0.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %.sroa.042.267.i.i.i.i.i = phi i64 [ %i.ah, %bb.h ], [ 0, %.preheader.i.i.i.i.i ]
  %i.z = load i8, ptr %.sroa.0.269.i.i.i.i.i, align 1, !alias.scope !7241, !noalias !7244, !noundef !12
  %i.aa = zext i8 %i.z to i32
  %i.ab = add nsw i32 %i.aa, -48                  ; 2 uses
end_hunk_7
begin_hunk_8
  %.not53.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not53.i.i.i.i.i, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i.i.i: ; preds = %bb.g, %.preheader56.i.i.i.i.i.preheader, %.preheader56.i.i.i.i.i, %bb.h, %.lr.ph.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.e, %bb.e, %bb.d
  %.sroa.102.0.i.i.i.i = phi i64 [ undef, %bb.e ], [ 0, %.preheader.i.i.i.i.i ], [ undef, %bb.d ], [ undef, %bb.e ], [ undef, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.h ], [ undef, %bb.g ], [ %i.x, %.preheader56.i.i.i.i.i ], [ undef, %.preheader56.i.i.i.i.i.preheader ]
  %.sink.i.i.i.i.i = phi i1 [ true, %bb.e ], [ false, %.preheader.i.i.i.i.i ], [ true, %bb.d ], [ true, %bb.e ], [ %i.ac, %bb.h ], [ %i.ac, %.lr.ph.i.i.i.i.i ], [ true, %bb.g ], [ false, %.preheader56.i.i.i.i.i ], [ true, %.preheader56.i.i.i.i.i.preheader ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write9execution22max_concurrent_writers00Bb_.exit.i.i.i unwind label %bb.i

end_hunk_8
