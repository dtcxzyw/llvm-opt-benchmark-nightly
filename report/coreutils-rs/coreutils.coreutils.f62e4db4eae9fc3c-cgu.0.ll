inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNCINvNvCsfIwuYbgPzJV_5uu_du6uumain6uumainINtNtNtNtB4_4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtB1l_6cloned6ClonedINtNtNtB4_5slice4iter4IterB2G_EEEEs0_0ECsl8pJiQOn4hA_9coreutils:bb.a
  %i.u = phi i64 [ %i.q, %bb.e ], [ %.pre.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.v = load atomic i64, ptr %.val1 monotonic, align 16
  %i.w = xor i64 %i.u, -1
  %i.x = and i64 %i.p, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.val1, i64 392 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val1, i64 408 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1, i64 416 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1, i64 384
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, %bb.g
  %i.ac = phi i64 [ %i.u, %bb.g ], [ %.pre.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ]
  %.sroa.0.08.i.i.i.i.i.i.i = phi i32 [ 0, %bb.g ], [ %.sroa.0.19.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ] ; 10 uses
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.v, %bb.g ], [ %.sroa.0.1.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ] ; 5 uses
  %i.ad = add i64 %i.ac, -1
  %i.ae = and i64 %.sroa.0.0.i.i.i.i.i.i.i, %i.ad ; 3 uses
  %i.af = load i64, ptr %i.y, align 8, !noundef !12
  %i.ag = sub i64 0, %i.af
  %i.ah = and i64 %.sroa.0.0.i.i.i.i.i.i.i, %i.ag
  %i.ai = load ptr, ptr %i.z, align 8, !nonnull !12, !noundef !12
  %i.aj = load i64, ptr %i.aa, align 16, !noundef !12
  %i.ak = icmp ult i64 %i.ae, %i.aj
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [320 x i8], ptr %i.ai, i64 %i.ae ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 304
  %i.an = load atomic i64, ptr %i.am acquire, align 8 ; 2 uses
  %i.ao = add i64 %.sroa.0.0.i.i.i.i.i.i.i, 1
  %i.ap = icmp eq i64 %i.ao, %i.an
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp eq i64 %i.x, %.sroa.0.0.i.i.i.i.i.i.i
  br i1 %i.aq, label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drop0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ar = add nuw i64 %i.ae, 1
  %i.as = load i64, ptr %i.ab, align 128, !noundef !12
  %i.at = icmp ult i64 %i.ar, %i.as
  br i1 %i.at, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.au = icmp ult i32 %.sroa.0.08.i.i.i.i.i.i.i, 7
  br i1 %i.au, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.08.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i
  %i.av = mul nuw i32 %.sroa.0.08.i.i.i.i.i.i.i, %.sroa.0.08.i.i.i.i.i.i.i ; 2 uses
  %xtraiter51 = and i32 %i.av, 7                  ; 3 uses
  %i.aw = icmp ult i32 %.sroa.0.08.i.i.i.i.i.i.i, 3
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter55 = and i32 %i.av, 56
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %niter56 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter56.next.7, %.lr.ph.i.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter56.next.7 = add i32 %niter56, 8           ; 2 uses
  %niter56.ncmp.7 = icmp eq i32 %niter56.next.7, %unroll_iter55
  br i1 %niter56.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod53.not = icmp eq i32 %xtraiter51, 0
  br i1 %lcmp.mod53.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod54 = icmp ne i32 %xtraiter51, 0
  tail call void @llvm.assume(i1 %lcmp.mod54)
  br label %.lr.ph.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %epil.iter52 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter52.next, %.lr.ph.i.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter52.next = add i32 %epil.iter52, 1     ; 2 uses
  %epil.iter52.cmp.not = icmp eq i32 %epil.iter52.next, %xtraiter51
  br i1 %epil.iter52.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !21760

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i, %bb.l
  %i.ax = add i32 %.sroa.0.08.i.i.i.i.i.i.i, 1
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i, %bb.s, %bb.p, %bb.o, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i
  %.sroa.0.19.i.i.i.i.i.i.i = phi i32 [ %i.ax, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i ], [ %.sroa.0.08.i.i.i.i.i.i.i, %bb.o ], [ %.sroa.0.08.i.i.i.i.i.i.i, %bb.p ], [ %.sroa.0.08.i.i.i.i.i.i.i, %bb.s ], [ %.sroa.0.08.i.i.i.i.i.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i ], [ %.sroa.05.0.i.i.i.i.i.i.i, %bb.o ], [ %.sroa.05.0.i.i.i.i.i.i.i, %bb.p ], [ %.sroa.05.0.i.i.i.i.i.i.i, %bb.s ], [ %.sroa.05.0.i.i.i.i.i.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i ]
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.m, align 16
  br label %bb.h

bb.m:                                             ; preds = %bb.j
  %i.ay = load i64, ptr %i.y, align 8, !noundef !12
  %i.az = add i64 %i.ay, %i.ah
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.sroa.05.0.i.i.i.i.i.i.i = phi i64 [ %i.az, %bb.m ], [ %i.an, %bb.j ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21761)
  %i.ba = load i128, ptr %i.al, align 16, !range !13210, !alias.scope !21761, !noundef !12
  %.not.i6.i.i.i.i.i.i.i = icmp eq i128 %i.ba, 2
  br i1 %.not.i6.i.i.i.i.i.i.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 240
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.bb, align 16, !range !63, !alias.scope !21764, !noundef !12 ; 2 uses
  %i.bc = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.bc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 248
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !21761, !nonnull !12, !noundef !12
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !21771
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21778)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !21781, !nonnull !12, !align !249, !noundef !12 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !invariant.load !12, !noalias !21781 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = load ptr, ptr %i.be, align 16, !alias.scope !21781, !nonnull !12, !noundef !12
  tail call void %i.bh(ptr noundef nonnull %i.bi) #51, !noalias !21781, !inline_history !21782
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !63, !invariant.load !12, !noalias !21781 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 16, !alias.scope !21781, !nonnull !12, !noundef !12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !range !267, !invariant.load !12, !noalias !21781
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) %i.bn) #45, !noalias !21781
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drop0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.val1, i64 528
  %i.bp = atomicrmw xchg ptr %i.bo, i8 1 acq_rel, align 1
  %.not.i.i.i.i = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.t

bb.t:                                             ; preds = %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drop0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21786)
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.aa, align 16, !alias.scope !21789, !noundef !12 ; 2 uses
  %i.bq = icmp eq i64 %.val1.i.i.i.i.i.i.i, 0
  br i1 %i.bq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.t
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !21789, !nonnull !12, !noundef !12
  %i.br = mul nuw nsw i64 %.val1.i.i.i.i.i.i.i, 320
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.br, i64 noundef 16) #45, !noalias !21789
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1, i64 264
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.bs) #45
  %i.bt = getelementptr inbounds nuw i8, ptr %.val1, i64 328
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.bt) #45
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef 640, i64 noundef 128) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

bb.u:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du11StatPrinterECsl8pJiQOn4hA_9coreutils.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1, i64 392
  %i.bv = atomicrmw sub ptr %i.bu, i64 1 acq_rel, align 8
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.v, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

bb.v:                                             ; preds = %bb.u
  %i.bx = getelementptr inbounds nuw i8, ptr %.val1, i64 128 ; 3 uses
  %i.by = atomicrmw or ptr %i.bx, i64 1 seq_cst, align 8
  %i.bz = and i64 %i.by, 1
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.w, label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drops_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.cb = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.cc = and i64 %i.cb, 62
  %i.cd = icmp eq i64 %i.cc, 62
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.w, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i
  %.sroa.0.05153.i.i.i.i.i.i.i = phi i32 [ %i.cg, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i ], [ 0, %bb.w ] ; 6 uses
  %i.ce = icmp ult i32 %.sroa.0.05153.i.i.i.i.i.i.i, 7
  br i1 %i.ce, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i13.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i13.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.not.i.i.i.i.i14.i.i.i = icmp eq i32 %.sroa.0.05153.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i14.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i, label %.lr.ph.i.i.i.i.i17.i.i.i.preheader

.lr.ph.i.i.i.i.i17.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i13.i.i.i
  %1 = mul nuw i32 %.sroa.0.05153.i.i.i.i.i.i.i, %.sroa.0.05153.i.i.i.i.i.i.i ; 2 uses
  %xtraiter = and i32 %1, 7                       ; 3 uses
  %i.cf = icmp ult i32 %.sroa.0.05153.i.i.i.i.i.i.i, 3
  br i1 %i.cf, label %.lr.ph.i.i.i.i.i17.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i17.i.i.i.preheader.new

