Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr_ls.yr_ls.99ec3cc769773652-cgu.03?download=true
inline.NumInlined: 260
inline.NumDeleted: 150
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEECsddkiMbsmfqo_5yr_ls:bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val1, i64 noundef 1) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECsddkiMbsmfqo_5yr_ls.exit5

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECsddkiMbsmfqo_5yr_ls.exit5: ; preds = %bb.c, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i4
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unordered16FuturesUnorderedINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB1V_6server14ResponseFutureINtNtB1V_5panic14ResponseFutureINtNtB1V_11concurrency14ResponseFutureINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB1V_13ResponseErrorENtNtB4_6marker4SendEL_EEEB6F_EEEEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs8_NtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB1s_6server14ResponseFutureINtNtB1s_5panic14ResponseFutureINtNtB1s_11concurrency14ResponseFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB3N_6future6future6Futurep6OutputINtNtB3N_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB1s_13ResponseErrorENtNtB3N_6marker4SendEL_EEEB6u_EEEENtNtNtB3N_3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !276, !nonnull !6, !noundef !6
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !276
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB2O_6server14ResponseFutureINtNtB2O_5panic14ResponseFutureINtNtB2O_11concurrency14ResponseFutureINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2O_13ResponseErrorENtNtB4_6marker4SendEL_EEEB7h_EEEEEECsddkiMbsmfqo_5yr_ls.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB2l_6server14ResponseFutureINtNtB2l_5panic14ResponseFutureINtNtB2l_11concurrency14ResponseFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB4G_6future6future6Futurep6OutputINtNtB4G_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2l_13ResponseErrorENtNtB4G_6marker4SendEL_EEEB76_EEEEE9drop_slowCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB2O_6server14ResponseFutureINtNtB2O_5panic14ResponseFutureINtNtB2O_11concurrency14ResponseFutureINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2O_13ResponseErrorENtNtB4_6marker4SendEL_EEEB7h_EEEEEECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !279, !nonnull !6, !noundef !6
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !279
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB2O_6server14ResponseFutureINtNtB2O_5panic14ResponseFutureINtNtB2O_11concurrency14ResponseFutureINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2O_13ResponseErrorENtNtB4_6marker4SendEL_EEEB7h_EEEEEECsddkiMbsmfqo_5yr_ls.exit1

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB2l_6server14ResponseFutureINtNtB2l_5panic14ResponseFutureINtNtB2l_11concurrency14ResponseFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB4G_6future6future6Futurep6OutputINtNtB4G_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2l_13ResponseErrorENtNtB4G_6marker4SendEL_EEEB76_EEEEE9drop_slowCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #20
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB2O_6server14ResponseFutureINtNtB2O_5panic14ResponseFutureINtNtB2O_11concurrency14ResponseFutureINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2O_13ResponseErrorENtNtB4_6marker4SendEL_EEEB7h_EEEEEECsddkiMbsmfqo_5yr_ls.exit1

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB2O_6server14ResponseFutureINtNtB2O_5panic14ResponseFutureINtNtB2O_11concurrency14ResponseFutureINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2O_13ResponseErrorENtNtB4_6marker4SendEL_EEEB7h_EEEEEECsddkiMbsmfqo_5yr_ls.exit1: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB2O_6server14ResponseFutureINtNtB2O_5panic14ResponseFutureINtNtB2O_11concurrency14ResponseFutureINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2O_13ResponseErrorENtNtB4_6marker4SendEL_EEEB7h_EEEEEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBO_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBO_6server9LifecycleINtNtBO_5panic11CatchUnwindINtNtBO_11concurrency11ConcurrencyINtNtBO_6router6RouterNtNtB1w_6server18YARALanguageServerEEEEEE3runINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBO_5stdio10tokio_impl14TokioPipeStdinENtB5L_15TokioPipeStdoutE000ECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i8, ptr %i.a, align 8, !range !16, !noundef !6
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.p, %bb.o, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i8, ptr %i.c, align 8, !range !302, !noundef !6
  switch i8 %i.d, label %common.ret [
    i8 4, label %bb.j
    i8 3, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load i8, ptr %i.f, align 8, !range !8, !alias.scope !303, !noundef !6
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_RNvXs1_NtNtCs9j2PgAuXC7p_12futures_util2io9read_lineINtB5_8ReadLineQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtB7_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEENtNtNtB19_3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !303, !noundef !6 ; 2 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !303, !noundef !6
  %i.n = sub i64 %i.j, %i.m
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE8truncateCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e, i64 noundef %i.n)
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !303, !nonnull !6, !align !9, !noundef !6
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 noundef 3)
          to label %_RNvXs1_NtNtCs9j2PgAuXC7p_12futures_util2io9read_lineINtB5_8ReadLineQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtB7_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEENtNtNtB19_3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #21
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e) #19
          to label %.body.i unwind label %bb.i

_RNvXs1_NtNtCs9j2PgAuXC7p_12futures_util2io9read_lineINtB5_8ReadLineQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtB7_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEENtNtNtB19_3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit.i.i: ; preds = %.noexc.i.i, %bb.c
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RNvXs1_NtNtCs9j2PgAuXC7p_12futures_util2io9read_lineINtB5_8ReadLineQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtB7_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEENtNtNtB19_3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !304 ; 2 uses
  %i.t = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.t, label %.body.i, label %.body.sink.split.i

bb.h:                                             ; preds = %_RNvXs1_NtNtCs9j2PgAuXC7p_12futures_util2io9read_lineINtB5_8ReadLineQINtNtCskKLDkoKarTP_4core3pin3PinQINtNtB7_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEENtNtNtB19_3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit.i.i
  %.val.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !304 ; 2 uses
  %i.u = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io9read_line8ReadLineQINtNtB4_3pin3PinQINtNtBG_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEEECsddkiMbsmfqo_5yr_ls.exit.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io9read_line8ReadLineQINtNtB4_3pin3PinQINtNtBG_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEEECsddkiMbsmfqo_5yr_ls.exit.sink.split.i

