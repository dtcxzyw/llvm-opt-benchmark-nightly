Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/span-7cadf1e4e9c34a5c.span.9c05c6af7d1e70b4-cgu.02?download=true
inline.NumInlined: 245
inline.NumDeleted: 80
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE4recvB2b_:bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !240
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECsdovh4xi6v3I_4span.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #20
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECsdovh4xi6v3I_4span.exit.i.i.i unwind label %bb.j, !noalias !198

_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE4recvs_0uEs_0uEB4H_.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsdovh4xi6v3I_4span.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE4recvs_0uEs0_0B2P_(ptr nonnull %i.f) #22, !noalias !198
  br label %_RINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE4recvs_0uEB2N_.exit

_RINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE4recvs_0uEB2N_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECsdovh4xi6v3I_4span.exit19.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextEECsdovh4xi6v3I_4span.exit.i.i.i, %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE4recvs_0uEs_0uEB4H_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !198
  %i.at = call fastcc noundef zeroext i1 @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE10start_recvB2b_(ptr noundef nonnull align 128 %1, ptr noalias nofree noundef align 8 dereferenceable(40) %i.h)
  br i1 %i.at, label %._crit_edge, label %bb.b

.split:                                           ; preds = %bb.c
  %i.au = extractvalue { i64, i32 } %i.t, 1       ; 2 uses
  %i.av = icmp ult i32 %i.au, 1000000000
  call void @llvm.assume(i1 %i.av)
  %.not7 = icmp samesign ult i32 %i.au, %i.p
  br i1 %.not7, label %bb.d, label %bb.r

bb.q:                                             ; preds = %bb.c
  %.not6 = icmp slt i64 %i.u, %i.s
  br i1 %.not6, label %bb.d, label %bb.r

bb.r:                                             ; preds = %.split, %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.aw, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.t:                                             ; preds = %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ax, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE4sendB2b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [16 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !247 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !247
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE10start_sendB2b_.exit.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE10start_sendB2b_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload29 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx30, i64 16, i1 false)
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE5writeB2b_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.03.070.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.p, %.backedge.i ] ; 3 uses
  %.sroa.07.069.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.q, %.backedge.i ] ; 2 uses
  %.sroa.0.068.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.0.be.i, %.backedge.i ] ; 12 uses
  %.sroa.041.067.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.041.0.be.i, %.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.070.i, 1
  %i.i = and i64 %i.h, 31                         ; 3 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %.sroa.0.068.i, 7
  br i1 %i.k, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %bb.p, !noalias !247

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.068.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i
  %i.l = mul nuw i32 %.sroa.0.068.i, %.sroa.0.068.i ; 2 uses
  %xtraiter68 = and i32 %i.l, 7                   ; 3 uses
  %i.m = icmp ult i32 %.sroa.0.068.i, 3
  br i1 %i.m, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter72 = and i32 %i.l, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter73 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter73.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  %niter73.next.7 = add i32 %niter73, 8           ; 2 uses
  %niter73.ncmp.7 = icmp eq i32 %niter73.next.7, %unroll_iter72
  br i1 %niter73.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.i, 30                     ; 2 uses
  %.not.i = icmp eq ptr %.sroa.041.067.i, null
  %or.cond.i = select i1 %i.n, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB12_3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEEEEEB3h_.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod70.not = icmp eq i32 %xtraiter68, 0
  br i1 %lcmp.mod70.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod71 = icmp ne i32 %xtraiter68, 0
  tail call void @llvm.assume(i1 %lcmp.mod71)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter69 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter69.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  %epil.iter69.next = add i32 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i32 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !250

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i, %bb.d
  %i.o = add i32 %.sroa.0.068.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %.loopexit62.i, %bb.k, %bb.j, %.loopexit.i
  %.sroa.041.0.be.i = phi ptr [ %.sroa.041.3.i, %.loopexit62.i ], [ %.sroa.041.067.i, %.loopexit.i ], [ %i.v, %bb.j ], [ %i.v, %bb.k ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %i.af, %.loopexit62.i ], [ %i.o, %.loopexit.i ], [ %.sroa.0.068.i, %bb.j ], [ %.sroa.0.068.i, %bb.k ]
  %i.p = load atomic i64, ptr %i.a acquire, align 128, !noalias !247 ; 2 uses
  %i.q = load atomic ptr, ptr %i.c acquire, align 8, !noalias !247
  %i.r = and i64 %i.p, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %._crit_edge.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB12_3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEEEEEB3h_.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.041.3.i = phi ptr [ %.sroa.041.067.i, %bb.e ], [ %i.u, %bb.f ] ; 8 uses
  %i.t = icmp eq ptr %.sroa.07.069.i, null
  br i1 %i.t, label %bb.g, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB6_3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEEE13new_zeroed_inB2q_()
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB12_3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEEEEEB3h_.exit.i unwind label %.body.thread24.loopexit

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB12_3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEEEEEB3h_.exit.i
  %i.v = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB6_3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEEE13new_zeroed_inB2q_()
          to label %bb.h unwind label %bb.p, !noalias !247 ; 5 uses