.lr.ph.i.i.i.i.i17.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i.i.i.i17.i.i.i.preheader
  %unroll_iter = and i32 %1, 56
  br label %.lr.ph.i.i.i.i.i17.i.i.i

.lr.ph.i.i.i.i.i17.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i17.i.i.i, %.lr.ph.i.i.i.i.i17.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.i.i.i17.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i17.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i17.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i17.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i, label %.lr.ph.i.i.i.i.i17.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i17.i.i.i.epil.preheader:          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i17.i.i.i.preheader
  %lcmp.mod26 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod26)
  br label %.lr.ph.i.i.i.i.i17.i.i.i.epil

.lr.ph.i.i.i.i.i17.i.i.i.epil:                    ; preds = %.lr.ph.i.i.i.i.i17.i.i.i.epil, %.lr.ph.i.i.i.i.i17.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.i17.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.i17.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i, label %.lr.ph.i.i.i.i.i17.i.i.i.epil, !llvm.loop !21790

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i17.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i13.i.i.i, %bb.x
  %i.cg = add i32 %.sroa.0.05153.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ch = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.ci = and i64 %i.ch, 62
  %i.cj = icmp eq i64 %i.ci, 62
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i, %bb.w
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.cb, %bb.w ], [ %i.ch, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i ]
  %.sroa.0.051.lcssa.i.i.i.i.i.i.i = phi i32 [ 0, %bb.w ], [ %i.cg, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i11.i.i.i ]
  %i.ck = lshr i64 %.sroa.0.0.lcssa.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.cl = load atomic i64, ptr %.val1 acquire, align 8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val1, i64 8 ; 2 uses
  %i.cn = atomicrmw xchg ptr %i.cm, ptr null acq_rel, align 8 ; 2 uses
  %i.co = lshr i64 %i.cl, 1                       ; 3 uses
  %i.cp = icmp ne i64 %i.co, %i.ck
  %i.cq = icmp eq ptr %i.cn, null
  %or.cond.i.i.i.i.i.i.i = select i1 %i.cp, i1 %i.cq, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.011.0.i.i.i.i.i.i.i = phi ptr [ %i.cn, %._crit_edge.i.i.i.i.i.i.i ], [ %i.cu, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i ] ; 2 uses
  %.not55.i.i.i.i.i.i.i = icmp eq i64 %i.co, %i.ck
  br i1 %.not55.i.i.i.i.i.i.i, label %._crit_edge60.i.i.i.i.i.i.i, label %.lr.ph59.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %._crit_edge.i.i.i.i.i.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i10.i.i.i = phi i32 [ %i.ct, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i ], [ %.sroa.0.051.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 6 uses
  %i.cr = icmp ult i32 %.sroa.0.1.i.i.i.i10.i.i.i, 7
  br i1 %i.cr, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.preheader.i.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i
  %.not.i23.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.1.i.i.i.i10.i.i.i, 0
  br i1 %.not.i23.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.i.preheader

.lr.ph.i26.i.i.i.i.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i.i
  %2 = mul nuw i32 %.sroa.0.1.i.i.i.i10.i.i.i, %.sroa.0.1.i.i.i.i10.i.i.i ; 2 uses
  %xtraiter29 = and i32 %2, 7                     ; 3 uses
  %i.cs = icmp ult i32 %.sroa.0.1.i.i.i.i10.i.i.i, 3
  br i1 %i.cs, label %.lr.ph.i26.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i26.i.i.i.i.i.i.i.preheader.new

.lr.ph.i26.i.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i26.i.i.i.i.i.i.i.preheader
  %unroll_iter33 = and i32 %2, 56
  br label %.lr.ph.i26.i.i.i.i.i.i.i

.lr.ph.i26.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i26.i.i.i.i.i.i.i, %.lr.ph.i26.i.i.i.i.i.i.i.preheader.new
  %niter34 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.i.i.i.preheader.new ], [ %niter34.next.7, %.lr.ph.i26.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter34.next.7 = add i32 %niter34, 8           ; 2 uses
  %niter34.ncmp.7 = icmp eq i32 %niter34.next.7, %unroll_iter33
  br i1 %niter34.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i.i.i.i.i.i
  %lcmp.mod31.not = icmp eq i32 %xtraiter29, 0
  br i1 %lcmp.mod31.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i26.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.i.preheader
  %lcmp.mod32 = icmp ne i32 %xtraiter29, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %.lr.ph.i26.i.i.i.i.i.i.i.epil

.lr.ph.i26.i.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i26.i.i.i.i.i.i.i.epil, %.lr.ph.i26.i.i.i.i.i.i.i.epil.preheader
  %epil.iter30 = phi i32 [ 0, %.lr.ph.i26.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter30.next, %.lr.ph.i26.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter30.next = add i32 %epil.iter30, 1     ; 2 uses
  %epil.iter30.cmp.not = icmp eq i32 %epil.iter30.next, %xtraiter29
  br i1 %epil.iter30.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i, label %.lr.ph.i26.i.i.i.i.i.i.i.epil, !llvm.loop !21791

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit30.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i.i.i.i.i.i, %bb.y
  %i.ct = add i32 %.sroa.0.1.i.i.i.i10.i.i.i, 1
  %i.cu = atomicrmw xchg ptr %i.cm, ptr null acq_rel, align 8 ; 2 uses
  %.old2.i.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.old2.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i

._crit_edge60.i.i.i.i.i.i.i:                      ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i, %.loopexit.i.i.i.i.i.i.i
  %.sroa.011.1.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.011.0.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %.sroa.011.2.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i ] ; 2 uses
  %.sroa.05.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.cl, %.loopexit.i.i.i.i.i.i.i ], [ %i.eg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i ]
  %i.cv = icmp eq ptr %.sroa.011.1.lcssa.i.i.i.i.i.i.i, null
  br i1 %i.cv, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE20discard_all_messagesCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, label %bb.z

.lr.ph59.i.i.i.i.i.i.i:                           ; preds = %.loopexit.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i
  %i.cw = phi i64 [ %i.eh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i ], [ %i.co, %.loopexit.i.i.i.i.i.i.i ]
  %.sroa.05.057.i.i.i.i.i.i.i = phi i64 [ %i.eg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i ], [ %i.cl, %.loopexit.i.i.i.i.i.i.i ]
  %.sroa.011.156.i.i.i.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i ], [ %.sroa.011.0.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ] ; 8 uses
  %i.cx = and i64 %i.cw, 31                       ; 2 uses
  %.not19.i.i.i.i.i.i.i = icmp eq i64 %i.cx, 31
  br i1 %.not19.i.i.i.i.i.i.i, label %bb.aa, label %bb.ac

bb.z:                                             ; preds = %._crit_edge60.i.i.i.i.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.1.lcssa.i.i.i.i.i.i.i, i64 noundef 9936, i64 noundef 16) #45
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE20discard_all_messagesCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

bb.aa:                                            ; preds = %.lr.ph59.i.i.i.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.011.156.i.i.i.i.i.i.i, i64 9920 ; 3 uses
  %i.cz = load atomic ptr, ptr %i.cy acquire, align 8
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %.lr.ph.i31.i.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

.lr.ph.i31.i.i.i.i.i.i.i:                         ; preds = %bb.aa, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i.i.i.i = phi i32 [ %i.dd, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.aa ] ; 6 uses
  %i.db = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i.i, 7
  br i1 %i.db, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i31.i.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i31.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i9.i.i.i = icmp eq i32 %.sroa.0.02.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i9.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i.i
  %3 = mul nuw i32 %.sroa.0.02.i.i.i.i.i.i.i.i, %.sroa.0.02.i.i.i.i.i.i.i.i ; 2 uses
  %xtraiter45 = and i32 %3, 7                     ; 3 uses
  %i.dc = icmp ult i32 %.sroa.0.02.i.i.i.i.i.i.i.i, 3
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter49 = and i32 %3, 56
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new
  %niter50 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter50.next.7, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter50.next.7 = add i32 %niter50, 8           ; 2 uses
  %niter50.ncmp.7 = icmp eq i32 %niter50.next.7, %unroll_iter49
  br i1 %niter50.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %lcmp.mod47.not = icmp eq i32 %xtraiter45, 0
  br i1 %lcmp.mod47.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader:          ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %lcmp.mod48 = icmp ne i32 %xtraiter45, 0
  tail call void @llvm.assume(i1 %lcmp.mod48)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.epil:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader
  %epil.iter46 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter46.next, %.lr.ph.i.i.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter46.next = add i32 %epil.iter46, 1     ; 2 uses
  %epil.iter46.cmp.not = icmp eq i32 %epil.iter46.next, %xtraiter45
  br i1 %epil.iter46.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !21792

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i.i.i.i.i.i.i, %bb.ab
  %i.dd = add i32 %.sroa.0.02.i.i.i.i.i.i.i.i, 1
  %i.de = load atomic ptr, ptr %i.cy acquire, align 8
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %.lr.ph.i31.i.i.i.i.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.i.i.i, %bb.aa
  %i.dg = load atomic ptr, ptr %i.cy acquire, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.156.i.i.i.i.i.i.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.156.i.i.i.i.i.i.i, i64 noundef 9936, i64 noundef 16) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i