bb.i:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.j:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.w, align 8, !alias.scope !305 ; 2 uses
  %i.y = icmp eq i64 %.val2.i.i, 0
  br i1 %i.y, label %.body.i, label %.body.sink.split.i

bb.l:                                             ; preds = %bb.j
  %.val.i.i = load i64, ptr %i.w, align 8, !alias.scope !305 ; 2 uses
  %i.z = icmp eq i64 %.val.i.i, 0
  br i1 %i.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io9read_line8ReadLineQINtNtB4_3pin3PinQINtNtBG_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEEECsddkiMbsmfqo_5yr_ls.exit.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io9read_line8ReadLineQINtNtB4_3pin3PinQINtNtBG_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEEECsddkiMbsmfqo_5yr_ls.exit.sink.split.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io9read_line8ReadLineQINtNtB4_3pin3PinQINtNtBG_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEEECsddkiMbsmfqo_5yr_ls.exit.sink.split.i: ; preds = %bb.l, %bb.h
  %.val.i.sink.i = phi i64 [ %.val.i.i.i, %bb.h ], [ %.val.i.i, %bb.l ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i = load ptr, ptr %i.aa, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !6
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io9read_line8ReadLineQINtNtB4_3pin3PinQINtNtBG_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEEECsddkiMbsmfqo_5yr_ls.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io9read_line8ReadLineQINtNtB4_3pin3PinQINtNtBG_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEEECsddkiMbsmfqo_5yr_ls.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io9read_line8ReadLineQINtNtB4_3pin3PinQINtNtBG_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEEECsddkiMbsmfqo_5yr_ls.exit.sink.split.i, %bb.l, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %bb.o unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io9read_line8ReadLineQINtNtB4_3pin3PinQINtNtBG_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEEECsddkiMbsmfqo_5yr_ls.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i4.i = load i64, ptr %i.ab, align 8, !alias.scope !306 ; 2 uses
  %i.ad = icmp eq i64 %.val2.i.i4.i, 0
  br i1 %i.ad, label %common.resume.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i5.i = load ptr, ptr %i.ae, align 8, !alias.scope !307, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i5.i, i64 noundef %.val2.i.i4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !308
  br label %common.resume.i

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io9read_line8ReadLineQINtNtB4_3pin3PinQINtNtBG_10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEEEECsddkiMbsmfqo_5yr_ls.exit.i
  %.val.i.i6.i = load i64, ptr %i.ab, align 8, !alias.scope !306 ; 2 uses
  %i.af = icmp eq i64 %.val.i.i6.i, 0
  br i1 %i.af, label %common.ret, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i7.i = load ptr, ptr %i.ag, align 8, !alias.scope !307, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i7.i, i64 noundef %.val.i.i6.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !309
  br label %common.ret

common.resume.i:                                  ; preds = %.body.i, %bb.n, %bb.m
  %common.resume.op.i = phi { ptr, i32 } [ %i.ac, %bb.m ], [ %i.ac, %bb.n ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

.body.sink.split.i:                               ; preds = %bb.k, %bb.g
  %.val2.i.sink.i = phi i64 [ %.val2.i.i.i, %bb.g ], [ %.val2.i.i, %bb.k ]
  %.pn.ph.i = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.x, %bb.k ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val3.i.i = load ptr, ptr %i.ah, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !6
  br label %.body.i

.body.i:                                          ; preds = %.body.sink.split.i, %bb.k, %bb.g, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.s, %bb.g ], [ %i.x, %bb.k ], [ %.pn.ph.i, %.body.sink.split.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai) #19
          to label %common.resume.i unwind label %bb.q

bb.q:                                             ; preds = %.body.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBO_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBO_6server9LifecycleINtNtBO_5panic11CatchUnwindINtNtBO_11concurrency11ConcurrencyINtNtBO_6router6RouterNtNtB1w_6server18YARALanguageServerEEEEEE3runINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBO_5stdio10tokio_impl14TokioPipeStdinENtB5L_15TokioPipeStdoutE0s_00ECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load i8, ptr %i.a, align 8, !range !16, !noundef !6
  switch i8 %i.b, label %common.ret [
    i8 0, label %common.ret.sink.split
    i8 3, label %bb.b
  ]

common.ret.sink.split:                            ; preds = %bb.b, %bb.j, %bb.k, %bb.a
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp7MessageECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(200) %0)
  br label %common.ret

