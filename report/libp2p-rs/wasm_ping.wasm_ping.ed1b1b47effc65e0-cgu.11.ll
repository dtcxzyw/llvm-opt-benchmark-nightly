Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/wasm_ping.wasm_ping.ed1b1b47effc65e0-cgu.11?download=true
inline.NumInlined: 1294
inline.NumDeleted: 622
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchEECskm6LeB9lWb4_9wasm_ping:bb.a
  %.val1 = load i64, ptr %i.b, align 8, !noundef !15 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchECskm6LeB9lWb4_9wasm_ping.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i.i.i
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchECskm6LeB9lWb4_9wasm_ping.exit.i.i
  %.sroa.0.0.i.i14 = phi i64 [ %i.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchECskm6LeB9lWb4_9wasm_ping.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.0.i.i14 ; 3 uses
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i14, 1      ; 4 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field10ValueMatchEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #28
          to label %.body.i.i unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i.i.i: ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field10ValueMatchEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchECskm6LeB9lWb4_9wasm_ping.exit.i.i unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.d:                                             ; preds = %.lr.ph16
  %i.k = add i64 %.sroa.0.1.i.i15, 1              ; 2 uses
  %i.l = icmp eq i64 %i.k, %.val1
  br i1 %i.l, label %.body, label %.lr.ph16

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.g, %bb.b ]
  %i.n = icmp eq i64 %i.f, %.val1
  br i1 %i.n, label %.body, label %.lr.ph16

.lr.ph16:                                         ; preds = %.body.i.i, %bb.d
  %.sroa.0.1.i.i15 = phi i64 [ %i.k, %bb.d ], [ %i.f, %.body.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.1.i.i15
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(48) %i.o) #28
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph16
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

.body:                                            ; preds = %bb.d, %.body.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchEECskm6LeB9lWb4_9wasm_ping.exit unwind label %bb.g

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchECskm6LeB9lWb4_9wasm_ping.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.g:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchEECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCs5hzaM3VbZx4_5redis5types5ValueB19_EEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !616, !nonnull !15, !noundef !15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !616, !noundef !15 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCs5hzaM3VbZx4_5redis5types5ValueBG_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs5hzaM3VbZx4_5redis5types5ValueBC_EECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %bb.c
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCs5hzaM3VbZx4_5redis5types5ValueBG_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs5hzaM3VbZx4_5redis5types5ValueBC_EECskm6LeB9lWb4_9wasm_ping.exit.i
  %.sroa.0.0.i13 = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs5hzaM3VbZx4_5redis5types5ValueBC_EECskm6LeB9lWb4_9wasm_ping.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [112 x i8], ptr %i.b, i64 %.sroa.0.0.i13 ; 3 uses
  %i.h = add i64 %.sroa.0.0.i13, 1                ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5hzaM3VbZx4_5redis5types5ValueECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.g)
          to label %bb.c unwind label %bb.b, !inline_history !614

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5hzaM3VbZx4_5redis5types5ValueECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(56) %i.j) #28
          to label %.body.i unwind label %bb.d, !inline_history !614

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5hzaM3VbZx4_5redis5types5ValueECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(56) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs5hzaM3VbZx4_5redis5types5ValueBC_EECskm6LeB9lWb4_9wasm_ping.exit.i unwind label %bb.f, !inline_history !614

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !inline_history !614
  unreachable

bb.e:                                             ; preds = %.lr.ph15
  %i.m = add i64 %.sroa.0.1.i14, 1                ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.d
  br i1 %i.n, label %.body, label %.lr.ph15

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.b, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.i, %bb.b ]
  %i.p = icmp eq i64 %i.h, %i.d
  br i1 %i.p, label %.body, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i, %bb.e
  %.sroa.0.1.i14 = phi i64 [ %i.m, %bb.e ], [ %i.h, %.body.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [112 x i8], ptr %i.b, i64 %.sroa.0.1.i14
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs5hzaM3VbZx4_5redis5types5ValueBC_EECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(112) %i.q) #28
          to label %bb.e unwind label %bb.g, !inline_history !615

bb.g:                                             ; preds = %.lr.ph15
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !inline_history !615
  unreachable

.body:                                            ; preds = %bb.e, %.body.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs5hzaM3VbZx4_5redis5types5ValueBN_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTNtNtCs5hzaM3VbZx4_5redis5types5ValueB1g_EEECskm6LeB9lWb4_9wasm_ping.exit unwind label %bb.h

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtCs5hzaM3VbZx4_5redis5types5ValueBG_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs5hzaM3VbZx4_5redis5types5ValueBC_EECskm6LeB9lWb4_9wasm_ping.exit.i, %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs5hzaM3VbZx4_5redis5types5ValueBN_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.h:                                             ; preds = %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTNtNtCs5hzaM3VbZx4_5redis5types5ValueB1g_EEECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !619, !nonnull !15, !noundef !15
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !619
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_E9drop_slowCs5hzaM3VbZx4_5redis(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) #25
  br label %_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit

_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2C_4SyncEL_EECskm6LeB9lWb4_9wasm_ping(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !15 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !18, !invariant.load !15 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !27, !invariant.load !15
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #26
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !18, !invariant.load !15 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !27, !invariant.load !15
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #26
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit4

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutuEp6OutputINtNtBP_6result6ResultuNtNtNtBP_2io5error5ErrorENtNtBP_6marker4SendNtB2p_4SyncEL_ENtNtBN_4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCs5hzaM3VbZx4_5redis5types5ValueEECskm6LeB9lWb4_9wasm_ping(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5hzaM3VbZx4_5redis5types5ValueECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(56) %.0.val)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 56, i64 noundef 8) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 56, i64 noundef 8) #26
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCshEYSjulKtIJ_18tracing_subscriber8registry13ScopeFromRootNtNtBE_7sharded8RegistryEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(672) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !631, !noundef !15 ; 3 uses
  %.promoted.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !631 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !631
  %i.e = icmp eq i64 %.promoted.i.i.i, %i.d
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCsczYENlYh6wI_8smallvec8IntoIterAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtB1M_7sharded8RegistryEj10_EEECskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !632, !noundef !15
  %i.h = icmp ugt i64 %i.g, 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !631, !nonnull !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %.noexc.i.i
  %i.m = phi i64 [ %i.n, %.noexc.i.i ], [ %.promoted.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 3 uses
  store i64 %i.n, ptr %i.b, align 8, !alias.scope !631
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !noalias !631
  %.pr.us.i.i.i = load ptr, ptr %i.a, align 8, !noalias !631
  %.not.us.i.i.i = icmp eq ptr %.pr.us.i.i.i, null
  br i1 %.not.us.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCsczYENlYh6wI_8smallvec8IntoIterAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtB1M_7sharded8RegistryEj10_EEECskm6LeB9lWb4_9wasm_ping.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtB10_7sharded8RegistryEEECskm6LeB9lWb4_9wasm_ping.exit.us.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtB10_7sharded8RegistryEEECskm6LeB9lWb4_9wasm_ping.exit.us.i.i.i: ; preds = %.lr.ph.split.us.i.i.i
  invoke void @_RNvXs6_NtCskeoOuuhwsQF_12sharded_slab4poolINtB5_3RefNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !633

.noexc.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtB10_7sharded8RegistryEEECskm6LeB9lWb4_9wasm_ping.exit.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !631
  %i.p = icmp eq i64 %i.n, %i.d
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCsczYENlYh6wI_8smallvec8IntoIterAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtB1M_7sharded8RegistryEj10_EEECskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph.split.us.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.noexc1.i.i
  %i.q = phi i64 [ %i.r, %.noexc1.i.i ], [ %.promoted.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.r = add i64 %i.q, 1                          ; 3 uses
  store i64 %i.r, ptr %i.b, align 8, !alias.scope !631
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.s, i64 40, i1 false)
  %.pr.i.i.i = load ptr, ptr %i.a, align 8, !noalias !631
  %.not.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCsczYENlYh6wI_8smallvec8IntoIterAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtB1M_7sharded8RegistryEj10_EEECskm6LeB9lWb4_9wasm_ping.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtB10_7sharded8RegistryEEECskm6LeB9lWb4_9wasm_ping.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtB10_7sharded8RegistryEEECskm6LeB9lWb4_9wasm_ping.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i
  invoke void @_RNvXs6_NtCskeoOuuhwsQF_12sharded_slab4poolINtB5_3RefNtNtNtCshEYSjulKtIJ_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.noexc1.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !633

.noexc1.i.i:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtB10_7sharded8RegistryEEECskm6LeB9lWb4_9wasm_ping.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !631
  %i.t = icmp eq i64 %i.r, %i.d
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCsczYENlYh6wI_8smallvec8IntoIterAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtB1M_7sharded8RegistryEj10_EEECskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph.split.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtB10_7sharded8RegistryEEECskm6LeB9lWb4_9wasm_ping.exit.us.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtB10_7sharded8RegistryEEECskm6LeB9lWb4_9wasm_ping.exit.i.i.i
  %lpad.loopexit.split-lp8 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtB1e_7sharded8RegistryEj10_EECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(672) %0) #28
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.c:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp8

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCsczYENlYh6wI_8smallvec8IntoIterAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtB1M_7sharded8RegistryEj10_EEECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %.lr.ph.split.i.i.i, %.noexc1.i.i, %.lr.ph.split.us.i.i.i, %.noexc.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !631
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsczYENlYh6wI_8smallvec8SmallVecAINtNtCshEYSjulKtIJ_18tracing_subscriber8registry7SpanRefNtNtB1e_7sharded8RegistryEj10_EECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(672) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjQblLEOeBB3_7matchit4tree4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECskm6LeB9lWb4_9wasm_ping.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.a, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit4 unwind label %bb.e

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %.body, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %eh.lpad-body, %.body ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsjQblLEOeBB3_7matchit4tree4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #28
          to label %.body5 unwind label %bb.l

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECskm6LeB9lWb4_9wasm_ping.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjQblLEOeBB3_7matchit6escape14UnescapedRouteECskm6LeB9lWb4_9wasm_ping.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !643, !nonnull !15, !noundef !15
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !643, !noundef !15
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsjQblLEOeBB3_7matchit4tree4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 %i.l, i64 noundef %i.n)
          to label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsjQblLEOeBB3_7matchit4tree4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit.i unwind label %bb.f, !noalias !642, !inline_history !644

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsjQblLEOeBB3_7matchit4tree4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit4
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsjQblLEOeBB3_7matchit4tree4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsjQblLEOeBB3_7matchit4tree4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEEECskm6LeB9lWb4_9wasm_ping.exit unwind label %bb.h, !inline_history !645

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit4
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCsjQblLEOeBB3_7matchit4tree4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body5 unwind label %bb.g, !inline_history !645

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBG_5value11HeaderValueEECskm6LeB9lWb4_9wasm_ping:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !708, !noundef !15
  %i.z = load ptr, ptr %i.w, align 8, !alias.scope !708, !nonnull !15, !align !22, !noundef !15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !708, !nonnull !15, !noundef !15
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !708, !noundef !15
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !708, !noundef !15
  tail call void %i.ab(ptr noundef %i.y, ptr noundef %i.ad, i64 noundef %i.af), !noalias !708, !inline_history !692
  ret void

