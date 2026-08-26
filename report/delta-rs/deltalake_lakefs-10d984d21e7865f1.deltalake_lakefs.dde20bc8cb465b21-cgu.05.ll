Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_lakefs-10d984d21e7865f1.deltalake_lakefs.dde20bc8cb465b21-cgu.05?download=true
inline.NumInlined: 638
inline.NumDeleted: 246
begin_hunk_0_@_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1K_9GetResult5bytes00ENtNtB13_8schedule16BlockingScheduleE4pollCsj34PGqTgg0L_16deltalake_lakefs:bb.a

bb.o:                                             ; preds = %bb.l
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreINtB5_4CoreINtNtNtB9_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB1K_9GetResult5bytes00ENtNtB13_8schedule16BlockingScheduleE9set_stageCsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !570, !noundef !11
  %i.d = invoke noundef i64 @_RNvMs2_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.c)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  %i.f = load i32, ptr %i.e, align 8, !range !195, !alias.scope !832, !noundef !11
  switch i32 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2j_9GetResult5bytes00EEECsj34PGqTgg0L_16deltalake_lakefs.exit [
    i32 0, label %bb.c
    i32 1, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.h = load i64, ptr %i.g, align 8, !range !65, !alias.scope !841, !noundef !11
  %i.i = icmp eq i64 %i.h, -9223372036854775808
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2j_9GetResult5bytes00EEECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i.i.i = load i32, ptr %i.j, align 8, !range !118, !alias.scope !845, !noundef !11
  %i.k = tail call noundef i32 @close(i32 noundef %.val.i.i.i.i) #24, !noalias !845 ; 0 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2j_9GetResult5bytes00EEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultIBH_NtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(72) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2j_9GetResult5bytes00EEECsj34PGqTgg0L_16deltalake_lakefs.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.l, %bb.e ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  invoke void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.thread unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2j_9GetResult5bytes00EEECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.c, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBQ_9GetResult5bytes00ECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  call void @_RNvXs3_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.i:                                             ; preds = %.body, %bb.j
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

.thread:                                          ; preds = %.body, %bb.j
  %.pn9 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.q, %bb.j ]
  resume { ptr, i32 } %.pn9