bb.h:                                             ; preds = %bb.g
  %i.w = cmpxchg ptr %i.c, ptr null, ptr %i.v release monotonic, align 8, !noalias !247
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.v, ptr %i.g release, align 8, !noalias !247
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.y = icmp eq ptr %.sroa.041.3.i, null
  br i1 %i.y, label %.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.3.i, i64 noundef 1000, i64 noundef 8) #13, !noalias !247
  br label %.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB12_3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEEEEEB3h_.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.069.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockINtNtB12_3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEEEEEB3h_.exit.i ], [ %i.v, %bb.i ] ; 3 uses
  %i.z = add i64 %.sroa.03.070.i, 2
  %i.aa = cmpxchg weak ptr %i.a, i64 %.sroa.03.070.i, i64 %i.z seq_cst acquire, align 8, !noalias !247
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.m, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i: ; preds = %bb.l
  %.not.i27.i = icmp eq i32 %.sroa.0.068.i, 0
  br i1 %.not.i27.i, label %.loopexit62.i, label %.lr.ph.i30.i.preheader

.lr.ph.i30.i.preheader:                           ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i
  %..i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.068.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %..i.i.i, %..i.i.i         ; 2 uses
  %xtraiter = and i32 %5, 5                       ; 3 uses
  %i.ac = icmp ult i32 %.sroa.0.068.i, 3
  br i1 %i.ac, label %.lr.ph.i30.i.epil.preheader, label %.lr.ph.i30.i.preheader.new

.lr.ph.i30.i.preheader.new:                       ; preds = %.lr.ph.i30.i.preheader
  %unroll_iter = and i32 %5, 56
  br label %.lr.ph.i30.i

.lr.ph.i30.i:                                     ; preds = %.lr.ph.i30.i, %.lr.ph.i30.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i30.i.preheader.new ], [ %niter.next.7, %.lr.ph.i30.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit62.i.loopexit.unr-lcssa, label %.lr.ph.i30.i

bb.m:                                             ; preds = %bb.l
  br i1 %i.n, label %bb.n, label %._crit_edge.i

bb.n:                                             ; preds = %bb.m
  %.not15.i = icmp eq ptr %.sroa.041.3.i, null
  br i1 %.not15.i, label %bb.o, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE10start_sendB2b_.exit.thread32, !prof !8

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
          to label %.noexc5 unwind label %.body.thread24.loopexit.split-lp

.noexc5:                                          ; preds = %bb.o
  unreachable

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE10start_sendB2b_.exit.thread32: ; preds = %bb.n
  store atomic ptr %.sroa.041.3.i, ptr %i.c release, align 8, !noalias !247
  %i.ad = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !247 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i, i64 992
  store atomic ptr %.sroa.041.3.i, ptr %i.ae release, align 8, !noalias !247
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload35 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx36, i64 16, i1 false)
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE5writeB2b_.exit.thread

.loopexit62.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i30.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit62.i, label %.lr.ph.i30.i.epil.preheader