bb.d:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header5value11HeaderValueECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropNtNtBI_6string6StringEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !711, !noundef !15 ; 2 uses
  %i.b = tail call noundef i64 @_RNvMNtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtB6_6string6StringE3lenCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtNtB8_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i.i: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.b
  br i1 %i.d, label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtNtB8_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.0.i.i1
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i.i unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit7.i.i: ; preds = %.lr.ph3
  %i.g = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.b
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit7.i.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.b
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit7.i.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit7.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %.sroa.0.1.i.i2
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit7.i.i unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit7.i.i._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit7.i.i, %bb.b
  resume { ptr, i32 } %i.i

bb.c:                                             ; preds = %.lr.ph3
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB4_11InPlaceDropNtNtB8_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtNtCs5hzaM3VbZx4_5redis5types5ValueB1q_EEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !715)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !715, !nonnull !15, !noundef !15 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !715, !nonnull !15, !noundef !15 ; 2 uses
  %i.e = ptrtoint ptr %.val1.i to i64
  %i.f = ptrtoint ptr %.val.i to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 112                 ; 3 uses
  %i.i = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.i, label %_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5hzaM3VbZx4_5redis5types5ValueBX_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph

.body.i:                                          ; preds = %bb.e, %.body.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !715
  %i.j = load ptr, ptr %0, align 8, !alias.scope !715, !nonnull !15, !noundef !15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !715, !noundef !15
  store i64 %i.l, ptr %i.b, align 8, !noalias !715
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8, !noalias !715
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs5hzaM3VbZx4_5redis5types5ValueBN_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.i unwind label %bb.h, !noalias !715

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs5hzaM3VbZx4_5redis5types5ValueBC_EECskm6LeB9lWb4_9wasm_ping.exit.i.i: ; preds = %bb.c
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5hzaM3VbZx4_5redis5types5ValueBX_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs5hzaM3VbZx4_5redis5types5ValueBC_EECskm6LeB9lWb4_9wasm_ping.exit.i.i
  %.sroa.0.0.i.i13 = phi i64 [ %i.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs5hzaM3VbZx4_5redis5types5ValueBC_EECskm6LeB9lWb4_9wasm_ping.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [112 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i13 ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.0.0.i.i13, 1      ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5hzaM3VbZx4_5redis5types5ValueECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.o)
          to label %bb.c unwind label %bb.b, !noalias !715, !inline_history !714

bb.b:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5hzaM3VbZx4_5redis5types5ValueECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(56) %i.r) #28
          to label %.body.i.i unwind label %bb.d, !noalias !715, !inline_history !714

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5hzaM3VbZx4_5redis5types5ValueECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(56) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs5hzaM3VbZx4_5redis5types5ValueBC_EECskm6LeB9lWb4_9wasm_ping.exit.i.i unwind label %bb.f, !noalias !715, !inline_history !714

bb.d:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !715, !inline_history !714
  unreachable

bb.e:                                             ; preds = %.lr.ph15
  %i.u = add i64 %.sroa.0.1.i.i14, 1              ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.h
  br i1 %i.v, label %.body.i, label %.lr.ph15

