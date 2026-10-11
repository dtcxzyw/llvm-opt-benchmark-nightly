Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr_ls.yr_ls.99ec3cc769773652-cgu.02?download=true
inline.NumInlined: 328
inline.NumDeleted: 200
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldINtNtB4_3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B1Q_INtB1Q_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1Q_6server9LifecycleINtNtB1Q_5panic11CatchUnwindINtNtB1Q_11concurrency11ConcurrencyINtNtB1Q_6router6RouterNtNtB3o_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB1M_14TokioPipeStdinEB1K_E0s_0NCNCB2Q_s_00EECsddkiMbsmfqo_5yr_ls:bb.a

.body.i.i:                                        ; preds = %bb.k, %bb.h, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.q, %bb.k ], [ %i.n, %bb.h ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp7MessageECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.c) #23
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.body.i.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.m:                                             ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9j2PgAuXC7p_12futures_util12unfold_state11UnfoldStateINtNtB4_3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCNCINvMs3_B1W_INtB1W_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1W_6server9LifecycleINtNtB1W_5panic11CatchUnwindINtNtB1W_11concurrency11ConcurrencyINtNtB1W_6router6RouterNtNtB3w_6server18YARALanguageServerEEEEEE3runINtNtNtBG_2io10buf_reader9BufReaderNtB1S_14TokioPipeStdinEB1Q_E0s_00EECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.a, %bb.b, %common.ret.sink.split.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unordered16FuturesUnorderedINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB1V_6server14ResponseFutureINtNtB1V_5panic14ResponseFutureINtNtB1V_11concurrency14ResponseFutureINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB1V_13ResponseErrorENtNtB4_6marker4SendEL_EEEB6F_EEEEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs8_NtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB1s_6server14ResponseFutureINtNtB1s_5panic14ResponseFutureINtNtB1s_11concurrency14ResponseFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB3N_6future6future6Futurep6OutputINtNtB3N_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB1s_13ResponseErrorENtNtB3N_6marker4SendEL_EEEB6u_EEEENtNtNtB3N_3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !205, !nonnull !5, !noundef !5
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !205
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB2O_6server14ResponseFutureINtNtB2O_5panic14ResponseFutureINtNtB2O_11concurrency14ResponseFutureINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2O_13ResponseErrorENtNtB4_6marker4SendEL_EEEB7h_EEEEEECsddkiMbsmfqo_5yr_ls.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB2l_6server14ResponseFutureINtNtB2l_5panic14ResponseFutureINtNtB2l_11concurrency14ResponseFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB4G_6future6future6Futurep6OutputINtNtB4G_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2l_13ResponseErrorENtNtB4G_6marker4SendEL_EEEB76_EEEEE9drop_slowCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB2O_6server14ResponseFutureINtNtB2O_5panic14ResponseFutureINtNtB2O_11concurrency14ResponseFutureINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2O_13ResponseErrorENtNtB4_6marker4SendEL_EEEB7h_EEEEEECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !208, !nonnull !5, !noundef !5
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !208
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB2O_6server14ResponseFutureINtNtB2O_5panic14ResponseFutureINtNtB2O_11concurrency14ResponseFutureINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2O_13ResponseErrorENtNtB4_6marker4SendEL_EEEB7h_EEEEEECsddkiMbsmfqo_5yr_ls.exit1

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB2l_6server14ResponseFutureINtNtB2l_5panic14ResponseFutureINtNtB2l_11concurrency14ResponseFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB4G_6future6future6Futurep6OutputINtNtB4G_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2l_13ResponseErrorENtNtB4G_6marker4SendEL_EEEB76_EEEEE9drop_slowCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB2O_6server14ResponseFutureINtNtB2O_5panic14ResponseFutureINtNtB2O_11concurrency14ResponseFutureINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2O_13ResponseErrorENtNtB4_6marker4SendEL_EEEB7h_EEEEEECsddkiMbsmfqo_5yr_ls.exit1

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB2O_6server14ResponseFutureINtNtB2O_5panic14ResponseFutureINtNtB2O_11concurrency14ResponseFutureINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2O_13ResponseErrorENtNtB4_6marker4SendEL_EEEB7h_EEEEEECsddkiMbsmfqo_5yr_ls.exit1: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB2O_6server14ResponseFutureINtNtB2O_5panic14ResponseFutureINtNtB2O_11concurrency14ResponseFutureINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2O_13ResponseErrorENtNtB4_6marker4SendEL_EEEB7h_EEEEEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util6stream6unfold6UnfoldINtNtB4_3pin3PinQINtNtNtBI_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2r_INtB2r_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2r_6server9LifecycleINtNtB2r_5panic11CatchUnwindINtNtB2r_11concurrency11ConcurrencyINtNtB2r_6router6RouterNtNtB3Z_6server18YARALanguageServerEEEEEE3runB1M_NtB2n_15TokioPipeStdoutE00NCNCB3r_00EECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !5
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9j2PgAuXC7p_12futures_util12unfold_state11UnfoldStateINtNtB4_3pin3PinQINtNtNtBG_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCNCINvMs3_B2v_INtB2v_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2v_6server9LifecycleINtNtB2v_5panic11CatchUnwindINtNtB2v_11concurrency11ConcurrencyINtNtB2v_6router6RouterNtNtB45_6server18YARALanguageServerEEEEEE3runB1Q_NtB2r_15TokioPipeStdoutE000EECsddkiMbsmfqo_5yr_ls.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load i8, ptr %i.c, align 8, !range !15, !noundef !5
  %cond.i.i = icmp eq i8 %i.d, 3
  br i1 %cond.i.i, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9j2PgAuXC7p_12futures_util12unfold_state11UnfoldStateINtNtB4_3pin3PinQINtNtNtBG_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCNCINvMs3_B2v_INtB2v_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2v_6server9LifecycleINtNtB2v_5panic11CatchUnwindINtNtB2v_11concurrency11ConcurrencyINtNtB2v_6router6RouterNtNtB45_6server18YARALanguageServerEEEEEE3runB1Q_NtB2r_15TokioPipeStdoutE000EECsddkiMbsmfqo_5yr_ls.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i8, ptr %i.e, align 8, !range !209, !noundef !5
  switch i8 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9j2PgAuXC7p_12futures_util12unfold_state11UnfoldStateINtNtB4_3pin3PinQINtNtNtBG_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCNCINvMs3_B2v_INtB2v_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2v_6server9LifecycleINtNtB2v_5panic11CatchUnwindINtNtB2v_11concurrency11ConcurrencyINtNtB2v_6router6RouterNtNtB45_6server18YARALanguageServerEEEEEE3runB1Q_NtB2r_15TokioPipeStdoutE000EECsddkiMbsmfqo_5yr_ls.exit [
    i8 4, label %bb.j
    i8 3, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  invoke void @_RNvXs1_NtNtCs9j2PgAuXC7p_12futures_util2io9read_lineINtB5_8ReadLineQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtB7_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEENtNtNtB19_3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g) #23
          to label %.body.i.i.i unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %.body.i.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io9read_line8ReadLineQINtNtB4_3pin3PinQINtNtBG_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEEECsddkiMbsmfqo_5yr_ls.exit.i.i.i unwind label %bb.n

bb.i:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.i.i.i unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io9read_line8ReadLineQINtNtB4_3pin3PinQINtNtBG_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEEECsddkiMbsmfqo_5yr_ls.exit.i.i.i unwind label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io9read_line8ReadLineQINtNtB4_3pin3PinQINtNtBG_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEEECsddkiMbsmfqo_5yr_ls.exit.i.i.i: ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit.i.i.i unwind label %bb.o

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io9read_line8ReadLineQINtNtB4_3pin3PinQINtNtBG_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEEECsddkiMbsmfqo_5yr_ls.exit.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume.i.i.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume.i.i.i:                              ; preds = %.body.i.i.i, %bb.o
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.q, %bb.o ], [ %.pn.i.i.i, %.body.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io9read_line8ReadLineQINtNtB4_3pin3PinQINtNtBG_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEEECsddkiMbsmfqo_5yr_ls.exit.i.i.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9j2PgAuXC7p_12futures_util12unfold_state11UnfoldStateINtNtB4_3pin3PinQINtNtNtBG_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCNCINvMs3_B2v_INtB2v_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2v_6server9LifecycleINtNtB2v_5panic11CatchUnwindINtNtB2v_11concurrency11ConcurrencyINtNtB2v_6router6RouterNtNtB45_6server18YARALanguageServerEEEEEE3runB1Q_NtB2r_15TokioPipeStdoutE000EECsddkiMbsmfqo_5yr_ls.exit

.body.i.i.i:                                      ; preds = %bb.q, %bb.n, %bb.k, %bb.g, %bb.e
  %.pn.i.i.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.o, %bb.n ], [ %i.i, %bb.g ], [ %i.t, %bb.q ], [ %i.m, %bb.k ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #23
          to label %common.resume.i.i.i unwind label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.r:                                             ; preds = %.body.i.i.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs9j2PgAuXC7p_12futures_util12unfold_state11UnfoldStateINtNtB4_3pin3PinQINtNtNtBG_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCNCINvMs3_B2v_INtB2v_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2v_6server9LifecycleINtNtB2v_5panic11CatchUnwindINtNtB2v_11concurrency11ConcurrencyINtNtB2v_6router6RouterNtNtB45_6server18YARALanguageServerEEEEEE3runB1Q_NtB2r_15TokioPipeStdoutE000EECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.a, %bb.b, %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !5
  %1 = icmp eq i64 %i.a, 0
  br i1 %1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB15_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB15_6server9LifecycleINtNtB15_5panic11CatchUnwindINtNtB15_11concurrency11ConcurrencyINtNtB15_6router6RouterNtNtB1O_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.c = load i8, ptr %i.b, align 8, !range !15, !noundef !5
  switch i8 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB15_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB15_6server9LifecycleINtNtB15_5panic11CatchUnwindINtNtB15_11concurrency11ConcurrencyINtNtB15_6router6RouterNtNtB1O_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit [
    i8 0, label %bb.c
    i8 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp7MessageECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB15_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB15_6server9LifecycleINtNtB15_5panic11CatchUnwindINtNtB15_11concurrency11ConcurrencyINtNtB15_6router6RouterNtNtB1O_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp10AnyRequestECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(120) %i.e)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 353
  store i8 0, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 354
  store i8 0, ptr %i.h, align 2
  resume { ptr, i32 } %i.f

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 353
  store i8 0, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 354
  store i8 0, ptr %i.j, align 2
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB15_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB15_6server9LifecycleINtNtB15_5panic11CatchUnwindINtNtB15_11concurrency11ConcurrencyINtNtB15_6router6RouterNtNtB1O_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB15_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB15_6server9LifecycleINtNtB15_5panic11CatchUnwindINtNtB15_11concurrency11ConcurrencyINtNtB15_6router6RouterNtNtB1O_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvCs4KzxGwe94yc_9yara_x_ls5serveNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinNtB1c_15TokioPipeStdoutE0ECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %i.b = load i8, ptr %i.a, align 8, !range !15, !noundef !5
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret:                                       ; preds = %bb.a, %bb.i, %bb.e
  ret void

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(48) %0)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBK_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBK_6server9LifecycleINtNtBK_5panic11CatchUnwindINtNtBK_11concurrency11ConcurrencyINtNtBK_6router6RouterNtNtB1s_6server18YARALanguageServerEEEEEE12run_bufferedNtNtNtBK_5stdio10tokio_impl14TokioPipeStdinNtB4T_15TokioPipeStdoutE0ECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %i.c)
          to label %bb.i unwind label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(40) %i.e) #23
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f)
  br label %common.ret

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.g:                                             ; preds = %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.h, %bb.h ]
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2689
  store i8 0, ptr %i.i, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2690
  store i8 0, ptr %i.j, align 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2691
  store i8 0, ptr %i.k, align 1
  br label %bb.g