bb.ac:                                            ; preds = %.lr.ph59.i.i.i.i.i.i.i
  %i.dh = getelementptr inbounds nuw [320 x i8], ptr %.sroa.011.156.i.i.i.i.i.i.i, i64 %i.cx ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 304 ; 2 uses
  %i.dj = load atomic i64, ptr %i.di acquire, align 8
  %i.dk = and i64 %i.dj, 1
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %.lr.ph.i32.i.i.i.i.i.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

.lr.ph.i32.i.i.i.i.i.i.i:                         ; preds = %bb.ac, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i
  %.sroa.0.02.i33.i.i.i.i.i.i.i = phi i32 [ %i.do, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i ], [ 0, %bb.ac ] ; 6 uses
  %i.dm = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i.i, 7
  br i1 %i.dm, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i32.i.i.i.i.i.i.i
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i.i: ; preds = %.lr.ph.i32.i.i.i.i.i.i.i
  %.not.i.i37.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.02.i33.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i37.i.i.i.i.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader

.lr.ph.i.i40.i.i.i.i.i.i.i.preheader:             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i.i
  %4 = mul nuw i32 %.sroa.0.02.i33.i.i.i.i.i.i.i, %.sroa.0.02.i33.i.i.i.i.i.i.i ; 2 uses
  %xtraiter37 = and i32 %4, 7                     ; 3 uses
  %i.dn = icmp ult i32 %.sroa.0.02.i33.i.i.i.i.i.i.i, 3
  br i1 %i.dn, label %.lr.ph.i.i40.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i40.i.i.i.i.i.i.i.preheader.new:         ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader
  %unroll_iter41 = and i32 %4, 56
  br label %.lr.ph.i.i40.i.i.i.i.i.i.i

.lr.ph.i.i40.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.i, %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader.new
  %niter42 = phi i32 [ 0, %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader.new ], [ %niter42.next.7, %.lr.ph.i.i40.i.i.i.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter42.next.7 = add i32 %niter42, 8           ; 2 uses
  %niter42.ncmp.7 = icmp eq i32 %niter42.next.7, %unroll_iter41
  br i1 %niter42.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i40.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.i
  %lcmp.mod39.not = icmp eq i32 %xtraiter37, 0
  br i1 %lcmp.mod39.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i40.i.i.i.i.i.i.i.epil.preheader:        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.i.i.i.i.i.i.preheader
  %lcmp.mod40 = icmp ne i32 %xtraiter37, 0
  tail call void @llvm.assume(i1 %lcmp.mod40)
  br label %.lr.ph.i.i40.i.i.i.i.i.i.i.epil

.lr.ph.i.i40.i.i.i.i.i.i.i.epil:                  ; preds = %.lr.ph.i.i40.i.i.i.i.i.i.i.epil, %.lr.ph.i.i40.i.i.i.i.i.i.i.epil.preheader
  %epil.iter38 = phi i32 [ 0, %.lr.ph.i.i40.i.i.i.i.i.i.i.epil.preheader ], [ %epil.iter38.next, %.lr.ph.i.i40.i.i.i.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter38.next = add i32 %epil.iter38, 1     ; 2 uses
  %epil.iter38.cmp.not = icmp eq i32 %epil.iter38.next, %xtraiter37
  br i1 %epil.iter38.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i, label %.lr.ph.i.i40.i.i.i.i.i.i.i.epil, !llvm.loop !21793

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i40.i.i.i.i.i.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i36.i.i.i.i.i.i.i, %bb.ad
  %i.do = add i32 %.sroa.0.02.i33.i.i.i.i.i.i.i, 1
  %i.dp = load atomic i64, ptr %i.di acquire, align 8
  %i.dq = and i64 %i.dp, 1
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %.lr.ph.i32.i.i.i.i.i.i.i, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i34.i.i.i.i.i.i.i, %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21794)
  %i.ds = load i128, ptr %i.dh, align 16, !range !13210, !alias.scope !21794, !noundef !12
  %.not.i44.i.i.i.i.i.i.i = icmp eq i128 %i.ds, 2
  br i1 %.not.i44.i.i.i.i.i.i.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 240
  %.val.i.i.i.i.i4.i.i.i = load i64, ptr %i.dt, align 16, !range !63, !alias.scope !21797, !noundef !12 ; 2 uses
  %i.du = icmp eq i64 %.val.i.i.i.i.i4.i.i.i, 0
  br i1 %i.du, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dh, i64 248
  %.val1.i.i.i.i.i5.i.i.i = load ptr, ptr %i.dv, align 8, !alias.scope !21794, !nonnull !12, !noundef !12
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i5.i.i.i, i64 noundef %.val.i.i.i.i.i4.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !21804
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i

bb.ag:                                            ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB2_4SlotINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10wait_writeCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21811)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !21814, !nonnull !12, !align !249, !noundef !12 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !invariant.load !12, !noalias !21814 ; 2 uses
  %.not.i.i45.i.i.i.i.i.i.i = icmp eq ptr %i.dz, null
  br i1 %.not.i.i45.i.i.i.i.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ea = load ptr, ptr %i.dw, align 16, !alias.scope !21814, !nonnull !12, !noundef !12
  tail call void %i.dz(ptr noundef nonnull %i.ea) #51, !noalias !21814, !inline_history !21815
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !range !63, !invariant.load !12, !noalias !21814 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i7.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i7.i.i.i: ; preds = %bb.ai
  %.val.i.i.i.i.i.i8.i.i.i = load ptr, ptr %i.dw, align 16, !alias.scope !21814, !nonnull !12, !noundef !12
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !range !267, !invariant.load !12, !noalias !21814
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i8.i.i.i, i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) %i.ef) #45, !noalias !21814
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i6.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i7.i.i.i, %bb.ai, %bb.af, %bb.ae, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i
  %.sroa.011.2.i.i.i.i.i.i.i = phi ptr [ %i.dg, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB4_5BlockINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE9wait_nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i ], [ %.sroa.011.156.i.i.i.i.i.i.i, %bb.ae ], [ %.sroa.011.156.i.i.i.i.i.i.i, %bb.af ], [ %.sroa.011.156.i.i.i.i.i.i.i, %bb.ai ], [ %.sroa.011.156.i.i.i.i.i.i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i7.i.i.i ] ; 2 uses
  %i.eg = add i64 %.sroa.05.057.i.i.i.i.i.i.i, 2  ; 3 uses
  %i.eh = lshr i64 %i.eg, 1                       ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.eh, %i.ck
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge60.i.i.i.i.i.i.i, label %.lr.ph59.i.i.i.i.i.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE20discard_all_messagesCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %bb.z, %._crit_edge60.i.i.i.i.i.i.i
  %i.ei = and i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i, -2
  store atomic i64 %i.ei, ptr %.val1 release, align 8
  br label %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drops_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drops_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE20discard_all_messagesCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %.val1, i64 400
  %i.ek = atomicrmw xchg ptr %i.ej, i8 1 acq_rel, align 1
  %.not.i3.i.i.i = icmp eq i8 %i.ek, 0
  br i1 %.not.i3.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.aj

bb.aj:                                            ; preds = %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drops_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  store ptr %.val1, ptr %i.a, align 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_4list7ChannelINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(8) %i.a) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

bb.ak:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsfIwuYbgPzJV_5uu_du11StatPrinterECsl8pJiQOn4hA_9coreutils.exit
  %i.el = getelementptr inbounds nuw i8, ptr %.val1, i64 120
  %i.em = atomicrmw sub ptr %i.el, i64 1 acq_rel, align 8
  %i.en = icmp eq i64 %i.em, 1
  br i1 %i.en, label %bb.al, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