.lr.ph.i30.i.epil.preheader:                      ; preds = %.loopexit62.i.loopexit.unr-lcssa, %.lr.ph.i30.i.preheader
  %lcmp.mod67 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod67)
  br label %.lr.ph.i30.i.epil

.lr.ph.i30.i.epil:                                ; preds = %.lr.ph.i30.i.epil, %.lr.ph.i30.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i30.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i30.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !247
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit62.i, label %.lr.ph.i30.i.epil, !llvm.loop !251

.loopexit62.i:                                    ; preds = %.loopexit62.i.loopexit.unr-lcssa, %.lr.ph.i30.i.epil, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i
  %i.af = add i32 %.sroa.0.068.i, 1
  br label %.backedge.i

bb.p:                                             ; preds = %bb.g, %bb.d
  %.sroa.041.1.ph.i = phi ptr [ %.sroa.041.067.i, %bb.d ], [ %.sroa.041.3.i, %bb.g ] ; 2 uses
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = icmp eq ptr %.sroa.041.1.ph.i, null
  br i1 %i.ag, label %.body.thread, label %.thread53.i

.thread53.i:                                      ; preds = %bb.p
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.1.ph.i, i64 noundef 1000, i64 noundef 8) #13, !noalias !247
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.m
  %.sroa.9.0 = phi i64 [ %i.i, %bb.m ], [ 0, %.backedge.i ]
  %.sroa.47.0 = phi ptr [ %.sroa.07.2.i, %bb.m ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.041.4.i = phi ptr [ %.sroa.041.3.i, %bb.m ], [ %.sroa.041.0.be.i, %.backedge.i ] ; 2 uses
  %i.ah = icmp eq ptr %.sroa.041.4.i, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE10start_sendB2b_.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.4.i, i64 noundef 1000, i64 noundef 8) #13, !noalias !247
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE10start_sendB2b_.exit

.body.thread24.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread24.loopexit.split-lp:                 ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE10start_sendB2b_.exit: ; preds = %bb.q, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.ai = icmp eq ptr %.sroa.47.0, null
  br i1 %i.ai, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE5writeB2b_.exit, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE5writeB2b_.exit.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE5writeB2b_.exit.thread: ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE10start_sendB2b_.exit.thread32, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE10start_sendB2b_.exit
  %.sroa.011.0.copyload39 = phi i64 [ %.sroa.011.0.copyload35, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE10start_sendB2b_.exit.thread32 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE10start_sendB2b_.exit ]
  %.sroa.47.138 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE10start_sendB2b_.exit.thread32 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE10start_sendB2b_.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE10start_sendB2b_.exit.thread32 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE10start_sendB2b_.exit ]
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %.sroa.47.138, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload39, ptr %i.aj, align 8, !noalias !252
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false), !noalias !252
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = atomicrmw or ptr %i.ak, i64 1 release, align 8, !noalias !257 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.am) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.s

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE5writeB2b_.exit: ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE10start_sendB2b_.exit, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE10start_sendB2b_.exit.thread
  %.sroa.011.0.copyload31 = phi i64 [ %.sroa.011.0.copyload29, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE10start_sendB2b_.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE10start_sendB2b_.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false), !alias.scope !257
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload31, -1
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE5writeB2b_.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.011.0.copyload31, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.t

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE5writeB2b_.exit.thread, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE5writeB2b_.exit
  store i64 2, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body22

.body.thread:                                     ; preds = %.body.thread24.loopexit, %.body.thread24.loopexit.split-lp, %bb.p, %.thread53.i
  %eh.lpad-body22 = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.p ], [ %lpad.thr_comm.i, %.thread53.i ], [ %lpad.loopexit, %.body.thread24.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread24.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEEB1Q_(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #24
          to label %bb.u unwind label %bb.v

bb.v:                                             ; preds = %.body.thread
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE8try_recvB2b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 9)) %0, ptr nofree noundef nonnull align 128 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.c = call fastcc noundef zeroext i1 @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE10start_recvB2b_(ptr noundef nonnull align 128 %1, ptr noalias nofree noundef align 8 dereferenceable(40) %i.b)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.d, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.f, align 8, !noundef !4
  %.val1 = load i64, ptr %i.e, align 8
  call fastcc void @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size4size8TextSizeNtCsdovh4xi6v3I_4span4SpanEEE4readB2b_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr %.val, i64 %.val1)
  %i.g = load i64, ptr %i.a, align 8, !range !197, !noundef !4
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.i, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE4recvB37_:bb.a
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !308
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECsdovh4xi6v3I_4span.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context5InnerE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #20
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECsdovh4xi6v3I_4span.exit.i.i.i unwind label %bb.j, !noalias !267