bb.f:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.q, %bb.b ]
  %i.x = icmp eq i64 %i.p, %i.h
  br i1 %i.x, label %.body.i, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i.i, %bb.e
  %.sroa.0.1.i.i14 = phi i64 [ %i.u, %bb.e ], [ %i.p, %.body.i.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [112 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i14
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs5hzaM3VbZx4_5redis5types5ValueBC_EECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(112) %i.y) #28
          to label %bb.e unwind label %bb.g, !noalias !715, !inline_history !3

bb.g:                                             ; preds = %.lr.ph15
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !715, !inline_history !3
  unreachable

bb.h:                                             ; preds = %.body.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !715
  unreachable

bb.i:                                             ; preds = %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !715
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs5hzaM3VbZx4_5redis5types5ValueBX_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs5hzaM3VbZx4_5redis5types5ValueBC_EECskm6LeB9lWb4_9wasm_ping.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !715
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !715, !nonnull !15, !noundef !15
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !715, !noundef !15
  store i64 %i.ad, ptr %i.a, align 8, !noalias !715
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ab, ptr %i.ae, align 8, !noalias !715
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtCs5hzaM3VbZx4_5redis5types5ValueBN_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !715
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !715
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemNtNtNtB4_3net11socket_addr10SocketAddrNtNtB4_6marker4SendEL_ENCNCINvNtNtCs5hzaM3VbZx4_5redis3aio10connection14connect_simpleNtNtB3v_5tokio5TokioE00EECskm6LeB9lWb4_9wasm_ping(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !15 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !18, !invariant.load !15 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtNtNtB4_3net11socket_addr10SocketAddrNtNtB4_6marker4SendEL_EECskm6LeB9lWb4_9wasm_ping.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !27, !invariant.load !15
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtNtNtB4_3net11socket_addr10SocketAddrNtNtB4_6marker4SendEL_EECskm6LeB9lWb4_9wasm_ping.exit

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !18, !invariant.load !15 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtNtBQ_3net11socket_addr10SocketAddrNtNtBQ_6marker4SendEL_ENtNtNtBQ_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !27, !invariant.load !15
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #26
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtNtBQ_3net11socket_addr10SocketAddrNtNtBQ_6marker4SendEL_ENtNtNtBQ_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit4.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iteratorp4ItemNtNtNtBQ_3net11socket_addr10SocketAddrNtNtBQ_6marker4SendEL_ENtNtNtBQ_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemNtNtNtB4_3net11socket_addr10SocketAddrNtNtB4_6marker4SendEL_EECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !15 ; 4 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskm6LeB9lWb4_9wasm_ping.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !720
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i
    i64 1, label %bb.d
  ], !prof !21

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !721, !noalias !720
  store i8 3, ptr %i.a, align 8, !alias.scope !721, !noalias !720
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j), !noalias !720
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !720
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskm6LeB9lWb4_9wasm_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtBJ_5TokioNtBL_12RedisRuntime11connect_tcp0ECskm6LeB9lWb4_9wasm_ping(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = load i8, ptr %i.c, align 8, !range !734, !noundef !15
  %cond = icmp eq i8 %i.d, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_6future5ready5ReadyINtNtB4_6result6ResultINtNtB4_6option8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorEEECskm6LeB9lWb4_9wasm_ping.exit.i.i, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = load i8, ptr %i.e, align 8, !range !734, !noundef !15
  %cond.i = icmp eq i8 %i.f, 3
  br i1 %cond.i, label %bb.c, label %common.ret

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.h = load i8, ptr %i.g, align 2, !range !29, !noundef !15
  switch i8 %i.h, label %common.ret [
    i8 4, label %bb.h
    i8 3, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val.i.i = load i16, ptr %i.i, align 8, !range !735, !noundef !15
  %i.j = getelementptr i8, ptr %0, i64 120
  %.val3.i.i = load ptr, ptr %i.j, align 8        ; 4 uses
  %cond.i.i.i.i = icmp eq i16 %.val.i.i, -1
  br i1 %cond.i.i.i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_6future5ready5ReadyINtNtB4_6result6ResultINtNtB4_6option8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorEEECskm6LeB9lWb4_9wasm_ping.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !736
  %i.k = ptrtoint ptr %.val3.i.i to i64           ; 2 uses
  %i.l = and i64 %i.k, 3
  switch i64 %i.l, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i.i.i.i.i
    i64 3, label %bb.f
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i.i.i.i.i
    i64 1, label %bb.g
  ], !prof !21

default.unreachable:                              ; preds = %bb.t, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.m = icmp ult ptr %.val3.i.i, inttoptr (i64 188978561024 to ptr)
  %i.n = and i64 %i.k, 1095216660480
  %i.o = icmp ne i64 %i.n, 1095216660480
  tail call void @llvm.assume(i1 %i.m)
  tail call void @llvm.assume(i1 %i.o)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %.val3.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !alias.scope !737, !noalias !736
  store i8 3, ptr %i.b, align 8, !alias.scope !737, !noalias !736
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i.i.i.i.i unwind label %bb.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskm6LeB9lWb4_9wasm_ping.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !736
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_6future5ready5ReadyINtNtB4_6result6ResultINtNtB4_6option8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorEEECskm6LeB9lWb4_9wasm_ping.exit.i.i

bb.h:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.s = load i8, ptr %i.r, align 8, !range !734, !noundef !15
  %cond.i.i.i = icmp eq i8 %i.s, 3
  br i1 %cond.i.i.i, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECskm6LeB9lWb4_9wasm_ping.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.v = load i8, ptr %i.u, align 4, !range !734, !noundef !15
  switch i8 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECskm6LeB9lWb4_9wasm_ping.exit.i.i [
    i8 0, label %bb.j
    i8 3, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val.i.i.i.i = load i32, ptr %i.w, align 8, !range !738, !noundef !15
  %i.x = tail call noundef i32 @close(i32 noundef %.val.i.i.i.i) #26 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6streamNtBG_9TcpStream12connect_addr0ECskm6LeB9lWb4_9wasm_ping.exit.i.i

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXs3_NtNtCsc13h7DQFCSE_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val2.i.i.i.i.i.i = load i32, ptr %i.z, align 8, !alias.scope !739, !noundef !15 ; 2 uses
  %i.aa = icmp eq i32 %.val2.i.i.i.i.i.i, -1
  br i1 %i.aa, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECskm6LeB9lWb4_9wasm_ping.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = tail call noundef i32 @close(i32 noundef %.val2.i.i.i.i.i.i) #26 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECskm6LeB9lWb4_9wasm_ping.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val.i.i.i.i.i.i = load i32, ptr %i.ac, align 8, !alias.scope !739, !noundef !15 ; 2 uses
  %i.ad = icmp eq i32 %.val.i.i.i.i.i.i, -1
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamECskm6LeB9lWb4_9wasm_ping.exit.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = tail call noundef i32 @close(i32 noundef %.val.i.i.i.i.i.i) #26 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamECskm6LeB9lWb4_9wasm_ping.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECskm6LeB9lWb4_9wasm_ping.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t) #28
          to label %.body.i.i unwind label %bb.p

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECskm6LeB9lWb4_9wasm_ping.exit.i.i.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

end_hunk_1
begin_hunk_2_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameECskm6LeB9lWb4_9wasm_ping:bb.a
  %i.m = icmp eq i64 %i.k, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolECskm6LeB9lWb4_9wasm_ping.exit.i.i.i unwind label %bb.i, !noalias !849

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolECskm6LeB9lWb4_9wasm_ping.exit.i.i.i unwind label %bb.i, !noalias !849

bb.g:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !849
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolECskm6LeB9lWb4_9wasm_ping.exit.i.i.i: ; preds = %bb.f, %bb.e, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskm6LeB9lWb4_9wasm_ping.exit.i.i.i.i
  %i.p = icmp eq i64 %i.f, %.val1.i
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolEECskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = add i64 %.sroa.0.1.i.i.i22, 1            ; 2 uses
  %i.r = icmp eq i64 %i.q, %.val1.i
  br i1 %i.r, label %.body.i, label %.lr.ph

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.c
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.j, %bb.c ]
  %i.t = icmp eq i64 %i.f, %.val1.i
  br i1 %i.t, label %.body.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i.i, %bb.h
  %.sroa.0.1.i.i.i22 = phi i64 [ %i.q, %bb.h ], [ %i.f, %.body.i.i.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [72 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i22
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(72) %i.u) #28
          to label %bb.h unwind label %bb.j, !noalias !849

bb.j:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !849
  unreachable

.body.i:                                          ; preds = %bb.h, %.body.i.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolEECskm6LeB9lWb4_9wasm_ping.exit.i unwind label %bb.k

bb.k:                                             ; preds = %.body.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolEECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolEECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolECskm6LeB9lWb4_9wasm_ping.exit.i.i.i, %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !20, !alias.scope !856, !noundef !15
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskm6LeB9lWb4_9wasm_ping.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskm6LeB9lWb4_9wasm_ping.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace11BytesOrWideEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(32) %0) #28
          to label %bb.h unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.a, %bb.b
  %i.e = load i64, ptr %0, align 8, !range !14, !alias.scope !857, !noundef !15 ; 2 uses
  %i.f = icmp eq i64 %i.e, 2
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace11BytesOrWideEECskm6LeB9lWb4_9wasm_ping.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskm6LeB9lWb4_9wasm_ping.exit
  %i.g = icmp eq i64 %i.e, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace11BytesOrWideEECskm6LeB9lWb4_9wasm_ping.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace11BytesOrWideEECskm6LeB9lWb4_9wasm_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsG258MDvU3F_3std9backtrace11BytesOrWideEECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskm6LeB9lWb4_9wasm_ping.exit, %bb.e, %bb.f
  ret void

bb.g:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.h:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCse0yMYRRwETY_5hyper5error5ErrorECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %.val.i = load ptr, ptr %.val, align 8, !noundef !15 ; 4 uses
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val1.i = load ptr, ptr %i.a, align 8          ; 6 uses
  %i.b = icmp eq ptr %.val.i, null
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCse0yMYRRwETY_5hyper5error9ErrorImplEECskm6LeB9lWb4_9wasm_ping.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.c = load ptr, ptr %.val1.i, align 8, !invariant.load !15 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.c(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !18, !invariant.load !15 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCse0yMYRRwETY_5hyper5error9ErrorImplEECskm6LeB9lWb4_9wasm_ping.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !27, !invariant.load !15
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.e, i64 noundef range(i64 1, 536870913) %i.h) #26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCse0yMYRRwETY_5hyper5error9ErrorImplEECskm6LeB9lWb4_9wasm_ping.exit

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !18, !invariant.load !15 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !27, !invariant.load !15
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 24, i64 noundef 8) #26
  resume { ptr, i32 } %i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtCse0yMYRRwETY_5hyper5error9ErrorImplEECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.a, %bb.d, %bb.e
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 24, i64 noundef 8) #26
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf7xb2awyBix_9axum_core5error5ErrorECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !15, !align !22, !noundef !15 ; 5 uses
  %i.b = load ptr, ptr %.val1, align 8, !invariant.load !15 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.b(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !18, !invariant.load !15 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskm6LeB9lWb4_9wasm_ping.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !27, !invariant.load !15
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskm6LeB9lWb4_9wasm_ping.exit

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !18, !invariant.load !15 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit4.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !27, !invariant.load !15
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #26
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit4.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping.exit4.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECskm6LeB9lWb4_9wasm_ping.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECskm6LeB9lWb4_9wasm_ping.exit
    i64 1, label %bb.c
  ], !prof !21

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECskm6LeB9lWb4_9wasm_ping.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !860
  store i8 3, ptr %i.a, align 8, !alias.scope !860
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECskm6LeB9lWb4_9wasm_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5hzaM3VbZx4_5redis3aio5tokio5TokioECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !35, !noundef !15
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXs3_NtNtCsc13h7DQFCSE_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i.i = load i32, ptr %i.e, align 8, !alias.scope !869, !noundef !15 ; 2 uses
  %i.f = icmp eq i32 %.val2.i.i, -1
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECskm6LeB9lWb4_9wasm_ping.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef i32 @close(i32 noundef %.val2.i.i) #26 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECskm6LeB9lWb4_9wasm_ping.exit.i.i

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i = load i32, ptr %i.h, align 8, !alias.scope !869, !noundef !15 ; 2 uses
  %i.i = icmp eq i32 %.val.i.i, -1
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamECskm6LeB9lWb4_9wasm_ping.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamECskm6LeB9lWb4_9wasm_ping.exit.sink.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECskm6LeB9lWb4_9wasm_ping.exit.i.i: ; preds = %bb.d, %bb.c
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #28
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECskm6LeB9lWb4_9wasm_ping.exit.i.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3uds6stream10UnixStreamEECskm6LeB9lWb4_9wasm_ping.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECskm6LeB9lWb4_9wasm_ping.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3tcp6stream9TcpStreamEECskm6LeB9lWb4_9wasm_ping.exit.i.i ], [ %i.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3uds6stream10UnixStreamEECskm6LeB9lWb4_9wasm_ping.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.a
  invoke void @_RNvXs3_NtNtCsc13h7DQFCSE_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtNtCsc2nZRnW43Xw_3mio3net3uds6stream10UnixStreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i.i1 = load i32, ptr %i.l, align 8, !alias.scope !870, !noundef !15 ; 2 uses
  %i.m = icmp eq i32 %.val2.i.i1, -1
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3uds6stream10UnixStreamEECskm6LeB9lWb4_9wasm_ping.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = tail call noundef i32 @close(i32 noundef %.val2.i.i1) #26 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3uds6stream10UnixStreamEECskm6LeB9lWb4_9wasm_ping.exit.i.i

bb.j:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i2 = load i32, ptr %i.o, align 8, !alias.scope !870, !noundef !15 ; 2 uses
  %i.p = icmp eq i32 %.val.i.i2, -1
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamECskm6LeB9lWb4_9wasm_ping.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamECskm6LeB9lWb4_9wasm_ping.exit.sink.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3uds6stream10UnixStreamEECskm6LeB9lWb4_9wasm_ping.exit.i.i: ; preds = %bb.i, %bb.h
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #28
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsc2nZRnW43Xw_3mio3net3uds6stream10UnixStreamEECskm6LeB9lWb4_9wasm_ping.exit.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamECskm6LeB9lWb4_9wasm_ping.exit.sink.split: ; preds = %bb.j, %bb.e
  %.val.i.i2.sink = phi i32 [ %.val.i.i, %bb.e ], [ %.val.i.i2, %bb.j ]
  %i.r = tail call noundef i32 @close(i32 noundef %.val.i.i2.sink) #26 ; 0 uses
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamECskm6LeB9lWb4_9wasm_ping.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio3net3tcp6stream9TcpStreamECskm6LeB9lWb4_9wasm_ping.exit.sink.split, %bb.j, %bb.e
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsc13h7DQFCSE_5tokio7runtime2io12registration12RegistrationECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5hzaM3VbZx4_5redis6errors11redis_error10RedisErrorECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  %i.a = load i8, ptr %0, align 8, !range !23, !alias.scope !887, !noundef !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.d
    i8 1, label %bb.i
    i8 2, label %bb.k
    i8 3, label %bb.o
    i8 4, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !890, !nonnull !15, !noundef !15
  %i.d = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !890
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5hzaM3VbZx4_5redis6errors11redis_error9ErrorReprECskm6LeB9lWb4_9wasm_ping.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSTjNtNtNtCs5hzaM3VbZx4_5redis6errors12server_error11ServerErrorEE9drop_slowBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5hzaM3VbZx4_5redis6errors11redis_error9ErrorReprECskm6LeB9lWb4_9wasm_ping.exit

bb.d:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !887, !noundef !15 ; 4 uses
  %i.f = icmp eq ptr %.val.i, null
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5hzaM3VbZx4_5redis6errors11redis_error9ErrorReprECskm6LeB9lWb4_9wasm_ping.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i64, ptr %.val.i, align 8, !noalias !887, !noundef !15
  %i.h = and i64 %i.g, 1
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5hzaM3VbZx4_5redis6errors11redis_error9ErrorReprECskm6LeB9lWb4_9wasm_ping.exit

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 3 uses
  %i.j = load atomic i64, ptr %i.i monotonic, align 8, !noalias !887
  %i.k = and i64 %i.j, 1
  %.not1.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not1.i.i.i.i, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5hzaM3VbZx4_5redis6errors11redis_error9ErrorReprECskm6LeB9lWb4_9wasm_ping.exit

bb.g:                                             ; preds = %bb.f
  %i.l = atomicrmw add ptr %i.i, i64 -2 release, align 8, !noalias !887
  %i.m = icmp eq i64 %i.l, 2
  br i1 %i.m, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5hzaM3VbZx4_5redis6errors11redis_error9ErrorReprECskm6LeB9lWb4_9wasm_ping.exit, !prof !19

end_hunk_2
begin_hunk_3_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBH_5value11HeaderValueEECskm6LeB9lWb4_9wasm_ping:bb.a
bb.d:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1113
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBG_5value11HeaderValueEECskm6LeB9lWb4_9wasm_ping.exit._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBG_5value11HeaderValueEECskm6LeB9lWb4_9wasm_ping.exit, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph22
  %i.al = add i64 %.sroa.0.121, 1                 ; 2 uses
  %i.am = icmp eq i64 %i.al, %1
  br i1 %i.am, label %._crit_edge, label %.lr.ph22

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCscwxJ8MeEu7n_4http6header4name10HeaderNameECskm6LeB9lWb4_9wasm_ping.exit.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.f ], [ %i.p, %bb.c ]
  %i.ao = icmp eq i64 %i.d, %1
  br i1 %i.ao, label %._crit_edge, label %.lr.ph22