bb.al:                                            ; preds = %bb.ak
  tail call fastcc void @_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10disconnectCsl8pJiQOn4hA_9coreutils(ptr noundef nonnull align 8 %.val1) #45
  %i.eo = getelementptr inbounds nuw i8, ptr %.val1, i64 128
  %i.ep = atomicrmw xchg ptr %i.eo, i8 1 acq_rel, align 1
  %.not.i21.i.i.i = icmp eq i8 %i.ep, 0
  br i1 %.not.i21.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eq = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.eq) #45
  %i.er = getelementptr inbounds nuw i8, ptr %.val1, i64 56
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5WakerECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 dereferenceable(48) %i.er) #45
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef 136, i64 noundef 8) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs2vKOLqTMYjT_3std4sync4mpsc8ReceiverINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.d, %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drop0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7counter7CounterINtNtB1f_5array7ChannelINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoIBC_DNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEEEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %bb.u, %_RNCNvXsi_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_8ReceiverINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEENtNtNtBX_3ops4drop4Drop4drops_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %bb.aj, %bb.ak, %bb.al, %bb.am
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs2AkyTgTLZ1a_8uu_tsort10TsortErrorECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !6507, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  switch i64 %i.b, label %default.unreachable7 [
    i64 0, label %bb.e
    i64 1, label %bb.g
    i64 2, label %bb.i
    i64 3, label %bb.b
  ]

default.unreachable7:                             ; preds = %bb.b, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21816)
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !21816, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21816
  %i.d = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable7 [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit
    i64 1, label %bb.d
  ], !prof !91

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val.i, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !21819, !noalias !21816
  store i8 3, ptr %i.a, align 8, !alias.scope !21819, !noalias !21816
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #45, !noalias !21816
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.b, %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21816
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21825)
  %.val.i.i = load i64, ptr %i.c, align 8, !range !63, !alias.scope !21828, !noundef !12 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i, 0
  br i1 %i.k, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.l, align 8, !alias.scope !21828, !nonnull !12, !noundef !12
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !21828
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit

bb.g:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21832)
  %.val.i.i1 = load i64, ptr %i.c, align 8, !range !63, !alias.scope !21835, !noundef !12 ; 2 uses
  %i.m = icmp eq i64 %.val.i.i1, 0
  br i1 %i.m, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i2 = load ptr, ptr %i.n, align 8, !alias.scope !21835, !nonnull !12, !noundef !12
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i2, i64 noundef %.val.i.i1, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !21835
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21836)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21839)
  %.val.i.i4 = load i64, ptr %i.c, align 8, !range !63, !alias.scope !21842, !noundef !12 ; 2 uses
  %i.o = icmp eq i64 %.val.i.i4, 0
  br i1 %i.o, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i5 = load ptr, ptr %i.p, align 8, !alias.scope !21842, !nonnull !12, !noundef !12
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i5, i64 noundef %.val.i.i4, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !21842
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs2AkyTgTLZ1a_8uu_tsort5GraphECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21855)
end_hunk_0
begin_hunk_1_@_RNCNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB7_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0Csl8pJiQOn4hA_9coreutils:bb.a
  unreachable

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread28: ; preds = %bb.o, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.bz = load ptr, ptr %i.by, align 16, !nonnull !12, !align !249, !noundef !12 ; 8 uses
  %i.ca = cmpxchg ptr %i.bz, i32 0, i32 1 acquire monotonic, align 4, !noalias !33861
  %i.cb = extractvalue { i32, i1 } %i.ca, 1
  br i1 %i.cb, label %bb.u, label %bb.t, !prof !5

bb.t:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread28
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.bz) #45, !noalias !33861
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread28
  %i.cc = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !33861
  %i.cd = and i64 %i.cc, 9223372036854775807
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit, label %bb.v, !prof !5

bb.v:                                             ; preds = %bb.u
  %i.cf = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #53, !noalias !33861
  %i.cg = xor i1 %i.cf, true
  %i.ch = zext i1 %i.cg to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.u, %bb.v
  %.sroa.01.0.i.i = phi i8 [ %i.ch, %bb.v ], [ 0, %bb.u ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %i.cj = load atomic i8, ptr %i.ci monotonic, align 4, !noalias !33861
  %.not.i.i.not = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit26, label %bb.w, !prof !5

bb.w:                                             ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !33864
  store ptr %i.bz, ptr %i.b, align 8, !noalias !33864
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.ck, align 8, !noalias !33864
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @886, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @888, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @778) #50, !noalias !33868
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit26: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit
  %i.cl = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !33869)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !33869, !noalias !33872, !nonnull !12, !noundef !12 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 24 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !33869, !noalias !33872, !noundef !12 ; 7 uses
  %.idx76 = mul nuw nsw i64 %i.cp, 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx76
  %i.cr = icmp eq i64 %i.cp, 0
  br i1 %i.cr, label %._crit_edge75, label %.lr.ph74

bb.x:                                             ; preds = %.lr.ph74
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cv, i64 24 ; 2 uses
  %i.ct = add nuw nsw i64 %i.cw, 1
  %i.cu = icmp eq ptr %i.cs, %i.cq
  br i1 %i.cu, label %._crit_edge75, label %.lr.ph74

.lr.ph74:                                         ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit26, %bb.x
  %i.cv = phi ptr [ %i.cs, %bb.x ], [ %i.cn, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit26 ] ; 2 uses
  %i.cw = phi i64 [ %i.ct, %bb.x ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit26 ] ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !alias.scope !33874, !noalias !33879, !noundef !12
  %.not.i.i35 = icmp eq i64 %i.cy, %i.i
  br i1 %.not.i.i35, label %bb.y, label %bb.x

bb.y:                                             ; preds = %.lr.ph74
  call void @llvm.experimental.noalias.scope.decl(metadata !33884)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !33887)
  %i.cz = icmp ult i64 %i.cp, 384307168202282326
  call void @llvm.assume(i1 %i.cz)
  %.not.i.i.i = icmp samesign ult i64 %i.cw, %i.cp
  br i1 %.not.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.y
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.cw ; 4 uses
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.da, align 8, !noalias !33890 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i, i64 16, i1 false), !noalias !33890
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = xor i64 %i.cw, -1
  %i.dd = add nsw i64 %i.cp, %i.dc
  %i.de = mul nuw nsw i64 %i.dd, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.da, ptr nonnull align 8 %i.db, i64 %i.de, i1 false), !noalias !33893
  %i.df = add nsw i64 %i.cp, -1                   ; 2 uses
  store i64 %i.df, ptr %i.co, align 8, !alias.scope !33895, !noalias !33896
  %.not.i4.i = icmp eq ptr %.sroa.0.0.copyload1.i.i, null
  br i1 %.not.i4.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i, label %bb.ah, !prof !4546

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i, %bb.y
  %i.dg = phi i64 [ %i.cp, %bb.y ], [ %i.df, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i ] ; 2 uses
  %i.dh = icmp samesign ult i64 %i.dg, 384307168202282326
  call void @llvm.assume(i1 %i.dh)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.cw, i64 noundef %i.dg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @908) #50, !noalias !33897
  unreachable

bb.z:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.dj = load ptr, ptr %i.di, align 16, !nonnull !12, !align !249, !noundef !12 ; 8 uses
  %i.dk = cmpxchg ptr %i.dj, i32 0, i32 1 acquire monotonic, align 4, !noalias !33898
  %i.dl = extractvalue { i32, i1 } %i.dk, 1
  br i1 %i.dl, label %bb.ab, label %bb.aa, !prof !5

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.dj) #45, !noalias !33898
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dm = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !33898
  %i.dn = and i64 %i.dm, 9223372036854775807
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit39, label %bb.ac, !prof !5

bb.ac:                                            ; preds = %bb.ab
  %i.dp = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #53, !noalias !33898
  %i.dq = xor i1 %i.dp, true
  %i.dr = zext i1 %i.dq to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit39

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit39: ; preds = %bb.ab, %bb.ac
  %.sroa.01.0.i.i36 = phi i8 [ %i.dr, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 2 uses
  %i.dt = load atomic i8, ptr %i.ds monotonic, align 4, !noalias !33898
  %.not.i.i37.not = icmp eq i8 %i.dt, 0
  br i1 %.not.i.i37.not, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit, label %bb.ad, !prof !5

bb.ad:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !33901
  store ptr %i.dj, ptr %i.c, align 8, !noalias !33901
  %i.du = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %.sroa.01.0.i.i36, ptr %i.du, align 8, !noalias !33901
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @886, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @888, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @781) #50, !noalias !33905
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsl8pJiQOn4hA_9coreutils.exit39
  %i.dv = trunc nuw i8 %.sroa.01.0.i.i36 to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !33906)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !33906, !noalias !33909, !nonnull !12, !noundef !12 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !33906, !noalias !33909, !noundef !12 ; 7 uses
  %.idx = mul nuw nsw i64 %i.dz, 24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.idx
  %i.eb = icmp eq i64 %i.dz, 0
  br i1 %i.eb, label %._crit_edge, label %.lr.ph

