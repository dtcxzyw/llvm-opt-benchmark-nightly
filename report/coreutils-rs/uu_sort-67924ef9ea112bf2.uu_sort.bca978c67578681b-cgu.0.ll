Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_sort-67924ef9ea112bf2.uu_sort.bca978c67578681b-cgu.0?download=true
inline.NumInlined: 5661
inline.NumDeleted: 2556
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 129
begin_hunk_0_@_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendBS_:bb.a
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEB1C_.exit.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEs_0uEB3w_.exit.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i
  call fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEs0_0B1E_(ptr nonnull %i.o) #38, !noalias !13712
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEB1C_.exit.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEB1C_.exit.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4send0uEs_0uEB3w_.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13712
  %i.cr = load atomic i64, ptr %i.u monotonic, align 16, !noalias !13738 ; 2 uses
  %i.cs = load i64, ptr %i.v, align 16, !noalias !13738, !noundef !5 ; 2 uses
  %i.ct = and i64 %i.cs, %i.cr
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i

.split.i:                                         ; preds = %bb.l
  %i.cv = extractvalue { i64, i32 } %i.ca, 1      ; 2 uses
  %i.cw = icmp ult i32 %i.cv, 1000000000
  call void @llvm.assume(i1 %i.cw)
  %.not30.i = icmp samesign ult i32 %i.cv, %i.bv
  br i1 %.not30.i, label %bb.m, label %bb.t

bb.s:                                             ; preds = %bb.l
  %.not29.i = icmp slt i64 %i.cb, %i.bz
  br i1 %.not29.i, label %bb.m, label %bb.t

bb.t:                                             ; preds = %bb.s, %.split.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6, i64 216, i1 false)
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit

bb.u:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i
  %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6, i64 216, i1 false)
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.0.0.copyload, ptr %.sroa.43.0..sroa_idx.i, align 8
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit: ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.thread.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i, %bb.u, %bb.t
  %i.cx = phi i64 [ 1, %bb.u ], [ 0, %bb.t ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ca

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.63)
  %.sroa.02.0.copyload = load i64, ptr %1, align 8 ; 3 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.63, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.63.0..sroa_idx, i64 216, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.cz = load atomic i64, ptr %i.cy acquire, align 8, !noalias !13740 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 4 uses
  %i.db = load atomic ptr, ptr %i.da acquire, align 8, !noalias !13740
  %i.dc = and i64 %i.cz, 1
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.i.i3, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread.i: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.63.0..sroa_idx, i64 216, i1 false)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.v
  %i.de = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %bb.w

bb.w:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i3
  %.sroa.03.049.i.i = phi i64 [ %i.cz, %.lr.ph.i.i3 ], [ %i.dn, %.backedge.i.i ] ; 3 uses
  %.sroa.07.048.i.i = phi ptr [ %i.db, %.lr.ph.i.i3 ], [ %i.do, %.backedge.i.i ] ; 2 uses
  %.sroa.0.047.i.i = phi i32 [ 0, %.lr.ph.i.i3 ], [ %.sroa.0.0.be.i.i, %.backedge.i.i ] ; 12 uses
  %.sroa.035.046.i.i = phi ptr [ null, %.lr.ph.i.i3 ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 3 uses
  %i.df = lshr exact i64 %.sroa.03.049.i.i, 1
  %i.dg = and i64 %i.df, 31                       ; 3 uses
  %i.dh = icmp eq i64 %i.dg, 31
  br i1 %i.dh, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.di = icmp ult i32 %.sroa.0.047.i.i, 7
  br i1 %i.di, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !13740
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8: ; preds = %bb.x
  %.not.i.i.i9 = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i.i.i9, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i12.preheader

.lr.ph.i.i.i12.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8
  %i.dj = mul nuw i32 %.sroa.0.047.i.i, %.sroa.0.047.i.i ; 2 uses
  %xtraiter123 = and i32 %i.dj, 7                 ; 3 uses
  %i.dk = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.dk, label %.lr.ph.i.i.i12.epil.preheader, label %.lr.ph.i.i.i12.preheader.new

.lr.ph.i.i.i12.preheader.new:                     ; preds = %.lr.ph.i.i.i12.preheader
  %unroll_iter127 = and i32 %i.dj, 56
  br label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %.lr.ph.i.i.i12, %.lr.ph.i.i.i12.preheader.new
  %niter128 = phi i32 [ 0, %.lr.ph.i.i.i12.preheader.new ], [ %niter128.next.7, %.lr.ph.i.i.i12 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  %niter128.next.7 = add i32 %niter128, 8         ; 2 uses
  %niter128.ncmp.7 = icmp eq i32 %niter128.next.7, %unroll_iter127
  br i1 %niter128.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i12

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i12
  %lcmp.mod125.not = icmp eq i32 %xtraiter123, 0
  br i1 %lcmp.mod125.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i12.epil.preheader

.lr.ph.i.i.i12.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i12.preheader
  %lcmp.mod126 = icmp ne i32 %xtraiter123, 0
  tail call void @llvm.assume(i1 %lcmp.mod126)
  br label %.lr.ph.i.i.i12.epil

.lr.ph.i.i.i12.epil:                              ; preds = %.lr.ph.i.i.i12.epil, %.lr.ph.i.i.i12.epil.preheader
  %epil.iter124 = phi i32 [ 0, %.lr.ph.i.i.i12.epil.preheader ], [ %epil.iter124.next, %.lr.ph.i.i.i12.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  %epil.iter124.next = add i32 %epil.iter124, 1   ; 2 uses
  %epil.iter124.cmp.not = icmp eq i32 %epil.iter124.next, %xtraiter123
  br i1 %epil.iter124.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i12.epil, !llvm.loop !13746

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i12.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i8, %bb.y
  %i.dl = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.z:                                             ; preds = %bb.w
  %i.dm = icmp eq i64 %i.dg, 30                   ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.035.046.i.i, null
  %or.cond.i.i = select i1 %i.dm, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.aa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2m_.exit.i.i

.backedge.i.i:                                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, %bb.ah, %bb.ag, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.035.0.be.i.i = phi ptr [ %.sroa.035.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %.sroa.035.046.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %i.du, %bb.ag ], [ %i.du, %bb.ah ] ; 2 uses
  %.sroa.0.0.be.i.i = phi i32 [ %i.ec, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %i.dl, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %.sroa.0.047.i.i, %bb.ag ], [ %.sroa.0.047.i.i, %bb.ah ]
  %i.dn = load atomic i64, ptr %i.cy acquire, align 8, !noalias !13740 ; 2 uses
  %i.do = load atomic ptr, ptr %i.da acquire, align 8, !noalias !13740
  %i.dp = and i64 %i.dn, 1
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %bb.w, label %._crit_edge.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2m_.exit.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.046.i.i, %bb.z ], [ %i.ds, %bb.aa ] ; 7 uses
  %i.dr = icmp eq ptr %.sroa.07.048.i.i, null
  br i1 %i.dr, label %bb.ac, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !13740
  %i.ds = tail call noalias noundef align 8 dereferenceable_or_null(7200) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 7200, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !13740 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2m_.exit.i.i, !prof !82

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 7200) #37, !noalias !13740
  unreachable

bb.ac:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2m_.exit.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !13740
  %i.du = tail call noalias noundef align 8 dereferenceable_or_null(7200) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 7200, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !13740 ; 6 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.ad, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE13new_zeroed_inB1w_.exit16.i.i, !prof !82

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 7200) #37, !noalias !13740
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE13new_zeroed_inB1w_.exit16.i.i: ; preds = %bb.ac
  %i.dw = cmpxchg ptr %i.da, ptr null, ptr %i.du release monotonic, align 8, !noalias !13740
  %i.dx = extractvalue { ptr, i1 } %i.dw, 1
  br i1 %i.dx, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.af, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2m_.exit.i.i
  %.sroa.07.2.i.i = phi ptr [ %i.du, %bb.af ], [ %.sroa.07.048.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEB2m_.exit.i.i ] ; 3 uses
  %i.dy = add i64 %.sroa.03.049.i.i, 2
  %i.dz = cmpxchg weak ptr %i.cy, i64 %.sroa.03.049.i.i, i64 %i.dy seq_cst acquire, align 8, !noalias !13740
  %.sroa.18.0.in.i.i.i4 = extractvalue { i64, i1 } %i.dz, 1
  br i1 %.sroa.18.0.in.i.i.i4, label %bb.ai, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i