.lr.ph22:                                         ; preds = %.body, %bb.e
  %.sroa.0.121 = phi i64 [ %i.al, %bb.e ], [ %i.d, %.body ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.0.121
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCscwxJ8MeEu7n_4http6header3map6BucketNtNtBG_5value11HeaderValueEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(104) %i.ap) #28
          to label %bb.e unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.g:                                             ; preds = %.lr.ph22
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env9directive9DirectiveECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 115292150460684698) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env9directive9DirectiveECskm6LeB9lWb4_9wasm_ping.exit
  %.sroa.0.012 = phi i64 [ %i.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env9directive9DirectiveECskm6LeB9lWb4_9wasm_ping.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.012 ; 5 uses
  %i.c = add nuw nsw i64 %.sroa.0.012, 1          ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !20, !alias.scope !1139, !noundef !15
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskm6LeB9lWb4_9wasm_ping.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskm6LeB9lWb4_9wasm_ping.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #28
          to label %bb.d unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %bb.b, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env5field5MatchEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i)
          to label %bb.g unwind label %bb.f

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.g, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !20, !alias.scope !1140, !noundef !15
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.i

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskm6LeB9lWb4_9wasm_ping.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskm6LeB9lWb4_9wasm_ping.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !range !20, !alias.scope !1141, !noundef !15
  %i.p = icmp eq i64 %i.o, -1
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env9directive9DirectiveECskm6LeB9lWb4_9wasm_ping.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env9directive9DirectiveECskm6LeB9lWb4_9wasm_ping.exit unwind label %bb.k

bb.i:                                             ; preds = %bb.e, %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env9directive9DirectiveECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.h, %bb.g
  %i.r = icmp eq i64 %i.c, %1
  br i1 %i.r, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env9directive9DirectiveECskm6LeB9lWb4_9wasm_ping.exit, %bb.a
  ret void

bb.j:                                             ; preds = %.lr.ph36
  %i.s = add i64 %.sroa.0.135, 1                  ; 2 uses
  %i.t = icmp eq i64 %i.s, %1
  br i1 %i.t, label %._crit_edge37, label %.lr.ph36

bb.k:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.k ], [ %.pn.i, %bb.e ], [ %.pn.i, %bb.d ]
  %i.v = icmp eq i64 %i.c, %1
  br i1 %i.v, label %._crit_edge37, label %.lr.ph36

.lr.ph36:                                         ; preds = %.body, %bb.j
  %.sroa.0.135 = phi i64 [ %i.s, %bb.j ], [ %i.c, %.body ] ; 2 uses
  %i.w = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.0.135
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCshEYSjulKtIJ_18tracing_subscriber6filter3env9directive9DirectiveECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(80) %i.w) #28
          to label %bb.j unwind label %bb.l

._crit_edge37:                                    ; preds = %bb.j, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.l:                                             ; preds = %.lr.ph36
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs5hzaM3VbZx4_5redis5types5ValueBC_EECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5hzaM3VbZx4_5redis5types5ValueECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(56) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5hzaM3VbZx4_5redis5types5ValueECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #28
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5hzaM3VbZx4_5redis5types5ValueECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsl9hx9jpF0W9_12futures_util6future9select_ok9select_okINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB16_6traits8iterator8Iteratorp4ItemNtNtNtB18_3net11socket_addr10SocketAddrNtNtB18_6marker4SendEL_ENCNCINvNtNtCs5hzaM3VbZx4_5redis3aio10connection14connect_simpleNtNtB4c_5tokio5TokioE00EECskm6LeB9lWb4_9wasm_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 7 uses
  %i.b = alloca [32 x i8], align 4                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [256 x i8], align 8               ; 7 uses
  %i.f = alloca [32 x i8], align 4                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.sroa.06.0.copyload = load ptr, ptr %1, align 8, !alias.scope !1189, !nonnull !15, !noundef !15 ; 13 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1189, !nonnull !15, !noundef !15 ; 17 uses
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.57.0.copyload = load ptr, ptr %.sroa.57.0..sroa_idx, align 8, !alias.scope !1189 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1191
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !15, !noalias !1192, !nonnull !15 ; 2 uses
  invoke void %i.k(ptr noalias nofree noundef nonnull sret([32 x i8]) align 4 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull %.sroa.06.0.copyload) #29
          to label %.noexc.i.i.i.i unwind label %bb.f, !noalias !1190, !inline_history !1161

.noexc.i.i.i.i:                                   ; preds = %bb.a
  %i.l = load i16, ptr %i.f, align 4, !range !1193, !noalias !1191, !noundef !15
  %.not.i.i.i.i.i = icmp eq i16 %i.l, 2
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1194
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 4 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !1191
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.57.0.copyload, ptr %i.m, align 8, !alias.scope !1195, !noalias !1194
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  store i8 0, ptr %i.n, align 8, !alias.scope !1195, !noalias !1194
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1196
  %i.o = call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 257) 256, i64 noundef range(i64 1, 9) 8) #26, !noalias !1196 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %bb.g, !prof !16

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #27
          to label %.noexc.i.i.i.i.i.i unwind label %bb.d, !noalias !1194

