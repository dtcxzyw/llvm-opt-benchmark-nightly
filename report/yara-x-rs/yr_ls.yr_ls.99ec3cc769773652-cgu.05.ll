Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr_ls.yr_ls.99ec3cc769773652-cgu.05?download=true
inline.NumInlined: 259
inline.NumDeleted: 175
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtCs6m2LFPinx2P_9async_lsp6server9LifecycleINtNtB1x_5panic11CatchUnwindINtNtB1x_11concurrency11ConcurrencyINtNtB1x_6router6RouterNtNtBG_6server18YARALanguageServerEEEEEECsddkiMbsmfqo_5yr_ls:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !200, !noundef !5
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp12ClientSocketECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsn_NtCs5AFert6BSaG_15futures_channel4mpscINtB5_20UnboundedSenderInnerNtCs6m2LFPinx2P_9async_lsp13MainLoopEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.h = load ptr, ptr %i.d, align 8, !alias.scope !203, !nonnull !5, !noundef !5
  %i.i = atomicrmw add ptr %i.h, i64 -1 release, align 8, !noalias !204
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %.body.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCs5AFert6BSaG_15futures_channel4mpsc14UnboundedInnerNtCs6m2LFPinx2P_9async_lsp13MainLoopEventEE9drop_slowB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #18
          to label %.body.i.i.i.i.i unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !207, !nonnull !5, !noundef !5
  %i.l = atomicrmw add ptr %i.k, i64 -1 release, align 8, !noalias !208
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp12ClientSocketECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCs5AFert6BSaG_15futures_channel4mpsc14UnboundedInnerNtCs6m2LFPinx2P_9async_lsp13MainLoopEventEE9drop_slowB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp12ClientSocketECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.h, %bb.d, %bb.c
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.g, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.p = load ptr, ptr %i.c, align 8, !alias.scope !211, !nonnull !5, !noundef !5
  %i.q = atomicrmw add ptr %i.p, i64 -1 release, align 8, !noalias !212
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i

bb.i:                                             ; preds = %.body.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i unwind label %bb.n

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp12ClientSocketECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.s = load ptr, ptr %i.c, align 8, !alias.scope !215, !nonnull !5, !noundef !5
  %i.t = atomicrmw add ptr %i.s, i64 -1 release, align 8, !noalias !216
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEECsddkiMbsmfqo_5yr_ls.exit4.i.i.i.i.i

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp12ClientSocketECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEECsddkiMbsmfqo_5yr_ls.exit4.i.i.i.i.i unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i: ; preds = %bb.l, %bb.i, %.body.i.i.i.i.i
  %.pn.i.i.i.i.i = phi { ptr, i32 } [ %i.z, %bb.l ], [ %eh.lpad-body.i.i.i.i.i, %bb.i ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !219, !nonnull !5, !noundef !5
  %i.x = atomicrmw add ptr %i.w, i64 -1 release, align 8, !noalias !220
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.k, label %.body.i.i.i.i

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs4KzxGwe94yc_9yara_x_ls13configuration6ConfigE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #18
          to label %.body.i.i.i.i unwind label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEECsddkiMbsmfqo_5yr_ls.exit4.i.i.i.i.i: ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp12ClientSocketECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !223, !nonnull !5, !noundef !5
  %i.ac = atomicrmw add ptr %i.ab, i64 -1 release, align 8, !noalias !224
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEECsddkiMbsmfqo_5yr_ls.exit4.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCs4KzxGwe94yc_9yara_x_ls13configuration6ConfigE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i unwind label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.o, %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.af, %bb.o ], [ %.pn.i.i.i.i.i, %bb.k ], [ %.pn.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i.i ]
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtB1A_3pin3PinIBS_DNtNtNtB1A_6future6future6Futurep6OutputINtNtB1A_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB39_13ResponseErrorENtNtB1A_6marker4SendEL_EEB6h_EL_EEENtNtB1y_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtB4_3pin3PinIB1y_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB3z_13ResponseErrorENtNtB4_6marker4SendEL_EEB6F_EL_EEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i unwind label %bb.ah

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i: ; preds = %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs4KzxGwe94yc_9yara_x_ls9documents7storage15DocumentStorageEECsddkiMbsmfqo_5yr_ls.exit4.i.i.i.i.i
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtB1A_3pin3PinIBS_DNtNtNtB1A_6future6future6Futurep6OutputINtNtB1A_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB39_13ResponseErrorENtNtB1A_6marker4SendEL_EEB6h_EL_EEENtNtB1y_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtB4_3pin3PinIB1y_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB3z_13ResponseErrorENtNtB4_6marker4SendEL_EEB6F_EL_EEECsddkiMbsmfqo_5yr_ls.exit23.i.i.i.i unwind label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtB4_3pin3PinIB1y_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB3z_13ResponseErrorENtNtB4_6marker4SendEL_EEB6F_EL_EEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i: ; preds = %bb.p, %.body.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtB1y_12control_flow11ControlFlowINtNtB1A_6result6ResultuNtB39_5ErrorEENtNtB1A_6marker4SendEL_EEENtNtB1y_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ag)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtB2e_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB3z_5ErrorEENtNtB4_6marker4SendEL_EEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i unwind label %bb.ah

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtB4_3pin3PinIB1y_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB3z_13ResponseErrorENtNtB4_6marker4SendEL_EEB6F_EL_EEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtB4_3pin3PinIB1y_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB3z_13ResponseErrorENtNtB4_6marker4SendEL_EEB6F_EL_EEECsddkiMbsmfqo_5yr_ls.exit23.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtB1y_12control_flow11ControlFlowINtNtB1A_6result6ResultuNtB39_5ErrorEENtNtB1A_6marker4SendEL_EEENtNtB1y_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ai)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtB2e_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB3z_5ErrorEENtNtB4_6marker4SendEL_EEECsddkiMbsmfqo_5yr_ls.exit26.i.i.i.i unwind label %bb.q

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtB2e_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB3z_5ErrorEENtNtB4_6marker4SendEL_EEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i: ; preds = %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtB4_3pin3PinIB1y_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB3z_13ResponseErrorENtNtB4_6marker4SendEL_EEB6F_EL_EEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i
  %.pn2.i.i.i.i = phi { ptr, i32 } [ %i.ak, %bb.q ], [ %.pn.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtB4_3pin3PinIB1y_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB3z_13ResponseErrorENtNtB4_6marker4SendEL_EEB6F_EL_EEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtBT_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp8AnyEventEEp6OutputINtNtB24_12control_flow11ControlFlowINtNtBT_6result6ResultuNtB3p_5ErrorEENtNtBT_6marker4SendEL_EEENtNtB24_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aj)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp8AnyEventEEp6OutputINtNtB2u_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB3P_5ErrorEENtNtB4_6marker4SendEL_EEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i unwind label %bb.ah

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtB4_3pin3PinIB1y_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB3z_13ResponseErrorENtNtB4_6marker4SendEL_EEB6F_EL_EEECsddkiMbsmfqo_5yr_ls.exit23.i.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtB2e_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB3z_5ErrorEENtNtB4_6marker4SendEL_EEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtB2e_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB3z_5ErrorEENtNtB4_6marker4SendEL_EEECsddkiMbsmfqo_5yr_ls.exit26.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtB4_3pin3PinIB1y_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB3z_13ResponseErrorENtNtB4_6marker4SendEL_EEB6F_EL_EEECsddkiMbsmfqo_5yr_ls.exit23.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 168
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtBT_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp8AnyEventEEp6OutputINtNtB24_12control_flow11ControlFlowINtNtBT_6result6ResultuNtB3p_5ErrorEENtNtBT_6marker4SendEL_EEENtNtB24_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.al)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp8AnyEventEEp6OutputINtNtB2u_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB3P_5ErrorEENtNtB4_6marker4SendEL_EEECsddkiMbsmfqo_5yr_ls.exit29.i.i.i.i unwind label %bb.r

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp8AnyEventEEp6OutputINtNtB2u_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB3P_5ErrorEENtNtB4_6marker4SendEL_EEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i: ; preds = %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtB2e_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB3z_5ErrorEENtNtB4_6marker4SendEL_EEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i
  %.pn4.i.i.i.i = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %.pn2.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtB2e_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB3z_5ErrorEENtNtB4_6marker4SendEL_EEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val11.i.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !225
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.val12.i.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !225, !nonnull !5, !align !6, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2D_13ResponseErrorENtNtB4_6marker4SendEL_EEB5I_EL_EECsddkiMbsmfqo_5yr_ls(ptr %.val11.i.i.i.i, ptr nonnull %.val12.i.i.i.i) #16
          to label %.body30.i.i.i.i unwind label %bb.ah

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtB2e_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB3z_5ErrorEENtNtB4_6marker4SendEL_EEECsddkiMbsmfqo_5yr_ls.exit26.i.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp8AnyEventEEp6OutputINtNtB2u_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB3P_5ErrorEENtNtB4_6marker4SendEL_EEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp8AnyEventEEp6OutputINtNtB2u_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB3P_5ErrorEENtNtB4_6marker4SendEL_EEECsddkiMbsmfqo_5yr_ls.exit29.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtB2e_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB3z_5ErrorEENtNtB4_6marker4SendEL_EEECsddkiMbsmfqo_5yr_ls.exit26.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !225 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.val10.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !225, !nonnull !5, !align !6, !noundef !5 ; 5 uses
  %i.ar = load ptr, ptr %.val10.i.i.i.i, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp8AnyEventEEp6OutputINtNtB2u_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB3P_5ErrorEENtNtB4_6marker4SendEL_EEECsddkiMbsmfqo_5yr_ls.exit29.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.ar(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp8AnyEventEEp6OutputINtNtB2u_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB3P_5ErrorEENtNtB4_6marker4SendEL_EEECsddkiMbsmfqo_5yr_ls.exit29.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val10.i.i.i.i, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !10, !invariant.load !5 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2D_13ResponseErrorENtNtB4_6marker4SendEL_EEB5I_EL_EECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %.val10.i.i.i.i, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !11, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.at, i64 noundef range(i64 1, 536870913) %i.aw) #19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2D_13ResponseErrorENtNtB4_6marker4SendEL_EEB5I_EL_EECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i

bb.v:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val10.i.i.i.i, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !10, !invariant.load !5 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %.body30.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bb = getelementptr inbounds nuw i8, ptr %.val10.i.i.i.i, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !range !11, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.az, i64 noundef range(i64 1, 536870913) %i.bc) #19
  br label %.body30.i.i.i.i

