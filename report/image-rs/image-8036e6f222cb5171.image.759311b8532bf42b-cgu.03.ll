inline.NumInlined: 1816
inline.NumDeleted: 1049
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4recvCsa5QsYiPB8Gl_5image:bb.a
bb.aj:                                            ; preds = %bb.af
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = atomicrmw sub ptr %i.dn, i64 1 release, align 8, !noalias !2816
  %i.ef = icmp eq i64 %i.ee, 1
  br i1 %i.ef, label %bb.ak, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit.i.i.i

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.ae, !noalias !2775

_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB3S_5error5ErrorEE4recvs_0uEs_0uECsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i
  call fastcc void @_RNCINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs1_NtB7_4listINtB1b_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2g_5error5ErrorEE4recvs_0uEs0_0Csa5QsYiPB8Gl_5image(ptr nonnull %i.f) #41, !noalias !2775
  br label %_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2e_5error5ErrorEE4recvs_0uECsa5QsYiPB8Gl_5image.exit

_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2e_5error5ErrorEE4recvs_0uECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextECsa5QsYiPB8Gl_5image.exit19.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context7ContextEECsa5QsYiPB8Gl_5image.exit.i.i.i, %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB3S_5error5ErrorEE4recvs_0uEs_0uECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2775
  br label %bb.b

.split:                                           ; preds = %bb.x
  %i.eg = extractvalue { i64, i32 } %i.dg, 1      ; 2 uses
  %i.eh = icmp ult i32 %i.eg, 1000000000
  call void @llvm.assume(i1 %i.eh)
  %.not33 = icmp samesign ult i32 %i.eg, %i.bi
  br i1 %.not33, label %bb.y, label %bb.am

bb.al:                                            ; preds = %bb.x
  %.not32 = icmp slt i64 %i.dh, %i.df
  br i1 %.not32, label %bb.y, label %bb.am

bb.am:                                            ; preds = %.split, %bb.al
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ei, align 8
  br label %bb.an