bb.j:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task4core5StageINtNtNtBN_8blocking4task12BlockingTaskNCNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtB2j_9GetResult5bytes00EEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(80) %1) #26
          to label %.thread unwind label %bb.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvNtCs9Ct3XQYJhun_5bytes5bytes11static_drop(ptr noalias nofree readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, i64 %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvNtCs9Ct3XQYJhun_5bytes5bytes12static_clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef %2, i64 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  store ptr @41, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvNtCs9Ct3XQYJhun_5bytes5bytes16static_is_unique(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 false
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCs2pqxYH9ZEk8_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop() unnamed_addr #6 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = call noundef ptr @_RNvYNtNtNtNtCs2pqxYH9ZEk8_3std3sys5stdio4unix6StderrNtNtBa_2io5Write9write_fmtCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull %i.a, ptr noundef nonnull @42, ptr noundef nonnull inttoptr (i64 123 to ptr))
  store ptr %i.c, ptr %i.b, align 8
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultuNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorEECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvNtCs2pqxYH9ZEk8_3std7process5abort() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsj34PGqTgg0L_16deltalake_lakefs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.10116.i.i.i = alloca [24 x i8], align 8  ; 10 uses
  %.sroa.11.i.i.i = alloca [32 x i8], align 8     ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 11 uses
  %.sroa.3.sroa.2.i.i.i = alloca [24 x i8], align 8 ; 7 uses
  %.sroa.3.sroa.3.i.i.i = alloca [32 x i8], align 8 ; 6 uses
  %i.g = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.5104.i.i.i = alloca [56 x i8], align 8   ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.13.i.i.i = alloca [56 x i8], align 8     ; 8 uses
  %.sroa.5.i16.i.i = alloca [56 x i8], align 8    ; 8 uses
  %i.i = alloca [72 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 14 uses
  %.sroa.3.i.i.i = alloca [24 x i8], align 8      ; 7 uses
  %.sroa.5.i.i.i = alloca [40 x i8], align 8      ; 6 uses
  %i.l = alloca [72 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 5 uses
  %i.n = alloca [48 x i8], align 8                ; 9 uses
  %.sroa.1149.i.i = alloca [24 x i8], align 8     ; 7 uses
  %.sroa.1250.i.i = alloca [32 x i8], align 8     ; 7 uses
  %.sroa.835.sroa.6.i.i = alloca [24 x i8], align 8 ; 7 uses
  %.sroa.835.sroa.7.i.i = alloca [32 x i8], align 8 ; 7 uses
  %.sroa.10186.i = alloca [24 x i8], align 8      ; 6 uses
  %.sroa.11187.i = alloca [32 x i8], align 16     ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [48 x i8], align 8                ; 10 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [8 x i8], align 8                 ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [48 x i8], align 8                ; 10 uses
  %i.w = alloca [32 x i8], align 8                ; 8 uses
  %i.x = alloca [72 x i8], align 8                ; 11 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [16 x i8], align 8               ; 6 uses
  %i.ae = alloca [32 x i8], align 8               ; 8 uses
  %i.af = alloca [8 x i8], align 8                ; 5 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 8 uses
  %i.ai = alloca [32 x i8], align 8               ; 8 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 6 uses
  %i.am = alloca [32 x i8], align 8               ; 8 uses
  %i.an = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.6136.i = alloca [24 x i8], align 8       ; 6 uses
  %.sroa.11.i = alloca [32 x i8], align 8         ; 4 uses
  %.sroa.10132.i = alloca [24 x i8], align 8      ; 7 uses
  %i.ao = alloca [32 x i8], align 8               ; 12 uses
  %i.ap = alloca [192 x i8], align 8              ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [16 x i8], align 8               ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !846)
  %i.at = load i64, ptr %1, align 8, !range !68, !alias.scope !846, !noundef !11
  %.not.i = icmp eq i64 %i.at, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.au)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.av = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !846, !align !96, !noundef !11 ; 3 uses
  %.not4.i = icmp eq ptr %i.ay, null
  br i1 %.not4.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !846
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !11, !noundef !11
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !11
  store ptr %i.ba, ptr %i.ar, align 8, !noalias !846
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !noalias !846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !846
  store ptr %i.ar, ptr %i.aq, align 8, !noalias !846
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsj34PGqTgg0L_16deltalake_lakefs, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !846
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 21, ptr noundef nonnull @36, ptr noundef nonnull %i.aq) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !846
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit: ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !849)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10186.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11187.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6136.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i)
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 281 ; 3 uses
  %i.bf = load i8, ptr %i.be, align 1, !range !492, !noalias !852, !noundef !11
  switch i8 %i.bf, label %default.unreachable [
    i8 0, label %bb.f
    i8 1, label %bb.n
    i8 2, label %bb.o
    i8 3, label %bb.q
    i8 4, label %bb.by
  ]

default.unreachable:                              ; preds = %bb.dm, %bb.cc, %bb.by, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit
  unreachable

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i8 0, ptr %i.bg, align 8, !noalias !852
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !852, !noundef !11
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  invoke void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage5utils23commit_uri_from_version(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bj, i64 noundef %i.bi)
          to label %bb.h unwind label %bb.g, !noalias !849

bb.g:                                             ; preds = %bb.f
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !852, !nonnull !11, !noundef !11
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !852, !nonnull !11, !align !96, !noundef !11
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  %i.bq = load ptr, ptr %i.bp, align 8, !invariant.load !11, !noalias !849, !nonnull !11
  %i.br = invoke { ptr, ptr } %i.bq(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj)
          to label %bb.j unwind label %bb.i, !noalias !849 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %i.bj) #26
          to label %bb.l unwind label %bb.k, !noalias !849

bb.j:                                             ; preds = %bb.h
  %i.bt = extractvalue { ptr, ptr } %i.br, 0
  %i.bu = extractvalue { ptr, ptr } %i.br, 1
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 288
  store ptr %i.bt, ptr %i.bv, align 8, !noalias !852
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 296
  store ptr %i.bu, ptr %i.bw, align 8, !noalias !852
  br label %bb.q

bb.k:                                             ; preds = %bb.hr, %bb.hm, %.body105.i, %bb.bw, %bb.ay, %.body.i, %bb.p, %bb.i
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27, !noalias !849
  unreachable