bb.ae:                                            ; preds = %.lr.ph
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 2 uses
  %i.ed = add nuw nsw i64 %i.eg, 1
  %i.ee = icmp eq ptr %i.ec, %i.ea
  br i1 %i.ee, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit, %bb.ae
  %i.ef = phi ptr [ %i.ec, %bb.ae ], [ %i.dx, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit ] ; 2 uses
  %i.eg = phi i64 [ %i.ed, %bb.ae ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit ] ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !33911, !noalias !33916, !noundef !12
  %.not.i.i41 = icmp eq i64 %i.ei, %i.i
  br i1 %.not.i.i41, label %bb.af, label %bb.ae

bb.af:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !33921)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i40)
  call void @llvm.experimental.noalias.scope.decl(metadata !33924)
  %i.ej = icmp ult i64 %i.dz, 384307168202282326
  call void @llvm.assume(i1 %i.ej)
  %.not.i.i.i42 = icmp samesign ult i64 %i.eg, %i.dz
  br i1 %.not.i.i.i42, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i44, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i43

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i44: ; preds = %bb.af
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.eg ; 4 uses
  %.sroa.0.0.copyload1.i.i45 = load ptr, ptr %i.ek, align 8, !noalias !33927 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i46 = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i40, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i46, i64 16, i1 false), !noalias !33927
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = xor i64 %i.eg, -1
  %i.en = add nsw i64 %i.dz, %i.em
  %i.eo = mul nuw nsw i64 %i.en, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ek, ptr nonnull align 8 %i.el, i64 %i.eo, i1 false), !noalias !33930
  %i.ep = add nsw i64 %i.dz, -1                   ; 2 uses
  store i64 %i.ep, ptr %i.dy, align 8, !alias.scope !33932, !noalias !33933
  %.not.i4.i47 = icmp eq ptr %.sroa.0.0.copyload1.i.i45, null
  br i1 %.not.i4.i47, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i43, label %bb.au, !prof !4546

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i43: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i44, %bb.af
  %i.eq = phi i64 [ %i.dz, %bb.af ], [ %i.ep, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i44 ] ; 2 uses
  %i.er = icmp samesign ult i64 %i.eq, 384307168202282326
  call void @llvm.assume(i1 %i.er)
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef %i.eg, i64 noundef %i.eq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @908) #50, !noalias !33934
  unreachable

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread: ; preds = %.split.i, %.split.us.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit
  %i.es = load atomic i8, ptr %i.k acquire, align 16
  %.not2.i = icmp eq i8 %i.es, 0
  br i1 %.not2.i, label %.lr.ph.i52, label %.loopexit

.lr.ph.i52:                                       ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.03.i = phi i32 [ %i.ev, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 0, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread ] ; 6 uses
  %i.et = icmp ult i32 %.sroa.0.03.i, 7
  br i1 %i.et, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i52
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i: ; preds = %.lr.ph.i52
  %.not.i.i54 = icmp eq i32 %.sroa.0.03.i, 0
  br i1 %.not.i.i54, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i
  %2 = mul nuw i32 %.sroa.0.03.i, %.sroa.0.03.i   ; 2 uses
  %xtraiter = and i32 %2, 7                       ; 3 uses
  %i.eu = icmp ult i32 %.sroa.0.03.i, 3
  br i1 %i.eu, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %2, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod87 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod87)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !33935

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i, %bb.ag
  %i.ev = add i32 %.sroa.0.03.i, 1
  %i.ew = load atomic i8, ptr %i.k acquire, align 16
  %.not.i53 = icmp eq i8 %i.ew, 0
  br i1 %.not.i53, label %.lr.ph.i52, label %.loopexit

bb.ah:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store ptr %.sroa.0.0.copyload1.i.i, ptr %i.e, align 8
  %i.ex = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i, i64 1 release, align 8, !noalias !33936
  %i.ey = icmp eq i64 %i.ex, 1
  br i1 %i.ey, label %bb.ai, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCs6mPptk5f3AV_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #53
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.ah, %bb.ai
  br i1 %i.cl, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit
  %i.ez = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fa = and i64 %i.ez, 9223372036854775807
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55, label %bb.ak, !prof !5

bb.ak:                                            ; preds = %bb.aj
  %i.fc = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #53
  br i1 %i.fc, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store atomic i8 1, ptr %i.ci monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55: ; preds = %bb.al, %bb.ak, %bb.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit
  %i.fd = atomicrmw xchg ptr %i.bz, i32 0 release, align 4
  %i.fe = icmp eq i32 %i.fd, 2
  br i1 %i.fe, label %bb.am, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit56, !prof !48

bb.am:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bz) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit56

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit56: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i55, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.0.0.copyload = load i128, ptr %i.f, align 16 ; 2 uses
  store i128 -1, ptr %i.f, align 16
  %.not25 = icmp eq i128 %.sroa.0.0.copyload, -1
  br i1 %.not25, label %bb.an, label %.thread, !prof !48

._crit_edge75:                                    ; preds = %bb.x, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit26
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @779) #50
  unreachable

bb.an:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit56
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @780) #50
  unreachable

.thread:                                          ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit56, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit59
  %.sink = phi i128 [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit59 ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit56 ]
  %.sroa.09.0.copyload.sink = phi i128 [ %.sroa.09.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit59 ], [ %.sroa.0.0.copyload, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit56 ]
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.519.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.511.0..sroa_idx, i64 288, i1 false)
  store i128 %.sink, ptr %0, align 16
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sroa.09.0.copyload.sink, ptr %.sroa.418.0..sroa_idx, align 16
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

.loopexit:                                        ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context10wait_until.exit.thread
  store i128 2, ptr %0, align 16
  %.pre = load i128, ptr %i.f, align 16, !range !13306, !alias.scope !33945 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33952)
  call void @llvm.experimental.noalias.scope.decl(metadata !33953)
  call void @llvm.experimental.noalias.scope.decl(metadata !33954)
  %i.ff = icmp eq i128 %.pre, -1
  br i1 %i.ff, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.ao

bb.ao:                                            ; preds = %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !33955)
  %.not.i.i.i.i = icmp eq i128 %.pre, 2
  br i1 %.not.i.i.i.i, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fg = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %.val.i.i.i.i = load i64, ptr %i.fg, align 16, !range !63, !alias.scope !33958, !noundef !12 ; 2 uses
  %i.fh = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.fh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fi = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %.val1.i.i.i.i = load ptr, ptr %i.fi, align 8, !alias.scope !33965, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !33966
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

bb.ar:                                            ; preds = %bb.ao
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33973)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !33976, !nonnull !12, !align !249, !noundef !12 ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !invariant.load !12, !noalias !33976 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fn = load ptr, ptr %i.fj, align 16, !alias.scope !33976, !nonnull !12, !noundef !12
  call void %i.fm(ptr noundef nonnull %i.fn) #51, !noalias !33976, !inline_history !33977
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !range !63, !invariant.load !12, !noalias !33976 ; 2 uses
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.at
  %.val.i.i.i.i.i = load ptr, ptr %i.fj, align 16, !alias.scope !33976, !nonnull !12, !noundef !12
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !range !267, !invariant.load !12, !noalias !33976
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.fp, i64 noundef range(i64 1, -9223372036854775807) %i.fs) #45, !noalias !33976
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zero6PacketINtNtB4_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %.thread, %.loopexit, %bb.ap, %bb.aq, %bb.at, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.au:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsl8pJiQOn4hA_9coreutils.exit.i.i44
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i40, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i40)
  store ptr %.sroa.0.0.copyload1.i.i45, ptr %i.d, align 8
  %i.ft = atomicrmw sub ptr %.sroa.0.0.copyload1.i.i45, i64 1 release, align 8, !noalias !33978
  %i.fu = icmp eq i64 %i.ft, 1
  br i1 %i.fu, label %bb.av, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit57

