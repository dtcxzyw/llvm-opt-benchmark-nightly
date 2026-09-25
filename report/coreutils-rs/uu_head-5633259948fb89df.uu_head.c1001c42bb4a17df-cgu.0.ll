Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_head-5633259948fb89df.uu_head.c1001c42bb4a17df-cgu.0?download=true
inline.NumInlined: 820
inline.NumDeleted: 501
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvCsgzkSwV7OBv7_7uu_head13print_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileEB2_:bb.a
  %i.is = sub i64 %.sink.i3435.i.i.i.i.i, %.sroa.09.0.i.i.i.i.i.i
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i: ; preds = %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit33.i.i.i.i.i.i, %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i.i
  %.sroa.9.1.i.i.i.i.i = phi i64 [ %i.ir, %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit33.i.i.i.i.i.i ], [ %.sroa.9.2.i.i.i.i.i, %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i.i ] ; 3 uses
  %.sink.i.i.i.i.i.i = phi i64 [ %i.is, %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit33.i.i.i.i.i.i ], [ %i.ii, %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.ph.i.i.i.i.i.i = phi ptr [ %.sroa.01.0.i.i.i.i.i.i, %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit33.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i, %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileENtNtNtCs7tKScEop1B6_5alloc2io4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i.i ] ; 10 uses
  %.not.i.i.i.i42.i = icmp eq ptr %.sroa.0.0.ph.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i42.i, label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.thread.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i
  %i.it = ptrtoint ptr %.sroa.0.0.ph.i.i.i.i.i.i to i64 ; 4 uses
  %i.iu = and i64 %i.it, 3
  switch i64 %i.iu, label %default.unreachable [
    i64 2, label %.split.i.i.i.i.i
    i64 3, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i
    i64 0, label %.split14.i.i.i.i.i
    i64 1, label %.split13.i.i.i.i.i
  ], !prof !13

.split.i.i.i.i.i:                                 ; preds = %bb.be
  %i.iv = lshr i64 %i.it, 32
  %i.iw = trunc nuw i64 %i.iv to i32
  %i.ix = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #22, !noalias !210
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !210, !nonnull !8, !noundef !8
  %i.ja = call noundef zeroext i1 %i.iz(i32 noundef %i.iw) #22, !noalias !210, !inline_history !134
  br i1 %i.ja, label %.thread.i.i.i.i.i, label %.loopexit.i

.split14.i.i.i.i.i:                               ; preds = %bb.be
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i, i64 16
  %i.jc = load i8, ptr %i.jb, align 8, !range !14, !noalias !210, !noundef !8
  %i.jd = icmp eq i8 %i.jc, 35
  br i1 %i.jd, label %.thread.i.i.i.i.i, label %.loopexit.i

.split13.i.i.i.i.i:                               ; preds = %bb.be
  %i.je = getelementptr i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i, i64 31
  %i.jf = load i8, ptr %i.je, align 8, !range !14, !noalias !210, !noundef !8
  %i.jg = icmp eq i8 %i.jf, 35
  br i1 %i.jg, label %bb.bm, label %.loopexit.i

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i: ; preds = %bb.be
  %i.jh = lshr i64 %i.it, 32
  %i.ji = icmp ult ptr %.sroa.0.0.ph.i.i.i.i.i.i, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i.i.i.i.i.i = trunc i64 %i.jh to i8
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.ji, i8 %switch.idx.cast.i.i.i.i.i.i.i.i, i8 -1 ; 2 uses
  %i.jj = icmp ne i8 %spec.select.i.i.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.jj)
  %i.jk = icmp eq i8 %spec.select.i.i.i.i.i.i.i.i, 35
  br i1 %i.jk, label %bb.bl, label %.loopexit.i

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.thread.sink.split.i.i.i.i.i: ; preds = %bb.av, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.peel.thread98.i.i.i.i.i, %bb.ap
  %.sroa.9.1.peel.ph.sink.i.i.i.i.i = phi i64 [ %i.gy, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.peel.thread98.i.i.i.i.i ], [ %i.hj, %bb.av ], [ %i.gp, %bb.ap ] ; 2 uses
  %.sink.i.peel87.i.i.i.i.i = sub i64 %.promoted43.i30.i.i.i.i, %.sroa.9.1.peel.ph.sink.i.i.i.i.i
  br label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.thread.i.i.i.i.i

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.thread.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.thread.sink.split.i.i.i.i.i
  %.promoted42.i.i.i.i.i = phi i64 [ %.sink.i.peel87.i.i.i.i.i, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.thread.sink.split.i.i.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i ], [ %.sink.i.i.i.i.i.i, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.9.312.i.i.i.i.i = phi i64 [ %.sroa.9.1.peel.ph.sink.i.i.i.i.i, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.thread.sink.split.i.i.i.i.i ], [ %.sroa.9.1.i.i.i.i.i, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i ], [ %.sroa.9.1.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i ] ; 3 uses
  %i.jl = icmp eq i64 %.sroa.9.312.i.i.i.i.i, 0
  br i1 %i.jl, label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.thread.thread.i.loopexit.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.thread.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i.i
  %.sroa.0.022.i.i.i.i.i.i = phi ptr [ %.sroa.0.113.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i.i ], [ %i.b, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.thread.i.i.i.i.i ] ; 3 uses
  %.sroa.6.021.i.i.i.i.i.i = phi i64 [ %.sroa.6.111.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i.i ], [ %.sroa.9.312.i.i.i.i.i, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.thread.i.i.i.i.i ] ; 6 uses
  %i.jm = inttoptr i64 %.sroa.6.021.i.i.i.i.i.i to ptr
  %i.jn = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},~{memory}"(ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull inttoptr (i64 1 to ptr), ptr nonnull readonly %.sroa.0.022.i.i.i.i.i.i, ptr nonnull %i.jm) #23, !noalias !219, !srcloc !6
  %i.jo = extractvalue { ptr, i32, i32 } %i.jn, 0 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp sgt ptr %i.jo, inttoptr (i64 -4096 to ptr)
  %i.jp = icmp slt ptr %i.jo, null
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = and i1 %.not.i.i.i.i.i.i.i.i.i, %i.jp
  %i.jq = ptrtoint ptr %i.jo to i64               ; 5 uses
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %.preheader.i.i.i.i.i
  %i.jr = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8, !noalias !220
  %.not.i.i.i8.i.i.i.i.i = icmp eq ptr %i.jr, @104
  br i1 %.not.i.i.i8.i.i.i.i.i, label %.split.i.i.i.i.i.i, label %bb.bg, !prof !7