bb.i:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2689
  store i8 0, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2690
  store i8 0, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2691
  store i8 0, ptr %i.n, align 1
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBK_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBK_6server9LifecycleINtNtBK_5panic11CatchUnwindINtNtBK_11concurrency11ConcurrencyINtNtBK_6router6RouterNtNtB1s_6server18YARALanguageServerEEEEEE12run_bufferedNtNtNtBK_5stdio10tokio_impl14TokioPipeStdinNtB4T_15TokioPipeStdoutE0ECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.b = load i8, ptr %i.a, align 8, !range !15, !noundef !5
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.c
  ]

common.ret:                                       ; preds = %bb.a, %bb.l, %bb.h
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6m2LFPinx2P_9async_lsp8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBE_6server9LifecycleINtNtBE_5panic11CatchUnwindINtNtBE_11concurrency11ConcurrencyINtNtBE_6router6RouterNtNtB1g_6server18YARALanguageServerEEEEEEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(392) %i.c)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 480
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBK_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBK_6server9LifecycleINtNtBK_5panic11CatchUnwindINtNtBK_11concurrency11ConcurrencyINtNtBK_6router6RouterNtNtB1s_6server18YARALanguageServerEEEEEE3runINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBK_5stdio10tokio_impl14TokioPipeStdinENtB5H_15TokioPipeStdoutE0ECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %i.d)
          to label %bb.l unwind label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(48) %0) #23
          to label %bb.f unwind label %bb.i

bb.e:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(48) %0)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.g, %bb.g ], [ %i.e, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f) #23
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(40) %i.h)
  br label %common.ret

bb.i:                                             ; preds = %bb.f, %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.j:                                             ; preds = %bb.k, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.f ], [ %i.j, %bb.k ]
  resume { ptr, i32 } %.pn.pn

bb.k:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2593
  store i8 0, ptr %i.k, align 1
  br label %bb.j

bb.l:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2593
  store i8 0, ptr %i.l, align 1
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBK_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBK_6server9LifecycleINtNtBK_5panic11CatchUnwindINtNtBK_11concurrency11ConcurrencyINtNtBK_6router6RouterNtNtB1s_6server18YARALanguageServerEEEEEE3runINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBK_5stdio10tokio_impl14TokioPipeStdinENtB5H_15TokioPipeStdoutE0ECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.b = load i8, ptr %i.a, align 8, !range !17, !noundef !5
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit
    i8 4, label %bb.c
    i8 5, label %bb.i
    i8 6, label %bb.k
  ]

common.ret:                                       ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEECsddkiMbsmfqo_5yr_ls.exit27, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEECsddkiMbsmfqo_5yr_ls.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6m2LFPinx2P_9async_lsp8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBE_6server9LifecycleINtNtBE_5panic11CatchUnwindINtNtBE_11concurrency11ConcurrencyINtNtBE_6router6RouterNtNtB1g_6server18YARALanguageServerEEEEEEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(392) %i.c)
          to label %bb.m unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.e = load i64, ptr %i.d, align 8, !range !16, !noundef !5
  %1 = icmp eq i64 %i.e, 0
  br i1 %1, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.g = load i8, ptr %i.f, align 8, !range !15, !noundef !5
  switch i8 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit [
    i8 0, label %bb.e
    i8 3, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1736
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp7MessageECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.t

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1952
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp10AnyRequestECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(120) %i.i)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2081
  store i8 0, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2082
  store i8 0, ptr %i.l, align 2
  br label %.body

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2081
  store i8 0, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2082
  store i8 0, ptr %i.n, align 2
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit

bb.i:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1728 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !18, !alias.scope !218, !noundef !5
  %i.q = icmp eq i64 %i.p, -2
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp7MessageECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.u

bb.k:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1728
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtCs6m2LFPinx2P_9async_lsp5ErrorEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(104) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.w

bb.l:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(80) %0) #23
          to label %.body18 unwind label %bb.r

bb.m:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val3.i = load i64, ptr %i.u, align 8, !alias.scope !219, !noundef !5 ; 2 uses
  %i.v = icmp eq i64 %.val3.i, 0
  br i1 %i.v, label %.body18, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val2.i = load ptr, ptr %i.w, align 8, !alias.scope !219, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef range(i64 1, 0) %.val3.i, i64 noundef 1) #24
  br label %.body18

bb.p:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i = load i64, ptr %i.x, align 8, !alias.scope !219, !noundef !5 ; 2 uses
  %i.y = icmp eq i64 %.val1.i, 0
  br i1 %i.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEECsddkiMbsmfqo_5yr_ls.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.z, align 8, !alias.scope !219, !nonnull !5, !noundef !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEECsddkiMbsmfqo_5yr_ls.exit

.body18:                                          ; preds = %bb.o, %bb.n, %bb.l
  %.pn14 = phi { ptr, i32 } [ %i.s, %bb.l ], [ %i.t, %bb.n ], [ %i.t, %bb.o ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(40) %i.aa) #23
          to label %bb.s unwind label %bb.r

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.q, %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ab)
  br label %common.ret

bb.r:                                             ; preds = %.body25, %bb.ad, %bb.aa, %bb.x, %bb.v, %.body18, %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.s:                                             ; preds = %.body25, %.body18
  %.pn14.pn = phi { ptr, i32 } [ %.pn14, %.body18 ], [ %.pn12, %.body25 ]
  resume { ptr, i32 } %.pn14.pn

bb.t:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.t ], [ %i.j, %bb.g ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1722
  store i8 0, ptr %i.ae, align 2
  br label %bb.v

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.h, %bb.d, %bb.c, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1722
  store i8 0, ptr %i.af, align 2
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit

bb.u:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.i, %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit, %bb.a, %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1721
  store i8 0, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1176
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldINtNtB4_3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B1Q_INtB1Q_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1Q_6server9LifecycleINtNtB1Q_5panic11CatchUnwindINtNtB1Q_11concurrency11ConcurrencyINtNtB1Q_6router6RouterNtNtB3o_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB1M_14TokioPipeStdinEB1K_E0s_0NCNCB2Q_s_00EECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %i.ai)
          to label %bb.z unwind label %bb.y

bb.v:                                             ; preds = %bb.u, %.body, %bb.w
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ag, %bb.u ], [ %i.al, %bb.w ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1721
  store i8 0, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1176
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldINtNtB4_3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B1Q_INtB1Q_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1Q_6server9LifecycleINtNtB1Q_5panic11CatchUnwindINtNtB1Q_11concurrency11ConcurrencyINtNtB1Q_6router6RouterNtNtB3o_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB1M_14TokioPipeStdinEB1K_E0s_0NCNCB2Q_s_00EECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %i.ak) #23
          to label %bb.x unwind label %bb.r

bb.w:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.x:                                             ; preds = %bb.y, %bb.v
  %.pn6 = phi { ptr, i32 } [ %i.an, %bb.y ], [ %.pn, %bb.v ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1024
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util6stream6unfold6UnfoldINtNtB4_3pin3PinQINtNtNtBI_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2r_INtB2r_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2r_6server9LifecycleINtNtB2r_5panic11CatchUnwindINtNtB2r_11concurrency11ConcurrencyINtNtB2r_6router6RouterNtNtB3Z_6server18YARALanguageServerEEEEEE3runB1M_NtB2n_15TokioPipeStdoutE00NCNCB3r_00EECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %i.am) #23
          to label %bb.aa unwind label %bb.r

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.z:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1024
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util6stream6unfold6UnfoldINtNtB4_3pin3PinQINtNtNtBI_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2r_INtB2r_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2r_6server9LifecycleINtNtB2r_5panic11CatchUnwindINtNtB2r_11concurrency11ConcurrencyINtNtB2r_6router6RouterNtNtB3Z_6server18YARALanguageServerEEEEEE3runB1M_NtB2n_15TokioPipeStdoutE00NCNCB3r_00EECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %i.ao)
          to label %bb.ac unwind label %bb.ab

bb.aa:                                            ; preds = %bb.ab, %bb.x
  %.pn8 = phi { ptr, i32 } [ %i.as, %bb.ab ], [ %.pn6, %bb.x ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1723
  store i8 0, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1724
  store i8 0, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 984
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ar) #23
          to label %bb.ad unwind label %bb.r

bb.ab:                                            ; preds = %bb.z
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ac:                                            ; preds = %bb.z
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1723
  store i8 0, ptr %i.at, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1724
  store i8 0, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 984
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(40) %i.av)
          to label %bb.af unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ae, %bb.aa
  %.pn10 = phi { ptr, i32 } [ %i.ax, %bb.ae ], [ %.pn8, %bb.aa ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 904
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(80) %i.aw) #23
          to label %.body25 unwind label %bb.r

bb.ae:                                            ; preds = %bb.ac
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.af:                                            ; preds = %bb.ac
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinECsddkiMbsmfqo_5yr_ls:bb.a
bb.i:                                             ; preds = %bb.g
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !259, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %.val1.i.i.i.i = load i8, ptr %i.e, align 8, !range !11, !alias.scope !259, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 4
  %i.j = trunc nuw i8 %.val1.i.i.i.i to i1
  br i1 %i.j, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !259
  %i.l = and i64 %i.k, 9223372036854775807
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.n = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #21
  br i1 %i.n, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store atomic i8 1, ptr %i.i monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.o = atomicrmw xchg ptr %.val.i.i.i.i, i32 0 release, align 4
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsyyk5FTAJKf_5tokio2io8async_fd7AsyncFdNtNtCs6m2LFPinx2P_9async_lsp5stdio9PipeStdinEECsddkiMbsmfqo_5yr_ls.exit, !prof !9

bb.m:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i.i.i.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsyyk5FTAJKf_5tokio2io8async_fd7AsyncFdNtNtCs6m2LFPinx2P_9async_lsp5stdio9PipeStdinEECsddkiMbsmfqo_5yr_ls.exit

bb.n:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume.i:                                  ; preds = %bb.h, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.h, %bb.h ], [ %.pn.i, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

bb.o:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsyyk5FTAJKf_5tokio2io8async_fd7AsyncFdNtNtCs6m2LFPinx2P_9async_lsp5stdio9PipeStdinEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.f, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs2_NtNtCsyyk5FTAJKf_5tokio2io8async_fdINtB5_7AsyncFdNtNtCs6m2LFPinx2P_9async_lsp5stdio10PipeStdoutENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsyyk5FTAJKf_5tokio7runtime2io12registration12RegistrationECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) #23
          to label %bb.d unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsyyk5FTAJKf_5tokio7runtime2io12registration12RegistrationECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6m2LFPinx2P_9async_lsp5stdio10PipeStdoutEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(16) %i.b) #23
          to label %common.resume.i unwind label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !268, !align !6, !noundef !5
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsyyk5FTAJKf_5tokio2io8async_fd7AsyncFdNtNtCs6m2LFPinx2P_9async_lsp5stdio10PipeStdoutEECsddkiMbsmfqo_5yr_ls.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXs_NtCs6m2LFPinx2P_9async_lsp5stdioINtB4_11NonBlockingNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  %.val1.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !269, !nonnull !5, !align !6, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockECsddkiMbsmfqo_5yr_ls(ptr nonnull %.val1.i.i.i.i) #23
          to label %common.resume.i unwind label %bb.l

bb.i:                                             ; preds = %bb.g
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !269, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noundef !5
  %i.j = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.j, ptr %i.h, align 4
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsyyk5FTAJKf_5tokio2io8async_fd7AsyncFdNtNtCs6m2LFPinx2P_9async_lsp5stdio10PipeStdoutEECsddkiMbsmfqo_5yr_ls.exit

bb.j:                                             ; preds = %bb.i
  store atomic i64 0, ptr %.val.i.i.i.i monotonic, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 8 ; 2 uses
  %i.m = atomicrmw xchg ptr %i.l, i32 0 release, align 4
  %i.n = icmp eq i32 %i.m, 2
  br i1 %i.n, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsyyk5FTAJKf_5tokio2io8async_fd7AsyncFdNtNtCs6m2LFPinx2P_9async_lsp5stdio10PipeStdoutEECsddkiMbsmfqo_5yr_ls.exit, !prof !9

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.l)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsyyk5FTAJKf_5tokio2io8async_fd7AsyncFdNtNtCs6m2LFPinx2P_9async_lsp5stdio10PipeStdoutEECsddkiMbsmfqo_5yr_ls.exit

