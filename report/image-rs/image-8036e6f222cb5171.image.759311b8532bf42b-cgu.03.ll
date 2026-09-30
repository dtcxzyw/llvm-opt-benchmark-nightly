Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.03?download=true
inline.NumInlined: 1816
inline.NumDeleted: 1049
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE20disconnect_receiversCsa5QsYiPB8Gl_5image:bb.a
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter43.next.7 = add i32 %niter43, 8           ; 2 uses
  %niter43.ncmp.7 = icmp eq i32 %niter43.next.7, %unroll_iter42
  br i1 %niter43.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod40.not = icmp eq i32 %xtraiter38, 0
  br i1 %lcmp.mod40.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod41 = icmp ne i32 %xtraiter38, 0
  tail call void @llvm.assume(i1 %lcmp.mod41)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter39 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter39.next, %.lr.ph.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter39.next = add i32 %epil.iter39, 1     ; 2 uses
  %epil.iter39.cmp.not = icmp eq i32 %epil.iter39.next, %xtraiter38
  br i1 %epil.iter39.cmp.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !2747

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i, %bb.g
  %i.ai = add i32 %.sroa.0.02.i.i, 1
  %i.aj = load atomic ptr, ptr %.sroa.011.158.i acquire, align 8
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.lr.ph.i31.i, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE9wait_nextCsa5QsYiPB8Gl_5image.exit.i

_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE9wait_nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.f
  %i.al = load atomic ptr, ptr %.sroa.011.158.i acquire, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.158.i, i64 noundef 2736, i64 noundef 8) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i

bb.h:                                             ; preds = %.lr.ph61.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.011.158.i, i64 8
  %i.an = getelementptr inbounds nuw [88 x i8], ptr %i.am, i64 %i.ac ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 80 ; 2 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8
  %i.aq = and i64 %i.ap, 1
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.lr.ph.i32.i, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i

.lr.ph.i32.i:                                     ; preds = %bb.h, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i
  %.sroa.0.02.i33.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i ], [ 0, %bb.h ] ; 6 uses
  %i.as = icmp ult i32 %.sroa.0.02.i33.i, 7
  br i1 %i.as, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i36.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i32.i
  tail call void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i36.i: ; preds = %.lr.ph.i32.i
  %.not.i.i37.i = icmp eq i32 %.sroa.0.02.i33.i, 0
  br i1 %.not.i.i37.i, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.preheader

.lr.ph.i.i40.i.preheader:                         ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i36.i
  %i.at = mul nuw i32 %.sroa.0.02.i33.i, %.sroa.0.02.i33.i ; 2 uses
  %xtraiter32 = and i32 %i.at, 7                  ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02.i33.i, 3
  br i1 %i.au, label %.lr.ph.i.i40.i.epil.preheader, label %.lr.ph.i.i40.i.preheader.new

.lr.ph.i.i40.i.preheader.new:                     ; preds = %.lr.ph.i.i40.i.preheader
  %unroll_iter36 = and i32 %i.at, 56
  br label %.lr.ph.i.i40.i

