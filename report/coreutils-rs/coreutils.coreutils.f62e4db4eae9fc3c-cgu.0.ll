Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvCsdTU8hOCbdCr_8uu_touch6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBB_6cloned6ClonedINtNtNtBF_5slice4iter4IterB2c_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  %.not118.i = icmp eq i64 %.sroa.0181.0.i, -1    ; 2 uses
  %.sroa.642.0.i = select i1 %.not118.i, i64 undef, i64 %.sroa.10187.0.i
  %.sroa.041.0.i = select i1 %.not118.i, ptr null, ptr %.sroa.8184.0.i
  %.not119.i = icmp eq i64 %.sroa.0190.0.i, -1    ; 2 uses
  %.sroa.644.0.i = select i1 %.not119.i, i64 undef, i64 %.sroa.20.0.i
  %.sroa.043.0.i = select i1 %.not119.i, ptr null, ptr %.sroa.15.0.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 4 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !10704, !nonnull !12, !noundef !12 ; 5 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  %i.fi = load i64, ptr %i.fh, align 8, !noalias !10704, !noundef !12 ; 4 uses
  %i.fj = call noundef zeroext i1 @_RNvCsdTU8hOCbdCr_8uu_touch27is_first_filename_timestamp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.cc, ptr noalias nofree noundef readonly captures(address, read_provenance) %.sroa.041.0.i, i64 %.sroa.642.0.i, ptr noalias nofree noundef readonly captures(address, read_provenance) %.sroa.043.0.i, i64 %.sroa.644.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.fg, i64 noundef %i.fi) #45, !noalias !10704
  br i1 %i.fj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %.not120.i = icmp eq i64 %i.fi, 0
  br i1 %.not120.i, label %bb.an, label %bb.am

bb.al:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit.i, %bb.aj
  %i.fk = phi i64 [ %i.gb, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.fi, %bb.aj ] ; 3 uses
  %i.fl = phi ptr [ %i.gj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.fg, %bb.aj ] ; 3 uses
  %.sroa.20.1.i = phi i64 [ %.sroa.698.0.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit.i ], [ %.sroa.20.0.i, %bb.aj ]
  %.sroa.15.1.i = phi ptr [ %.sroa.595.0.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit.i ], [ %.sroa.15.0.i, %bb.aj ] ; 8 uses
  %.sroa.0190.1.i = phi i64 [ %.sroa.093.0.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit.i ], [ %.sroa.0190.0.i, %bb.aj ] ; 8 uses
  %.not123.i = icmp eq ptr %i.cc, null
  br i1 %.not123.i, label %bb.bh, label %bb.be

bb.am:                                            ; preds = %bb.ak
  %i.fm = load ptr, ptr %i.fg, align 8, !noalias !10704, !nonnull !12, !align !23, !noundef !12 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !10704, !nonnull !12, !noundef !12
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fq = load i64, ptr %i.fp, align 8, !noalias !10704, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !10704
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fo, i64 noundef %i.fq) #45, !noalias !10704
  %i.fr = load i64, ptr %i.z, align 8, !range !16, !noalias !10704, !noundef !12
  %i.fs = trunc nuw i64 %i.fr to i1
  br i1 %i.fs, label %bb.ao, label %bb.ap, !prof !18

bb.an:                                            ; preds = %bb.ak
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @515) #50, !noalias !10704
  unreachable

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10704
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @518) #50, !noalias !10704
  unreachable

bb.ap:                                            ; preds = %bb.am
  %i.ft = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !noalias !10704, !nonnull !12, !noundef !12 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !noalias !10704, !noundef !12 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !10704
  %i.fx = icmp eq i64 %i.fw, 10
  br i1 %i.fx, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !10704
  call void @_RNvCsdTU8hOCbdCr_8uu_touch4shr2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fu, i64 noundef 10) #45, !noalias !10704
  %.sroa.093.0.copyload.i = load i64, ptr %i.aj, align 8, !noalias !10704
  %.sroa.595.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.595.0.copyload.i = load ptr, ptr %.sroa.595.0..sroa_idx.i, align 8, !noalias !10704
  %.sroa.698.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.698.0.copyload.i = load i64, ptr %.sroa.698.0..sroa_idx.i, align 8, !noalias !10704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !10704
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.thread233.i

bb.ar:                                            ; preds = %bb.ap
  %.not.i139.i = icmp slt i64 %i.fw, 0
  br i1 %.not.i139.i, label %bb.av, label %bb.as, !prof !27

bb.as:                                            ; preds = %bb.ar
  %i.fy = icmp eq i64 %i.fw, 0
  br i1 %i.fy, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.thread233.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !10731
  %i.fz = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.fw, i64 noundef range(i64 1, 9) 1) #45, !noalias !10731 ; 3 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %bb.av, label %bb.aw

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.thread233.i: ; preds = %bb.aw, %bb.as, %bb.aq
  %.sroa.093.0.i = phi i64 [ %.sroa.093.0.copyload.i, %bb.aq ], [ %i.fw, %bb.aw ], [ 0, %bb.as ]
  %.sroa.595.0.i = phi ptr [ %.sroa.595.0.copyload.i, %bb.aq ], [ %i.fz, %bb.aw ], [ inttoptr (i64 1 to ptr), %bb.as ]
  %.sroa.698.0.i = phi i64 [ %.sroa.698.0.copyload.i, %bb.aq ], [ %i.fw, %bb.aw ], [ 0, %bb.as ]
  %.sroa.0190.0.off.i = add i64 %.sroa.0190.0.i, -1
  %switch.i = icmp ult i64 %.sroa.0190.0.off.i, -2
  br i1 %switch.i, label %bb.au, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i

bb.au:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.thread233.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.0.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.15.0.i, i64 noundef %.sroa.0190.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !10732
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i

bb.av:                                            ; preds = %bb.at, %bb.ar
  %.sroa.4217.0.ph.i = phi i64 [ 1, %bb.at ], [ 0, %bb.ar ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4217.0.ph.i, i64 %i.fw) #52, !noalias !10704
  unreachable

bb.aw:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fz, ptr nonnull align 1 %i.fu, i64 %i.fw, i1 false), !noalias !10704
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.thread233.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.au, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit.thread233.i
  %i.gb = add i64 %i.fi, -1                       ; 7 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.gd = shl i64 %i.gb, 3                        ; 5 uses
  %i.ge = icmp ugt i64 %i.gb, 2305843009213693951
  %.not.i141.i = icmp ugt i64 %i.gd, 9223372036854775800
  %or.cond.i.i = or i1 %i.ge, %.not.i141.i
  br i1 %or.cond.i.i, label %bb.ba, label %bb.ax, !prof !27

bb.ax:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i
  %i.gf = icmp eq i64 %i.gd, 0
  br i1 %i.gf, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit143.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !10733
  %i.gg = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.gd, i64 noundef range(i64 1, 9) 8) #45, !noalias !10733 ; 2 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gi = ptrtoint ptr %i.gg to i64
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit143.i

bb.ba:                                            ; preds = %bb.ay, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i
  %.sroa.4221.0.ph.i = phi i64 [ 8, %bb.ay ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4221.0.ph.i, i64 %i.gd) #52, !noalias !10704
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit143.i: ; preds = %bb.az, %bb.ax
  %.sroa.10223.0.i = phi i64 [ %i.gi, %bb.az ], [ 8, %bb.ax ]
  %.sroa.4221.0.i = phi i64 [ %i.gb, %bb.az ], [ 0, %bb.ax ] ; 2 uses
  %i.gj = inttoptr i64 %.sroa.10223.0.i to ptr    ; 3 uses
  %i.gk = icmp samesign ule i64 %i.gb, %.sroa.4221.0.i
  call void @llvm.assume(i1 %i.gk)
  %.not122.i = icmp eq i64 %i.gb, 0
  br i1 %.not122.i, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.bd, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit143.i
  %.val128.i = load i64, ptr %i.al, align 8, !range !19, !noalias !10704, !noundef !12 ; 2 uses
  %i.gl = icmp eq i64 %.val128.i, 0
  br i1 %i.gl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gm = shl nuw i64 %.val128.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fg, i64 noundef %i.gm, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !10704
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.bc, %bb.bb
  store i64 %.sroa.4221.0.i, ptr %i.al, align 8, !noalias !10704
  store ptr %i.gj, ptr %i.ff, align 8, !noalias !10704
  store i64 %i.gb, ptr %i.fh, align 8, !noalias !10704
  br label %bb.al

bb.bd:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit143.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gj, ptr nonnull align 8 %i.gc, i64 %i.gd, i1 false), !noalias !10704
  br label %bb.bb

bb.be:                                            ; preds = %bb.al
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !noalias !10704, !nonnull !12, !noundef !12
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !noalias !10704, !noundef !12 ; 8 uses
  %.not.i144.i = icmp slt i64 %i.gq, 0
  br i1 %.not.i144.i, label %bb.bi, label %bb.bf, !prof !27

bb.bf:                                            ; preds = %bb.be
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit147.thread248.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !10734
  %i.gs = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.gq, i64 noundef range(i64 1, 9) 1) #45, !noalias !10734 ; 3 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %bb.bi, label %bb.bj

bb.bh:                                            ; preds = %bb.al
  %.not124.i = icmp eq i64 %.sroa.0190.1.i, -1
  br i1 %.not124.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit155.i, label %bb.bt

bb.bi:                                            ; preds = %bb.bg, %bb.be
  %.sroa.4225.0.ph.i = phi i64 [ 1, %bb.bg ], [ 0, %bb.be ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4225.0.ph.i, i64 %i.gq) #52, !noalias !10704
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit147.thread248.i: ; preds = %bb.bj, %bb.bf
  %.sroa.10227.0254.i = phi i64 [ %i.gu, %bb.bj ], [ 1, %bb.bf ]
  %.sroa.7.16.extract.trunc.i = trunc i64 %i.gq to i32
  %.sroa.7.20.extract.shift.i = lshr i64 %i.gq, 32
  %.sroa.7.20.extract.trunc.i = trunc nuw nsw i64 %.sroa.7.20.extract.shift.i to i32
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit155.i

bb.bj:                                            ; preds = %bb.bg
  %i.gu = ptrtoint ptr %i.gs to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gs, ptr nonnull align 1 %i.go, i64 %i.gq, i1 false), !noalias !10704
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit147.thread248.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit155.i: ; preds = %bb.by, %bb.bx, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit147.thread248.i, %bb.bh
  %i.gv = phi i64 [ %i.fk, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit147.thread248.i ], [ %i.fk, %bb.bh ], [ %i.fk, %bb.bx ], [ %.pre295.i, %bb.by ] ; 5 uses
  %i.gw = phi ptr [ %i.fl, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit147.thread248.i ], [ %i.fl, %bb.bh ], [ %i.fl, %bb.bx ], [ %.pre.i, %bb.by ] ; 3 uses
  %.sroa.071.1.i = phi i1 [ true, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit147.thread248.i ], [ true, %bb.bh ], [ false, %bb.bx ], [ false, %bb.by ] ; 2 uses
  %.sroa.658.0.i = phi i32 [ %.sroa.7.20.extract.trunc.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit147.thread248.i ], [ undef, %bb.bh ], [ undef, %bb.bx ], [ undef, %bb.by ]
  %.sroa.555.0.i = phi i32 [ %.sroa.7.16.extract.trunc.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit147.thread248.i ], [ undef, %bb.bh ], [ %i.io, %bb.bx ], [ %i.io, %bb.by ]
  %.sroa.452.0.i = phi i64 [ %.sroa.10227.0254.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit147.thread248.i ], [ undef, %bb.bh ], [ %i.in, %bb.bx ], [ %i.in, %bb.by ] ; 2 uses
  %.sroa.050.0.i = phi i64 [ %i.gq, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8pJiQOn4hA_9coreutils.exit147.thread248.i ], [ -9223372036854775807, %bb.bh ], [ -9223372036854775808, %bb.bx ], [ -9223372036854775808, %bb.by ] ; 5 uses
  %i.gx = load i64, ptr %i.al, align 8, !range !19, !noalias !10704, !noundef !12 ; 2 uses
  %i.gy = icmp ult i64 %i.gv, 1152921504606846976
  call void @llvm.assume(i1 %i.gy)
  %.idx.i = shl nuw nsw i64 %i.gv, 3
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.idx.i
  %i.ha = mul nuw nsw i64 %i.gv, 24               ; 4 uses
  %or.cond.i.i.i.i.i = icmp samesign ugt i64 %i.gv, 384307168202282325
  br i1 %or.cond.i.i.i.i.i, label %bb.bm, label %bb.bk, !prof !27