.noexc.i.i.i.i.i.i:                               ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtBJ_5TokioNtBL_12RedisRuntime11connect_tcp0ECskm6LeB9lWb4_9wasm_ping(ptr noundef nonnull align 8 dereferenceable(256) %i.e) #28
          to label %bb.am unwind label %bb.e, !noalias !1194

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1194
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.o, ptr noundef nonnull align 8 dereferenceable(256) %i.e, i64 256, i1 false), !noalias !1194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1190
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !15, !noalias !1197, !nonnull !15 ; 2 uses
  invoke void %i.u(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %.sroa.06.0.copyload) #29
          to label %bb.o unwind label %bb.n, !noalias !1190, !inline_history !1172

bb.h:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1190
  %i.v = load ptr, ptr %.sroa.4.0.copyload, align 8, !invariant.load !15, !noalias !1190 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.v(ptr noundef nonnull %.sroa.06.0.copyload)
          to label %bb.j unwind label %bb.l, !noalias !1190

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !18, !invariant.load !15, !noalias !1190 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemNtNtNtBc_3net11socket_addr10SocketAddrNtNtBc_6marker4SendEL_ENCNCINvNtNtCs5hzaM3VbZx4_5redis3aio10connection14connect_simpleNtNtB3d_5tokio5TokioE00EB1r_7collectINtNtBW_3vec3VecINtNtBc_3pin3PinIBS_NCNvXs0_B47_B45_NtB3d_12RedisRuntime11connect_tcp0EEEECskm6LeB9lWb4_9wasm_ping.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !27, !invariant.load !15, !noalias !1190
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.copyload, i64 noundef range(i64 1, 0) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #26, !noalias !1190
  br label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemNtNtNtBc_3net11socket_addr10SocketAddrNtNtBc_6marker4SendEL_ENCNCINvNtNtCs5hzaM3VbZx4_5redis3aio10connection14connect_simpleNtNtB3d_5tokio5TokioE00EB1r_7collectINtNtBW_3vec3VecINtNtBc_3pin3PinIBS_NCNvXs0_B47_B45_NtB3d_12RedisRuntime11connect_tcp0EEEECskm6LeB9lWb4_9wasm_ping.exit.thread

bb.l:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !18, !invariant.load !15, !noalias !1190 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !27, !invariant.load !15, !noalias !1190
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.copyload, i64 noundef range(i64 1, 0) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #26, !noalias !1190
  br label %common.resume

common.resume:                                    ; preds = %bb.ap, %bb.l, %bb.m, %.body16.i.i.i.i, %bb.am
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body17.i.i.i.i, %.body16.i.i.i.i ], [ %i.ab, %bb.l ], [ %i.ab, %bb.m ], [ %.pn.ph.i.i.i.i, %bb.am ], [ %i.co, %bb.ap ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.p, %bb.o, %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtB1y_5TokioNtB1A_12RedisRuntime11connect_tcp0EEECskm6LeB9lWb4_9wasm_ping(ptr %i.o) #28
          to label %bb.am unwind label %bb.al, !noalias !1190

bb.o:                                             ; preds = %bb.g
  %i.ai = load i64, ptr %i.g, align 8, !noalias !1190, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1190
  %i.aj = call i64 @llvm.uadd.sat.i64(i64 %i.ai, i64 1)
  %..i.i.i.i.i = call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.aj, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1190
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %..i.i.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc13.i.i.i.i unwind label %bb.n, !noalias !1190

.noexc13.i.i.i.i:                                 ; preds = %bb.o
  %i.ak = load i64, ptr %i.d, align 8, !range !35, !noalias !1190, !noundef !15
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !37, !noalias !1190, !noundef !15 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.al, label %bb.p, label %bb.q, !prof !19

bb.p:                                             ; preds = %.noexc13.i.i.i.i
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !1190
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.an, i64 %i.ap) #27
          to label %.noexc14.i.i.i.i unwind label %bb.n, !noalias !1190

.noexc14.i.i.i.i:                                 ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %.noexc13.i.i.i.i
  %i.aq = load ptr, ptr %i.ao, align 8, !noalias !1190, !nonnull !15, !noundef !15 ; 2 uses
  %i.ar = icmp ule i64 %..i.i.i.i.i, %i.an
  call void @llvm.assume(i1 %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1190
  store ptr %i.o, ptr %i.aq, align 8, !noalias !1190
  store i64 %i.an, ptr %i.h, align 8, !noalias !1190
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1190
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !1190
  call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  br label %bb.r

bb.r:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core3pin3PinINtNtB6_5boxed3BoxNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtB1A_5TokioNtB1C_12RedisRuntime11connect_tcp0EEE7reserveCskm6LeB9lWb4_9wasm_ping.exit.i.i.i.i.i.i, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1200
  invoke void %i.k(ptr noalias nofree noundef nonnull sret([32 x i8]) align 4 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull %.sroa.06.0.copyload) #29
          to label %.noexc.i.i15.i.i.i.i unwind label %bb.aa, !noalias !1201, !inline_history !1161

.noexc.i.i15.i.i.i.i:                             ; preds = %bb.r
  %i.au = load i16, ptr %i.b, align 4, !range !1193, !noalias !1200, !noundef !15
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.au, 2
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ac, label %bb.s

bb.s:                                             ; preds = %.noexc.i.i15.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 4 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1200
  store ptr %.sroa.57.0.copyload, ptr %i.as, align 8, !alias.scope !1203, !noalias !1202
  store i8 0, ptr %i.at, align 8, !alias.scope !1203, !noalias !1202
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1204
  %i.av = call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 257) 256, i64 noundef range(i64 1, 9) 8) #26, !noalias !1204 ; 4 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.t, label %bb.ab, !prof !16

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #27
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.u, !noalias !1205

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtBJ_5TokioNtBL_12RedisRuntime11connect_tcp0ECskm6LeB9lWb4_9wasm_ping(ptr noundef nonnull align 8 dereferenceable(256) %i.a) #28
          to label %.body.i.i.i.i.i.i unwind label %bb.v, !noalias !1205

bb.v:                                             ; preds = %bb.u
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1205
  unreachable

.body.i.i.i.i.i.i:                                ; preds = %bb.ai, %bb.aa, %bb.u
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.cd, %bb.ai ], [ %i.bj, %bb.aa ], [ %i.ax, %bb.u ] ; 2 uses
  %i.az = load ptr, ptr %.sroa.4.0.copyload, align 8, !invariant.load !15, !noalias !1201 ; 2 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i1.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.body.i.i.i.i.i.i
  invoke void %i.az(ptr noundef nonnull %.sroa.06.0.copyload)
          to label %bb.x unwind label %bb.y, !noalias !1201

bb.x:                                             ; preds = %bb.w, %.body.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !18, !invariant.load !15, !noalias !1201 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %.body16.i.i.i.i, label %common.resume.i.sink.split.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !18, !invariant.load !15, !noalias !1201 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.body.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !range !27, !invariant.load !15, !noalias !1201
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.06.0.copyload, i64 noundef range(i64 1, 0) %i.bf, i64 noundef range(i64 1, 536870913) %i.bi) #26, !noalias !1201
  br label %.body.i.i.i.i.i
end_hunk_3
begin_hunk_4_@_RINvNtNtCsl9hx9jpF0W9_12futures_util6future9select_ok9select_okINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB16_6traits8iterator8Iteratorp4ItemNtNtNtB18_3net11socket_addr10SocketAddrNtNtB18_6marker4SendEL_ENCNCINvNtNtCs5hzaM3VbZx4_5redis3aio10connection14connect_simpleNtNtB4c_5tokio5TokioE00EECskm6LeB9lWb4_9wasm_ping:bb.a
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1190
  unreachable