.lr.ph.i.i40.i:                                   ; preds = %.lr.ph.i.i40.i, %.lr.ph.i.i40.i.preheader.new
  %niter37 = phi i32 [ 0, %.lr.ph.i.i40.i.preheader.new ], [ %niter37.next.7, %.lr.ph.i.i40.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter37.next.7 = add i32 %niter37, 8           ; 2 uses
  %niter37.ncmp.7 = icmp eq i32 %niter37.next.7, %unroll_iter36
  br i1 %niter37.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, label %.lr.ph.i.i40.i

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i40.i
  %lcmp.mod34.not = icmp eq i32 %xtraiter32, 0
  br i1 %lcmp.mod34.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.epil.preheader

.lr.ph.i.i40.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.preheader
  %lcmp.mod35 = icmp ne i32 %xtraiter32, 0
  tail call void @llvm.assume(i1 %lcmp.mod35)
  br label %.lr.ph.i.i40.i.epil

.lr.ph.i.i40.i.epil:                              ; preds = %.lr.ph.i.i40.i.epil, %.lr.ph.i.i40.i.epil.preheader
  %epil.iter33 = phi i32 [ 0, %.lr.ph.i.i40.i.epil.preheader ], [ %epil.iter33.next, %.lr.ph.i.i40.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter33.next = add i32 %epil.iter33, 1     ; 2 uses
  %epil.iter33.cmp.not = icmp eq i32 %epil.iter33.next, %xtraiter32
  br i1 %epil.iter33.cmp.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, label %.lr.ph.i.i40.i.epil, !llvm.loop !2748

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i36.i, %bb.i
  %i.av = add i32 %.sroa.0.02.i33.i, 1
  %i.aw = load atomic i64, ptr %i.ao acquire, align 8
  %i.ax = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i32.i, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i

_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i, %bb.h
  %i.az = load i64, ptr %i.an, align 8, !range !22, !alias.scope !2761, !noundef !7
  %.not.i44.i = icmp eq i64 %i.az, -1
  br i1 %.not.i44.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.an)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !2762 ; 2 uses
  %i.bb = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.bb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !2763, !nonnull !7, !noundef !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2764
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.m:                                             ; preds = %bb.j
  %.val.i.i.i.i = load i64, ptr %i.an, align 8, !alias.scope !2762 ; 2 uses
  %i.bd = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.bd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !2763, !nonnull !7, !noundef !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #33, !noalias !2765
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %i.ba

bb.o:                                             ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5error5ErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bf)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB11_5error5ErrorEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.o, %bb.n, %bb.m, %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE9wait_nextCsa5QsYiPB8Gl_5image.exit.i
  %.sroa.011.2.i = phi ptr [ %i.al, %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE9wait_nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.011.158.i, %bb.m ], [ %.sroa.011.158.i, %bb.n ], [ %.sroa.011.158.i, %bb.o ] ; 2 uses
  %i.bg = add i64 %.sroa.05.059.i, 2              ; 3 uses
  %i.bh = lshr i64 %i.bg, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.bh, %i.o
  br i1 %.not.i, label %._crit_edge62.i, label %.lr.ph61.i

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE20discard_all_messagesCsa5QsYiPB8Gl_5image.exit: ; preds = %._crit_edge62.i, %bb.e
  %i.bi = and i64 %.sroa.05.0.lcssa.i, -2
  store atomic i64 %i.bi, ptr %0 release, align 128
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE20discard_all_messagesCsa5QsYiPB8Gl_5image.exit
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4recvCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 -1, 1000000000) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.427 = alloca [72 x i8], align 8          ; 2 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %3, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB2e_5error5ErrorEE4recvs_0uECsa5QsYiPB8Gl_5image.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2809)
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !2809
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !2809
  br label %bb.c

bb.c:                                             ; preds = %.backedge.i, %bb.b
  %.sroa.0.048.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.048.be.i, %.backedge.i ] ; 14 uses
  %.sroa.012.0.i = phi ptr [ %i.q, %bb.b ], [ %i.ab, %.backedge.i ] ; 9 uses
  %.sroa.07.0.i = phi i64 [ %i.p, %bb.b ], [ %i.aa, %.backedge.i ] ; 6 uses
  %i.r = lshr i64 %.sroa.07.0.i, 1                ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = icmp ult i32 %.sroa.0.048.i, 7
  br i1 %i.u, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i, label %.backedge.sink.split.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.d
  %.not.i.i = icmp eq i32 %.sroa.0.048.i, 0
  br i1 %.not.i.i, label %.backedge.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i
  %i.v = mul nuw i32 %.sroa.0.048.i, %.sroa.0.048.i ; 2 uses
  %xtraiter108 = and i32 %i.v, 7                  ; 3 uses
  %i.w = icmp ult i32 %.sroa.0.048.i, 3
  br i1 %i.w, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter112 = and i32 %i.v, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter113 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter113.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  %niter113.next.7 = add i32 %niter113, 8         ; 2 uses
  %niter113.ncmp.7 = icmp eq i32 %niter113.next.7, %unroll_iter112
  br i1 %niter113.ncmp.7, label %.backedge.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.c
  %i.x = add i64 %.sroa.07.0.i, 2                 ; 2 uses
  %i.y = and i64 %.sroa.07.0.i, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.i