.body30.i.i.i.i:                                  ; preds = %bb.w, %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp8AnyEventEEp6OutputINtNtB2u_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB3P_5ErrorEENtNtB4_6marker4SendEL_EEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i
  %.pn6.i.i.i.i = phi { ptr, i32 } [ %.pn4.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp8AnyEventEEp6OutputINtNtB2u_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB3P_5ErrorEENtNtB4_6marker4SendEL_EEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i ], [ %i.ax, %bb.v ], [ %i.ax, %bb.w ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val15.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !225
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val16.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !225, !nonnull !5, !align !6, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtB1i_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB2D_5ErrorEENtNtB4_6marker4SendEL_EECsddkiMbsmfqo_5yr_ls(ptr %.val15.i.i.i.i, ptr nonnull %.val16.i.i.i.i) #16
          to label %.body33.i.i.i.i unwind label %bb.ah

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2D_13ResponseErrorENtNtB4_6marker4SendEL_EEB5I_EL_EECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i: ; preds = %bb.u, %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val13.i.i.i.i = load ptr, ptr %i.bf, align 8, !alias.scope !225 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val14.i.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !225, !nonnull !5, !align !6, !noundef !5 ; 5 uses
  %i.bh = load ptr, ptr %.val14.i.i.i.i, align 8, !invariant.load !5 ; 2 uses
  %.not.i32.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i32.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2D_13ResponseErrorENtNtB4_6marker4SendEL_EEB5I_EL_EECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i.i.i) ]
  invoke void %i.bh(ptr noundef nonnull %.val13.i.i.i.i)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2D_13ResponseErrorENtNtB4_6marker4SendEL_EEB5I_EL_EECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.val14.i.i.i.i, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !range !10, !invariant.load !5 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtB1i_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB2D_5ErrorEENtNtB4_6marker4SendEL_EECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bl = getelementptr inbounds nuw i8, ptr %.val14.i.i.i.i, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !range !11, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i.i.i.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i.i.i.i, i64 noundef range(i64 1, 0) %i.bj, i64 noundef range(i64 1, 536870913) %i.bm) #19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtB1i_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB2D_5ErrorEENtNtB4_6marker4SendEL_EECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i

bb.aa:                                            ; preds = %bb.x
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val14.i.i.i.i, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !range !10, !invariant.load !5 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.body33.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.br = getelementptr inbounds nuw i8, ptr %.val14.i.i.i.i, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !range !11, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i.i.i.i, i64 noundef range(i64 1, 0) %i.bp, i64 noundef range(i64 1, 536870913) %i.bs) #19
  br label %.body33.i.i.i.i

.body33.i.i.i.i:                                  ; preds = %bb.ab, %bb.aa, %.body30.i.i.i.i
  %.pn8.i.i.i.i = phi { ptr, i32 } [ %.pn6.i.i.i.i, %.body30.i.i.i.i ], [ %i.bn, %bb.aa ], [ %i.bn, %bb.ab ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.val19.i.i.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !225
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val20.i.i.i.i = load ptr, ptr %i.bu, align 8, !alias.scope !225, !nonnull !5, !align !6, !noundef !5
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp8AnyEventEEp6OutputINtNtB1i_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB2D_5ErrorEENtNtB4_6marker4SendEL_EECsddkiMbsmfqo_5yr_ls(ptr %.val19.i.i.i.i, ptr nonnull %.val20.i.i.i.i) #16
          to label %.body.i.i.i unwind label %bb.ah

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtB1i_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB2D_5ErrorEENtNtB4_6marker4SendEL_EECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i: ; preds = %bb.z, %bb.y
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.val17.i.i.i.i = load ptr, ptr %i.bv, align 8, !alias.scope !225 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val18.i.i.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !225, !nonnull !5, !align !6, !noundef !5 ; 5 uses
  %i.bx = load ptr, ptr %.val18.i.i.i.i, align 8, !invariant.load !5 ; 2 uses
  %.not.i35.i.i.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i35.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtB1i_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB2D_5ErrorEENtNtB4_6marker4SendEL_EECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i.i.i.i) ]
  invoke void %i.bx(ptr noundef nonnull %.val17.i.i.i.i)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtB1i_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB2D_5ErrorEENtNtB4_6marker4SendEL_EECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %.val18.i.i.i.i, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !range !10, !invariant.load !5 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6m2LFPinx2P_9async_lsp6router6RouterNtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerEECsddkiMbsmfqo_5yr_ls.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cb = getelementptr inbounds nuw i8, ptr %.val18.i.i.i.i, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !range !11, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17.i.i.i.i) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i.i.i.i, i64 noundef range(i64 1, 0) %i.bz, i64 noundef range(i64 1, 536870913) %i.cc) #19
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6m2LFPinx2P_9async_lsp6router6RouterNtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerEECsddkiMbsmfqo_5yr_ls.exit.i.i.i

bb.af:                                            ; preds = %bb.ac
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val18.i.i.i.i, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !range !10, !invariant.load !5 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %.body.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ch = getelementptr inbounds nuw i8, ptr %.val18.i.i.i.i, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !range !11, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i.i.i.i, i64 noundef range(i64 1, 0) %i.cf, i64 noundef range(i64 1, 536870913) %i.ci) #19
  br label %.body.i.i.i

bb.ah:                                            ; preds = %.body33.i.i.i.i, %.body30.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtB4_3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp8AnyEventEEp6OutputINtNtB2u_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB3P_5ErrorEENtNtB4_6marker4SendEL_EEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtB2e_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB3z_5ErrorEENtNtB4_6marker4SendEL_EEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapReINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtB4_3pin3PinIB1y_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB3z_13ResponseErrorENtNtB4_6marker4SendEL_EEB6F_EL_EEECsddkiMbsmfqo_5yr_ls.exit.i.i.i.i, %.body.i.i.i.i
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