bb.af:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE13new_zeroed_inB1w_.exit16.i.i
  store atomic ptr %i.du, ptr %i.de release, align 8, !noalias !13740
  br label %bb.ae

bb.ag:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE13new_zeroed_inB1w_.exit16.i.i
  %i.ea = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %i.ea, label %.backedge.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 7200, i64 noundef 8) #34, !noalias !13740
  br label %.backedge.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i: ; preds = %bb.ae
  %..i.i.i.i5 = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.047.i.i, i32 6) ; 2 uses
  %2 = mul nuw nsw i32 %..i.i.i.i5, %..i.i.i.i5   ; 2 uses
  %.not.i22.i.i = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i22.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.preheader

.lr.ph.i25.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %xtraiter = and i32 %2, 5                       ; 3 uses
  %i.eb = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.eb, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i32 %2, 56
  br label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i25.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i25.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil.preheader

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %lcmp.mod122 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %.lr.ph.i25.i.i.epil

.lr.ph.i25.i.i.epil:                              ; preds = %.lr.ph.i25.i.i.epil, %.lr.ph.i25.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i25.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i25.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13740
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil, !llvm.loop !13747

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %i.ec = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.ai:                                            ; preds = %bb.ae
  br i1 %i.dm, label %bb.aj, label %._crit_edge.i.i

bb.aj:                                            ; preds = %bb.ai
  %.not13.i.i = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %.not13.i.i, label %bb.ak, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread20.i, !prof !82

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread20.i: ; preds = %bb.aj
  store atomic ptr %.sroa.035.2.i.i, ptr %i.da release, align 8, !noalias !13740
  %i.ed = atomicrmw add ptr %i.cy, i64 2 release, align 8, !noalias !13740 ; 0 uses
  store atomic ptr %.sroa.035.2.i.i, ptr %.sroa.07.2.i.i release, align 8, !noalias !13740
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.63, i64 216, i1 false), !noalias !13748
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @400) #40, !noalias !13740
  unreachable

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.ai
  %.sroa.9.0.i = phi i64 [ %i.dg, %bb.ai ], [ 0, %.backedge.i.i ]
  %.sroa.43.0.i = phi ptr [ %.sroa.07.2.i.i, %bb.ai ], [ null, %.backedge.i.i ] ; 2 uses
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.ai ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 2 uses
  %i.ee = icmp eq ptr %.sroa.035.3.i.i, null
  br i1 %i.ee, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i.i, i64 noundef 7200, i64 noundef 8) #34, !noalias !13740
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i: ; preds = %bb.al, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.63.0..sroa_idx, i64 216, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13752)
  %i.ef = icmp eq ptr %.sroa.43.0.i, null
  br i1 %i.ef, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.thread.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread20.i
  %.sroa.43.126.i = phi ptr [ %.sroa.07.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread20.i ], [ %.sroa.43.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i ]
  %.sroa.9.125.i = phi i64 [ 30, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread20.i ], [ %.sroa.9.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.43.126.i, i64 8
  %i.eh = getelementptr inbounds nuw [232 x i8], ptr %i.eg, i64 %.sroa.9.125.i ; 3 uses
  store i64 %.sroa.02.0.copyload, ptr %i.eh, align 8, !noalias !13754
  %.sroa.5.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.0..sroa_idx9.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.i, i64 216, i1 false), !noalias !13754
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 224
  %i.ej = atomicrmw or ptr %i.ei, i64 1 release, align 8, !noalias !13755 ; 0 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.ek) #38, !noalias !13755
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE10start_sendB10_.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.i, i64 216, i1 false), !alias.scope !13756, !noalias !13757
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %.not.i1 = icmp eq i64 %.sroa.02.0.copyload, -1
  br i1 %.not.i1, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit, label %bb.am

bb.am:                                            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6.i, i64 216, i1 false)
  %.sroa.4.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.02.0.copyload, ptr %.sroa.4.0..sroa_idx.i2, align 8
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE4sendB10_.exit: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.thread.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i, %bb.am
  %i.el = phi i64 [ 1, %bb.am ], [ 2, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.i ], [ 2, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkE5writeB10_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.63)
  br label %bb.ca

bb.an:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13758)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.em = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 -1, ptr %i.em, align 8, !noalias !13761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13761
  %i.en = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false), !noalias !13761
  %i.eo = cmpxchg ptr %.8.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !13763
  %i.ep = extractvalue { i32, i1 } %i.eo, 1
  br i1 %i.ep, label %bb.ap, label %bb.ao, !prof !34