bb.l:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume.i:                                  ; preds = %bb.h, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.g, %bb.h ], [ %.pn.i, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

bb.m:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsyyk5FTAJKf_5tokio2io8async_fd7AsyncFdNtNtCs6m2LFPinx2P_9async_lsp5stdio10PipeStdoutEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.f, %bb.i, %bb.j, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockECsddkiMbsmfqo_5yr_ls(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !noundef !5
  %i.c = add i32 %i.b, -1                         ; 2 uses
  store i32 %i.c, ptr %i.a, align 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered10linewriter10LineWriterNtNtNtBI_2io5stdio9StdoutRawEEEECsddkiMbsmfqo_5yr_ls.exit

bb.b:                                             ; preds = %bb.a
  store atomic i64 0, ptr %.0.val monotonic, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.f = atomicrmw xchg ptr %i.e, i32 0 release, align 4
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered10linewriter10LineWriterNtNtNtBI_2io5stdio9StdoutRawEEEECsddkiMbsmfqo_5yr_ls.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.e)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered10linewriter10LineWriterNtNtNtBI_2io5stdio9StdoutRawEEEECsddkiMbsmfqo_5yr_ls.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered10linewriter10LineWriterNtNtNtBI_2io5stdio9StdoutRawEEEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockECsddkiMbsmfqo_5yr_ls(ptr %.0.val, i8 %.8.val) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 4
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #21
  br i1 %i.f, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = atomicrmw xchg ptr %.0.val, i32 0 release, align 4
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtNtBK_2io5stdio8StdinRawEEECsddkiMbsmfqo_5yr_ls.exit, !prof !9

bb.e:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.0.val)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtNtBK_2io5stdio8StdinRawEEECsddkiMbsmfqo_5yr_ls.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader9BufReaderNtNtNtBK_2io5stdio8StdinRawEEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler6HandleECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %1 = icmp eq i64 %i.a, 0
  br i1 %1, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !280, !nonnull !5, !noundef !5
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !280
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler14current_thread6HandleEECsddkiMbsmfqo_5yr_ls.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler14current_thread6HandleEECsddkiMbsmfqo_5yr_ls.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.f = load ptr, ptr %i.b, align 8, !alias.scope !283, !nonnull !5, !noundef !5
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !283
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler14current_thread6HandleEECsddkiMbsmfqo_5yr_ls.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler14current_thread6HandleEECsddkiMbsmfqo_5yr_ls.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler14current_thread6HandleEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsyyk5FTAJKf_5tokio7runtime2io12registration12RegistrationECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtNtNtCsyyk5FTAJKf_5tokio7runtime2io12registrationNtB5_12RegistrationNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler6HandleECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(16) %0) #23
          to label %bb.h unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !302)
  %i.b = load i64, ptr %0, align 8, !range !16, !alias.scope !302, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %1 = icmp eq i64 %i.b, 0
  br i1 %1, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !305, !nonnull !5, !noundef !5
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !305
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler6HandleECsddkiMbsmfqo_5yr_ls.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler6HandleECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.j

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.g = load ptr, ptr %i.c, align 8, !alias.scope !308, !nonnull !5, !noundef !5
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !308
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler6HandleECsddkiMbsmfqo_5yr_ls.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler6HandleECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.j

bb.h:                                             ; preds = %bb.j, %bb.b
  %.pn = phi { ptr, i32 } [ %i.n, %bb.j ], [ %i.a, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !311, !nonnull !5, !noundef !5
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !311
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsyyk5FTAJKf_5tokio7runtime2io12scheduled_io11ScheduledIoEECsddkiMbsmfqo_5yr_ls.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsyyk5FTAJKf_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #21
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsyyk5FTAJKf_5tokio7runtime2io12scheduled_io11ScheduledIoEECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.l

bb.j:                                             ; preds = %bb.g, %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler6HandleECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.f, %bb.d, %bb.e, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !314, !nonnull !5, !noundef !5
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !314
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsyyk5FTAJKf_5tokio7runtime2io12scheduled_io11ScheduledIoEECsddkiMbsmfqo_5yr_ls.exit4

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler6HandleECsddkiMbsmfqo_5yr_ls.exit
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsyyk5FTAJKf_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsyyk5FTAJKf_5tokio7runtime2io12scheduled_io11ScheduledIoEECsddkiMbsmfqo_5yr_ls.exit4

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsyyk5FTAJKf_5tokio7runtime2io12scheduled_io11ScheduledIoEECsddkiMbsmfqo_5yr_ls.exit4: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler6HandleECsddkiMbsmfqo_5yr_ls.exit, %bb.k
  ret void

bb.l:                                             ; preds = %bb.i, %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsyyk5FTAJKf_5tokio7runtime2io12scheduled_io11ScheduledIoEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [72 x i8], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.e = load <2 x i64>, ptr %0, align 8          ; 3 uses
  %i.f = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.g = xor <2 x i64> %i.f, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.g, ptr %i.d, align 16, !alias.scope !340
  %i.h = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.i = xor <2 x i64> %i.h, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.i, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !340
  store <2 x i64> %i.e, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !340
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !340
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.j = load i64, ptr %1, align 8, !range !19, !alias.scope !341, !noalias !342, !noundef !5
  %i.k = icmp ne i64 %i.j, -1                     ; 2 uses
  %i.l = zext i1 %i.k to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !343
  store i64 %i.l, ptr %i.c, align 8, !noalias !343
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #25, !noalias !341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !343
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !341, !noalias !342, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !341, !noalias !342, !noundef !5
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p) #25, !noalias !341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !344
  store i8 -1, ptr %i.b, align 1, !noalias !344
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1) #25, !noalias !345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !344
  br label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsddkiMbsmfqo_5yr_ls.exit

bb.c:                                             ; preds = %bb.a
  %i.q = load i32, ptr %i.m, align 8, !alias.scope !341, !noalias !342, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !346
  store i32 %i.q, ptr %i.a, align 4, !noalias !346
  call fastcc void @_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4) #25, !noalias !341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !346
  br label %_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsddkiMbsmfqo_5yr_ls.exit

_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtB8_4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.b, %bb.c
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 16, !alias.scope !347
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !347
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !347 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !347
  %i.r = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !347, !noundef !5
  %i.s = shl i64 %i.r, 56
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !347, !noundef !5
  %i.v = or i64 %i.s, %i.u                        ; 2 uses
  %i.w = xor i64 %i.v, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.x = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.y = add i64 %i.w, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.aa = xor i64 %i.z, %i.x                      ; 3 uses
  %i.ab = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 16)
  %i.ac = xor i64 %i.ab, %i.y                     ; 3 uses
  %i.ad = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ae = add i64 %i.y, %i.aa                     ; 3 uses
  %i.af = add i64 %i.ac, %i.ad                    ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 17)
  %i.ah = xor i64 %i.ae, %i.ag                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 21)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = xor i64 %i.af, %i.v
  %i.am = xor i64 %i.ak, 255
  %i.an = add i64 %i.al, %i.ah                    ; 3 uses
  %i.ao = add i64 %i.aj, %i.am                    ; 2 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 13)
  %i.aq = xor i64 %i.an, %i.ap                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 16)
  %i.as = xor i64 %i.ar, %i.ao                    ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 32)
  %i.au = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.av = add i64 %i.as, %i.at                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 17)
  %i.ax = xor i64 %i.au, %i.aw                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 21)
  %i.az = xor i64 %i.ay, %i.av                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 32)
  %i.bb = add i64 %i.ax, %i.av                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 13)
  %i.be = xor i64 %i.bd, %i.bb                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 16)
  %i.bg = xor i64 %i.bf, %i.bc                    ; 3 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  %i.bi = add i64 %i.be, %i.bc                    ; 3 uses
  %i.bj = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 17)
  %i.bl = xor i64 %i.bk, %i.bi                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 21)
  %i.bn = xor i64 %i.bm, %i.bj                    ; 3 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 32)
  %i.bp = add i64 %i.bl, %i.bj
  %i.bq = add i64 %i.bn, %i.bo                    ; 2 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 13)
  %i.bs = xor i64 %i.br, %i.bp                    ; 3 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 16)
  %i.bu = xor i64 %i.bt, %i.bq                    ; 2 uses
  %i.bv = add i64 %i.bs, %i.bq                    ; 3 uses
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 17)
  %i.bx = tail call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 21)
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 32)
  %i.bz = xor i64 %i.bx, %i.bw
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = xor i64 %i.ca, %i.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i64 %i.cb
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtBT_3any6TypeIdECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
end_hunk_1
begin_hunk_2_@_RNCNvCsddkiMbsmfqo_5yr_ls4main0B3_:bb.a
  %.sroa.6113.sroa.5.sroa.5.0..sroa.6113.sroa.5.0..sroa.6113.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, ptr %.sroa.6113.sroa.5.sroa.5.0..sroa.6113.sroa.5.0..sroa.6113.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !488, !noalias !476
  %.sroa.6113.sroa.5.sroa.6.0..sroa.6113.sroa.5.0..sroa.6113.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, ptr %.sroa.6113.sroa.5.sroa.6.0..sroa.6113.sroa.5.0..sroa.6113.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !488, !noalias !476
  %.sroa.6113.sroa.5.sroa.7.0..sroa.6113.sroa.5.0..sroa.6113.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, ptr %.sroa.6113.sroa.5.sroa.7.0..sroa.6113.sroa.5.0..sroa.6113.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !488, !noalias !476
  %.sroa.6113.sroa.5.sroa.8.0..sroa.6113.sroa.5.0..sroa.6113.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, ptr %.sroa.6113.sroa.5.sroa.8.0..sroa.6113.sroa.5.0..sroa.6113.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !488, !noalias !476
  %.sroa.6113.sroa.5.sroa.9.0..sroa.6113.sroa.5.0..sroa.6113.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, ptr %.sroa.6113.sroa.5.sroa.9.0..sroa.6113.sroa.5.0..sroa.6113.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !488, !noalias !476
  %.sroa.6113.sroa.5.sroa.10.0..sroa.6113.sroa.5.0..sroa.6113.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, ptr %.sroa.6113.sroa.5.sroa.10.0..sroa.6113.sroa.5.0..sroa.6113.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !488, !noalias !476
  %.sroa.6113.sroa.5.sroa.11.0..sroa.6113.sroa.5.0..sroa.6113.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i64 %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, ptr %.sroa.6113.sroa.5.sroa.11.0..sroa.6113.sroa.5.0..sroa.6113.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !488, !noalias !476
  %.sroa.6113.sroa.5.sroa.12.0..sroa.6113.sroa.5.0..sroa.6113.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store i64 %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, ptr %.sroa.6113.sroa.5.sroa.12.0..sroa.6113.sroa.5.0..sroa.6113.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !488, !noalias !476
  %.sroa.6113.sroa.5.sroa.13.0..sroa.6113.sroa.5.0..sroa.6113.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i64 %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, ptr %.sroa.6113.sroa.5.sroa.13.0..sroa.6113.sroa.5.0..sroa.6113.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !488, !noalias !476
  %.sroa.6113.sroa.5.sroa.14.0..sroa.6113.sroa.5.0..sroa.6113.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store i64 %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.0.copyload.i.i.i, ptr %.sroa.6113.sroa.5.sroa.14.0..sroa.6113.sroa.5.0..sroa.6113.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !488, !noalias !476
  %.sroa.7114.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store i64 %.sroa.2.sroa.6.sroa.0.0.copyload.i.i.i, ptr %.sroa.7114.0..sroa_idx.i.i.i, align 8, !alias.scope !488, !noalias !476
  %.sroa.7114.sroa.5.0..sroa.7114.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7114.sroa.5.0..sroa.7114.0..sroa_idx.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.2.sroa.6.sroa.4.i.i.i, i64 88, i1 false), !noalias !476
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 2088
  invoke void @_RNvMs3_Cs6m2LFPinx2P_9async_lspINtB5_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB5_6server9LifecycleINtNtB5_5panic11CatchUnwindINtNtB5_11concurrency11ConcurrencyINtNtB5_6router6RouterNtNtBN_6server18YARALanguageServerEEEEEE14dispatch_eventCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.fw, ptr noalias nofree noundef nonnull align 8 dereferenceable(392) %i.fv, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %i.g)
          to label %bb.by unwind label %bb.bw, !noalias !477

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !476
  br label %bb.bv