.body.i.i.i:                                      ; preds = %bb.ag, %bb.af, %.body33.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %.pn8.i.i.i.i, %.body33.i.i.i.i ], [ %i.cd, %bb.af ], [ %i.cd, %bb.ag ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !228, !nonnull !5, !noundef !5
  %i.cm = atomicrmw add ptr %i.cl, i64 -1 release, align 8, !noalias !229
  %i.cn = icmp eq i64 %i.cm, 1
  br i1 %i.cn, label %bb.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsljouJN4AMMC_12futures_core4task10___internal12atomic_waker11AtomicWakerEECsddkiMbsmfqo_5yr_ls.exit.i.i.i

bb.ai:                                            ; preds = %.body.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsljouJN4AMMC_12futures_core4task10___internal12atomic_waker11AtomicWakerE9drop_slowCs6m2LFPinx2P_9async_lsp(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ck) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsljouJN4AMMC_12futures_core4task10___internal12atomic_waker11AtomicWakerEECsddkiMbsmfqo_5yr_ls.exit.i.i.i unwind label %bb.al

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6m2LFPinx2P_9async_lsp6router6RouterNtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerEECsddkiMbsmfqo_5yr_ls.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !232, !nonnull !5, !noundef !5
  %i.cq = atomicrmw add ptr %i.cp, i64 -1 release, align 8, !noalias !233
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6m2LFPinx2P_9async_lsp6server9LifecycleINtNtBG_5panic11CatchUnwindINtNtBG_11concurrency11ConcurrencyINtNtBG_6router6RouterNtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerEEEEECsddkiMbsmfqo_5yr_ls.exit

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6m2LFPinx2P_9async_lsp6router6RouterNtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerEECsddkiMbsmfqo_5yr_ls.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsljouJN4AMMC_12futures_core4task10___internal12atomic_waker11AtomicWakerE9drop_slowCs6m2LFPinx2P_9async_lsp(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.co) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6m2LFPinx2P_9async_lsp6server9LifecycleINtNtBG_5panic11CatchUnwindINtNtBG_11concurrency11ConcurrencyINtNtBG_6router6RouterNtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerEEEEECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.ak

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsljouJN4AMMC_12futures_core4task10___internal12atomic_waker11AtomicWakerEECsddkiMbsmfqo_5yr_ls.exit.i.i.i: ; preds = %bb.ak, %bb.ai, %.body.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.cs, %bb.ak ], [ %eh.lpad-body.i.i.i, %bb.ai ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtNtCs9j2PgAuXC7p_12futures_util9abortable11AbortHandleEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtNtCs9j2PgAuXC7p_12futures_util9abortable11AbortHandleEECsddkiMbsmfqo_5yr_ls.exit.i.i.i unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsljouJN4AMMC_12futures_core4task10___internal12atomic_waker11AtomicWakerEECsddkiMbsmfqo_5yr_ls.exit.i.i.i

bb.al:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsljouJN4AMMC_12futures_core4task10___internal12atomic_waker11AtomicWakerEECsddkiMbsmfqo_5yr_ls.exit.i.i.i, %bb.ai
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtNtCs9j2PgAuXC7p_12futures_util9abortable11AbortHandleEECsddkiMbsmfqo_5yr_ls.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsljouJN4AMMC_12futures_core4task10___internal12atomic_waker11AtomicWakerEECsddkiMbsmfqo_5yr_ls.exit.i.i.i
  resume { ptr, i32 } %.pn.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6m2LFPinx2P_9async_lsp6server9LifecycleINtNtBG_5panic11CatchUnwindINtNtBG_11concurrency11ConcurrencyINtNtBG_6router6RouterNtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerEEEEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs6m2LFPinx2P_9async_lsp6router6RouterNtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerEECsddkiMbsmfqo_5yr_ls.exit.i.i.i, %bb.aj
  tail call void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringNtNtCs9j2PgAuXC7p_12futures_util9abortable11AbortHandleEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs5AFert6BSaG_15futures_channel4mpsc17UnboundedReceiverNtCs6m2LFPinx2P_9async_lsp13MainLoopEventEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsE_NtCs5AFert6BSaG_15futures_channel4mpscINtB5_17UnboundedReceiverNtCs6m2LFPinx2P_9async_lsp13MainLoopEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !246, !noundef !5 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs5AFert6BSaG_15futures_channel4mpsc14UnboundedInnerNtCs6m2LFPinx2P_9async_lsp13MainLoopEventEEEECsddkiMbsmfqo_5yr_ls.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !247
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs5AFert6BSaG_15futures_channel4mpsc14UnboundedInnerNtCs6m2LFPinx2P_9async_lsp13MainLoopEventEEEECsddkiMbsmfqo_5yr_ls.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCs5AFert6BSaG_15futures_channel4mpsc14UnboundedInnerNtCs6m2LFPinx2P_9async_lsp13MainLoopEventEE9drop_slowB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs5AFert6BSaG_15futures_channel4mpsc14UnboundedInnerNtCs6m2LFPinx2P_9async_lsp13MainLoopEventEEEECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.f = load ptr, ptr %0, align 8, !alias.scope !248, !noundef !5 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs5AFert6BSaG_15futures_channel4mpsc14UnboundedInnerNtCs6m2LFPinx2P_9async_lsp13MainLoopEventEEEECsddkiMbsmfqo_5yr_ls.exit1, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = atomicrmw add ptr %i.f, i64 -1 release, align 8, !noalias !249
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs5AFert6BSaG_15futures_channel4mpsc14UnboundedInnerNtCs6m2LFPinx2P_9async_lsp13MainLoopEventEEEECsddkiMbsmfqo_5yr_ls.exit1

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCs5AFert6BSaG_15futures_channel4mpsc14UnboundedInnerNtCs6m2LFPinx2P_9async_lsp13MainLoopEventEE9drop_slowB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs5AFert6BSaG_15futures_channel4mpsc14UnboundedInnerNtCs6m2LFPinx2P_9async_lsp13MainLoopEventEEEECsddkiMbsmfqo_5yr_ls.exit1

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs5AFert6BSaG_15futures_channel4mpsc14UnboundedInnerNtCs6m2LFPinx2P_9async_lsp13MainLoopEventEEEECsddkiMbsmfqo_5yr_ls.exit1: ; preds = %bb.e, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs5AFert6BSaG_15futures_channel4mpsc14UnboundedInnerNtCs6m2LFPinx2P_9async_lsp13MainLoopEventEEEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.c, %bb.b, %bb.d
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs5AFert6BSaG_15futures_channel7oneshot6SenderNtCs6m2LFPinx2P_9async_lsp11AnyResponseEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs2_NtCs5AFert6BSaG_15futures_channel7oneshotINtB5_6SenderNtCs6m2LFPinx2P_9async_lsp11AnyResponseENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !260, !nonnull !5, !noundef !5
  %i.c = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !260
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs5AFert6BSaG_15futures_channel7oneshot5InnerNtCs6m2LFPinx2P_9async_lsp11AnyResponseEEECsddkiMbsmfqo_5yr_ls.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCs5AFert6BSaG_15futures_channel7oneshot5InnerNtCs6m2LFPinx2P_9async_lsp11AnyResponseEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs5AFert6BSaG_15futures_channel7oneshot5InnerNtCs6m2LFPinx2P_9async_lsp11AnyResponseEEECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !263, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !noalias !263
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs5AFert6BSaG_15futures_channel7oneshot5InnerNtCs6m2LFPinx2P_9async_lsp11AnyResponseEEECsddkiMbsmfqo_5yr_ls.exit1

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCs5AFert6BSaG_15futures_channel7oneshot5InnerNtCs6m2LFPinx2P_9async_lsp11AnyResponseEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs5AFert6BSaG_15futures_channel7oneshot5InnerNtCs6m2LFPinx2P_9async_lsp11AnyResponseEEECsddkiMbsmfqo_5yr_ls.exit1

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs5AFert6BSaG_15futures_channel7oneshot5InnerNtCs6m2LFPinx2P_9async_lsp11AnyResponseEEECsddkiMbsmfqo_5yr_ls.exit1: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs5AFert6BSaG_15futures_channel7oneshot5InnerNtCs6m2LFPinx2P_9async_lsp11AnyResponseEEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtCs907JfTDu8Xv_8indexmap6BucketNtNtBG_6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs907JfTDu8Xv_8indexmap6BucketNtNtB7_6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs907JfTDu8Xv_8indexmap6BucketNtNtB7_6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtCs907JfTDu8Xv_8indexmap6BucketNtNtBG_6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEEECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs907JfTDu8Xv_8indexmap6BucketNtNtB7_6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtCs907JfTDu8Xv_8indexmap6BucketNtNtBG_6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2D_13ResponseErrorENtNtB4_6marker4SendEL_EEB5I_EL_EECsddkiMbsmfqo_5yr_ls(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !10, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtBR_3pin3PinIBy_DNtNtNtBR_6future6future6Futurep6OutputINtNtBR_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2q_13ResponseErrorENtNtBR_6marker4SendEL_EEB5v_EL_ENtNtBP_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !11, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #19
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtBR_3pin3PinIBy_DNtNtNtBR_6future6future6Futurep6OutputINtNtBR_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2q_13ResponseErrorENtNtBR_6marker4SendEL_EEB5v_EL_ENtNtBP_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtBR_3pin3PinIBy_DNtNtNtBR_6future6future6Futurep6OutputINtNtBR_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2q_13ResponseErrorENtNtBR_6marker4SendEL_EEB5v_EL_ENtNtBP_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtBR_3pin3PinIBy_DNtNtNtBR_6future6future6Futurep6OutputINtNtBR_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2q_13ResponseErrorENtNtBR_6marker4SendEL_EEB5v_EL_ENtNtBP_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !11, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #19
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtBR_3pin3PinIBy_DNtNtNtBR_6future6future6Futurep6OutputINtNtBR_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2q_13ResponseErrorENtNtBR_6marker4SendEL_EEB5v_EL_ENtNtBP_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit4

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp10AnyRequestEEp6OutputINtNtBR_3pin3PinIBy_DNtNtNtBR_6future6future6Futurep6OutputINtNtBR_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB2q_13ResponseErrorENtNtBR_6marker4SendEL_EEB5v_EL_ENtNtBP_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtB1i_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB2D_5ErrorEENtNtB4_6marker4SendEL_EECsddkiMbsmfqo_5yr_ls(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !10, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtBP_12control_flow11ControlFlowINtNtBR_6result6ResultuNtB2q_5ErrorEENtNtBR_6marker4SendEL_ENtNtBP_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !11, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #19
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtBP_12control_flow11ControlFlowINtNtBR_6result6ResultuNtB2q_5ErrorEENtNtBR_6marker4SendEL_ENtNtBP_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtBP_12control_flow11ControlFlowINtNtBR_6result6ResultuNtB2q_5ErrorEENtNtBR_6marker4SendEL_ENtNtBP_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtBP_12control_flow11ControlFlowINtNtBR_6result6ResultuNtB2q_5ErrorEENtNtBR_6marker4SendEL_ENtNtBP_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !11, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #19
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtBP_12control_flow11ControlFlowINtNtBR_6result6ResultuNtB2q_5ErrorEENtNtBR_6marker4SendEL_ENtNtBP_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit4

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp15AnyNotificationEEp6OutputINtNtBP_12control_flow11ControlFlowINtNtBR_6result6ResultuNtB2q_5ErrorEENtNtBR_6marker4SendEL_ENtNtBP_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDG_INtNtNtB4_3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp8AnyEventEEp6OutputINtNtB1i_12control_flow11ControlFlowINtNtB4_6result6ResultuNtB2D_5ErrorEENtNtB4_6marker4SendEL_EECsddkiMbsmfqo_5yr_ls(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !10, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp8AnyEventEEp6OutputINtNtBP_12control_flow11ControlFlowINtNtBR_6result6ResultuNtB2q_5ErrorEENtNtBR_6marker4SendEL_ENtNtBP_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !11, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #19
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp8AnyEventEEp6OutputINtNtBP_12control_flow11ControlFlowINtNtBR_6result6ResultuNtB2q_5ErrorEENtNtBR_6marker4SendEL_ENtNtBP_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp8AnyEventEEp6OutputINtNtBP_12control_flow11ControlFlowINtNtBR_6result6ResultuNtB2q_5ErrorEENtNtBR_6marker4SendEL_ENtNtBP_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !10, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp8AnyEventEEp6OutputINtNtBP_12control_flow11ControlFlowINtNtBR_6result6ResultuNtB2q_5ErrorEENtNtBR_6marker4SendEL_ENtNtBP_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !11, !invariant.load !5
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #19
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp8AnyEventEEp6OutputINtNtBP_12control_flow11ControlFlowINtNtBR_6result6ResultuNtB2q_5ErrorEENtNtBR_6marker4SendEL_ENtNtBP_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit4

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTQL0_NtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerNtCs6m2LFPinx2P_9async_lsp8AnyEventEEp6OutputINtNtBP_12control_flow11ControlFlowINtNtBR_6result6ResultuNtB2q_5ErrorEENtNtBR_6marker4SendEL_ENtNtBP_4drop4Drop4dropCsddkiMbsmfqo_5yr_ls.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler14current_thread4CoreEECsddkiMbsmfqo_5yr_ls(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 64 ; 3 uses
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtNtCsyyk5FTAJKf_5tokio7runtime4task8NotifiedINtNtB9_4sync3ArcNtNtNtB1a_9scheduler14current_thread6HandleEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsyyk5FTAJKf_5tokio7runtime4task8NotifiedINtNtB7_4sync3ArcNtNtNtBR_9scheduler14current_thread6HandleEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCsyyk5FTAJKf_5tokio7runtime4task8NotifiedINtNtB7_4sync3ArcNtNtNtBR_9scheduler14current_thread6HandleEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtNtCsyyk5FTAJKf_5tokio7runtime4task8NotifiedINtNtBI_4sync3ArcNtNtNtB1D_9scheduler14current_thread6HandleEEEECsddkiMbsmfqo_5yr_ls.exit.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsyyk5FTAJKf_5tokio7runtime6driver6DriverEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %.0.val) #16
          to label %bb.h unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtNtCsyyk5FTAJKf_5tokio7runtime4task8NotifiedINtNtBI_4sync3ArcNtNtNtB1D_9scheduler14current_thread6HandleEEEECsddkiMbsmfqo_5yr_ls.exit.i: ; preds = %bb.c
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsyyk5FTAJKf_5tokio7runtime6driver6DriverEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %.0.val)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler14current_thread4CoreECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.g

bb.f:                                             ; preds = %.body.i
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.g:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtNtCsyyk5FTAJKf_5tokio7runtime4task8NotifiedINtNtBI_4sync3ArcNtNtNtB1D_9scheduler14current_thread6HandleEEEECsddkiMbsmfqo_5yr_ls.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsyyk5FTAJKf_5tokio7runtime9scheduler14current_thread4CoreECsddkiMbsmfqo_5yr_ls.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtNtCsyyk5FTAJKf_5tokio7runtime4task8NotifiedINtNtBI_4sync3ArcNtNtNtB1D_9scheduler14current_thread6HandleEEEECsddkiMbsmfqo_5yr_ls.exit.i
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 152, i64 noundef 8) #19
  ret void

bb.h:                                             ; preds = %bb.g, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.g ], [ %eh.lpad-body.i, %.body.i ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 152, i64 noundef 8) #19
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp10AnyRequestECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !8, !alias.scope !266, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringECsddkiMbsmfqo_5yr_ls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #16
          to label %.body2 unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringECsddkiMbsmfqo_5yr_ls.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body2 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringECsddkiMbsmfqo_5yr_ls.exit
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.h

.body2:                                           ; preds = %bb.h, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.j, %bb.h ], [ %i.g, %bb.f ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i) #16
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(72) %i.k)
  ret void