.backedge.sink.split.i:                           ; preds = %bb.k, %bb.d
  call void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now(), !noalias !2809
  br label %.backedge.i

.backedge.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod110.not = icmp eq i32 %xtraiter108, 0
  br i1 %lcmp.mod110.not, label %.backedge.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.backedge.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod111 = icmp ne i32 %xtraiter108, 0
  call void @llvm.assume(i1 %lcmp.mod111)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter109 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter109.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2809
  %epil.iter109.next = add i32 %epil.iter109, 1   ; 2 uses
  %epil.iter109.cmp.not = icmp eq i32 %epil.iter109.next, %xtraiter108
  br i1 %epil.iter109.cmp.not, label %.backedge.i, label %.lr.ph.i.i.epil, !llvm.loop !2768

.backedge.i.loopexit93.unr-lcssa:                 ; preds = %.lr.ph.i23.i
  %lcmp.mod104.not = icmp eq i32 %xtraiter102, 0
  br i1 %lcmp.mod104.not, label %.backedge.i, label %.lr.ph.i23.i.epil.preheader

.lr.ph.i23.i.epil.preheader:                      ; preds = %.backedge.i.loopexit93.unr-lcssa, %.lr.ph.i23.i.preheader
  %lcmp.mod105 = icmp ne i32 %xtraiter102, 0
  call void @llvm.assume(i1 %lcmp.mod105)
  br label %.lr.ph.i23.i.epil

.lr.ph.i23.i.epil:                                ; preds = %.lr.ph.i23.i.epil, %.lr.ph.i23.i.epil.preheader
  %epil.iter103 = phi i32 [ 0, %.lr.ph.i23.i.epil.preheader ], [ %epil.iter103.next, %.lr.ph.i23.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2809
  %epil.iter103.next = add i32 %epil.iter103, 1   ; 2 uses
  %epil.iter103.cmp.not = icmp eq i32 %epil.iter103.next, %xtraiter102
  br i1 %epil.iter103.cmp.not, label %.backedge.i, label %.lr.ph.i23.i.epil, !llvm.loop !2769

.backedge.i.loopexit94.unr-lcssa:                 ; preds = %.lr.ph.i35.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.backedge.i, label %.lr.ph.i35.i.epil.preheader

.lr.ph.i35.i.epil.preheader:                      ; preds = %.backedge.i.loopexit94.unr-lcssa, %.lr.ph.i35.i.preheader
  %lcmp.mod101 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod101)
  br label %.lr.ph.i35.i.epil

.lr.ph.i35.i.epil:                                ; preds = %.lr.ph.i35.i.epil, %.lr.ph.i35.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i35.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i35.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2809
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.backedge.i, label %.lr.ph.i35.i.epil, !llvm.loop !2770

.backedge.i:                                      ; preds = %.backedge.i.loopexit94.unr-lcssa, %.lr.ph.i35.i.epil, %.backedge.i.loopexit93.unr-lcssa, %.lr.ph.i23.i.epil, %.backedge.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i31.i, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i19.i, %.backedge.sink.split.i, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i
  %i.aa = load atomic i64, ptr %1 acquire, align 128, !noalias !2809
  %i.ab = load atomic ptr, ptr %i.l acquire, align 8, !noalias !2809
  %.sroa.0.048.be.i = add i32 %.sroa.0.048.i, 1
  br label %bb.c

bb.f:                                             ; preds = %bb.e
  fence seq_cst
  %i.ac = load atomic i64, ptr %i.m monotonic, align 128, !noalias !2809 ; 3 uses
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = icmp eq i64 %i.r, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.unshifted.i = xor i64 %i.ac, %.sroa.07.0.i
  %.not.i = icmp ult i64 %.not.unshifted.i, 64
  %4 = add i64 %.sroa.07.0.i, 3
  %spec.select.i = select i1 %.not.i, i64 %i.x, i64 %4
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.af = and i64 %i.ac, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_recvCsa5QsYiPB8Gl_5image.exit, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit.thread