bb.ao:                                            ; preds = %bb.an
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.8.val) #34, !noalias !13763
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.eq = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !13763
  %i.er = and i64 %i.eq, 9223372036854775807
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i, label %bb.aq, !prof !34

bb.aq:                                            ; preds = %bb.ap
  %i.et = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !13763
  %i.eu = xor i1 %i.et, true
  %i.ev = zext i1 %i.eu to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %bb.aq, %bb.ap
  %.sroa.01.0.i.i.i = phi i8 [ %i.ev, %bb.aq ], [ 0, %bb.ap ] ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 3 uses
  %i.ex = load atomic i8, ptr %i.ew monotonic, align 1, !noalias !13763
  %.not.i.i.not.i = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i, label %bb.ar, !prof !34

bb.ar:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13766
  store ptr %.8.val, ptr %i.g, align 8, !noalias !13766
  %i.ey = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.ey, align 8, !noalias !13766
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @405) #40, !noalias !13770
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i
  %i.ez = trunc nuw i8 %.sroa.01.0.i.i.i to i1    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13771)
  %i.fa = getelementptr inbounds nuw i8, ptr %.8.val, i64 72 ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !alias.scope !13771, !noalias !13774, !noundef !5 ; 6 uses
  %i.fc = icmp ult i64 %i.fb, 384307168202282326
  tail call void @llvm.assume(i1 %i.fc)
  %i.fd = icmp eq i64 %i.fb, 0
  br i1 %i.fd, label %.loopexit.i, label %bb.as

bb.as:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i
  %i.fe = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !13771, !noalias !13774, !nonnull !5, !noundef !5 ; 3 uses
  %.idx.i.i = mul nuw nsw i64 %i.fb, 24
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.idx.i.i
  br label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i, %bb.as
  %.sroa.02.010.i.i.i = phi i64 [ %i.gc, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i ], [ 0, %bb.as ] ; 5 uses
  %i.fj = phi ptr [ %i.fk, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i ], [ %i.fh, %bb.as ] ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13776)
  %i.fl = load ptr, ptr %i.fj, align 8, !alias.scope !13776, !noalias !13779, !nonnull !5, !noundef !5 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  %i.fn = load i64, ptr %i.fm, align 8, !noalias !13783, !noundef !5
  %.not.i.i.i.i17 = icmp eq i64 %i.fn, %i.ff
  br i1 %.not.i.i.i.i17, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !13776, !noalias !13779, !noundef !5
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fr = cmpxchg ptr %i.fq, i64 0, i64 %i.fp acq_rel acquire, align 8, !noalias !13783
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.fr, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %bb.au, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i

bb.au:                                            ; preds = %bb.at
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !alias.scope !13776, !noalias !13779, !noundef !5 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendBS_:bb.a
  store ptr %i.p, ptr %i.l, align 8, !noalias !13869
  store ptr %.8.val, ptr %.sroa.59.0..sroa_idx10.i.i.i.i, align 8
  store ptr %i.q, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i, align 8
  call fastcc void @_RNCNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB6_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0B12_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr nonnull %i.cf) #38, !noalias !13869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !13869
  %i.cl = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !13869, !noundef !5 ; 3 uses
  store ptr %i.cl, ptr %i.k, align 8, !noalias !13869
  store ptr %i.cf, ptr %.sroa.0.0.i.i.i2.i.i.i, align 8, !noalias !13869
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !noalias !13886
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.s, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context5InnerE9drop_slowCsgcf5BHVXlUt_7uu_sort(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.k) #39, !noalias !13869
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13869
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEB1C_.exit.i

_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEs_0uEB3w_.exit.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsgcf5BHVXlUt_7uu_sort.exit.i.i.i
  call fastcc void @_RNCINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEs0_0B1E_(ptr nonnull %i.o) #38, !noalias !13869
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEB1C_.exit.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEB1C_.exit.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0uEs_0uEB3w_.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13869
  %i.cp = load atomic i64, ptr %i.t monotonic, align 16, !noalias !13895 ; 2 uses
  %i.cq = load i64, ptr %i.u, align 16, !noalias !13895, !noundef !5 ; 2 uses
  %i.cr = and i64 %i.cq, %i.cp
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE5writeB10_.exit.i

.split.i:                                         ; preds = %bb.m
  %i.ct = extractvalue { i64, i32 } %i.by, 1      ; 2 uses
  %i.cu = icmp ult i32 %i.ct, 1000000000
  call void @llvm.assume(i1 %i.cu)
  %.not20.i = icmp samesign ult i32 %i.ct, %i.bt
  br i1 %.not20.i, label %bb.n, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendB10_.exit