bb.i:                                             ; preds = %.body2, %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.j:                                             ; preds = %.body2
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp10PeerSocketECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !281, !noundef !5
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs5AFert6BSaG_15futures_channel4mpsc15UnboundedSenderNtCs6m2LFPinx2P_9async_lsp13MainLoopEventEECsddkiMbsmfqo_5yr_ls.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsn_NtCs5AFert6BSaG_15futures_channel4mpscINtB5_20UnboundedSenderInnerNtCs6m2LFPinx2P_9async_lsp13MainLoopEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !284, !nonnull !5, !noundef !5
  %i.e = atomicrmw add ptr %i.d, i64 -1 release, align 8, !noalias !285
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs5AFert6BSaG_15futures_channel4mpsc14UnboundedInnerNtCs6m2LFPinx2P_9async_lsp13MainLoopEventEEECsddkiMbsmfqo_5yr_ls.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCs5AFert6BSaG_15futures_channel4mpsc14UnboundedInnerNtCs6m2LFPinx2P_9async_lsp13MainLoopEventEE9drop_slowB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCs5AFert6BSaG_15futures_channel4mpsc14UnboundedInnerNtCs6m2LFPinx2P_9async_lsp13MainLoopEventEEECsddkiMbsmfqo_5yr_ls.exit.i.i.i unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.g = load ptr, ptr %0, align 8, !alias.scope !288, !nonnull !5, !noundef !5
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !289
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs5AFert6BSaG_15futures_channel4mpsc15UnboundedSenderNtCs6m2LFPinx2P_9async_lsp13MainLoopEventEECsddkiMbsmfqo_5yr_ls.exit
end_hunk_0
begin_hunk_1_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentECsddkiMbsmfqo_5yr_ls:bb.a
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.j ], [ %i.c, %bb.c ], [ %i.f, %bb.g ], [ %i.r, %bb.q ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentB19_EEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentBN_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentEECsddkiMbsmfqo_5yr_ls.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentEECsddkiMbsmfqo_5yr_ls.exit3, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentEECsddkiMbsmfqo_5yr_ls.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentB19_EEECsddkiMbsmfqo_5yr_ls.exit, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.f:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %bb.e

bb.i:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %bb.e

bb.l:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !321, !nonnull !5, !noundef !5 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentEECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.m, !noalias !321, !inline_history !317

bb.m:                                             ; preds = %bb.l
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.l
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 32, i64 noundef 8) #19, !noalias !321
  br label %bb.e

bb.n:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !322, !nonnull !5, !noundef !5 ; 3 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentEECsddkiMbsmfqo_5yr_ls.exit3 unwind label %bb.o, !noalias !322, !inline_history !317

bb.o:                                             ; preds = %bb.n
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentEECsddkiMbsmfqo_5yr_ls.exit3: ; preds = %bb.n
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef 32, i64 noundef 8) #19, !noalias !322
  br label %bb.e

bb.p:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentEECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.p
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvXNvCs6m2LFPinx2P_9async_lsp1__NtB5_9ErrorCodeNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeQINtNtCsbbTh99npV2h_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 9 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %.val1 = load i32, ptr %0, align 4, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.b = icmp sgt i32 %.val1, -1
  %.sroa.0.0.i.i.i.i.i = tail call i32 @llvm.abs.i32(i32 %.val1, i1 false) ; 3 uses
  %i.c = icmp ugt i32 %.sroa.0.0.i.i.i.i.i, 9999
  br i1 %i.c, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.sroa.09.0.lcssa.i.i.i.i.i = phi i64 [ 11, %bb.a ], [ %i.m, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i.i, %bb.a ], [ %i.f, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.d = icmp samesign ugt i32 %.sroa.0.1.lcssa.i.i.i.i.i, 99
  br i1 %i.d, label %bb.b, label %bb.c

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.sroa.0.129.i.i.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %bb.a ] ; 3 uses
  %.sroa.09.028.i.i.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i.i.i ], [ 11, %bb.a ] ; 2 uses
  %i.e = urem i32 %.sroa.0.129.i.i.i.i.i, 10000
  %i.f = udiv i32 %.sroa.0.129.i.i.i.i.i, 10000   ; 2 uses
  %.lhs.trunc.i.i.i.i.i = trunc nuw nsw i32 %i.e to i16 ; 2 uses
  %i.g = udiv i16 %.lhs.trunc.i.i.i.i.i, 100
  %i.h = shl nuw nsw i16 %i.g, 1
  %i.i = zext nneg i16 %i.h to i64
  %i.j = urem i16 %.lhs.trunc.i.i.i.i.i, 100
  %i.k = shl nuw nsw i16 %i.j, 1
  %i.l = zext nneg i16 %i.k to i64
  %i.m = add i64 %.sroa.09.028.i.i.i.i.i, -4      ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr @39, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.m
  %i.p = load i16, ptr %i.n, align 1, !noalias !325
  store i16 %i.p, ptr %i.o, align 1, !alias.scope !325
  %i.q = getelementptr inbounds nuw i8, ptr @39, i64 %i.l
  %i.r = getelementptr i8, ptr %i.a, i64 %.sroa.09.028.i.i.i.i.i
  %i.s = getelementptr i8, ptr %i.r, i64 -2
  %i.t = load i16, ptr %i.q, align 1, !noalias !325
  store i16 %i.t, ptr %i.s, align 1, !alias.scope !325
  %i.u = icmp ugt i32 %.sroa.0.129.i.i.i.i.i, 99999999
  br i1 %i.u, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.lhs.trunc24.i.i.i.i.i = trunc nuw i32 %.sroa.0.1.lcssa.i.i.i.i.i to i16 ; 2 uses
  %i.v = urem i16 %.lhs.trunc24.i.i.i.i.i, 100
  %i.w = shl nuw nsw i16 %i.v, 1
  %i.x = zext nneg i16 %i.w to i64
  %i.y = udiv i16 %.lhs.trunc24.i.i.i.i.i, 100
  %.zext27.i.i.i.i.i = zext nneg i16 %i.y to i32
  %i.z = add i64 %.sroa.09.0.lcssa.i.i.i.i.i, -2  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr @39, i64 %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.z
  %i.ac = load i16, ptr %i.aa, align 1, !noalias !325
  store i16 %i.ac, ptr %i.ab, align 1, !alias.scope !325
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i.i.i
  %.sroa.09.1.i.i.i.i.i = phi i64 [ %i.z, %bb.b ], [ %.sroa.09.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i = phi i32 [ %.zext27.i.i.i.i.i, %bb.b ], [ %.sroa.0.1.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ad = icmp samesign ult i32 %.sroa.0.2.i.i.i.i.i, 10
  br i1 %i.ad, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = shl nuw nsw i32 %.sroa.0.2.i.i.i.i.i, 1
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = add i64 %.sroa.09.1.i.i.i.i.i, -2       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr @39, i64 %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ag
  %i.aj = load i16, ptr %i.ah, align 1, !noalias !325
  store i16 %i.aj, ptr %i.ai, align 1, !alias.scope !325
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ak = add i64 %.sroa.09.1.i.i.i.i.i, -1       ; 2 uses
  %i.al = trunc nuw nsw i32 %.sroa.0.2.i.i.i.i.i to i8
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ak
  %i.an = or disjoint i8 %i.al, 48
  store i8 %i.an, ptr %i.am, align 1, !alias.scope !325
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.09.2.i.i.i.i.i = phi i64 [ %i.ak, %bb.e ], [ %i.ag, %bb.d ] ; 2 uses
  br i1 %i.b, label %_RINvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB6_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer24serialize_newtype_structlECsddkiMbsmfqo_5yr_ls.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = add i64 %.sroa.09.2.i.i.i.i.i, -1       ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ao
  store i8 45, ptr %i.ap, align 1, !alias.scope !325
  br label %_RINvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB6_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer24serialize_newtype_structlECsddkiMbsmfqo_5yr_ls.exit

_RINvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB6_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer24serialize_newtype_structlECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.f, %bb.g
  %.sroa.09.3.i.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i.i.i, %bb.f ], [ %i.ao, %bb.g ] ; 2 uses
  %i.aq = sub i64 11, %.sroa.09.3.i.i.i.i.i       ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.3.i.i.i.i.i
  %i.as = icmp ult i64 %i.aq, 12
  tail call void @llvm.assume(i1 %i.as)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef range(i64 0, -9223372036854775808) %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvCs6m2LFPinx2P_9async_lsps0_1__INtB5_10RawMessageRNtB5_7MessageENtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeQINtNtCsbbTh99npV2h_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !343, !nonnull !5, !align !6, !noundef !5
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !344
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i8 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = call noundef align 8 ptr @_RINvYINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap15serialize_entryeNtCs6m2LFPinx2P_9async_lsp10RpcVersionECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f) ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %_RNvXs6_NtCsbbTh99npV2h_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap3endCsddkiMbsmfqo_5yr_ls.exit

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.h = load i64, ptr %.val, align 8, !range !346, !alias.scope !345, !noalias !347, !noundef !5 ; 2 uses
  %i.i = icmp ne i64 %i.h, -9223372036854775807
  call void @llvm.assume(i1 %i.i)
  %i.j = xor i64 %i.h, -9223372036854775808       ; 2 uses
  %i.k = icmp ult i64 %i.j, 3
  %i.l = select i1 %i.k, i64 %i.j, i64 1
  switch i64 %i.l, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.i
    i64 2, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !349
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !12, !alias.scope !350, !noalias !347, !noundef !5
  %i.o = icmp eq i64 %i.n, -9223372036854775808
  store ptr %i.d, ptr %i.c, align 8, !noalias !349
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.q = call noundef align 8 ptr @_RINvXs6_NtNtCsbgTeJz5vL0a_5serde7private3serINtB6_22FlatMapSerializeStructINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1d_16CompactFormatterEENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.e, label %_RINvXNvCs6m2LFPinx2P_9async_lsps6_1__NtB5_10AnyRequestNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2H_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.s = call noundef align 8 ptr @_RINvXs6_NtNtCsbgTeJz5vL0a_5serde7private3serINtB6_22FlatMapSerializeStructINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1d_16CompactFormatterEENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldNtNtB1Y_6string6StringECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.r) ; 2 uses
  %.not21.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not21.i.i.i, label %bb.f, label %_RINvXNvCs6m2LFPinx2P_9async_lsps6_1__NtB5_10AnyRequestNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2H_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

bb.f:                                             ; preds = %bb.e
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = call noundef align 8 ptr @_RINvXs6_NtNtCsbgTeJz5vL0a_5serde7private3serINtB6_22FlatMapSerializeStructINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1d_16CompactFormatterEENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldNtNtB1f_5value5ValueECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.m) ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not22.i.i.i, label %bb.h, label %_RINvXNvCs6m2LFPinx2P_9async_lsps6_1__NtB5_10AnyRequestNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2H_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %_RINvXNvCs6m2LFPinx2P_9async_lsps6_1__NtB5_10AnyRequestNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2H_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

_RINvXNvCs6m2LFPinx2P_9async_lsps6_1__NtB5_10AnyRequestNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2H_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i: ; preds = %bb.h, %bb.g, %bb.e, %bb.d
  %.sroa.0.0.i.i.i = phi ptr [ null, %bb.h ], [ %i.s, %bb.e ], [ %i.q, %bb.d ], [ %i.t, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !349
  br label %_RINvXs1J_NtNtCsaeRQ2XwCvzm_10serde_core3ser5implsRNtCs6m2LFPinx2P_9async_lsp7MessageNtB9_9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit

bb.i:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !351)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !352
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !range !9, !alias.scope !353, !noalias !347, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !range !8, !alias.scope !353, !noalias !347, !noundef !5
  %.not25.i.i.i = icmp eq i64 %i.x, -1
  store ptr %i.d, ptr %i.b, align 8, !noalias !352
  %i.y = call noundef align 8 ptr @_RINvXs6_NtNtCsbgTeJz5vL0a_5serde7private3serINtB6_22FlatMapSerializeStructINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1d_16CompactFormatterEENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %.val) ; 2 uses
  %.not26.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not26.i.i.i, label %bb.j, label %_RINvXNvCs6m2LFPinx2P_9async_lspsa_1__NtB5_11AnyResponseNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