bb.l:                                             ; preds = %bb.hr, %bb.hq, %bb.hl, %.body91.i, %.body.i, %bb.i
  %.pn46.i = phi { ptr, i32 } [ %i.xa, %bb.hl ], [ %.pn43.i, %.body91.i ], [ %.pn43.i, %bb.hr ], [ %.pn43.i, %bb.hq ], [ %.pn.i, %.body.i ], [ %i.bs, %bb.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i8 0, ptr %i.by, align 8, !noalias !852
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.pn46.pn.i = phi { ptr, i32 } [ %.pn46.i, %bb.l ], [ %i.bk, %bb.g ]
  store i8 2, ptr %i.be, align 1, !noalias !852
  br label %.body

bb.n:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #29
          to label %.noexc unwind label %bb.hs

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit
  invoke void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #29
          to label %.noexc3 unwind label %bb.hs

.noexc3:                                          ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !852
  %.val62.i = load ptr, ptr %i.cb, align 8, !noalias !852
  %i.ca = getelementptr i8, ptr %1, i64 296
  %.val63.i = load ptr, ptr %i.ca, align 8, !noalias !852, !nonnull !11, !align !96, !noundef !11
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs(ptr %.val62.i, ptr nonnull %.val63.i) #26
          to label %.body.i unwind label %bb.k, !noalias !849

bb.q:                                             ; preds = %bb.j, %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !852
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 5 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2d_5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.r unwind label %bb.p, !noalias !849

bb.r:                                             ; preds = %bb.q
  %i.cc = load i64, ptr %i.ap, align 8, !range !854, !noalias !852, !noundef !11
  %i.cd = icmp eq i64 %i.cc, -9223372036854775807
  br i1 %i.cd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !852
  store i64 -9223372036854775710, ptr %0, align 16, !alias.scope !849, !noalias !855
  br label %bb.ht

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.as, ptr noundef nonnull align 8 dereferenceable(192) %i.ap, i64 192, i1 false), !noalias !852
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  store i8 1, ptr %i.ce, align 8, !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !852
  %.val.i = load ptr, ptr %i.cb, align 8, !noalias !852 ; 5 uses
  %i.cf = getelementptr i8, ptr %1, i64 296
  %.val61.i = load ptr, ptr %i.cf, align 8, !noalias !852, !nonnull !11, !align !96, !noundef !11 ; 5 uses
  %i.cg = load ptr, ptr %.val61.i, align 8, !invariant.load !11, !noalias !849 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.cg(ptr noundef nonnull %.val.i)
          to label %bb.v unwind label %bb.x, !noalias !849

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %.val61.i, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !range !66, !invariant.load !11, !noalias !849 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %.val61.i, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !range !67, !invariant.load !11, !noalias !849
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.ci, i64 noundef range(i64 1, 536870913) %i.cl) #24, !noalias !849
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.x:                                             ; preds = %bb.u
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val61.i, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !range !66, !invariant.load !11, !noalias !849 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.body.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cq = getelementptr inbounds nuw i8, ptr %.val61.i, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !range !67, !invariant.load !11, !noalias !849
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.co, i64 noundef range(i64 1, 536870913) %i.cr) #24, !noalias !849
  br label %.body.i

.body.i:                                          ; preds = %bb.y, %bb.x, %bb.p
  %.pn.i = phi { ptr, i32 } [ %i.bz, %bb.p ], [ %i.cm, %bb.x ], [ %i.cm, %bb.y ]
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %i.cs) #26
          to label %bb.l unwind label %bb.k, !noalias !849

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %bb.w, %bb.v
  %i.ct = load i64, ptr %i.as, align 8, !range !65, !noalias !852, !noundef !11
  %i.cu = icmp eq i64 %i.ct, -9223372036854775808
  br i1 %i.cu, label %bb.z, label %.thread.i

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !range !506, !noalias !852, !noundef !11 ; 2 uses
  %i.cx = icmp ne i64 %i.cw, -9223372036854775800
  call void @llvm.assume(i1 %i.cx)
  %i.cy = icmp eq i64 %i.cw, -9223372036854775801
  br i1 %i.cy, label %bb.aa, label %bb.az

.thread.i:                                        ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.cb, ptr noundef nonnull align 8 dereferenceable(192) %i.as, i64 192, i1 false), !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !852
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 672 ; 2 uses
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10132.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1149.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1250.i.i)
  br label %bb.bz

bb.aa:                                            ; preds = %bb.z
  %i.cz = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !852
  %i.da = icmp samesign ult i64 %i.cz, 2
  br i1 %i.da, label %bb.ab, label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.db = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_10___CALLSITE, i64 16) monotonic, align 8, !noalias !852 ; 2 uses
  %i.dc = icmp ult i8 %i.db, 3
  br i1 %i.dc, label %bb.ae, label %bb.ac, !prof !856

bb.ac:                                            ; preds = %bb.ab
  %i.dd = invoke noundef i8 @_RNvMNtCs2y6mmZ7bjoM_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_10___CALLSITE) #28
          to label %bb.ae unwind label %bb.ad, !noalias !849