bb.bg:                                            ; preds = %bb.bf
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #22, !noalias !210
  br label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.bg, %bb.bf
  %.neg.i.i.i.i.i.i.i = mul i64 %i.jq, -4294967296 ; 2 uses
  %i.js = lshr exact i64 %.neg.i.i.i.i.i.i.i, 32
  %i.jt = trunc nuw i64 %i.js to i32
  %i.ju = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #22, !noalias !210
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8, !noalias !210, !nonnull !8, !noundef !8
  %i.jx = call noundef zeroext i1 %i.jw(i32 noundef %i.jt) #22, !noalias !210, !inline_history !142
  br i1 %i.jx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i.i, label %.split.loop.exit.i.i.i.i.i.i

bb.bh:                                            ; preds = %.preheader.i.i.i.i.i
  %i.jy = icmp eq ptr %i.jo, null
  br i1 %i.jy, label %.loopexit.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jz = icmp ult i64 %.sroa.6.021.i.i.i.i.i.i, %i.jq
  br i1 %i.jz, label %bb.bj, label %bb.bk, !prof !15

bb.bj:                                            ; preds = %bb.bi
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.jq, i64 noundef %.sroa.6.021.i.i.i.i.i.i, i64 noundef %.sroa.6.021.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @127) #25, !noalias !210
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.ka = sub nuw nsw i64 %.sroa.6.021.i.i.i.i.i.i, %i.jq
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i, i64 %i.jq
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i.i

.split.loop.exit.i.i.i.i.i.i:                     ; preds = %.split.i.i.i.i.i.i
  %i.kc = or disjoint i64 %.neg.i.i.i.i.i.i.i, 2
  %i.kd = inttoptr i64 %i.kc to ptr
  br label %.loopexit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i.i: ; preds = %bb.bk, %.split.i.i.i.i.i.i
  %.sroa.0.113.i.i.i.i.i.i = phi ptr [ %i.kb, %bb.bk ], [ %.sroa.0.022.i.i.i.i.i.i, %.split.i.i.i.i.i.i ]
  %.sroa.6.111.i.i.i.i.i.i = phi i64 [ %i.ka, %bb.bk ], [ %.sroa.6.021.i.i.i.i.i.i, %.split.i.i.i.i.i.i ] ; 2 uses
  %i.ke = icmp eq i64 %.sroa.6.111.i.i.i.i.i.i, 0
  br i1 %i.ke, label %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i