bb.j:                                             ; preds = %bb.i
  %.not.i2.i.i = icmp eq i64 %i.v, -1
  br i1 %.not.i2.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = call noundef align 8 ptr @_RINvXs6_NtNtCsbgTeJz5vL0a_5serde7private3serINtB6_22FlatMapSerializeStructINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1d_16CompactFormatterEENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtB1f_5value5ValueEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.u) ; 2 uses
  %.not28.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not28.i.i.i, label %bb.l, label %_RINvXNvCs6m2LFPinx2P_9async_lspsa_1__NtB5_11AnyResponseNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.not25.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = call noundef align 8 ptr @_RINvXs6_NtNtCsbgTeJz5vL0a_5serde7private3serINtB6_22FlatMapSerializeStructINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1d_16CompactFormatterEENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtCs6m2LFPinx2P_9async_lsp13ResponseErrorEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.w) ; 2 uses
  %.not30.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not30.i.i.i, label %bb.n, label %_RINvXNvCs6m2LFPinx2P_9async_lspsa_1__NtB5_11AnyResponseNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %_RINvXNvCs6m2LFPinx2P_9async_lspsa_1__NtB5_11AnyResponseNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

_RINvXNvCs6m2LFPinx2P_9async_lspsa_1__NtB5_11AnyResponseNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i: ; preds = %bb.n, %bb.m, %bb.k, %bb.i
  %.sroa.0.0.i1.i.i = phi ptr [ null, %bb.n ], [ %i.y, %bb.i ], [ %i.z, %bb.k ], [ %i.aa, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !352
  br label %_RINvXs1J_NtNtCsaeRQ2XwCvzm_10serde_core3ser5implsRNtCs6m2LFPinx2P_9async_lsp7MessageNtB9_9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit

bb.o:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !355
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !12, !alias.scope !356, !noalias !347, !noundef !5
  store ptr %i.d, ptr %i.a, align 8, !noalias !355
  %i.ae = call noundef align 8 ptr @_RINvXs6_NtNtCsbgTeJz5vL0a_5serde7private3serINtB6_22FlatMapSerializeStructINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1d_16CompactFormatterEENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldNtNtB1Y_6string6StringECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ab) ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i3.i.i, label %bb.p, label %_RINvXNvCs6m2LFPinx2P_9async_lsps8_1__NtB5_15AnyNotificationNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2M_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.af = icmp eq i64 %i.ad, -9223372036854775808
  br i1 %i.af, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = call noundef align 8 ptr @_RINvXs6_NtNtCsbgTeJz5vL0a_5serde7private3serINtB6_22FlatMapSerializeStructINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB1d_16CompactFormatterEENtNtCsaeRQ2XwCvzm_10serde_core3ser15SerializeStruct15serialize_fieldNtNtB1f_5value5ValueECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ac) ; 2 uses
  %.not18.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not18.i.i.i, label %bb.r, label %_RINvXNvCs6m2LFPinx2P_9async_lsps8_1__NtB5_15AnyNotificationNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2M_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

bb.r:                                             ; preds = %bb.q, %bb.p
  br label %_RINvXNvCs6m2LFPinx2P_9async_lsps8_1__NtB5_15AnyNotificationNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2M_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i

_RINvXNvCs6m2LFPinx2P_9async_lsps8_1__NtB5_15AnyNotificationNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2M_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i: ; preds = %bb.r, %bb.q, %bb.o
  %.sroa.0.0.i4.i.i = phi ptr [ null, %bb.r ], [ %i.ae, %bb.o ], [ %i.ag, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !355
  br label %_RINvXs1J_NtNtCsaeRQ2XwCvzm_10serde_core3ser5implsRNtCs6m2LFPinx2P_9async_lsp7MessageNtB9_9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit

_RINvXs1J_NtNtCsaeRQ2XwCvzm_10serde_core3ser5implsRNtCs6m2LFPinx2P_9async_lsp7MessageNtB9_9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %_RINvXNvCs6m2LFPinx2P_9async_lsps6_1__NtB5_10AnyRequestNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2H_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i, %_RINvXNvCs6m2LFPinx2P_9async_lspsa_1__NtB5_11AnyResponseNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i, %_RINvXNvCs6m2LFPinx2P_9async_lsps8_1__NtB5_15AnyNotificationNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2M_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.i.i.i, %_RINvXNvCs6m2LFPinx2P_9async_lsps6_1__NtB5_10AnyRequestNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2H_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i ], [ %.sroa.0.0.i1.i.i, %_RINvXNvCs6m2LFPinx2P_9async_lspsa_1__NtB5_11AnyResponseNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i ], [ %.sroa.0.0.i4.i.i, %_RINvXNvCs6m2LFPinx2P_9async_lsps8_1__NtB5_15AnyNotificationNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2M_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit.i.i ] ; 2 uses
  %.not10 = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not10, label %bb.s, label %_RNvXs6_NtCsbbTh99npV2h_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap3endCsddkiMbsmfqo_5yr_ls.exit

bb.s:                                             ; preds = %_RINvXs1J_NtNtCsaeRQ2XwCvzm_10serde_core3ser5implsRNtCs6m2LFPinx2P_9async_lsp7MessageNtB9_9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit
  %i.ah = load i8, ptr %i.e, align 8, !range !13, !noundef !5
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %_RNvXs6_NtCsbbTh99npV2h_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap3endCsddkiMbsmfqo_5yr_ls.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6, !noundef !5
  %.val11 = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef range(i64 0, -9223372036854775808) 1)
  br label %_RNvXs6_NtCsbbTh99npV2h_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap3endCsddkiMbsmfqo_5yr_ls.exit

_RNvXs6_NtCsbbTh99npV2h_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCsaeRQ2XwCvzm_10serde_core3ser12SerializeMap3endCsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.t, %bb.s, %bb.a, %_RINvXs1J_NtNtCsaeRQ2XwCvzm_10serde_core3ser5implsRNtCs6m2LFPinx2P_9async_lsp7MessageNtB9_9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit
  %.sroa.0.0 = phi ptr [ %i.g, %bb.a ], [ %.sroa.0.0.i.i, %_RINvXs1J_NtNtCsaeRQ2XwCvzm_10serde_core3ser5implsRNtCs6m2LFPinx2P_9async_lsp7MessageNtB9_9Serialize9serializeINtNtNtCsbgTeJz5vL0a_5serde7private3ser17FlatMapSerializerINtNtCsbbTh99npV2h_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2I_16CompactFormatterEEECsddkiMbsmfqo_5yr_ls.exit ], [ null, %bb.s ], [ null, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvCs6m2LFPinx2P_9async_lsps1_1__INtB5_10RawMessageNtB5_7MessageENtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeQINtNtCsbbTh99npV2h_10serde_json2de12DeserializerNtNtB28_4read9SliceReadEECsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer15deserialize_mapINtNvXNvCs6m2LFPinx2P_9async_lsps1_1__INtB2t_10RawMessagepENtB1l_11Deserialize11deserialize9___VisitorNtB2t_7MessageEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvCs6m2LFPinx2P_9async_lsps2_1__NtB5_10RpcVersionNtNtCsaeRQ2XwCvzm_10serde_core3ser9Serialize9serializeQINtNtCsbbTh99npV2h_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = tail call noundef ptr @_RINvNtCsbbTh99npV2h_10serde_json3ser18format_escaped_strQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 3) ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer22serialize_unit_variantCsddkiMbsmfqo_5yr_ls.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsbbTh99npV2h_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.b)
  br label %_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer22serialize_unit_variantCsddkiMbsmfqo_5yr_ls.exit

_RNvXs1_NtCsbbTh99npV2h_10serde_json3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCsaeRQ2XwCvzm_10serde_core3ser10Serializer22serialize_unit_variantCsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvCs6m2LFPinx2P_9async_lsps3_1__NtB5_10RpcVersionNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeQINtNtCsbbTh99npV2h_10serde_json2de12DeserializerNtNtB1T_4read9SliceReadEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !363
  call void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
  %i.h = load i8, ptr %i.g, align 8, !range !7, !noalias !363, !noundef !5
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !363, !nonnull !5, !align !6, !noundef !5
  br label %_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer16deserialize_enumNtNvXNvCs6m2LFPinx2P_9async_lsps3_1__NtB2t_10RpcVersionNtB1l_11Deserialize11deserialize9___VisitorECsddkiMbsmfqo_5yr_ls.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !7, !noalias !363, !noundef !5
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.d, label %bb.e, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.p = load i8, ptr %i.o, align 2, !noalias !363
  switch i8 %i.p, label %bb.f [
    i8 123, label %bb.g
    i8 34, label %bb.h
  ], !prof !15

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !363
  store i64 5, ptr %i.a, align 8, !noalias !363
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !363
  br label %_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer16deserialize_enumNtNvXNvCs6m2LFPinx2P_9async_lsps3_1__NtB2t_10RpcVersionNtB1l_11Deserialize11deserialize9___VisitorECsddkiMbsmfqo_5yr_ls.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !363
  store i64 10, ptr %i.b, align 8, !noalias !363
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !363
  br label %_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer16deserialize_enumNtNvXNvCs6m2LFPinx2P_9async_lsps3_1__NtB2t_10RpcVersionNtB1l_11Deserialize11deserialize9___VisitorECsddkiMbsmfqo_5yr_ls.exit

bb.g:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.t = load i8, ptr %i.s, align 8, !alias.scope !363, !noundef !5
  %i.u = add i8 %i.t, -1                          ; 2 uses
  store i8 %i.u, ptr %i.s, align 8, !alias.scope !363
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.i, label %bb.j, !prof !16

bb.h:                                             ; preds = %bb.d
  %i.w = call { i64, ptr } @_RINvXse_NtCsbbTh99npV2h_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read9SliceReadENtNtCsaeRQ2XwCvzm_10serde_core2de10EnumAccess12variant_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvCs6m2LFPinx2P_9async_lsps3_1__NtB39_10RpcVersionNtB1p_11Deserialize11deserialize7___FieldEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.x = extractvalue { i64, ptr } %i.w, 0
  %i.y = extractvalue { i64, ptr } %i.w, 1        ; 2 uses
  %1 = trunc nuw i64 %i.x to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %..i.i = select i1 %1, ptr %i.y, ptr null
  br label %_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer16deserialize_enumNtNvXNvCs6m2LFPinx2P_9async_lsps3_1__NtB2t_10RpcVersionNtB1l_11Deserialize11deserialize9___VisitorECsddkiMbsmfqo_5yr_ls.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !363
  store i64 24, ptr %i.f, align 8, !noalias !363
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !363
  br label %_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer16deserialize_enumNtNvXNvCs6m2LFPinx2P_9async_lsps3_1__NtB2t_10RpcVersionNtB1l_11Deserialize11deserialize9___VisitorECsddkiMbsmfqo_5yr_ls.exit