common.ret:                                       ; preds = %common.ret.sink.split, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = load i8, ptr %i.c, align 8, !range !330, !noundef !6
  switch i8 %i.d, label %common.ret.sink.split [
    i8 5, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit.i
    i8 3, label %bb.c
    i8 4, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !331 ; 2 uses
  %i.g = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.g, label %.body.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.val3.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !332, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %.val2.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !333
  br label %.body.i

bb.f:                                             ; preds = %bb.c
  %.val.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !331 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.val1.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !332, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !334
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit.i

.body.i:                                          ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #19
          to label %.body unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit.i: ; preds = %bb.g, %bb.f, %bb.b, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i1.i = load i64, ptr %i.l, align 8, !alias.scope !335 ; 2 uses
  %i.n = icmp eq i64 %.val2.i.i1.i, 0
  br i1 %i.n, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val3.i.i2.i = load ptr, ptr %i.o, align 8, !alias.scope !336, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i2.i, i64 noundef %.val2.i.i1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !337
  br label %.body

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit.i
  %.val.i.i4.i = load i64, ptr %i.l, align 8, !alias.scope !335 ; 2 uses
  %i.p = icmp eq i64 %.val.i.i4.i, 0
  br i1 %i.p, label %common.ret.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val1.i.i5.i = load ptr, ptr %i.q, align 8, !alias.scope !336, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i5.i, i64 noundef %.val.i.i4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !338
  br label %common.ret.sink.split

bb.l:                                             ; preds = %.body.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

.body:                                            ; preds = %.body.i, %bb.h, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %.body.i ], [ %i.m, %bb.h ], [ %i.m, %bb.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp7MessageECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(200) %0) #19
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvCsddkiMbsmfqo_5yr_ls4main0EBF_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2698
  %i.d = load i8, ptr %i.c, align 2, !range !16, !noundef !6
  %cond = icmp eq i8 %i.d, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvCs4KzxGwe94yc_9yara_x_ls5serveNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinNtB1c_15TokioPipeStdoutE0ECsddkiMbsmfqo_5yr_ls.exit
  ret void

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %i.f = load i8, ptr %i.e, align 8, !range !16, !noundef !6
  switch i8 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvCs4KzxGwe94yc_9yara_x_ls5serveNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinNtB1c_15TokioPipeStdoutE0ECsddkiMbsmfqo_5yr_ls.exit [
    i8 0, label %bb.c
    i8 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.bl unwind label %bb.bk

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2680
  %i.i = load i8, ptr %i.h, align 8, !range !16, !noundef !6
  switch i8 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBK_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBK_6server9LifecycleINtNtBK_5panic11CatchUnwindINtNtBK_11concurrency11ConcurrencyINtNtBK_6router6RouterNtNtB1s_6server18YARALanguageServerEEEEEE12run_bufferedNtNtNtBK_5stdio10tokio_impl14TokioPipeStdinNtB4T_15TokioPipeStdoutE0ECsddkiMbsmfqo_5yr_ls.exit.i [
    i8 0, label %bb.e
    i8 3, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6m2LFPinx2P_9async_lsp8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBE_6server9LifecycleINtNtBE_5panic11CatchUnwindINtNtBE_11concurrency11ConcurrencyINtNtBE_6router6RouterNtNtB1g_6server18YARALanguageServerEEEEEEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(392) %i.j)
          to label %bb.be unwind label %bb.bd

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2288
  %i.m = load i8, ptr %i.l, align 8, !range !379, !noundef !6
  switch i8 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBK_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBK_6server9LifecycleINtNtBK_5panic11CatchUnwindINtNtBK_11concurrency11ConcurrencyINtNtBK_6router6RouterNtNtB1s_6server18YARALanguageServerEEEEEE3runINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBK_5stdio10tokio_impl14TokioPipeStdinENtB5H_15TokioPipeStdoutE0ECsddkiMbsmfqo_5yr_ls.exit.i.i [
    i8 0, label %bb.g
    i8 3, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i
    i8 4, label %bb.h
    i8 5, label %bb.n
    i8 6, label %bb.p
  ]

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 688
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6m2LFPinx2P_9async_lsp8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBE_6server9LifecycleINtNtBE_5panic11CatchUnwindINtNtBE_11concurrency11ConcurrencyINtNtBE_6router6RouterNtNtB1g_6server18YARALanguageServerEEEEEEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(392) %i.n)
          to label %bb.am unwind label %bb.al

bb.h:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2296
  %i.p = load i64, ptr %i.o, align 8, !range !5, !noundef !6
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2648
  %i.s = load i8, ptr %i.r, align 8, !range !16, !noundef !6
  switch i8 %i.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit.i.i.i [
    i8 0, label %bb.j
    i8 3, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2304
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp7MessageECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.t)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit.i.i.i unwind label %bb.aq

bb.k:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2520
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp10AnyRequestECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(120) %i.u)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2649
  store i8 0, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2650
  store i8 0, ptr %i.x, align 2
  br label %.body.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2649
  store i8 0, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2650
  store i8 0, ptr %i.z, align 2
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit.i.i.i

bb.n:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2296 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !380, !alias.scope !381, !noundef !6
  %i.ac = icmp eq i64 %i.ab, -2
  br i1 %i.ac, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp7MessageECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i unwind label %bb.at

bb.p:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2296 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.ae = load i64, ptr %i.ad, align 8, !range !383, !alias.scope !382, !noundef !6 ; 4 uses
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.ag = icmp ne i64 %i.ae, -9223372036854775806
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = xor i64 %i.ae, -9223372036854775808
  %i.ai = icmp slt i64 %i.ae, 0
  %i.aj = select i1 %i.ai, i64 %i.ah, i64 2
  switch i64 %i.aj, label %bb.r [
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i
    i64 1, label %bb.w
    i64 2, label %bb.ac
    i64 3, label %bb.ad
    i64 4, label %bb.ai
    i64 5, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i
  ]

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2304 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !385 ; 2 uses
  %i.am = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.am, label %.body18.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2312
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !386, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !387
  br label %.body18.i.i.i

bb.u:                                             ; preds = %bb.r
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !385 ; 2 uses
  %i.ao = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.ao, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2312
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !386, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !388
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i

bb.w:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %.val1.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !389, !nonnull !6, !noundef !6 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.ar = load i64, ptr %.val1.i.i.i.i.i, align 8, !range !392, !alias.scope !393, !noalias !389, !noundef !6
  switch i64 %i.ar, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error5ErrorECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i [
    i64 0, label %bb.x
    i64 1, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.as = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %.val1.i.i.i.i.i.i.i.i.i = load i64, ptr %i.as, align 8, !alias.scope !393, !noalias !389, !noundef !6 ; 2 uses
  %i.at = icmp eq i64 %.val1.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error5ErrorECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.x
  %i.au = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !393, !noalias !389, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i.i.i, i64 noundef 1) #22, !noalias !394
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error5ErrorECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.av = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %.val2.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !393, !noalias !389, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !394
  %i.aw = ptrtoint ptr %.val2.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.ax = and i64 %i.aw, 3
  switch i64 %i.ax, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i.i.i.i.i
    i64 3, label %bb.z
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i.i.i.i.i
    i64 1, label %bb.aa
  ], !prof !15