bb.ad:                                            ; preds = %bb.ac
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %.sroa.0.0.i.i = phi i8 [ %i.db, %bb.ab ], [ %i.dd, %bb.ac ] ; 2 uses
  %i.df = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.df, label %bb.ai, label %bb.ag

bb.af:                                            ; preds = %bb.ag
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ag:                                            ; preds = %bb.ae
  %i.dh = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_10___CALLSITE, align 8, !noalias !852, !nonnull !11, !align !96, !noundef !11
  %i.di = invoke noundef zeroext i1 @_RNvNtCscTw95cGIolY_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dh, i8 noundef %.sroa.0.0.i.i)
          to label %bb.ah unwind label %bb.af, !noalias !849

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.di, label %bb.as, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae, %bb.aa
  %i.dj = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !852
  %.not212.i = icmp eq i8 %i.dj, 0
  br i1 %.not212.i, label %bb.aj, label %bb.av

bb.aj:                                            ; preds = %bb.ai
  %i.dk = load atomic i64, ptr @_RNvCsaljjC7ZTCQu_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !852 ; 2 uses
  %i.dl = icmp ult i64 %i.dk, 6
  call void @llvm.assume(i1 %i.dl)
  %i.dm = icmp samesign ugt i64 %i.dk, 3
  br i1 %i.dm, label %bb.al, label %bb.av

bb.ak:                                            ; preds = %bb.al
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.al:                                            ; preds = %bb.aj
  %i.do = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_10___CALLSITE, align 8, !noalias !852, !nonnull !11, !align !96, !noundef !11 ; 3 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 32
  %.val83.i = load ptr, ptr %i.dp, align 8, !noalias !849, !nonnull !11, !noundef !11
  %i.dq = getelementptr i8, ptr %i.do, i64 40
  %.val84.i = load i64, ptr %i.dq, align 8, !noalias !849, !noundef !11
  store i64 4, ptr %i.ab, align 8, !alias.scope !857, !noalias !852
  %.sroa.6165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.val83.i, ptr %.sroa.6165.0..sroa_idx.i, align 8, !alias.scope !857, !noalias !852
  %.sroa.8166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.val84.i, ptr %.sroa.8166.0..sroa_idx.i, align 8, !alias.scope !857, !noalias !852
  %i.dr = invoke { ptr, ptr } @_RNvCsaljjC7ZTCQu_3log6logger()
          to label %bb.am unwind label %bb.ak, !noalias !849 ; 2 uses

bb.am:                                            ; preds = %bb.al
  %i.ds = extractvalue { ptr, ptr } %i.dr, 0      ; 2 uses
  %i.dt = extractvalue { ptr, ptr } %i.dr, 1      ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !invariant.load !11, !noalias !849, !nonnull !11
  %i.dw = invoke noundef zeroext i1 %i.dv(ptr noundef %i.ds, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
          to label %bb.ao unwind label %bb.an, !noalias !849

bb.an:                                            ; preds = %bb.am
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ao:                                            ; preds = %bb.am
  br i1 %i.dw, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !852
  %i.dy = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_10___CALLSITE, align 8, !noalias !852, !nonnull !11, !align !96, !noundef !11
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !852
  store ptr @19, ptr %i.y, align 8, !noalias !852
  %i.ea = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr inttoptr (i64 45 to ptr), ptr %i.ea, align 8, !noalias !852
  store ptr %i.y, ptr %i.z, align 8, !noalias !852
  %i.eb = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @20, ptr %i.eb, align 8, !noalias !852
  store i64 1, ptr %i.aa, align 8, !alias.scope !861, !noalias !864
  %.sroa.4.0..sroa_idx.i87.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.z, ptr %.sroa.4.0..sroa_idx.i87.i, align 8, !alias.scope !861, !noalias !864
  %.sroa.5.0..sroa_idx.i88.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i88.i, align 8, !alias.scope !861, !noalias !864
  %i.ec = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %i.dz, ptr %i.ec, align 8, !alias.scope !861, !noalias !864
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.do, ptr noundef nonnull %i.ds, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dt, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa)
          to label %bb.ar unwind label %bb.aq, !noalias !849

bb.aq:                                            ; preds = %bb.ap
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !852
  br label %bb.ay

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !852
  br label %bb.av