_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i.i
  %i.kf = add i64 %.sroa.9.312.i.i.i.i.i, %.sroa.01.0.ph.i32.i.i.i.i ; 2 uses
  %i.kg = icmp eq i64 %.promoted42.i.i.i.i.i, 0
  br i1 %i.kg, label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.thread.thread.i.loopexit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgzkSwV7OBv7_7uu_head.exit.thread.i.loopexit4.i.i.i.i: ; preds = %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.peel.thread90.i.i.i.i.i
  %.sroa.0.0.ph.i.peel96.in.i.le.i.i.i.i = or disjoint i64 %.sroa.0.0.ph.i.peel96.in.in.i.i.i.i.i, 2
  %.sroa.0.0.ph.i.peel96.i.le.i.i.i.i = inttoptr i64 %.sroa.0.0.ph.i.peel96.in.i.le.i.i.i.i to ptr
  br label %.loopexit.i

.thread.i.i.i.i.i:                                ; preds = %.split14.i.i.i.i.i, %.split.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !221
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i

bb.bl:                                            ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !222
  %i.kh = and i64 %i.it, 1095216660480
  %i.ki = icmp ne i64 %i.kh, 1095216660480
  call void @llvm.assume(i1 %i.ji)
  call void @llvm.assume(i1 %i.ki)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i

bb.bm:                                            ; preds = %.split13.i.i.i.i.i
  %i.kj = getelementptr i8, ptr %.sroa.0.0.ph.i.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !223
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kj) ]
  store ptr %i.kj, ptr %i.gh, align 8, !alias.scope !224, !noalias !223
  store i8 3, ptr %i.a, align 8, !alias.scope !224, !noalias !223
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gh) #22, !noalias !225
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i: ; preds = %bb.bm, %bb.bl, %.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !223
  %i.kk = icmp eq i64 %.sink.i.i.i.i.i.i, 0
  br i1 %i.kk, label %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.thread.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !149

bb.bn:                                            ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes10drain_pipeRNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutECsgzkSwV7OBv7_7uu_head.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1154.0.i) ]
  br label %bb.bo