bb.bk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit155.i
  %i.hb = icmp eq i64 %i.gv, 0                    ; 3 uses
  br i1 %i.hb, label %._crit_edge.i.i.i.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !10735
  %i.hc = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ha, i64 noundef range(i64 1, 9) 8) #45, !noalias !10735 ; 3 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %bb.bm, label %.lr.ph.i.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bl, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit155.i
  %.sroa.10.0.ph.i.i.i.i = phi i64 [ %i.ha, %bb.bl ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit155.i ]
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.bl ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit155.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i) #52, !noalias !10736
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bl, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtCsdTU8hOCbdCr_8uu_touch9InputFileuNCINvNvB1F_6uumain6uumainINtNtB6_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsk_B31_INtB31_3VecB1D_E14extend_trustedINtB4_3MapIB2X_BU_EB2d_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i
  %i.he = phi i64 [ %i.hq, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtCsdTU8hOCbdCr_8uu_touch9InputFileuNCINvNvB1F_6uumain6uumainINtNtB6_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsk_B31_INtB31_3VecB1D_E14extend_trustedINtB4_3MapIB2X_BU_EB2d_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i ], [ 0, %bb.bl ] ; 2 uses
  %i.hf = phi ptr [ %i.hh, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtCsdTU8hOCbdCr_8uu_touch9InputFileuNCINvNvB1F_6uumain6uumainINtNtB6_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsk_B31_INtB31_3VecB1D_E14extend_trustedINtB4_3MapIB2X_BU_EB2d_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i ], [ %i.gw, %bb.bl ] ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !10737, !nonnull !12, !align !23, !noundef !12 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hg, i64 8
  %.val4.i.i.i.i.i.i.i.i = load ptr, ptr %i.hi, align 8, !noalias !10737, !nonnull !12, !noundef !12 ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hg, i64 16
  %.val5.i.i.i.i.i.i.i.i = load i64, ptr %i.hj, align 8, !noalias !10737, !noundef !12 ; 8 uses
  %i.hk = icmp eq i64 %.val5.i.i.i.i.i.i.i.i, 1
  br i1 %i.hk, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lhsc.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.val4.i.i.i.i.i.i.i.i, align 1, !noalias !10738
  %i.hl = icmp eq i8 %lhsc.i.i.i.i.i.i.i.i.i.i, 45
  br i1 %i.hl, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtCsdTU8hOCbdCr_8uu_touch9InputFileuNCINvNvB1F_6uumain6uumainINtNtB6_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsk_B31_INtB31_3VecB1D_E14extend_trustedINtB4_3MapIB2X_BU_EB2d_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i, label %.thread3.i.i.i.i.i.i.i.i.i.i

bb.bo:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %.val5.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.bq, label %bb.bp, !prof !62

bb.bp:                                            ; preds = %bb.bo
  %i.hm = icmp eq i64 %.val5.i.i.i.i.i.i.i.i, 0
  br i1 %i.hm, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtCsdTU8hOCbdCr_8uu_touch9InputFileuNCINvNvB1F_6uumain6uumainINtNtB6_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsk_B31_INtB31_3VecB1D_E14extend_trustedINtB4_3MapIB2X_BU_EB2d_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i, label %.thread3.i.i.i.i.i.i.i.i.i.i

.thread3.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bp, %bb.bn
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !10739
  %i.hn = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val5.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #45, !noalias !10739 ; 3 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.thread3.i.i.i.i.i.i.i.i.i.i, %bb.bo
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.thread3.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.bo ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i.i, i64 %.val5.i.i.i.i.i.i.i.i) #52, !noalias !10738
  unreachable

bb.br:                                            ; preds = %.thread3.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hn, ptr nonnull readonly align 1 %.val4.i.i.i.i.i.i.i.i, i64 %.val5.i.i.i.i.i.i.i.i, i1 false), !noalias !10738
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtCsdTU8hOCbdCr_8uu_touch9InputFileuNCINvNvB1F_6uumain6uumainINtNtB6_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsk_B31_INtB31_3VecB1D_E14extend_trustedINtB4_3MapIB2X_BU_EB2d_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtCsdTU8hOCbdCr_8uu_touch9InputFileuNCINvNvB1F_6uumain6uumainINtNtB6_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsk_B31_INtB31_3VecB1D_E14extend_trustedINtB4_3MapIB2X_BU_EB2d_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i: ; preds = %bb.br, %bb.bp, %bb.bn
  %.sroa.5.0.i.i.i.i.i.i.i.i.i = phi ptr [ undef, %bb.bn ], [ %i.hn, %bb.br ], [ inttoptr (i64 1 to ptr), %bb.bp ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i64 [ -1, %bb.bn ], [ %.val5.i.i.i.i.i.i.i.i, %bb.br ], [ 0, %bb.bp ]
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %i.hc, i64 %i.he ; 3 uses
  store i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %i.hp, align 8, !noalias !10740
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !10740
  %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store i64 %.val5.i.i.i.i.i.i.i.i, ptr %.sroa.52.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !10740
  %i.hq = add nuw nsw i64 %i.he, 1                ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.hh, %i.gz
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtCsdTU8hOCbdCr_8uu_touch9InputFileuNCINvNvB1F_6uumain6uumainINtNtB6_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsk_B31_INtB31_3VecB1D_E14extend_trustedINtB4_3MapIB2X_BU_EB2d_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i, %bb.bk
  %.sroa.10.0.i13.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.bk ], [ %i.hc, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtCsdTU8hOCbdCr_8uu_touch9InputFileuNCINvNvB1F_6uumain6uumainINtNtB6_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsk_B31_INtB31_3VecB1D_E14extend_trustedINtB4_3MapIB2X_BU_EB2d_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.42.0.i.i.i.i.i.i.i = phi i64 [ 0, %bb.bk ], [ %i.hq, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtCsdTU8hOCbdCr_8uu_touch9InputFileuNCINvNvB1F_6uumain6uumainINtNtB6_5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterBV_EINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEEEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1D_NCINvMsk_B31_INtB31_3VecB1D_E14extend_trustedINtB4_3MapIB2X_BU_EB2d_EE0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.hr = icmp eq i64 %i.gx, 0
  br i1 %i.hr, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvB10_6uumain6uumainINtNtB2i_5chain5ChainIB32_B3t_EINtNtB2i_6cloned6ClonedINtNtNtB2m_5slice4iter4IterB3t_EEEEs_0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.hs = shl nuw i64 %i.gx, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gw, i64 noundef %i.hs, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !10737
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvB10_6uumain6uumainINtNtB2i_5chain5ChainIB32_B3t_EINtNtB2i_6cloned6ClonedINtNtNtB2m_5slice4iter4IterB3t_EEEEs_0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvB10_6uumain6uumainINtNtB2i_5chain5ChainIB32_B3t_EINtNtB2i_6cloned6ClonedINtNtNtB2m_5slice4iter4IterB3t_EEEEs_0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.bs, %._crit_edge.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !10704
  %i.ht = load ptr, ptr @_RNvNtCsdTU8hOCbdCr_8uu_touch7options9NO_CREATE, align 8, !noalias !10704, !nonnull !12, !noundef !12
  %i.hu = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsdTU8hOCbdCr_8uu_touch7options9NO_CREATE, i64 8), align 8, !noalias !10704, !noundef !12
  %i.hv = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ht, i64 noundef %i.hu) #45, !noalias !10704
  %i.hw = call noundef i8 @_RNvCsdTU8hOCbdCr_8uu_touch28determine_atime_mtime_change(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ao) #45, !noalias !10704
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.hy = zext i1 %i.hv to i8
  store i8 %i.hy, ptr %i.hx, align 8, !noalias !10704
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ah, i64 49
  %i.ia = zext i1 %i.bv to i8
  store i8 %i.ia, ptr %i.hz, align 1, !noalias !10704
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i64 %.sroa.050.0.i, ptr %i.ib, align 8, !noalias !10704
  %.sroa.452.0..sroa_idx53.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 %.sroa.452.0.i, ptr %.sroa.452.0..sroa_idx53.i, align 8, !noalias !10704
  %.sroa.555.0..sroa_idx56.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i32 %.sroa.555.0.i, ptr %.sroa.555.0..sroa_idx56.i, align 8, !noalias !10704
  %.sroa.658.0..sroa_idx59.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 44
  store i32 %.sroa.658.0.i, ptr %.sroa.658.0..sroa_idx59.i, align 4, !noalias !10704
  store i64 %.sroa.0181.0.i, ptr %i.ah, align 8, !noalias !10704
  %.sroa.4214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %.sroa.8184.0.i, ptr %.sroa.4214.0..sroa_idx.i, align 8, !noalias !10704
  %.sroa.5.0..sroa_idx215.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 %.sroa.10187.0.i, ptr %.sroa.5.0..sroa_idx215.i, align 8, !noalias !10704
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ah, i64 51
  store i8 %i.hw, ptr %i.ic, align 1, !noalias !10704
  %i.id = getelementptr inbounds nuw i8, ptr %i.ah, i64 50
  store i8 0, ptr %i.id, align 2, !noalias !10704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !10704
  call void @_RNvCsdTU8hOCbdCr_8uu_touch5touch(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.10.0.i13.i.i.i, i64 noundef %.sroa.42.0.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ah) #45, !noalias !10704
  %i.ie = load i64, ptr %i.ag, align 8, !range !10741, !noalias !10704, !noundef !12
  %.not126.i = icmp eq i64 %i.ie, -1
  %i.if = inttoptr i64 %.sroa.452.0.i to ptr      ; 2 uses
  br i1 %.not126.i, label %bb.cf, label %bb.bz

bb.bt:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !10704
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.1.i) ]
  call void @_RNvCsdTU8hOCbdCr_8uu_touch15parse_timestamp(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.15.1.i, i64 noundef %.sroa.20.1.i) #45, !noalias !10704
  %i.ig = load i64, ptr %i.ai, align 8, !range !16, !noalias !10704, !noundef !12
  %i.ih = trunc nuw i64 %i.ig to i1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ik = icmp eq i64 %.sroa.0190.1.i, 0          ; 2 uses
  br i1 %i.ih, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.il = load ptr, ptr %i.ii, align 8, !noalias !10704, !nonnull !12, !noundef !12 ; 2 uses
  %i.im = load ptr, ptr %i.ij, align 8, !noalias !10704, !nonnull !12, !align !23, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !10704
  br i1 %i.ik, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.15.1.i, i64 noundef %.sroa.0190.1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !10742
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.bv, %bb.bu
  %.sroa.0181.0.off.i = add i64 %.sroa.0181.0.i, -1
  %switch266.i = icmp ult i64 %.sroa.0181.0.off.i, -2
  br i1 %switch266.i, label %bb.bw, label %bb.cm

bb.bw:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8184.0.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8184.0.i, i64 noundef %.sroa.0181.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !10743
  br label %bb.cm

bb.bx:                                            ; preds = %bb.bt
  %i.in = load i64, ptr %i.ii, align 8, !noalias !10704, !noundef !12 ; 2 uses
  %i.io = load i32, ptr %i.ij, align 8, !noalias !10704, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !10704
  br i1 %i.ik, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit155.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.15.1.i, i64 noundef %.sroa.0190.1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !10744
  %.pre.i = load ptr, ptr %i.ff, align 8, !noalias !10704
  %.pre295.i = load i64, ptr %i.fh, align 8, !noalias !10704
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit155.i

bb.bz:                                            ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvB10_6uumain6uumainINtNtB2i_5chain5ChainIB32_B3t_EINtNtB2i_6cloned6ClonedINtNtNtB2m_5slice4iter4IterB3t_EEEEs_0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 48, i1 false), !noalias !10704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !10704
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !10745
  %i.ip = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !10745 ; 4 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %bb.ca, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !15

bb.ca:                                            ; preds = %bb.bz
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #52, !noalias !10745
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ip, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false), !noalias !10704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %or.cond.i.i.i = icmp slt i64 %.sroa.050.0.i, 1
  br i1 %or.cond.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch6SourceECsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.cb

bb.cb:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.if, i64 noundef %.sroa.050.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !10746
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch6SourceECsl8pJiQOn4hA_9coreutils.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch6SourceECsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.cb, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  %.sroa.0181.0.off267.i = add i64 %.sroa.0181.0.i, -1
  %switch268.i = icmp ult i64 %.sroa.0181.0.off267.i, -2
  br i1 %switch268.i, label %bb.cc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch7OptionsECsl8pJiQOn4hA_9coreutils.exit.i