_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB3w_3IdxB3Z_EEB6m_EE4recvs_0uEs_0uEB5D_.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsdovh4xi6v3I_4span.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB1E_3IdxB27_EEB4u_EE4recvs_0uEs0_0B3L_(ptr nonnull %i.f) #22, !noalias !267
  br label %_RINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB1C_3IdxB25_EEB4s_EE4recvs_0uEB3J_.exit

_RINvMNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB1C_3IdxB25_EEB4s_EE4recvs_0uEB3J_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextECsdovh4xi6v3I_4span.exit19.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc7context7ContextEECsdovh4xi6v3I_4span.exit.i.i.i, %_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB3w_3IdxB3Z_EEB6m_EE4recvs_0uEs_0uEB5D_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !267
  %i.at = call fastcc noundef zeroext i1 @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE10start_recvB37_(ptr noundef nonnull align 128 %1, ptr noalias nofree noundef align 8 dereferenceable(40) %i.h)
  br i1 %i.at, label %._crit_edge, label %bb.b

.split:                                           ; preds = %bb.c
  %i.au = extractvalue { i64, i32 } %i.t, 1       ; 2 uses
  %i.av = icmp ult i32 %i.au, 1000000000
  call void @llvm.assume(i1 %i.av)
  %.not7 = icmp samesign ult i32 %i.au, %i.p
  br i1 %.not7, label %bb.d, label %bb.r

bb.q:                                             ; preds = %bb.c
  %.not6 = icmp slt i64 %i.u, %i.s
  br i1 %.not6, label %bb.d, label %bb.r