bb.an:                                            ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit.thread, %bb.ao, %bb.am
  %.sink = phi i64 [ -2, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.026.0.copyload, %bb.ao ], [ -2, %bb.am ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.h, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.ej, align 8
  br label %bb.an

bb.ao:                                            ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.425.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.427, i64 72, i1 false)
  br label %bb.an
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4sendCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 128 %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %2, i64 %3, i32 noundef range(i32 -1, 1000000000) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.5 = alloca [72 x i8], align 8            ; 10 uses
  %.sroa.6 = alloca [72 x i8], align 8            ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 128, !noalias !2823 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.g = load atomic ptr, ptr %i.f acquire, align 8, !noalias !2823
  %i.h = and i64 %i.e, 1
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit.thread

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.017.0.copyload38 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx39, i64 72, i1 false)
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.03.070.i = phi i64 [ %i.e, %.lr.ph.i ], [ %i.s, %.backedge.i ] ; 3 uses
  %.sroa.07.069.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.t, %.backedge.i ] ; 2 uses
  %.sroa.0.068.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.0.be.i, %.backedge.i ] ; 12 uses
  %.sroa.041.067.i = phi ptr [ null, %.lr.ph.i ], [ %.sroa.041.0.be.i, %.backedge.i ] ; 4 uses
  %i.k = lshr exact i64 %.sroa.03.070.i, 1
  %i.l = and i64 %i.k, 31                         ; 3 uses
  %i.m = icmp eq i64 %i.l, 31
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ult i32 %.sroa.0.068.i, 7
  br i1 %i.n, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %bb.p, !noalias !2823

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.c
  %.not.i.i = icmp eq i32 %.sroa.0.068.i, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i
  %i.o = mul nuw i32 %.sroa.0.068.i, %.sroa.0.068.i ; 2 uses
  %xtraiter105 = and i32 %i.o, 7                  ; 3 uses
  %i.p = icmp ult i32 %.sroa.0.068.i, 3
  br i1 %i.p, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter109 = and i32 %i.o, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter110 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter110.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !2823
  tail call void @llvm.x86.sse2.pause(), !noalias !2823
  tail call void @llvm.x86.sse2.pause(), !noalias !2823
  tail call void @llvm.x86.sse2.pause(), !noalias !2823
  tail call void @llvm.x86.sse2.pause(), !noalias !2823
  tail call void @llvm.x86.sse2.pause(), !noalias !2823
  tail call void @llvm.x86.sse2.pause(), !noalias !2823
  tail call void @llvm.x86.sse2.pause(), !noalias !2823
  %niter110.next.7 = add i32 %niter110, 8         ; 2 uses
  %niter110.ncmp.7 = icmp eq i32 %niter110.next.7, %unroll_iter109
  br i1 %niter110.ncmp.7, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.b
  %i.q = icmp eq i64 %i.l, 30                     ; 2 uses
  %.not.i = icmp eq ptr %.sroa.041.067.i, null
  %or.cond.i = select i1 %i.q, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2I_5error5ErrorEEEEECsa5QsYiPB8Gl_5image.exit.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod107.not = icmp eq i32 %xtraiter105, 0
  br i1 %lcmp.mod107.not, label %.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod108 = icmp ne i32 %xtraiter105, 0
  tail call void @llvm.assume(i1 %lcmp.mod108)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter106 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter106.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !2823
  %epil.iter106.next = add i32 %epil.iter106, 1   ; 2 uses
  %epil.iter106.cmp.not = icmp eq i32 %epil.iter106.next, %xtraiter105
  br i1 %epil.iter106.cmp.not, label %.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !2826

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i, %bb.d
  %i.r = add i32 %.sroa.0.068.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %.loopexit62.i, %bb.k, %bb.j, %.loopexit.i
  %.sroa.041.0.be.i = phi ptr [ %.sroa.041.3.i, %.loopexit62.i ], [ %.sroa.041.067.i, %.loopexit.i ], [ %i.y, %bb.j ], [ %i.y, %bb.k ] ; 2 uses
  %.sroa.0.0.be.i = phi i32 [ %i.ah, %.loopexit62.i ], [ %i.r, %.loopexit.i ], [ %.sroa.0.068.i, %bb.j ], [ %.sroa.0.068.i, %bb.k ]
  %i.s = load atomic i64, ptr %i.d acquire, align 128, !noalias !2823 ; 2 uses
  %i.t = load atomic ptr, ptr %i.f acquire, align 8, !noalias !2823
  %i.u = and i64 %i.s, 1
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.b, label %._crit_edge.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2I_5error5ErrorEEEEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.041.3.i = phi ptr [ %.sroa.041.067.i, %bb.e ], [ %i.x, %bb.f ] ; 8 uses
  %i.w = icmp eq ptr %.sroa.07.069.i, null
  br i1 %i.w, label %bb.g, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.x = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4list5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB28_5error5ErrorEEE13new_zeroed_inCsa5QsYiPB8Gl_5image()
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2I_5error5ErrorEEEEECsa5QsYiPB8Gl_5image.exit.i unwind label %.body.loopexit

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2I_5error5ErrorEEEEECsa5QsYiPB8Gl_5image.exit.i
  %i.y = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4list5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB28_5error5ErrorEEE13new_zeroed_inCsa5QsYiPB8Gl_5image()
          to label %bb.h unwind label %bb.p, !noalias !2823 ; 5 uses

bb.h:                                             ; preds = %bb.g
  %i.z = cmpxchg ptr %i.f, ptr null, ptr %i.y release monotonic, align 8, !noalias !2823
  %i.aa = extractvalue { ptr, i1 } %i.z, 1
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store atomic ptr %i.y, ptr %i.j release, align 8, !noalias !2823
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ab = icmp eq ptr %.sroa.041.3.i, null
  br i1 %i.ab, label %.backedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.3.i, i64 noundef 2736, i64 noundef 8) #33, !noalias !2823
  br label %.backedge.i

bb.l:                                             ; preds = %bb.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2I_5error5ErrorEEEEECsa5QsYiPB8Gl_5image.exit.i
  %.sroa.07.2.i = phi ptr [ %.sroa.07.069.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxINtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4list5BlockINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2I_5error5ErrorEEEEECsa5QsYiPB8Gl_5image.exit.i ], [ %i.y, %bb.i ] ; 3 uses
  %i.ac = add i64 %.sroa.03.070.i, 2
  %i.ad = cmpxchg weak ptr %i.d, i64 %.sroa.03.070.i, i64 %i.ac seq_cst acquire, align 8, !noalias !2823
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %bb.m, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i26.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i26.i: ; preds = %bb.l
  %.not.i27.i = icmp eq i32 %.sroa.0.068.i, 0
  br i1 %.not.i27.i, label %.loopexit62.i, label %.lr.ph.i30.i.preheader