bb.bz:                                            ; preds = %bb.bu
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.ca:                                            ; preds = %bb.bt
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 1080
  %.sroa.0117.sroa.8.0..sroa.4.0..sroa_idx.i58.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0117.sroa.8.0..sroa.4.0..sroa_idx.i58.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.2.sroa.6.sroa.4.i.i.i, i64 88, i1 false), !noalias !476
  call void @llvm.experimental.noalias.scope.decl(metadata !489)
  store i64 1, ptr %i.f, align 8, !alias.scope !490, !noalias !491
  %.sroa.4.0..sroa_idx.i58.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.2.sroa.0.0.copyload.i.i.i, ptr %.sroa.4.0..sroa_idx.i58.i.i.i, align 8, !alias.scope !492, !noalias !476
  %.sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.2.sroa.5.sroa.0.0.copyload.i.i.i, ptr %.sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.i.i.i, align 8, !alias.scope !492, !noalias !476
  %.sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.sroa.2.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, ptr %.sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !492, !noalias !476
  %.sroa.0117.sroa.7.sroa.7.sroa.7.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, ptr %.sroa.0117.sroa.7.sroa.7.sroa.7.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !492, !noalias !476
  %.sroa.0117.sroa.7.sroa.7.sroa.8.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, ptr %.sroa.0117.sroa.7.sroa.7.sroa.8.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !492, !noalias !476
  %.sroa.0117.sroa.7.sroa.7.sroa.9.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, ptr %.sroa.0117.sroa.7.sroa.7.sroa.9.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !492, !noalias !476
  %.sroa.0117.sroa.7.sroa.7.sroa.10.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, ptr %.sroa.0117.sroa.7.sroa.7.sroa.10.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !492, !noalias !476
  %.sroa.0117.sroa.7.sroa.7.sroa.11.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, ptr %.sroa.0117.sroa.7.sroa.7.sroa.11.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !492, !noalias !476
  %.sroa.0117.sroa.7.sroa.7.sroa.12.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i64 %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, ptr %.sroa.0117.sroa.7.sroa.7.sroa.12.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !492, !noalias !476
  %.sroa.0117.sroa.7.sroa.7.sroa.13.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i64 %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, ptr %.sroa.0117.sroa.7.sroa.7.sroa.13.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !492, !noalias !476
  %.sroa.0117.sroa.7.sroa.7.sroa.14.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store i64 %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, ptr %.sroa.0117.sroa.7.sroa.7.sroa.14.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !492, !noalias !476
  %.sroa.0117.sroa.7.sroa.7.sroa.15.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i64 %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, ptr %.sroa.0117.sroa.7.sroa.7.sroa.15.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !492, !noalias !476
  %.sroa.0117.sroa.7.sroa.7.sroa.16.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i64 %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.0.copyload.i.i.i, ptr %.sroa.0117.sroa.7.sroa.7.sroa.16.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !492, !noalias !476
  %.sroa.0117.sroa.7.sroa.7.sroa.17.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i64 %.sroa.2.sroa.6.sroa.0.0.copyload.i.i.i, ptr %.sroa.0117.sroa.7.sroa.7.sroa.17.0..sroa.0117.sroa.7.sroa.7.0..sroa.0117.sroa.7.0..sroa.4.0..sroa_idx.i58.sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !alias.scope !492, !noalias !476
  %.sroa.7118.0..sroa.4.0..sroa_idx.i58.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  store ptr %i.fy, ptr %.sroa.7118.0..sroa.4.0..sroa_idx.i58.sroa_idx.i.i.i, align 8, !alias.scope !492, !noalias !476
  %.sroa.8120.0..sroa.4.0..sroa_idx.i58.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 352
  store i8 0, ptr %.sroa.8120.0..sroa.4.0..sroa_idx.i58.sroa_idx.i.i.i, align 8, !alias.scope !492, !noalias !476
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 2290
  store i8 0, ptr %i.fz, align 2, !noalias !476
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 2296 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.ga, ptr noundef nonnull align 8 dereferenceable(360) %i.f, i64 360, i1 false), !noalias !476
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 2656
  store ptr %i.ga, ptr %i.gb, align 8, !noalias !476
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ch, %bb.ca
  %i.gc = phi ptr [ %i.gl, %bb.ch ], [ %i.fd, %bb.ca ]
  %i.gd = phi ptr [ %i.gm, %bb.ch ], [ %i.fe, %bb.ca ]
  %i.ge = phi ptr [ %i.gn, %bb.ch ], [ %i.ff, %bb.ca ]
  %i.gf = phi ptr [ %i.go, %bb.ch ], [ %i.fg, %bb.ca ]
  %i.gg = phi ptr [ %i.gp, %bb.ch ], [ %i.fh, %bb.ca ]
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 2656
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 2080
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 2664
  store ptr %i.gh, ptr %i.gj, align 8, !noalias !476
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 2672
  store ptr %i.gi, ptr %i.gk, align 8, !noalias !476
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ar
  %i.gl = phi ptr [ %i.gc, %bb.cb ], [ %i.as, %bb.ar ] ; 9 uses
  %i.gm = phi ptr [ %i.gd, %bb.cb ], [ %.phi.trans.insert.i, %bb.ar ] ; 9 uses
  %i.gn = phi ptr [ %i.ge, %bb.cb ], [ %i.bw, %bb.ar ] ; 8 uses
  %i.go = phi ptr [ %i.gf, %bb.cb ], [ %.phi.trans.insert.i.i, %bb.ar ] ; 9 uses
  %i.gp = phi ptr [ %i.gg, %bb.cb ], [ %i.cm, %bb.ar ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !476
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 2664
  invoke void @_RNvXs0_NtNtCs9j2PgAuXC7p_12futures_util6future7poll_fnINtB5_6PollFnNCNCINvMs3_Cs6m2LFPinx2P_9async_lspINtB1e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1e_6server9LifecycleINtNtB1e_5panic11CatchUnwindINtNtB1e_11concurrency11ConcurrencyINtNtB1e_6router6RouterNtNtB1X_6server18YARALanguageServerEEEEEE3runINtNtNtB9_2io10buf_reader9BufReaderNtNtNtB1e_5stdio10tokio_impl14TokioPipeStdinENtB5R_15TokioPipeStdoutE0s1_0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.gq, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ce unwind label %bb.cd, !noalias !477

bb.cd:                                            ; preds = %bb.cc
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !476
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 2296
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %i.gs) #23
          to label %.body.i.i.i unwind label %bb.cx, !noalias !477

bb.ce:                                            ; preds = %bb.cc
  %i.gt = load i64, ptr %i.e, align 8, !range !493, !noalias !476, !noundef !5 ; 3 uses
  %i.gu = icmp eq i64 %i.gt, -5
  br i1 %i.gu, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !476
  br label %.thread17.i.i

bb.cg:                                            ; preds = %bb.ce
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.3.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !476 ; 6 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.3.sroa.3.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476 ; 5 uses
  %.sroa.3.sroa.3.sroa.3.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.3.sroa.3.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.sroa.3.sroa.3.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476 ; 5 uses
  %.sroa.3.sroa.3.sroa.4.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.3.sroa.3.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.3.sroa.3.sroa.4.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476 ; 5 uses
  %.sroa.3.sroa.3.sroa.5.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.sroa.3.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.3.sroa.3.sroa.5.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476 ; 5 uses
  %.sroa.3.sroa.3.sroa.6.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.3.sroa.3.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.3.sroa.3.sroa.6.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476 ; 5 uses
  %.sroa.3.sroa.3.sroa.7.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.3.sroa.3.sroa.7.0.copyload.i.i.i = load i64, ptr %.sroa.3.sroa.3.sroa.7.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476 ; 5 uses
  %.sroa.3.sroa.3.sroa.8.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.sroa.3.sroa.8.0.copyload.i.i.i = load i64, ptr %.sroa.3.sroa.3.sroa.8.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476 ; 5 uses
  %.sroa.3.sroa.3.sroa.9.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %.sroa.3.sroa.3.sroa.9.0.copyload.i.i.i = load i64, ptr %.sroa.3.sroa.3.sroa.9.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476 ; 5 uses
  %.sroa.3.sroa.3.sroa.10.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %.sroa.3.sroa.3.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.3.sroa.3.sroa.10.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476 ; 5 uses
  %.sroa.3.sroa.3.sroa.11.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.3.sroa.3.sroa.11.0.copyload.i.i.i = load i64, ptr %.sroa.3.sroa.3.sroa.11.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476 ; 5 uses
  %.sroa.3.sroa.3.sroa.12.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.sroa.3.sroa.3.sroa.12.0.copyload.i.i.i = load i64, ptr %.sroa.3.sroa.3.sroa.12.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476 ; 5 uses
  %.sroa.3.sroa.3.sroa.13.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %.sroa.3.sroa.3.sroa.13.0.copyload.i.i.i = load i64, ptr %.sroa.3.sroa.3.sroa.13.0..sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx.i.i.i, i64 88, i1 false), !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !476
  %i.gv = icmp eq i64 %i.gt, -4
  br i1 %i.gv, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %.not.i59.i.i.i = icmp eq i64 %.sroa.3.sroa.0.0.copyload.i.i.i, -1
  br i1 %.not.i59.i.i.i, label %bb.cb, label %bb.cr

bb.ci:                                            ; preds = %bb.cg
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.i.i.i, i64 88, i1 false), !noalias !476
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 2088
  store i64 %i.gt, ptr %i.gw, align 8, !noalias !476
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2096
  store i64 %.sroa.3.sroa.0.0.copyload.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !476
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2104
  store i64 %.sroa.3.sroa.3.sroa.0.0.copyload.i.i.i, ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476
  %.sroa.46.sroa.4.sroa.4.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2112
  store i64 %.sroa.3.sroa.3.sroa.3.0.copyload.i.i.i, ptr %.sroa.46.sroa.4.sroa.4.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476
  %.sroa.46.sroa.4.sroa.5.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2120
  store i64 %.sroa.3.sroa.3.sroa.4.0.copyload.i.i.i, ptr %.sroa.46.sroa.4.sroa.5.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476
  %.sroa.46.sroa.4.sroa.6.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2128
  store i64 %.sroa.3.sroa.3.sroa.5.0.copyload.i.i.i, ptr %.sroa.46.sroa.4.sroa.6.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476
  %.sroa.46.sroa.4.sroa.7.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2136
  store i64 %.sroa.3.sroa.3.sroa.6.0.copyload.i.i.i, ptr %.sroa.46.sroa.4.sroa.7.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476
  %.sroa.46.sroa.4.sroa.8.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2144
  store i64 %.sroa.3.sroa.3.sroa.7.0.copyload.i.i.i, ptr %.sroa.46.sroa.4.sroa.8.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476
  %.sroa.46.sroa.4.sroa.9.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2152
  store i64 %.sroa.3.sroa.3.sroa.8.0.copyload.i.i.i, ptr %.sroa.46.sroa.4.sroa.9.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476
  %.sroa.46.sroa.4.sroa.10.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2160
  store i64 %.sroa.3.sroa.3.sroa.9.0.copyload.i.i.i, ptr %.sroa.46.sroa.4.sroa.10.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476
  %.sroa.46.sroa.4.sroa.11.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2168
  store i64 %.sroa.3.sroa.3.sroa.10.0.copyload.i.i.i, ptr %.sroa.46.sroa.4.sroa.11.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476
  %.sroa.46.sroa.4.sroa.12.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2176
  store i64 %.sroa.3.sroa.3.sroa.11.0.copyload.i.i.i, ptr %.sroa.46.sroa.4.sroa.12.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476
  %.sroa.46.sroa.4.sroa.13.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2184
  store i64 %.sroa.3.sroa.3.sroa.12.0.copyload.i.i.i, ptr %.sroa.46.sroa.4.sroa.13.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476
  %.sroa.46.sroa.4.sroa.14.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2192
  store i64 %.sroa.3.sroa.3.sroa.13.0.copyload.i.i.i, ptr %.sroa.46.sroa.4.sroa.14.0..sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.sroa_idx.i.i.i, align 8, !noalias !476
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 2296
  %i.gy = load i64, ptr %i.gx, align 8, !range !16, !noalias !476, !noundef !5
  %3 = icmp eq i64 %i.gy, 0
  br i1 %3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 2648
  %i.ha = load i8, ptr %i.gz, align 8, !range !15, !noalias !476, !noundef !5
  switch i8 %i.ha, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit.i.i.i [
    i8 0, label %bb.ck
    i8 3, label %bb.cl
  ]