bb.cc:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch6SourceECsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8184.0.i, i64 noundef %.sroa.0181.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !10747
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch7OptionsECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch7OptionsECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.cc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch6SourceECsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !10704
  call void @llvm.experimental.noalias.scope.decl(metadata !10748)
  %i.ir = icmp eq i64 %.sroa.42.0.i.i.i.i.i.i.i, 0
  br i1 %i.ir, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch7OptionsECsl8pJiQOn4hA_9coreutils.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch9InputFileECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %.sroa.0.04.i.i.i.i = phi i64 [ %i.it, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch9InputFileECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch7OptionsECsl8pJiQOn4hA_9coreutils.exit.i ] ; 2 uses
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i13.i.i.i, i64 %.sroa.0.04.i.i.i.i ; 2 uses
  %i.it = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 1  ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.is, align 8, !range !13, !alias.scope !10748, !noalias !10749, !noundef !12 ; 2 uses
  %i.iu = icmp sgt i64 %.val.i.i.i.i, 0
  br i1 %i.iu, label %bb.cd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch9InputFileECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.cd:                                            ; preds = %.lr.ph.i.i.i.i
  %i.iv = getelementptr i8, ptr %i.is, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.iv, align 8, !alias.scope !10748, !noalias !10749, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !10750
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch9InputFileECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch9InputFileECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.cd, %.lr.ph.i.i.i.i
  %i.iw = icmp eq i64 %i.it, %.sroa.42.0.i.i.i.i.i.i.i
  br i1 %i.iw, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch9InputFileECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch7OptionsECsl8pJiQOn4hA_9coreutils.exit.i
  br i1 %i.hb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileEECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.ce

bb.ce:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i13.i.i.i, i64 noundef %i.ha, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !10749
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileEECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileEECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.ce, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.ix = add i64 %.sroa.0190.1.i, -1
  %i.iy = icmp ult i64 %i.ix, -2
  %or.cond265.not.i.a = and i1 %i.iy, %.sroa.071.1.i
  br i1 %or.cond265.not.i.a, label %bb.cl, label %_RINvNvCsdTU8hOCbdCr_8uu_touch6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBK_6cloned6ClonedINtNtNtBO_5slice4iter4IterB2l_EEEECsl8pJiQOn4hA_9coreutils.exit

bb.cf:                                            ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec16in_place_collectINtB6_3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterRNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENCINvNvB10_6uumain6uumainINtNtB2i_5chain5ChainIB32_B3t_EINtNtB2i_6cloned6ClonedINtNtNtB2m_5slice4iter4IterB3t_EEEEs_0EE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !10704
  %or.cond.i.i159.i = icmp slt i64 %.sroa.050.0.i, 1
  br i1 %or.cond.i.i159.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch6SourceECsl8pJiQOn4hA_9coreutils.exit.i161.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.if, i64 noundef %.sroa.050.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !10751
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch6SourceECsl8pJiQOn4hA_9coreutils.exit.i161.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch6SourceECsl8pJiQOn4hA_9coreutils.exit.i161.i: ; preds = %bb.cg, %bb.cf
  %.sroa.0181.0.off269.i = add i64 %.sroa.0181.0.i, -1
  %switch270.i = icmp ult i64 %.sroa.0181.0.off269.i, -2
  br i1 %switch270.i, label %bb.ch, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch7OptionsECsl8pJiQOn4hA_9coreutils.exit163.i

bb.ch:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch6SourceECsl8pJiQOn4hA_9coreutils.exit.i161.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8184.0.i, i64 noundef %.sroa.0181.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !10752
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch7OptionsECsl8pJiQOn4hA_9coreutils.exit163.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch7OptionsECsl8pJiQOn4hA_9coreutils.exit163.i: ; preds = %bb.ch, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch6SourceECsl8pJiQOn4hA_9coreutils.exit.i161.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !10704
  call void @llvm.experimental.noalias.scope.decl(metadata !10753)
  %i.iz = icmp eq i64 %.sroa.42.0.i.i.i.i.i.i.i, 0
  br i1 %i.iz, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i170.i, label %.lr.ph.i.i.i166.i

.lr.ph.i.i.i166.i:                                ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch7OptionsECsl8pJiQOn4hA_9coreutils.exit163.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch9InputFileECsl8pJiQOn4hA_9coreutils.exit.i.i.i169.i
  %.sroa.0.04.i.i.i167.i = phi i64 [ %i.jb, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch9InputFileECsl8pJiQOn4hA_9coreutils.exit.i.i.i169.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch7OptionsECsl8pJiQOn4hA_9coreutils.exit163.i ] ; 2 uses
  %i.ja = getelementptr inbounds nuw [24 x i8], ptr %.sroa.10.0.i13.i.i.i, i64 %.sroa.0.04.i.i.i167.i ; 2 uses
  %i.jb = add nuw nsw i64 %.sroa.0.04.i.i.i167.i, 1 ; 2 uses
  %.val.i.i.i168.i = load i64, ptr %i.ja, align 8, !range !13, !alias.scope !10753, !noalias !10754, !noundef !12 ; 2 uses
  %i.jc = icmp sgt i64 %.val.i.i.i168.i, 0
  br i1 %i.jc, label %bb.ci, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch9InputFileECsl8pJiQOn4hA_9coreutils.exit.i.i.i169.i

bb.ci:                                            ; preds = %.lr.ph.i.i.i166.i
  %i.jd = getelementptr i8, ptr %i.ja, i64 8
  %.val3.i.i.i172.i = load ptr, ptr %i.jd, align 8, !alias.scope !10753, !noalias !10754, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i172.i, i64 noundef %.val.i.i.i168.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !10755
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch9InputFileECsl8pJiQOn4hA_9coreutils.exit.i.i.i169.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch9InputFileECsl8pJiQOn4hA_9coreutils.exit.i.i.i169.i: ; preds = %bb.ci, %.lr.ph.i.i.i166.i
  %i.je = icmp eq i64 %i.jb, %.sroa.42.0.i.i.i.i.i.i.i
  br i1 %i.je, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i170.i, label %.lr.ph.i.i.i166.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i170.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch9InputFileECsl8pJiQOn4hA_9coreutils.exit.i.i.i169.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsdTU8hOCbdCr_8uu_touch7OptionsECsl8pJiQOn4hA_9coreutils.exit163.i
  br i1 %i.hb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileEECsl8pJiQOn4hA_9coreutils.exit173.i, label %bb.cj

bb.cj:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i170.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i13.i.i.i, i64 noundef %i.ha, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !10754
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileEECsl8pJiQOn4hA_9coreutils.exit173.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileEECsl8pJiQOn4hA_9coreutils.exit173.i: ; preds = %bb.cj, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i170.i
  %i.jf = add i64 %.sroa.0190.1.i, -1
  %i.jg = icmp ult i64 %i.jf, -2
  %or.cond264.not.i = and i1 %i.jg, %.sroa.071.1.i
  br i1 %or.cond264.not.i, label %bb.ck, label %_RINvNvCsdTU8hOCbdCr_8uu_touch6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBK_6cloned6ClonedINtNtNtBO_5slice4iter4IterB2l_EEEECsl8pJiQOn4hA_9coreutils.exit.thread

_RINvNvCsdTU8hOCbdCr_8uu_touch6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBK_6cloned6ClonedINtNtNtBO_5slice4iter4IterB2l_EEEECsl8pJiQOn4hA_9coreutils.exit.thread: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileEECsl8pJiQOn4hA_9coreutils.exit173.i, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !10704
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ao) #45, !noalias !10704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !10704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.jh = call noundef i32 @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13get_exit_code() #45
  br label %bb.co

bb.ck:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileEECsl8pJiQOn4hA_9coreutils.exit173.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.1.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.15.1.i, i64 noundef %.sroa.0190.1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !10756
  br label %_RINvNvCsdTU8hOCbdCr_8uu_touch6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBK_6cloned6ClonedINtNtNtBO_5slice4iter4IterB2l_EEEECsl8pJiQOn4hA_9coreutils.exit.thread

bb.cl:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileEECsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.15.1.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.15.1.i, i64 noundef %.sroa.0190.1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !10757
  br label %_RINvNvCsdTU8hOCbdCr_8uu_touch6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBK_6cloned6ClonedINtNtNtBO_5slice4iter4IterB2l_EEEECsl8pJiQOn4hA_9coreutils.exit

bb.cm:                                            ; preds = %bb.bw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.i
  %.val.i = load i64, ptr %i.al, align 8, !range !19, !noalias !10704, !noundef !12 ; 2 uses
  %i.ji = icmp eq i64 %.val.i, 0
  br i1 %i.ji, label %_RINvNvCsdTU8hOCbdCr_8uu_touch6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBK_6cloned6ClonedINtNtNtBO_5slice4iter4IterB2l_EEEECsl8pJiQOn4hA_9coreutils.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %.val127.i = load ptr, ptr %i.ff, align 8, !noalias !10704, !nonnull !12, !noundef !12
  %i.jj = shl nuw i64 %.val.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val127.i, i64 noundef %i.jj, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !10704
  br label %_RINvNvCsdTU8hOCbdCr_8uu_touch6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBK_6cloned6ClonedINtNtNtBO_5slice4iter4IterB2l_EEEECsl8pJiQOn4hA_9coreutils.exit

_RINvNvCsdTU8hOCbdCr_8uu_touch6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBK_6cloned6ClonedINtNtNtBO_5slice4iter4IterB2l_EEEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNCINvNvCsdTU8hOCbdCr_8uu_touch6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBM_6cloned6ClonedINtNtNtBQ_5slice4iter4IterB2n_EEEE0Csl8pJiQOn4hA_9coreutils.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileEECsl8pJiQOn4hA_9coreutils.exit.i, %bb.cl, %bb.cm, %bb.cn
  %.sroa.6.0.i = phi ptr [ @517, %bb.cl ], [ @56, %_RNCINvNvCsdTU8hOCbdCr_8uu_touch6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBM_6cloned6ClonedINtNtNtBQ_5slice4iter4IterB2n_EEEE0Csl8pJiQOn4hA_9coreutils.exit.i ], [ @517, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileEECsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.im, %bb.cn ], [ %i.im, %bb.cm ]
  %.sroa.0.0.i = phi ptr [ %i.ip, %bb.cl ], [ %i.ew, %_RNCINvNvCsdTU8hOCbdCr_8uu_touch6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBM_6cloned6ClonedINtNtNtBQ_5slice4iter4IterB2n_EEEE0Csl8pJiQOn4hA_9coreutils.exit.i ], [ %i.ip, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCsdTU8hOCbdCr_8uu_touch9InputFileEECsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.il, %bb.cn ], [ %i.il, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !10704
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches10ArgMatchesECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(56) %i.ao) #45, !noalias !10704
  br label %.split

.split:                                           ; preds = %_RINvNvCsdTU8hOCbdCr_8uu_touch6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBK_6cloned6ClonedINtNtNtBO_5slice4iter4IterB2l_EEEECsl8pJiQOn4hA_9coreutils.exit, %_RINvNvCsdTU8hOCbdCr_8uu_touch6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBK_6cloned6ClonedINtNtNtBO_5slice4iter4IterB2l_EEEECsl8pJiQOn4hA_9coreutils.exit.thread54
  %.sroa.0.2.i59 = phi ptr [ %i.bi, %_RINvNvCsdTU8hOCbdCr_8uu_touch6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBK_6cloned6ClonedINtNtNtBO_5slice4iter4IterB2l_EEEECsl8pJiQOn4hA_9coreutils.exit.thread54 ], [ %.sroa.0.0.i, %_RINvNvCsdTU8hOCbdCr_8uu_touch6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBK_6cloned6ClonedINtNtNtBO_5slice4iter4IterB2l_EEEECsl8pJiQOn4hA_9coreutils.exit ]
  %.sroa.6.2.i58 = phi ptr [ %i.bk, %_RINvNvCsdTU8hOCbdCr_8uu_touch6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBK_6cloned6ClonedINtNtNtBO_5slice4iter4IterB2l_EEEECsl8pJiQOn4hA_9coreutils.exit.thread54 ], [ %.sroa.6.0.i, %_RINvNvCsdTU8hOCbdCr_8uu_touch6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBK_6cloned6ClonedINtNtNtBO_5slice4iter4IterB2l_EEEECsl8pJiQOn4hA_9coreutils.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !10704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.2.i58) ]
  store ptr %.sroa.0.2.i59, ptr %i.bb, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  store ptr %.sroa.6.2.i58, ptr %i.jk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store ptr %i.bb, ptr %i.ay, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_ENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.az, ptr noundef nonnull @3, ptr noundef nonnull %i.ay) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.jm = load i64, ptr %i.jl, align 8, !noundef !12
  %i.jn = icmp eq i64 %i.jm, 0
  br i1 %i.jn, label %bb.dk, label %bb.cp