bb.i:                                             ; preds = %bb.g, %bb.e
  %.sroa.01.0.i = phi i64 [ %i.x, %bb.e ], [ %spec.select.i, %bb.g ] ; 2 uses
  %i.ah = icmp eq ptr %.sroa.012.0.i, null
  br i1 %i.ah, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = cmpxchg weak ptr %1, i64 %.sroa.07.0.i, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !2809
  %i.aj = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.aj, label %bb.l, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i31.i

bb.k:                                             ; preds = %bb.i
  %i.ak = icmp ult i32 %.sroa.0.048.i, 7
  br i1 %i.ak, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i19.i, label %.backedge.sink.split.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i19.i: ; preds = %bb.k
  %.not.i20.i = icmp eq i32 %.sroa.0.048.i, 0
  br i1 %.not.i20.i, label %.backedge.i, label %.lr.ph.i23.i.preheader

.lr.ph.i23.i.preheader:                           ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i19.i
  %i.al = mul nuw i32 %.sroa.0.048.i, %.sroa.0.048.i ; 2 uses
  %xtraiter102 = and i32 %i.al, 7                 ; 3 uses
  %i.am = icmp ult i32 %.sroa.0.048.i, 3
  br i1 %i.am, label %.lr.ph.i23.i.epil.preheader, label %.lr.ph.i23.i.preheader.new

.lr.ph.i23.i.preheader.new:                       ; preds = %.lr.ph.i23.i.preheader
  %unroll_iter106 = and i32 %i.al, 56
  br label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.lr.ph.i23.i, %.lr.ph.i23.i.preheader.new
  %niter107 = phi i32 [ 0, %.lr.ph.i23.i.preheader.new ], [ %niter107.next.7, %.lr.ph.i23.i ]
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  %niter107.next.7 = add i32 %niter107, 8         ; 2 uses
  %niter107.ncmp.7 = icmp eq i32 %niter107.next.7, %unroll_iter106
  br i1 %niter107.ncmp.7, label %.backedge.i.loopexit93.unr-lcssa, label %.lr.ph.i23.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i31.i: ; preds = %bb.j
  %..i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.048.i, i32 6) ; 2 uses
  %i.an = mul nuw nsw i32 %..i.i.i, %..i.i.i      ; 2 uses
  %.not.i32.i = icmp eq i32 %.sroa.0.048.i, 0
  br i1 %.not.i32.i, label %.backedge.i, label %.lr.ph.i35.i.preheader

.lr.ph.i35.i.preheader:                           ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i31.i
  %xtraiter = and i32 %i.an, 5                    ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.048.i, 3
  br i1 %i.ao, label %.lr.ph.i35.i.epil.preheader, label %.lr.ph.i35.i.preheader.new

.lr.ph.i35.i.preheader.new:                       ; preds = %.lr.ph.i35.i.preheader
  %unroll_iter = and i32 %i.an, 56
  br label %.lr.ph.i35.i

.lr.ph.i35.i:                                     ; preds = %.lr.ph.i35.i, %.lr.ph.i35.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i35.i.preheader.new ], [ %niter.next.7, %.lr.ph.i35.i ]
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.backedge.i.loopexit94.unr-lcssa, label %.lr.ph.i35.i

bb.l:                                             ; preds = %bb.j
  %i.ap = icmp eq i64 %i.s, 30
  br i1 %i.ap, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aq = load atomic ptr, ptr %.sroa.012.0.i acquire, align 8, !noalias !2809 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.lr.ph.i41.i, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE9wait_nextCsa5QsYiPB8Gl_5image.exit.i