bb.av:                                            ; preds = %bb.au
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCs6mPptk5f3AV_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #53
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit57

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit57: ; preds = %bb.au, %bb.av
  br i1 %i.dv, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit57
  %i.fv = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.fw = and i64 %i.fv, 9223372036854775807
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.ax, !prof !5

bb.ax:                                            ; preds = %bb.aw
  %i.fy = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #53
  br i1 %i.fy, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store atomic i8 1, ptr %i.ds monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58: ; preds = %bb.ay, %bb.ax, %bb.aw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit57
  %i.fz = atomicrmw xchg ptr %i.dj, i32 0 release, align 4
  %i.ga = icmp eq i32 %i.fz, 2
  br i1 %i.ga, label %bb.az, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit59, !prof !48

bb.az:                                            ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dj) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit59

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit59: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i58, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.09.0.copyload = load i128, ptr %i.f, align 16 ; 2 uses
  store i128 -1, ptr %i.f, align 16
  %.not23 = icmp eq i128 %.sroa.09.0.copyload, -1
  br i1 %.not23, label %bb.ba, label %.thread, !prof !48

._crit_edge:                                      ; preds = %bb.ae, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @782) #50
  unreachable

bb.ba:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit59
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @783) #50
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0Csl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr %.0.val) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.48.i = alloca [16 x i8], align 8         ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !12, !align !249, !noundef !12
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !12, !align !33987, !noundef !12 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 256 ; 10 uses
  %i.i = cmpxchg ptr %i.h, i32 0, i32 1 acquire monotonic, align 4, !noalias !33988
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.h) #45, !noalias !33988
end_hunk_1
begin_hunk_2_@_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4zeroINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10disconnectCsl8pJiQOn4hA_9coreutils:bb.a
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !34597, !noundef !12 ; 2 uses
  %.idx.i2 = mul nuw nsw i64 %i.bj, 24
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx.i2
  %i.bl = icmp eq i64 %i.bj, 0
  br i1 %i.bl, label %._crit_edge.i7, label %.lr.ph.i3

.lr.ph.i3:                                        ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit, %bb.u
  %.sroa.0.02.i4 = phi ptr [ %i.bm, %bb.u ], [ %i.bh, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i4, i64 24 ; 2 uses
  %.sroa.0.0.val.i5 = load ptr, ptr %.sroa.0.02.i4, align 8, !noalias !34597, !nonnull !12, !noundef !12
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val.i5, i64 24
  %i.bo = cmpxchg ptr %i.bn, i64 0, i64 2 acq_rel acquire, align 8, !noalias !34597
  %.sroa.18.0.in.i.i.i6 = extractvalue { i64, i1 } %i.bo, 1
  br i1 %.sroa.18.0.in.i.i.i6, label %bb.t, label %bb.u

._crit_edge.i7:                                   ; preds = %bb.u, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !34600)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !34603, !noalias !34606, !noundef !12 ; 3 uses
  %i.br = icmp ult i64 %i.bq, 384307168202282326
  call void @llvm.assume(i1 %i.br)
  store i64 0, ptr %i.bp, align 8, !alias.scope !34603, !noalias !34606
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !34603, !noalias !34606, !nonnull !12, !noundef !12 ; 2 uses
  %.idx.i.i8 = mul nuw nsw i64 %i.bq, 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx.i.i8
  %i.bv = icmp eq i64 %i.bq, 0
  br i1 %i.bv, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14, label %.lr.ph.i.i9

.lr.ph.i.i9:                                      ; preds = %._crit_edge.i7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit.i.i13, %.lr.ph.i.i9
  %.sroa.01.06.i.i10 = phi ptr [ %i.bt, %.lr.ph.i.i9 ], [ %i.bx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit.i.i13 ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.01.06.i.i10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.01.06.i.i10, i64 24, i1 false), !noalias !34608
  %i.by = load i64, ptr %i.bw, align 8, !noalias !34608, !noundef !12
  %.val.i.i11 = load ptr, ptr %i.a, align 8, !noalias !34608, !nonnull !12, !noundef !12
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i11, i64 24
  %i.ca = cmpxchg ptr %i.bz, i64 0, i64 %i.by acq_rel acquire, align 8, !noalias !34608
  %.sroa.18.0.in.i.i.i.i12 = extractvalue { i64, i1 } %i.ca, 1
  br i1 %.sroa.18.0.in.i.i.i.i12, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cb = load ptr, ptr %i.a, align 8, !noalias !34608, !nonnull !12, !noundef !12
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !34608, !nonnull !12, !noundef !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40 ; 2 uses
  %i.cf = atomicrmw xchg ptr %i.ce, i32 1 release, align 4, !noalias !34608
  %i.cg = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p, %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !34609)
  call void @llvm.experimental.noalias.scope.decl(metadata !34612)
  call void @llvm.experimental.noalias.scope.decl(metadata !34615)
  call void @llvm.experimental.noalias.scope.decl(metadata !34618)
  %i.ch = load ptr, ptr %i.a, align 8, !alias.scope !34621, !noalias !34608, !nonnull !12, !noundef !12
  %i.ci = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !noalias !34622
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.r, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit.i.i13

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCs6mPptk5f3AV_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #53, !noalias !34608
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit.i.i13

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit.i.i13: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34608
  %i.ck = icmp eq ptr %i.bx, %i.bu
  br i1 %i.ck, label %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14, label %bb.o

bb.s:                                             ; preds = %bb.p
  %i.cl = call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.ce) #45, !noalias !34608 ; 0 uses
  br label %bb.q

bb.t:                                             ; preds = %.lr.ph.i3
  %i.cm = load ptr, ptr %.sroa.0.02.i4, align 8, !noalias !34597, !nonnull !12, !noundef !12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !34597, !nonnull !12, !noundef !12
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40 ; 2 uses
  %i.cq = atomicrmw xchg ptr %i.cp, i32 1 release, align 4, !noalias !34597
  %i.cr = icmp eq i32 %i.cq, -1
  br i1 %i.cr, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t, %.lr.ph.i3
  %i.cs = icmp eq ptr %i.bm, %i.bk
  br i1 %i.cs, label %._crit_edge.i7, label %.lr.ph.i3

bb.v:                                             ; preds = %bb.t
  %i.ct = call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.cp) #45, !noalias !34597 ; 0 uses
  br label %bb.u

_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryECsl8pJiQOn4hA_9coreutils.exit.i.i13, %._crit_edge.i7, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit
  br i1 %i.o, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14
  %i.cu = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.cv = and i64 %i.cu, 9223372036854775807
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.x, !prof !5

bb.x:                                             ; preds = %bb.w
  %i.cx = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #53
  br i1 %i.cx, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  store atomic i8 1, ptr %i.l monotonic, align 4
  br label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.y, %bb.x, %bb.w, %_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB2_5Waker10disconnect.exit14
  %i.cy = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.cz = icmp eq i32 %i.cy, 2
  br i1 %i.cz, label %bb.z, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit, !prof !48