bb.am:                                            ; preds = %bb.n, %bb.f, %bb.d
  %.pn.ph.i.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.n ], [ %i.s, %bb.f ], [ %i.q, %bb.d ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemNtNtNtB4_3net11socket_addr10SocketAddrNtNtB4_6marker4SendEL_ENCNCINvNtNtCs5hzaM3VbZx4_5redis3aio10connection14connect_simpleNtNtB3v_5tokio5TokioE00EECskm6LeB9lWb4_9wasm_ping(ptr nonnull %.sroa.06.0.copyload, ptr nonnull %.sroa.4.0.copyload) #28
          to label %common.resume unwind label %bb.al, !noalias !1190

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemNtNtNtBc_3net11socket_addr10SocketAddrNtNtBc_6marker4SendEL_ENCNCINvNtNtCs5hzaM3VbZx4_5redis3aio10connection14connect_simpleNtNtB3d_5tokio5TokioE00EB1r_7collectINtNtBW_3vec3VecINtNtBc_3pin3PinIBS_NCNvXs0_B47_B45_NtB3d_12RedisRuntime11connect_tcp0EEEECskm6LeB9lWb4_9wasm_ping.exit.thread: ; preds = %bb.j, %bb.k
  store i64 0, ptr %i.i, align 8
  %.sroa.5.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx11, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.6.0..sroa_idx12, align 8
  br label %bb.ao

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemNtNtNtBc_3net11socket_addr10SocketAddrNtNtBc_6marker4SendEL_ENCNCINvNtNtCs5hzaM3VbZx4_5redis3aio10connection14connect_simpleNtNtB3d_5tokio5TokioE00EB1r_7collectINtNtBW_3vec3VecINtNtBc_3pin3PinIBS_NCNvXs0_B47_B45_NtB3d_12RedisRuntime11connect_tcp0EEEECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.ae, %bb.af
  %.sroa.0.0.copyload1 = load i64, ptr %i.h, align 8, !noalias !1209
  %.sroa.5.0.copyload3 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1209
  %.sroa.6.0.copyload5 = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !1209 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1190
  store i64 %.sroa.0.0.copyload1, ptr %i.i, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.5.0.copyload3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.6.0.copyload5, ptr %.sroa.6.0..sroa_idx, align 8
  %i.cm = icmp ult i64 %.sroa.6.0.copyload5, 1152921504606846976
  call void @llvm.assume(i1 %i.cm)
  %i.cn = icmp eq i64 %.sroa.6.0.copyload5, 0
  br i1 %i.cn, label %bb.ao, label %bb.an, !prof !1210

bb.an:                                            ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemNtNtNtBc_3net11socket_addr10SocketAddrNtNtBc_6marker4SendEL_ENCNCINvNtNtCs5hzaM3VbZx4_5redis3aio10connection14connect_simpleNtNtB3d_5tokio5TokioE00EB1r_7collectINtNtBW_3vec3VecINtNtBc_3pin3PinIBS_NCNvXs0_B47_B45_NtB3d_12RedisRuntime11connect_tcp0EEEECskm6LeB9lWb4_9wasm_ping.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.ao:                                            ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemNtNtNtBc_3net11socket_addr10SocketAddrNtNtBc_6marker4SendEL_ENCNCINvNtNtCs5hzaM3VbZx4_5redis3aio10connection14connect_simpleNtNtB3d_5tokio5TokioE00EB1r_7collectINtNtBW_3vec3VecINtNtBc_3pin3PinIBS_NCNvXs0_B47_B45_NtB3d_12RedisRuntime11connect_tcp0EEEECskm6LeB9lWb4_9wasm_ping.exit.thread, %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemNtNtNtBc_3net11socket_addr10SocketAddrNtNtBc_6marker4SendEL_ENCNCINvNtNtCs5hzaM3VbZx4_5redis3aio10connection14connect_simpleNtNtB3d_5tokio5TokioE00EB1r_7collectINtNtBW_3vec3VecINtNtBc_3pin3PinIBS_NCNvXs0_B47_B45_NtB3d_12RedisRuntime11connect_tcp0EEEECskm6LeB9lWb4_9wasm_ping.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #27
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtB1O_5TokioNtB1Q_12RedisRuntime11connect_tcp0EEEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inTNtNtCs5hzaM3VbZx4_5redis5types5ValueBL_ENtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECskm6LeB9lWb4_9wasm_ping(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 82351536043346213) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 112)
  %i.d = load i64, ptr %i.a, align 8, !range !35, !noundef !15
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !37, !noundef !15 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskm6LeB9lWb4_9wasm_ping.exit, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #27
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.k = icmp ule i64 %2, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw [112 x i8], ptr %1, i64 %2
  %i.o = icmp eq i64 %i.g, 0
  br i1 %i.o, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskm6LeB9lWb4_9wasm_ping.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_RNvYTNtNtCs5hzaM3VbZx4_5redis5types5ValueB3_ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping.exit
  %.sroa.012.025 = phi ptr [ %1, %.lr.ph ], [ %i.s, %_RNvYTNtNtCs5hzaM3VbZx4_5redis5types5ValueB3_ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping.exit ] ; 4 uses
  %.sroa.7.024 = phi i64 [ 0, %.lr.ph ], [ %i.t, %_RNvYTNtNtCs5hzaM3VbZx4_5redis5types5ValueB3_ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping.exit ] ; 3 uses
  %.sroa.10.023 = phi i64 [ %i.g, %.lr.ph ], [ %i.q, %_RNvYTNtNtCs5hzaM3VbZx4_5redis5types5ValueB3_ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping.exit ]
  %i.q = add i64 %.sroa.10.023, -1                ; 2 uses
  %i.r = icmp eq ptr %.sroa.012.025, %i.n
  br i1 %i.r, label %.thread, label %bb.d

.thread:                                          ; preds = %_RNvYTNtNtCs5hzaM3VbZx4_5redis5types5ValueB3_ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping.exit, %bb.c, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskm6LeB9lWb4_9wasm_ping.exit
  store i64 %2, ptr %i.m, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.025, i64 112
  %i.t = add nuw nsw i64 %.sroa.7.024, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvXs1e_NtCs5hzaM3VbZx4_5redis5typesNtB6_5ValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(112) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %.sroa.012.025) #29
          to label %.noexc unwind label %.loopexit, !inline_history !1211

.noexc:                                           ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.025, i64 56
  invoke fastcc void @_RNvXs1e_NtCs5hzaM3VbZx4_5redis5typesNtB6_5ValueNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.u)
          to label %_RNvYTNtNtCs5hzaM3VbZx4_5redis5types5ValueB3_ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping.exit unwind label %bb.e, !inline_history !1211

bb.e:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs5hzaM3VbZx4_5redis5types5ValueECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b) #28
          to label %bb.h unwind label %bb.f, !inline_history !1211

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !inline_history !1211
  unreachable

_RNvYTNtNtCs5hzaM3VbZx4_5redis5types5ValueB3_ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCskm6LeB9lWb4_9wasm_ping.exit: ; preds = %.noexc
  %i.x = getelementptr inbounds nuw [112 x i8], ptr %i.j, i64 %.sroa.7.024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.x, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = icmp eq i64 %i.q, 0
  br i1 %i.y, label %.thread, label %bb.c