.lr.ph.i41.i:                                     ; preds = %bb.m, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.m ] ; 6 uses
  %i.as = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.as, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i41.i
  call void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now(), !noalias !2809
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %.lr.ph.i41.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i
  %i.at = mul nuw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i ; 2 uses
  %xtraiter114 = and i32 %i.at, 7                 ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02.i.i, 3
  br i1 %i.au, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter118 = and i32 %i.at, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter119 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter119.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  call void @llvm.x86.sse2.pause(), !noalias !2809
  %niter119.next.7 = add i32 %niter119, 8         ; 2 uses
  %niter119.ncmp.7 = icmp eq i32 %niter119.next.7, %unroll_iter118
  br i1 %niter119.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod116.not = icmp eq i32 %xtraiter114, 0
  br i1 %lcmp.mod116.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod117 = icmp ne i32 %xtraiter114, 0
  call void @llvm.assume(i1 %lcmp.mod117)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter115 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter115.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2809
  %epil.iter115.next = add i32 %epil.iter115, 1   ; 2 uses
  %epil.iter115.cmp.not = icmp eq i32 %epil.iter115.next, %xtraiter114
  br i1 %epil.iter115.cmp.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !2771

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i, %bb.n
  %i.av = add i32 %.sroa.0.02.i.i, 1
  %i.aw = load atomic ptr, ptr %.sroa.012.0.i acquire, align 8, !noalias !2809 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.lr.ph.i41.i, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE9wait_nextCsa5QsYiPB8Gl_5image.exit.i

