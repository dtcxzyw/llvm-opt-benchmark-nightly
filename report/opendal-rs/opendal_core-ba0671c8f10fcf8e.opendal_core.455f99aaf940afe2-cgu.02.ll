Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.02?download=true
inline.NumInlined: 475
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvMs0_NtCsK9IUdK075C_15futures_channel7oneshotINtB5_5InnerINtNtCsgxBkk5gSRhY_4core6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIBW_NtNtB1E_6buffer6BufferNtNtB1E_5error5ErrorEEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB10_3any3AnyNtNtB10_6marker4SendEL_EEE13poll_canceledB1G_:bb.a
  store ptr %i.k, ptr %i.m, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.l, ptr %i.x, align 8
  call void @_RNvXs3_NtCsK9IUdK075C_15futures_channel4lockINtB5_7TryLockINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtBZ_4task4wake5WakerEENtNtNtBZ_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = load atomic i8, ptr %i.b seq_cst, align 8
  %i.z = icmp eq i8 %i.y, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs5XgW7KoffLW_12opendal_core.exit, %bb.e
  %.sroa.0.1 = phi i1 [ %i.z, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs5XgW7KoffLW_12opendal_core.exit ], [ false, %bb.e ], [ false, %bb.a ]
  ret i1 %.sroa.0.1

bb.h:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.f
  resume { ptr, i32 } %i.w
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCsK9IUdK075C_15futures_channel7oneshotINtB5_5InnerINtNtCsgxBkk5gSRhY_4core6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIBW_NtNtB1E_6buffer6BufferNtNtB1E_5error5ErrorEEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB10_3any3AnyNtNtB10_6marker4SendEL_EEE4recvB1G_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.d = load atomic i8, ptr %i.c seq_cst, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !nonnull !9, !align !17, !noundef !9 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !9, !align !17, !noundef !9
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noundef !9
  %i.k = tail call { ptr, ptr } %i.h(ptr noundef %i.j) ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 5 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.p = atomicrmw xchg ptr %i.o, i8 1 seq_cst, align 1
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.n, ptr %i.b, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %.val18 = load ptr, ptr %i.n, align 8, !align !17, !noundef !9 ; 2 uses
  %i.q = icmp eq ptr %.val18, null
  br i1 %i.q, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %1, i64 152        ; 2 uses
  %.val19 = load ptr, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.val18, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !9, !noundef !9
  invoke void %i.t(ptr noundef %.val19)
          to label %bb.h unwind label %bb.e, !inline_history !2

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %i.n, align 8
  store ptr %i.m, ptr %i.r, align 8
  invoke void @_RNvXs3_NtCsK9IUdK075C_15futures_channel4lockINtB5_7TryLockINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtBZ_4task4wake5WakerEENtNtNtBZ_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !9, !noundef !9
  tail call void %i.w(ptr noundef %i.m), !inline_history !3
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.e
  resume { ptr, i32 } %i.u

bb.h:                                             ; preds = %bb.d, %bb.c
  store ptr %i.l, ptr %i.n, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.m, ptr %i.y, align 8
  call void @_RNvXs3_NtCsK9IUdK075C_15futures_channel4lockINtB5_7TryLockINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtBZ_4task4wake5WakerEENtNtNtBZ_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = load atomic i8, ptr %i.c seq_cst, align 8
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.a, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ac = atomicrmw xchg ptr %i.ab, i8 1 seq_cst, align 1
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.k, label %bb.o

bb.j:                                             ; preds = %bb.h
  store i64 -3, ptr %0, align 8
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.03.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  store i64 -2, ptr %1, align 8
  %.not16 = icmp eq i64 %.sroa.03.0.copyload, -2
  br i1 %.not16, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.6.0..sroa_idx, i64 128, i1 false)
  store i64 %.sroa.03.0.copyload, ptr %0, align 8
  call void @_RNvXs3_NtCsK9IUdK075C_15futures_channel4lockINtB5_7TryLockINtNtCsgxBkk5gSRhY_4core6option6OptionINtNtBZ_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB1x_NtNtB1Z_6buffer6BufferNtNtB1Z_5error5ErrorEEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtBZ_3any3AnyNtNtBZ_6marker4SendEL_EEEENtNtNtBZ_3ops4drop4Drop4dropB21_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @_RNvXs3_NtCsK9IUdK075C_15futures_channel4lockINtB5_7TryLockINtNtCsgxBkk5gSRhY_4core6option6OptionINtNtBZ_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB1x_NtNtB1Z_6buffer6BufferNtNtB1Z_5error5ErrorEEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtBZ_3any3AnyNtNtBZ_6marker4SendEL_EEEENtNtNtBZ_3ops4drop4Drop4dropB21_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.n:                                             ; preds = %bb.j, %bb.o, %bb.l
  ret void