bb.co:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit, %_RINvNvCsdTU8hOCbdCr_8uu_touch6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBK_6cloned6ClonedINtNtNtBO_5slice4iter4IterB2l_EEEECsl8pJiQOn4hA_9coreutils.exit.thread
  %.sroa.0.0 = phi i32 [ %i.me, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECsl8pJiQOn4hA_9coreutils.exit ], [ %i.jh, %_RINvNvCsdTU8hOCbdCr_8uu_touch6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBK_6cloned6ClonedINtNtNtBO_5slice4iter4IterB2l_EEEECsl8pJiQOn4hA_9coreutils.exit.thread ]
  ret i32 %.sroa.0.0

bb.cp:                                            ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.aw, align 8
  %i.jo = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aw) #45
  store ptr %i.jo, ptr %i.ax, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.jp = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #45 ; 2 uses
  %i.jq = extractvalue { ptr, i64 } %i.jp, 0
  %i.jr = extractvalue { ptr, i64 } %i.jp, 1
  store ptr %i.jq, ptr %i.av, align 8
  %i.js = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.jr, ptr %i.js, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store ptr %i.av, ptr %i.au, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.412.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10758
  store ptr %i.ax, ptr %i.g, align 8, !noalias !10758
  %i.jt = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr null, ptr %i.jt, align 8, !noalias !10758
  %i.ju = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @324, ptr noundef nonnull @5, ptr noundef nonnull %i.au) #45
  %i.jv = load ptr, ptr %i.jt, align 8, !noalias !10758, !noundef !12 ; 7 uses
  %.not.i5.i = icmp eq ptr %i.jv, null            ; 2 uses
  br i1 %i.ju, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  br i1 %.not.i5.i, label %bb.cv, label %bb.cw, !prof !18

bb.cr:                                            ; preds = %bb.cp
  br i1 %.not.i5.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10759
  %i.jw = ptrtoint ptr %i.jv to i64               ; 2 uses
  %i.jx = and i64 %i.jw, 3
  switch i64 %i.jx, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i
    i64 3, label %bb.ct
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i
    i64 1, label %bb.cu
  ], !prof !22

default.unreachable:                              ; preds = %bb.dm, %bb.df, %bb.db, %bb.cw, %bb.cs
  unreachable

bb.ct:                                            ; preds = %bb.cs
  %i.jy = icmp ult ptr %i.jv, inttoptr (i64 188978561024 to ptr)
  %i.jz = and i64 %i.jw, 1095216660480
  %i.ka = icmp ne i64 %i.jz, 1095216660480
  call void @llvm.assume(i1 %i.jy)
  call void @llvm.assume(i1 %i.ka)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.cu:                                            ; preds = %bb.cs
  %i.kb = getelementptr i8, ptr %i.jv, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kb) ]
  %i.kc = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.kb, ptr %i.kc, align 8, !alias.scope !10760, !noalias !10759
  store i8 3, ptr %i.f, align 8, !alias.scope !10760, !noalias !10759
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kc) #45, !noalias !10761
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10759
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread

bb.cv:                                            ; preds = %bb.cq
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @319, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #50
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread: ; preds = %bb.cr, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10758
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit

bb.cw:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10762
  %i.kd = ptrtoint ptr %i.jv to i64               ; 2 uses
  %i.ke = and i64 %i.kd, 3
  switch i64 %i.ke, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i
    i64 3, label %bb.cx
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i
    i64 1, label %bb.cy
  ], !prof !22

bb.cx:                                            ; preds = %bb.cw
  %i.kf = icmp ult ptr %i.jv, inttoptr (i64 188978561024 to ptr)
  %i.kg = and i64 %i.kd, 1095216660480
  %i.kh = icmp ne i64 %i.kg, 1095216660480
  call void @llvm.assume(i1 %i.kf)
  call void @llvm.assume(i1 %i.kh)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i

bb.cy:                                            ; preds = %bb.cw
  %i.ki = getelementptr i8, ptr %i.jv, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ki) ]
  %i.kj = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ki, ptr %i.kj, align 8, !alias.scope !10763, !noalias !10762
  store i8 3, ptr %i.e, align 8, !alias.scope !10763, !noalias !10762
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kj) #45, !noalias !10762
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10762
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECsl8pJiQOn4hA_9coreutils.exit.i.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsl8pJiQOn4hA_9coreutils.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr %i.ba, ptr %i.at, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.416.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10764
  store ptr %i.ax, ptr %i.d, align 8, !noalias !10764
  %i.kk = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr null, ptr %i.kk, align 8, !noalias !10764
  %i.kl = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @324, ptr noundef nonnull @6, ptr noundef nonnull %i.at) #45
  %i.km = load ptr, ptr %i.kk, align 8, !noalias !10764, !noundef !12 ; 7 uses
  %.not.i5.i33 = icmp eq ptr %i.km, null          ; 2 uses
  br i1 %i.kl, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit
  br i1 %.not.i5.i33, label %bb.de, label %bb.df, !prof !18
end_hunk_0
begin_hunk_1_@_RNCINvMs0_NtNtCs2vKOLqTMYjT_3std4sync4onceNtB8_4Once9call_onceNCINvNtCs3ewIIPtxFMv_10rayon_core8registry19set_global_registryNCINvB13_20init_global_registryNtB13_12DefaultSpawnE0E0E0Csl8pJiQOn4hA_9coreutils:bb.a
thread-pre-split.i.i54.i.i.i.i:                   ; preds = %bb.q
  %.pr.i.i55.i.i.i.i = load i8, ptr %.sroa.419.0.copyload.i.i.i.i, align 1, !alias.scope !32883, !noalias !32884
  br label %bb.s

bb.s:                                             ; preds = %thread-pre-split.i.i54.i.i.i.i, %bb.r
  %i.bs = phi i8 [ %.pr.i.i55.i.i.i.i, %thread-pre-split.i.i54.i.i.i.i ], [ %i.br, %bb.r ]
  %cond.i.i37.i.i.i.i = icmp eq i8 %i.bs, 43      ; 2 uses
  %i.bt = sext i1 %cond.i.i37.i.i.i.i to i64
  %.sroa.15.0.i.i38.i.i.i.i = add nsw i64 %.sroa.520.0.copyload.i.i.i.i, %i.bt ; 4 uses
  %.sroa.0.0.idx.i.i39.i.i.i.i = zext i1 %cond.i.i37.i.i.i.i to i64
  %.sroa.0.0.i.i40.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.419.0.copyload.i.i.i.i, i64 %.sroa.0.0.idx.i.i39.i.i.i.i ; 2 uses
  %i.bu = icmp samesign ult i64 %.sroa.15.0.i.i38.i.i.i.i, 17
  br i1 %i.bu, label %.preheader.i.i47.i.i.i.i, label %.preheader56.i.i41.i.i.i.i.preheader

.preheader.i.i47.i.i.i.i:                         ; preds = %bb.s
  %.not5366.i.i48.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i38.i.i.i.i, 0
  br i1 %.not5366.i.i48.i.i.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i, label %.lr.ph.i.i49.i.i.i.i

.preheader56.i.i41.i.i.i.i:                       ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i44.i.i.i.i251, i64 1
  %i.bw = add nsw i64 %.sroa.15.1.i.i43.i.i.i.i250, -1 ; 2 uses
  %.not52.i.not.i45.not.i.not.i.not.i.not.i.not = icmp eq i64 %i.bw, 0
  br i1 %.not52.i.not.i45.not.i.not.i.not.i.not.i.not, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i, label %.preheader56.i.i41.i.i.i.i.preheader

.preheader56.i.i41.i.i.i.i.preheader:             ; preds = %bb.s, %.preheader56.i.i41.i.i.i.i
  %.sroa.0.1.i.i44.i.i.i.i251 = phi ptr [ %i.bv, %.preheader56.i.i41.i.i.i.i ], [ %.sroa.0.0.i.i40.i.i.i.i, %bb.s ] ; 2 uses
  %.sroa.15.1.i.i43.i.i.i.i250 = phi i64 [ %i.bw, %.preheader56.i.i41.i.i.i.i ], [ %.sroa.15.0.i.i38.i.i.i.i, %bb.s ]
  %.sroa.042.0.i.i42.i.i.i.i249 = phi i64 [ %i.cf, %.preheader56.i.i41.i.i.i.i ], [ 0, %bb.s ]
  %i.bx = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i42.i.i.i.i249, i64 10) ; 2 uses
  %i.by = extractvalue { i64, i1 } %i.bx, 1
  br i1 %i.by, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i, label %bb.t, !prof !18

bb.t:                                             ; preds = %.preheader56.i.i41.i.i.i.i.preheader
  %i.bz = extractvalue { i64, i1 } %i.bx, 0       ; 2 uses
  %i.ca = load i8, ptr %.sroa.0.1.i.i44.i.i.i.i251, align 1, !alias.scope !32883, !noalias !32884, !noundef !12
  %i.cb = zext i8 %i.ca to i32
  %i.cc = add nsw i32 %i.cb, -48                  ; 2 uses
  %i.cd = icmp ugt i32 %i.cc, 9
  %i.ce = zext nneg i32 %i.cc to i64
  %i.cf = add i64 %i.bz, %i.ce                    ; 3 uses
  %i.cg = icmp ult i64 %i.cf, %i.bz
  %or.cond.i46.i.i.i.i = select i1 %i.cd, i1 true, i1 %i.cg, !prof !27
  br i1 %or.cond.i46.i.i.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i, label %.preheader56.i.i41.i.i.i.i, !prof !27

.lr.ph.i.i49.i.i.i.i:                             ; preds = %.preheader.i.i47.i.i.i.i, %bb.u
  %.sroa.0.269.i.i50.i.i.i.i = phi ptr [ %i.cn, %bb.u ], [ %.sroa.0.0.i.i40.i.i.i.i, %.preheader.i.i47.i.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i51.i.i.i.i = phi i64 [ %i.cm, %bb.u ], [ %.sroa.15.0.i.i38.i.i.i.i, %.preheader.i.i47.i.i.i.i ]
  %.sroa.042.267.i.i52.i.i.i.i = phi i64 [ %i.cp, %bb.u ], [ 0, %.preheader.i.i47.i.i.i.i ]
  %i.ch = load i8, ptr %.sroa.0.269.i.i50.i.i.i.i, align 1, !alias.scope !32883, !noalias !32884, !noundef !12
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -48                  ; 2 uses
  %i.ck = icmp ugt i32 %i.cj, 9                   ; 3 uses
  br i1 %i.ck, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i49.i.i.i.i
  %i.cl = mul i64 %.sroa.042.267.i.i52.i.i.i.i, 10
  %i.cm = add nsw i64 %.sroa.15.268.i.i51.i.i.i.i, -1 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i50.i.i.i.i, i64 1
  %i.co = zext nneg i32 %i.cj to i64
  %i.cp = add i64 %i.cl, %i.co                    ; 2 uses
  %.not53.i.i53.i.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not53.i.i53.i.i.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i, label %.lr.ph.i.i49.i.i.i.i

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i: ; preds = %bb.t, %.preheader56.i.i41.i.i.i.i.preheader, %.preheader56.i.i41.i.i.i.i, %bb.u, %.lr.ph.i.i49.i.i.i.i, %.preheader.i.i47.i.i.i.i, %bb.r, %bb.r, %bb.q
  %.sroa.101.0.i31.i.i.i.i = phi i64 [ undef, %bb.r ], [ 0, %.preheader.i.i47.i.i.i.i ], [ undef, %bb.q ], [ undef, %bb.r ], [ undef, %.lr.ph.i.i49.i.i.i.i ], [ %i.cp, %bb.u ], [ undef, %bb.t ], [ undef, %.preheader56.i.i41.i.i.i.i.preheader ], [ %i.cf, %.preheader56.i.i41.i.i.i.i ]
  %.sink.i.i32.i.i.i.i = phi i1 [ true, %bb.r ], [ false, %.preheader.i.i47.i.i.i.i ], [ true, %bb.q ], [ true, %bb.r ], [ %i.ck, %bb.u ], [ %i.ck, %.lr.ph.i.i49.i.i.i.i ], [ true, %bb.t ], [ true, %.preheader56.i.i41.i.i.i.i.preheader ], [ false, %.preheader56.i.i41.i.i.i.i ] ; 2 uses
  %i.cq = icmp eq i64 %.sroa.018.0.copyload.i.i.i.i, 0
  br i1 %i.cq, label %_RNCNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.419.0.copyload.i.i.i.i, i64 noundef %.sroa.018.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !32885
  br label %_RNCNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNCNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.v, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i30.i.i.i.i
  %.sroa.3.0.i36.i.i.i.i = select i1 %.sink.i.i32.i.i.i.i, i64 undef, i64 %.sroa.101.0.i31.i.i.i.i ; 2 uses
  %i.cr = icmp eq i64 %.sroa.3.0.i36.i.i.i.i, 0
  %or.cond.not.i.i.i.i = select i1 %.sink.i.i32.i.i.i.i, i1 true, i1 %i.cr
  br i1 %or.cond.not.i.i.i.i, label %bb.w, label %_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.w:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsl8pJiQOn4hA_9coreutils.exit65.i.i.i.i, %_RNCNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %i.cs = tail call { i64, ptr } @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions21available_parallelism() #45, !noalias !32873 ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cs, 0
  %i.cu = extractvalue { i64, ptr } %i.cs, 1      ; 4 uses
  %i.cv = trunc nuw i64 %i.ct to i1
  %i.cw = ptrtoint ptr %i.cu to i64               ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cu) ]
  br i1 %i.cv, label %bb.x, label %_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !32886
  %i.cx = and i64 %i.cw, 3
  switch i64 %i.cx, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i57.i.i.i.i
    i64 3, label %bb.y
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i57.i.i.i.i
    i64 1, label %bb.z
  ], !prof !22