bb.as:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !852
  %i.ee = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_10___CALLSITE, align 8, !noalias !852, !nonnull !11, !align !96, !noundef !11
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !852
  store ptr @19, ptr %i.ac, align 8, !noalias !852
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr inttoptr (i64 45 to ptr), ptr %i.eg, align 8, !noalias !852
  store ptr %i.ac, ptr %i.ad, align 8, !noalias !852
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @20, ptr %i.eh, align 8, !noalias !852
  store i64 1, ptr %i.ae, align 8, !noalias !852
  %.sroa.6158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.ad, ptr %.sroa.6158.0..sroa_idx.i, align 8, !noalias !852
  %.sroa.7159.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 1, ptr %.sroa.7159.0..sroa_idx.i, align 8, !noalias !852
  %.sroa.8160.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %i.ef, ptr %.sroa.8160.0..sroa_idx.i, align 8, !noalias !852
  invoke fastcc void @_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00s_0Csj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.ae)
          to label %bb.au unwind label %bb.at, !noalias !849

bb.at:                                            ; preds = %bb.as
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !852
  br label %bb.ay

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !852
  br label %bb.av

bb.av:                                            ; preds = %bb.he, %bb.bu, %bb.au, %bb.ar, %bb.ao, %bb.aj, %bb.ai
  %.sroa.0181.0.i = phi i64 [ -9223372036854775711, %bb.he ], [ -9223372036854775743, %bb.bu ], [ -9223372036854775711, %bb.ar ], [ -9223372036854775711, %bb.ao ], [ -9223372036854775711, %bb.aj ], [ -9223372036854775711, %bb.ai ], [ -9223372036854775711, %bb.au ] ; 3 uses
  %.sroa.5182.0.i = phi i64 [ %i.vc, %bb.he ], [ %.sroa.0195.0.copyload.i, %bb.bu ], [ 0, %bb.ar ], [ 0, %bb.ao ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.au ] ; 3 uses
  %.sroa.9184.0.i = phi ptr [ %.sroa.4193.0.copyload.i, %bb.he ], [ %.sroa.5196.0.copyload.i, %bb.bu ], [ undef, %bb.ar ], [ undef, %bb.ao ], [ undef, %bb.aj ], [ undef, %bb.ai ], [ undef, %bb.au ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.aw, !noalias !849

bb.aw:                                            ; preds = %bb.av
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %.body91.i unwind label %bb.ax, !noalias !849

bb.ax:                                            ; preds = %bb.aw
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27, !noalias !849
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.av
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.hi, !noalias !849

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit.i, %bb.bv, %bb.at, %bb.aq, %bb.an, %bb.ak, %bb.af, %bb.ad
  %.pn40.pn.i = phi { ptr, i32 } [ %i.ei, %bb.at ], [ %.pn32.ph.i, %bb.bv ], [ %.pn18.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit.i ], [ %i.ed, %bb.aq ], [ %i.dx, %bb.an ], [ %i.dg, %bb.af ], [ %i.dn, %bb.ak ], [ %i.de, %bb.ad ]
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %i.em) #26
          to label %.body91.i unwind label %bb.k, !noalias !849

bb.az:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !852
  store i8 0, ptr %i.ce, align 8, !noalias !852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %i.cv, i64 72, i1 false), !noalias !852
  %i.en = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !852
  %i.eo = icmp samesign ult i64 %i.en, 5
  br i1 %i.eo, label %bb.ba, label %bb.bh
end_hunk_0
begin_hunk_1_@_RNvXs0_NtCscTw95cGIolY_7tracing10instrumentINtB5_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core6future6future6Future4pollCsj34PGqTgg0L_16deltalake_lakefs:bb.a
  %.sroa.4.0..sroa_idx.i114.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx.i114.i, align 8, !alias.scope !1056, !noalias !1059
  %.sroa.5.0..sroa_idx.i115.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i115.i, align 8, !alias.scope !1056, !noalias !1059
  %i.wh = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.wb, ptr %i.wh, align 8, !alias.scope !1056, !noalias !1059
  invoke void @_RNvNtCscTw95cGIolY_7tracing15___macro_support13___tracing_log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.vq, ptr noundef nonnull %i.vu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.vv, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
          to label %bb.hd unwind label %bb.hc, !noalias !849

bb.hc:                                            ; preds = %bb.hb
  %i.wi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !852
  br label %bb.hm

bb.hd:                                            ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !852
  br label %bb.he

bb.he:                                            ; preds = %bb.hh, %bb.hd, %bb.ha, %bb.gv, %bb.gu
  %.sroa.4193.0.copyload.i = load ptr, ptr %.sroa.4142.0..sroa_idx.i, align 8, !noalias !852
  %i.wj = getelementptr inbounds nuw i8, ptr %.sroa.6136.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10186.i, ptr noundef nonnull align 8 dereferenceable(16) %i.wj, i64 16, i1 false), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !852
  br label %bb.av