bb.r:                                             ; preds = %.split, %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.aw, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.t:                                             ; preds = %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ax, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.g, i64 88, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE4sendB37_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5 = alloca [80 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [80 x i8], align 8            ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128, !noalias !315 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8, !noalias !315
  %i.e = and i64 %i.b, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE10start_sendB37_.exit.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE10start_sendB37_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload29 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx30, i64 80, i1 false)
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE5writeB37_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.03.070.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.p, %.backedge.i ] ; 3 uses
  %.sroa.07.069.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.q, %.backedge.i ] ; 2 uses
  %.sroa.0.068.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.0.be.i, %.backedge.i ] ; 12 uses
  %.sroa.041.067.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.041.0.be.i, %.backedge.i ] ; 4 uses
  %i.h = lshr exact i64 %.sroa.03.070.i, 1
  %i.i = and i64 %i.h, 31                         ; 3 uses
  %i.j = icmp eq i64 %i.i, 31
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %.sroa.0.068.i, 7
  br i1 %i.k, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %bb.p, !noalias !315

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.068.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i
  %i.l = mul nuw i32 %.sroa.0.068.i, %.sroa.0.068.i ; 2 uses
  %xtraiter68 = and i32 %i.l, 7                   ; 3 uses
  %i.m = icmp ult i32 %.sroa.0.068.i, 3
  br i1 %i.m, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter72 = and i32 %i.l, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter73 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter73.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !315
  tail call void @llvm.x86.sse2.pause(), !noalias !315
  tail call void @llvm.x86.sse2.pause(), !noalias !315
  tail call void @llvm.x86.sse2.pause(), !noalias !315
  tail call void @llvm.x86.sse2.pause(), !noalias !315
  tail call void @llvm.x86.sse2.pause(), !noalias !315
  tail call void @llvm.x86.sse2.pause(), !noalias !315
  tail call void @llvm.x86.sse2.pause(), !noalias !315
  %niter73.next.7 = add i32 %niter73, 8           ; 2 uses
  %niter73.ncmp.7 = icmp eq i32 %niter73.next.7, %unroll_iter72
  br i1 %niter73.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.b
  %i.n = icmp eq i64 %i.i, 30                     ; 2 uses
  %.not.i = icmp eq ptr %.sroa.041.067.i, null
  %or.cond.i = select i1 %i.n, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB2m_3IdxB2P_EEB5c_EEEEEB4t_.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod70.not = icmp eq i32 %xtraiter68, 0
  br i1 %lcmp.mod70.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod71 = icmp ne i32 %xtraiter68, 0
  tail call void @llvm.assume(i1 %lcmp.mod71)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter69 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter69.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !315
  %epil.iter69.next = add i32 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i32 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !318

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i.i, %bb.d
  %i.o = add i32 %.sroa.0.068.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %.loopexit62.i, %bb.k, %bb.j, %.loopexit.i
  %.sroa.041.0.be.i = phi ptr [ %.sroa.041.3.i, %.loopexit62.i ], [ %.sroa.041.067.i, %.loopexit.i ], [ %i.v, %bb.j ], [ %i.v, %bb.k ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %i.af, %.loopexit62.i ], [ %i.o, %.loopexit.i ], [ %.sroa.0.068.i, %bb.j ], [ %.sroa.0.068.i, %bb.k ]
  %i.p = load atomic i64, ptr %i.a acquire, align 128, !noalias !315 ; 2 uses
  %i.q = load atomic ptr, ptr %i.c acquire, align 8, !noalias !315
  %i.r = and i64 %i.p, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %._crit_edge.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB2m_3IdxB2P_EEB5c_EEEEEB4t_.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.041.3.i = phi ptr [ %.sroa.041.067.i, %bb.e ], [ %i.u, %bb.f ] ; 8 uses
  %i.t = icmp eq ptr %.sroa.07.069.i, null
  br i1 %i.t, label %bb.g, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.u = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB1w_3IdxB1Z_EEB4m_EEE13new_zeroed_inB3D_()
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB2m_3IdxB2P_EEB5c_EEEEEB4t_.exit.i unwind label %.body.thread24.loopexit

bb.g:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB2m_3IdxB2P_EEB5c_EEEEEB4t_.exit.i
  %i.v = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsbSS6DM8SDEO_5alloc5boxedINtB4_3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB1w_3IdxB1Z_EEB4m_EEE13new_zeroed_inB3D_()
          to label %bb.h unwind label %bb.p, !noalias !315 ; 5 uses

bb.h:                                             ; preds = %bb.g
  %i.w = cmpxchg ptr %i.c, ptr null, ptr %i.v release monotonic, align 8, !noalias !315
  %i.x = extractvalue { ptr, i1 } %i.w, 1
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.v, ptr %i.g release, align 8, !noalias !315
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.y = icmp eq ptr %.sroa.041.3.i, null
  br i1 %i.y, label %.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.3.i, i64 noundef 2984, i64 noundef 8) #13, !noalias !315
  br label %.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB2m_3IdxB2P_EEB5c_EEEEEB4t_.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.069.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std4sync4mpmc4list5BlockTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB2m_3IdxB2P_EEB5c_EEEEEB4t_.exit.i ], [ %i.v, %bb.i ] ; 3 uses
  %i.z = add i64 %.sroa.03.070.i, 2
  %i.aa = cmpxchg weak ptr %i.a, i64 %.sroa.03.070.i, i64 %i.z seq_cst acquire, align 8, !noalias !315
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.m, label %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i

_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i: ; preds = %bb.l
  %.not.i27.i = icmp eq i32 %.sroa.0.068.i, 0
  br i1 %.not.i27.i, label %.loopexit62.i, label %.lr.ph.i30.i.preheader