bb.ck:                                            ; preds = %bb.cj
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 2304
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp7MessageECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.hb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit.i.i.i unwind label %bb.co, !noalias !477

bb.cl:                                            ; preds = %bb.cj
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 2520
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp10AnyRequestECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(120) %i.hc)
          to label %bb.cn unwind label %bb.cm, !noalias !477

bb.cm:                                            ; preds = %bb.cl
  %i.hd = landingpad { ptr, i32 }
          cleanup
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 2649
  store i8 0, ptr %i.he, align 1, !noalias !476
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 2650
  store i8 0, ptr %i.hf, align 2, !noalias !476
  br label %.body.i.i.i

bb.cn:                                            ; preds = %bb.cl
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 2649
  store i8 0, ptr %i.hg, align 1, !noalias !476
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 2650
  store i8 0, ptr %i.hh, align 2, !noalias !476
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit.i.i.i

.body.i.i.i:                                      ; preds = %bb.cv, %bb.co, %bb.cm, %bb.cd
  %.pn15.i.i.i = phi { ptr, i32 } [ %i.gr, %bb.cd ], [ %i.hd, %bb.cm ], [ %i.hl, %bb.co ], [ %i.ia, %bb.cv ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 2290
  %i.hj = load i8, ptr %i.hi, align 2, !range !11, !noalias !476, !noundef !5
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.cz, label %bb.cy

bb.co:                                            ; preds = %bb.ct, %bb.ck
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit.i.i.i: ; preds = %bb.cn, %bb.ck, %bb.cj, %bb.ci
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 2290
  store i8 0, ptr %i.hm, align 2, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !476
  br label %bb.bv

bb.cp:                                            ; preds = %bb.bv
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 2296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.hn, ptr noundef nonnull align 8 dereferenceable(200) %i.fs, i64 200, i1 false), !noalias !476
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 2072
  %.sroa.8148.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 2496
  store ptr %i.ho, ptr %.sroa.8148.0..sroa_idx.i.i.i, align 8, !noalias !476
  br label %bb.bb

bb.cq:                                            ; preds = %bb.bv
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 2096
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 2296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.hq, ptr noundef nonnull align 8 dereferenceable(104) %i.hp, i64 104, i1 false), !noalias !476
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 2289
  store i8 1, ptr %i.hr, align 1, !noalias !476
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 2072
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 2400
  store ptr %i.hs, ptr %i.ht, align 8, !noalias !476
  br label %bb.do

bb.cr:                                            ; preds = %bb.ch
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 2296
  %i.hv = load i64, ptr %i.hu, align 8, !range !16, !noalias !476, !noundef !5
  %4 = icmp eq i64 %i.hv, 0
  br i1 %4, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 2648
  %i.hx = load i8, ptr %i.hw, align 8, !range !15, !noalias !476, !noundef !5
  switch i8 %i.hx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i [
    i8 0, label %bb.ct
    i8 3, label %bb.cu
  ]

bb.ct:                                            ; preds = %bb.cs
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 2304
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp7MessageECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.hy)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i unwind label %bb.co, !noalias !477

bb.cu:                                            ; preds = %bb.cs
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 2520
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp10AnyRequestECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(120) %i.hz)
          to label %bb.cw unwind label %bb.cv, !noalias !477

bb.cv:                                            ; preds = %bb.cu
  %i.ia = landingpad { ptr, i32 }
          cleanup
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 2649
  store i8 0, ptr %i.ib, align 1, !noalias !476
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 2650
  store i8 0, ptr %i.ic, align 2, !noalias !476
  br label %.body.i.i.i

bb.cw:                                            ; preds = %bb.cu
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 2649
  store i8 0, ptr %i.id, align 1, !noalias !476
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 2650
  store i8 0, ptr %i.ie, align 2, !noalias !476
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i: ; preds = %bb.cw, %bb.ct, %bb.cs, %bb.cr, %bb.bt
  %i.if = phi ptr [ %i.gl, %bb.cw ], [ %i.gl, %bb.ct ], [ %i.gl, %bb.cr ], [ %i.gl, %bb.cs ], [ %i.fd, %bb.bt ]
  %i.ig = phi ptr [ %i.gm, %bb.cw ], [ %i.gm, %bb.ct ], [ %i.gm, %bb.cr ], [ %i.gm, %bb.cs ], [ %i.fe, %bb.bt ]
  %i.ih = phi ptr [ %i.gn, %bb.cw ], [ %i.gn, %bb.ct ], [ %i.gn, %bb.cr ], [ %i.gn, %bb.cs ], [ %i.ff, %bb.bt ]
  %i.ii = phi ptr [ %i.go, %bb.cw ], [ %i.go, %bb.ct ], [ %i.go, %bb.cr ], [ %i.go, %bb.cs ], [ %i.fg, %bb.bt ]
  %i.ij = phi ptr [ %i.gp, %bb.cw ], [ %i.gp, %bb.ct ], [ %i.gp, %bb.cr ], [ %i.gp, %bb.cs ], [ %i.fh, %bb.bt ]
  %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0.i.i.i = phi i64 [ %.sroa.3.sroa.3.sroa.13.0.copyload.i.i.i, %bb.cw ], [ %.sroa.3.sroa.3.sroa.13.0.copyload.i.i.i, %bb.ct ], [ %.sroa.3.sroa.3.sroa.13.0.copyload.i.i.i, %bb.cr ], [ %.sroa.3.sroa.3.sroa.13.0.copyload.i.i.i, %bb.cs ], [ %.sroa.2.sroa.6.sroa.0.0.copyload.i.i.i, %bb.bt ]
  %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.i.i.i = phi i64 [ %.sroa.3.sroa.3.sroa.12.0.copyload.i.i.i, %bb.cw ], [ %.sroa.3.sroa.3.sroa.12.0.copyload.i.i.i, %bb.ct ], [ %.sroa.3.sroa.3.sroa.12.0.copyload.i.i.i, %bb.cr ], [ %.sroa.3.sroa.3.sroa.12.0.copyload.i.i.i, %bb.cs ], [ %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.0.copyload.i.i.i, %bb.bt ]
  %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.i.i.i = phi i64 [ %.sroa.3.sroa.3.sroa.11.0.copyload.i.i.i, %bb.cw ], [ %.sroa.3.sroa.3.sroa.11.0.copyload.i.i.i, %bb.ct ], [ %.sroa.3.sroa.3.sroa.11.0.copyload.i.i.i, %bb.cr ], [ %.sroa.3.sroa.3.sroa.11.0.copyload.i.i.i, %bb.cs ], [ %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bt ]
  %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.i.i.i = phi i64 [ %.sroa.3.sroa.3.sroa.10.0.copyload.i.i.i, %bb.cw ], [ %.sroa.3.sroa.3.sroa.10.0.copyload.i.i.i, %bb.ct ], [ %.sroa.3.sroa.3.sroa.10.0.copyload.i.i.i, %bb.cr ], [ %.sroa.3.sroa.3.sroa.10.0.copyload.i.i.i, %bb.cs ], [ %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bt ]
  %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.i.i.i = phi i64 [ %.sroa.3.sroa.3.sroa.9.0.copyload.i.i.i, %bb.cw ], [ %.sroa.3.sroa.3.sroa.9.0.copyload.i.i.i, %bb.ct ], [ %.sroa.3.sroa.3.sroa.9.0.copyload.i.i.i, %bb.cr ], [ %.sroa.3.sroa.3.sroa.9.0.copyload.i.i.i, %bb.cs ], [ %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bt ]
  %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.i.i.i = phi i64 [ %.sroa.3.sroa.3.sroa.8.0.copyload.i.i.i, %bb.cw ], [ %.sroa.3.sroa.3.sroa.8.0.copyload.i.i.i, %bb.ct ], [ %.sroa.3.sroa.3.sroa.8.0.copyload.i.i.i, %bb.cr ], [ %.sroa.3.sroa.3.sroa.8.0.copyload.i.i.i, %bb.cs ], [ %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bt ]
  %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.i.i.i = phi i64 [ %.sroa.3.sroa.3.sroa.7.0.copyload.i.i.i, %bb.cw ], [ %.sroa.3.sroa.3.sroa.7.0.copyload.i.i.i, %bb.ct ], [ %.sroa.3.sroa.3.sroa.7.0.copyload.i.i.i, %bb.cr ], [ %.sroa.3.sroa.3.sroa.7.0.copyload.i.i.i, %bb.cs ], [ %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bt ]
  %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.i.i.i = phi i64 [ %.sroa.3.sroa.3.sroa.6.0.copyload.i.i.i, %bb.cw ], [ %.sroa.3.sroa.3.sroa.6.0.copyload.i.i.i, %bb.ct ], [ %.sroa.3.sroa.3.sroa.6.0.copyload.i.i.i, %bb.cr ], [ %.sroa.3.sroa.3.sroa.6.0.copyload.i.i.i, %bb.cs ], [ %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bt ]
  %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.0.0.i.i.i = phi i64 [ %.sroa.3.sroa.3.sroa.5.0.copyload.i.i.i, %bb.cw ], [ %.sroa.3.sroa.3.sroa.5.0.copyload.i.i.i, %bb.ct ], [ %.sroa.3.sroa.3.sroa.5.0.copyload.i.i.i, %bb.cr ], [ %.sroa.3.sroa.3.sroa.5.0.copyload.i.i.i, %bb.cs ], [ %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bt ]
  %.sroa.7157.sroa.7.sroa.7.sroa.0.0.i.i.i = phi i64 [ %.sroa.3.sroa.3.sroa.4.0.copyload.i.i.i, %bb.cw ], [ %.sroa.3.sroa.3.sroa.4.0.copyload.i.i.i, %bb.ct ], [ %.sroa.3.sroa.3.sroa.4.0.copyload.i.i.i, %bb.cr ], [ %.sroa.3.sroa.3.sroa.4.0.copyload.i.i.i, %bb.cs ], [ %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bt ]
  %.sroa.7157.sroa.7.sroa.0.0.i.i.i = phi i64 [ %.sroa.3.sroa.3.sroa.3.0.copyload.i.i.i, %bb.cw ], [ %.sroa.3.sroa.3.sroa.3.0.copyload.i.i.i, %bb.ct ], [ %.sroa.3.sroa.3.sroa.3.0.copyload.i.i.i, %bb.cr ], [ %.sroa.3.sroa.3.sroa.3.0.copyload.i.i.i, %bb.cs ], [ %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bt ]
  %.sroa.7157.sroa.0.0.i.i.i = phi i64 [ %.sroa.3.sroa.3.sroa.0.0.copyload.i.i.i, %bb.cw ], [ %.sroa.3.sroa.3.sroa.0.0.copyload.i.i.i, %bb.ct ], [ %.sroa.3.sroa.3.sroa.0.0.copyload.i.i.i, %bb.cr ], [ %.sroa.3.sroa.3.sroa.0.0.copyload.i.i.i, %bb.cs ], [ %.sroa.2.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bt ]
  %.sroa.0153.0.i.i.i = phi i64 [ %.sroa.3.sroa.0.0.copyload.i.i.i, %bb.cw ], [ %.sroa.3.sroa.0.0.copyload.i.i.i, %bb.ct ], [ %.sroa.3.sroa.0.0.copyload.i.i.i, %bb.cr ], [ %.sroa.3.sroa.0.0.copyload.i.i.i, %bb.cs ], [ %.sroa.2.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bt ]
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 2290
  store i8 0, ptr %i.ik, align 2, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !476
  br label %bb.da