bb.hf:                                            ; preds = %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !852
  %i.wk = load ptr, ptr @_RNvNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry0010___CALLSITE, align 8, !noalias !852, !nonnull !11, !align !96, !noundef !11
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !852
  store ptr @24, ptr %i.al, align 8, !noalias !852
  %i.wm = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr inttoptr (i64 61 to ptr), ptr %i.wm, align 8, !noalias !852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !852
  %i.wn = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.val85.i = load i64, ptr %i.wn, align 8, !noalias !852, !noundef !11
  store i64 %.val85.i, ptr %i.ak, align 8, !noalias !852
  store ptr %i.al, ptr %i.am, align 8, !noalias !852
  %i.wo = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @20, ptr %i.wo, align 8, !noalias !852
  %i.wp = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.ak, ptr %i.wp, align 8, !noalias !852
  %i.wq = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr @25, ptr %i.wq, align 8, !noalias !852
  store i64 1, ptr %i.an, align 8, !noalias !852
  %.sroa.7146.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %.sroa.7146.0..sroa_idx.i, align 8, !noalias !852
  %.sroa.8147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i64 2, ptr %.sroa.8147.0..sroa_idx.i, align 8, !noalias !852
  %.sroa.9148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.wl, ptr %.sroa.9148.0..sroa_idx.i, align 8, !noalias !852
  invoke fastcc void @_RNCNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry000Csj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.an)
          to label %bb.hh unwind label %bb.hg, !noalias !849

bb.hg:                                            ; preds = %bb.hf
  %i.wr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !852
  br label %bb.hm

bb.hh:                                            ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !852
  br label %bb.he

.body91.i:                                        ; preds = %bb.ho, %bb.hi, %bb.ay, %bb.aw
  %.pn43.i = phi { ptr, i32 } [ %.pn40.pn.i, %bb.ay ], [ %i.ek, %bb.aw ], [ %i.wt, %bb.hi ], [ %i.xj, %bb.ho ] ; 3 uses
  %i.ws = load i64, ptr %i.as, align 8, !range !65, !noalias !852, !noundef !11
  %.not45.i = icmp eq i64 %i.ws, -9223372036854775808
  br i1 %.not45.i, label %bb.hq, label %bb.l

bb.hi:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i120.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.wt = landingpad { ptr, i32 }
          cleanup
  br label %.body91.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.wu = load i64, ptr %i.as, align 8, !range !65, !noalias !852, !noundef !11
  %i.wv = icmp eq i64 %i.wu, -9223372036854775808
  br i1 %i.wv, label %bb.hj, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit124.i

bb.hj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.wx = load i8, ptr %i.ww, align 8, !range !886, !noalias !852, !noundef !11
  %i.wy = trunc nuw i8 %i.wx to i1
  br i1 %i.wy, label %bb.hk, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit124.i

bb.hk:                                            ; preds = %bb.hj
  %i.wz = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(72) %i.wz)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit124.i unwind label %bb.hl, !noalias !849

bb.hl:                                            ; preds = %bb.hk
  %i.xa = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit124.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i120.i, %bb.hk, %bb.hj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i
  %.sroa.0181.1.i = phi i64 [ -9223372036854775743, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i120.i ], [ %.sroa.0181.0.i, %bb.hk ], [ %.sroa.0181.0.i, %bb.hj ], [ %.sroa.0181.0.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i ]
  %.sroa.5182.1.i = phi i64 [ %.sroa.051.0.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i120.i ], [ %.sroa.5182.0.i, %bb.hk ], [ %.sroa.5182.0.i, %bb.hj ], [ %.sroa.5182.0.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i ]
  %.sroa.9184.1.i = phi ptr [ %i.kd, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i120.i ], [ %.sroa.9184.0.i, %bb.hk ], [ %.sroa.9184.0.i, %bb.hj ], [ %.sroa.9184.0.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i ]
  %i.xb = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i8 0, ptr %i.xb, align 8, !noalias !852
  store i64 %.sroa.0181.1.i, ptr %0, align 16, !alias.scope !849, !noalias !855
  %.sroa.5182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5182.1.i, ptr %.sroa.5182.0..sroa_idx.i, align 8, !alias.scope !849, !noalias !855
  %.sroa.9184.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9184.1.i, ptr %.sroa.9184.0..sroa_idx.i, align 16, !alias.scope !849, !noalias !855
  %.sroa.10186.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10186.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10186.i, i64 24, i1 false), !noalias !855
  %.sroa.11187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.11187.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.11187.i, i64 32, i1 false), !noalias !855
  br label %bb.ht