default.unreachable:                              ; preds = %bb.ai, %bb.y
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.ay = icmp ult ptr %.val2.i.i.i.i.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.az = and i64 %i.aw, 1095216660480
  %i.ba = icmp ne i64 %i.az, 1095216660480
  tail call void @llvm.assume(i1 %i.ay)
  tail call void @llvm.assume(i1 %i.ba)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.bb = getelementptr i8, ptr %.val2.i.i.i.i.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !alias.scope !395, !noalias !394
  store i8 3, ptr %i.b, align 8, !alias.scope !395, !noalias !394
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i.i.i.i.i unwind label %bb.ab, !noalias !389

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.aa, %bb.z, %bb.y, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !394
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error5ErrorECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef 40, i64 noundef 8) #22, !noalias !389
  br label %.body18.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error5ErrorECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.x, %bb.w
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef 40, i64 noundef 8) #22, !noalias !389
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i

bb.ac:                                            ; preds = %bb.q
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp13ResponseErrorECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.ad)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i unwind label %bb.at

bb.ad:                                            ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 2304 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %bb.ag unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i2.i.i.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !396 ; 2 uses
  %i.bg = icmp eq i64 %.val2.i.i2.i.i.i.i.i, 0
  br i1 %i.bg, label %.body18.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2312
  %.val3.i.i3.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !397, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i3.i.i.i.i.i, i64 noundef %.val2.i.i2.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !398
  br label %.body18.i.i.i

bb.ag:                                            ; preds = %bb.ad
  %.val.i.i5.i.i.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !396 ; 2 uses
  %i.bi = icmp eq i64 %.val.i.i5.i.i.i.i.i, 0
  br i1 %i.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2312
  %.val1.i.i6.i.i.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !397, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i6.i.i.i.i.i, i64 noundef %.val.i.i5.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !399
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i

bb.ai:                                            ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2304
  %.val.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !389, !nonnull !6, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !389
  %i.bl = ptrtoint ptr %.val.i.i.i.i.i to i64     ; 2 uses
  %i.bm = and i64 %i.bl, 3
  switch i64 %i.bm, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i
    i64 3, label %bb.aj
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i
    i64 1, label %bb.ak
  ], !prof !15

bb.aj:                                            ; preds = %bb.ai
  %i.bn = icmp ult ptr %.val.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.bo = and i64 %i.bl, 1095216660480
  %i.bp = icmp ne i64 %i.bo, 1095216660480
  tail call void @llvm.assume(i1 %i.bn)
  tail call void @llvm.assume(i1 %i.bp)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.bq = getelementptr i8, ptr %.val.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bq, ptr %i.br, align 8, !alias.scope !400, !noalias !389
  store i8 3, ptr %i.a, align 8, !alias.scope !400, !noalias !389
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i unwind label %bb.at

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i: ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !389
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i

bb.al:                                            ; preds = %bb.g
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.k) #19
          to label %.body22.i.i.i unwind label %bb.ap

bb.am:                                            ; preds = %bb.g
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.k)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 624
  %.val3.i.i.i.i = load i64, ptr %i.bu, align 8, !alias.scope !401, !noundef !6 ; 2 uses
  %i.bv = icmp eq i64 %.val3.i.i.i.i, 0
  br i1 %i.bv, label %.body22.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.an
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 616
  %.val2.i.i.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !401, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i, i64 noundef %.val3.i.i.i.i, i64 noundef 1) #22
  br label %.body22.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 624
  %.val1.i.i.i.i = load i64, ptr %i.bx, align 8, !alias.scope !401, !noundef !6 ; 2 uses
  %i.by = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.by, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEECsddkiMbsmfqo_5yr_ls.exit.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i4.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i4.i.i.i.i: ; preds = %bb.ao
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 616
  %.val.i.i.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !401, !nonnull !6, !noundef !6
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 1) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEECsddkiMbsmfqo_5yr_ls.exit.i.i.i

.body22.i.i.i:                                    ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.an, %bb.al
  %.pn14.i.i.i = phi { ptr, i32 } [ %i.bs, %bb.al ], [ %i.bt, %bb.an ], [ %i.bt, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 648
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ca) #19
          to label %.body.i.i unwind label %bb.ap

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEECsddkiMbsmfqo_5yr_ls.exit.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i4.i.i.i.i, %bb.ao
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 648
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBK_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBK_6server9LifecycleINtNtBK_5panic11CatchUnwindINtNtBK_11concurrency11ConcurrencyINtNtBK_6router6RouterNtNtB1s_6server18YARALanguageServerEEEEEE3runINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBK_5stdio10tokio_impl14TokioPipeStdinENtB5H_15TokioPipeStdoutE0ECsddkiMbsmfqo_5yr_ls.exit.i.i unwind label %bb.bj