bb.cx:                                            ; preds = %bb.ei, %bb.eh, %bb.eg, %bb.ef, %bb.ee, %bb.dn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit69.i.i.i, %bb.cz, %bb.cd, %bb.ay, %bb.ax, %bb.au
  %i.il = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !noalias !477
  unreachable

bb.cy:                                            ; preds = %bb.cz, %.body.i.i.i, %bb.bz
  %i.im = phi ptr [ %i.fd, %bb.bz ], [ %i.gl, %bb.cz ], [ %i.gl, %.body.i.i.i ]
  %i.in = phi ptr [ %i.fe, %bb.bz ], [ %i.gm, %bb.cz ], [ %i.gm, %.body.i.i.i ]
  %i.io = phi ptr [ %i.ff, %bb.bz ], [ %i.gn, %bb.cz ], [ %i.gn, %.body.i.i.i ]
  %i.ip = phi ptr [ %i.fg, %bb.bz ], [ %i.go, %bb.cz ], [ %i.go, %.body.i.i.i ]
  %i.iq = phi ptr [ %i.fh, %bb.bz ], [ %i.gp, %bb.cz ], [ %i.gp, %.body.i.i.i ]
  %.pn17.pn.pn.i.i.i = phi { ptr, i32 } [ %i.fx, %bb.bz ], [ %.pn15.i.i.i, %bb.cz ], [ %.pn15.i.i.i, %.body.i.i.i ]
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 2290
  store i8 0, ptr %i.ir, align 2, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !476
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit69.i.i.i

bb.cz:                                            ; preds = %.body.i.i.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %i.f) #23
          to label %bb.cy unwind label %bb.cx, !noalias !477

bb.da:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i, %bb.bp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i
  %i.is = phi ptr [ %i.if, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i ], [ %i.fd, %bb.bp ], [ %i.dv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i ] ; 7 uses
  %i.it = phi ptr [ %i.ig, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i ], [ %i.fe, %bb.bp ], [ %i.dw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i ] ; 7 uses
  %i.iu = phi ptr [ %i.ih, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i ], [ %i.ff, %bb.bp ], [ %i.dx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i ] ; 7 uses
  %i.iv = phi ptr [ %i.ii, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i ], [ %i.fg, %bb.bp ], [ %i.dy, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i ] ; 7 uses
  %i.iw = phi ptr [ %i.ij, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i ], [ %i.fh, %bb.bp ], [ %i.dz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i ] ; 7 uses
  %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.1.i.i.i = phi i64 [ %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.0.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i ], [ %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.0.copyload.i.i.i, %bb.bp ], [ %.sroa.3.sroa.12.0.copyload.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i ]
  %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.1.i.i.i = phi i64 [ %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i ], [ %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bp ], [ %.sroa.3.sroa.11.0.copyload.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i ]
  %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.1.i.i.i = phi i64 [ %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i ], [ %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bp ], [ %.sroa.3.sroa.10.0.copyload.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i ]
  %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.1.i.i.i = phi i64 [ %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i ], [ %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bp ], [ %.sroa.3.sroa.9.0.copyload.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i ]
  %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.1.i.i.i = phi i64 [ %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i ], [ %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bp ], [ %.sroa.3.sroa.8.0.copyload.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i ]
  %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.1.i.i.i = phi i64 [ %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i ], [ %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bp ], [ %.sroa.3.sroa.7.0.copyload.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i ]
  %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.1.i.i.i = phi i64 [ %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i ], [ %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bp ], [ %.sroa.3.sroa.6.0.copyload.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i ]
  %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.1.i.i.i = phi i64 [ %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.0.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i ], [ %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bp ], [ %.sroa.3.sroa.5.0.copyload.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i ]
  %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.0.1.i.i.i = phi i64 [ %.sroa.7157.sroa.7.sroa.7.sroa.7.sroa.0.0.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i ], [ %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bp ], [ %.sroa.3.sroa.4.0.copyload.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i ]
  %.sroa.7157.sroa.7.sroa.7.sroa.0.1.i.i.i = phi i64 [ %.sroa.7157.sroa.7.sroa.7.sroa.0.0.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i ], [ %.sroa.2.sroa.5.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bp ], [ %.sroa.3.sroa.3300.0.copyload.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i ]
  %.sroa.7157.sroa.7.sroa.0.1.i.i.i = phi i64 [ %.sroa.7157.sroa.7.sroa.0.0.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i ], [ %.sroa.2.sroa.5.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bp ], [ %.sroa.3.sroa.2.0.copyload.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i ]
  %.sroa.7157.sroa.0.1.i.i.i = phi i64 [ %.sroa.7157.sroa.0.0.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i ], [ %.sroa.2.sroa.5.sroa.0.0.copyload.i.i.i, %bb.bp ], [ %.sroa.3.sroa.0299.0.copyload.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i ]
  %.sroa.0153.1.i.i.i = phi i64 [ %.sroa.0153.0.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit65.i.i.i ], [ %.sroa.2.sroa.0.0.copyload.i.i.i, %bb.bp ], [ %i.ee, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i ]
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 2289
  store i8 0, ptr %i.ix, align 1, !noalias !476
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 1744
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldINtNtB4_3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B1Q_INtB1Q_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1Q_6server9LifecycleINtNtB1Q_5panic11CatchUnwindINtNtB1Q_11concurrency11ConcurrencyINtNtB1Q_6router6RouterNtNtB3o_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB1M_14TokioPipeStdinEB1K_E0s_0NCNCB2Q_s_00EECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %i.iy)
          to label %bb.dc unwind label %bb.db, !noalias !477

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit69.i.i.i: ; preds = %bb.ee, %bb.ed, %bb.dn, %bb.cy, %bb.bw, %bb.bl, %bb.bh, %bb.bc
  %i.iz = phi ptr [ %i.fd, %bb.bw ], [ %i.ls, %bb.ee ], [ %i.ls, %bb.ed ], [ %i.im, %bb.cy ], [ %i.fd, %bb.bl ], [ %i.dv, %bb.dn ], [ %i.dv, %bb.bh ], [ %i.dv, %bb.bc ]
  %i.ja = phi ptr [ %i.fe, %bb.bw ], [ %i.lt, %bb.ee ], [ %i.lt, %bb.ed ], [ %i.in, %bb.cy ], [ %i.fe, %bb.bl ], [ %i.dw, %bb.dn ], [ %i.dw, %bb.bh ], [ %i.dw, %bb.bc ]
  %i.jb = phi ptr [ %i.ff, %bb.bw ], [ %i.lu, %bb.ee ], [ %i.lu, %bb.ed ], [ %i.io, %bb.cy ], [ %i.ff, %bb.bl ], [ %i.dx, %bb.dn ], [ %i.dx, %bb.bh ], [ %i.dx, %bb.bc ]
  %i.jc = phi ptr [ %i.fg, %bb.bw ], [ %i.lv, %bb.ee ], [ %i.lv, %bb.ed ], [ %i.ip, %bb.cy ], [ %i.fg, %bb.bl ], [ %i.dy, %bb.dn ], [ %i.dy, %bb.bh ], [ %i.dy, %bb.bc ]
  %i.jd = phi ptr [ %i.fh, %bb.bw ], [ %i.lw, %bb.ee ], [ %i.lw, %bb.ed ], [ %i.iq, %bb.cy ], [ %i.fh, %bb.bl ], [ %i.dz, %bb.dn ], [ %i.dz, %bb.bh ], [ %i.dz, %bb.bc ]
  %.pn34.pn.i.i.i = phi { ptr, i32 } [ %i.fu, %bb.bw ], [ %.pn31.i.i.i, %bb.ee ], [ %.pn31.i.i.i, %bb.ed ], [ %.pn17.pn.pn.i.i.i, %bb.cy ], [ %i.fj, %bb.bl ], [ %i.eb, %bb.dn ], [ %i.ei, %bb.bh ], [ %i.eb, %bb.bc ]
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 2289
  store i8 0, ptr %i.je, align 1, !noalias !476
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 1744
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldINtNtB4_3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B1Q_INtB1Q_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1Q_6server9LifecycleINtNtB1Q_5panic11CatchUnwindINtNtB1Q_11concurrency11ConcurrencyINtNtB1Q_6router6RouterNtNtB3o_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB1M_14TokioPipeStdinEB1K_E0s_0NCNCB2Q_s_00EECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %i.jf) #23
          to label %bb.ax unwind label %bb.cx, !noalias !477

bb.db:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtCs6m2LFPinx2P_9async_lsp5ErrorE3anduECsddkiMbsmfqo_5yr_ls.exit.i.i.i, %bb.da
  %i.jg = phi ptr [ %i.ls, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtCs6m2LFPinx2P_9async_lsp5ErrorE3anduECsddkiMbsmfqo_5yr_ls.exit.i.i.i ], [ %i.is, %bb.da ]
  %i.jh = phi ptr [ %i.lt, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtCs6m2LFPinx2P_9async_lsp5ErrorE3anduECsddkiMbsmfqo_5yr_ls.exit.i.i.i ], [ %i.it, %bb.da ]
  %i.ji = phi ptr [ %i.lu, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtCs6m2LFPinx2P_9async_lsp5ErrorE3anduECsddkiMbsmfqo_5yr_ls.exit.i.i.i ], [ %i.iu, %bb.da ]
  %i.jj = phi ptr [ %i.lv, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtCs6m2LFPinx2P_9async_lsp5ErrorE3anduECsddkiMbsmfqo_5yr_ls.exit.i.i.i ], [ %i.iv, %bb.da ]
  %i.jk = phi ptr [ %i.lw, %_RINvMNtCskKLDkoKarTP_4core6resultINtB3_6ResultuNtCs6m2LFPinx2P_9async_lsp5ErrorE3anduECsddkiMbsmfqo_5yr_ls.exit.i.i.i ], [ %i.iw, %bb.da ]
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.dc:                                            ; preds = %bb.da
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 1592
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util6stream6unfold6UnfoldINtNtB4_3pin3PinQINtNtNtBI_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2r_INtB2r_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2r_6server9LifecycleINtNtB2r_5panic11CatchUnwindINtNtB2r_11concurrency11ConcurrencyINtNtB2r_6router6RouterNtNtB3Z_6server18YARALanguageServerEEEEEE3runB1M_NtB2n_15TokioPipeStdoutE00NCNCB3r_00EECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %i.jm)
          to label %bb.df unwind label %bb.de, !noalias !477

bb.dd:                                            ; preds = %bb.de, %bb.ax
  %i.jn = phi ptr [ %i.jv, %bb.de ], [ %i.dj, %bb.ax ]
  %i.jo = phi ptr [ %i.jw, %bb.de ], [ %i.dk, %bb.ax ]
  %i.jp = phi ptr [ %i.jx, %bb.de ], [ %i.dl, %bb.ax ]
  %i.jq = phi ptr [ %i.jy, %bb.de ], [ %i.dm, %bb.ax ]
  %i.jr = phi ptr [ %i.jz, %bb.de ], [ %i.dn, %bb.ax ]
  %.pn40.i.i.i = phi { ptr, i32 } [ %i.ka, %bb.de ], [ %.pn38.i.i.i, %bb.ax ]
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 2291 ; 2 uses
  %i.jt = load i8, ptr %i.js, align 1, !range !11, !noalias !476, !noundef !5
  %i.ju = trunc nuw i8 %i.jt to i1
  br i1 %i.ju, label %bb.ef, label %bb.av