bb.o:                                             ; preds = %bb.i, %bb.m
  store i64 -2, ptr %0, align 8
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEINtNtBG_4sync3ArcNtNtNtB1g_9scheduler14current_thread6HandleEEEECs5XgW7KoffLW_12opendal_core(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !842
  store i32 2, ptr %i.d, align 8, !noalias !842
  %i.e = load i32, ptr %i.a, align 8, !range !19, !noalias !842, !noundef !9
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB7_4CoreINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs5XgW7KoffLW_12opendal_core.exit, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #21
          to label %bb.d unwind label %bb.e, !noalias !842

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #23
          to label %common.resume unwind label %bb.f, !noalias !842

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !842
  unreachable

_RNCNvMs4_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB7_4CoreINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !842
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  %i.j = load i64, ptr %1, align 8, !range !20, !alias.scope !843, !noundef !9
  %3 = trunc nuw i64 %i.j to i1
  br i1 %3, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEEECs5XgW7KoffLW_12opendal_core.exit, label %bb.g

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB7_4CoreINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs5XgW7KoffLW_12opendal_core.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844)
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !845, !noundef !9
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEEECs5XgW7KoffLW_12opendal_core.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !845, !noundef !9 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.o, align 8, !alias.scope !845 ; 6 uses
  %i.p = icmp eq ptr %.val.i.i, null
  br i1 %i.p, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEEECs5XgW7KoffLW_12opendal_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !invariant.load !9, !noalias !845 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !noalias !845

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !14, !invariant.load !9, !noalias !845 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEEECs5XgW7KoffLW_12opendal_core.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !15, !invariant.load !9, !noalias !845
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #22, !noalias !845
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEEECs5XgW7KoffLW_12opendal_core.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !14, !invariant.load !9, !noalias !845 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !15, !invariant.load !9, !noalias !845
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #22, !noalias !845
  br label %.body

bb.o:                                             ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEEECs5XgW7KoffLW_12opendal_core.exit
  ret void

.body:                                            ; preds = %bb.m, %bb.n
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB7_4CoreINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs5XgW7KoffLW_12opendal_core.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !848
  store i32 2, ptr %i.a, align 8, !noalias !848
  invoke void @_RNvMs4_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB5_4CoreINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs9k3SxhrAWiO_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking19panic_cannot_unwind() #24
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !848
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !14, !invariant.load !9 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !15, !invariant.load !9
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #22
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !14, !invariant.load !9 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCsgxBkk5gSRhY_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !15, !invariant.load !9
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #22
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCsgxBkk5gSRhY_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit4.i.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCsgxBkk5gSRhY_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs5XgW7KoffLW_12opendal_core.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEINtNtBG_4sync3ArcNtNtNtB1g_9scheduler14current_thread6HandleEEEECs5XgW7KoffLW_12opendal_core(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs5XgW7KoffLW_12opendal_core.exit

_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_RNvMs6_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs5XgW7KoffLW_12opendal_core.exit
    i8 3, label %_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs5XgW7KoffLW_12opendal_core.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harness11poll_futureINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs5XgW7KoffLW_12opendal_core.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !859
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !860
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB5_4CoreINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !noalias !859

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !859
  store i32 2, ptr %i.f, align 8, !noalias !859
  invoke void @_RNvMs4_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB5_4CoreINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !859

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !859
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !859
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs9k3SxhrAWiO_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !860 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking19panic_cannot_unwind() #24, !noalias !860
  unreachable

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !859
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !22, !noalias !860, !noundef !9
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harness11poll_futureINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs5XgW7KoffLW_12opendal_core.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ]
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCs5XgW7KoffLW_12opendal_core:bb.a
bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = extractvalue { ptr, ptr } %i.l, 0        ; 4 uses
  %i.o = extractvalue { ptr, ptr } %i.l, 1        ; 6 uses
  %i.p = icmp eq ptr %i.n, null
  br i1 %i.p, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.q = load ptr, ptr %i.o, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %i.n)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !14, !invariant.load !9 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !15, !invariant.load !9
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #22
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !14, !invariant.load !9 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCsgxBkk5gSRhY_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit4.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !15, !invariant.load !9
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #22
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCsgxBkk5gSRhY_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit4.i.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCsgxBkk5gSRhY_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit4.i.i: ; preds = %bb.n, %bb.m
  resume { ptr, i32 } %i.w

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %.noexc5, %.noexc, %bb.b, %bb.e, %bb.h, %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = call noundef ptr @_RNvXs5_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime9scheduler14current_threadINtNtCs6i54tJFfzR_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %.not.i = icmp eq ptr %i.ad, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = call noundef zeroext i1 @_RNvMNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i)
  br i1 %i.ae, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEINtNtBG_4sync3ArcNtNtNtB1g_9scheduler14current_thread6HandleEEEECs5XgW7KoffLW_12opendal_core(ptr nonnull %0)
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8shutdownCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = tail call noundef zeroext i1 @_RNvMNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5stateNtB2_5State22transition_to_shutdown(ptr noundef nonnull align 8 %0)
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.d, label %bb.c, label %_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs5XgW7KoffLW_12opendal_core.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEINtNtBG_4sync3ArcNtNtNtB1g_9scheduler14current_thread6HandleEEEECs5XgW7KoffLW_12opendal_core(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  invoke void @_RNvMs4_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB5_4CoreINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs9k3SxhrAWiO_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.h unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking19panic_cannot_unwind() #24
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harness11cancel_taskINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs5XgW7KoffLW_12opendal_core.exit

bb.h:                                             ; preds = %bb.e
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %_RINvNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harness11cancel_taskINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs5XgW7KoffLW_12opendal_core.exit

_RINvNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harness11cancel_taskINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.g, %bb.h
  %.sroa.8.0.i = phi ptr [ %i.k, %bb.h ], [ undef, %bb.g ]
  %.sroa.6.0.i = phi ptr [ %i.j, %bb.h ], [ null, %bb.g ]
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.i = load i64, ptr %.sroa.01.0.in.i, align 8, !range !22, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.01.0.i, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.6.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.8.0.i, ptr %.sroa.63.0..sroa_idx.i, align 8
  store i32 1, ptr %i.b, align 8
  call void @_RNvMs4_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB5_4CoreINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0)
  br label %_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs5XgW7KoffLW_12opendal_core.exit

