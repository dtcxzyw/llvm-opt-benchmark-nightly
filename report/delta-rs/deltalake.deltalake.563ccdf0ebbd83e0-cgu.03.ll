begin_hunk_0

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !7102, !nonnull !11, !noundef !11 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !7102, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7102
  switch i64 %i.aa, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ab = load i8, ptr %i.y, align 1, !alias.scope !7105, !noalias !7108, !noundef !11 ; 2 uses
  switch i8 %i.ab, label %bb.k [
    i8 43, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i
    i8 45, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.i
  %.pr.i.i.i = load i8, ptr %i.y, align 1, !alias.scope !7105, !noalias !7108
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split.i.i.i, %bb.j
  %7 = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.ab, %bb.j ]
  %cond.i.i.i = icmp eq i8 %7, 43                 ; 2 uses
  %i.ac = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.aa, %i.ac    ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.ad = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.ad, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.k
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i, label %.lr.ph.i.i.i

.preheader56.i.i.i:                               ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i91, i64 1
end_hunk_0
begin_hunk_1
  %or.cond.i.i = select i1 %i.am, i1 true, i1 %i.ap, !prof !7110
  br i1 %or.cond.i.i, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i, label %.preheader56.i.i.i, !prof !7110

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.m
  %.sroa.0.269.i.i.i = phi ptr [ %i.aw, %bb.m ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.av, %bb.m ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.ay, %bb.m ], [ 0, %.preheader.i.i.i ]
  %i.aq = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !7105, !noalias !7108, !noundef !11
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 2 uses
end_hunk_1
begin_hunk_2
  %.not53.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not53.i.i.i, label %_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i, label %.lr.ph.i.i.i

_RNvMsv_NtCsbvkFyIu7lgC_4core3numj16from_ascii_radix.exit.i.i: ; preds = %bb.l, %.preheader56.i.i.i.preheader, %.preheader56.i.i.i, %bb.m, %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.j, %bb.j, %bb.i, %bb.h
  %.sroa.0.1.i.i = phi i64 [ 2097152, %bb.h ], [ 0, %.preheader.i.i.i ], [ 2097152, %bb.j ], [ 2097152, %bb.i ], [ 2097152, %bb.j ], [ %i.ay, %bb.m ], [ 2097152, %.lr.ph.i.i.i ], [ 2097152, %bb.l ], [ 2097152, %.preheader56.i.i.i.preheader ], [ %i.ao, %.preheader56.i.i.i ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCNCINvNtNtCs2pqxYH9ZEk8_3std6thread9lifecycle15spawn_uncheckedNCINvMs0_NtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processorNtB19_18BatchSpanProcessor3newNtNtCs1e4wyRlCFp2_18opentelemetry_otlp4span12SpanExporterE0uE00Cs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.n

end_hunk_2