bb.j:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !364, !noundef !5
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !alias.scope !364
  %i.ad = call { i64, ptr } @_RINvXsb_NtCsbbTh99npV2h_10serde_json2deINtB6_13VariantAccessNtNtB8_4read9SliceReadENtNtCsaeRQ2XwCvzm_10serde_core2de10EnumAccess12variant_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvCs6m2LFPinx2P_9async_lsps3_1__NtB35_10RpcVersionNtB1l_11Deserialize11deserialize7___FieldEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1      ; 3 uses
  %2 = trunc nuw i64 %i.ae to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  br i1 %2, label %_RINvXs0_NvXNvCs6m2LFPinx2P_9async_lsps3_1__NtBb_10RpcVersionNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBY_7Visitor10visit_enumINtNtCsbbTh99npV2h_10serde_json2de13VariantAccessNtNtB2D_4read9SliceReadEECsddkiMbsmfqo_5yr_ls.exit.thread.i, label %_RINvXs0_NvXNvCs6m2LFPinx2P_9async_lsps3_1__NtBb_10RpcVersionNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBY_7Visitor10visit_enumINtNtCsbbTh99npV2h_10serde_json2de13VariantAccessNtNtB2D_4read9SliceReadEECsddkiMbsmfqo_5yr_ls.exit.i

_RINvXs0_NvXNvCs6m2LFPinx2P_9async_lsps3_1__NtBb_10RpcVersionNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBY_7Visitor10visit_enumINtNtCsbbTh99npV2h_10serde_json2de13VariantAccessNtNtB2D_4read9SliceReadEECsddkiMbsmfqo_5yr_ls.exit.thread.i: ; preds = %bb.j
  %i.ag = load i8, ptr %i.s, align 8, !alias.scope !363, !noundef !5
  %i.ah = add i8 %i.ag, 1
  store i8 %i.ah, ptr %i.s, align 8, !alias.scope !363
  br label %_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer16deserialize_enumNtNvXNvCs6m2LFPinx2P_9async_lsps3_1__NtB2t_10RpcVersionNtB1l_11Deserialize11deserialize9___VisitorECsddkiMbsmfqo_5yr_ls.exit

_RINvXs0_NvXNvCs6m2LFPinx2P_9async_lsps3_1__NtBb_10RpcVersionNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBY_7Visitor10visit_enumINtNtCsbbTh99npV2h_10serde_json2de13VariantAccessNtNtB2D_4read9SliceReadEECsddkiMbsmfqo_5yr_ls.exit.i: ; preds = %bb.j
  %i.ai = call noundef align 8 ptr @_RNvXsc_NtCsbbTh99npV2h_10serde_json2deINtB5_13VariantAccessNtNtB7_4read9SliceReadENtNtCsaeRQ2XwCvzm_10serde_core2de13VariantAccess12unit_variantCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.af) ; 2 uses
  %i.aj = load i8, ptr %i.s, align 8, !alias.scope !363, !noundef !5
  %i.ak = add i8 %i.aj, 1
  store i8 %i.ak, ptr %i.s, align 8, !alias.scope !363
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %bb.k, label %_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer16deserialize_enumNtNvXNvCs6m2LFPinx2P_9async_lsps3_1__NtB2t_10RpcVersionNtB1l_11Deserialize11deserialize9___VisitorECsddkiMbsmfqo_5yr_ls.exit

bb.k:                                             ; preds = %_RINvXs0_NvXNvCs6m2LFPinx2P_9async_lsps3_1__NtBb_10RpcVersionNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBY_7Visitor10visit_enumINtNtCsbbTh99npV2h_10serde_json2de13VariantAccessNtNtB2D_4read9SliceReadEECsddkiMbsmfqo_5yr_ls.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !363
  call void @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
  %i.al = load i8, ptr %i.e, align 8, !range !7, !noalias !363, !noundef !5
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !363, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !363
  br label %_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer16deserialize_enumNtNvXNvCs6m2LFPinx2P_9async_lsps3_1__NtB2t_10RpcVersionNtB1l_11Deserialize11deserialize9___VisitorECsddkiMbsmfqo_5yr_ls.exit

bb.m:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !range !7, !noalias !363, !noundef !5
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.n, label %bb.o, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.at = load i8, ptr %i.as, align 2, !noalias !363
  %i.au = icmp eq i8 %i.at, 125
  br i1 %i.au, label %bb.p, label %bb.q, !prof !14

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !363
  store i64 3, ptr %i.c, align 8, !noalias !363
  %i.av = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !363
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.aw = load i64, ptr %i.aa, align 8, !alias.scope !365, !noundef !5
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.aa, align 8, !alias.scope !365
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !363
  store i64 10, ptr %i.d, align 8, !noalias !363
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCsbbTh99npV2h_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !363
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.sroa.0.2.i = phi ptr [ null, %bb.p ], [ %i.ay, %bb.q ], [ %i.av, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !363
  br label %_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer16deserialize_enumNtNvXNvCs6m2LFPinx2P_9async_lsps3_1__NtB2t_10RpcVersionNtB1l_11Deserialize11deserialize9___VisitorECsddkiMbsmfqo_5yr_ls.exit

_RINvXs5_NtCsbbTh99npV2h_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer16deserialize_enumNtNvXNvCs6m2LFPinx2P_9async_lsps3_1__NtB2t_10RpcVersionNtB1l_11Deserialize11deserialize9___VisitorECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.b, %bb.e, %bb.f, %bb.h, %bb.i, %_RINvXs0_NvXNvCs6m2LFPinx2P_9async_lsps3_1__NtBb_10RpcVersionNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBY_7Visitor10visit_enumINtNtCsbbTh99npV2h_10serde_json2de13VariantAccessNtNtB2D_4read9SliceReadEECsddkiMbsmfqo_5yr_ls.exit.thread.i, %_RINvXs0_NvXNvCs6m2LFPinx2P_9async_lsps3_1__NtBb_10RpcVersionNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBY_7Visitor10visit_enumINtNtCsbbTh99npV2h_10serde_json2de13VariantAccessNtNtB2D_4read9SliceReadEECsddkiMbsmfqo_5yr_ls.exit.i, %bb.l, %bb.r
  %.sroa.0.5.i = phi ptr [ %i.q, %bb.e ], [ %i.z, %bb.i ], [ %..i.i, %bb.h ], [ %i.r, %bb.f ], [ %i.k, %bb.b ], [ %.sroa.0.2.i, %bb.r ], [ %i.ao, %bb.l ], [ %i.ai, %_RINvXs0_NvXNvCs6m2LFPinx2P_9async_lsps3_1__NtBb_10RpcVersionNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBY_7Visitor10visit_enumINtNtCsbbTh99npV2h_10serde_json2de13VariantAccessNtNtB2D_4read9SliceReadEECsddkiMbsmfqo_5yr_ls.exit.i ], [ %i.af, %_RINvXs0_NvXNvCs6m2LFPinx2P_9async_lsps3_1__NtBb_10RpcVersionNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBY_7Visitor10visit_enumINtNtCsbbTh99npV2h_10serde_json2de13VariantAccessNtNtB2D_4read9SliceReadEECsddkiMbsmfqo_5yr_ls.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !363
  ret ptr %.sroa.0.5.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvCs6m2LFPinx2P_9async_lsps5_1__NtB5_7MessageNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtNtCsbgTeJz5vL0a_5serde7private2de19FlatMapDeserializerNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 7 uses
  %i.b = alloca [200 x i8], align 8               ; 8 uses
  %i.c = alloca [200 x i8], align 8               ; 7 uses
  %i.d = alloca [200 x i8], align 8               ; 9 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [200 x i8], align 8               ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RINvYINtNtNtCsbgTeJz5vL0a_5serde7private2de19FlatMapDeserializerNtNtCsbbTh99npV2h_10serde_json5error5ErrorENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer24___deserialize_content_v1NtNtB6_7content14ContentVisitorECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.i = load i8, ptr %i.g, align 8, !range !366, !noundef !5 ; 2 uses
  %i.j = icmp eq i8 %i.i, -1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.m, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.410.0..sroa_idx, i64 7, i1 false)
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.511.0.copyload = load ptr, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.612.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i8 %i.i, ptr %i.h, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.511.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvXsD_NtNtNtCsbgTeJz5vL0a_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsbbTh99npV2h_10serde_json5error5ErrorENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer18deserialize_structNtNvXNvCs6m2LFPinx2P_9async_lsps7_1__NtB3c_10AnyRequestNtB22_11Deserialize11deserialize9___VisitorECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @12, i64 noundef 3)
          to label %_RINvXNvCs6m2LFPinx2P_9async_lsps7_1__NtB5_10AnyRequestNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbgTeJz5vL0a_5serde7private2de7content22ContentRefDeserializerNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.l, %bb.h, %bb.c, %bb.o, %bb.n, %bb.k, %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #16
          to label %bb.s unwind label %bb.r

_RINvXNvCs6m2LFPinx2P_9async_lsps7_1__NtB5_10AnyRequestNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbgTeJz5vL0a_5serde7private2de7content22ContentRefDeserializerNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.c
  %i.o = load i64, ptr %i.e, align 8, !range !8, !noundef !5
  %i.p = icmp eq i64 %i.o, -1
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.p, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RINvXNvCs6m2LFPinx2P_9async_lsps7_1__NtB5_10AnyRequestNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbgTeJz5vL0a_5serde7private2de7content22ContentRefDeserializerNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.q, ptr noundef nonnull align 8 dereferenceable(120) %i.e, i64 120, i1 false)
  store i64 -9223372036854775808, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %i.f, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.f:                                             ; preds = %bb.m, %bb.j, %bb.e
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h)
  br label %bb.q

bb.g:                                             ; preds = %_RINvXNvCs6m2LFPinx2P_9async_lsps7_1__NtB5_10AnyRequestNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbgTeJz5vL0a_5serde7private2de7content22ContentRefDeserializerNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5, !align !6, !noundef !5
  store ptr %i.s, ptr %i.q, align 8
  store i64 -2, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs6m2LFPinx2P_9async_lsp7MessageNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(200) %i.f)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvXsD_NtNtNtCsbgTeJz5vL0a_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsbbTh99npV2h_10serde_json5error5ErrorENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer18deserialize_structNtNvXNvCs6m2LFPinx2P_9async_lspsb_1__NtB3c_11AnyResponseNtB22_11Deserialize11deserialize9___VisitorECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @18, i64 noundef 3)
          to label %_RINvXNvCs6m2LFPinx2P_9async_lspsb_1__NtB5_11AnyResponseNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbgTeJz5vL0a_5serde7private2de7content22ContentRefDeserializerNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.d

_RINvXNvCs6m2LFPinx2P_9async_lspsb_1__NtB5_11AnyResponseNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbgTeJz5vL0a_5serde7private2de7content22ContentRefDeserializerNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.h
  %i.t = load i64, ptr %i.c, align 8, !range !17, !noundef !5
  %i.u = icmp eq i64 %i.t, -2
  br i1 %i.u, label %.thread22, label %bb.i