bb.y:                                             ; preds = %bb.x
  %i.cy = icmp ult ptr %i.cu, inttoptr (i64 188978561024 to ptr)
  %i.cz = and i64 %i.cw, 1095216660480
  %i.da = icmp ne i64 %i.cz, 1095216660480
  tail call void @llvm.assume(i1 %i.cy)
  tail call void @llvm.assume(i1 %i.da)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i57.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.db = getelementptr i8, ptr %i.cu, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db) ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.db, ptr %i.dc, align 8, !alias.scope !32887, !noalias !32886
  store i8 3, ptr %i.h, align 8, !alias.scope !32887, !noalias !32886
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dc) #45, !noalias !32888
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i57.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i57.i.i.i.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !32886
  br label %_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.aa:                                            ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32889)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.val.i60.i.i.i.i = load i64, ptr %i.dd, align 8, !range !13, !alias.scope !32889, !noalias !32874, !noundef !12 ; 2 uses
  %i.de = icmp sgt i64 %.val.i60.i.i.i.i, 0
  br i1 %i.de, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.sink.split.i61.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsl8pJiQOn4hA_9coreutils.exit65.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.sink.split.i61.i.i.i.i: ; preds = %bb.aa
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.val1.i63.i.i.i.i = load ptr, ptr %i.df, align 8, !alias.scope !32889, !noalias !32874, !nonnull !12, !noundef !12
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i63.i.i.i.i, i64 noundef %.val.i60.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !32890
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsl8pJiQOn4hA_9coreutils.exit65.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs7tKScEop1B6_5alloc6string6StringNtNtCs2vKOLqTMYjT_3std3env8VarErrorEECsl8pJiQOn4hA_9coreutils.exit65.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit.sink.split.i61.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !32874
  br label %bb.w

_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i57.i.i.i.i, %bb.w, %_RNCNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, %bb.l, %bb.j, %bb.b
  %.sroa.0.1.i.i.i.i = phi i64 [ %.val.i.i.i, %bb.b ], [ %.sroa.101.0.i.i.i.i.i, %bb.j ], [ %.sroa.3.0.i36.i.i.i.i, %_RNCNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB7_17ThreadPoolBuilder15get_num_threadss0_0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %i.bg, %bb.l ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i57.i.i.i.i ], [ %i.cw, %bb.w ] ; 2 uses
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.0.1.i.i.i.i, i64 65535) ; 9 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.u, i64 89
  %i.dh = load i8, ptr %i.dg, align 1, !range !21, !alias.scope !32872, !noalias !32873, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !32891
  store i64 0, ptr %i.g, align 8, !alias.scope !32892, !noalias !32891
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32892, !noalias !32891
  %.sroa.53.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx.i.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !32892, !noalias !32891
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32892, !noalias !32891
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32892, !noalias !32891
  call void @llvm.experimental.noalias.scope.decl(metadata !32893)
  %.not.not.i.i.not.i.i.i = icmp eq i64 %.sroa.0.1.i.i.i.i, 0
  br i1 %.not.not.i.i.not.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.thread.i.i, label %_RNvXsj_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

_RNvXsj_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g, i64 noundef 0, i64 noundef range(i64 1, 0) %..i.i.i.i, i64 noundef 8, i64 noundef 32) #45, !noalias !32894
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.dj = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32895, !noalias !32896, !noundef !12 ; 3 uses
  %i.dk = load i64, ptr %i.di, align 8, !range !19, !alias.scope !32895, !noalias !32896, !noundef !12
  %i.dl = sub i64 %i.dk, %i.dj
  %i.dm = icmp ugt i64 %..i.i.i.i, %i.dl
  br i1 %i.dm, label %bb.ab, label %.lr.ph.i.i.i.i.i.i.i.i, !prof !18

bb.ab:                                            ; preds = %_RNvXsj_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.di, i64 noundef %i.dj, i64 noundef range(i64 1, 0) %..i.i.i.i, i64 noundef 8, i64 noundef 16) #45, !noalias !32894
  %.promoted9.i.i.i.i.pre.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32897, !noalias !32898
  br label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.thread.i.i:             ; preds = %_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !32899)
  call void @llvm.experimental.noalias.scope.decl(metadata !32900)
  call void @llvm.experimental.noalias.scope.decl(metadata !32901)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !32891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !32902
  store i64 0, ptr %i.e, align 8, !alias.scope !32903, !noalias !32902
  %.sroa.42.0..sroa_idx.i.i41266.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i41266.i.i.i, align 8, !alias.scope !32903, !noalias !32902
  %.sroa.53.0..sroa_idx.i.i42267.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx.i.i42267.i.i.i, i8 0, i64 16, i1 false), !alias.scope !32903, !noalias !32902
  call void @llvm.experimental.noalias.scope.decl(metadata !32904)
  call void @llvm.experimental.noalias.scope.decl(metadata !32905)
  call void @llvm.experimental.noalias.scope.decl(metadata !32906)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !32874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !32874
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ab, %_RNvXsj_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %.promoted9.i.i.i.i.i.i.i.i = phi i64 [ %.promoted9.i.i.i.i.pre.i.i.i.i, %bb.ab ], [ %i.dj, %_RNvXsj_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect6ExtendBF_E14extend_reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ] ; 2 uses
  %i.dn = load ptr, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32897, !noalias !32898, !nonnull !12 ; 3 uses
  %i.do = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32897, !noalias !32898, !nonnull !12 ; 4 uses
  %.promoted.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !32897, !noalias !32898
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.ds = trunc nuw i8 %i.dh to i1
  br label %bb.ac

bb.ac:                                            ; preds = %_RNCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.dt = phi i64 [ %.promoted9.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.eo, %_RNCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 5 uses
  %i.du = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ek, %_RNCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.08.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dv, %_RNCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i ] ; 2 uses
  %i.dv = add i64 %.sroa.0.08.i.i.i.i.i.i.i.i, 1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !32891
  br i1 %i.ds, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !32907), !noalias !32908
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32909
  %i.dw = call noundef align 8 dereferenceable_or_null(1024) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1024, i64 noundef range(i64 1, 9) 8) #45, !noalias !32909 ; 3 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.ae, label %_RINvXsb_NtNtCs7tKScEop1B6_5alloc5boxed4iterINtB8_3BoxSINtNtNtCs6JMX4GRUq9U_4core3mem12maybe_uninit11MaybeUninitNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtBX_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2z_8adapters3map3MapINtNtNtBX_3ops5range5RangejENCNvMs_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB4r_6BufferB1L_E5alloc0EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 1024) #52, !noalias !32910
  unreachable

_RINvXsb_NtNtCs7tKScEop1B6_5alloc5boxed4iterINtB8_3BoxSINtNtNtCs6JMX4GRUq9U_4core3mem12maybe_uninit11MaybeUninitNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtBX_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2z_8adapters3map3MapINtNtNtBX_3ops5range5RangejENCNvMs_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB4r_6BufferB1L_E5alloc0EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %bb.ad
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32911
  %i.dy = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !32911 ; 4 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.af, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i, !prof !15

bb.af:                                            ; preds = %_RINvXsb_NtNtCs7tKScEop1B6_5alloc5boxed4iterINtB8_3BoxSINtNtNtCs6JMX4GRUq9U_4core3mem12maybe_uninit11MaybeUninitNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtBX_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2z_8adapters3map3MapINtNtNtBX_3ops5range5RangejENCNvMs_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB4r_6BufferB1L_E5alloc0EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #52, !noalias !32911
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i: ; preds = %_RINvXsb_NtNtCs7tKScEop1B6_5alloc5boxed4iterINtB8_3BoxSINtNtNtCs6JMX4GRUq9U_4core3mem12maybe_uninit11MaybeUninitNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEINtNtNtNtBX_4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB2z_8adapters3map3MapINtNtNtBX_3ops5range5RangejENCNvMs_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB4r_6BufferB1L_E5alloc0EECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  store ptr %i.dw, ptr %i.dy, align 8, !noalias !32911
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store i64 64, ptr %i.ea, align 8, !noalias !32911
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32912
  %i.eb = call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 384, i64 noundef range(i64 1, -9223372036854775807) 128) #45, !noalias !32912 ; 7 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.ag, label %_RNvMs4_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE8new_lifoCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i, !prof !15

bb.ag:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #52, !noalias !32912
  unreachable

_RNvMs4_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE8new_lifoCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i.i.i.i
  %i.ed = ptrtoint ptr %i.dy to i64
  store i64 1, ptr %i.eb, align 128, !noalias !32911
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !32911
  %.sroa.515.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 128
  store i64 %i.ed, ptr %.sroa.515.0..sroa_idx.i.i.i.i.i.i, align 128, !noalias !32911
  %.sroa.616.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(16) %.sroa.616.0..sroa_idx.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !32911
  store ptr %i.eb, ptr %i.f, align 8, !alias.scope !32907, !noalias !32913
  store ptr %i.dw, ptr %i.dp, align 8, !alias.scope !32907, !noalias !32913
  store i64 64, ptr %i.dq, align 8, !alias.scope !32907, !noalias !32913
  store i8 1, ptr %i.dr, align 8, !alias.scope !32907, !noalias !32913
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ac
  call fastcc void @_RNvMs4_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE8new_fifoCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f) #45, !noalias !32914
  %.pre.i.i.i.i.i = load ptr, ptr %i.f, align 8, !noalias !32913
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_RNvMs4_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE8new_lifoCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  %i.ee = phi ptr [ %.pre.i.i.i.i.i, %bb.ah ], [ %i.eb, %_RNvMs4_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE8new_lifoCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i ] ; 3 uses
  %i.ef = atomicrmw add ptr %i.ee, i64 1 monotonic, align 8, !noalias !32914
  %i.eg = icmp slt i64 %i.ef, 0
  br i1 %i.eg, label %bb.aj, label %_RNCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.trap(), !noalias !32908
  unreachable

_RNCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.ai
  %i.eh = load i8, ptr %i.dr, align 8, !range !21, !noalias !32913, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !32915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !32891
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee) ]
  %i.ei = icmp ult i64 %i.du, 288230376151711744
  call void @llvm.assume(i1 %i.ei)
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %i.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ej, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.i.i.i.i, i64 32, i1 false), !noalias !32916
  %i.ek = add nuw nsw i64 %i.du, 1                ; 3 uses
  %i.el = icmp ult i64 %i.dt, 576460752303423488
  call void @llvm.assume(i1 %i.el)
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dt ; 2 uses
  store ptr %i.ee, ptr %i.em, align 8, !noalias !32917
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i8 %i.eh, ptr %i.en, align 8, !noalias !32917
  %i.eo = add nuw nsw i64 %i.dt, 1                ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01.i.i.i.i)
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dv, %..i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3n_EIB4P_B4u_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.ac

_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3n_EIB4P_B4u_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %_RNCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB8_8Registry3newNtB8_12DefaultSpawnE0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %.sroa.0.0.copyload.pre.i.i.i = load i64, ptr %i.g, align 8, !noalias !32918 ; 2 uses
  %.sroa.6.0.copyload.pre.i.i.i = load i64, ptr %i.di, align 8, !noalias !32918 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !32891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !32902
  store i64 0, ptr %i.e, align 8, !alias.scope !32903, !noalias !32902
  %.sroa.42.0..sroa_idx.i.i41.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i41.i.i.i, align 8, !alias.scope !32903, !noalias !32902
  %.sroa.53.0..sroa_idx.i.i42.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i43.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx.i.i42.i.i.i, i8 0, i64 16, i1 false), !alias.scope !32903, !noalias !32902
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i.i43.i.i.i, align 8, !alias.scope !32903, !noalias !32902
  %.sroa.3.0..sroa_idx.i.i44.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.3.0..sroa_idx.i.i44.i.i.i, align 8, !alias.scope !32903, !noalias !32902
  call void @llvm.experimental.noalias.scope.decl(metadata !32919)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, i64 noundef 0, i64 noundef range(i64 1, 0) %..i.i.i.i, i64 noundef 8, i64 noundef 32) #45, !noalias !32920
  %i.ep = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.eq = load i64, ptr %.sroa.3.0..sroa_idx.i.i44.i.i.i, align 8, !alias.scope !32921, !noalias !32902, !noundef !12 ; 3 uses
  %i.er = load i64, ptr %i.ep, align 8, !range !19, !alias.scope !32921, !noalias !32902, !noundef !12
  %i.es = sub i64 %i.er, %i.eq
  %i.et = icmp ugt i64 %..i.i.i.i, %i.es
  br i1 %i.et, label %bb.ak, label %.lr.ph.i.i.i.i.i46.i.i.i, !prof !18

bb.ak:                                            ; preds = %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3n_EIB4P_B4u_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ep, i64 noundef %i.eq, i64 noundef range(i64 1, 0) %..i.i.i.i, i64 noundef 8, i64 noundef 16) #45, !noalias !32920
  %.promoted8.i.i.i.pre.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i44.i.i.i, align 8, !alias.scope !32922, !noalias !32902
  br label %.lr.ph.i.i.i.i.i46.i.i.i

.lr.ph.i.i.i.i.i46.i.i.i:                         ; preds = %bb.ak, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3n_EIB4P_B4u_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %.sroa.3.0..sroa_idx.i.promoted.i.i.i.i = phi i64 [ %.promoted8.i.i.i.pre.i.i.i.i.i, %bb.ak ], [ %i.eq, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3n_EIB4P_B4u_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i ]
  %i.eu = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ev = load ptr, ptr %.sroa.42.0..sroa_idx.i.i41.i.i.i, align 8, !alias.scope !32922, !noalias !32902, !nonnull !12
  %i.ew = load ptr, ptr %.sroa.2.0..sroa_idx.i.i43.i.i.i, align 8, !alias.scope !32922, !noalias !32902 ; 3 uses
  %.promoted.i.i.i.i.i47.i.i.i = load i64, ptr %.sroa.53.0..sroa_idx.i.i42.i.i.i, align 8, !alias.scope !32922, !noalias !32902
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32923
  call fastcc void @_RNvMs4_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE8new_fifoCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d) #45, !noalias !32924
  %i.ex = load ptr, ptr %i.d, align 8, !noalias !32923, !nonnull !12, !noundef !12 ; 2 uses
  %i.ey = atomicrmw add ptr %i.ex, i64 1 monotonic, align 8, !noalias !32924
  %i.ez = icmp slt i64 %i.ey, 0
  br i1 %i.ez, label %._crit_edge.i.i.i.i, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjTINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs7tKScEop1B6_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjTINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs7tKScEop1B6_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !32923
  call fastcc void @_RNvMs4_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE8new_fifoCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d) #45, !noalias !32924
  %i.fa = load ptr, ptr %i.d, align 8, !noalias !32923, !nonnull !12, !noundef !12 ; 2 uses
  %i.fb = atomicrmw add ptr %i.fa, i64 1 monotonic, align 8, !noalias !32924
  %i.fc = icmp slt i64 %i.fb, 0
  br i1 %i.fc, label %._crit_edge.i.i.i.i, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjTINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs7tKScEop1B6_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.al, %.lr.ph.i.i.i.i.i46.i.i.i
  call void @llvm.trap()
  unreachable

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjTINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs7tKScEop1B6_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i46.i.i.i, %bb.al
  %i.fd = phi ptr [ %i.fa, %bb.al ], [ %i.ex, %.lr.ph.i.i.i.i.i46.i.i.i ]
  %.sroa.0.07.i.i.i.i4.i.i.i.i = phi i64 [ %i.fg, %bb.al ], [ 0, %.lr.ph.i.i.i.i.i46.i.i.i ]
  %i.fe = phi i64 [ %i.fk, %bb.al ], [ %.promoted.i.i.i.i.i47.i.i.i, %.lr.ph.i.i.i.i.i46.i.i.i ] ; 3 uses
  %i.ff = phi i64 [ %i.fo, %bb.al ], [ %.sroa.3.0..sroa_idx.i.promoted.i.i.i.i, %.lr.ph.i.i.i.i.i46.i.i.i ] ; 3 uses
  %i.fg = add nuw i64 %.sroa.0.07.i.i.i.i4.i.i.i.i, 1 ; 2 uses
  %i.fh = load i8, ptr %i.eu, align 8, !range !21, !noalias !32923, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !32925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !32923
  %i.fi = icmp ult i64 %i.fe, 288230376151711744
  call void @llvm.assume(i1 %i.fi)
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %i.ev, i64 %i.fe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i.i.i.i.i.i.i.i.i, i64 32, i1 false), !noalias !32926
  %i.fk = add nuw nsw i64 %i.fe, 1                ; 2 uses
  %i.fl = icmp ult i64 %i.ff, 576460752303423488
  call void @llvm.assume(i1 %i.fl)
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %i.ff ; 2 uses
  store ptr %i.fd, ptr %i.fm, align 8, !noalias !32927
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i8 %i.fh, ptr %i.fn, align 8, !noalias !32927
  %i.fo = add nuw nsw i64 %i.ff, 1                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i.i.i)
  %exitcond.not.i.i.i.i.i48.i.i.i = icmp eq i64 %i.fg, %..i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i48.i.i.i, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3p_EIB4R_B4w_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.al

_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3p_EIB4R_B4w_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map8map_foldjTINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCs7tKScEop1B6_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0Csl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.i.i
  store i64 %i.fk, ptr %.sroa.53.0..sroa_idx.i.i42.i.i.i, align 8, !noalias !32902
  %.sroa.469.0.copyload.pre.i.i.i = load i64, ptr %i.ep, align 8, !noalias !32874 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !32874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !32874
  %i.fp = icmp ne i64 %i.dt, 576460752303423487
  call void @llvm.assume(i1 %i.fp)
  %or.cond.i.i.i.i.i.i = icmp samesign ugt i64 %i.dt, 192153584101141161
  br i1 %or.cond.i.i.i.i.i.i, label %3, label %bb.am, !prof !35

bb.am:                                            ; preds = %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3p_EIB4R_B4w_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %2 = mul nuw nsw i64 %i.eo, 48                  ; 2 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32928
  %i.fq = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 9) 8) #45, !noalias !32928 ; 6 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %3, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %bb.am
  %i.fs = add i64 %.promoted9.i.i.i.i.i.i.i.i, %.sroa.0.08.i.i.i.i.i.i.i.i ; 2 uses
  %i.ft = and i64 %i.fs, 1152921504606846975      ; 2 uses
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %i.fv = icmp eq i64 %i.ft, 0
  br i1 %i.fv, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %unroll_iter = and i64 %i.fu, 2305843009213693950
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

3:                                                ; preds = %bb.am, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3p_EIB4R_B4w_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %.sroa.10.0.ph.i.i.i.i.i = phi i64 [ %2, %bb.am ], [ undef, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3p_EIB4R_B4w_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i ]
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.am ], [ 0, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs3ewIIPtxFMv_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCs7tKScEop1B6_5alloc3vec3VecB3p_EIB4R_B4w_EECsl8pJiQOn4hA_9coreutils.exit.i.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i.i) #52, !noalias !32929
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new
  %i.fw = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new ], [ %i.gn, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fx = phi ptr [ %i.do, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new ], [ %i.gi, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !32930, !nonnull !12, !noundef !12
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.ga = load i8, ptr %i.fz, align 8, !range !21, !noalias !32930, !noundef !12
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.gc = getelementptr inbounds nuw [48 x i8], ptr %i.fq, i64 %i.fw ; 5 uses
  store ptr %i.fy, ptr %i.gc, align 8, !noalias !32931
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store i8 %i.ga, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !32931
  %i.gd = getelementptr i8, ptr %i.gc, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.gd, i8 0, i64 14, i1 false), !noalias !32932
  %i.ge = getelementptr i8, ptr %i.gc, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ge, i8 0, i64 10, i1 false), !noalias !32932
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 44
  store i32 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !32931
  %i.gf = load ptr, ptr %i.gb, align 8, !noalias !32930, !nonnull !12, !noundef !12
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.gh = load i8, ptr %i.gg, align 8, !range !21, !noalias !32930, !noundef !12
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fx, i64 32 ; 2 uses
  %i.gj = getelementptr inbounds nuw [48 x i8], ptr %i.fq, i64 %i.fw ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 48
  store ptr %i.gf, ptr %i.gk, align 8, !noalias !32931
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.gj, i64 56
  store i8 %i.gh, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !32931
  %i.gl = getelementptr i8, ptr %i.gj, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.gl, i8 0, i64 14, i1 false), !noalias !32932
  %i.gm = getelementptr i8, ptr %i.gj, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.gm, i8 0, i64 10, i1 false), !noalias !32932
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.gj, i64 92
  store i32 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.1, align 4, !noalias !32931
  %i.gn = add nuw nsw i64 %i.fw, 2                ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.i.i.i.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.unr-lcssa:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.go = and i64 %i.fs, 1
  %lcmp.mod.not.not = icmp eq i64 %i.go, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader, label %._crit_edge.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader:          ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.unr-lcssa, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %.epil.init = phi i64 [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ], [ %i.gn, %._crit_edge.i.i.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %.epil.init312 = phi ptr [ %i.do, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoE7reserveCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ], [ %i.gi, %._crit_edge.i.i.i.i.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod314 = trunc i64 %i.fu to i1
  call void @llvm.assume(i1 %lcmp.mod314)
  %i.gp = load ptr, ptr %.epil.init312, align 8, !noalias !32930, !nonnull !12, !noundef !12
  %i.gq = getelementptr inbounds nuw i8, ptr %.epil.init312, i64 8
  %i.gr = load i8, ptr %i.gq, align 8, !range !21, !noalias !32930, !noundef !12
  %i.gs = getelementptr inbounds nuw [48 x i8], ptr %i.fq, i64 %.epil.init ; 5 uses
  store ptr %i.gp, ptr %i.gs, align 8, !noalias !32931
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i8 %i.gr, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !32931
  %i.gt = getelementptr i8, ptr %i.gs, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.gt, i8 0, i64 14, i1 false), !noalias !32932
  %i.gu = getelementptr i8, ptr %i.gs, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.gu, i8 0, i64 10, i1 false), !noalias !32932
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.gs, i64 44
  store i32 0, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.epil, align 4, !noalias !32931
  %i.gv = add nuw nsw i64 %.epil.init, 1
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader
  %.lcssa289 = phi i64 [ %i.gn, %._crit_edge.i.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.gv, %.lr.ph.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.gw = icmp eq i64 %.sroa.6.0.copyload.pre.i.i.i, 0
  br i1 %i.gw, label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.an

bb.an:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.gx = shl nuw i64 %.sroa.6.0.copyload.pre.i.i.i, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.do, i64 noundef %i.gx, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !32930
  br label %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i

_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.an, %._crit_edge.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.thread.i.i
  %.sroa.42.0.i.i.i.i.i.i80.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %.lcssa289, %bb.an ], [ %.lcssa289, %._crit_edge.i.i.i.i.i.i.i.i.i ]
  %.sroa.10.0.i9.i.i57.i.i = phi ptr [ inttoptr (i64 8 to ptr), %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %i.fq, %bb.an ], [ %i.fq, %._crit_edge.i.i.i.i.i.i.i.i.i ]
  %.sroa.469.0.copyload.i203056.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %.sroa.469.0.copyload.pre.i.i.i, %bb.an ], [ %.sroa.469.0.copyload.pre.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ]
  %.sroa.570.0.copyload.i193155.i.i = phi ptr [ inttoptr (i64 8 to ptr), %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %i.ew, %bb.an ], [ %i.ew, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.671.0.copyload.i18325676.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %i.fo, %bb.an ], [ %i.fo, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.8.0.copyload269.i173353.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %i.eo, %bb.an ], [ %i.eo, %._crit_edge.i.i.i.i.i.i.i.i.i ]
  %.sroa.469.0.copyload.i20305874.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %i.ek, %bb.an ], [ %i.ek, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.10.0.i.i.i5973.i.i = phi ptr [ inttoptr (i64 8 to ptr), %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %i.dn, %bb.an ], [ %i.dn, %._crit_edge.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.4.0.i.i.i6072.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.i.thread.i.i ], [ %.sroa.0.0.copyload.pre.i.i.i, %bb.an ], [ %.sroa.0.0.copyload.pre.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !32874
  call void @_RNvMNtCs3ewIIPtxFMv_10rayon_core5sleepNtB2_5Sleep3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.s, i64 noundef %..i.i.i.i) #45, !noalias !32873
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32873
  %i.gy = call noundef align 8 dereferenceable_or_null(1520) ptr @_RNvCsjSVV5GABoor_7___rustc19___rust_alloc_zeroed(i64 noundef 1520, i64 noundef 8) #45, !noalias !32873 ; 3 uses
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %bb.ao, label %_RNvMsc_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_5BlockNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE3newCsl8pJiQOn4hA_9coreutils.exit.i.i.i, !prof !18

bb.ao:                                            ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1520) #52, !noalias !32873
  unreachable