_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.b, %_RINvNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harness11cancel_taskINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs5XgW7KoffLW_12opendal_core.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_IB20_IBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEINtNtBG_4sync3ArcNtNtNtB1g_9scheduler14current_thread6HandleEEEECs5XgW7KoffLW_12opendal_core(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !872
  store i32 2, ptr %i.d, align 8, !noalias !872
  %i.e = load i32, ptr %i.a, align 8, !range !19, !noalias !872, !noundef !9
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB7_4CoreINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs5XgW7KoffLW_12opendal_core.exit, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #21
          to label %bb.d unwind label %bb.e, !noalias !872

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB1t_IB1J_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #23
          to label %common.resume unwind label %bb.f, !noalias !872

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !872
  unreachable

_RNCNvMs4_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB7_4CoreINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !872
  tail call void @llvm.experimental.noalias.scope.decl(metadata !873)
  %i.j = load i64, ptr %1, align 8, !range !20, !alias.scope !873, !noundef !9
  %3 = trunc nuw i64 %i.j to i1
  br i1 %3, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEEECs5XgW7KoffLW_12opendal_core.exit, label %bb.g

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB7_4CoreINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs5XgW7KoffLW_12opendal_core.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !875, !noundef !9
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEEECs5XgW7KoffLW_12opendal_core.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !875, !noundef !9 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.o, align 8, !alias.scope !875 ; 6 uses
  %i.p = icmp eq ptr %.val.i.i, null
  br i1 %i.p, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEEECs5XgW7KoffLW_12opendal_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i, align 8, !invariant.load !9, !noalias !875 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !noalias !875

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !14, !invariant.load !9, !noalias !875 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEEECs5XgW7KoffLW_12opendal_core.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !15, !invariant.load !9, !noalias !875
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #22, !noalias !875
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEEECs5XgW7KoffLW_12opendal_core.exit

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !14, !invariant.load !9, !noalias !875 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !15, !invariant.load !9, !noalias !875
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #22, !noalias !875
  br label %.body

bb.o:                                             ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEEECs5XgW7KoffLW_12opendal_core.exit
  ret void

.body:                                            ; preds = %bb.m, %bb.n
  store i64 0, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB7_4CoreINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs5XgW7KoffLW_12opendal_core.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
  %i.c = extractvalue { i1, i1 } %i.b, 0
  %i.d = extractvalue { i1, i1 } %i.b, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.i, %bb.h, %bb.e, %.thread, %bb.a
  br i1 %i.c, label %bb.n, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !878
  store i32 2, ptr %i.a, align 8, !noalias !878
  invoke void @_RNvMs4_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB5_4CoreINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %.thread unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  %i.h = invoke { ptr, ptr } @_RNvNvNtCs9k3SxhrAWiO_3std9panicking12catch_unwind7cleanup(ptr noundef %i.g)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking19panic_cannot_unwind() #24
  unreachable

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !878
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit

bb.e:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.h, 0        ; 4 uses
  %i.k = extractvalue { ptr, ptr } %i.h, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.m(ptr noundef nonnull %i.j)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !14, !invariant.load !9 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !15, !invariant.load !9
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef range(i64 1, 536870913) %i.r) #22
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !14, !invariant.load !9 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCsgxBkk5gSRhY_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit4.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !15, !invariant.load !9
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, -9223372036854775808) %i.u, i64 noundef range(i64 1, 536870913) %i.x) #22
  br label %_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCsgxBkk5gSRhY_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit4.i.i