bb.ap:                                            ; preds = %.body37.i.i.i, %bb.ay, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util6stream6unfold6UnfoldINtNtB4_3pin3PinQINtNtNtBI_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2r_INtB2r_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2r_6server9LifecycleINtNtB2r_5panic11CatchUnwindINtNtB2r_11concurrency11ConcurrencyINtNtB2r_6router6RouterNtNtB3Z_6server18YARALanguageServerEEEEEE3runB1M_NtB2n_15TokioPipeStdoutE00NCNCB3r_00EECsddkiMbsmfqo_5yr_ls.exit.i.i.i, %bb.au, %bb.as, %.body22.i.i.i, %bb.al
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.aq:                                            ; preds = %bb.j
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.aq, %bb.l
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cd, %bb.aq ], [ %i.v, %bb.l ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 2290
  store i8 0, ptr %i.ce, align 2
  br label %.body18.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit.i.i.i: ; preds = %bb.m, %bb.j, %bb.i, %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 2290
  store i8 0, ptr %i.cf, align 2
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs9j2PgAuXC7p_12futures_util6future6future4fuse4FuseNCNvMs3_Cs6m2LFPinx2P_9async_lspINtB1I_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1I_6server9LifecycleINtNtB1I_5panic11CatchUnwindINtNtB1I_11concurrency11ConcurrencyINtNtB1I_6router6RouterNtNtB2r_6server18YARALanguageServerEEEEEE16dispatch_message0EECsddkiMbsmfqo_5yr_ls.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i, %bb.ah, %bb.ag, %bb.ac, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error5ErrorECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i, %bb.v, %bb.u, %bb.q, %bb.q, %bb.p, %bb.o, %bb.n, %bb.f
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 2289
  store i8 0, ptr %i.cg, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1744
  %i.ci = load i64, ptr %i.ch, align 8, !range !7, !noundef !6
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.ar, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldINtNtB4_3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B1Q_INtB1Q_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1Q_6server9LifecycleINtNtB1Q_5panic11CatchUnwindINtNtB1Q_11concurrency11ConcurrencyINtNtB1Q_6router6RouterNtNtB3o_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB1M_14TokioPipeStdinEB1K_E0s_0NCNCB2Q_s_00EECsddkiMbsmfqo_5yr_ls.exit.i.i.i

bb.ar:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1752
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBO_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBO_6server9LifecycleINtNtBO_5panic11CatchUnwindINtNtBO_11concurrency11ConcurrencyINtNtBO_6router6RouterNtNtB1w_6server18YARALanguageServerEEEEEE3runINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBO_5stdio10tokio_impl14TokioPipeStdinENtB5L_15TokioPipeStdoutE0s_00ECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %i.ck)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldINtNtB4_3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B1Q_INtB1Q_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1Q_6server9LifecycleINtNtB1Q_5panic11CatchUnwindINtNtB1Q_11concurrency11ConcurrencyINtNtB1Q_6router6RouterNtNtB3o_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB1M_14TokioPipeStdinEB1K_E0s_0NCNCB2Q_s_00EECsddkiMbsmfqo_5yr_ls.exit.i.i.i unwind label %bb.av

.body18.i.i.i:                                    ; preds = %bb.at, %.body.i.i.i, %bb.af, %bb.ae, %bb.ab, %bb.t, %bb.s
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.cq, %bb.at ], [ %i.al, %bb.s ], [ %i.bd, %bb.ab ], [ %i.al, %bb.t ], [ %i.bf, %bb.af ], [ %i.bf, %bb.ae ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2289
  store i8 0, ptr %i.cl, align 1
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1744
  %i.cn = load i64, ptr %i.cm, align 8, !range !7, !noundef !6
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.as, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldINtNtB4_3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B1Q_INtB1Q_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1Q_6server9LifecycleINtNtB1Q_5panic11CatchUnwindINtNtB1Q_11concurrency11ConcurrencyINtNtB1Q_6router6RouterNtNtB3o_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB1M_14TokioPipeStdinEB1K_E0s_0NCNCB2Q_s_00EECsddkiMbsmfqo_5yr_ls.exit26.i.i.i

bb.as:                                            ; preds = %.body18.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1752
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBO_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBO_6server9LifecycleINtNtBO_5panic11CatchUnwindINtNtBO_11concurrency11ConcurrencyINtNtBO_6router6RouterNtNtB1w_6server18YARALanguageServerEEEEEE3runINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBO_5stdio10tokio_impl14TokioPipeStdinENtB5L_15TokioPipeStdoutE0s_00ECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %i.cp)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldINtNtB4_3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B1Q_INtB1Q_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1Q_6server9LifecycleINtNtB1Q_5panic11CatchUnwindINtNtB1Q_11concurrency11ConcurrencyINtNtB1Q_6router6RouterNtNtB3o_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB1M_14TokioPipeStdinEB1K_E0s_0NCNCB2Q_s_00EECsddkiMbsmfqo_5yr_ls.exit26.i.i.i unwind label %bb.ap