bb.g:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.h:                                             ; preds = %.loopexit, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.e ], [ %lpad.loopexit, %.loopexit ]
  store i64 %.sroa.7.024, ptr %i.m, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCs5hzaM3VbZx4_5redis5types5ValueB19_EEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #28
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs5hzaM3VbZx4_5redis5types5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtBa_6string6StringENCINvNtNtB1E_8adapters3map12map_try_foldBX_INtNtB1G_6result6ResultB3c_NtNtNtB11_6errors13parsing_error12ParsingErrorEB2C_INtNtNtB1G_3ops12control_flow11ControlFlowIB4g_B2C_zEB2C_ENvYB3c_NtBZ_14FromRedisValue16from_redis_valueNCINvXB3F_INtB3F_12GenericShuntINtB3D_3MapBI_B6r_EIB4g_zB4G_EEB1y_8try_foldB2C_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3c_E0B6b_E0E0B5v_ECskm6LeB9lWb4_9wasm_ping(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not17 = icmp eq ptr %.promoted, %i.f
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.4.018 = phi ptr [ %3, %.lr.ph ], [ %i.ac, %bb.n ] ; 7 uses
  %i.j = phi ptr [ %.promoted, %.lr.ph ], [ %i.k, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 3 uses
  store ptr %i.k, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1220
  store ptr %2, ptr %i.d, align 8, !noalias !1220
  store ptr %.sroa.4.018, ptr %i.h, align 8, !noalias !1220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1220
  invoke void @_RNvXsE_NtCs5hzaM3VbZx4_5redis5typesNtNtCsexYYUdYSQU6_5alloc6string6StringNtB5_14FromRedisValue16from_redis_value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
          to label %bb.c unwind label %bb.k, !noalias !1220

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1220
  %.sroa.4.16.copyload.i = load i64, ptr %i.c, align 8, !noalias !1220 ; 2 uses
  %.sroa.6.16.copyload.i = load ptr, ptr %.sroa.6.16..sroa_idx.i, align 8, !noalias !1220 ; 3 uses
  %.sroa.7.16.copyload.i = load i64, ptr %.sroa.7.16..sroa_idx.i, align 8, !noalias !1220
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1220
  store ptr %2, ptr %i.a, align 8, !noalias !1221
  store ptr %.sroa.4.018, ptr %i.i, align 8, !noalias !1221
  %i.l = icmp eq i64 %.sroa.4.16.copyload.i, -1
  br i1 %i.l, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.m, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %.val.i.i = load ptr, ptr %.val.le, align 8, !noalias !1221, !noundef !15 ; 4 uses
  %i.n = icmp eq ptr %.val.i.i, null
  br i1 %i.n, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %.val.i.i, align 8, !noalias !1222, !noundef !15
  %i.p = and i64 %i.o, 1
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8 ; 3 uses
  %i.r = load atomic i64, ptr %i.q monotonic, align 8, !noalias !1222
  %i.s = and i64 %i.r, 1
  %.not1.i.i.i.i.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not1.i.i.i.i.i.i.i, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.t = atomicrmw add ptr %i.q, i64 -2 release, align 8, !noalias !1222
  %i.u = icmp eq i64 %i.t, 2
  br i1 %i.u, label %bb.h, label %bb.m, !prof !19

bb.h:                                             ; preds = %bb.g
  %i.v = load atomic i64, ptr %i.q acquire, align 8, !noalias !1222 ; 0 uses
  invoke void @_RNvMs5_NtCscu618kbHohp_6arcstr7arc_strNtB5_9ThinInner12destroy_cold(ptr noundef nonnull %.val.i.i)
          to label %bb.m unwind label %bb.i, !noalias !1221

bb.i:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.6.16.copyload.i, ptr %.val.le, align 8, !noalias !1221
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropNtNtBI_6string6StringEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #28
          to label %.body.i unwind label %bb.j, !noalias !1221

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1221
  unreachable

.body.i:                                          ; preds = %bb.k, %bb.i
  %eh.lpad-body3.i = phi { ptr, i32 } [ %i.y, %bb.k ], [ %i.w, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body3.i

bb.k:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop11InPlaceDropNtNtBI_6string6StringEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #28
          to label %.body.i unwind label %bb.l, !noalias !1220

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1220
  unreachable

._crit_edge:                                      ; preds = %bb.n, %bb.a, %bb.m
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.018, %bb.m ], [ %3, %bb.a ], [ %i.ac, %bb.n ]
  %storemerge = phi i64 [ 1, %bb.m ], [ 0, %bb.a ], [ 0, %bb.n ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.ab, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.m:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  store ptr %.sroa.6.16.copyload.i, ptr %.val.le, align 8, !noalias !1221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1220
  br label %._crit_edge

bb.n:                                             ; preds = %bb.c
  store i64 %.sroa.4.16.copyload.i, ptr %.sroa.4.018, align 8, !noalias !1221
  %.sroa.69.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 8
  store ptr %.sroa.6.16.copyload.i, ptr %.sroa.69.16..sroa_idx.i.i, align 8, !noalias !1221
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 16
  store i64 %.sroa.7.16.copyload.i, ptr %.sroa.7.16..sroa_idx.i.i, align 8, !noalias !1221
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1220
  %.not = icmp eq ptr %i.k, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCscWOm1fvf9pm_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCs79iw4ZC9yCo_10serde_json2de6MapKeyNtNtB1V_4read7StrReadEECskm6LeB9lWb4_9wasm_ping(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(80) initializes((16, 24)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1235, !noundef !15
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !1235
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.f, align 8, !alias.scope !1236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1237
  call void @_RNvXs8_NtCs79iw4ZC9yCo_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1), !noalias !1238
  %i.g = load i64, ptr %i.a, align 8, !range !14, !noalias !1237, !noundef !15
  %i.h = icmp eq i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !1237, !nonnull !15, !noundef !15 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !1238
  store i64 -1, ptr %0, align 8, !alias.scope !1238
  br label %_RINvXsh_NtCs79iw4ZC9yCo_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCscWOm1fvf9pm_10serde_core2de12Deserializer18deserialize_stringNtNtB1b_5impls13StringVisitorECskm6LeB9lWb4_9wasm_ping.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1237
  call void @_RINvXs4_NtNtCscWOm1fvf9pm_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs79iw4ZC9yCo_10serde_json5error5ErrorECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %.sroa.4.0.copyload.i.i)
  br label %_RINvXsh_NtCs79iw4ZC9yCo_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCscWOm1fvf9pm_10serde_core2de12Deserializer18deserialize_stringNtNtB1b_5impls13StringVisitorECskm6LeB9lWb4_9wasm_ping.exit

_RINvXsh_NtCs79iw4ZC9yCo_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCscWOm1fvf9pm_10serde_core2de12Deserializer18deserialize_stringNtNtB1b_5impls13StringVisitorECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1237
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCscWOm1fvf9pm_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCs79iw4ZC9yCo_10serde_json2de6MapKeyNtNtB1V_4read9SliceReadEECskm6LeB9lWb4_9wasm_ping(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(64) initializes((16, 24)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1250)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1251, !noundef !15
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !1251
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.f, align 8, !alias.scope !1252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1253
  call void @_RNvXs5_NtCs79iw4ZC9yCo_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1), !noalias !1254
  %i.g = load i64, ptr %i.a, align 8, !range !14, !noalias !1253, !noundef !15
  %i.h = icmp eq i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !1253, !nonnull !15, !noundef !15 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !1254
  store i64 -1, ptr %0, align 8, !alias.scope !1254
  br label %_RINvXsh_NtCs79iw4ZC9yCo_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCscWOm1fvf9pm_10serde_core2de12Deserializer18deserialize_stringNtNtB1d_5impls13StringVisitorECskm6LeB9lWb4_9wasm_ping.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1253
  call void @_RINvXs4_NtNtCscWOm1fvf9pm_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCs79iw4ZC9yCo_10serde_json5error5ErrorECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %.sroa.4.0.copyload.i.i)
  br label %_RINvXsh_NtCs79iw4ZC9yCo_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCscWOm1fvf9pm_10serde_core2de12Deserializer18deserialize_stringNtNtB1d_5impls13StringVisitorECskm6LeB9lWb4_9wasm_ping.exit

_RINvXsh_NtCs79iw4ZC9yCo_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCscWOm1fvf9pm_10serde_core2de12Deserializer18deserialize_stringNtNtB1d_5impls13StringVisitorECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1253
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCscWOm1fvf9pm_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCseYThcfBXbiQ_19serde_path_to_error2de12DeserializerQINtNtCs79iw4ZC9yCo_10serde_json2de12DeserializerNtNtB2R_4read9SliceReadEEECskm6LeB9lWb4_9wasm_ping(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtCseYThcfBXbiQ_19serde_path_to_error2deINtB5_12DeserializerQINtNtCs79iw4ZC9yCo_10serde_json2de12DeserializerNtNtB19_4read9SliceReadEENtNtCscWOm1fvf9pm_10serde_core2de12Deserializer18deserialize_stringNtNtB2h_5impls13StringVisitorECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtNtCscWOm1fvf9pm_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeNtNtCs79iw4ZC9yCo_10serde_json5value5ValueECskm6LeB9lWb4_9wasm_ping(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs79iw4ZC9yCo_10serde_json5value2deNtB8_5ValueNtNtCscWOm1fvf9pm_10serde_core2de12Deserializer18deserialize_stringNtNtBW_5impls13StringVisitorECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXs6_NtNtCshEYSjulKtIJ_18tracing_subscriber3fmt6formatNtB6_13DefaultFieldsNtB6_12FormatFields13format_fieldsRNtNtCs9Bqz0CSWZZv_12tracing_core4span10AttributesECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !1259
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 1, ptr %i.c, align 8, !alias.scope !1260
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 25 ; 2 uses
  store i8 0, ptr %i.d, align 1, !alias.scope !1260
  call void @_RNvXs5_NtCshEYSjulKtIJ_18tracing_subscriber5fieldRNtNtCs9Bqz0CSWZZv_12tracing_core4span10AttributesNtB5_12RecordFields6recordCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @70)
  %.sroa.3.0.copyload = load i8, ptr %i.d, align 1
  %i.e = trunc nuw i8 %.sroa.3.0.copyload to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_4
begin_hunk_5_@_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecIBw_hEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping:bb.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i unwind label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit7.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit7.i._crit_edge, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit7.i._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit7.i
  %.sroa.0.1.i2 = phi i64 [ %i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit7.i unwind label %bb.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit7.i._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit7.i, %bb.b
  resume { ptr, i32 } %i.k

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskm6LeB9lWb4_9wasm_ping.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsdBtMCjsiEvL_8indexmap6BucketNtNtB7_6string6StringNtNtCs79iw4ZC9yCo_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !15 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtCsdBtMCjsiEvL_8indexmap6BucketNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs79iw4ZC9yCo_10serde_json5value5ValueEECskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsdBtMCjsiEvL_8indexmap6BucketNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs79iw4ZC9yCo_10serde_json5value5ValueEECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtCsdBtMCjsiEvL_8indexmap6BucketNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs79iw4ZC9yCo_10serde_json5value5ValueEECskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsdBtMCjsiEvL_8indexmap6BucketNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs79iw4ZC9yCo_10serde_json5value5ValueEECskm6LeB9lWb4_9wasm_ping.exit.i
  %.sroa.0.0.i13 = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsdBtMCjsiEvL_8indexmap6BucketNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs79iw4ZC9yCo_10serde_json5value5ValueEECskm6LeB9lWb4_9wasm_ping.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %.sroa.0.0.i13 ; 3 uses
  %i.h = add i64 %.sroa.0.0.i13, 1                ; 4 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs79iw4ZC9yCo_10serde_json5value5ValueECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(72) %i.j) #28
          to label %.body.i unwind label %bb.c, !inline_history !6

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs79iw4ZC9yCo_10serde_json5value5ValueECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(72) %i.k)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsdBtMCjsiEvL_8indexmap6BucketNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs79iw4ZC9yCo_10serde_json5value5ValueEECskm6LeB9lWb4_9wasm_ping.exit.i unwind label %bb.e, !inline_history !6

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !inline_history !6
  unreachable

bb.d:                                             ; preds = %.lr.ph15
  %i.m = add i64 %.sroa.0.1.i14, 1                ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.d
  br i1 %i.n, label %._crit_edge, label %.lr.ph15

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskm6LeB9lWb4_9wasm_ping.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.b, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.i, %bb.b ]
  %i.p = icmp eq i64 %i.h, %i.d
  br i1 %i.p, label %._crit_edge, label %.lr.ph15

.lr.ph15:                                         ; preds = %.body.i, %bb.d
  %.sroa.0.1.i14 = phi i64 [ %i.m, %bb.d ], [ %i.h, %.body.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [104 x i8], ptr %i.b, i64 %.sroa.0.1.i14
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsdBtMCjsiEvL_8indexmap6BucketNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs79iw4ZC9yCo_10serde_json5value5ValueEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(104) %i.q) #28
          to label %bb.d unwind label %bb.f, !inline_history !5

._crit_edge:                                      ; preds = %bb.d, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.f:                                             ; preds = %.lr.ph15
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !inline_history !5
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtCsdBtMCjsiEvL_8indexmap6BucketNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs79iw4ZC9yCo_10serde_json5value5ValueEECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsdBtMCjsiEvL_8indexmap6BucketNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCs79iw4ZC9yCo_10serde_json5value5ValueEECskm6LeB9lWb4_9wasm_ping.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCsl6TgSXZDiW0_4slab5EntryINtNtNtNtCs66a4hBEq2Hz_2h25proto7streams6buffer4SlotINtNtB1g_5frame5FrameINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !15 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtCsl6TgSXZDiW0_4slab5EntryINtNtNtNtCs66a4hBEq2Hz_2h25proto7streams6buffer4SlotINtNtB1d_5frame5FrameINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEEECskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtCsl6TgSXZDiW0_4slab5EntryINtNtNtNtCs66a4hBEq2Hz_2h25proto7streams6buffer4SlotINtNtB1d_5frame5FrameINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEEECskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [312 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsl6TgSXZDiW0_4slab5EntryINtNtNtNtCs66a4hBEq2Hz_2h25proto7streams6buffer4SlotINtNtB1c_5frame5FrameINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(312) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [312 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCsl6TgSXZDiW0_4slab5EntryINtNtNtNtCs66a4hBEq2Hz_2h25proto7streams6buffer4SlotINtNtB1c_5frame5FrameINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(312) %i.m) #28
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtCsl6TgSXZDiW0_4slab5EntryINtNtNtNtCs66a4hBEq2Hz_2h25proto7streams6buffer4SlotINtNtB1d_5frame5FrameINtNtNtCse0yMYRRwETY_5hyper5proto2h27SendBufNtNtCs1eA6bChxBZF_5bytes5bytes5BytesEEEEECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function5FnMutuEp6OutputINtNtB15_6result6ResultuNtNtNtB15_2io5error5ErrorENtNtB15_6marker4SendNtB2H_4SyncEL_EENtNtB13_4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !15 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1943)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2D_4SyncEL_EECskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2C_4SyncEL_EECskm6LeB9lWb4_9wasm_ping.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2C_4SyncEL_EECskm6LeB9lWb4_9wasm_ping.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.010.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.010.i, 1        ; 4 uses
  %.val8.i = load ptr, ptr %i.f, align 8, !alias.scope !1943 ; 5 uses
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val9.i = load ptr, ptr %i.h, align 8, !alias.scope !1943, !nonnull !15, !align !22, !noundef !15 ; 5 uses
  %i.i = load ptr, ptr %.val9.i, align 8, !invariant.load !15, !noalias !1943 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  invoke void %i.i(ptr noundef nonnull %.val8.i)
          to label %bb.c unwind label %bb.e, !noalias !1943

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !18, !invariant.load !15, !noalias !1943 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2C_4SyncEL_EECskm6LeB9lWb4_9wasm_ping.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !27, !invariant.load !15, !noalias !1943
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #26, !noalias !1943
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2C_4SyncEL_EECskm6LeB9lWb4_9wasm_ping.exit.i

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !18, !invariant.load !15, !noalias !1943 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.body.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !27, !invariant.load !15, !noalias !1943
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, 0) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #26, !noalias !1943
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2C_4SyncEL_EECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %bb.d, %bb.c
  %i.u = icmp eq i64 %i.g, %i.d
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2D_4SyncEL_EECskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph
  %i.v = add i64 %.sroa.0.1.i17, 1                ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.d
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.body.i:                                          ; preds = %bb.f, %bb.e
  %i.x = icmp eq i64 %i.g, %i.d
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.g
  %.sroa.0.1.i17 = phi i64 [ %i.v, %bb.g ], [ %i.g, %.body.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i17 ; 2 uses
  %.val.i = load ptr, ptr %i.y, align 8, !alias.scope !1943
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val7.i = load ptr, ptr %i.z, align 8, !alias.scope !1943, !nonnull !15, !align !22, !noundef !15
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2C_4SyncEL_EECskm6LeB9lWb4_9wasm_ping(ptr %.val.i, ptr nonnull %.val7.i) #28
          to label %bb.g unwind label %bb.h, !noalias !1943

._crit_edge:                                      ; preds = %bb.g, %.body.i
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1943
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2D_4SyncEL_EECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutuEp6OutputINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorENtNtB4_6marker4SendNtB2C_4SyncEL_EECskm6LeB9lWb4_9wasm_ping.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCs5hzaM3VbZx4_5redis3cmd3ArgjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCsjQblLEOeBB3_7matchit4tree4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !15 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsjQblLEOeBB3_7matchit4tree4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEECskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsjQblLEOeBB3_7matchit4tree4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEECskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [136 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjQblLEOeBB3_7matchit4tree4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(136) %i.g) #31
          to label %bb.b unwind label %bb.d, !inline_history !1944

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [136 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjQblLEOeBB3_7matchit4tree4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEECskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef align 8 dereferenceable(136) %i.m) #32
          to label %bb.c unwind label %bb.e, !inline_history !1944

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !inline_history !1944
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsjQblLEOeBB3_7matchit4tree4NodeNtNtCs9DIU3UKMbTt_4axum7routing7RouteIdEECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core3pin3PinINtNtB7_5boxed3BoxNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtB1B_5TokioNtB1D_12RedisRuntime11connect_tcp0EEENtNtNtBK_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !15 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1947)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtB1z_5TokioNtB1B_12RedisRuntime11connect_tcp0EEECskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtB1y_5TokioNtB1A_12RedisRuntime11connect_tcp0EEECskm6LeB9lWb4_9wasm_ping.exit.i
  %.sroa.0.08.i = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtB1y_5TokioNtB1A_12RedisRuntime11connect_tcp0EEECskm6LeB9lWb4_9wasm_ping.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.08.i
  %i.g = add nuw nsw i64 %.sroa.0.08.i, 1         ; 4 uses
  %.val7.i = load ptr, ptr %i.f, align 8, !alias.scope !1947, !nonnull !15, !noundef !15 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtBJ_5TokioNtBL_12RedisRuntime11connect_tcp0ECskm6LeB9lWb4_9wasm_ping(ptr noundef nonnull align 8 %.val7.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtB1y_5TokioNtB1A_12RedisRuntime11connect_tcp0EEECskm6LeB9lWb4_9wasm_ping.exit.i unwind label %.body.i, !noalias !1947

.body.i:                                          ; preds = %.lr.ph.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef 256, i64 noundef 8) #26, !noalias !1947
  %i.i = icmp eq i64 %i.g, %i.d
  br i1 %i.i, label %._crit_edge, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtB1y_5TokioNtB1A_12RedisRuntime11connect_tcp0EEECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %.lr.ph.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef 256, i64 noundef 8) #26, !noalias !1947
  %i.j = icmp eq i64 %i.g, %i.d
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtB1z_5TokioNtB1B_12RedisRuntime11connect_tcp0EEECskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph
  %i.k = add i64 %.sroa.0.1.i10, 1                ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.b
  %.sroa.0.1.i10 = phi i64 [ %i.k, %bb.b ], [ %i.g, %.body.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.1.i10
  %.val.i = load ptr, ptr %i.m, align 8, !alias.scope !1947, !nonnull !15, !noundef !15
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtB1y_5TokioNtB1A_12RedisRuntime11connect_tcp0EEECskm6LeB9lWb4_9wasm_ping(ptr %.val.i) #28
          to label %bb.b unwind label %bb.c, !noalias !1947

._crit_edge:                                      ; preds = %bb.b, %.body.i
  resume { ptr, i32 } %i.h

bb.c:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !1947
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtB1z_5TokioNtB1B_12RedisRuntime11connect_tcp0EEECskm6LeB9lWb4_9wasm_ping.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvXs0_NtNtCs5hzaM3VbZx4_5redis3aio5tokioNtB1y_5TokioNtB1A_12RedisRuntime11connect_tcp0EEECskm6LeB9lWb4_9wasm_ping.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs66a4hBEq2Hz_2h25hpack5table3PosEENtNtNtBK_3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCscwxJ8MeEu7n_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskm6LeB9lWb4_9wasm_ping(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !15 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1966)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtNtCscwxJ8MeEu7n_4http6header3map10ExtraValueNtNtBH_5value11HeaderValueEECskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCscwxJ8MeEu7n_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskm6LeB9lWb4_9wasm_ping.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtNtCscwxJ8MeEu7n_4http6header3map10ExtraValueNtNtBH_5value11HeaderValueEECskm6LeB9lWb4_9wasm_ping.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCscwxJ8MeEu7n_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskm6LeB9lWb4_9wasm_ping.exit.i
  %.sroa.0.0.i1 = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCscwxJ8MeEu7n_4http6header3map10ExtraValueNtNtBG_5value11HeaderValueEECskm6LeB9lWb4_9wasm_ping.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %.sroa.0.0.i1 ; 4 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1967)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1969)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1971, !noundef !15
  %i.l = load ptr, ptr %i.i, align 8, !alias.scope !1971, !nonnull !15, !align !22, !noundef !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !1971, !nonnull !15, !noundef !15
end_hunk_5