.lr.ph.i30.i.preheader:                           ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i26.i
  %..i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.068.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %..i.i.i, %..i.i.i         ; 2 uses
  %xtraiter = and i32 %5, 5                       ; 3 uses
  %i.af = icmp ult i32 %.sroa.0.068.i, 3
  br i1 %i.af, label %.lr.ph.i30.i.epil.preheader, label %.lr.ph.i30.i.preheader.new

.lr.ph.i30.i.preheader.new:                       ; preds = %.lr.ph.i30.i.preheader
  %unroll_iter = and i32 %5, 56
  br label %.lr.ph.i30.i

.lr.ph.i30.i:                                     ; preds = %.lr.ph.i30.i, %.lr.ph.i30.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i30.i.preheader.new ], [ %niter.next.7, %.lr.ph.i30.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !2823
  tail call void @llvm.x86.sse2.pause(), !noalias !2823
  tail call void @llvm.x86.sse2.pause(), !noalias !2823
  tail call void @llvm.x86.sse2.pause(), !noalias !2823
  tail call void @llvm.x86.sse2.pause(), !noalias !2823
  tail call void @llvm.x86.sse2.pause(), !noalias !2823
  tail call void @llvm.x86.sse2.pause(), !noalias !2823
  tail call void @llvm.x86.sse2.pause(), !noalias !2823
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit62.i.loopexit.unr-lcssa, label %.lr.ph.i30.i

bb.m:                                             ; preds = %bb.l
  br i1 %i.q, label %bb.n, label %._crit_edge.i

bb.n:                                             ; preds = %bb.m
  %.not15.i = icmp eq ptr %.sroa.041.3.i, null
  br i1 %.not15.i, label %bb.o, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit.thread41, !prof !161

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #36
          to label %.noexc5 unwind label %.body.loopexit.split-lp

.noexc5:                                          ; preds = %bb.o
  unreachable

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit.thread41: ; preds = %bb.n
  store atomic ptr %.sroa.041.3.i, ptr %i.f release, align 8, !noalias !2823
  %i.ag = atomicrmw add ptr %i.d, i64 2 release, align 8, !noalias !2823 ; 0 uses
  store atomic ptr %.sroa.041.3.i, ptr %.sroa.07.2.i release, align 8, !noalias !2823
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.017.0.copyload44 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx45, i64 72, i1 false)
  br label %bb.r

.loopexit62.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i30.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit62.i, label %.lr.ph.i30.i.epil.preheader

.lr.ph.i30.i.epil.preheader:                      ; preds = %.loopexit62.i.loopexit.unr-lcssa, %.lr.ph.i30.i.preheader
  %lcmp.mod104 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph.i30.i.epil

.lr.ph.i30.i.epil:                                ; preds = %.lr.ph.i30.i.epil, %.lr.ph.i30.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i30.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i30.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !2823
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit62.i, label %.lr.ph.i30.i.epil, !llvm.loop !2827

.loopexit62.i:                                    ; preds = %.loopexit62.i.loopexit.unr-lcssa, %.lr.ph.i30.i.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i26.i
  %i.ah = add i32 %.sroa.0.068.i, 1
  br label %.backedge.i

bb.p:                                             ; preds = %bb.g, %bb.d
  %.sroa.041.1.ph.i = phi ptr [ %.sroa.041.067.i, %bb.d ], [ %.sroa.041.3.i, %bb.g ] ; 2 uses
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = icmp eq ptr %.sroa.041.1.ph.i, null
  br i1 %i.ai, label %.body.thread, label %.thread53.i

.thread53.i:                                      ; preds = %bb.p
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.1.ph.i, i64 noundef 2736, i64 noundef 8) #33, !noalias !2823
  br label %.body.thread

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.m
  %.sroa.9.0 = phi i64 [ %i.l, %bb.m ], [ 0, %.backedge.i ]
  %.sroa.413.0 = phi ptr [ %.sroa.07.2.i, %bb.m ], [ null, %.backedge.i ] ; 2 uses
  %.sroa.041.4.i = phi ptr [ %.sroa.041.3.i, %bb.m ], [ %.sroa.041.0.be.i, %.backedge.i ] ; 2 uses
  %i.aj = icmp eq ptr %.sroa.041.4.i, null
  br i1 %i.aj, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.4.i, i64 noundef 2736, i64 noundef 8) #33, !noalias !2823
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit

.body.loopexit:                                   ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.loopexit.split-lp:                          ; preds = %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.q, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.017.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx, i64 72, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2831)
  %i.ak = icmp eq ptr %.sroa.413.0, null
  br i1 %i.ak, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit, label %bb.r

bb.r:                                             ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit.thread41, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit
  %.sroa.017.0.copyload48 = phi i64 [ %.sroa.017.0.copyload44, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit.thread41 ], [ %.sroa.017.0.copyload, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit ]
  %.sroa.413.147 = phi ptr [ %.sroa.07.2.i, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit.thread41 ], [ %.sroa.413.0, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit ]
  %.sroa.9.146 = phi i64 [ 30, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit.thread41 ], [ %.sroa.9.0, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_sendCsa5QsYiPB8Gl_5image.exit ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.413.147, i64 8
  %i.am = getelementptr inbounds nuw [88 x i8], ptr %i.al, i64 %.sroa.9.146 ; 3 uses
  store i64 %.sroa.017.0.copyload48, ptr %i.am, align 8, !noalias !2828
  %.sroa.5.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx19, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5, i64 72, i1 false), !noalias !2828
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = atomicrmw or ptr %i.an, i64 1 release, align 8, !noalias !2833 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 3 uses
  %i.aq = load atomic i8, ptr %i.ap seq_cst, align 8, !noalias !2833
  %.not.i.i6 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i6, label %.noexc7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE5writeCsa5QsYiPB8Gl_5image.exit.thread

.noexc7:                                          ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2833
  call void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.ar)
  call void @llvm.experimental.noalias.scope.decl(metadata !2834)
  %i.as = load i64, ptr %i.c, align 8, !range !199, !alias.scope !2834, !noalias !2837, !noundef !12
  %i.at = trunc nuw i64 %i.as to i1
  br i1 %i.at, label %bb.s, label %bb.x, !prof !161

bb.s:                                             ; preds = %.noexc7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2839
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !2834, !noalias !2837, !nonnull !12, !align !141, !noundef !12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ax = load i8, ptr %i.aw, align 8, !range !102, !alias.scope !2834, !noalias !2837, !noundef !12
  store ptr %i.av, ptr %i.a, align 8, !noalias !2839
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ax, ptr %i.ay, align 8, !noalias !2839
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #36
          to label %bb.u unwind label %bb.t, !noalias !2840

bb.t:                                             ; preds = %bb.s
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %.body.thread29 unwind label %bb.v, !noalias !2840

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !2840
  unreachable

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.af, %.noexc6.i.i, %bb.ad, %.lr.ph.i.preheader.i.i.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsa5QsYiPB8Gl_5image(ptr nonnull %i.bd, i8 %i.bf) #37
          to label %.body.thread29 unwind label %bb.an, !noalias !2833

bb.x:                                             ; preds = %.noexc7
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !2834, !noalias !2837, !nonnull !12, !align !141, !noundef !12 ; 8 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bf = load i8, ptr %i.be, align 8, !range !102, !alias.scope !2834, !noalias !2837, !noundef !12 ; 2 uses
  %i.bg = trunc nuw i8 %i.bf to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2833
  %i.bh = load atomic i8, ptr %i.ap seq_cst, align 8, !noalias !2833
  %.not2.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not2.i.i, label %bb.y, label %bb.aj

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2833
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2841)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !2841, !noalias !2844, !noundef !12 ; 4 uses
  %i.bl = icmp ult i64 %i.bk, 384307168202282326
  call void @llvm.assume(i1 %i.bl)
  %i.bm = icmp eq i64 %i.bk, 0
  br i1 %i.bm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc5waker5EntryEECsa5QsYiPB8Gl_5image.exit.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.y
  %i.bn = invoke noundef i64 @_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyhE4withNCNvNtNtNtBa_4sync4mpmc5waker17current_thread_id0jECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @78)
          to label %.noexc.i.i unwind label %bb.w, !noalias !2833

.noexc.i.i:                                       ; preds = %.lr.ph.i.preheader.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !2841, !noalias !2844, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.bk, 24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i
end_hunk_0
