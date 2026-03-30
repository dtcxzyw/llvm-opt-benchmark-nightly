begin_hunk_0
  %i.ai = alloca [32 x i8], align 8               ; 4 uses
  %i.aj = alloca [40 x i8], align 8               ; 8 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [88 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @_RNvMs4_NtCs4lawaffTVVK_9sqlparser6parserNtB5_6Parser10peek_token(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2)
  %i.am = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
end_hunk_0
begin_hunk_1
  ret void

bb.c:                                             ; preds = %bb.g, %bb.a
  %i.ap = load i8, ptr %i.al, align 8, !range !1749, !noundef !3 ; 2 uses
  switch i8 %i.ap, label %bb.db [
    i8 1, label %bb.h
    i8 23, label %bb.df
end_hunk_1
begin_hunk_2
  br label %bb.c

bb.h:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 18 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %i.az = load i16, ptr %i.ay, align 4, !range !28276, !noundef !3
  switch i16 %i.az, label %.thread42 [
    i16 607, label %bb.cz
    i16 26, label %bb.cx
    i16 1000, label %bb.cv
end_hunk_2
begin_hunk_3
  invoke void @_RNvMs4_NtCs4lawaffTVVK_9sqlparser6parserNtB5_6Parser14peek_nth_token(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, i64 noundef 1)
          to label %bb.ao unwind label %bb.an

.thread42:                                        ; preds = %bb.h
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %3, align 8
  store i64 3, ptr %0, align 8
  br label %bb.dk

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, i64 32, i1 false)
end_hunk_3
begin_hunk_4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.m

.thread41.sink.split:                             ; preds = %bb.c, %bb.c, %bb.dj, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %bb.dd, %bb.dc
  %.sink = phi i8 [ 16, %bb.dj ], [ 40, %bb.dc ], [ 100, %bb.dd ], [ 23, %bb.de ], [ 20, %bb.df ], [ 22, %bb.dg ], [ 50, %bb.dh ], [ 21, %bb.di ], [ 30, %bb.c ], [ 30, %bb.c ]
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink, ptr %i.ee, align 8
  store i64 3, ptr %0, align 8
  br label %.thread41

.thread41:                                        ; preds = %.thread41.sink.split, %bb.db, %bb.m
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer5TokenECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.al)
  br label %bb.b

bb.db:                                            ; preds = %bb.c
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %4, align 8
  store i64 3, ptr %0, align 8
  %5 = icmp eq i8 %i.ap, 1
  br i1 %5, label %bb.dk, label %.thread41

bb.dc:                                            ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  br label %.thread41.sink.split
end_hunk_4
begin_hunk_5
bb.dj:                                            ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  br label %.thread41.sink.split

bb.dk:                                            ; preds = %.thread42, %bb.db
  %i.ef = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ef)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ef)
          to label %common.resume unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
end_hunk_5
begin_hunk_6
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser9tokenizer4WordECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.dk
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ef)
  br label %bb.b

bb.dn:                                            ; preds = %bb.d
end_hunk_6