_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE9wait_nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.m
  %.lcssa.i.i = phi ptr [ %i.aq, %bb.m ], [ %i.aw, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.ay = and i64 %.sroa.01.0.i, -2
  %i.az = load atomic ptr, ptr %.lcssa.i.i monotonic, align 8, !noalias !2809
  %5 = icmp eq ptr %i.az, null
  %spec.select17.v.i = select i1 %5, i64 2, i64 3
  %spec.select17.i = add i64 %spec.select17.v.i, %i.ay
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !2809
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !2809
  br label %bb.o

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_recvCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.h
  %i.ba = load i32, ptr %i.i, align 8, !range !36, !noundef !7 ; 2 uses
  %.not = icmp eq i32 %i.ba, -1
  br i1 %.not, label %bb.y, label %bb.x

bb.o:                                             ; preds = %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE9wait_nextCsa5QsYiPB8Gl_5image.exit.i, %bb.l
  store ptr %.sroa.012.0.i, ptr %i.j, align 8, !alias.scope !2809
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !2809
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 8
  %i.bc = getelementptr inbounds nuw [88 x i8], ptr %i.bb, i64 %i.s ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 3 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8, !noalias !2810
  %i.bf = and i64 %i.be, 1
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i.i6, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i

.lr.ph.i.i6:                                      ; preds = %bb.o, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8
  %.sroa.0.02.i.i7 = phi i32 [ %i.bk, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8 ], [ 0, %bb.o ] ; 6 uses
  %i.bh = icmp ult i32 %.sroa.0.02.i.i7, 7
  br i1 %i.bh, label %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i10, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i6
  call void @_RNvNtNtCsaKJjC64KgbL_3std6thread9functions9yield_now(), !noalias !2810
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8

_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i10: ; preds = %.lr.ph.i.i6
  %.not.i.i.i11 = icmp eq i32 %.sroa.0.02.i.i7, 0
  br i1 %.not.i.i.i11, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, label %.lr.ph.i.i.i14.preheader

.lr.ph.i.i.i14.preheader:                         ; preds = %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i10
  %i.bi = mul nuw i32 %.sroa.0.02.i.i7, %.sroa.0.02.i.i7 ; 2 uses
  %xtraiter120 = and i32 %i.bi, 7                 ; 3 uses
  %i.bj = icmp ult i32 %.sroa.0.02.i.i7, 3
  br i1 %i.bj, label %.lr.ph.i.i.i14.epil.preheader, label %.lr.ph.i.i.i14.preheader.new

.lr.ph.i.i.i14.preheader.new:                     ; preds = %.lr.ph.i.i.i14.preheader
  %unroll_iter124 = and i32 %i.bi, 56
  br label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %.lr.ph.i.i.i14, %.lr.ph.i.i.i14.preheader.new
  %niter125 = phi i32 [ 0, %.lr.ph.i.i.i14.preheader.new ], [ %niter125.next.7, %.lr.ph.i.i.i14 ]
  call void @llvm.x86.sse2.pause(), !noalias !2810
  call void @llvm.x86.sse2.pause(), !noalias !2810
  call void @llvm.x86.sse2.pause(), !noalias !2810
  call void @llvm.x86.sse2.pause(), !noalias !2810
  call void @llvm.x86.sse2.pause(), !noalias !2810
  call void @llvm.x86.sse2.pause(), !noalias !2810
  call void @llvm.x86.sse2.pause(), !noalias !2810
  call void @llvm.x86.sse2.pause(), !noalias !2810
  %niter125.next.7 = add i32 %niter125, 8         ; 2 uses
  %niter125.ncmp.7 = icmp eq i32 %niter125.next.7, %unroll_iter124
  br i1 %niter125.ncmp.7, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa, label %.lr.ph.i.i.i14

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i14
  %lcmp.mod122.not = icmp eq i32 %xtraiter120, 0
  br i1 %lcmp.mod122.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, label %.lr.ph.i.i.i14.epil.preheader

.lr.ph.i.i.i14.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa, %.lr.ph.i.i.i14.preheader
  %lcmp.mod123 = icmp ne i32 %xtraiter120, 0
  call void @llvm.assume(i1 %lcmp.mod123)
  br label %.lr.ph.i.i.i14.epil

.lr.ph.i.i.i14.epil:                              ; preds = %.lr.ph.i.i.i14.epil, %.lr.ph.i.i.i14.epil.preheader
  %epil.iter121 = phi i32 [ 0, %.lr.ph.i.i.i14.epil.preheader ], [ %epil.iter121.next, %.lr.ph.i.i.i14.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !2810
  %epil.iter121.next = add i32 %epil.iter121, 1   ; 2 uses
  %epil.iter121.cmp.not = icmp eq i32 %epil.iter121.next, %xtraiter120
  br i1 %epil.iter121.cmp.not, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, label %.lr.ph.i.i.i14.epil, !llvm.loop !2774

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa, %.lr.ph.i.i.i14.epil, %_RNvMs6_NtCsj6eKBz9Db1c_4core3numm15overflowing_pow.exit.i.i.i10, %bb.p
  %i.bk = add i32 %.sroa.0.02.i.i7, 1
  %i.bl = load atomic i64, ptr %i.bd acquire, align 8, !noalias !2810
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i6, label %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i

_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, %bb.o
  %.sroa.026.0.copyload = load i64, ptr %i.bc, align 8, !noalias !2810 ; 2 uses
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.427, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.427.0..sroa_idx, i64 72, i1 false)
  %i.bo = add nuw nsw i64 %i.s, 1                 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 31
  br i1 %i.bp, label %.lr.ph.i1.i, label %bb.t

.lr.ph.i1.i:                                      ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i, %bb.s
  %.sroa.0.03.i.i4 = phi i64 [ %i.by, %bb.s ], [ 0, %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [88 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i.i4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 88 ; 2 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8, !noalias !2810
  %i.bt = and i64 %i.bs, 2
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.q, label %.lr.ph.i1.i.1

bb.q:                                             ; preds = %.lr.ph.i1.i
  %i.bv = atomicrmw or ptr %i.br, i64 4 acq_rel, align 8, !noalias !2810
  %i.bw = and i64 %i.bv, 2
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i1.i.1

.lr.ph.i1.i.1:                                    ; preds = %bb.q, %.lr.ph.i1.i
  %i.by = add nuw nsw i64 %.sroa.0.03.i.i4, 2     ; 2 uses
  %i.bz = getelementptr inbounds nuw [88 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i.i4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 176 ; 2 uses
  %i.cb = load atomic i64, ptr %i.ca acquire, align 8, !noalias !2810
  %i.cc = and i64 %i.cb, 2
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i1.i.1
  %i.ce = atomicrmw or ptr %i.ca, i64 4 acq_rel, align 8, !noalias !2810
  %i.cf = and i64 %i.ce, 2
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i1.i.1
  %exitcond.not.i.i5.1 = icmp eq i64 %i.by, 30
  br i1 %exitcond.not.i.i5.1, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE7destroyCsa5QsYiPB8Gl_5image.exit.sink.split.i, label %.lr.ph.i1.i

bb.t:                                             ; preds = %_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB2_4SlotINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1w_5error5ErrorEE10wait_writeCsa5QsYiPB8Gl_5image.exit.i
  %i.ch = atomicrmw or ptr %i.bd, i64 2 acq_rel, align 8, !noalias !2810
  %i.ci = and i64 %i.ch, 4
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit, label %bb.u

_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE7destroyCsa5QsYiPB8Gl_5image.exit.sink.split.i: ; preds = %bb.w, %bb.s, %bb.u
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i, i64 noundef 2736, i64 noundef 8) #33, !noalias !2810
  br label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit

bb.u:                                             ; preds = %bb.t
  %i.ck = icmp samesign ult i64 %i.s, 29
  br i1 %i.ck, label %.lr.ph.i3.i, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE7destroyCsa5QsYiPB8Gl_5image.exit.sink.split.i

.lr.ph.i3.i:                                      ; preds = %bb.u, %bb.w
  %.sroa.0.03.i4.i = phi i64 [ %i.cl, %bb.w ], [ %i.bo, %bb.u ] ; 2 uses
  %i.cl = add nuw nsw i64 %.sroa.0.03.i4.i, 1     ; 2 uses
  %i.cm = getelementptr inbounds nuw [88 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i4.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 88 ; 2 uses
  %i.co = load atomic i64, ptr %i.cn acquire, align 8, !noalias !2810
  %i.cp = and i64 %i.co, 2
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i3.i
  %i.cr = atomicrmw or ptr %i.cn, i64 4 acq_rel, align 8, !noalias !2810
  %i.cs = and i64 %i.cr, 2
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i3.i
  %exitcond.not.i5.i = icmp eq i64 %i.cl, 30
  br i1 %exitcond.not.i5.i, label %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE7destroyCsa5QsYiPB8Gl_5image.exit.sink.split.i, label %.lr.ph.i3.i

_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.v, %bb.q, %bb.r, %bb.t, %_RNvMs_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB4_5BlockINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1z_5error5ErrorEE7destroyCsa5QsYiPB8Gl_5image.exit.sink.split.i
  %i.cu = icmp eq i64 %.sroa.026.0.copyload, -2
  br i1 %i.cu, label %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE4readCsa5QsYiPB8Gl_5image.exit.thread, label %bb.ao

bb.x:                                             ; preds = %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_recvCsa5QsYiPB8Gl_5image.exit
  %i.cv = load i64, ptr %i.h, align 8, !noundef !7 ; 2 uses
  %i.cw = call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.cx = extractvalue { i64, i32 } %i.cw, 0      ; 2 uses
  %i.cy = icmp eq i64 %i.cx, %i.cv
  br i1 %i.cy, label %.split, label %bb.al

bb.y:                                             ; preds = %.split, %bb.al, %_RNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB5_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1C_5error5ErrorEE10start_recvCsa5QsYiPB8Gl_5image.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2811
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.cz = load i8, ptr %i.o, align 8, !range !12, !noalias !2812, !noundef !7
  %i.da = icmp eq i8 %i.cz, 1
  br i1 %i.da, label %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i, !prof !10

_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.y
  %i.db = call noundef ptr @_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsa5QsYiPB8Gl_5image(ptr noundef nonnull align 8 %i.n, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !noalias !2811 ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB3S_5error5ErrorEE4recvs_0uEs_0uECsa5QsYiPB8Gl_5image.exit.i, label %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i, %bb.y
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.db, %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.i.i ], [ %i.n, %bb.y ] ; 4 uses
  %i.dd = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2811, !noundef !7 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !2811
  %.not.i.i.i18 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i18, label %bb.z, label %bb.af, !prof !18

bb.z:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsa5QsYiPB8Gl_5image.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2811
  %i.de = call noundef nonnull ptr @_RNvMNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !2811 ; 2 uses
  store ptr %i.de, ptr %i.e, align 8, !noalias !2811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2811
  store ptr %i.g, ptr %i.c, align 8, !noalias !2811
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCsaKJjC64KgbL_3std4sync4mpmc4listINtB7_7ChannelINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtCsdsTQD3x2eOp_3exr5block17UncompressedBlockNtNtB1E_5error5ErrorEE4recvs_0Csa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.de)
          to label %bb.ac unwind label %bb.aa, !noalias !2811

bb.aa:                                            ; preds = %bb.z
end_hunk_0