.thread22:                                        ; preds = %_RINvXNvCs6m2LFPinx2P_9async_lspsb_1__NtB5_11AnyResponseNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbgTeJz5vL0a_5serde7private2de7content22ContentRefDeserializerNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !align !6, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 -2, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.i:                                             ; preds = %_RINvXNvCs6m2LFPinx2P_9async_lspsb_1__NtB5_11AnyResponseNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbgTeJz5vL0a_5serde7private2de7content22ContentRefDeserializerNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.d, ptr noundef nonnull align 8 dereferenceable(200) %i.c, i64 200, i1 false)
  %.pr = load i64, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.y = icmp eq i64 %.pr, -2
  br i1 %i.y, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %i.d, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.k:                                             ; preds = %.thread22, %bb.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCs6m2LFPinx2P_9async_lsp7MessageNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(200) %i.d)
          to label %bb.l unwind label %bb.d

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvXsD_NtNtNtCsbgTeJz5vL0a_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCsbbTh99npV2h_10serde_json5error5ErrorENtNtCsaeRQ2XwCvzm_10serde_core2de12Deserializer18deserialize_structNtNvXNvCs6m2LFPinx2P_9async_lsps9_1__NtB3c_15AnyNotificationNtB22_11Deserialize11deserialize9___VisitorECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 15, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @14, i64 noundef 2)
          to label %_RINvXNvCs6m2LFPinx2P_9async_lsps9_1__NtB5_15AnyNotificationNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbgTeJz5vL0a_5serde7private2de7content22ContentRefDeserializerNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.d

_RINvXNvCs6m2LFPinx2P_9async_lsps9_1__NtB5_15AnyNotificationNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbgTeJz5vL0a_5serde7private2de7content22ContentRefDeserializerNtNtCsbbTh99npV2h_10serde_json5error5ErrorEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.l
  %i.z = load i64, ptr %i.a, align 8, !range !8, !noundef !5
  %i.aa = icmp eq i64 %i.z, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.aa, label %bb.n, label %bb.m

end_hunk_1
begin_hunk_2_@_RNvMs3_Cs6m2LFPinx2P_9async_lspINtB5_8MainLoopINtNtCs4KzxGwe94yc_9yara_x_ls7tracing14MessageTracingINtNtB5_6server9LifecycleINtNtB5_5panic11CatchUnwindINtNtB5_11concurrency11ConcurrencyINtNtB5_6router6RouterNtNtBN_6server18YARALanguageServerEEEEEE14dispatch_eventCsddkiMbsmfqo_5yr_ls:bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.r unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringECsddkiMbsmfqo_5yr_ls.exit unwind label %bb.j

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_RNvXs0_NtCs4KzxGwe94yc_9yara_x_ls7tracingINtB5_14MessageTracingINtNtCs6m2LFPinx2P_9async_lsp6server9LifecycleINtNtB14_5panic11CatchUnwindINtNtB14_11concurrency11ConcurrencyINtNtB14_6router6RouterNtNtB7_6server18YARALanguageServerEEEEENtB14_10LspService4emitCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  %i.x = load i64, ptr %i.a, align 8, !range !411, !noundef !5
  %.not = icmp eq i64 %i.x, -2
  br i1 %.not, label %bb.v, label %bb.u

bb.i:                                             ; preds = %bb.v, %bb.u, %bb.p, %bb.c
  ret void

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit.i
  store i64 -1, ptr %i.q, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %i.p, ptr %.sroa.5.0..sroa_idx2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.p, ptr %i.z, align 8
  store i64 -1, ptr %i.c, align 8
  %i.aa = invoke noundef ptr @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringINtNtCs5AFert6BSaG_15futures_channel7oneshot6SenderNtCs6m2LFPinx2P_9async_lsp11AnyResponseENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.n)
          to label %bb.l unwind label %bb.k       ; 2 uses

bb.k:                                             ; preds = %bb.n, %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringECsddkiMbsmfqo_5yr_ls.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs2w2nn1AeeqK_9lsp_types14NumberOrStringECsddkiMbsmfqo_5yr_ls.exit
  store ptr %i.aa, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not15 = icmp eq ptr %i.aa, null
  br i1 %.not15, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs5AFert6BSaG_15futures_channel7oneshot6SenderNtCs6m2LFPinx2P_9async_lsp11AnyResponseEEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(8) %i.d)
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 73, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #20
          to label %bb.o unwind label %bb.k

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ac = load i32, ptr %i.o, align 8, !noundef !5
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.o, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 120, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.q:                                             ; preds = %bb.k, %bb.r
  %.pn22 = phi { ptr, i32 } [ %eh.lpad-body, %bb.r ], [ %i.ab, %bb.k ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp10AnyRequestECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(120) %i.f) #16
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.j, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.j ], [ %i.t, %bb.f ]
  store i64 -1, ptr %i.q, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %i.p, ptr %.sroa.5.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs5AFert6BSaG_15futures_channel7oneshot6SenderNtCs6m2LFPinx2P_9async_lsp11AnyResponseEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(8) %i.e) #16
          to label %bb.q unwind label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.t:                                             ; preds = %bb.q
  resume { ptr, i32 } %.pn22

bb.u:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.af, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -3, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.v:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs6m2LFPinx2P_9async_lsp5panicINtB2_11CatchUnwindINtNtB4_11concurrency11ConcurrencyINtNtB4_6router6RouterNtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerEEEINtCseYwBceZKGZd_13tower_service7ServiceNtB4_10AnyRequestE10poll_readyCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef align 8 dereferenceable(296) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvXNtCs6m2LFPinx2P_9async_lsp11concurrencyINtB2_11ConcurrencyINtNtB4_6router6RouterNtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerEEINtCseYwBceZKGZd_13tower_service7ServiceNtB4_10AnyRequestE10poll_readyCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs6m2LFPinx2P_9async_lsp5panicINtB2_11CatchUnwindINtNtB4_11concurrency11ConcurrencyINtNtB4_6router6RouterNtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerEEEINtCseYwBceZKGZd_13tower_service7ServiceNtB4_10AnyRequestE4callCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef align 8 dereferenceable(296) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(120) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 16              ; 7 uses
  %i.b = alloca [40 x i8], align 16               ; 6 uses
  %i.c = alloca [104 x i8], align 8               ; 8 uses
  %.sroa.13 = alloca [16 x i8], align 8           ; 6 uses
  %.sroa.5.sroa.8 = alloca [16 x i8], align 8     ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.8)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.011.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.011.sroa.5.0.copyload = load ptr, ptr %.sroa.011.sroa.5.0..sroa_idx, align 8
  %.sroa.011.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.sroa.6.0..sroa_idx, i64 16, i1 false)
  %.sroa.011.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !418
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.011.sroa.7.0..sroa_idx, i64 80, i1 false)
  %i.f = load <2 x ptr>, ptr %2, align 8
  store <2 x ptr> %i.f, ptr %i.a, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.011.sroa.5.0.copyload, ptr %.sroa.12.0..sroa_idx, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.sroa.6.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXNtCs6m2LFPinx2P_9async_lsp11concurrencyINtB2_11ConcurrencyINtNtB4_6router6RouterNtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerEEINtCseYwBceZKGZd_13tower_service7ServiceNtB4_10AnyRequestE4callCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  %i.i = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.h)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #17
  unreachable

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !418
  %.sroa.12.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.12.0.copyload67 = load ptr, ptr %.sroa.12.0..sroa_idx66, align 16
  %.sroa.13.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0..sroa_idx68, i64 16, i1 false)
  %.sroa.516.sroa.6.0..sroa.516.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load <2 x ptr>, ptr %i.b, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.516.sroa.6.0..sroa.516.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.8, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.415.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.l = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  store i64 -2, ptr %0, align 8
  store <2 x ptr> %i.k, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.516.sroa.5.0..sroa.516.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.12.0.copyload67, ptr %.sroa.516.sroa.5.0..sroa.516.0..sroa_idx.sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.l, ptr %.sroa.617.0..sroa_idx, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit

bb.f:                                             ; preds = %bb.c
  %i.m = extractvalue { ptr, ptr } %i.i, 0        ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m), "nonnull"(ptr %i.n) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !5
  invoke void %i.o(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.q, i64 noundef %i.s, ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n)
          to label %bb.h unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.8)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #16
          to label %.thread unwind label %bb.k

bb.h:                                             ; preds = %bb.f
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.5.sroa.7.0.copyload = load ptr, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.527.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx, i64 56, i1 false)
  %.sroa.426.sroa.6.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load <2 x ptr>, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.426.sroa.6.0..sroa.426.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.sroa.8, i64 16, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  store <2 x ptr> %i.u, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.426.sroa.5.0..sroa.426.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.5.sroa.7.0.copyload, ptr %.sroa.426.sroa.5.0..sroa.426.0..sroa_idx.sroa_idx, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.thread unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsddkiMbsmfqo_5yr_ls.exit.i: ; preds = %bb.h
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsddkiMbsmfqo_5yr_ls.exit

bb.k:                                             ; preds = %bb.l, %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

.thread:                                          ; preds = %bb.i, %bb.g, %bb.l
  %.pn72 = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.y, %bb.l ], [ %i.v, %bb.i ]
  resume { ptr, i32 } %.pn72

bb.l:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs6m2LFPinx2P_9async_lsp10AnyRequestECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(120) %2) #16
          to label %.thread unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtCs6m2LFPinx2P_9async_lsp5panicINtB5_11CatchUnwindINtNtB7_11concurrency11ConcurrencyINtNtB7_6router6RouterNtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerEEENtB7_10LspService4emitCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noalias nofree noundef align 8 dereferenceable(296) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvXs2_NtCs6m2LFPinx2P_9async_lsp11concurrencyINtB5_11ConcurrencyINtNtB7_6router6RouterNtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerEENtB7_10LspService4emitCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtCs6m2LFPinx2P_9async_lsp5panicINtB5_11CatchUnwindINtNtB7_11concurrency11ConcurrencyINtNtB7_6router6RouterNtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerEEENtB7_10LspService6notifyCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noalias nofree noundef align 8 dereferenceable(296) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RNvXs2_NtCs6m2LFPinx2P_9async_lsp11concurrencyINtB5_11ConcurrencyINtNtB7_6router6RouterNtNtCs4KzxGwe94yc_9yara_x_ls6server18YARALanguageServerEENtB7_10LspService6notifyCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtCs6m2LFPinx2P_9async_lsp13ResponseErrorNtB6_5Debug3fmtCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !422
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.d, ptr %i.a, align 8, !noalias !422
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 4, ptr noundef nonnull readonly %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 7, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !422
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB6_5Debug3fmtCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXNtCsbbTh99npV2h_10serde_json5valueNtB2_5ValueNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_Cs6m2LFPinx2P_9async_lspINtB5_13RequestFutureINtNtB5_6server14ResponseFutureINtNtB5_5panic14ResponseFutureINtNtB5_11concurrency14ResponseFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB2t_6future6future6Futurep6OutputINtNtB2t_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB5_13ResponseErrorENtNtB2t_6marker4SendEL_EEEB5a_EEEB3u_4pollCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([200 x i8]) align 8 captures(none) dereferenceable(200) %0, ptr noalias nofree noundef align 8 dereferenceable(136) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 14 uses
  %i.c = alloca [72 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 -1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 -1, ptr %i.b, align 8
  invoke void @_RNvXs1_NtCs6m2LFPinx2P_9async_lsp6serverINtB5_14ResponseFutureINtNtB7_5panic14ResponseFutureINtNtB7_11concurrency14ResponseFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB28_6future6future6Futurep6OutputINtNtB28_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB7_13ResponseErrorENtNtB28_6marker4SendEL_EEEB4P_EEB39_4pollCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.i, %bb.c
  %.pn = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.h, %bb.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6m2LFPinx2P_9async_lsp13ResponseErrorEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(104) %i.b) #16
          to label %bb.n unwind label %bb.s