_RNvMsc_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_5BlockNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE3newCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %_RNvXs_NtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs3ewIIPtxFMv_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.532.i.i.i)
  %.sroa.532.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.532.i.i.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.532.8..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !32874
  %i.ha = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.hb = load <2 x ptr>, ptr %i.ha, align 8, !alias.scope !32872, !noalias !32873
  store ptr null, ptr %i.ha, align 8, !alias.scope !32872, !noalias !32873
  %i.hc = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.hd = load <2 x ptr>, ptr %i.hc, align 8, !alias.scope !32872, !noalias !32873
  store ptr null, ptr %i.hc, align 8, !alias.scope !32872, !noalias !32873
  %i.he = getelementptr inbounds nuw i8, ptr %i.u, i64 72 ; 2 uses
  %i.hf = load <2 x ptr>, ptr %i.he, align 8, !alias.scope !32872, !noalias !32873
  store ptr null, ptr %i.he, align 8, !alias.scope !32872, !noalias !32873
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !32874
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.11.i.i.i, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.532.i.i.i, i64 27, i1 false), !noalias !32874
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.532.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !32874
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32933
  %i.hg = call noundef align 128 dereferenceable_or_null(640) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 640, i64 noundef range(i64 1, -9223372036854775807) 128) #45, !noalias !32933 ; 19 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %bb.ap, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i, !prof !15

bb.ap:                                            ; preds = %_RNvMsc_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_5BlockNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE3newCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 640) #52, !noalias !32933
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i: ; preds = %_RNvMsc_NtCs9kq6bdmb9x3_15crossbeam_deque5dequeINtB5_5BlockNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefE3newCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  store i64 1, ptr %i.hg, align 128, !noalias !32873
  %.sroa.496.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store i64 1, ptr %.sroa.496.0..sroa_idx.i.i.i, align 8, !noalias !32873
  %.sroa.598.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 128
  store i64 0, ptr %.sroa.598.0..sroa_idx.i.i.i, align 128, !noalias !32873
  %.sroa.699.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 136
  store ptr %i.gy, ptr %.sroa.699.0..sroa_idx.i.i.i, align 8, !noalias !32873
  %.sroa.7101.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 256
  store i64 0, ptr %.sroa.7101.0..sroa_idx.i.i.i, align 128, !noalias !32873
  %.sroa.8102.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 264
  store ptr %i.gy, ptr %.sroa.8102.0..sroa_idx.i.i.i, align 8, !noalias !32873
  %.sroa.9104.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 384
  store i32 0, ptr %.sroa.9104.0..sroa_idx.i.i.i, align 128, !noalias !32873
  %.sroa.10.0..sroa_idx105.i.i.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 388
  store i8 0, ptr %.sroa.10.0..sroa_idx105.i.i.i, align 4, !noalias !32873
  %.sroa.11.0..sroa_idx106.i.i.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.11.0..sroa_idx106.i.i.i, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.11.i.i.i, i64 27, i1 false), !noalias !32873
  %.sroa.12107.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 416
  store <2 x ptr> %i.hb, ptr %.sroa.12107.0..sroa_idx.i.i.i, align 32, !noalias !32873
  %.sroa.14.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 432
  store <2 x ptr> %i.hd, ptr %.sroa.14.0..sroa_idx.i.i.i, align 16, !noalias !32873
  %.sroa.16.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 448
  store <2 x ptr> %i.hf, ptr %.sroa.16.0..sroa_idx.i.i.i, align 64, !noalias !32873
  %.sroa.18.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 464
  store i64 1, ptr %.sroa.18.0..sroa_idx.i.i.i, align 16, !noalias !32873
  %.sroa.19.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19.i.i.i, i64 32, i1 false), !noalias !32873
  %.sroa.20.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 504
  store i64 %.sroa.8.0.copyload269.i173353.i.i, ptr %.sroa.20.0..sroa_idx.i.i.i, align 8, !noalias !32873
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 512
  store ptr %.sroa.10.0.i9.i.i57.i.i, ptr %.sroa.21.0..sroa_idx.i.i.i, align 128, !noalias !32873
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hg, i64 520
  store i64 %.sroa.42.0.i.i.i.i.i.i80.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !32873
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i.i.i)
  store ptr %i.hg, ptr %i.t, align 8, !noalias !32874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !32874
  store ptr %i.t, ptr %i.r, align 8, !noalias !32874
  %i.hi = icmp ult i64 %.sroa.469.0.copyload.i20305874.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.hi)
  %.idx180.i.i.i = shl nuw nsw i64 %.sroa.469.0.copyload.i20305874.i.i, 5
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i5973.i.i, i64 %.idx180.i.i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.570.0.copyload.i193155.i.i) ]
  %i.hk = icmp samesign ult i64 %.sroa.671.0.copyload.i18325676.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.hk)
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.570.0.copyload.i193155.i.i, i64 %.sroa.671.0.copyload.i18325676.i.i ; 2 uses
  %.sroa.08.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !32874
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.sroa.6.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !32874
  store ptr %.sroa.10.0.i.i.i5973.i.i, ptr %i.q, align 8, !noalias !32874
  %.sroa.08.sroa.0.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %.sroa.08.sroa.0.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.4.0.i.i.i6072.i.i, ptr %.sroa.08.sroa.0.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !32874
  %.sroa.08.sroa.0.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.hj, ptr %.sroa.08.sroa.0.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !32874
  %.sroa.08.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %.sroa.570.0.copyload.i193155.i.i, ptr %.sroa.08.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !32874
  %.sroa.08.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 4 uses
  %.sroa.08.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store i64 %.sroa.469.0.copyload.i203056.i.i, ptr %.sroa.08.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !32874
  %.sroa.08.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store ptr %i.hl, ptr %.sroa.08.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !32874
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !32934
  %i.hm = icmp eq i64 %.sroa.469.0.copyload.i20305874.i.i, 0
  br i1 %i.hm, label %.loopexit.i.i.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.lr.ph.i.i.i

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.lr.ph.i.i.i: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i
  %.sroa.518.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  %.sroa.417.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.hn = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ho = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.hp = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.p, i64 56 ; 3 uses
  %.sroa.693.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %.sroa.794.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 81
  %i.hr = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ht = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.hv = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.hw = getelementptr inbounds nuw i8, ptr %i.u, i64 90
  %i.hx = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCs3ewIIPtxFMv_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  br label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i: ; preds = %.backedge.i.i.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.lr.ph.i.i.i
  %i.hy = phi ptr [ %.sroa.10.0.i.i.i5973.i.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.lr.ph.i.i.i ], [ %i.ic, %.backedge.i.i.i ] ; 5 uses
  %i.hz = phi ptr [ %.sroa.570.0.copyload.i193155.i.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.lr.ph.i.i.i ], [ %i.ih, %.backedge.i.i.i ] ; 6 uses
  %i.ia = phi i64 [ 0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.lr.ph.i.i.i ], [ %.be.i.i.i, %.backedge.i.i.i ] ; 4 uses
  %i.ib = phi i64 [ 0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.lr.ph.i.i.i ], [ %i.il, %.backedge.i.i.i ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 32 ; 7 uses
  %.sroa.5.0..sroa_idx8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %.sroa.5.0.copyload9.i.i.i.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx8.i.i.i.i.i.i, align 8, !noalias !32935 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %.sroa.5.0.copyload9.i.i.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx10.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 25 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.hy, i64 24, i1 false), !noalias !32936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.518.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx10.i.i.i.i.i.i, i64 7, i1 false), !noalias !32936
  store i8 %.sroa.5.0.copyload9.i.i.i.i.i.i, ptr %.sroa.417.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !32937
  %i.id = icmp eq ptr %i.hz, %i.hl
  br i1 %i.id, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.ic, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !32874
  store ptr %i.hz, ptr %.sroa.08.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !32874
  store i64 %i.ib, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !32874
  call void @llvm.experimental.noalias.scope.decl(metadata !32938)
  call void @llvm.experimental.noalias.scope.decl(metadata !32939)
  call void @llvm.experimental.noalias.scope.decl(metadata !32940)
  %i.ie = load ptr, ptr %i.c, align 8, !alias.scope !32941, !noalias !32937, !nonnull !12, !noundef !12
  %i.if = atomicrmw sub ptr %i.ie, i64 1 release, align 8, !noalias !32942
  %i.ig = icmp eq i64 %i.if, 1
  br i1 %i.ig, label %bb.as, label %bb.bv

bb.as:                                            ; preds = %bb.ar
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtCsj3XVt5mBN2w_15crossbeam_utils12cache_padded11CachePaddedINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque5InnerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #53, !noalias !32936
  br label %bb.bv

bb.at:                                            ; preds = %bb.aq
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hz, i64 16 ; 4 uses
  %i.ii = load ptr, ptr %i.hz, align 8, !noalias !32943, !nonnull !12, !noundef !12
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ik = load i8, ptr %i.ij, align 8, !range !21, !noalias !32943, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.790.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.hy, i64 24, i1 false), !noalias !32873
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.794.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.794.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx10.i.i.i.i.i.i, i64 7, i1 false), !noalias !32873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !32937
  %i.il = add i64 %i.ia, 1                        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !32874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !32874
  %.val39.i.i.i = load ptr, ptr %i.hn, align 8, !alias.scope !32872, !noalias !32873, !noundef !12 ; 2 uses
  %.val40.i.i.i = load ptr, ptr %i.ho, align 16, !alias.scope !32872, !noalias !32873 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32944)
  %.not.i55.i.i.i = icmp eq ptr %.val39.i.i.i, null
  br i1 %.not.i55.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val40.i.i.i) ]
  %i.im = getelementptr inbounds nuw i8, ptr %.val40.i.i.i, i64 32
  %i.in = load ptr, ptr %i.im, align 8, !invariant.load !12, !noalias !32945, !nonnull !12
  call void %i.in(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull %.val39.i.i.i, i64 noundef %i.ia) #51, !noalias !32873, !inline_history !32828
  br label %_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_thread_nameCsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.av:                                            ; preds = %bb.at
  store i64 -1, ptr %i.o, align 8, !alias.scope !32944, !noalias !32874
  br label %_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_thread_nameCsl8pJiQOn4hA_9coreutils.exit.i.i.i