bb.t:                                             ; preds = %bb.m
  %.not19.i = icmp slt i64 %i.bz, %i.bx
  br i1 %.not19.i, label %bb.n, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendB10_.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4sendB10_.exit: ; preds = %.split.i, %bb.t, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE5writeB10_.exit.i
  %.sroa.4.0.i = phi ptr [ %.sroa.0.0.i11.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE5writeB10_.exit.i ], [ %0, %bb.t ], [ %0, %.split.i ]
  %.sroa.02.0.i = phi i64 [ %..i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE5writeB10_.exit.i ], [ 0, %bb.t ], [ 0, %.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.bv

bb.u:                                             ; preds = %bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8, !noalias !13897 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 4 uses
  %i.cy = load atomic ptr, ptr %i.cx acquire, align 8, !noalias !13897
  %i.cz = and i64 %i.cw, 1
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %.lr.ph.i.i10, label %_RNCNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0BU_.exit

.lr.ph.i.i10:                                     ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %bb.v

bb.v:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i10
  %.sroa.03.049.i.i = phi i64 [ %i.cw, %.lr.ph.i.i10 ], [ %i.dk, %.backedge.i.i ] ; 3 uses
  %.sroa.07.048.i.i = phi ptr [ %i.cy, %.lr.ph.i.i10 ], [ %i.dl, %.backedge.i.i ] ; 2 uses
  %.sroa.0.047.i.i = phi i32 [ 0, %.lr.ph.i.i10 ], [ %.sroa.0.0.be.i.i, %.backedge.i.i ] ; 12 uses
  %.sroa.035.046.i.i = phi ptr [ null, %.lr.ph.i.i10 ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 3 uses
  %i.dc = lshr exact i64 %.sroa.03.049.i.i, 1
  %i.dd = and i64 %i.dc, 31                       ; 3 uses
  %i.de = icmp eq i64 %i.dd, 31
  br i1 %i.de, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.df = icmp ult i32 %.sroa.0.047.i.i, 7
  br i1 %i.df, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i15, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !13897
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i15: ; preds = %bb.w
  %.not.i.i.i16 = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i.i.i16, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i19.preheader

.lr.ph.i.i.i19.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i15
  %i.dg = mul nuw i32 %.sroa.0.047.i.i, %.sroa.0.047.i.i ; 2 uses
  %xtraiter119 = and i32 %i.dg, 7                 ; 3 uses
  %i.dh = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.dh, label %.lr.ph.i.i.i19.epil.preheader, label %.lr.ph.i.i.i19.preheader.new

.lr.ph.i.i.i19.preheader.new:                     ; preds = %.lr.ph.i.i.i19.preheader
  %unroll_iter123 = and i32 %i.dg, 56
  br label %.lr.ph.i.i.i19

.lr.ph.i.i.i19:                                   ; preds = %.lr.ph.i.i.i19, %.lr.ph.i.i.i19.preheader.new
  %niter124 = phi i32 [ 0, %.lr.ph.i.i.i19.preheader.new ], [ %niter124.next.7, %.lr.ph.i.i.i19 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  %niter124.next.7 = add i32 %niter124, 8         ; 2 uses
  %niter124.ncmp.7 = icmp eq i32 %niter124.next.7, %unroll_iter123
  br i1 %niter124.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i19

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i19
  %lcmp.mod121.not = icmp eq i32 %xtraiter119, 0
  br i1 %lcmp.mod121.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i19.epil.preheader

.lr.ph.i.i.i19.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i19.preheader
  %lcmp.mod122 = icmp ne i32 %xtraiter119, 0
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %.lr.ph.i.i.i19.epil

.lr.ph.i.i.i19.epil:                              ; preds = %.lr.ph.i.i.i19.epil, %.lr.ph.i.i.i19.epil.preheader
  %epil.iter120 = phi i32 [ 0, %.lr.ph.i.i.i19.epil.preheader ], [ %epil.iter120.next, %.lr.ph.i.i.i19.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  %epil.iter120.next = add i32 %epil.iter120, 1   ; 2 uses
  %epil.iter120.cmp.not = icmp eq i32 %epil.iter120.next, %xtraiter119
  br i1 %epil.iter120.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i19.epil, !llvm.loop !13900

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i19.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i15, %bb.x
  %i.di = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.y:                                             ; preds = %bb.v
  %i.dj = icmp eq i64 %i.dd, 30                   ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.035.046.i.i, null
  %or.cond.i.i = select i1 %i.dj, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.z, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2m_.exit.i.i

.backedge.i.i:                                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, %bb.ag, %bb.af, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.035.0.be.i.i = phi ptr [ %.sroa.035.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %.sroa.035.046.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %i.dr, %bb.af ], [ %i.dr, %bb.ag ] ; 2 uses
  %.sroa.0.0.be.i.i = phi i32 [ %i.dz, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %i.di, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %.sroa.0.047.i.i, %bb.af ], [ %.sroa.0.047.i.i, %bb.ag ]
  %i.dk = load atomic i64, ptr %i.cv acquire, align 8, !noalias !13897 ; 2 uses
  %i.dl = load atomic ptr, ptr %i.cx acquire, align 8, !noalias !13897
  %i.dm = and i64 %i.dk, 1
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.v, label %._crit_edge.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2m_.exit.i.i: ; preds = %bb.z, %bb.y
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.046.i.i, %bb.y ], [ %i.dp, %bb.z ] ; 7 uses
  %i.do = icmp eq ptr %.sroa.07.048.i.i, null
  br i1 %i.do, label %bb.ab, label %bb.ad

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !13897
  %i.dp = tail call noalias noundef align 8 dereferenceable_or_null(504) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 504, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !13897 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.aa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2m_.exit.i.i, !prof !82

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 504) #37, !noalias !13897
  unreachable

bb.ab:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2m_.exit.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !13897
  %i.dr = tail call noalias noundef align 8 dereferenceable_or_null(504) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 504, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !13897 ; 6 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.ac, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEE13new_zeroed_inB1w_.exit16.i.i, !prof !82

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 504) #37, !noalias !13897
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEE13new_zeroed_inB1w_.exit16.i.i: ; preds = %bb.ab
  %i.dt = cmpxchg ptr %i.cx, ptr null, ptr %i.dr release monotonic, align 8, !noalias !13897
  %i.du = extractvalue { ptr, i1 } %i.dt, 1
  br i1 %i.du, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.ae, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2m_.exit.i.i
  %.sroa.07.2.i.i = phi ptr [ %i.dr, %bb.ae ], [ %.sroa.07.048.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEEEEB2m_.exit.i.i ] ; 3 uses
  %i.dv = add i64 %.sroa.03.049.i.i, 2
  %i.dw = cmpxchg weak ptr %i.cv, i64 %.sroa.03.049.i.i, i64 %i.dv seq_cst acquire, align 8, !noalias !13897
  %.sroa.18.0.in.i.i.i11 = extractvalue { i64, i1 } %i.dw, 1
  br i1 %.sroa.18.0.in.i.i.i11, label %bb.ah, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i

bb.ae:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEE13new_zeroed_inB1w_.exit16.i.i
  store atomic ptr %i.dr, ptr %i.db release, align 8, !noalias !13897
  br label %bb.ad

bb.af:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkEE13new_zeroed_inB1w_.exit16.i.i
  %i.dx = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %i.dx, label %.backedge.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 504, i64 noundef 8) #34, !noalias !13897
  br label %.backedge.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i: ; preds = %bb.ad
  %..i.i.i.i12 = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.047.i.i, i32 6) ; 2 uses
  %1 = mul nuw nsw i32 %..i.i.i.i12, %..i.i.i.i12 ; 2 uses
  %.not.i22.i.i = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i22.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.preheader

.lr.ph.i25.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %xtraiter = and i32 %1, 5                       ; 3 uses
  %i.dy = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.dy, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i32 %1, 56
  br label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i25.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i25.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil.preheader

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %lcmp.mod118 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %.lr.ph.i25.i.i.epil

.lr.ph.i25.i.i.epil:                              ; preds = %.lr.ph.i25.i.i.epil, %.lr.ph.i25.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i25.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i25.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !13897
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil, !llvm.loop !13901

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %i.dz = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.ah:                                            ; preds = %bb.ad
  br i1 %i.dj, label %bb.ai, label %._crit_edge.i.i