bb.hm:                                            ; preds = %bb.hg, %bb.hc, %bb.gz, %bb.gw, %bb.gr, %bb.gp
  %.pn14.pn.pn.i = phi { ptr, i32 } [ %i.wr, %bb.hg ], [ %i.vp, %bb.gw ], [ %i.vg, %bb.gp ], [ %i.wi, %bb.hc ], [ %i.vz, %bb.gz ], [ %i.vi, %bb.gr ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  call void @llvm.experimental.noalias.scope.decl(metadata !1065)
  %i.xc = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  %i.xd = load ptr, ptr %i.xc, align 8, !noalias !1068, !nonnull !11, !noundef !11
  %i.xe = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.xf = load ptr, ptr %.sroa.4142.0..sroa_idx.i, align 8, !alias.scope !1069, !noalias !852, !noundef !11
  %i.xg = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.xh = load i64, ptr %i.xg, align 8, !alias.scope !1069, !noalias !852, !noundef !11
  invoke void %i.xd(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.xe, ptr noundef %i.xf, i64 noundef %i.xh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit.i unwind label %bb.k, !noalias !849, !inline_history !431

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesECsj34PGqTgg0L_16deltalake_lakefs.exit.i: ; preds = %.body105.i, %bb.gk, %bb.hm
  %.pn18.pn.i = phi { ptr, i32 } [ %.pn14.pn.pn.i, %bb.hm ], [ %i.uz, %bb.gk ], [ %eh.lpad-body106.i, %.body105.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !852
  br label %bb.ay

bb.hn:                                            ; preds = %bb.gl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.11187.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.i, i64 32, i1 false), !noalias !852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10186.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6136.i, i64 24, i1 false), !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !852
  %i.xi = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i120.i unwind label %bb.ho, !noalias !849

bb.ho:                                            ; preds = %bb.hn
  %i.xj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xi)
          to label %.body91.i unwind label %bb.hp, !noalias !849

bb.hp:                                            ; preds = %bb.ho
  %i.xk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27, !noalias !849
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i120.i: ; preds = %bb.hn
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit124.i unwind label %bb.hi, !noalias !849

bb.hq:                                            ; preds = %.body91.i
  %i.xl = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.xm = load i8, ptr %i.xl, align 8, !range !886, !noalias !852, !noundef !11
  %i.xn = trunc nuw i8 %i.xm to i1
  br i1 %i.xn, label %bb.hr, label %bb.l

bb.hr:                                            ; preds = %bb.hq
  %i.xo = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(72) %i.xo) #26
          to label %bb.l unwind label %bb.k, !noalias !849

bb.hs:                                            ; preds = %bb.o, %bb.n
  %i.xp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.hs
  %eh.lpad-body = phi { ptr, i32 } [ %i.xp, %bb.hs ], [ %.pn46.pn.i, %bb.m ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECsj34PGqTgg0L_16deltalake_lakefs(ptr nonnull %1) #26
          to label %bb.hz unwind label %bb.hy

bb.ht:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit124.i, %bb.gi, %bb.s
  %.sink.i = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit124.i ], [ 4, %bb.gi ], [ 3, %bb.s ]
  store i8 %.sink.i, ptr %i.be, align 1, !noalias !852
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10186.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11187.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6136.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %i.xq = load i64, ptr %1, align 8, !range !68, !alias.scope !1070, !noalias !1073, !noundef !11
  %.not.i.i.i4 = icmp eq i64 %i.xq, 2
  br i1 %.not.i.i.i4, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.xr = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.xr), !noalias !1073
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  %i.xs = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1, !noalias !1073
  %i.xt = icmp eq i8 %i.xs, 0
  br i1 %i.xt, label %bb.hw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECsj34PGqTgg0L_16deltalake_lakefs.exit