_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_thread_nameCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.av, %bb.au
  %i.io = load <2 x i64>, ptr %i.u, align 16, !alias.scope !32872, !noalias !32873
  %i.ip = load ptr, ptr %i.t, align 8, !noalias !32874, !nonnull !12, !noundef !12
  %i.iq = atomicrmw add ptr %i.ip, i64 1 monotonic, align 8, !noalias !32873
  %i.ir = icmp slt i64 %i.iq, 0
  br i1 %i.ir, label %bb.ax, label %bb.aw

.loopexit.i.i.i:                                  ; preds = %.backedge.i.i.i, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i
  %.lcssa167.i.i.i = phi i64 [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i ], [ %i.il, %.backedge.i.i.i ], [ %i.ib, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ]
  %.lcssa159.i.i.i = phi ptr [ %.sroa.570.0.copyload.i193155.i.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i ], [ %i.ih, %.backedge.i.i.i ], [ %i.hz, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ]
  %i.is = phi ptr [ %.sroa.10.0.i.i.i5973.i.i, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i.i.i ], [ %i.ic, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i.i ], [ %i.ic, %.backedge.i.i.i ]
  store ptr %i.is, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !32874
  store ptr %.lcssa159.i.i.i, ptr %.sroa.08.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !32874
  store i64 %.lcssa167.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !32874
  br label %bb.bv

bb.aw:                                            ; preds = %_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_thread_nameCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %i.it = load ptr, ptr %i.t, align 8, !noalias !32874, !nonnull !12, !noundef !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.hp, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !32874
  store <2 x i64> %i.io, ptr %i.p, align 16, !noalias !32874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hq, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.790.i.i.i, i64 24, i1 false), !noalias !32874
  store i8 %.sroa.5.0.copyload9.i.i.i.i.i.i, ptr %.sroa.693.0..sroa_idx.i.i.i, align 16, !noalias !32874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.794.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.794.i.i.i, i64 7, i1 false), !noalias !32874
  store ptr %i.ii, ptr %i.hr, align 8, !noalias !32874
  store i8 %i.ik, ptr %i.hs, align 16, !noalias !32874
  store ptr %i.it, ptr %i.ht, align 8, !noalias !32874
  store i64 %i.ia, ptr %i.hu, align 16, !noalias !32874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !32874
  %i.iu = icmp eq i64 %i.ia, 0
  %i.iv = load i8, ptr %i.hv, align 8, !range !21, !alias.scope !32872, !noalias !32873
  %i.iw = trunc nuw i8 %i.iv to i1
  %or.cond.i.i.i = select i1 %i.iu, i1 %i.iw, i1 false
  br i1 %or.cond.i.i.i, label %bb.az, label %bb.ay

bb.ax:                                            ; preds = %_RNvMs2_Cs3ewIIPtxFMv_10rayon_coreNtB5_17ThreadPoolBuilder15get_thread_nameCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call void @llvm.trap()
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.ix = call noundef ptr @_RNvXs0_NtCs3ewIIPtxFMv_10rayon_core8registryNtB5_12DefaultSpawnNtB5_11ThreadSpawn5spawn(ptr noalias nofree noundef nonnull %i.hw, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %i.p) #45, !noalias !32873 ; 2 uses
  %.not37.i.i.i = icmp eq ptr %i.ix, null
  br i1 %.not37.i.i.i, label %.backedge.i.i.i, label %bb.bt

bb.az:                                            ; preds = %bb.aw
  %.val.i.i.i.i.i = load ptr, ptr %i.hx, align 8, !noalias !32874, !noundef !12
  %i.iy = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %i.iy, label %bb.bg, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store ptr %i.ic, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !32874
  store ptr %i.ih, ptr %.sroa.08.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !32874
  store i64 %i.il, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !32874
  call void @llvm.experimental.noalias.scope.decl(metadata !32946)
  call void @llvm.experimental.noalias.scope.decl(metadata !32947)
  %i.iz = load i64, ptr %i.hp, align 16, !range !13, !alias.scope !32948, !noalias !32874, !noundef !12 ; 3 uses
  %i.ja = icmp eq i64 %i.iz, -1
  br i1 %i.ja, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !32949)
  call void @llvm.experimental.noalias.scope.decl(metadata !32950)
  %i.jb = icmp eq i64 %i.iz, 0
  br i1 %i.jb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jc = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.jc, align 8, !alias.scope !32951, !noalias !32874, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.iz, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !32952
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.bc, %bb.bb, %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !32953)
  call void @llvm.experimental.noalias.scope.decl(metadata !32954)
  call void @llvm.experimental.noalias.scope.decl(metadata !32955)
  %i.jd = load ptr, ptr %i.hq, align 8, !alias.scope !32956, !noalias !32874, !nonnull !12, !noundef !12
  %i.je = atomicrmw sub ptr %i.jd, i64 1 release, align 8, !noalias !32957
  %i.jf = icmp eq i64 %i.je, 1
  br i1 %i.jf, label %bb.bd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.bd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtCsj3XVt5mBN2w_15crossbeam_utils12cache_padded11CachePaddedINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque5InnerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.hq) #53, !noalias !32873
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.bd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !32958)
  call void @llvm.experimental.noalias.scope.decl(metadata !32959)
  call void @llvm.experimental.noalias.scope.decl(metadata !32960)
  %i.jg = load ptr, ptr %i.hr, align 8, !alias.scope !32961, !noalias !32874, !nonnull !12, !noundef !12
  %i.jh = atomicrmw sub ptr %i.jg, i64 1 release, align 8, !noalias !32962
  %i.ji = icmp eq i64 %i.jh, 1
  br i1 %i.ji, label %bb.be, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

bb.be:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcINtNtCsj3XVt5mBN2w_15crossbeam_utils12cache_padded11CachePaddedINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque5InnerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.hr) #53, !noalias !32873
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.be, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !32963)
  call void @llvm.experimental.noalias.scope.decl(metadata !32964)
  %i.jj = load ptr, ptr %i.ht, align 8, !alias.scope !32965, !noalias !32874, !nonnull !12, !noundef !12
  %i.jk = atomicrmw sub ptr %i.jj, i64 1 release, align 8, !noalias !32966
  %i.jl = icmp eq i64 %i.jk, 1
  br i1 %i.jl, label %bb.bf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3ewIIPtxFMv_10rayon_core8registry13ThreadBuilderECsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.bf:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtCs3ewIIPtxFMv_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ht) #53, !noalias !32873
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3ewIIPtxFMv_10rayon_core8registry13ThreadBuilderECsl8pJiQOn4hA_9coreutils.exit.i.i.i

bb.bg:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !32874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !32874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.m, ptr noundef nonnull align 16 dereferenceable(104) %i.p, i64 104, i1 false), !noalias !32874
  call void @_RNvXs6_NtCs3ewIIPtxFMv_10rayon_core8registryNtB5_12WorkerThreadINtNtCs6JMX4GRUq9U_4core7convert4FromNtB5_13ThreadBuilderE4from(ptr noalias nofree noundef nonnull sret([384 x i8]) align 128 captures(none) dereferenceable(384) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.m) #45, !noalias !32873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !32874
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !32967
  %i.jm = call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef 384, i64 noundef range(i64 1, -9223372036854775807) 128) #45, !noalias !32967 ; 3 uses
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %bb.bh, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit56.i.i.i, !prof !15

bb.bh:                                            ; preds = %bb.bg
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #52, !noalias !32967
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit56.i.i.i: ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.jm, ptr noundef nonnull align 128 dereferenceable(384) %i.n, i64 384, i1 false), !noalias !32873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !32874
  call void @_RNvMs8_NtCs3ewIIPtxFMv_10rayon_core8registryNtB5_12WorkerThread11set_current(ptr noundef nonnull %i.jm) #45, !noalias !32873
  %i.jo = load ptr, ptr %i.t, align 8, !noalias !32874, !nonnull !12, !noundef !12 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 520
  %i.jq = load i64, ptr %i.jp, align 8, !noalias !32873, !noundef !12
  %.not38.i.i.i = icmp eq i64 %i.jq, 0
  br i1 %.not38.i.i.i, label %bb.bs, label %bb.bj

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3ewIIPtxFMv_10rayon_core8registry13ThreadBuilderECsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.bt, %bb.bf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %.sroa.6.0.i = phi ptr [ undef, %bb.bf ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %i.ix, %bb.bt ]
  %.sroa.0.06.i = phi i64 [ 1, %bb.bf ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque7StealerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ 2, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !32874
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.794.i.i.i)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterINtNtCs9kq6bdmb9x3_15crossbeam_deque5deque6WorkerNtNtCs3ewIIPtxFMv_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(88) %i.q) #45, !noalias !32873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !32874
  call void @_RNvXs3_NtCs3ewIIPtxFMv_10rayon_core8registryNtB5_10TerminatorNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r) #45, !noalias !32873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !32874
  call void @llvm.experimental.noalias.scope.decl(metadata !32968)
  call void @llvm.experimental.noalias.scope.decl(metadata !32969)
  %i.jr = load ptr, ptr %i.t, align 8, !alias.scope !32970, !noalias !32874, !nonnull !12, !noundef !12
  %i.js = atomicrmw sub ptr %i.jr, i64 1 release, align 8, !noalias !32971
  %i.jt = icmp eq i64 %i.js, 1
  br i1 %i.jt, label %bb.bi, label %bb.bu

bb.bi:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs3ewIIPtxFMv_10rayon_core8registry13ThreadBuilderECsl8pJiQOn4hA_9coreutils.exit.i.i.i
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtCs3ewIIPtxFMv_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #53, !noalias !32873
  br label %bb.bu

bb.bj:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit56.i.i.i
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 512
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !32873, !nonnull !12, !noundef !12 ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 24 ; 5 uses
  %i.jx = cmpxchg ptr %i.jw, i32 0, i32 1 acquire monotonic, align 4, !noalias !32972
  %i.jy = extractvalue { i32, i1 } %i.jx, 1
  br i1 %i.jy, label %bb.bl, label %bb.bk, !prof !11

bb.bk:                                            ; preds = %bb.bj
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.jw) #45, !noalias !32972
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.jz = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !32973
  %i.ka = and i64 %i.jz, 9223372036854775807
  %i.kb = icmp eq i64 %i.ka, 0
  br i1 %i.kb, label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexbE4lockCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.bm, !prof !11

bb.bm:                                            ; preds = %bb.bl
  %i.kc = call noundef zeroext i1 @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count17is_zero_slow_path() #53, !noalias !32972
  %i.kd = xor i1 %i.kc, true
  %i.ke = zext i1 %i.kd to i8
  br label %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexbE4lockCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexbE4lockCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.bm, %bb.bl
  %.sroa.01.0.i.i.i.i.i.i = phi i8 [ %i.ke, %bb.bm ], [ 0, %bb.bl ] ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jv, i64 28 ; 2 uses
  %i.kg = load atomic i8, ptr %i.kf monotonic, align 1, !noalias !32972
  %.not.i.i.not.i.i.i.i = icmp eq i8 %i.kg, 0
  br i1 %.not.i.i.not.i.i.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.bn, !prof !11

bb.bn:                                            ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexbE4lockCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !32974
  store ptr %i.jw, ptr %i.b, align 8, !noalias !32974
  %i.kh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %.sroa.01.0.i.i.i.i.i.i, ptr %i.kh, align 8, !noalias !32974
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @886, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @890, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1242) #50, !noalias !32975
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %_RNvMs5_NtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutexINtB5_5MutexbE4lockCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %i.ki = trunc nuw i8 %.sroa.01.0.i.i.i.i.i.i to i1
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jv, i64 29
  store i8 1, ptr %i.kj, align 1, !noalias !32873
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jv, i64 32
  call void @_RNvMNtNtNtCs2vKOLqTMYjT_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4 %i.kk) #45, !noalias !32873
  br i1 %i.ki, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultINtNtNtNtCs2vKOLqTMYjT_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %i.kl = load atomic i64, ptr @_RNvNtNtCs2vKOLqTMYjT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !32874
  %i.km = and i64 %i.kl, 9223372036854775807
  %i.kn = icmp eq i64 %i.km, 0
  br i1 %i.kn, label %_RNvMNtNtCs2vKOLqTMYjT_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i, label %bb.bp, !prof !11

bb.bp:                                            ; preds = %bb.bo
end_hunk_1