bb.at:                                            ; preds = %bb.ak, %bb.ac, %bb.o
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body18.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldINtNtB4_3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B1Q_INtB1Q_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1Q_6server9LifecycleINtNtB1Q_5panic11CatchUnwindINtNtB1Q_11concurrency11ConcurrencyINtNtB1Q_6router6RouterNtNtB3o_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB1M_14TokioPipeStdinEB1K_E0s_0NCNCB2Q_s_00EECsddkiMbsmfqo_5yr_ls.exit26.i.i.i: ; preds = %bb.av, %bb.as, %.body18.i.i.i
  %.pn6.i.i.i = phi { ptr, i32 } [ %i.cv, %bb.av ], [ %.pn.i.i.i, %bb.as ], [ %.pn.i.i.i, %.body18.i.i.i ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.cs = load i64, ptr %i.cr, align 8, !range !7, !noundef !6
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util6stream6unfold6UnfoldINtNtB4_3pin3PinQINtNtNtBI_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2r_INtB2r_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2r_6server9LifecycleINtNtB2r_5panic11CatchUnwindINtNtB2r_11concurrency11ConcurrencyINtNtB2r_6router6RouterNtNtB3Z_6server18YARALanguageServerEEEEEE3runB1M_NtB2n_15TokioPipeStdoutE00NCNCB3r_00EECsddkiMbsmfqo_5yr_ls.exit.i.i.i

bb.au:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldINtNtB4_3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B1Q_INtB1Q_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1Q_6server9LifecycleINtNtB1Q_5panic11CatchUnwindINtNtB1Q_11concurrency11ConcurrencyINtNtB1Q_6router6RouterNtNtB3o_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB1M_14TokioPipeStdinEB1K_E0s_0NCNCB2Q_s_00EECsddkiMbsmfqo_5yr_ls.exit26.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1600
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBO_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBO_6server9LifecycleINtNtBO_5panic11CatchUnwindINtNtBO_11concurrency11ConcurrencyINtNtBO_6router6RouterNtNtB1w_6server18YARALanguageServerEEEEEE3runINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBO_5stdio10tokio_impl14TokioPipeStdinENtB5L_15TokioPipeStdoutE000ECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %i.cu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util6stream6unfold6UnfoldINtNtB4_3pin3PinQINtNtNtBI_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2r_INtB2r_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2r_6server9LifecycleINtNtB2r_5panic11CatchUnwindINtNtB2r_11concurrency11ConcurrencyINtNtB2r_6router6RouterNtNtB3Z_6server18YARALanguageServerEEEEEE3runB1M_NtB2n_15TokioPipeStdoutE00NCNCB3r_00EECsddkiMbsmfqo_5yr_ls.exit.i.i.i unwind label %bb.ap

bb.av:                                            ; preds = %bb.ar
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldINtNtB4_3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B1Q_INtB1Q_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1Q_6server9LifecycleINtNtB1Q_5panic11CatchUnwindINtNtB1Q_11concurrency11ConcurrencyINtNtB1Q_6router6RouterNtNtB3o_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB1M_14TokioPipeStdinEB1K_E0s_0NCNCB2Q_s_00EECsddkiMbsmfqo_5yr_ls.exit26.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldINtNtB4_3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B1Q_INtB1Q_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1Q_6server9LifecycleINtNtB1Q_5panic11CatchUnwindINtNtB1Q_11concurrency11ConcurrencyINtNtB1Q_6router6RouterNtNtB3o_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB1M_14TokioPipeStdinEB1K_E0s_0NCNCB2Q_s_00EECsddkiMbsmfqo_5yr_ls.exit.i.i.i: ; preds = %bb.ar, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink4feed4FeedINtNtB4_3pin3PinQINtNtBG_6unfold6UnfoldIB1q_QNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B2e_INtB2e_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2e_6server9LifecycleINtNtB2e_5panic11CatchUnwindINtNtB2e_11concurrency11ConcurrencyINtNtB2e_6router6RouterNtNtB3M_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB2a_14TokioPipeStdinEB28_E0s_0NCNCB3e_s_00EENtB2e_7MessageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.cx = load i64, ptr %i.cw, align 8, !range !7, !noundef !6
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.aw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util6stream6unfold6UnfoldINtNtB4_3pin3PinQINtNtNtBI_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2r_INtB2r_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2r_6server9LifecycleINtNtB2r_5panic11CatchUnwindINtNtB2r_11concurrency11ConcurrencyINtNtB2r_6router6RouterNtNtB3Z_6server18YARALanguageServerEEEEEE3runB1M_NtB2n_15TokioPipeStdoutE00NCNCB3r_00EECsddkiMbsmfqo_5yr_ls.exit29.i.i.i

bb.aw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldINtNtB4_3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B1Q_INtB1Q_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1Q_6server9LifecycleINtNtB1Q_5panic11CatchUnwindINtNtB1Q_11concurrency11ConcurrencyINtNtB1Q_6router6RouterNtNtB3o_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB1M_14TokioPipeStdinEB1K_E0s_0NCNCB2Q_s_00EECsddkiMbsmfqo_5yr_ls.exit.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1600
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBO_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBO_6server9LifecycleINtNtBO_5panic11CatchUnwindINtNtBO_11concurrency11ConcurrencyINtNtBO_6router6RouterNtNtB1w_6server18YARALanguageServerEEEEEE3runINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBO_5stdio10tokio_impl14TokioPipeStdinENtB5L_15TokioPipeStdoutE000ECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %i.cz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util6stream6unfold6UnfoldINtNtB4_3pin3PinQINtNtNtBI_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2r_INtB2r_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2r_6server9LifecycleINtNtB2r_5panic11CatchUnwindINtNtB2r_11concurrency11ConcurrencyINtNtB2r_6router6RouterNtNtB3Z_6server18YARALanguageServerEEEEEE3runB1M_NtB2n_15TokioPipeStdoutE00NCNCB3r_00EECsddkiMbsmfqo_5yr_ls.exit29.i.i.i unwind label %bb.ax

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util6stream6unfold6UnfoldINtNtB4_3pin3PinQINtNtNtBI_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2r_INtB2r_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2r_6server9LifecycleINtNtB2r_5panic11CatchUnwindINtNtB2r_11concurrency11ConcurrencyINtNtB2r_6router6RouterNtNtB3Z_6server18YARALanguageServerEEEEEE3runB1M_NtB2n_15TokioPipeStdoutE00NCNCB3r_00EECsddkiMbsmfqo_5yr_ls.exit.i.i.i: ; preds = %bb.ax, %bb.au, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldINtNtB4_3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B1Q_INtB1Q_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1Q_6server9LifecycleINtNtB1Q_5panic11CatchUnwindINtNtB1Q_11concurrency11ConcurrencyINtNtB1Q_6router6RouterNtNtB3o_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB1M_14TokioPipeStdinEB1K_E0s_0NCNCB2Q_s_00EECsddkiMbsmfqo_5yr_ls.exit26.i.i.i
  %.pn8.i.i.i = phi { ptr, i32 } [ %i.dd, %bb.ax ], [ %.pn6.i.i.i, %bb.au ], [ %.pn6.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldINtNtB4_3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B1Q_INtB1Q_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1Q_6server9LifecycleINtNtB1Q_5panic11CatchUnwindINtNtB1Q_11concurrency11ConcurrencyINtNtB1Q_6router6RouterNtNtB3o_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB1M_14TokioPipeStdinEB1K_E0s_0NCNCB2Q_s_00EECsddkiMbsmfqo_5yr_ls.exit26.i.i.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 2291
  store i8 0, ptr %i.da, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 2292
  store i8 0, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1552
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(40) %i.dc) #19
          to label %bb.ay unwind label %bb.ap

bb.ax:                                            ; preds = %bb.aw
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util6stream6unfold6UnfoldINtNtB4_3pin3PinQINtNtNtBI_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2r_INtB2r_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2r_6server9LifecycleINtNtB2r_5panic11CatchUnwindINtNtB2r_11concurrency11ConcurrencyINtNtB2r_6router6RouterNtNtB3Z_6server18YARALanguageServerEEEEEE3runB1M_NtB2n_15TokioPipeStdoutE00NCNCB3r_00EECsddkiMbsmfqo_5yr_ls.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util6stream6unfold6UnfoldINtNtB4_3pin3PinQINtNtNtBI_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2r_INtB2r_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2r_6server9LifecycleINtNtB2r_5panic11CatchUnwindINtNtB2r_11concurrency11ConcurrencyINtNtB2r_6router6RouterNtNtB3Z_6server18YARALanguageServerEEEEEE3runB1M_NtB2n_15TokioPipeStdoutE00NCNCB3r_00EECsddkiMbsmfqo_5yr_ls.exit29.i.i.i: ; preds = %bb.aw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util4sink6unfold6UnfoldINtNtB4_3pin3PinQNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutENCNCINvMs3_B1Q_INtB1Q_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB1Q_6server9LifecycleINtNtB1Q_5panic11CatchUnwindINtNtB1Q_11concurrency11ConcurrencyINtNtB1Q_6router6RouterNtNtB3o_6server18YARALanguageServerEEEEEE3runINtNtNtBI_2io10buf_reader9BufReaderNtB1M_14TokioPipeStdinEB1K_E0s_0NCNCB2Q_s_00EECsddkiMbsmfqo_5yr_ls.exit.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 2291
  store i8 0, ptr %i.de, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 2292
  store i8 0, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1552
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(40) %i.dg)
          to label %bb.ba unwind label %bb.az