.lr.ph.i30.i.preheader:                           ; preds = %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i
  %..i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.068.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %..i.i.i, %..i.i.i         ; 2 uses
  %xtraiter = and i32 %5, 5                       ; 3 uses
  %i.ac = icmp ult i32 %.sroa.0.068.i, 3
  br i1 %i.ac, label %.lr.ph.i30.i.epil.preheader, label %.lr.ph.i30.i.preheader.new

.lr.ph.i30.i.preheader.new:                       ; preds = %.lr.ph.i30.i.preheader
  %unroll_iter = and i32 %5, 56
  br label %.lr.ph.i30.i

.lr.ph.i30.i:                                     ; preds = %.lr.ph.i30.i, %.lr.ph.i30.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i30.i.preheader.new ], [ %niter.next.7, %.lr.ph.i30.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !315
  tail call void @llvm.x86.sse2.pause(), !noalias !315
  tail call void @llvm.x86.sse2.pause(), !noalias !315
  tail call void @llvm.x86.sse2.pause(), !noalias !315
  tail call void @llvm.x86.sse2.pause(), !noalias !315
  tail call void @llvm.x86.sse2.pause(), !noalias !315
  tail call void @llvm.x86.sse2.pause(), !noalias !315
  tail call void @llvm.x86.sse2.pause(), !noalias !315
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit62.i.loopexit.unr-lcssa, label %.lr.ph.i30.i

bb.m:                                             ; preds = %bb.l
  br i1 %i.n, label %bb.n, label %._crit_edge.i

bb.n:                                             ; preds = %bb.m
  %.not15.i = icmp eq ptr %.sroa.041.3.i, null
  br i1 %.not15.i, label %bb.o, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE10start_sendB37_.exit.thread32, !prof !8

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
          to label %.noexc5 unwind label %.body.thread24.loopexit.split-lp

.noexc5:                                          ; preds = %bb.o
  unreachable

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE10start_sendB37_.exit.thread32: ; preds = %bb.n
  store atomic ptr %.sroa.041.3.i, ptr %i.c release, align 8, !noalias !315
  %i.ad = atomicrmw add ptr %i.a, i64 2 release, align 8, !noalias !315 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i, i64 2976
  store atomic ptr %.sroa.041.3.i, ptr %i.ae release, align 8, !noalias !315
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload35 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx36, i64 80, i1 false)
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE5writeB37_.exit.thread

.loopexit62.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i30.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit62.i, label %.lr.ph.i30.i.epil.preheader

.lr.ph.i30.i.epil.preheader:                      ; preds = %.loopexit62.i.loopexit.unr-lcssa, %.lr.ph.i30.i.preheader
  %lcmp.mod67 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod67)
  br label %.lr.ph.i30.i.epil

.lr.ph.i30.i.epil:                                ; preds = %.lr.ph.i30.i.epil, %.lr.ph.i30.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i30.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i30.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !315
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit62.i, label %.lr.ph.i30.i.epil, !llvm.loop !319

.loopexit62.i:                                    ; preds = %.loopexit62.i.loopexit.unr-lcssa, %.lr.ph.i30.i.epil, %_RNvMs6_NtCshzWfHUSfYae_4core3numm15overflowing_pow.exit.i26.i
  %i.af = add i32 %.sroa.0.068.i, 1
  br label %.backedge.i

bb.p:                                             ; preds = %bb.g, %bb.d
  %.sroa.041.1.ph.i = phi ptr [ %.sroa.041.067.i, %bb.d ], [ %.sroa.041.3.i, %bb.g ] ; 2 uses
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = icmp eq ptr %.sroa.041.1.ph.i, null
  br i1 %i.ag, label %.body.thread, label %.thread53.i

.thread53.i:                                      ; preds = %bb.p
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.1.ph.i, i64 noundef 2984, i64 noundef 8) #13, !noalias !315
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.m
  %.sroa.9.0 = phi i64 [ %i.i, %bb.m ], [ 0, %.backedge.i ]
  %.sroa.47.0 = phi ptr [ %.sroa.07.2.i, %bb.m ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.041.4.i = phi ptr [ %.sroa.041.3.i, %bb.m ], [ %.sroa.041.0.be.i, %.backedge.i ] ; 2 uses
  %i.ah = icmp eq ptr %.sroa.041.4.i, null
  br i1 %i.ah, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE10start_sendB37_.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.4.i, i64 noundef 2984, i64 noundef 8) #13, !noalias !315
  br label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE10start_sendB37_.exit