bb.ai:                                            ; preds = %bb.ah
  %.not13.i.i = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %.not13.i.i, label %bb.aj, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.thread11.i, !prof !82

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.thread11.i: ; preds = %bb.ai
  store atomic ptr %.sroa.035.2.i.i, ptr %i.cx release, align 8, !noalias !13897
  %i.ea = atomicrmw add ptr %i.cv, i64 2 release, align 8, !noalias !13897 ; 0 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i.i, i64 496
  store atomic ptr %.sroa.035.2.i.i, ptr %i.eb release, align 8, !noalias !13897
  br label %.thread58

bb.aj:                                            ; preds = %bb.ai
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @400) #40, !noalias !13897
  unreachable

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.ah
  %.sroa.9.0.i = phi i64 [ %i.dd, %bb.ah ], [ 0, %.backedge.i.i ]
  %.sroa.4.0.i13 = phi ptr [ %.sroa.07.2.i.i, %bb.ah ], [ null, %.backedge.i.i ] ; 2 uses
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.ah ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 2 uses
  %i.ec = icmp eq ptr %.sroa.035.3.i.i, null
  br i1 %i.ec, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i.i, i64 noundef 504, i64 noundef 8) #34, !noalias !13897
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE10start_sendB10_.exit.i: ; preds = %bb.ak, %._crit_edge.i.i
  %i.ed = icmp eq ptr %.sroa.4.0.i13, null
  br i1 %i.ed, label %_RNCNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB7_6SenderNtNtCsgcf5BHVXlUt_7uu_sort6chunks5ChunkE4send0BU_.exit, label %.thread58

bb.al:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 -1, ptr %i.ee, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  %i.eg = cmpxchg ptr %.8.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !13902
  %i.eh = extractvalue { i32, i1 } %i.eg, 1
  br i1 %i.eh, label %bb.an, label %bb.am, !prof !34

bb.am:                                            ; preds = %bb.al
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.8.val) #34, !noalias !13902
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ei = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !13902
  %i.ej = and i64 %i.ei, 9223372036854775807
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i, label %bb.ao, !prof !34

bb.ao:                                            ; preds = %bb.an
  %i.el = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !13902
  %i.em = xor i1 %i.el, true
  %i.en = zext i1 %i.em to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %bb.ao, %bb.an
  %.sroa.01.0.i.i.i = phi i8 [ %i.en, %bb.ao ], [ 0, %bb.an ] ; 5 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 3 uses
  %i.ep = load atomic i8, ptr %i.eo monotonic, align 1, !noalias !13902
  %.not.i.i.not.i = icmp eq i8 %i.ep, 0
  br i1 %.not.i.i.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i, label %bb.ap, !prof !34

bb.ap:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13905
  store ptr %.8.val, ptr %i.f, align 8, !noalias !13905
  %i.eq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.eq, align 8, !noalias !13905
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @405) #40, !noalias !13909
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i
  %i.er = trunc nuw i8 %.sroa.01.0.i.i.i to i1    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13910)
  %i.es = getelementptr inbounds nuw i8, ptr %.8.val, i64 72 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !13910, !noalias !13913, !noundef !5 ; 6 uses
  %i.eu = icmp ult i64 %i.et, 384307168202282326
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = icmp eq i64 %i.et, 0
  br i1 %i.ev, label %.loopexit.i, label %bb.aq

bb.aq:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i
  %i.ew = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.ez = load ptr, ptr %i.ey, align 8, !alias.scope !13910, !noalias !13913, !nonnull !5, !noundef !5 ; 3 uses
  %.idx.i.i = mul nuw nsw i64 %i.et, 24
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.idx.i.i
  br label %.lr.ph.i.i.i23

.lr.ph.i.i.i23:                                   ; preds = %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i, %bb.aq
  %.sroa.02.010.i.i.i = phi i64 [ %i.fu, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i ], [ 0, %bb.aq ] ; 5 uses
  %i.fb = phi ptr [ %i.fc, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i ], [ %i.ez, %bb.aq ] ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13915)
  %i.fd = load ptr, ptr %i.fb, align 8, !alias.scope !13915, !noalias !13918, !nonnull !5, !noundef !5 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  %i.ff = load i64, ptr %i.fe, align 8, !noalias !13922, !noundef !5
  %.not.i.i.i.i24 = icmp eq i64 %i.ff, %i.ex
  br i1 %.not.i.i.i.i24, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i23
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !13915, !noalias !13918, !noundef !5
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.fj = cmpxchg ptr %i.fi, i64 0, i64 %i.fh acq_rel acquire, align 8, !noalias !13922
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.fj, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %bb.as, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i

bb.as:                                            ; preds = %bb.ar
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !13915, !noalias !13918, !noundef !5 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  store atomic ptr %i.fl, ptr %i.fn release, align 8, !noalias !13922
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !13922, !nonnull !5, !noundef !5
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 40 ; 2 uses
  %i.fr = atomicrmw xchg ptr %i.fq, i32 1 release, align 4, !noalias !13922
  %i.fs = icmp eq i32 %i.fr, -1
  br i1 %i.fs, label %bb.av, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.ft = tail call noundef zeroext i1 @_RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5futex4unix10futex_wake(ptr noundef nonnull align 4 %i.fq) #34, !noalias !13922 ; 0 uses
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i.i

_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i: ; preds = %bb.ar, %.lr.ph.i.i.i23
  %i.fu = add nuw nsw i64 %.sroa.02.010.i.i.i, 1
  %i.fv = icmp eq ptr %i.fc, %i.fa
  br i1 %i.fv, label %.loopexit.i, label %.lr.ph.i.i.i23

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker5EntryE10try_removeCsgcf5BHVXlUt_7uu_sort.exit.i.i.i: ; preds = %bb.av, %bb.au
  %i.fw = icmp samesign ult i64 %.sroa.02.010.i.i.i, %i.et
  tail call void @llvm.assume(i1 %i.fw)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13923)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13926)
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %i.ez, i64 %.sroa.02.010.i.i.i ; 4 uses
  %.sroa.0.0.copyload1.i.i.i = load ptr, ptr %i.fx, align 8, !noalias !13929 ; 3 uses
  %.sroa.6.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i, i64 16, i1 false), !noalias !13929
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = xor i64 %.sroa.02.010.i.i.i, -1
  %i.ga = add nsw i64 %i.et, %i.fz
  %i.gb = mul nuw nsw i64 %i.ga, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fx, ptr nonnull align 8 %i.fy, i64 %i.gb, i1 false), !noalias !13932
  %i.gc = add nsw i64 %i.et, -1                   ; 2 uses
  store i64 %i.gc, ptr %i.es, align 8, !alias.scope !13934, !noalias !13935