_RNvXs8_NtCs6i54tJFfzR_5alloc5boxedINtB5_3BoxDNtNtCsgxBkk5gSRhY_4core3any3AnyNtNtBL_6marker4SendEL_ENtNtNtBL_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core.exit4.i.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.s

bb.l:                                             ; preds = %bb.n, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit
  %i.y = call noundef zeroext i1 @_RNvMNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.y, label %bb.m, label %_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs5XgW7KoffLW_12opendal_core.exit

bb.m:                                             ; preds = %bb.l
  call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_IB20_IBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEINtNtBG_4sync3ArcNtNtNtB1g_9scheduler14current_thread6HandleEEEECs5XgW7KoffLW_12opendal_core(ptr nonnull %0)
  br label %_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs5XgW7KoffLW_12opendal_core.exit

_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @_RNvMs6_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef)
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 10 uses
  %i.i = tail call noundef i8 @_RNvMNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5stateNtB2_5State21transition_to_running(ptr noundef nonnull align 8 %0)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.s
    i8 2, label %_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs5XgW7KoffLW_12opendal_core.exit
    i8 3, label %_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB15_IB1B_DNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEEEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE10poll_innerCs5XgW7KoffLW_12opendal_core.exit.thread6
  ]

default.unreachable:                              ; preds = %_RINvNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harness11poll_futureINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs5XgW7KoffLW_12opendal_core.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @_RNvNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5waker12WAKER_VTABLE, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %.sroa.12.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !889
  store ptr %i.h, ptr %.sroa.12.8..sroa_idx.i.i, align 8
  %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %.sroa.7.8..sroa.12.8..sroa_idx.i.sroa_idx.i, align 8
  store ptr %i.h, ptr %i.g, align 8, !noalias !890
  %i.l = invoke noundef zeroext i1 @_RNvMs4_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB5_4CoreINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE4pollCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %.thread.i.i unwind label %bb.c, !noalias !889

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !889
  store i32 2, ptr %i.f, align 8, !noalias !889
  invoke void @_RNvMs4_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB5_4CoreINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIBZ_IB1v_DNtNtNtB13_6future6future6Futurep6OutputuNtNtB13_6marker4SendEL_EEEEINtNtB1z_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %.body.i.i unwind label %bb.d, !noalias !889

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !889
  unreachable

.body.i.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !889
  %i.o = extractvalue { ptr, i32 } %i.m, 0
  %i.p = invoke { ptr, ptr } @_RNvNvNtCs9k3SxhrAWiO_3std9panicking12catch_unwind7cleanup(ptr noundef %i.o)
          to label %bb.f unwind label %bb.e, !noalias !890 ; 2 uses

bb.e:                                             ; preds = %.body.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking19panic_cannot_unwind() #24, !noalias !890
  unreachable

.thread.i.i:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !889
  %.sroa.7.8.insert.ext.i.i = zext i1 %i.l to i64
  %i.r = inttoptr i64 %.sroa.7.8.insert.ext.i.i to ptr
  br label %bb.h

bb.f:                                             ; preds = %.body.i.i
  %i.s = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.p, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.h, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load i64, ptr %i.u, align 8, !range !22, !noalias !890, !noundef !9
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i.i
  %i.w = phi ptr [ %i.r, %.thread.i.i ], [ %i.t, %bb.f ]
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = trunc i64 %i.x to i1
  br i1 %i.y, label %_RINvNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harness11poll_futureINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB11_IB1x_DNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEEEINtNtB1B_4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEECs5XgW7KoffLW_12opendal_core.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ null, %bb.h ], [ %i.s, %bb.g ]
  %.sroa.6.sroa.5.0.i.i = phi ptr [ undef, %bb.h ], [ %i.t, %bb.g ]
  %.sroa.06.0.i.i = phi i64 [ 0, %bb.h ], [ %i.v, %bb.g ]
end_hunk_1