.body.thread24.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread24.loopexit.split-lp:                 ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE10start_sendB37_.exit: ; preds = %bb.q, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.011.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, i64 80, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.ai = icmp eq ptr %.sroa.47.0, null
  br i1 %i.ai, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE5writeB37_.exit, label %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE5writeB37_.exit.thread

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE5writeB37_.exit.thread: ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE10start_sendB37_.exit.thread32, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE10start_sendB37_.exit
  %.sroa.011.0.copyload39 = phi i64 [ %.sroa.011.0.copyload35, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE10start_sendB37_.exit.thread32 ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE10start_sendB37_.exit ]
  %.sroa.47.138 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE10start_sendB37_.exit.thread32 ], [ %.sroa.47.0, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE10start_sendB37_.exit ]
  %.sroa.9.137 = phi i64 [ 30, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE10start_sendB37_.exit.thread32 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE10start_sendB37_.exit ]
  %i.aj = getelementptr inbounds nuw [96 x i8], ptr %.sroa.47.138, i64 %.sroa.9.137 ; 3 uses
  store i64 %.sroa.011.0.copyload39, ptr %i.aj, align 8, !noalias !320
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5, i64 80, i1 false), !noalias !320
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %i.al = atomicrmw or ptr %i.ak, i64 1 release, align 8, !noalias !325 ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.am) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.s

_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE5writeB37_.exit: ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE10start_sendB37_.exit, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE10start_sendB37_.exit.thread
  %.sroa.011.0.copyload31 = phi i64 [ %.sroa.011.0.copyload29, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE10start_sendB37_.exit.thread ], [ %.sroa.011.0.copyload, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE10start_sendB37_.exit ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5, i64 80, i1 false), !alias.scope !325
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %.not = icmp eq i64 %.sroa.011.0.copyload31, -1
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE5writeB37_.exit
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6, i64 80, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.011.0.copyload31, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.t

bb.s:                                             ; preds = %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE5writeB37_.exit.thread, %_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE5writeB37_.exit
  store i64 2, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.u:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body22

.body.thread:                                     ; preds = %.body.thread24.loopexit, %.body.thread24.loopexit.split-lp, %bb.p, %.thread53.i
  %eh.lpad-body22 = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.p ], [ %lpad.thr_comm.i, %.thread53.i ], [ %lpad.loopexit, %.body.thread24.loopexit ], [ %lpad.loopexit.split-lp, %.body.thread24.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtBF_3IdxB18_EEB3v_EEB2M_(ptr noalias nofree noundef align 8 dereferenceable(88) %2) #24
          to label %bb.u unwind label %bb.v

bb.v:                                             ; preds = %.body.thread
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE8try_recvB37_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 9)) %0, ptr nofree noundef nonnull align 128 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  %i.c = call fastcc noundef zeroext i1 @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE10start_recvB37_(ptr noundef nonnull align 128 %1, ptr noalias nofree noundef align 8 dereferenceable(40) %i.b)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.d, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.f, align 8, !noundef !4
  %.val1 = load i64, ptr %i.e, align 8
  call fastcc void @_RNvMs1_NtNtNtCscAsMj0W7j8b_3std4sync4mpmc4listINtB5_7ChannelTINtCsbq3eHDLgq0Z_8la_arena5ArenaTINtNtCs9GitHPCrz2Q_5rowan3ast13SyntaxNodePtrNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENtNtCsdovh4xi6v3I_4span6ast_id15ErasedFileAstIdEEINtNtCsaH4Z5sDJ4bD_9hashbrown5table9HashTableINtB10_3IdxB1t_EEB3Q_EE4readB37_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(88) %i.a, ptr %.val, i64 %.val1)
  %i.g = load i64, ptr %i.a, align 8, !range !197, !noundef !4
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.i, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.g
end_hunk_1