end_hunk_1
begin_hunk_2_@_RNvMs2_NtNtCs2vKOLqTMYjT_3std4sync4mpmcINtB5_6SenderTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendBU_:bb.a
  br label %_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0uEB1E_.exit.i

_RINvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0uEB1E_.exit.i: ; preds = %_RINvMs2_NtNtCs2vKOLqTMYjT_3std6thread5localINtB6_8LocalKeyINtNtCs6JMX4GRUq9U_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4send0uEs_0uEB3y_.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextEECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc7context7ContextECsgcf5BHVXlUt_7uu_sort.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !14001
  %i.cq = load atomic i64, ptr %i.u monotonic, align 16, !noalias !14027 ; 2 uses
  %i.cr = load i64, ptr %i.v, align 16, !noalias !14027, !noundef !5 ; 2 uses
  %i.cs = and i64 %i.cr, %i.cq
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %.lr.ph.i.i, label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i

.split.i:                                         ; preds = %bb.l
  %i.cu = extractvalue { i64, i32 } %i.bz, 1      ; 2 uses
  %i.cv = icmp ult i32 %i.cu, 1000000000
  call void @llvm.assume(i1 %i.cv)
  %.not32.i = icmp samesign ult i32 %i.cu, %i.bu
  br i1 %.not32.i, label %bb.m, label %bb.t

bb.s:                                             ; preds = %bb.l
  %.not31.i = icmp slt i64 %i.ca, %i.by
  br i1 %.not31.i, label %bb.m, label %bb.t

bb.t:                                             ; preds = %bb.s, %.split.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.8, i64 216, i1 false)
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendB12_.exit

bb.u:                                             ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i
  %.sroa.43.sroa.5.0..sroa.43.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.43.sroa.5.0..sroa.43.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.8, i64 216, i1 false)
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.0.0.copyload, ptr %.sroa.43.0..sroa_idx.i, align 8
  %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.6.0.copyload, ptr %.sroa.43.sroa.4.0..sroa.43.0..sroa_idx.sroa_idx.i, align 8
  br label %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendB12_.exit

_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendB12_.exit: ; preds = %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.thread.i, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i, %bb.u, %bb.t
  %i.cw = phi i64 [ 1, %bb.u ], [ 0, %bb.t ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i ], [ 2, %_RNvMs_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5arrayINtB4_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  br label %bb.ca

bb.v:                                             ; preds = %bb.a
  %.sroa.03.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.64.0.copyload = load i64, ptr %.sroa.64.0..sroa_idx, align 8 ; 3 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.8.val, i64 128 ; 4 uses
  %i.cy = load atomic i64, ptr %i.cx acquire, align 8, !noalias !14029 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.8.val, i64 136 ; 4 uses
  %i.da = load atomic ptr, ptr %i.cz acquire, align 8, !noalias !14029
  %i.db = and i64 %i.cy, 1
  %i.dc = icmp eq i64 %i.db, 0
  br i1 %i.dc, label %.lr.ph.i.i3, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread.i: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.614.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.614.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.9.0..sroa_idx, i64 216, i1 false)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i

.lr.ph.i.i3:                                      ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  br label %bb.w

bb.w:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i3
  %.sroa.03.049.i.i = phi i64 [ %i.cy, %.lr.ph.i.i3 ], [ %i.dm, %.backedge.i.i ] ; 3 uses
  %.sroa.07.048.i.i = phi ptr [ %i.da, %.lr.ph.i.i3 ], [ %i.dn, %.backedge.i.i ] ; 2 uses
  %.sroa.0.047.i.i = phi i32 [ 0, %.lr.ph.i.i3 ], [ %.sroa.0.0.be.i.i, %.backedge.i.i ] ; 12 uses
  %.sroa.035.046.i.i = phi ptr [ null, %.lr.ph.i.i3 ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 3 uses
  %i.de = lshr exact i64 %.sroa.03.049.i.i, 1
  %i.df = and i64 %i.de, 31                       ; 3 uses
  %i.dg = icmp eq i64 %i.df, 31
  br i1 %i.dg, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dh = icmp ult i32 %.sroa.0.047.i.i, 7
  br i1 %i.dh, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i9, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions9yield_now() #34, !noalias !14029
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i9: ; preds = %bb.x
  %.not.i.i.i10 = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i.i.i10, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i13.preheader

.lr.ph.i.i.i13.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i9
  %i.di = mul nuw i32 %.sroa.0.047.i.i, %.sroa.0.047.i.i ; 2 uses
  %xtraiter116 = and i32 %i.di, 7                 ; 3 uses
  %i.dj = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.dj, label %.lr.ph.i.i.i13.epil.preheader, label %.lr.ph.i.i.i13.preheader.new

.lr.ph.i.i.i13.preheader.new:                     ; preds = %.lr.ph.i.i.i13.preheader
  %unroll_iter120 = and i32 %i.di, 56
  br label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %.lr.ph.i.i.i13, %.lr.ph.i.i.i13.preheader.new
  %niter121 = phi i32 [ 0, %.lr.ph.i.i.i13.preheader.new ], [ %niter121.next.7, %.lr.ph.i.i.i13 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  %niter121.next.7 = add i32 %niter121, 8         ; 2 uses
  %niter121.ncmp.7 = icmp eq i32 %niter121.next.7, %unroll_iter120
  br i1 %niter121.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i13

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i13
  %lcmp.mod118.not = icmp eq i32 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i13.epil.preheader

.lr.ph.i.i.i13.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i13.preheader
  %lcmp.mod119 = icmp ne i32 %xtraiter116, 0
  tail call void @llvm.assume(i1 %lcmp.mod119)
  br label %.lr.ph.i.i.i13.epil

.lr.ph.i.i.i13.epil:                              ; preds = %.lr.ph.i.i.i13.epil, %.lr.ph.i.i.i13.epil.preheader
  %epil.iter117 = phi i32 [ 0, %.lr.ph.i.i.i13.epil.preheader ], [ %epil.iter117.next, %.lr.ph.i.i.i13.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  %epil.iter117.next = add i32 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i32 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i13.epil, !llvm.loop !14035

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i13.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i.i.i9, %bb.y
  %i.dk = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.z:                                             ; preds = %bb.w
  %i.dl = icmp eq i64 %i.df, 30                   ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.035.046.i.i, null
  %or.cond.i.i = select i1 %i.dl, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.aa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2o_.exit.i.i

.backedge.i.i:                                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, %bb.ah, %bb.ag, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.035.0.be.i.i = phi ptr [ %.sroa.035.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %.sroa.035.046.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %i.dt, %bb.ag ], [ %i.dt, %bb.ah ] ; 2 uses
  %.sroa.0.0.be.i.i = phi i32 [ %i.eb, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i ], [ %i.dk, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ %.sroa.0.047.i.i, %bb.ag ], [ %.sroa.0.047.i.i, %bb.ah ]
  %i.dm = load atomic i64, ptr %i.cx acquire, align 8, !noalias !14029 ; 2 uses
  %i.dn = load atomic ptr, ptr %i.cz acquire, align 8, !noalias !14029
  %i.do = and i64 %i.dm, 1
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.w, label %._crit_edge.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2o_.exit.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.035.2.i.i = phi ptr [ %.sroa.035.046.i.i, %bb.z ], [ %i.dr, %bb.aa ] ; 7 uses
  %i.dq = icmp eq ptr %.sroa.07.048.i.i, null
  br i1 %i.dq, label %bb.ac, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14029
  %i.dr = tail call noalias noundef align 8 dereferenceable_or_null(7448) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 7448, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !14029 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2o_.exit.i.i, !prof !82

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 7448) #37, !noalias !14029
  unreachable

bb.ac:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2o_.exit.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #34, !noalias !14029
  %i.dt = tail call noalias noundef align 8 dereferenceable_or_null(7448) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 7448, i64 noundef range(i64 1, -9223372036854775807) 8) #34, !noalias !14029 ; 6 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.ad, label %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE13new_zeroed_inB1y_.exit16.i.i, !prof !82

bb.ad:                                            ; preds = %bb.ac
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 7448) #37, !noalias !14029
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE13new_zeroed_inB1y_.exit16.i.i: ; preds = %bb.ac
  %i.dv = cmpxchg ptr %i.cz, ptr null, ptr %i.dt release monotonic, align 8, !noalias !14029
  %i.dw = extractvalue { ptr, i1 } %i.dv, 1
  br i1 %i.dw, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.af, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2o_.exit.i.i
  %.sroa.07.2.i.i = phi ptr [ %i.dt, %bb.af ], [ %.sroa.07.048.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEEEEB2o_.exit.i.i ] ; 3 uses
  %i.dx = add i64 %.sroa.03.049.i.i, 2
  %i.dy = cmpxchg weak ptr %i.cx, i64 %.sroa.03.049.i.i, i64 %i.dx seq_cst acquire, align 8, !noalias !14029
  %.sroa.18.0.in.i.i.i4 = extractvalue { i64, i1 } %i.dy, 1
  br i1 %.sroa.18.0.in.i.i.i4, label %bb.ai, label %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i