bb.c:                                             ; preds = %bb.l, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !range !17, !noundef !5 ; 4 uses
  %i.g = icmp eq i64 %i.f, -2
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 -2, ptr %0, align 8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6m2LFPinx2P_9async_lsp13ResponseErrorEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(104) %i.b)
          to label %bb.q unwind label %bb.p

bb.f:                                             ; preds = %bb.d
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %.not = icmp eq i64 %i.f, -1
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECsddkiMbsmfqo_5yr_ls.exit, label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx, i64 72, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECsddkiMbsmfqo_5yr_ls.exit
  %.sroa.07.0.copyload = load i64, ptr %i.d, align 8 ; 2 uses
  store i64 -2, ptr %i.d, align 8
  %.not18 = icmp eq i64 %.sroa.07.0.copyload, -2
  br i1 %.not18, label %bb.l, label %bb.k, !prof !16

bb.h:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs6m2LFPinx2P_9async_lsp13ResponseErrorEECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(104) %i.b)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          cleanup
  store i64 %i.f, ptr %i.b, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.532.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx, i64 72, i1 false)
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.634.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false)
  br label %bb.b

bb.j:                                             ; preds = %bb.h
  store i64 %i.f, ptr %i.b, align 8
  %.sroa.532.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.532.0..sroa_idx33, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx, i64 72, i1 false)
  %.sroa.634.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.634.0..sroa_idx35, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i64 24, i1 false)
  br label %bb.g

bb.k:                                             ; preds = %bb.g
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false)
  store i64 %.sroa.07.0.copyload, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECsddkiMbsmfqo_5yr_ls.exit24

bb.l:                                             ; preds = %bb.g
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 18, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #20
          to label %bb.m unwind label %bb.c

bb.m:                                             ; preds = %bb.l
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECsddkiMbsmfqo_5yr_ls.exit24: ; preds = %bb.r, %bb.q, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.n:                                             ; preds = %bb.p, %bb.b
  %.pn20 = phi { ptr, i32 } [ %i.k, %bb.p ], [ %.pn, %bb.b ]
  %i.i = load i64, ptr %i.c, align 8, !range !9, !alias.scope !427, !noundef !5
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECsddkiMbsmfqo_5yr_ls.exit23, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECsddkiMbsmfqo_5yr_ls.exit23 unwind label %bb.s

bb.p:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.q:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = load i64, ptr %i.c, align 8, !range !9, !alias.scope !428, !noundef !5
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECsddkiMbsmfqo_5yr_ls.exit24, label %bb.r

bb.r:                                             ; preds = %bb.q
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECsddkiMbsmfqo_5yr_ls.exit24

bb.s:                                             ; preds = %bb.o, %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECsddkiMbsmfqo_5yr_ls.exit23: ; preds = %bb.n, %bb.o
  resume { ptr, i32 } %.pn20
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtCs6m2LFPinx2P_9async_lsp5panicINtB4_14ResponseFutureINtNtB6_11concurrency14ResponseFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1C_6future6future6Futurep6OutputINtNtB1C_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB6_13ResponseErrorENtNtB1C_6marker4SendEL_EEEB4j_EB2D_4pollCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef align 8 dereferenceable(104) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 6 uses
  %i.b = load i64, ptr %1, align 8, !range !17, !noundef !5 ; 3 uses
  %.not = icmp eq i64 %i.b, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %1, align 8
  %.not28 = icmp eq i64 %i.b, -1
  br i1 %.not28, label %bb.j, label %bb.i, !prof !16

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs1_NtCs6m2LFPinx2P_9async_lsp11concurrencyINtB5_14ResponseFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputINtNtB19_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB7_13ResponseErrorENtNtB19_6marker4SendEL_EEEB2a_4pollCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.e)
          to label %bb.g unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #17
  unreachable

bb.f:                                             ; preds = %bb.c
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.99.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.99.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.15.0..sroa_idx, i64 80, i1 false)
  %.sroa.54.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load <2 x ptr>, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  store <2 x ptr> %i.h, ptr %.sroa.54.0..sroa_idx5, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.i = extractvalue { ptr, ptr } %i.f, 0
  %i.j = extractvalue { ptr, ptr } %i.f, 1        ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.k = load ptr, ptr %3, align 8, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i64, ptr %i.n, align 8, !noundef !5
  tail call void %i.k(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.o, ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.i
  ret void

bb.i:                                             ; preds = %bb.b
  %.sroa.513.0..sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.513.0..sroa.5.8..sroa_idx, i64 96, i1 false)
  store i64 %i.b, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsaeRQ2XwCvzm_10serde_core2deINtNvXNvCs6m2LFPinx2P_9async_lsps1_1__INtBH_10RawMessagepENtB4_11Deserialize11deserialize9___VisitorNtBH_7MessageENtB4_8Expected3fmtCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 17)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsaeRQ2XwCvzm_10serde_core2deNtNvXNvCs6m2LFPinx2P_9async_lsps3_1__NtBG_10RpcVersionNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXNvCs6m2LFPinx2P_9async_lsps3_1__NtB7_10RpcVersionNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtBU_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsaeRQ2XwCvzm_10serde_core2deNtNvXNvCs6m2LFPinx2P_9async_lsps7_1__NtBG_10AnyRequestNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXNvCs6m2LFPinx2P_9async_lsps7_1__NtB7_10AnyRequestNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtBU_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsaeRQ2XwCvzm_10serde_core2deNtNvXNvCs6m2LFPinx2P_9async_lsps7_1__NtBG_10AnyRequestNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvCs6m2LFPinx2P_9async_lsps7_1__NtBa_10AnyRequestNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtBX_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsaeRQ2XwCvzm_10serde_core2deNtNvXNvCs6m2LFPinx2P_9async_lsps9_1__NtBG_15AnyNotificationNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXNvCs6m2LFPinx2P_9async_lsps9_1__NtB7_15AnyNotificationNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtBZ_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsaeRQ2XwCvzm_10serde_core2deNtNvXNvCs6m2LFPinx2P_9async_lsps9_1__NtBG_15AnyNotificationNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvCs6m2LFPinx2P_9async_lsps9_1__NtBa_15AnyNotificationNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB12_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsaeRQ2XwCvzm_10serde_core2deNtNvXNvCs6m2LFPinx2P_9async_lspsb_1__NtBG_11AnyResponseNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXNvCs6m2LFPinx2P_9async_lspsb_1__NtB7_11AnyResponseNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtBV_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsaeRQ2XwCvzm_10serde_core2deNtNvXNvCs6m2LFPinx2P_9async_lspsb_1__NtBG_11AnyResponseNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvCs6m2LFPinx2P_9async_lspsb_1__NtBa_11AnyResponseNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtBY_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsaeRQ2XwCvzm_10serde_core2deNtNvXNvCs6m2LFPinx2P_9async_lspsd_1__NtBG_13ResponseErrorNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXNvXNvCs6m2LFPinx2P_9async_lspsd_1__NtB7_13ResponseErrorNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtBX_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsaeRQ2XwCvzm_10serde_core2deNtNvXNvCs6m2LFPinx2P_9async_lspsd_1__NtBG_13ResponseErrorNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NvXNvCs6m2LFPinx2P_9async_lspsd_1__NtBa_13ResponseErrorNtNtCsaeRQ2XwCvzm_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB10_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_Cs6m2LFPinx2P_9async_lspNtB5_9ErrorCodeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTINtNtB1k_6option6OptionQIB1Z_INtNtB1k_4cell4CellTyyEEEEEE9call_onceCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !7, !noalias !433, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsddkiMbsmfqo_5yr_ls.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsddkiMbsmfqo_5yr_ls.exit

_RNCNKNvNvMNtNtCsG258MDvU3F_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CsddkiMbsmfqo_5yr_ls.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCskKLDkoKarTP_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2h_11RandomState3new4KEYS27___rust_std_internal_init_fnECsddkiMbsmfqo_5yr_ls(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCs5AFert6BSaG_15futures_channel4mpsc9unboundedNtCs6m2LFPinx2P_9async_lsp13MainLoopEventECsddkiMbsmfqo_5yr_ls() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvXsl_NtCs5AFert6BSaG_15futures_channel4mpscINtB5_20UnboundedSenderInnerNtCs6m2LFPinx2P_9async_lsp13MainLoopEventENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtCs9j2PgAuXC7p_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtCs6m2LFPinx2P_9async_lsp13RequestFutureINtNtB1s_6server14ResponseFutureINtNtB1s_5panic14ResponseFutureINtNtB1s_11concurrency14ResponseFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB3N_6future6future6Futurep6OutputINtNtB3N_6result6ResultNtNtCsbbTh99npV2h_10serde_json5value5ValueNtB1s_13ResponseErrorENtNtB3N_6marker4SendEL_EEEB6u_EEEE3newCsddkiMbsmfqo_5yr_ls(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMsm_NtNtCsbbTh99npV2h_10serde_json5value2deNtB7_5Value10unexpected(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs6_NtCsbbTh99npV2h_10serde_json5errorNtB5_5ErrorNtNtCsaeRQ2XwCvzm_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCs5AFert6BSaG_15futures_channel4mpscINtB5_17UnboundedReceiverNtCs6m2LFPinx2P_9async_lsp13MainLoopEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsn_NtCs5AFert6BSaG_15futures_channel4mpscINtB5_20UnboundedSenderInnerNtCs6m2LFPinx2P_9async_lsp13MainLoopEventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCs5AFert6BSaG_15futures_channel7oneshotINtB5_6SenderNtCs6m2LFPinx2P_9async_lsp11AnyResponseENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsf_NtCs9QmT8tHpLPH_9hashbrown3rawINtB5_8RawTablejENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs907JfTDu8Xv_8indexmap6BucketNtNtB7_6string6StringNtNtCsbbTh99npV2h_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbbTh99npV2h_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCscCnEmhw1znz_4libc4unix10linux_like11epoll_eventENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCsaeRQ2XwCvzm_10serde_core7private7content7ContentBG_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsddkiMbsmfqo_5yr_ls(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_2