bb.ay:                                            ; preds = %bb.az, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util6stream6unfold6UnfoldINtNtB4_3pin3PinQINtNtNtBI_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2r_INtB2r_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2r_6server9LifecycleINtNtB2r_5panic11CatchUnwindINtNtB2r_11concurrency11ConcurrencyINtNtB2r_6router6RouterNtNtB3Z_6server18YARALanguageServerEEEEEE3runB1M_NtB2n_15TokioPipeStdoutE00NCNCB3r_00EECsddkiMbsmfqo_5yr_ls.exit.i.i.i
  %.pn10.i.i.i = phi { ptr, i32 } [ %i.di, %bb.az ], [ %.pn8.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util6stream6unfold6UnfoldINtNtB4_3pin3PinQINtNtNtBI_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2r_INtB2r_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2r_6server9LifecycleINtNtB2r_5panic11CatchUnwindINtNtB2r_11concurrency11ConcurrencyINtNtB2r_6router6RouterNtNtB3Z_6server18YARALanguageServerEEEEEE3runB1M_NtB2n_15TokioPipeStdoutE00NCNCB3r_00EECsddkiMbsmfqo_5yr_ls.exit.i.i.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1472
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(80) %i.dh) #19
          to label %.body37.i.i.i unwind label %bb.ap

bb.az:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util6stream6unfold6UnfoldINtNtB4_3pin3PinQINtNtNtBI_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2r_INtB2r_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2r_6server9LifecycleINtNtB2r_5panic11CatchUnwindINtNtB2r_11concurrency11ConcurrencyINtNtB2r_6router6RouterNtNtB3Z_6server18YARALanguageServerEEEEEE3runB1M_NtB2n_15TokioPipeStdoutE00NCNCB3r_00EECsddkiMbsmfqo_5yr_ls.exit29.i.i.i
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ba:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util6stream6unfold6UnfoldINtNtB4_3pin3PinQINtNtNtBI_2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEENCNCINvMs3_B2r_INtB2r_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB2r_6server9LifecycleINtNtB2r_5panic11CatchUnwindINtNtB2r_11concurrency11ConcurrencyINtNtB2r_6router6RouterNtNtB3Z_6server18YARALanguageServerEEEEEE3runB1M_NtB2n_15TokioPipeStdoutE00NCNCB3r_00EECsddkiMbsmfqo_5yr_ls.exit29.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1472
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.dj)
          to label %bb.bc unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %.val3.i30.i.i.i = load i64, ptr %i.dl, align 8, !alias.scope !402, !noundef !6 ; 2 uses
  %i.dm = icmp eq i64 %.val3.i30.i.i.i, 0
  br i1 %i.dm, label %.body37.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i31.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i31.i.i.i: ; preds = %bb.bb
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %.val2.i32.i.i.i = load ptr, ptr %i.dn, align 8, !alias.scope !402, !nonnull !6, !noundef !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i32.i.i.i, i64 noundef %.val3.i30.i.i.i, i64 noundef 1) #22
  br label %.body37.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %.val1.i34.i.i.i = load i64, ptr %i.do, align 8, !alias.scope !402, !noundef !6 ; 2 uses
  %i.dp = icmp eq i64 %.val1.i34.i.i.i, 0
  br i1 %i.dp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEECsddkiMbsmfqo_5yr_ls.exit39.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i4.i35.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i4.i35.i.i.i: ; preds = %bb.bc
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %.val.i36.i.i.i = load ptr, ptr %i.dq, align 8, !alias.scope !402, !nonnull !6, !noundef !6
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i36.i.i.i, i64 noundef %.val1.i34.i.i.i, i64 noundef 1) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEECsddkiMbsmfqo_5yr_ls.exit39.i.i.i