.loopexit.i:                                      ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i, %.split13.i.i.i.i.i, %.split14.i.i.i.i.i, %.split.i.i.i.i.i, %bb.bh, %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgzkSwV7OBv7_7uu_head.exit.thread.i.loopexit4.i.i.i.i, %.split.loop.exit.i.i.i.i.i.i
  %.sroa.4.0.i.i.i.i.ph.i = phi ptr [ @126, %bb.bh ], [ %i.kd, %.split.loop.exit.i.i.i.i.i.i ], [ %.sroa.0.0.ph.i.peel96.i.le.i.i.i.i, %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgzkSwV7OBv7_7uu_head.exit.thread.i.loopexit4.i.i.i.i ], [ %.sroa.0.0.ph.i.i.i.i.i.i, %.split.i.i.i.i.i ], [ %.sroa.0.0.ph.i.i.i.i.i.i, %.split14.i.i.i.i.i ], [ %.sroa.0.0.ph.i.i.i.i.i.i, %.split13.i.i.i.i.i ], [ %.sroa.0.0.ph.i.i.i.i.i.i, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error14is_interrupted.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !193
  br label %bb.bo

_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.thread.thread.i.loopexit.i.i.i.i: ; preds = %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.thread.i.i.i.i.i, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit38.thread.i
  %.sroa.010.3210.i = phi i64 [ %.sroa.010.3.i, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit38.thread.i ], [ %.sroa.010.3209.i, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.thread.i.i.i.i.i ], [ %.sroa.010.3209.i, %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i ]
  %.sroa.4.0.i.i.i.i.i = phi i64 [ 0, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls6splice.exit38.thread.i ], [ %i.kf, %_RNvYINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawWriterRNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCsgzkSwV7OBv7_7uu_head.exit.i.i.i.i.i ], [ %.sroa.01.0.ph.i32.i.i.i.i, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.thread.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !193
  %i.kl = add i64 %.sroa.4.0.i.i.i.i.i, %.sroa.010.3210.i
  br label %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes12send_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileRNtNtNtBZ_2io5stdio6StdoutECsgzkSwV7OBv7_7uu_head.exit.thread

_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes12send_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileRNtNtNtBZ_2io5stdio6StdoutECsgzkSwV7OBv7_7uu_head.exit.thread: ; preds = %bb.d, %.loopexit80.i, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.thread.thread.i.loopexit.i.i.i.i, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size.exit.i, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls7fstatfs.exit.i
  %.sroa.7.2.i.ph = phi i64 [ %.sroa.010.1.i, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls7fstatfs.exit.i ], [ 0, %_RNvNtNtNtCscC7ZI6NG8RX_6rustix7backend4pipe8syscalls18fcntl_setpipe_size.exit.i ], [ %i.ay, %.loopexit80.i ], [ %i.kl, %_RNvXs3_NtNtCs7tKScEop1B6_5alloc2io4utilINtNtNtCs6JMX4GRUq9U_4core2io4util4TakeINtNtNtCsh036I4OHgIr_6uucore4mods2io9RawReaderQNtNtCs2vKOLqTMYjT_3std2fs4FileEENtNtB7_4read4Read8read_bufCsgzkSwV7OBv7_7uu_head.exit.thread.thread.i.loopexit.i.i.i.i ], [ %i.ac, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !150
  %i.km = inttoptr i64 %.sroa.7.2.i.ph to ptr
  br label %bb.bp

bb.bo:                                            ; preds = %.loopexit.i, %bb.bn
  %.sroa.7.2.i.in = phi ptr [ %.sroa.1154.0.i, %bb.bn ], [ %.sroa.4.0.i.i.i.i.ph.i, %.loopexit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !150
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.2.i.in) ]
  %i.kn = call fastcc noundef nonnull ptr @_RNvCsgzkSwV7OBv7_7uu_head20wrap_in_stdout_error(ptr noundef nonnull %.sroa.7.2.i.in) #26
  br label %bb.bp

bb.bp:                                            ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes12send_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileRNtNtNtBZ_2io5stdio6StdoutECsgzkSwV7OBv7_7uu_head.exit.thread, %bb.bo
  %.sroa.4.0 = phi ptr [ %i.kn, %bb.bo ], [ %i.km, %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes12send_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileRNtNtNtBZ_2io5stdio6StdoutECsgzkSwV7OBv7_7uu_head.exit.thread ]
  %.sroa.0.0 = phi i64 [ 1, %bb.bo ], [ 0, %_RINvNtNtCsh036I4OHgIr_6uucore8features5pipes12send_n_bytesQNtNtCs2vKOLqTMYjT_3std2fs4FileRNtNtNtBZ_2io5stdio6StdoutECsgzkSwV7OBv7_7uu_head.exit.thread ]
  %i.ko = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.kp = insertvalue { i64, ptr } %i.ko, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.kp
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvMNtCsgzkSwV7OBv7_7uu_head4takeNtB3_13TakeAllBuffer11fill_bufferQNtNtCs2vKOLqTMYjT_3std2fs4FileEB5_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !238, !noundef !8 ; 8 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp samesign ult i64 %i.c, 65536
  br i1 %i.e, label %bb.b, label %._RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsgzkSwV7OBv7_7uu_head.exit_crit_edge

._RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsgzkSwV7OBv7_7uu_head.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsgzkSwV7OBv7_7uu_head.exit

bb.b:                                             ; preds = %bb.a
  %i.f = sub nuw nsw i64 65536, %i.c              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.g = load i64, ptr %0, align 8, !range !10, !alias.scope !240, !noundef !8
  %i.h = sub nsw i64 %i.g, %i.c
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgzkSwV7OBv7_7uu_head.exit.i.i, !prof !15

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgzkSwV7OBv7_7uu_head(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef range(i64 1, 65537) %i.f, i64 noundef 1, i64 noundef 1) #22
  %.pre.i.i = load i64, ptr %i.b, align 8, !alias.scope !241
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgzkSwV7OBv7_7uu_head.exit.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgzkSwV7OBv7_7uu_head.exit.i.i: ; preds = %bb.c, %bb.b
  %i.j = phi i64 [ %i.c, %bb.b ], [ %.pre.i.i, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !241, !nonnull !8, !noundef !8 ; 3 uses
  %i.m = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr i8, ptr %i.l, i64 %i.j     ; 2 uses
  %.not.i = icmp eq i64 %i.c, 65535
  br i1 %.not.i, label %_RNvMs4_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE11extend_withCsgzkSwV7OBv7_7uu_head.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgzkSwV7OBv7_7uu_head.exit.i.i
  %1 = xor i64 %i.c, 65535                        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 0, i64 %1, i1 false), !noalias !241
  %i.o = add nuw i64 %i.j, %1                     ; 2 uses
  %scevgep.i.i = getelementptr i8, ptr %i.l, i64 %i.o
  br label %_RNvMs4_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE11extend_withCsgzkSwV7OBv7_7uu_head.exit.i

_RNvMs4_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE11extend_withCsgzkSwV7OBv7_7uu_head.exit.i: ; preds = %.lr.ph.preheader.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgzkSwV7OBv7_7uu_head.exit.i.i
  %storemerge.lcssa.i.i = phi i64 [ %i.j, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgzkSwV7OBv7_7uu_head.exit.i.i ], [ %i.o, %.lr.ph.preheader.i.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.n, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCsgzkSwV7OBv7_7uu_head.exit.i.i ], [ %scevgep.i.i, %.lr.ph.preheader.i.i ]
  store i8 0, ptr %.sroa.0.0.lcssa.i.i, align 1, !noalias !241
  %i.p = add nuw i64 %storemerge.lcssa.i.i, 1
  br label %_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsgzkSwV7OBv7_7uu_head.exit

_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsgzkSwV7OBv7_7uu_head.exit: ; preds = %._RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsgzkSwV7OBv7_7uu_head.exit_crit_edge, %_RNvMs4_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE11extend_withCsgzkSwV7OBv7_7uu_head.exit.i
  %i.q = phi ptr [ %i.l, %_RNvMs4_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE11extend_withCsgzkSwV7OBv7_7uu_head.exit.i ], [ %.pre, %._RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsgzkSwV7OBv7_7uu_head.exit_crit_edge ] ; 2 uses
  %storemerge.i = phi i64 [ %i.p, %_RNvMs4_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE11extend_withCsgzkSwV7OBv7_7uu_head.exit.i ], [ 65536, %._RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsgzkSwV7OBv7_7uu_head.exit_crit_edge ] ; 4 uses
  store i64 %storemerge.i, ptr %i.b, align 8, !alias.scope !238
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.r, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.s = tail call { i64, ptr } @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %.0.val, ptr noalias nofree noundef nonnull %i.q, i64 noundef range(i64 0, -9223372036854775808) %storemerge.i) #22 ; 4 uses
  %i.t = extractvalue { i64, ptr } %i.s, 0
  %i.u = extractvalue { i64, ptr } %i.s, 1        ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = trunc nuw i64 %i.t to i1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsgzkSwV7OBv7_7uu_head.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit
  %i.y = phi i64 [ %i.v, %.lr.ph ], [ %i.az, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit ] ; 4 uses
  %i.z = phi ptr [ %i.u, %.lr.ph ], [ %i.ay, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit ] ; 6 uses
  %i.aa = phi { i64, ptr } [ %i.s, %.lr.ph ], [ %i.aw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.ab = and i64 %i.y, 3                         ; 2 uses
  switch i64 %i.ab, label %default.unreachable [
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 0, label %bb.g
    i64 1, label %bb.h
  ], !prof !13

default.unreachable:                              ; preds = %bb.j, %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.ac = lshr i64 %i.y, 32
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #22
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !8, !noundef !8
  %i.ah = call noundef i8 %i.ag(i32 noundef %i.ad) #22, !inline_history !0
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.f:                                             ; preds = %bb.d
  %i.ai = lshr i64 %i.y, 32
  %i.aj = icmp ult ptr %i.z, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.ai to i8  ; 2 uses
  %i.ak = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.assume(i1 %i.ak)
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.g:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.am = load i8, ptr %i.al, align 8, !range !14, !noundef !8
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

bb.h:                                             ; preds = %bb.d
  %i.an = getelementptr i8, ptr %i.z, i64 31
  %i.ao = load i8, ptr %i.an, align 8, !range !14, !noundef !8
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.i = phi i8 [ %i.ah, %bb.e ], [ %switch.idx.cast.i.i.i, %bb.f ], [ %i.am, %bb.g ], [ %i.ao, %bb.h ]
  %i.ap = icmp eq i8 %.sroa.0.0.i, 35
  br i1 %i.ap, label %bb.j, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCsgzkSwV7OBv7_7uu_head.exit

._crit_edge:                                      ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit, %_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsgzkSwV7OBv7_7uu_head.exit
  %.lcssa6 = phi { i64, ptr } [ %i.s, %_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsgzkSwV7OBv7_7uu_head.exit ], [ %i.aw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit ] ; 2 uses
  %.lcssa = phi i64 [ %i.v, %_RNvMs1_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE6resizeCsgzkSwV7OBv7_7uu_head.exit ], [ %i.az, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit ] ; 2 uses
  %i.aq = icmp ult i64 %storemerge.i, %.lcssa
  br i1 %i.aq, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCsgzkSwV7OBv7_7uu_head.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  store i64 %.lcssa, ptr %i.b, align 8, !alias.scope !242
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCsgzkSwV7OBv7_7uu_head.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE8truncateCsgzkSwV7OBv7_7uu_head.exit: ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit, %bb.i, %._crit_edge
  %i.ar = phi { i64, ptr } [ %.lcssa6, %._crit_edge ], [ %.lcssa6, %bb.i ], [ %i.aa, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit ]
  ret { i64, ptr } %i.ar

bb.j:                                             ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !243
  switch i64 %i.ab, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit
    i64 3, label %bb.k
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit
    i64 1, label %bb.l
  ], !prof !13

bb.k:                                             ; preds = %bb.j
  %i.as = icmp ult ptr %i.z, inttoptr (i64 188978561024 to ptr)
  %i.at = and i64 %i.y, 1095216660480
  %i.au = icmp ne i64 %i.at, 1095216660480
  call void @llvm.assume(i1 %i.as)
  call void @llvm.assume(i1 %i.au)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr i8, ptr %i.z, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  store ptr %i.av, ptr %i.x, align 8, !alias.scope !244, !noalias !243
  store i8 3, ptr %i.a, align 8, !alias.scope !244, !noalias !243
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #22, !noalias !243
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgzkSwV7OBv7_7uu_head.exit: ; preds = %bb.j, %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !243
  %i.aw = call { i64, ptr } @_RNvXsa_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs7tKScEop1B6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %.0.val, ptr noalias nofree noundef nonnull %i.q, i64 noundef range(i64 0, -9223372036854775808) %storemerge.i) #22 ; 4 uses
  %i.ax = extractvalue { i64, ptr } %i.aw, 0
  %i.ay = extractvalue { i64, ptr } %i.aw, 1      ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.ba = trunc nuw i64 %i.ax to i1
  br i1 %i.ba, label %bb.d, label %._crit_edge
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsgzkSwV7OBv7_7uu_head(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 3, 5) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  switch i64 %i.d, label %.lr.ph.i.i [
    i64 0, label %bb.c
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.t, %.lr.ph.i.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i.i ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %.sroa.0.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !alias.scope !273, !noalias !274, !nonnull !8, !noundef !8
  %.sroa.3.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i, align 8, !alias.scope !273, !noalias !274, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i, i64 %2)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !275, !noalias !276 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i32 %i.f, 0
  %i.i = sub i64 %.sroa.3.0.i.i.i.i.i, %2
  %spec.select.i.i.i.i.i.i = select i1 %i.h, i64 %i.i, i64 %i.g ; 2 uses
  %i.j = icmp eq i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %i.j, label %bb.g, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.025.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.05.024.i.i = phi i64 [ %i.t, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.sroa.01.025.i.i, 1            ; 2 uses
  %i.l = add nuw nsw i64 %i.k, %.sroa.05.024.i.i  ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.d
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %i.l ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %.sroa.0.0.in.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.i.i.i15.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i, align 8, !alias.scope !279, !noalias !280, !nonnull !8, !noundef !8
  %.sroa.3.0.in.i.i.i16.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3.0.i.i.i17.i.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i, align 8, !alias.scope !279, !noalias !280, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i, i64 %2)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i22.i.i), !alias.scope !281, !noalias !282 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %i.r = sub i64 %.sroa.3.0.i.i.i17.i.i, %2
  %spec.select.i.i.i.i23.i.i = select i1 %i.q, i64 %i.r, i64 %i.p
  %i.s = icmp sgt i64 %spec.select.i.i.i.i23.i.i, 0
  %i.t = select i1 %i.s, i64 %.sroa.05.024.i.i, i64 %i.l, !unpredictable !8 ; 2 uses
  %i.u = sub nuw nsw i64 %.sroa.01.025.i.i, %i.k  ; 2 uses
  %i.v = icmp ugt i64 %i.u, 1
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %spec.select.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.w = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i, %.sroa.05.0.lcssa.i.i ; 2 uses
  %i.x = icmp ule i64 %i.w, %i.d
  tail call void @llvm.assume(i1 %i.x)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i.ph = phi i64 [ %i.w, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.y = icmp ult i64 %i.d, 64051194700380388
  tail call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %0, align 8, !range !10, !alias.scope !283, !noalias !284, !noundef !8
  %i.aa = icmp eq i64 %i.d, %i.z
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_0