bb.af:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE13new_zeroed_inB1y_.exit16.i.i
  store atomic ptr %i.dt, ptr %i.dd release, align 8, !noalias !14029
  br label %bb.ae

bb.ag:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc5boxedINtB4_3BoxINtNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4list5BlockTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEEE13new_zeroed_inB1y_.exit16.i.i
  %i.dz = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %i.dz, label %.backedge.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.2.i.i, i64 noundef 7448, i64 noundef 8) #34, !noalias !14029
  br label %.backedge.i.i

_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i: ; preds = %bb.ae
  %..i.i.i.i5 = tail call noundef i32 @llvm.umin.i32(i32 %.sroa.0.047.i.i, i32 6) ; 2 uses
  %2 = mul nuw nsw i32 %..i.i.i.i5, %..i.i.i.i5   ; 2 uses
  %.not.i22.i.i = icmp eq i32 %.sroa.0.047.i.i, 0
  br i1 %.not.i22.i.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.preheader

.lr.ph.i25.i.i.preheader:                         ; preds = %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %xtraiter = and i32 %2, 5                       ; 3 uses
  %i.ea = icmp ult i32 %.sroa.0.047.i.i, 3
  br i1 %i.ea, label %.lr.ph.i25.i.i.epil.preheader, label %.lr.ph.i25.i.i.preheader.new

.lr.ph.i25.i.i.preheader.new:                     ; preds = %.lr.ph.i25.i.i.preheader
  %unroll_iter = and i32 %2, 56
  br label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %.lr.ph.i25.i.i, %.lr.ph.i25.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i25.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i25.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i25.i.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i25.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil.preheader

.lr.ph.i25.i.i.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.preheader
  %lcmp.mod115 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod115)
  br label %.lr.ph.i25.i.i.epil

.lr.ph.i25.i.i.epil:                              ; preds = %.lr.ph.i25.i.i.epil, %.lr.ph.i25.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i25.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i25.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !14029
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i, label %.lr.ph.i25.i.i.epil, !llvm.loop !14036

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i25.i.i.epil, %_RNvMs6_NtCs6JMX4GRUq9U_4core3numm15overflowing_pow.exit.i21.i.i
  %i.eb = add i32 %.sroa.0.047.i.i, 1
  br label %.backedge.i.i

bb.ai:                                            ; preds = %bb.ae
  br i1 %i.dl, label %bb.aj, label %._crit_edge.i.i