bb.z:                                             ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %0) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc4zero5InnerEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.z
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(304) %0, i64 %.0.val, ptr %.8.val, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dead_on_return dereferenceable(304) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [352 x i8], align 16              ; 15 uses
  %i.c = alloca [352 x i8], align 16              ; 15 uses
  %i.d = alloca [320 x i8], align 16              ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [352 x i8], align 16              ; 18 uses
  %.sroa.6.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca [288 x i8], align 16        ; 10 uses
  %.sroa.6.i = alloca [288 x i8], align 16        ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [40 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 7 uses
  %i.r = alloca [320 x i8], align 16              ; 18 uses
  %.sroa.6 = alloca [288 x i8], align 16          ; 6 uses
  switch i64 %.0.val, label %default.unreachable [
    i64 0, label %bb.b
    i64 1, label %bb.v
    i64 2, label %bb.an
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.0.0.copyload = load i128, ptr %1, align 16 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6.0..sroa_idx, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store i32 -1, ptr %i.s, align 8, !noalias !34623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !34623
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.8.val, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, i8 0, i64 40, i1 false), !noalias !34623
  %i.w = load atomic i64, ptr %i.u monotonic, align 8, !noalias !34627 ; 2 uses
  %i.x = load i64, ptr %i.v, align 16, !noalias !34627, !noundef !12 ; 2 uses
  %i.y = and i64 %i.x, %i.w
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.lr.ph.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i

.lr.ph.i.lr.ph.i:                                 ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val, i64 392 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.8.val, i64 408
  %i.ac = getelementptr inbounds nuw i8, ptr %.8.val, i64 416
  %i.ad = getelementptr inbounds nuw i8, ptr %.8.val, i64 384
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ae = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i, %.lr.ph.i.lr.ph.i
  %i.ag = phi i64 [ %i.x, %.lr.ph.i.lr.ph.i ], [ %i.cq, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i ]
  %i.ah = phi i64 [ %i.w, %.lr.ph.i.lr.ph.i ], [ %i.cp, %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !34630)
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %.lr.ph.i.i
  %i.ai = phi i64 [ %i.ag, %.lr.ph.i.i ], [ %i.bl, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ]
  %.sroa.02.043.i.i = phi i64 [ %i.ah, %.lr.ph.i.i ], [ %i.bk, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 8 uses
  %.sroa.0.03842.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i ] ; 12 uses
  %umin = call i32 @llvm.umin.i32(i32 %.sroa.0.03842.i.i, i32 6) ; 2 uses
  %i.aj = mul nuw nsw i32 %umin, %umin            ; 2 uses
  %i.ak = add i64 %i.ai, -1
  %i.al = and i64 %i.ak, %.sroa.02.043.i.i        ; 3 uses
  %i.am = load i64, ptr %i.aa, align 8, !noalias !34632, !noundef !12
  %i.an = sub i64 0, %i.am
  %i.ao = and i64 %.sroa.02.043.i.i, %i.an
  %i.ap = load ptr, ptr %i.ab, align 8, !noalias !34632, !nonnull !12, !noundef !12
  %i.aq = load i64, ptr %i.ac, align 16, !noalias !34632, !noundef !12
  %i.ar = icmp ult i64 %i.al, %i.aq
  call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [320 x i8], ptr %i.ap, i64 %i.al ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 304
  %i.au = load atomic i64, ptr %i.at acquire, align 8, !noalias !34632 ; 2 uses
  %i.av = icmp eq i64 %.sroa.02.043.i.i, %i.au
  br i1 %i.av, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = load i64, ptr %i.aa, align 8, !noalias !34632, !noundef !12
  %i.ax = add i64 %i.aw, %i.au
  %i.ay = add i64 %.sroa.02.043.i.i, 1
  %i.az = icmp eq i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ba = add nuw i64 %i.al, 1
  %i.bb = load i64, ptr %i.ad, align 128, !noalias !34632, !noundef !12
  %i.bc = icmp ult i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.bd = icmp ult i32 %.sroa.0.03842.i.i, 7
  br i1 %i.bd, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #45, !noalias !34632
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i
  %2 = mul nuw i32 %.sroa.0.03842.i.i, %.sroa.0.03842.i.i ; 2 uses
  %xtraiter155 = and i32 %2, 7                    ; 3 uses
  %i.be = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.be, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter159 = and i32 %2, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter160 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter160.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  %niter160.next.7 = add i32 %niter160, 8         ; 2 uses
  %niter160.ncmp.7 = icmp eq i32 %niter160.next.7, %unroll_iter159
  br i1 %niter160.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %bb.d
  fence seq_cst
  %i.bf = load atomic i64, ptr %.8.val monotonic, align 16, !noalias !34632
  %i.bg = load i64, ptr %i.aa, align 8, !noalias !34632, !noundef !12
  %i.bh = add i64 %i.bg, %i.bf
  %i.bi = icmp eq i64 %i.bh, %.sroa.02.043.i.i
  br i1 %i.bi, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i: ; preds = %bb.h
  %..i.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.03842.i.i, i32 6) ; 2 uses
  %3 = mul nuw nsw i32 %..i.i.i.i, %..i.i.i.i     ; 2 uses
  %.not.i13.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i13.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.preheader

.lr.ph.i16.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i
  %xtraiter161 = and i32 %3, 5                    ; 3 uses
  %i.bj = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bj, label %.lr.ph.i16.i.i.epil.preheader, label %.lr.ph.i16.i.i.preheader.new

.lr.ph.i16.i.i.preheader.new:                     ; preds = %.lr.ph.i16.i.i.preheader
  %unroll_iter165 = and i32 %3, 56
  br label %.lr.ph.i16.i.i