.body37.i.i.i:                                    ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i31.i.i.i, %bb.bb, %bb.ay
  %.pn12.i.i.i = phi { ptr, i32 } [ %.pn10.i.i.i, %bb.ay ], [ %i.dk, %bb.bb ], [ %i.dk, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i31.i.i.i ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 2293
  store i8 0, ptr %i.dr, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1080
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6m2LFPinx2P_9async_lsp8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBE_6server9LifecycleINtNtBE_5panic11CatchUnwindINtNtBE_11concurrency11ConcurrencyINtNtBE_6router6RouterNtNtB1g_6server18YARALanguageServerEEEEEEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(392) %i.ds) #19
          to label %.body.i.i unwind label %bb.ap

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEECsddkiMbsmfqo_5yr_ls.exit39.i.i.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i4.i35.i.i.i, %bb.bc
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 2293
  store i8 0, ptr %i.dt, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1080
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs6m2LFPinx2P_9async_lsp8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBE_6server9LifecycleINtNtBE_5panic11CatchUnwindINtNtBE_11concurrency11ConcurrencyINtNtBE_6router6RouterNtNtB1g_6server18YARALanguageServerEEEEEEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(392) %i.du)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBK_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBK_6server9LifecycleINtNtBK_5panic11CatchUnwindINtNtBK_11concurrency11ConcurrencyINtNtBK_6router6RouterNtNtB1s_6server18YARALanguageServerEEEEEE3runINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBK_5stdio10tokio_impl14TokioPipeStdinENtB5H_15TokioPipeStdoutE0ECsddkiMbsmfqo_5yr_ls.exit.i.i unwind label %bb.bj

bb.bd:                                            ; preds = %bb.e
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g) #19
          to label %bb.bf unwind label %bb.bi

bb.be:                                            ; preds = %bb.e
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.bh unwind label %bb.bg

bb.bf:                                            ; preds = %bb.bg, %bb.bd
  %.pn.i.i = phi { ptr, i32 } [ %i.dx, %bb.bg ], [ %i.dv, %bb.bd ]
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(40) %i.dw) #19
          to label %.body.i unwind label %bb.bi

bb.bg:                                            ; preds = %bb.be
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bh:                                            ; preds = %bb.be
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(40) %i.dy)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBK_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBK_6server9LifecycleINtNtBK_5panic11CatchUnwindINtNtBK_11concurrency11ConcurrencyINtNtBK_6router6RouterNtNtB1s_6server18YARALanguageServerEEEEEE12run_bufferedNtNtNtBK_5stdio10tokio_impl14TokioPipeStdinNtB4T_15TokioPipeStdoutE0ECsddkiMbsmfqo_5yr_ls.exit.i unwind label %bb.bn

bb.bi:                                            ; preds = %bb.bf, %bb.bd
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.bj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEECsddkiMbsmfqo_5yr_ls.exit39.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEECsddkiMbsmfqo_5yr_ls.exit.i.i.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.bj, %.body37.i.i.i, %.body22.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ea, %bb.bj ], [ %.pn14.i.i.i, %.body22.i.i.i ], [ %.pn12.i.i.i, %.body37.i.i.i ]
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 2681
  store i8 0, ptr %i.eb, align 1
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBK_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBK_6server9LifecycleINtNtBK_5panic11CatchUnwindINtNtBK_11concurrency11ConcurrencyINtNtBK_6router6RouterNtNtB1s_6server18YARALanguageServerEEEEEE3runINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBK_5stdio10tokio_impl14TokioPipeStdinENtB5H_15TokioPipeStdoutE0ECsddkiMbsmfqo_5yr_ls.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEECsddkiMbsmfqo_5yr_ls.exit39.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinEECsddkiMbsmfqo_5yr_ls.exit.i.i.i, %bb.f
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 2681
  store i8 0, ptr %i.ec, align 1
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBK_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBK_6server9LifecycleINtNtBK_5panic11CatchUnwindINtNtBK_11concurrency11ConcurrencyINtNtBK_6router6RouterNtNtB1s_6server18YARALanguageServerEEEEEE12run_bufferedNtNtNtBK_5stdio10tokio_impl14TokioPipeStdinNtB4T_15TokioPipeStdoutE0ECsddkiMbsmfqo_5yr_ls.exit.i

bb.bk:                                            ; preds = %bb.c
  %i.ed = landingpad { ptr, i32 }
          cleanup
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ee) #19
          to label %.body unwind label %bb.bm

bb.bl:                                            ; preds = %bb.c
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl15TokioPipeStdoutECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ef)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvCs4KzxGwe94yc_9yara_x_ls5serveNtNtNtCs6m2LFPinx2P_9async_lsp5stdio10tokio_impl14TokioPipeStdinNtB1c_15TokioPipeStdoutE0ECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.bn:                                            ; preds = %bb.bh
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.bn, %.body.i.i, %bb.bf
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.eh, %bb.bn ], [ %.pn.i.i, %bb.bf ], [ %eh.lpad-body.i.i, %.body.i.i ]
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 2689
  store i8 0, ptr %i.ei, align 1
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 2690
  store i8 0, ptr %i.ej, align 2
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 2691
  store i8 0, ptr %i.ek, align 1
  br label %.body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBK_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBK_6server9LifecycleINtNtBK_5panic11CatchUnwindINtNtBK_11concurrency11ConcurrencyINtNtBK_6router6RouterNtNtB1s_6server18YARALanguageServerEEEEEE12run_bufferedNtNtNtBK_5stdio10tokio_impl14TokioPipeStdinNtB4T_15TokioPipeStdoutE0ECsddkiMbsmfqo_5yr_ls.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvMs3_Cs6m2LFPinx2P_9async_lspINtBK_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtBK_6server9LifecycleINtNtBK_5panic11CatchUnwindINtNtBK_11concurrency11ConcurrencyINtNtBK_6router6RouterNtNtB1s_6server18YARALanguageServerEEEEEE3runINtNtNtCs9j2PgAuXC7p_12futures_util2io10buf_reader9BufReaderNtNtNtBK_5stdio10tokio_impl14TokioPipeStdinENtB5H_15TokioPipeStdoutE0ECsddkiMbsmfqo_5yr_ls.exit.i.i, %bb.bh, %bb.d
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 2689
  store i8 0, ptr %i.el, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 2690
  store i8 0, ptr %i.em, align 2
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 2691
end_hunk_0