bb.aj:                                            ; preds = %bb.ai
  %.not13.i.i = icmp eq ptr %.sroa.035.2.i.i, null
  br i1 %.not13.i.i, label %bb.ak, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread30.i, !prof !82

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread30.i: ; preds = %bb.aj
  store atomic ptr %.sroa.035.2.i.i, ptr %i.cz release, align 8, !noalias !14029
  %i.ec = atomicrmw add ptr %i.cx, i64 2 release, align 8, !noalias !14029 ; 0 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.07.2.i.i, i64 7440
  store atomic ptr %.sroa.035.2.i.i, ptr %i.ed release, align 8, !noalias !14029
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.614.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.614.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.9.0..sroa_idx, i64 216, i1 false)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @400) #40, !noalias !14029
  unreachable

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.ai
  %.sroa.9.0.i = phi i64 [ %i.df, %bb.ai ], [ 0, %.backedge.i.i ]
  %.sroa.43.0.i = phi ptr [ %.sroa.07.2.i.i, %bb.ai ], [ null, %.backedge.i.i ] ; 2 uses
  %.sroa.035.3.i.i = phi ptr [ %.sroa.035.2.i.i, %bb.ai ], [ %.sroa.035.0.be.i.i, %.backedge.i.i ] ; 2 uses
  %i.ee = icmp eq ptr %.sroa.035.3.i.i, null
  br i1 %i.ee, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.035.3.i.i, i64 noundef 7448, i64 noundef 8) #34, !noalias !14029
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i: ; preds = %bb.al, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.614.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.614.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.9.0..sroa_idx, i64 216, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14040)
  %i.ef = icmp eq ptr %.sroa.43.0.i, null
  br i1 %i.ef, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.thread.i

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.thread.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread30.i
  %.sroa.43.138.i = phi ptr [ %.sroa.07.2.i.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread30.i ], [ %.sroa.43.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i ]
  %.sroa.9.137.i = phi i64 [ 30, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread30.i ], [ %.sroa.9.0.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i ]
  %i.eg = getelementptr inbounds nuw [240 x i8], ptr %.sroa.43.138.i, i64 %.sroa.9.137.i ; 4 uses
  store i64 %.sroa.03.0.copyload, ptr %i.eg, align 8, !noalias !14042
  %.sroa.5.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i64 %.sroa.64.0.copyload, ptr %.sroa.5.0..sroa_idx12.i, align 8, !noalias !14042
  %.sroa.614.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.614.0..sroa_idx15.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.614.i, i64 216, i1 false), !noalias !14042
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 232
  %i.ei = atomicrmw or ptr %i.eh, i64 1 release, align 8, !noalias !14043 ; 0 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.8.val, i64 256
  tail call fastcc void @_RNvMs0_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.ej) #38, !noalias !14043
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614.i)
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendB12_.exit

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE10start_sendB12_.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.614.i, i64 216, i1 false), !alias.scope !14044, !noalias !14045
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614.i)
  %.not.i1 = icmp eq i64 %.sroa.64.0.copyload, -1
  br i1 %.not.i1, label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendB12_.exit, label %bb.am

bb.am:                                            ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.6.i, i64 216, i1 false)
  %.sroa.4.0..sroa_idx.i2 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %.sroa.03.0.copyload, ptr %.sroa.4.0..sroa_idx.i2, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.64.0.copyload, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8
  br label %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendB12_.exit

_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE4sendB12_.exit: ; preds = %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.thread.i, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i, %bb.am
  %i.ek = phi i64 [ 1, %bb.am ], [ 2, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.i ], [ 2, %_RNvMs1_NtNtNtCs2vKOLqTMYjT_3std4sync4mpmc4listINtB5_7ChannelTjNtNtCsgcf5BHVXlUt_7uu_sort6chunks13RecycledChunkEE5writeB12_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %bb.ca

bb.an:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14046)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.el = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 -1, ptr %i.el, align 8, !noalias !14049
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14049
  %i.em = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false), !noalias !14049
  %i.en = cmpxchg ptr %.8.val, i32 0, i32 1 acquire monotonic, align 4, !noalias !14051
  %i.eo = extractvalue { i32, i1 } %i.en, 1
  br i1 %i.eo, label %bb.ap, label %bb.ao, !prof !34

bb.ao:                                            ; preds = %bb.an
  tail call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %.8.val) #34, !noalias !14051
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ep = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !14051
  %i.eq = and i64 %i.ep, 9223372036854775807
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i, label %bb.aq, !prof !34

bb.aq:                                            ; preds = %bb.ap
  %i.es = tail call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #39, !noalias !14051
  %i.et = xor i1 %i.es, true
  %i.eu = zext i1 %i.et to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %bb.aq, %bb.ap
  %.sroa.01.0.i.i.i = phi i8 [ %i.eu, %bb.aq ], [ 0, %bb.ap ] ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.8.val, i64 4 ; 3 uses
  %i.ew = load atomic i8, ptr %i.ev monotonic, align 1, !noalias !14051
  %.not.i.i.not.i = icmp eq i8 %i.ew, 0
  br i1 %.not.i.i.not.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i, label %bb.ar, !prof !34

bb.ar:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14054
  store ptr %.8.val, ptr %i.g, align 8, !noalias !14054
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.ex, align 8, !noalias !14054
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @405) #40, !noalias !14058
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc4zero5InnerE4lockCsgcf5BHVXlUt_7uu_sort.exit.i
  %i.ey = trunc nuw i8 %.sroa.01.0.i.i.i to i1    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14059)
  %i.ez = getelementptr inbounds nuw i8, ptr %.8.val, i64 72 ; 2 uses
  %i.fa = load i64, ptr %i.ez, align 8, !alias.scope !14059, !noalias !14062, !noundef !5 ; 6 uses
  %i.fb = icmp ult i64 %i.fa, 384307168202282326
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = icmp eq i64 %i.fa, 0
  br i1 %i.fc, label %.loopexit.i, label %bb.as

bb.as:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc4zero5InnerEINtBM_11PoisonErrorBH_EE6unwrapCsgcf5BHVXlUt_7uu_sort.exit.i
  %i.fd = tail call noundef nonnull ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5waker17current_thread_id5DUMMY0s_023___RUST_STD_INTERNAL_VAL)
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %.8.val, i64 64
  %i.fg = load ptr, ptr %i.ff, align 8, !alias.scope !14059, !noalias !14062, !nonnull !5, !noundef !5 ; 3 uses
  %.idx.i.i = mul nuw nsw i64 %i.fa, 24
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %.idx.i.i
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i, %bb.as
  %.sroa.02.010.i.i.i = phi i64 [ %i.gb, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i ], [ 0, %bb.as ] ; 5 uses
  %i.fi = phi ptr [ %i.fj, %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i ], [ %i.fg, %bb.as ] ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14064)
  %i.fk = load ptr, ptr %i.fi, align 8, !alias.scope !14064, !noalias !14067, !nonnull !5, !noundef !5 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %i.fm = load i64, ptr %i.fl, align 8, !noalias !14071, !noundef !5
  %.not.i.i.i.i18 = icmp eq i64 %i.fm, %i.fe
  br i1 %.not.i.i.i.i18, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i17
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !alias.scope !14064, !noalias !14067, !noundef !5
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fq = cmpxchg ptr %i.fp, i64 0, i64 %i.fo acq_rel acquire, align 8, !noalias !14071
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.fq, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %bb.au, label %_RNCNvMNtNtNtCs2vKOLqTMYjT_3std4sync4mpmc5wakerNtB4_5Waker10try_select0Csgcf5BHVXlUt_7uu_sort.exit.i.i.i

end_hunk_2