.lr.ph.i16.i.i:                                   ; preds = %.lr.ph.i16.i.i, %.lr.ph.i16.i.i.preheader.new
  %niter166 = phi i32 [ 0, %.lr.ph.i16.i.i.preheader.new ], [ %niter166.next.7, %.lr.ph.i16.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  %niter166.next.7 = add i32 %niter166, 8         ; 2 uses
  %niter166.ncmp.7 = icmp eq i32 %niter166.next.7, %unroll_iter165
  br i1 %niter166.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa, label %.lr.ph.i16.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i26.i.i
  %lcmp.mod170.not = icmp eq i32 %xtraiter168, 0
  br i1 %lcmp.mod170.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil.preheader

.lr.ph.i26.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.preheader
  %lcmp.mod171 = icmp ne i32 %xtraiter168, 0
  call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph.i26.i.i.epil

.lr.ph.i26.i.i.epil:                              ; preds = %.lr.ph.i26.i.i.epil, %.lr.ph.i26.i.i.epil.preheader
  %epil.iter169 = phi i32 [ 0, %.lr.ph.i26.i.i.epil.preheader ], [ %epil.iter169.next, %.lr.ph.i26.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !34632
  %epil.iter169.next = add i32 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i32 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.epil, !llvm.loop !34633

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa: ; preds = %.lr.ph.i16.i.i
  %lcmp.mod163.not = icmp eq i32 %xtraiter161, 0
  br i1 %lcmp.mod163.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil.preheader

.lr.ph.i16.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa, %.lr.ph.i16.i.i.preheader
  %lcmp.mod164 = icmp ne i32 %xtraiter161, 0
  call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.i16.i.i.epil

.lr.ph.i16.i.i.epil:                              ; preds = %.lr.ph.i16.i.i.epil, %.lr.ph.i16.i.i.epil.preheader
  %epil.iter162 = phi i32 [ 0, %.lr.ph.i16.i.i.epil.preheader ], [ %epil.iter162.next, %.lr.ph.i16.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !34632
  %epil.iter162.next = add i32 %epil.iter162, 1   ; 2 uses
  %epil.iter162.cmp.not = icmp eq i32 %epil.iter162.next, %xtraiter161
  br i1 %epil.iter162.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i16.i.i.epil, !llvm.loop !34634

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod157.not = icmp eq i32 %xtraiter155, 0
  br i1 %lcmp.mod157.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod158 = icmp ne i32 %xtraiter155, 0
  call void @llvm.assume(i1 %lcmp.mod158)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter156 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter156.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !34632
  %epil.iter156.next = add i32 %epil.iter156, 1   ; 2 uses
  %epil.iter156.cmp.not = icmp eq i32 %epil.iter156.next, %xtraiter155
  br i1 %epil.iter156.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !34635

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit131.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit130.unr-lcssa, %.lr.ph.i16.i.i.epil, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, %.lr.ph.i26.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i12.i.i, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i, %bb.g
  %i.bk = load atomic i64, ptr %i.u monotonic, align 16, !noalias !34632 ; 2 uses
  %.sroa.0.1.i.i = add i32 %.sroa.0.03842.i.i, 1
  %i.bl = load i64, ptr %i.v, align 16, !noalias !34632, !noundef !12 ; 2 uses
  %i.bm = and i64 %i.bl, %i.bk
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.c, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i

bb.i:                                             ; preds = %bb.e
  %i.bo = load i64, ptr %i.aa, align 8, !noalias !34632, !noundef !12
  %i.bp = add i64 %i.bo, %i.ao
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.bq = add i64 %.sroa.02.043.i.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.01.0.i.i = phi i64 [ %i.bq, %bb.j ], [ %i.bp, %bb.i ]
  %i.br = cmpxchg weak ptr %i.u, i64 %.sroa.02.043.i.i, i64 %.sroa.01.0.i.i seq_cst monotonic, align 8, !noalias !34632
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.br, 1
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.thread.i, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i: ; preds = %bb.k
  %.not.i23.i.i = icmp eq i32 %.sroa.0.03842.i.i, 0
  br i1 %.not.i23.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, label %.lr.ph.i26.i.i.preheader

.lr.ph.i26.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i22.i.i
  %xtraiter168 = and i32 %i.aj, 7                 ; 3 uses
  %i.bs = icmp ult i32 %.sroa.0.03842.i.i, 3
  br i1 %i.bs, label %.lr.ph.i26.i.i.epil.preheader, label %.lr.ph.i26.i.i.preheader.new

.lr.ph.i26.i.i.preheader.new:                     ; preds = %.lr.ph.i26.i.i.preheader
  %unroll_iter172 = and i32 %i.aj, 56
  br label %.lr.ph.i26.i.i

.lr.ph.i26.i.i:                                   ; preds = %.lr.ph.i26.i.i, %.lr.ph.i26.i.i.preheader.new
  %niter173 = phi i32 [ 0, %.lr.ph.i26.i.i.preheader.new ], [ %niter173.next.7, %.lr.ph.i26.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  call void @llvm.x86.sse2.pause(), !noalias !34632
  %niter173.next.7 = add i32 %niter173, 8         ; 2 uses
  %niter173.ncmp.7 = icmp eq i32 %niter173.next.7, %unroll_iter172
  br i1 %niter173.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i.loopexit.unr-lcssa, label %.lr.ph.i26.i.i

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.h
  %i.bt = load i32, ptr %i.s, align 8, !range !30286, !noalias !34623, !noundef !12 ; 2 uses
  %.not.i = icmp eq i32 %i.bt, -1
  br i1 %.not.i, label %bb.m, label %bb.l

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.as, i64 304
  store ptr %i.as, ptr %i.p, align 8, !alias.scope !34630, !noalias !34623
  %i.bv = add i64 %.sroa.02.043.i.i, 1            ; 2 uses
  store i64 %i.bv, ptr %i.t, align 8, !alias.scope !34630, !noalias !34623
  store i128 %.sroa.0.0.copyload, ptr %i.as, align 16, !noalias !34636
  %.sroa.5.0..val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.0..val.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6, i64 288, i1 false), !noalias !34639
  store atomic i64 %i.bv, ptr %i.bu release, align 16, !noalias !34640
  %i.bw = getelementptr inbounds nuw i8, ptr %.8.val, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bw) #51, !noalias !34640
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit32.i.i, %bb.b
  %.not7.i = icmp eq i128 %.sroa.0.0.copyload, -1
  br i1 %.not7.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils.exit, label %bb.u

bb.l:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i
  %i.bx = load i64, ptr %i.q, align 8, !noalias !34623, !noundef !12 ; 2 uses
  %i.by = call { i64, i32 } @_RNvMNtCs2vKOLqTMYjT_3std4timeNtB2_7Instant3now() #45, !noalias !34623 ; 2 uses
  %i.bz = extractvalue { i64, i32 } %i.by, 0      ; 2 uses
  %i.ca = icmp eq i64 %i.bz, %i.bx
  br i1 %i.ca, label %.split.i, label %bb.s

bb.m:                                             ; preds = %bb.s, %.split.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !34642
  store ptr %i.p, ptr %i.o, align 8, !noalias !34623
  store ptr %.8.val, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !34623
  store ptr %i.q, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !34623
  %i.cb = load i8, ptr %i.af, align 8, !range !1480, !noalias !34645, !noundef !12
  %i.cc = icmp eq i8 %i.cb, 1
  br i1 %i.cc, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.i.i.i, !prof !5

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.m
  %i.cd = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs2vKOLqTMYjT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsl8pJiQOn4hA_9coreutils(ptr noundef nonnull align 8 %i.ae, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) #45, !noalias !34642 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs_0uECsl8pJiQOn4hA_9coreutils.exit.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i

_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.i.i.i, %bb.m
  %.sroa.0.0.i.i.i2.i.i.i = phi ptr [ %i.cd, %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ %i.ae, %bb.m ] ; 4 uses
  %i.cf = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !34642, !noundef !12 ; 5 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !34642
  %.not.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.p, !prof !48

bb.n:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !34642
  %i.cg = call noundef nonnull ptr @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB2_7Context3new() #45, !noalias !34642 ; 3 uses
  store ptr %i.cg, ptr %i.n, align 8, !noalias !34642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !34642
  store ptr %i.p, ptr %i.m, align 8, !noalias !34642
  store ptr %.8.val, ptr %.sroa.5.0..sroa_idx5.i.i.i.i, align 8, !noalias !34623
  store ptr %i.q, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i, align 8, !noalias !34623
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0Csl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m, ptr nonnull %i.cg) #51, !noalias !34642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !34642
  %i.ch = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !34652
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.o, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCs6mPptk5f3AV_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #53, !noalias !34642
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !34642
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store atomic i64 0, ptr %i.cj release, align 8, !noalias !34642
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  store atomic ptr null, ptr %i.ck release, align 8, !noalias !34642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !34642
  store ptr %i.p, ptr %i.l, align 8, !noalias !34642
  store ptr %.8.val, ptr %.sroa.59.0..sroa_idx10.i.i.i.i, align 8, !noalias !34623
  store ptr %i.q, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i, align 8, !noalias !34623
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0Csl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr nonnull %i.cf) #51, !noalias !34642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !34642
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !34642
  %i.cl = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !34642, !noundef !12 ; 3 uses
  store ptr %i.cl, ptr %i.k, align 8, !noalias !34642
  store ptr %i.cf, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !34642
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !noalias !34659
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.r, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCs6mPptk5f3AV_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #53, !noalias !34642
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.r, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !34642
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs_0uECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs0_0Csl8pJiQOn4hA_9coreutils(ptr nonnull %i.o) #51, !noalias !34642
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4send0uEs_0uECsl8pJiQOn4hA_9coreutils.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !34642
  %i.cp = load atomic i64, ptr %i.u monotonic, align 16, !noalias !34668 ; 2 uses
  %i.cq = load i64, ptr %i.v, align 16, !noalias !34668, !noundef !12 ; 2 uses
  %i.cr = and i64 %i.cq, %i.cp
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i

.split.i:                                         ; preds = %bb.l
  %i.ct = extractvalue { i64, i32 } %i.by, 1      ; 2 uses
  %i.cu = icmp ult i32 %i.ct, 1000000000
  call void @llvm.assume(i1 %i.cu)
  %.not30.i = icmp samesign ult i32 %i.ct, %i.bt
  br i1 %.not30.i, label %bb.m, label %bb.t

bb.s:                                             ; preds = %bb.l
  %.not29.i = icmp slt i64 %i.bz, %i.bx
  br i1 %.not29.i, label %bb.m, label %bb.t

bb.t:                                             ; preds = %bb.s, %.split.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i128 %.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 16
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6, i64 288, i1 false)
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils.exit

bb.u:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i
  %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.6, i64 288, i1 false)
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i128 %.sroa.0.0.copyload, ptr %.sroa.43.0..sroa_idx.i, align 16
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE4sendCsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.thread.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i, %bb.u, %bb.t
  %i.cv = phi i128 [ 1, %bb.u ], [ 0, %bb.t ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !34623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ck

bb.v:                                             ; preds = %bb.a
  %.sroa.02.0.copyload = load i128, ptr %1, align 16 ; 3 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.cx = load atomic i64, ptr %i.cw acquire, align 8, !noalias !34670 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 4 uses
  %i.cz = load atomic ptr, ptr %i.cy acquire, align 8, !noalias !34670
  %i.da = and i64 %i.cx, 1
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %.lr.ph.i.i3, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE10start_sendCsl8pJiQOn4hA_9coreutils.exit.thread.i: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %.sroa.5.i, ptr noundef nonnull align 16 dereferenceable(288) %.sroa.63.0..sroa_idx, i64 288, i1 false)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelINtNtCs6JMX4GRUq9U_4core6result6ResultNtCsfIwuYbgPzJV_5uu_du13StatPrintInfoINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EEE5writeCsl8pJiQOn4hA_9coreutils.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.v
  %i.dc = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %bb.w

bb.w:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i3
  %.sroa.03.049.i.i = phi i64 [ %i.cx, %.lr.ph.i.i3 ], [ %i.dl, %.backedge.i.i ] ; 3 uses
  %.sroa.07.048.i.i = phi ptr [ %i.cz, %.lr.ph.i.i3 ], [ %i.dm, %.backedge.i.i ] ; 2 uses
  %.sroa.0.047.i.i = phi i32 [ 0, %.lr.ph.i.i3 ], [ %.sroa.0.0.be.i.i, %.backedge.i.i ] ; 12 uses
  %.sroa.035.046.i.i = phi ptr [ null, %.lr.ph.i.i3 ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 3 uses
  %i.dd = lshr exact i64 %.sroa.03.049.i.i, 1
  %i.de = and i64 %i.dd, 31                       ; 3 uses
  %i.df = icmp eq i64 %i.de, 31
  br i1 %i.df, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dg = icmp ult i32 %.sroa.0.047.i.i, 7
  br i1 %i.dg, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8, label %bb.y

end_hunk_2