bb.hw:                                            ; preds = %bb.hv
  %i.xu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.xv = load ptr, ptr %i.xu, align 8, !alias.scope !1070, !noalias !1073, !align !96, !noundef !11 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.xv, null
  br i1 %.not4.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECsj34PGqTgg0L_16deltalake_lakefs.exit, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1076
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 16
  %i.xx = load ptr, ptr %i.xw, align 8, !noalias !1073, !nonnull !11, !noundef !11
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xv, i64 24
  %i.xz = load i64, ptr %i.xy, align 8, !noalias !1073, !noundef !11
  store ptr %i.xx, ptr %i.b, align 8, !noalias !1076
  %i.ya = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.xz, ptr %i.ya, align 8, !noalias !1076
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1076
  store ptr %i.b, ptr %i.a, align 8, !noalias !1076
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsj34PGqTgg0L_16deltalake_lakefs, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !1076
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 21, ptr noundef nonnull @34, ptr noundef nonnull %i.a) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1076
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECsj34PGqTgg0L_16deltalake_lakefs.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECsj34PGqTgg0L_16deltalake_lakefs.exit: ; preds = %bb.hv, %bb.hw, %bb.hx
  ret void

bb.hy:                                            ; preds = %.body
  %i.yb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.hz:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NvNtCscTw95cGIolY_7tracing10instruments_1__INtB7_12InstrumentedNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  %i.e = load i64, ptr %0, align 8, !range !68, !alias.scope !1077, !noundef !11
  %.not.i.i = icmp eq i64 %i.e, 2
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvMs2_NtCs2y6mmZ7bjoM_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load atomic i8, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher6EXISTS monotonic, align 1
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1077, !align !96, !noundef !11 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.j, null
  br i1 %.not4.i.i, label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1077
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !11, !noundef !11
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noundef !11
  store ptr %i.l, ptr %i.d, align 8, !noalias !1077
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !1077
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1077
  store ptr %i.d, ptr %i.c, align 8, !noalias !1077
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtReNtB6_7Display3fmtCsj34PGqTgg0L_16deltalake_lakefs, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1077
  call fastcc void @_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span3log(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 21, ptr noundef nonnull @36, ptr noundef nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1077
  br label %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i

_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 281
  %i.q = load i8, ptr %i.p, align 1, !range !492, !noundef !11
  switch i8 %i.q, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ECsj34PGqTgg0L_16deltalake_lakefs.exit.i [
    i8 4, label %bb.l
    i8 3, label %bb.f
  ]

bb.f:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288
  %.val.i.i = load ptr, ptr %i.r, align 8         ; 5 uses
  %i.s = getelementptr i8, ptr %0, i64 296
  %.val4.i.i = load ptr, ptr %i.s, align 8, !nonnull !11, !align !96, !noundef !11 ; 5 uses
  %i.t = load ptr, ptr %.val4.i.i, align 8, !invariant.load !11 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.t(ptr noundef nonnull %.val.i.i)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !66, !invariant.load !11 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !67, !invariant.load !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.v, i64 noundef range(i64 1, 536870913) %i.y) #24
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i

bb.j:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !range !66, !invariant.load !11 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.body.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !67, !invariant.load !11
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.ab, i64 noundef range(i64 1, 536870913) %i.ae) #24
  br label %.body.i.i

bb.l:                                             ; preds = %_RNvMNtCscTw95cGIolY_7tracing4spanNtB2_4Span8do_enter.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 288
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvMs0_CsjyY8HP3IvQ6_12object_storeNtBO_9GetResult5bytes0ECsj34PGqTgg0L_16deltalake_lakefs(ptr noundef nonnull align 8 %i.af)
          to label %bb.r unwind label %bb.q

.body.i.i:                                        ; preds = %bb.k, %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 256
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef align 8 dereferenceable(24) %i.ag) #26
          to label %.body5.i.i unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %bb.i, %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %.body5.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtCsjyY8HP3IvQ6_12object_store9GetResultNtB2w_5ErrorENtNtB4_6marker4SendEL_EEECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsj34PGqTgg0L_16deltalake_lakefs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i unwind label %bb.o

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body5.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i8.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsj34PGqTgg0L_16deltalake_lakefs.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 0, ptr %i.al, align 8
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNCNvNtCs14kWLkQVSKO_14deltalake_core8logstore17read_commit_entry00ECsj34PGqTgg0L_16deltalake_lakefs.exit.i

bb.p:                                             ; preds = %bb.q, %.body.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

.body5.i.i:                                       ; preds = %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %i.ao, %bb.q ], [ %i.z, %.body.i.i ], [ %i.ak, %bb.o ], [ %i.at, %bb.u ], [ %i.ar, %bb.s ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 0, ptr %i.an, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCscTw95cGIolY_7tracing4span7EnteredECsj34PGqTgg0L_16deltalake_lakefs(ptr nonnull align 8 %0) #26
          to label %bb.aa unwind label %bb.z
end_hunk_1