bb.de:                                            ; preds = %bb.dx, %bb.dc
  %i.jv = phi ptr [ %i.ls, %bb.dx ], [ %i.is, %bb.dc ]
  %i.jw = phi ptr [ %i.lt, %bb.dx ], [ %i.it, %bb.dc ]
  %i.jx = phi ptr [ %i.lu, %bb.dx ], [ %i.iu, %bb.dc ]
  %i.jy = phi ptr [ %i.lv, %bb.dx ], [ %i.iv, %bb.dc ]
  %i.jz = phi ptr [ %i.lw, %bb.dx ], [ %i.iw, %bb.dc ]
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.df:                                            ; preds = %bb.dc
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 2291
  store i8 0, ptr %i.kb, align 1, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !476
  %i.kc = getelementptr inbounds nuw i8, ptr %1, i64 2292
  store i8 0, ptr %i.kc, align 4, !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !476
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 1552
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(40) %i.kd)
          to label %bb.dh unwind label %bb.dg, !noalias !477

bb.dg:                                            ; preds = %bb.dy, %bb.df
  %i.ke = phi ptr [ %i.ls, %bb.dy ], [ %i.is, %bb.df ]
  %i.kf = phi ptr [ %i.lt, %bb.dy ], [ %i.it, %bb.df ]
  %i.kg = phi ptr [ %i.lu, %bb.dy ], [ %i.iu, %bb.df ]
  %i.kh = phi ptr [ %i.lv, %bb.dy ], [ %i.iv, %bb.df ]
  %i.ki = phi ptr [ %i.lw, %bb.dy ], [ %i.iw, %bb.df ]
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.dh:                                            ; preds = %bb.df
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 1472
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.kk)
          to label %bb.dj unwind label %bb.di, !noalias !477

bb.di:                                            ; preds = %bb.dh
  %i.kl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 1528
  %.val3.i.i.i.i = load i64, ptr %i.km, align 8, !alias.scope !494, !noalias !476, !noundef !5 ; 2 uses
  %i.kn = icmp eq i64 %.val3.i.i.i.i, 0
  br i1 %i.kn, label %.body66.i.i.i, label %.body66.sink.split.i.i.i

bb.dj:                                            ; preds = %bb.dh
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 1528
  %.val1.i.i.i.i = load i64, ptr %i.ko, align 8, !alias.scope !494, !noalias !476, !noundef !5 ; 2 uses
  %i.kp = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.kp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEECsddkiMbsmfqo_5yr_ls.exit.i.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 1520
  %.val.i.i.i.i = load ptr, ptr %i.kq, align 8, !alias.scope !494, !noalias !476, !nonnull !5, !noundef !5
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #24, !noalias !477
end_hunk_2
begin_hunk_3_@_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsddkiMbsmfqo_5yr_ls:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !540, !noundef !5
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i12, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i13
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17: ; preds = %bb.o, %bb.p
  %.sroa.0.2.i14 = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i13, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14, ptr %i.cf, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cg = phi i64 [ %.promoted22, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted20, %.lr.ph ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted19, %.lr.ph ], [ %i.cy, %bb.q ]
  %.sroa.0.118 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted, %.lr.ph ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118
  %.sroa.07.0.copyload = load i64, ptr %i.ck, align 1 ; 2 uses
  %i.cl = xor i64 %i.ci, %.sroa.07.0.copyload     ; 3 uses
  %i.cm = add i64 %i.ch, %i.cj                    ; 3 uses
  %i.cn = add i64 %i.cg, %i.cl                    ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.co, %i.cm                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.07.0.copyload     ; 2 uses
  %i.db = add nuw i64 %.sroa.0.118, 8             ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17, %bb.j
  %storemerge = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler12multi_thread5queueINtB5_5LocalINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtB7_6handle6HandleEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #21
  br i1 %i.g, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !543, !nonnull !5, !noundef !5 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8, !noalias !543 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.l = lshr i64 %i.j, 32
  %i.m = trunc nuw i64 %i.l to i32                ; 2 uses
  %i.n = trunc i64 %i.j to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !543
  store i32 %i.m, ptr %i.b, align 4, !noalias !543
  %i.o = load i32, ptr %i.k, align 8, !noalias !543, !noundef !5
  %i.p = icmp eq i32 %i.o, %i.n
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsyyk5FTAJKf_5tokio7runtime4task8NotifiedINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEECsddkiMbsmfqo_5yr_ls.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.i
  %i.q = phi i32 [ %i.af, %bb.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.r = phi i32 [ %i.ae, %bb.i ], [ %i.m, %bb.c ] ; 2 uses
  %.sroa.04.010.i = phi i64 [ %i.ac, %bb.i ], [ %i.j, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !543
  %i.s = add i32 %i.q, 1                          ; 4 uses
  store i32 %i.s, ptr %i.a, align 4, !noalias !543
  %i.t = icmp eq i32 %i.r, %i.q
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.u = icmp eq i32 %i.s, %i.r
  br i1 %i.u, label %bb.g, label %bb.f, !prof !9

bb.e:                                             ; preds = %.lr.ph.i
  %i.v = zext i32 %i.s to i64
  %i.w = mul nuw i64 %i.v, 4294967297
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.x = zext i32 %i.s to i64
  %i.y = and i64 %.sroa.04.010.i, -4294967296
  %i.z = or disjoint i64 %i.y, %i.x
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedmmECsG258MDvU3F_3std(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #26, !noalias !543
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %.sroa.01.0.i = phi i64 [ %i.w, %bb.e ], [ %i.z, %bb.f ]
  %i.aa = cmpxchg ptr %i.i, i64 %.sroa.04.010.i, i64 %.sroa.01.0.i acq_rel acquire, align 8, !noalias !543 ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = extractvalue { i64, i1 } %i.aa, 0       ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !543
  %i.ad = lshr i64 %i.ac, 32
  %i.ae = trunc nuw i64 %i.ad to i32              ; 2 uses
  %i.af = trunc i64 %i.ac to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !543
  store i32 %i.ae, ptr %i.b, align 4, !noalias !543
  %i.ag = load i32, ptr %i.k, align 8, !noalias !543, !noundef !5
  %i.ah = icmp eq i32 %i.ag, %i.af
  br i1 %i.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsyyk5FTAJKf_5tokio7runtime4task8NotifiedINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEECsddkiMbsmfqo_5yr_ls.exit, label %.lr.ph.i

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsyyk5FTAJKf_5tokio7runtime4task8NotifiedINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEECsddkiMbsmfqo_5yr_ls.exit, %bb.b
  ret void

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !543
  %i.ai = and i64 %.sroa.04.010.i, 255
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !543, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  %i.am = load ptr, ptr %i.al, align 8, !noalias !543, !nonnull !5, !noundef !5
  store ptr %i.am, ptr %i.c, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsyyk5FTAJKf_5tokio7runtime4task8NotifiedINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @17, ptr noundef nonnull inttoptr (i64 31 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsyyk5FTAJKf_5tokio7runtime4task8NotifiedINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB12_9scheduler12multi_thread6handle6HandleEEEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_CsVkKQoeUONZ_12futures_sinkINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldIBw_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B25_INtB25_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB25_6server9LifecycleINtNtB25_5panic11CatchUnwindINtNtB25_11concurrency11ConcurrencyINtNtB25_6router6RouterNtNtB3D_6server18YARALanguageServerEEEEEE3runINtNtNtB19_2io10buf_reader9BufReaderNtB21_14TokioPipeStdinEB1Z_E0s_0NCNCB35_s_00EEINtB4_4SinkNtB25_7MessageE10poll_closeCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  tail call void @_RNvXNtNtCs9j2PgAuXC7p_12futures_util4sink6unfoldINtB2_6UnfoldINtNtCskKLDkoKarTP_4core3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B1A_INtB1A_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1A_6server9LifecycleINtNtB1A_5panic11CatchUnwindINtNtB1A_11concurrency11ConcurrencyINtNtB1A_6router6RouterNtNtB38_6server18YARALanguageServerEEEEEE3runINtNtNtB6_2io10buf_reader9BufReaderNtB1w_14TokioPipeStdinEB1u_E0s_0NCNCB2A_s_00EINtCsVkKQoeUONZ_12futures_sink4SinkNtB1A_7MessageE10poll_closeCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noundef nonnull align 8 %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_CsVkKQoeUONZ_12futures_sinkINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldIBw_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B25_INtB25_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB25_6server9LifecycleINtNtB25_5panic11CatchUnwindINtNtB25_11concurrency11ConcurrencyINtNtB25_6router6RouterNtNtB3D_6server18YARALanguageServerEEEEEE3runINtNtNtB19_2io10buf_reader9BufReaderNtB21_14TokioPipeStdinEB1Z_E0s_0NCNCB35_s_00EEINtB4_4SinkNtB25_7MessageE10poll_flushCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  tail call void @_RNvXNtNtCs9j2PgAuXC7p_12futures_util4sink6unfoldINtB2_6UnfoldINtNtCskKLDkoKarTP_4core3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B1A_INtB1A_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1A_6server9LifecycleINtNtB1A_5panic11CatchUnwindINtNtB1A_11concurrency11ConcurrencyINtNtB1A_6router6RouterNtNtB38_6server18YARALanguageServerEEEEEE3runINtNtNtB6_2io10buf_reader9BufReaderNtB1w_14TokioPipeStdinEB1u_E0s_0NCNCB2A_s_00EINtCsVkKQoeUONZ_12futures_sink4SinkNtB1A_7MessageE10poll_flushCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_CsVkKQoeUONZ_12futures_sinkINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldIBw_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B25_INtB25_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB25_6server9LifecycleINtNtB25_5panic11CatchUnwindINtNtB25_11concurrency11ConcurrencyINtNtB25_6router6RouterNtNtB3D_6server18YARALanguageServerEEEEEE3runINtNtNtB19_2io10buf_reader9BufReaderNtB21_14TokioPipeStdinEB1Z_E0s_0NCNCB35_s_00EEINtB4_4SinkNtB25_7MessageE10poll_readyCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  tail call void @_RNvXNtNtCs9j2PgAuXC7p_12futures_util4sink6unfoldINtB2_6UnfoldINtNtCskKLDkoKarTP_4core3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B1A_INtB1A_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1A_6server9LifecycleINtNtB1A_5panic11CatchUnwindINtNtB1A_11concurrency11ConcurrencyINtNtB1A_6router6RouterNtNtB38_6server18YARALanguageServerEEEEEE3runINtNtNtB6_2io10buf_reader9BufReaderNtB1w_14TokioPipeStdinEB1u_E0s_0NCNCB2A_s_00EINtCsVkKQoeUONZ_12futures_sink4SinkNtB1A_7MessageE10poll_readyCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noundef nonnull align 8 %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_CsVkKQoeUONZ_12futures_sinkINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldIBw_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B25_INtB25_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB25_6server9LifecycleINtNtB25_5panic11CatchUnwindINtNtB25_11concurrency11ConcurrencyINtNtB25_6router6RouterNtNtB3D_6server18YARALanguageServerEEEEEE3runINtNtNtB19_2io10buf_reader9BufReaderNtB21_14TokioPipeStdinEB1Z_E0s_0NCNCB35_s_00EEINtB4_4SinkNtB25_7MessageE10start_sendCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(200) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [200 x i8], align 8               ; 4 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.a, ptr noundef nonnull align 8 dereferenceable(200) %2, i64 200, i1 false)
  call void @_RNvXNtNtCs9j2PgAuXC7p_12futures_util4sink6unfoldINtB2_6UnfoldINtNtCskKLDkoKarTP_4core3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B1A_INtB1A_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1A_6server9LifecycleINtNtB1A_5panic11CatchUnwindINtNtB1A_11concurrency11ConcurrencyINtNtB1A_6router6RouterNtNtB38_6server18YARALanguageServerEEEEEE3runINtNtNtB6_2io10buf_reader9BufReaderNtB1w_14TokioPipeStdinEB1u_E0s_0NCNCB2A_s_00EINtCsVkKQoeUONZ_12futures_sink4SinkNtB1A_7MessageE10start_sendCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 %.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(200) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_NtCs9vsTHzjGAai_10futures_io6if_stdQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENtB4_9AsyncRead9poll_readCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6, !noundef !5
  %i.b = tail call { i64, ptr } @_RNvXs1_NtNtCs9j2PgAuXC7p_12futures_util2io10buf_readerINtB5_9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinENtNtCs9vsTHzjGAai_10futures_io6if_std9AsyncRead9poll_readCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull %2, i64 noundef range(i64 0, -9223372036854775808) %3)
  ret { i64, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsljouJN4AMMC_12futures_core6futureINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB2j_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2j_6server9LifecycleINtNtB2j_5panic11CatchUnwindINtNtB2j_11concurrency11ConcurrencyINtNtB2j_6router6RouterNtNtB32_6server18YARALanguageServerEEEEEE16dispatch_message0EENtB4_11FusedFuture13is_terminatedCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5
  %.val1 = load i64, ptr %.val, align 8, !range !16, !noundef !5
  %.not.i = icmp eq i64 %.val1, 0
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtCs6m2LFPinx2P_9async_lsp13ResponseErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !5, !nonnull !5
  tail call void %i.c(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsddkiMbsmfqo_5yr_ls4main0EENtB4_6Future4pollB1y_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  tail call fastcc void @_RNCNvCsddkiMbsmfqo_5yr_ls4main0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 %.val, ptr noalias nofree noundef align 8 dereferenceable(32) %2) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinQIBG_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxNCNvCsddkiMbsmfqo_5yr_ls4main0EEENtB4_6Future4pollB1D_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %.val.i = load ptr, ptr %.val, align 8, !alias.scope !548, !noalias !549, !nonnull !5, !noundef !5
  tail call fastcc void @_RNCNvCsddkiMbsmfqo_5yr_ls4main0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 %.val.i, ptr noalias nofree noundef align 8 dereferenceable(32) %2) #25, !noalias !548
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinQIBG_QINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB28_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB28_6server9LifecycleINtNtB28_5panic11CatchUnwindINtNtB28_11concurrency11ConcurrencyINtNtB28_6router6RouterNtNtB2R_6server18YARALanguageServerEEEEEE16dispatch_message0EEENtB4_6Future4pollCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  %.val1 = load ptr, ptr %.val, align 8, !nonnull !5, !align !6, !noundef !5
  tail call void @_RNvXs1_NtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuseINtB5_4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1f_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1f_6server9LifecycleINtNtB1f_5panic11CatchUnwindINtNtB1f_11concurrency11ConcurrencyINtNtB1f_6router6RouterNtNtB1Y_6server18YARALanguageServerEEEEEE16dispatch_message0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinQINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseINtNtNtB15_4sink5flush5FlushIBG_QINtNtB20_6unfold6UnfoldIBG_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B30_INtB30_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB30_6server9LifecycleINtNtB30_5panic11CatchUnwindINtNtB30_11concurrency11ConcurrencyINtNtB30_6router6RouterNtNtB4y_6server18YARALanguageServerEEEEEE3runINtNtNtB15_2io10buf_reader9BufReaderNtB2W_14TokioPipeStdinEB2U_E0s_0NCNCB40_s_00EENtB30_7MessageEEENtB4_6Future4pollCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  tail call void @_RNvXs1_NtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuseINtB5_4FuseINtNtNtBb_4sink5flush5FlushINtNtCskKLDkoKarTP_4core3pin3PinQINtNtB1c_6unfold6UnfoldIB1z_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2E_INtB2E_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2E_6server9LifecycleINtNtB2E_5panic11CatchUnwindINtNtB2E_11concurrency11ConcurrencyINtNtB2E_6router6RouterNtNtB4c_6server18YARALanguageServerEEEEEE3runINtNtNtBb_2io10buf_reader9BufReaderNtB2A_14TokioPipeStdinEB2y_E0s_0NCNCB3E_s_00EENtB2E_7MessageEENtNtNtB1D_6future6future6Future4pollCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinQINtNtNtNtCs9j2PgAuXC7p_12futures_util6stream6stream16select_next_some14SelectNextSomeINtNtB13_17futures_unordered16FuturesUnorderedINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB36_6server14ResponseFutureINtNtB36_5panic14ResponseFutureINtNtB36_11concurrency14ResponseFutureIBG_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB36_13ResponseErrorENtNtB8_6marker4SendEL_EEEB7m_EEEEEEB60_4pollCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  tail call void @_RNvXs0_NtNtNtCs9j2PgAuXC7p_12futures_util6stream6stream16select_next_someINtB5_14SelectNextSomeINtNtB9_17futures_unordered16FuturesUnorderedINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB2h_6server14ResponseFutureINtNtB2h_5panic14ResponseFutureINtNtB2h_11concurrency14ResponseFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4C_6future6future6Futurep6OutputINtNtB4C_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2h_13ResponseErrorENtNtB4C_6marker4SendEL_EEEB7j_EEEEEB5D_4pollCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinQINtNtNtNtCs9j2PgAuXC7p_12futures_util6stream6stream4next4NextIBG_QINtNtB13_6unfold6UnfoldIBG_QINtNtNtB15_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B38_INtB38_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB38_6server9LifecycleINtNtB38_5panic11CatchUnwindINtNtB38_11concurrency11ConcurrencyINtNtB38_6router6RouterNtNtB4G_6server18YARALanguageServerEEEEEE3runB2s_NtB34_15TokioPipeStdoutE00NCNCB48_00EEEENtB4_6Future4pollCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([200 x i8]) align 8 captures(address) dereferenceable(200) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  tail call void @_RNvXs1_NtNtNtCs9j2PgAuXC7p_12futures_util6stream6stream4nextINtB5_4NextINtNtCskKLDkoKarTP_4core3pin3PinQINtNtB9_6unfold6UnfoldIB18_QINtNtNtBb_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2L_INtB2L_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2L_6server9LifecycleINtNtB2L_5panic11CatchUnwindINtNtB2L_11concurrency11ConcurrencyINtNtB2L_6router6RouterNtNtB4j_6server18YARALanguageServerEEEEEE3runB26_NtB2H_15TokioPipeStdoutE00NCNCB3L_00EEENtNtNtB1c_6future6future6Future4pollCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinQINtNtNtNtCs9j2PgAuXC7p_12futures_util6stream6stream4next4NextINtNtCs5AFert6BSaG_15futures_channel4mpsc17UnboundedReceiverNtCs6m2LFPinx2P_9async_lsp13MainLoopEventEEENtB4_6Future4pollCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([200 x i8]) align 8 captures(address) dereferenceable(200) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  tail call void @_RNvXs1_NtNtNtCs9j2PgAuXC7p_12futures_util6stream6stream4nextINtB5_4NextINtNtCs5AFert6BSaG_15futures_channel4mpsc17UnboundedReceiverNtCs6m2LFPinx2P_9async_lsp13MainLoopEventEENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCskKLDkoKarTP_4core6future6futureINtNtB8_3pin3PinQNCNvCsddkiMbsmfqo_5yr_ls4main0ENtB4_6Future4pollB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  tail call fastcc void @_RNCNvCsddkiMbsmfqo_5yr_ls4main0B3_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull align 8 %.val, ptr noalias nofree noundef align 8 dereferenceable(32) %2) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs9vsTHzjGAai_10futures_io6if_stdQQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENtB5_12AsyncBufRead13poll_fill_bufCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6, !noundef !5
  %.val.i = load ptr, ptr %.val, align 8, !noalias !553, !nonnull !5, !align !6, !noundef !5
  tail call void @_RNvXs2_NtNtCs9j2PgAuXC7p_12futures_util2io10buf_readerINtB5_9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinENtNtCs9vsTHzjGAai_10futures_io6if_std12AsyncBufRead13poll_fill_bufCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.val.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCs9vsTHzjGAai_10futures_io6if_stdQQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENtB5_12AsyncBufRead7consumeCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6, !noundef !5
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !5, !align !6, !noundef !5
  tail call void @_RNvXs2_NtNtCs9j2PgAuXC7p_12futures_util2io10buf_readerINtB5_9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinENtNtCs9vsTHzjGAai_10futures_io6if_std12AsyncBufRead7consumeCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.val.i, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtCs9j2PgAuXC7p_12futures_util6stream6unfold6UnfoldIB3_QINtNtNtBG_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2d_INtB2d_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2d_6server9LifecycleINtNtB2d_5panic11CatchUnwindINtNtB2d_11concurrency11ConcurrencyINtNtB2d_6router6RouterNtNtB3L_6server18YARALanguageServerEEEEEE3runB1y_NtB29_15TokioPipeStdoutE00NCNCB3d_00EENtNtBE_6stream9StreamExt15poll_next_unpinCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  tail call void @_RNvXs0_NtNtCs9j2PgAuXC7p_12futures_util6stream6unfoldINtB5_6UnfoldINtNtCskKLDkoKarTP_4core3pin3PinQINtNtNtB9_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runB1z_NtB2a_15TokioPipeStdoutE00NCNCB3e_00ENtNtCsljouJN4AMMC_12futures_core6stream6Stream9poll_nextCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noundef nonnull align 8 %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs71WB3uNJSA6_3log13___private_api3loguNtB2_12GlobalLoggerECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull, ptr noundef nonnull, i64 noundef range(i64 1, 6), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXNtNtNtCs6jEEnEaRBs_3mio3sys4unix8sourcefdNtB2_8SourceFdNtNtNtB8_5event6source6Source10deregister(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCs5AFert6BSaG_15futures_channel4mpscINtB5_17UnboundedReceiverNtCs6m2LFPinx2P_9async_lsp13MainLoopEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsn_NtCs5AFert6BSaG_15futures_channel4mpscINtB5_20UnboundedSenderInnerNtCs6m2LFPinx2P_9async_lsp13MainLoopEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs6m2LFPinx2P_9async_lsp5stdioINtB4_11NonBlockingNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtCs6m2LFPinx2P_9async_lsp5stdioINtB4_11NonBlockingNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsf_NtCs9QmT8tHpLPH_9hashbrown3rawINtB5_8RawTablejENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs907JfTDu8Xv_8indexmap6BucketNtNtB7_6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs907JfTDu8Xv_8indexmap6BucketNtNtB7_6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringINtNtCs5AFert6BSaG_15futures_channel7oneshot6SenderNtCs6m2LFPinx2P_9async_lsp11AnyResponseEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtNtCs9j2PgAuXC7p_12futures_util9abortable11AbortHandleEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtBT_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp8AnyEventEEp6OutputINtNtB24_12control_flow11ControlFlowINtNtBT_6result6ResultuNtB3p_5ErrorEENtNtBT_6marker4SendEL_EEENtNtB24_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtB1A_3pin3PinIBS_DNtNtNtB1A_6future6future6Futurep6OutputINtNtB1A_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB39_13ResponseErrorENtNtB1A_6marker4SendEL_EEB6h_EL_EEENtNtB1y_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtB1y_12control_flow11ControlFlowINtNtB1A_6result6ResultuNtB39_5ErrorEENtNtB1A_6marker4SendEL_EEENtNtB1y_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCs9j2PgAuXC7p_12futures_util2io9read_lineINtB5_8ReadLineQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtB7_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEENtNtNtB19_3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB1s_6server14ResponseFutureINtNtB1s_5panic14ResponseFutureINtNtB1s_11concurrency14ResponseFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB3N_6future6future6Futurep6OutputINtNtB3N_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB1s_13ResponseErrorENtNtB3N_6marker4SendEL_EEEB6u_EEEENtNtNtB3N_3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsyyk5FTAJKf_5tokio2io8async_fdINtB5_7AsyncFdNtNtCs6m2LFPinx2P_9async_lsp5stdio10PipeStdoutENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtNtCsyyk5FTAJKf_5tokio2io8async_fdINtB5_7AsyncFdNtNtCs6m2LFPinx2P_9async_lsp5stdio9PipeStdinENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsd_NtNtCsyyk5FTAJKf_5tokio7runtime4taskINtB5_4TaskINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtB7_9scheduler12multi_thread6handle6HandleEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_3
