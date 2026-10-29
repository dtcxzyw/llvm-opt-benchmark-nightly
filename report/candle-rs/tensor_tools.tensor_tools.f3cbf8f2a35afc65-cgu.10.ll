Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/tensor_tools.tensor_tools.f3cbf8f2a35afc65-cgu.10?download=true
inline.NumInlined: 385
inline.NumDeleted: 155
begin_hunk_0_@_RNvMs0_NtNtCscWUIX17zZnI_3zip4read11zip_archiveINtB5_10ZipArchiveINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEE3newCskVIURZGHVHJ_12tensor_tools:bb.a
  br i1 %.not492.i.i.i.i, label %.loopexit.loopexit1620.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataE8push_mutCskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i
  %.sroa.024.0491.i.i.i.i = phi i64 [ %i.qj, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataE8push_mutCskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i ], [ 0, %.preheader.i.i.i.i ]
  %i.qj = add nuw i64 %.sroa.024.0491.i.i.i.i, 1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.31.i.i.i.i)
  %i.qk = invoke { i64, ptr } @_RNvXs7_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io4seek4Seek15stream_positionCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bi)
          to label %.noexc.i.i29.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !557 ; 2 uses

.noexc.i.i29.i.i:                                 ; preds = %.lr.ph.i.i.i.i
  %i.ql = extractvalue { i64, ptr } %i.qk, 0
  %i.qm = extractvalue { i64, ptr } %i.qk, 1
  %i.qn = ptrtoint ptr %i.qm to i64               ; 2 uses
  %i.qo = trunc nuw i64 %i.ql to i1
  br i1 %i.qo, label %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i, label %bb.fw

bb.fw:                                            ; preds = %.noexc.i.i29.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !559
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(46) %i.r, i8 0, i64 46, i1 false), !noalias !559
  %i.qp = invoke noundef ptr @_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtB9_4read4Read10read_exactCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noalias nofree noundef nonnull %i.r, i64 noundef 46)
          to label %.noexc30.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !557 ; 9 uses

.noexc30.i.i.i.i:                                 ; preds = %bb.fw
  %.not.i.i.i.i30.i.i = icmp eq ptr %i.qp, null
  br i1 %.not.i.i.i.i30.i.i, label %bb.gc, label %bb.fx

bb.fx:                                            ; preds = %.noexc30.i.i.i.i
  %i.qq = ptrtoint ptr %i.qp to i64               ; 4 uses
  %i.qr = and i64 %i.qq, 3                        ; 2 uses
  switch i64 %i.qr, label %default.unreachable [
    i64 2, label %bb.fy
    i64 3, label %bb.fz
    i64 0, label %bb.ga
    i64 1, label %bb.gb
  ], !prof !16

bb.fy:                                            ; preds = %bb.fx
  %i.qs = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i.i.i.i38.i.i unwind label %bb.gd, !noalias !560

.noexc.i.i.i.i38.i.i:                             ; preds = %bb.fy
  %i.qt = lshr i64 %i.qq, 32
  %i.qu = trunc nuw i64 %i.qt to i32
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qw = load ptr, ptr %i.qv, align 8, !noalias !560, !nonnull !8, !noundef !8
  %i.qx = invoke noundef i8 %i.qw(i32 noundef %i.qu)
          to label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i31.i.i unwind label %bb.gd, !noalias !560, !inline_history !0

bb.fz:                                            ; preds = %bb.fx
  %i.qy = lshr i64 %i.qq, 32
  %i.qz = icmp ult ptr %i.qp, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i.i37.i.i = trunc i64 %i.qy to i8 ; 2 uses
  %i.ra = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i.i37.i.i, -1
  call void @llvm.assume(i1 %i.qz)
  call void @llvm.assume(i1 %i.ra)
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i31.i.i

bb.ga:                                            ; preds = %bb.fx
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.rc = load i8, ptr %i.rb, align 8, !range !17, !noalias !560, !noundef !8
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i31.i.i

bb.gb:                                            ; preds = %bb.fx
  %i.rd = getelementptr i8, ptr %i.qp, i64 31
  %i.re = load i8, ptr %i.rd, align 8, !range !17, !noalias !560, !noundef !8
  br label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i31.i.i

bb.gc:                                            ; preds = %.noexc30.i.i.i.i
  %i.rf = load i32, ptr %i.r, align 4, !noalias !559, !noundef !8
  %.not11.i.i.i.i39.i.i = icmp eq i32 %i.rf, 33639248
  br i1 %.not11.i.i.i.i39.i.i, label %bb.gi, label %.loopexit170.i.i.i.i

bb.gd:                                            ; preds = %bb.ge, %.noexc.i.i.i.i38.i.i, %bb.fy
  %i.rg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools(ptr nonnull %i.qp) #22
          to label %.body.i.i.i.i unwind label %bb.gh, !noalias !560

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i31.i.i: ; preds = %bb.gb, %bb.ga, %bb.fz, %.noexc.i.i.i.i38.i.i
  %.sroa.0.0.i.i.i.i.i32.i.i = phi i8 [ %i.re, %bb.gb ], [ %switch.idx.cast.i.i.i.i.i.i.i37.i.i, %bb.fz ], [ %i.rc, %bb.ga ], [ %i.qx, %.noexc.i.i.i.i38.i.i ]
  %i.rh = icmp eq i8 %.sroa.0.0.i.i.i.i.i32.i.i, 37
  br i1 %i.rh, label %bb.ge, label %.loopexit170.i.i.i.i

bb.ge:                                            ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i31.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !559
  store ptr @42, ptr %i.p, align 8, !noalias !559, !captures !21
  store i64 31, ptr %i.el, align 8, !noalias !559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !559
  store ptr %i.p, ptr %i.o, align 8, !noalias !559
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCskVIURZGHVHJ_12tensor_tools, ptr %.sroa.46.0..sroa_idx.i.i.i.i33.i.i, align 8, !noalias !559
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @34, ptr noundef nonnull %i.o)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i34.i.i unwind label %bb.gd, !noalias !560

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i34.i.i: ; preds = %bb.ge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !559
  %.sroa.10.8.copyload4.i.i.i.i.i = load i64, ptr %i.q, align 8, !noalias !561
  %.sroa.14.8.copyload9.i.i.i.i.i = load ptr, ptr %.sroa.14.8..sroa_idx8.i.i.i.i.i, align 8, !noalias !561
  %.sroa.15.sroa.0.0.copyload74.i.i.i.i.i = load i8, ptr %.sroa.15.8..sroa_idx12.i.i.i.i.i, align 8, !noalias !561
  %.sroa.15.sroa.8.0.copyload77.i.i.i.i.i = load i16, ptr %.sroa.15.sroa.8.0..sroa.15.8..sroa_idx12.sroa_idx.i.i.i.i.i, align 1, !noalias !561
  %.sroa.15.sroa.9.0.copyload80.i.i.i.i.i = load i16, ptr %.sroa.15.sroa.9.0..sroa.15.8..sroa_idx12.sroa_idx.i.i.i.i.i, align 1, !noalias !561
  %.sroa.15.sroa.10.0.copyload83.i.i.i.i.i = load i16, ptr %.sroa.15.sroa.10.0..sroa.15.8..sroa_idx12.sroa_idx.i.i.i.i.i, align 1, !noalias !561
  %.sroa.15.sroa.11.0.copyload86.i.i.i.i.i = load i8, ptr %.sroa.15.sroa.11.0..sroa.15.8..sroa_idx12.sroa_idx.i.i.i.i.i, align 1, !noalias !561
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !559
  switch i64 %i.qr, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i35.i.i
    i64 3, label %bb.gf
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i35.i.i
    i64 1, label %bb.gg
  ], !prof !16

bb.gf:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i34.i.i
  %i.ri = icmp ult ptr %i.qp, inttoptr (i64 188978561024 to ptr)
  %i.rj = and i64 %i.qq, 1095216660480
  %i.rk = icmp ne i64 %i.rj, 1095216660480
  call void @llvm.assume(i1 %i.ri)
  call void @llvm.assume(i1 %i.rk)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i35.i.i

bb.gg:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i34.i.i
  %i.rl = getelementptr i8, ptr %i.qp, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rl) ]
  store ptr %i.rl, ptr %i.em, align 8, !alias.scope !562, !noalias !559
  store i8 3, ptr %i.n, align 8, !alias.scope !562, !noalias !559
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.em)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i35.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !557

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i35.i.i: ; preds = %bb.gg, %bb.gf, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i34.i.i, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i34.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !559
  br label %.loopexit170.i.i.i.i

bb.gh:                                            ; preds = %bb.gd
  %i.rm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !560
  unreachable

.loopexit170.i.i.i.i:                             ; preds = %bb.gc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i35.i.i, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i31.i.i
  %.sroa.15.sroa.0.0.ph.i.i.i.i.i = phi i8 [ undef, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i31.i.i ], [ %.sroa.15.sroa.0.0.copyload74.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i35.i.i ], [ 32, %bb.gc ]
  %.sroa.15.sroa.8.0.ph.i.i.i.i.i = phi i16 [ undef, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i31.i.i ], [ %.sroa.15.sroa.8.0.copyload77.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i35.i.i ], [ 0, %bb.gc ]
  %.sroa.15.sroa.9.0.ph.i.i.i.i.i = phi i16 [ undef, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i31.i.i ], [ %.sroa.15.sroa.9.0.copyload80.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i35.i.i ], [ 0, %bb.gc ]
  %.sroa.15.sroa.10.0.ph.i.i.i.i.i = phi i16 [ undef, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i31.i.i ], [ %.sroa.15.sroa.10.0.copyload83.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i35.i.i ], [ 0, %bb.gc ]
  %.sroa.15.sroa.11.0.ph.i.i.i.i.i = phi i8 [ undef, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i31.i.i ], [ %.sroa.15.sroa.11.0.copyload86.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i35.i.i ], [ 0, %bb.gc ]
  %.sroa.14.0.ph.i.i.i.i.i = phi ptr [ %i.qp, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i31.i.i ], [ %.sroa.14.8.copyload9.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i35.i.i ], [ @43, %bb.gc ]
  %.sroa.10.0.ph.i.i.i.i.i = phi i64 [ -9223372036854775808, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error4kind.exit.i.i.i.i31.i.i ], [ %.sroa.10.8.copyload4.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i35.i.i ], [ -1, %bb.gc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !558
  %.sroa.0117.sroa.0.5.extract.shift.i.i.i.i.i = and i64 %.sroa.10.0.ph.i.i.i.i.i, -1099511627776
  %i.rn = ptrtoint ptr %.sroa.14.0.ph.i.i.i.i.i to i64
  br label %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i

bb.gi:                                            ; preds = %bb.gc
  %.sroa.81.sroa.0.0.copyload.i.i.i.i.i = load i16, ptr %i.cv, align 4, !noalias !561
  %.sroa.81.sroa.6.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.81.sroa.6.0..sroa_idx.i.i.i.i.i, align 4, !noalias !561 ; 3 uses
  %.sroa.81.sroa.7.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.81.sroa.7.0..sroa_idx.i.i.i.i.i, align 2, !noalias !561
  %.sroa.10.1.copyload3.i.i.i.i.i = load i64, ptr %.sroa.10.1..sroa_idx2.i.i.i.i.i, align 1, !noalias !561 ; 4 uses
  %.sroa.14.1.copyload7.i.i.i.i.i = load ptr, ptr %.sroa.14.1..sroa_idx6.i.i.i.i.i, align 1, !noalias !561
  %.sroa.15.sroa.0.0.copyload.i.i.i.i.i = load i8, ptr %.sroa.15.1..sroa_idx11.i.i.i.i.i, align 1, !noalias !561
  %.sroa.15.sroa.8.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.15.sroa.8.0..sroa.15.1..sroa_idx11.sroa_idx.i.i.i.i.i, align 4, !noalias !561
  %.sroa.15.sroa.9.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.15.sroa.9.0..sroa.15.1..sroa_idx11.sroa_idx.i.i.i.i.i, align 2, !noalias !561
  %.sroa.15.sroa.10.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.15.sroa.10.0..sroa.15.1..sroa_idx11.sroa_idx.i.i.i.i.i, align 4, !noalias !561
  %.sroa.15.sroa.12.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.15.sroa.12.0..sroa.15.1..sroa_idx11.sroa_idx.i.i.i.i.i, align 2, !noalias !561
  %.sroa.15.sroa.13.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.15.sroa.13.0..sroa.15.1..sroa_idx11.sroa_idx.i.i.i.i.i, align 2, !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !558
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.670.i.i.i.i.i)
  store i8 %.sroa.81.sroa.7.0.copyload.i.i.i.i.i, ptr %.sroa.670.i.i.i.i.i, align 2, !noalias !558
  store i64 %.sroa.10.1.copyload3.i.i.i.i.i, ptr %.sroa.670.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.i.1.i.i.i.i.1.i.i.i.i.1.i.i.i.1.i.i.i.1.i.i.1.i.i.1.i.1.i.1..sroa_idx, align 1, !noalias !558
  %.sroa.670.i.i.i.i.i.0..sroa.670.i.i.i.i.i.0..sroa.670.i.i.i.i.i.0..sroa.670.i.i.i.i.0..sroa.670.i.i.i.i.0..sroa.670.i.i.i.0..sroa.670.i.i.i.0..sroa.670.i.i.0..sroa.670.i.i.0..sroa.670.i.0..sroa.670.i.0..sroa.670.0..sroa.670.0..sroa.670.0..sroa.670.6..sroa.55.sroa.7.0.copyload.i.i.i.i.i = load i16, ptr %.sroa.670.i.i.i.i.i, align 2, !noalias !558 ; 2 uses
  %i.ro = lshr i64 %.sroa.10.1.copyload3.i.i.i.i.i, 8
  %i.rp = trunc i64 %i.ro to i16
  %i.rq = lshr i64 %.sroa.10.1.copyload3.i.i.i.i.i, 24
  %i.rr = trunc i64 %i.rq to i16
  %i.rs = lshr i64 %.sroa.10.1.copyload3.i.i.i.i.i, 40
  %.sroa.55.sroa.12.sroa.0.0.insert.ext103.i.i.i.i.i = trunc nuw nsw i64 %i.rs to i32
  %i.rt = ptrtoint ptr %.sroa.14.1.copyload7.i.i.i.i.i to i64 ; 3 uses
  %.sroa.1171.15.extract.trunc.i.i.i.i.i = trunc i64 %i.rt to i32
  %.sroa.1171.16.extract.shift.i.i.i.i.i = lshr i64 %i.rt, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.670.i.i.i.i.i)
  %.sroa.55.sroa.12.sroa.7.0.insert.ext106.i.i.i.i.i = shl i32 %.sroa.1171.15.extract.trunc.i.i.i.i.i, 24
  %.sroa.55.sroa.12.sroa.0.0.insert.insert105.i.i.i.i.i = or disjoint i32 %.sroa.55.sroa.12.sroa.7.0.insert.ext106.i.i.i.i.i, %.sroa.55.sroa.12.sroa.0.0.insert.ext103.i.i.i.i.i
  %.sroa.55.sroa.14.sroa.7.0.insert.ext99.i.i.i.i.i = zext i8 %.sroa.15.sroa.0.0.copyload.i.i.i.i.i to i64
  %.sroa.55.sroa.14.sroa.0.0.insert.insert98.i.i.i.i.i = call i64 @llvm.fshl.i64(i64 %.sroa.55.sroa.14.sroa.7.0.insert.ext99.i.i.i.i.i, i64 %i.rt, i64 24)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !558
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.36.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !558
  %i.ru = trunc i16 %.sroa.81.sroa.6.0.copyload.i.i.i.i.i to i8 ; 2 uses
  %i.rv = and i16 %.sroa.81.sroa.6.0.copyload.i.i.i.i.i, 2048 ; 2 uses
  %.not314.i.i.i.i.i.i = icmp eq i16 %i.rv, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !563
  %i.rw = zext i16 %.sroa.15.sroa.8.0.copyload.i.i.i.i.i to i64
  invoke fastcc void @_RINvNtCscWUIX17zZnI_3zip4read31read_variable_length_byte_fieldINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bi, i64 noundef %i.rw) #27
          to label %.noexc32.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !557

.noexc32.i.i.i.i:                                 ; preds = %bb.gi
  %i.rx = load i64, ptr %i.m, align 8, !range !466, !noalias !563, !noundef !8 ; 2 uses
  %.not.i29.i.i.i.i.i = icmp eq i64 %i.rx, -2
  %i.ry = load ptr, ptr %i.cw, align 8, !noalias !563 ; 7 uses
  %i.rz = load i64, ptr %i.cx, align 8, !noalias !563 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !563
  br i1 %.not.i29.i.i.i.i.i, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %.noexc32.i.i.i.i
  %i.sa = ptrtoint ptr %i.ry to i64
  br label %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i.i

bb.gk:                                            ; preds = %.noexc32.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !563
  %i.sb = zext i16 %.sroa.15.sroa.9.0.copyload.i.i.i.i.i to i64
  invoke fastcc void @_RINvNtCscWUIX17zZnI_3zip4read31read_variable_length_byte_fieldINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bi, i64 noundef %i.sb)
          to label %bb.gm unwind label %bb.gl, !noalias !564

bb.gl:                                            ; preds = %bb.gk
  %i.sc = landingpad { ptr, i32 }
          cleanup
  br label %bb.in

bb.gm:                                            ; preds = %bb.gk
  %i.sd = load i64, ptr %i.l, align 8, !range !466, !noalias !563, !noundef !8 ; 2 uses
  %.not159.i.i.i.i.i.i = icmp eq i64 %i.sd, -2
  %i.se = load ptr, ptr %i.cy, align 8, !noalias !563 ; 5 uses
  %i.sf = load i64, ptr %i.cz, align 8, !noalias !563 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !563
  br i1 %.not159.i.i.i.i.i.i, label %bb.gn, label %2

2:                                                ; preds = %bb.gm
  %3 = ptrtoint ptr %i.se to i64
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !563
  %i.sg = zext i16 %.sroa.15.sroa.10.0.copyload.i.i.i.i.i to i64
  invoke fastcc void @_RINvNtCscWUIX17zZnI_3zip4read31read_variable_length_byte_fieldINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bi, i64 noundef %i.sg)
          to label %bb.gp unwind label %.thread278.i.i.i.i.i.i, !noalias !564

bb.go:                                            ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i203.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEECskVIURZGHVHJ_12tensor_tools.exit232.i.i.i.i.i.i
  br i1 %.sroa.085.4.i.i.i.i.i.i, label %bb.im, label %.body.i.i.i.i

.thread278.i.i.i.i.i.i:                           ; preds = %bb.gn
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %bb.im

bb.gp:                                            ; preds = %bb.gn
  %i.si = load i64, ptr %i.k, align 8, !range !466, !noalias !563, !noundef !8 ; 3 uses
  %.not160.i.i.i.i.i.i = icmp eq i64 %i.si, -2
  %i.sj = load ptr, ptr %i.da, align 8, !noalias !563 ; 7 uses
  %i.sk = load i64, ptr %i.db, align 8, !noalias !563 ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !563
  br i1 %.not160.i.i.i.i.i.i, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %4 = ptrtoint ptr %i.sj to i64                  ; 2 uses
  %i.sl = icmp eq i64 %i.sf, 0
  br i1 %i.sl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i42.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i42.i.i: ; preds = %bb.gq
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.se, i64 noundef %i.sf, i64 noundef 1) #23, !noalias !564
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i

bb.gr:                                            ; preds = %bb.gp
  br i1 %.not314.i.i.i.i.i.i, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !563
  invoke void @_RNvXNtCscWUIX17zZnI_3zip5cp437RShNtB2_9FromCp43710from_cp437(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ry, i64 noundef %i.rz)
          to label %bb.gu unwind label %.loopexit.split-lp172.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !564

bb.gt:                                            ; preds = %bb.gr
  invoke void @_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ry, i64 noundef %i.rz)
          to label %bb.hl unwind label %.loopexit.split-lp172.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !564

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEECskVIURZGHVHJ_12tensor_tools.exit232.i.i.i.i.i.i: ; preds = %.loopexit.split-lp172.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i231.i.i.i.i.i.i, %.thread282.i.i.i.i.i.i, %bb.ic, %bb.hx, %.thread301.i.i.i.i.i.i
  %.sroa.085.4.i.i.i.i.i.i = phi i1 [ false, %bb.hx ], [ false, %.thread301.i.i.i.i.i.i ], [ true, %.thread282.i.i.i.i.i.i ], [ true, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i231.i.i.i.i.i.i ], [ false, %bb.ic ], [ true, %.loopexit.split-lp172.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  %.pn.pn.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i.i.i.i, %bb.hx ], [ %.pn300.i.i.i.i.i.i, %.thread301.i.i.i.i.i.i ], [ %.pn.pn290.i.i.i.i.i.i, %.thread282.i.i.i.i.i.i ], [ %.pn.pn290.i.i.i.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i231.i.i.i.i.i.i ], [ %i.uv, %bb.ic ], [ %lpad.loopexit.split-lp4182, %.loopexit.split-lp172.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.sm = icmp eq i64 %i.sk, 0
  br i1 %i.sm, label %bb.go, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i203.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i203.i.i.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEECskVIURZGHVHJ_12tensor_tools.exit232.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sj, i64 noundef %i.sk, i64 noundef 1) #23, !noalias !564
  br label %bb.go

.loopexit.split-lp172.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gs, %bb.gt, %bb.gw, %bb.hm, %.invoke.i.i.i.i.i.i
  %lpad.loopexit.split-lp4182 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEECskVIURZGHVHJ_12tensor_tools.exit232.i.i.i.i.i.i

bb.gu:                                            ; preds = %bb.gs
  %i.sn = load i64, ptr %i.j, align 8, !range !565, !noalias !563, !noundef !8 ; 3 uses
  %i.so = icmp eq i64 %i.sn, -2
  %i.sp = load ptr, ptr %i.dg, align 8, !noalias !563 ; 4 uses
  br i1 %i.so, label %bb.hk, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %.sroa.5121.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.5121.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !563 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !563
  %.not161.i.i.i.i.i.i = icmp eq i64 %i.sn, -1
  br i1 %.not161.i.i.i.i.i.i, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !563
  store i64 %i.sn, ptr %i.d, align 8, !noalias !563
  store ptr %i.sp, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !563
  store i64 %.sroa.5121.0.copyload.i.i.i.i.i.i, ptr %.sroa.538.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !563
  %i.sq = invoke { ptr, i64 } @_RNvXsO_NtCsgCecv3eZDcN_5alloc6stringINtNtB7_5boxed3BoxeEINtNtCsf3Ta7LF998c_4core7convert4FromNtB5_6StringE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d)
          to label %bb.ha unwind label %.loopexit.split-lp172.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !564 ; 2 uses

bb.gx:                                            ; preds = %bb.gv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sp) ]
  %i.sr = icmp eq i64 %.sroa.5121.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.sr, label %_RNvMs1_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxeE21try_clone_from_ref_inCskVIURZGHVHJ_12tensor_tools.exit62.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i59.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i59.i.i: ; preds = %bb.gx
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !566
  %i.ss = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %.sroa.5121.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !566 ; 2 uses
  %i.st = icmp eq ptr %i.ss, null
  br i1 %i.st, label %.invoke.i.i.i.i.i.i, label %_RNvMs1_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxeE21try_clone_from_ref_inCskVIURZGHVHJ_12tensor_tools.exit62.i.i

_RNvMs1_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxeE21try_clone_from_ref_inCskVIURZGHVHJ_12tensor_tools.exit62.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i59.i.i, %bb.gx
  %.sroa.01.0.i60.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.gx ], [ %i.ss, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i59.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i60.i.i, ptr nonnull readonly align 1 %i.sp, i64 %.sroa.5121.0.copyload.i.i.i.i.i.i, i1 false), !noalias !564
  br label %bb.gy

bb.gy:                                            ; preds = %bb.ha, %_RNvMs1_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxeE21try_clone_from_ref_inCskVIURZGHVHJ_12tensor_tools.exit62.i.i
  %.pn.i.i.i.i.i.i = phi i64 [ %i.sv, %bb.ha ], [ %.sroa.5121.0.copyload.i.i.i.i.i.i, %_RNvMs1_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxeE21try_clone_from_ref_inCskVIURZGHVHJ_12tensor_tools.exit62.i.i ] ; 7 uses
  %.sroa.0255.0.i.i.i.i.i.i = phi ptr [ %i.su, %bb.ha ], [ %.sroa.01.0.i60.i.i, %_RNvMs1_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxeE21try_clone_from_ref_inCskVIURZGHVHJ_12tensor_tools.exit62.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !563
  invoke void @_RNvXNtCscWUIX17zZnI_3zip5cp437RShNtB2_9FromCp43710from_cp437(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.sj, i64 noundef %i.sk)
          to label %bb.hb unwind label %.thread282.i.i.loopexit.i.i.i.i, !noalias !564

bb.gz:                                            ; preds = %bb.hu, %bb.hf
  unreachable

bb.ha:                                            ; preds = %bb.gw
  %i.su = extractvalue { ptr, i64 } %i.sq, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !563
  %i.sv = extractvalue { ptr, i64 } %i.sq, 1
  br label %bb.gy

.thread301.i.i.i.i.i.i:                           ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i229.i.i.i.i.i.i, %.thread295.i.i.i.i.i.i
  br i1 %.sroa.085.8299.i.i.i.i.i.i, label %.thread282.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEECskVIURZGHVHJ_12tensor_tools.exit232.i.i.i.i.i.i

.thread282.i.i.loopexit.i.i.i.i:                  ; preds = %bb.hs, %bb.hp, %bb.hd, %bb.gy
  %.sroa.11.2.i.i.ph.i.i.i.i = phi i64 [ %.pn.i.i.i.i.i.i, %bb.hd ], [ %.pn.i.i.i.i.i.i, %bb.gy ], [ %.sroa.11.4.i.i.i.i.i.i, %bb.hp ], [ %.sroa.11.4.i.i.i.i.i.i, %bb.hs ]
  %.sroa.0255.2.i.i.ph.i.i.i.i = phi ptr [ %.sroa.0255.0.i.i.i.i.i.i, %bb.hd ], [ %.sroa.0255.0.i.i.i.i.i.i, %bb.gy ], [ %.sroa.0255.4.i.i.i.i.i.i, %bb.hp ], [ %.sroa.0255.4.i.i.i.i.i.i, %bb.hs ]
  %lpad.loopexit178.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread282.i.i.i.i.i.i

.thread282.i.i.loopexit.split-lp.i.i.i.i:         ; preds = %bb.hu, %bb.hf
  %.sroa.11.2.i.i.ph176.i.i.i.i = phi i64 [ %.pn.i.i.i.i.i.i, %bb.hf ], [ %.sroa.11.4.i.i.i.i.i.i, %bb.hu ]
  %.sroa.0255.2.i.i.ph177.i.i.i.i = phi ptr [ %.sroa.0255.0.i.i.i.i.i.i, %bb.hf ], [ %.sroa.0255.4.i.i.i.i.i.i, %bb.hu ]
  %lpad.loopexit.split-lp179.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread282.i.i.i.i.i.i

bb.hb:                                            ; preds = %bb.gy
  %i.sw = load i64, ptr %i.i, align 8, !range !565, !noalias !563, !noundef !8 ; 3 uses
  %i.sx = icmp eq i64 %i.sw, -2
  %i.sy = load ptr, ptr %i.dh, align 8, !noalias !563 ; 4 uses
  br i1 %i.sx, label %bb.hj, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %.sroa.5132.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.5132.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !563 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !563
  %.not162.i.i.i.i.i.i = icmp eq i64 %i.sw, -1
  br i1 %.not162.i.i.i.i.i.i, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !563
  store i64 %i.sw, ptr %i.b, align 8, !noalias !563
  store ptr %i.sy, ptr %.sroa.348.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !563
  store i64 %.sroa.5132.0.copyload.i.i.i.i.i.i, ptr %.sroa.549.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !563
  %i.sz = invoke { ptr, i64 } @_RNvXsO_NtCsgCecv3eZDcN_5alloc6stringINtNtB7_5boxed3BoxeEINtNtCsf3Ta7LF998c_4core7convert4FromNtB5_6StringE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
          to label %bb.hh unwind label %.thread282.i.i.loopexit.i.i.i.i, !noalias !564 ; 2 uses

bb.he:                                            ; preds = %bb.hc
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sy) ]
  %i.ta = icmp eq i64 %.sroa.5132.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.ta, label %bb.hg, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.he
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !567
  %i.tb = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %.sroa.5132.0.copyload.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !567 ; 2 uses
  %i.tc = icmp eq ptr %i.tb, null
  br i1 %i.tc, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i.i
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %.sroa.5132.0.copyload.i.i.i.i.i.i) #25
          to label %bb.gz unwind label %.thread282.i.i.loopexit.split-lp.i.i.i.i, !noalias !564

bb.hg:                                            ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.he
  %.sroa.01.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.he ], [ %i.tb, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i.i.i, ptr nonnull readonly align 1 %i.sy, i64 %.sroa.5132.0.copyload.i.i.i.i.i.i, i1 false), !noalias !564
  br label %bb.hi

bb.hh:                                            ; preds = %bb.hd
  %i.td = extractvalue { ptr, i64 } %i.sz, 0
  %i.te = extractvalue { ptr, i64 } %i.sz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !563
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hw, %bb.hv, %bb.hh, %bb.hg
  %.sroa.11259.0.i.i.i.i.i.i = phi i64 [ %i.te, %bb.hh ], [ %.sroa.5132.0.copyload.i.i.i.i.i.i, %bb.hg ], [ %i.tz, %bb.hv ], [ %i.ue, %bb.hw ] ; 3 uses
  %.sroa.0258.0.i.i.i.i.i.i = phi ptr [ %i.td, %bb.hh ], [ %.sroa.01.0.i.i.i, %bb.hg ], [ %.sroa.01.0.i213.i.i.i.i.i.i, %bb.hv ], [ %i.ud, %bb.hw ] ; 4 uses
  %.sroa.11.3.i.i.i.i.i.i = phi i64 [ %.pn.i.i.i.i.i.i, %bb.hh ], [ %.pn.i.i.i.i.i.i, %bb.hg ], [ %.sroa.11.4.i.i.i.i.i.i, %bb.hv ], [ %.sroa.11.4.i.i.i.i.i.i, %bb.hw ] ; 5 uses
  %.sroa.0255.3.i.i.i.i.i.i = phi ptr [ %.sroa.0255.0.i.i.i.i.i.i, %bb.hh ], [ %.sroa.0255.0.i.i.i.i.i.i, %bb.hg ], [ %.sroa.0255.4.i.i.i.i.i.i, %bb.hv ], [ %.sroa.0255.4.i.i.i.i.i.i, %bb.hw ] ; 4 uses
  %i.tf = invoke { i8, i8 } @_RNvMNtCscWUIX17zZnI_3zip5typesNtB2_6System13extract_bytes(i16 noundef %.sroa.81.sroa.0.0.copyload.i.i.i.i.i)
          to label %bb.hy unwind label %.thread306.i.i.i.i.i.i, !noalias !564 ; 2 uses

bb.hj:                                            ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !563
  %i.tg = ptrtoint ptr %i.sy to i64               ; 2 uses
  %i.th = icmp eq i64 %.pn.i.i.i.i.i.i, 0
  br i1 %i.th, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i205.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i205.i.i.i.i.i.i: ; preds = %bb.hj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0255.0.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0255.0.i.i.i.i.i.i, i64 noundef %.pn.i.i.i.i.i.i, i64 noundef 1) #23, !noalias !564
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i: ; preds = %bb.ik, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i205.i.i.i.i.i.i, %bb.hj
  %.sroa.24.0.i.i.i.i.i = phi i64 [ %i.tg, %bb.hj ], [ %i.tg, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i205.i.i.i.i.i.i ], [ %.sroa.24.2.i.i.i.i.i, %bb.ik ] ; 2 uses
  %.sroa.1451.0.i.i.i.i.i = phi i64 [ -9223372036854775808, %bb.hj ], [ -9223372036854775808, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i205.i.i.i.i.i.i ], [ %.sroa.1451.2.i.i.i.i.i, %bb.ik ] ; 2 uses
  %.sroa.31.0.i.i.i.i.i = phi i64 [ undef, %bb.hj ], [ undef, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i205.i.i.i.i.i.i ], [ %.sroa.31.2.i.i.i.i.i, %bb.ik ] ; 2 uses
  %.sroa.085.6.i.i.i.i.i.i = phi i1 [ true, %bb.hj ], [ true, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i205.i.i.i.i.i.i ], [ false, %bb.ik ]
  %i.ti = icmp eq i64 %i.sk, 0
  br i1 %i.ti, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit207.i.i.i.i.i.i.a, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i206.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i206.i.i.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sj, i64 noundef %i.sk, i64 noundef 1) #23, !noalias !564
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit207.i.i.i.i.i.i.a

bb.hk:                                            ; preds = %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !563
  %i.tj = ptrtoint ptr %i.sp to i64               ; 2 uses
  %i.tk = icmp eq i64 %i.sk, 0
  br i1 %i.tk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit209.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i208.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i208.i.i.i.i.i.i: ; preds = %bb.hk
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sj, i64 noundef %i.sk, i64 noundef 1) #23, !noalias !564
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit209.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit209.i.i.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit207.i.i.i.i.i.i.a, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i208.i.i.i.i.i.i, %bb.hk
  %.sroa.24.1.i.i.i.i.i = phi i64 [ %i.tj, %bb.hk ], [ %i.tj, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i208.i.i.i.i.i.i ], [ %.sroa.24.0.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit207.i.i.i.i.i.i.a ] ; 2 uses
  %.sroa.1451.1.i.i.i.i.i = phi i64 [ -9223372036854775808, %bb.hk ], [ -9223372036854775808, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i208.i.i.i.i.i.i ], [ %.sroa.1451.0.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit207.i.i.i.i.i.i.a ] ; 2 uses
  %.sroa.31.1.i.i.i.i.i = phi i64 [ undef, %bb.hk ], [ undef, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i208.i.i.i.i.i.i ], [ %.sroa.31.0.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit207.i.i.i.i.i.i.a ] ; 2 uses
  %i.tl = icmp eq i64 %i.sf, 0
  br i1 %i.tl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i210.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i210.i.i.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit209.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.se, i64 noundef %i.sf, i64 noundef 1) #23, !noalias !564
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i

bb.hl:                                            ; preds = %bb.gt
  %i.tm = load i64, ptr %i.e, align 8, !range !568, !noalias !563, !noundef !8
  %.not163.i.i.i.i.i.i = icmp eq i64 %i.tm, -1
  br i1 %.not163.i.i.i.i.i.i, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.tn = invoke { ptr, i64 } @_RNvXsO_NtCsgCecv3eZDcN_5alloc6stringINtNtB7_5boxed3BoxeEINtNtCsf3Ta7LF998c_4core7convert4FromNtB5_6StringE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e)
          to label %bb.hq unwind label %.loopexit.split-lp172.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !564 ; 2 uses

bb.hn:                                            ; preds = %bb.hl
  %i.to = load ptr, ptr %i.dc, align 8, !noalias !563, !nonnull !8, !noundef !8
  %i.tp = load i64, ptr %i.dd, align 8, !noalias !563, !noundef !8 ; 5 uses
  %i.tq = icmp eq i64 %i.tp, 0
  br i1 %i.tq, label %bb.ho, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %bb.hn
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !569
  %i.tr = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.tp, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !569 ; 2 uses
  %i.ts = icmp eq ptr %i.tr, null
  br i1 %i.ts, label %.invoke.i.i.i.i.i.i, label %bb.ho

.invoke.i.i.i.i.i.i:                              ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i59.i.i
  %i.tt = phi i64 [ %i.tp, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ %.sroa.5121.0.copyload.i.i.i.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i59.i.i ]
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %i.tt) #25
          to label %.cont.i.i.i.i.i.i unwind label %.loopexit.split-lp172.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !564

.cont.i.i.i.i.i.i:                                ; preds = %.invoke.i.i.i.i.i.i
  unreachable

bb.ho:                                            ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, %bb.hn
  %.sroa.01.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.hn ], [ %i.tr, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %i.to, i64 %i.tp, i1 false), !noalias !564
  br label %bb.hp

bb.hp:                                            ; preds = %bb.hq, %bb.ho
  %.sroa.11.4.i.i.i.i.i.i = phi i64 [ %i.tp, %bb.ho ], [ %i.tv, %bb.hq ] ; 5 uses
  %.sroa.0255.4.i.i.i.i.i.i = phi ptr [ %.sroa.01.0.i.i.i.i.i.i.i, %bb.ho ], [ %i.tu, %bb.hq ] ; 5 uses
  invoke void @_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.sj, i64 noundef %i.sk)
          to label %bb.hr unwind label %.thread282.i.i.loopexit.i.i.i.i, !noalias !564

bb.hq:                                            ; preds = %bb.hm
  %i.tu = extractvalue { ptr, i64 } %i.tn, 0
  %i.tv = extractvalue { ptr, i64 } %i.tn, 1
  br label %bb.hp

bb.hr:                                            ; preds = %bb.hp
  %i.tw = load i64, ptr %i.c, align 8, !range !568, !noalias !563, !noundef !8
  %.not164.i.i.i.i.i.i = icmp eq i64 %i.tw, -1
  br i1 %.not164.i.i.i.i.i.i, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.tx = invoke { ptr, i64 } @_RNvXsO_NtCsgCecv3eZDcN_5alloc6stringINtNtB7_5boxed3BoxeEINtNtCsf3Ta7LF998c_4core7convert4FromNtB5_6StringE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
          to label %bb.hw unwind label %.thread282.i.i.loopexit.i.i.i.i, !noalias !564 ; 2 uses

bb.ht:                                            ; preds = %bb.hr
  %i.ty = load ptr, ptr %i.de, align 8, !noalias !563, !nonnull !8, !noundef !8
  %i.tz = load i64, ptr %i.df, align 8, !noalias !563, !noundef !8 ; 5 uses
  %i.ua = icmp eq i64 %i.tz, 0
  br i1 %i.ua, label %bb.hv, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i212.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i212.i.i.i.i.i.i: ; preds = %bb.ht
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !570
  %i.ub = call noundef ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.tz, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !570 ; 2 uses
  %i.uc = icmp eq ptr %i.ub, null
  br i1 %i.uc, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i212.i.i.i.i.i.i
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %i.tz) #25
          to label %bb.gz unwind label %.thread282.i.i.loopexit.split-lp.i.i.i.i, !noalias !564

bb.hv:                                            ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i212.i.i.i.i.i.i, %bb.ht
  %.sroa.01.0.i213.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.ht ], [ %i.ub, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator8allocate.exit.i212.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i213.i.i.i.i.i.i, ptr nonnull readonly align 1 %i.ty, i64 %i.tz, i1 false), !noalias !564
  br label %bb.hi

bb.hw:                                            ; preds = %bb.hs
  %i.ud = extractvalue { ptr, i64 } %i.tx, 0
  %i.ue = extractvalue { ptr, i64 } %i.tx, 1
  br label %bb.hi

.thread306.i.i.i.i.i.i:                           ; preds = %bb.hy, %bb.hi
  %lpad.thr_comm.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread295.i.i.i.i.i.i

bb.hx:                                            ; preds = %.loopexit181.i.i.i.i
  %lpad.thr_comm.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEECskVIURZGHVHJ_12tensor_tools.exit232.i.i.i.i.i.i

bb.hy:                                            ; preds = %bb.hi
  %i.uf = extractvalue { i8, i8 } %i.tf, 0
  %i.ug = extractvalue { i8, i8 } %i.tf, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !563
  %i.uh = icmp ne i16 %.sroa.670.i.i.i.i.i.0..sroa.670.i.i.i.i.i.0..sroa.670.i.i.i.i.i.0..sroa.670.i.i.i.i.0..sroa.670.i.i.i.i.0..sroa.670.i.i.i.0..sroa.670.i.i.i.0..sroa.670.i.i.0..sroa.670.i.i.0..sroa.670.i.0..sroa.670.i.0..sroa.670.0..sroa.670.0..sroa.670.0..sroa.670.6..sroa.55.sroa.7.0.copyload.i.i.i.i.i, 0
  %..i.i.i.i.i.i.i = zext i1 %i.uh to i16
  %i.ui = invoke i48 @_RNvMs3_NtCscWUIX17zZnI_3zip8datetimeNtB5_8DateTime14try_from_msdos(i16 noundef %i.rr, i16 noundef %i.rp)
          to label %bb.hz unwind label %.thread306.i.i.i.i.i.i, !noalias !564 ; 3 uses

bb.hz:                                            ; preds = %bb.hy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0255.3.i.i.i.i.i.i) ]
  %i.uj = invoke { ptr, i64 } @_RNvMsp_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcShE11from_box_inCskVIURZGHVHJ_12tensor_tools(ptr noalias noundef nonnull %i.se, i64 noundef %i.sf)
          to label %bb.ib unwind label %bb.ia, !noalias !564 ; 2 uses

bb.ia:                                            ; preds = %bb.hz
  %i.uk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ul = icmp eq i64 %i.rz, 0
  br i1 %i.ul, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit217.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i216.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i216.i.i.i.i.i.i: ; preds = %bb.ia
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ry, i64 noundef %i.rz, i64 noundef 1) #23, !noalias !564
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit217.i.i.i.i.i.i

bb.ib:                                            ; preds = %bb.hz
  %i.um = trunc i48 %i.ui to i1                   ; 2 uses
  %not..i.i.i.i.i.i = xor i1 %i.um, true
  %.sroa.050.0.i.i.i.i.i.i = zext i1 %not..i.i.i.i.i.i to i16
  %.sroa.0157.4.extract.shift.i.i.i.i.i.i = lshr i48 %i.ui, 32
  %.sroa.0157.4.extract.trunc.i.i.i.i.i.i = trunc nuw i48 %.sroa.0157.4.extract.shift.i.i.i.i.i.i to i16
  %.sroa.652.0.i.i.i.i.i.i = select i1 %i.um, i16 undef, i16 %.sroa.0157.4.extract.trunc.i.i.i.i.i.i
  %.sroa.0157.2.extract.shift.i.i.i.i.i.i = lshr i48 %i.ui, 16
  %.sroa.0157.2.extract.trunc.i.i.i.i.i.i = trunc i48 %.sroa.0157.2.extract.shift.i.i.i.i.i.i to i16
  %i.un = and i64 %.sroa.1171.16.extract.shift.i.i.i.i.i, 4294967295
  %i.uo = extractvalue { ptr, i64 } %i.uj, 0      ; 2 uses
  %i.up = extractvalue { ptr, i64 } %i.uj, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.uo), "nonnull"(ptr %.sroa.0258.0.i.i.i.i.i.i) ]
  %i.uq = zext i32 %.sroa.15.sroa.13.0.copyload.i.i.i.i.i to i64
  store i8 %i.ug, ptr %i.di, align 8, !noalias !563
  store i8 %i.uf, ptr %i.dj, align 1, !noalias !563
  store i16 %.sroa.81.sroa.6.0.copyload.i.i.i.i.i, ptr %i.dk, align 2, !noalias !563
  %i.ur = and i8 %i.ru, 1
  store i8 %i.ur, ptr %i.dl, align 4, !noalias !563
  %.lobit.i.i.i.i.i.i = lshr exact i16 %i.rv, 11
  %i.us = trunc nuw nsw i16 %.lobit.i.i.i.i.i.i to i8
  store i8 %i.us, ptr %i.dm, align 1, !noalias !563
  %i.ut = lshr i8 %i.ru, 3
  %i.uu = and i8 %i.ut, 1
  store i8 %i.uu, ptr %i.dn, align 2, !noalias !563
  store i16 %..i.i.i.i.i.i.i, ptr %i.do, align 8, !noalias !563
  store i16 %.sroa.670.i.i.i.i.i.0..sroa.670.i.i.i.i.i.0..sroa.670.i.i.i.i.i.0..sroa.670.i.i.i.i.0..sroa.670.i.i.i.i.0..sroa.670.i.i.i.0..sroa.670.i.i.i.0..sroa.670.i.i.0..sroa.670.i.i.0..sroa.670.i.0..sroa.670.i.0..sroa.670.0..sroa.670.0..sroa.670.0..sroa.670.6..sroa.55.sroa.7.0.copyload.i.i.i.i.i, ptr %i.dp, align 2, !noalias !563
  store i64 0, ptr %i.h, align 8, !noalias !563
  store i16 %.sroa.050.0.i.i.i.i.i.i, ptr %i.dq, align 4, !noalias !563
  store i16 %.sroa.0157.2.extract.trunc.i.i.i.i.i.i, ptr %.sroa.551.0..sroa_idx.i.i.i.i.i.i, align 2, !noalias !563
  store i16 %.sroa.652.0.i.i.i.i.i.i, ptr %.sroa.652.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !563
  store i32 %.sroa.55.sroa.12.sroa.0.0.insert.insert105.i.i.i.i.i, ptr %i.dr, align 4, !noalias !563
  store i64 %i.un, ptr %i.ds, align 8, !noalias !563
  store i64 %.sroa.55.sroa.14.sroa.0.0.insert.insert98.i.i.i.i.i, ptr %i.dt, align 8, !noalias !563
  store ptr %.sroa.0255.3.i.i.i.i.i.i, ptr %i.du, align 8, !noalias !563
  store i64 %.sroa.11.3.i.i.i.i.i.i, ptr %i.dv, align 8, !noalias !563
  store ptr %i.ry, ptr %i.dw, align 8, !noalias !563
  store i64 %i.rz, ptr %i.dx, align 8, !noalias !563
  store ptr %i.uo, ptr %i.dy, align 8, !noalias !563
  store i64 %i.up, ptr %i.dz, align 8, !noalias !563
  store ptr null, ptr %i.ea, align 8, !noalias !563
  store ptr %.sroa.0258.0.i.i.i.i.i.i, ptr %i.eb, align 8, !noalias !563
  store i64 %.sroa.11259.0.i.i.i.i.i.i, ptr %i.ec, align 8, !noalias !563
  store i64 %i.uq, ptr %i.ed, align 8, !noalias !563
  store i64 0, ptr %i.ee, align 8, !noalias !563
  store i64 %i.qn, ptr %i.ef, align 8, !noalias !563
  store i32 3, ptr %.sroa.3140.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !563
  store i32 %.sroa.15.sroa.12.0.copyload.i.i.i.i.i, ptr %i.eg, align 8, !noalias !563
  store i8 0, ptr %i.eh, align 1, !noalias !563
  store i16 0, ptr %i.ei, align 8, !noalias !563
  store i64 0, ptr %i.ej, align 8, !noalias !563
  store i64 0, ptr %i.ek, align 8, !noalias !563
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.459.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !563
  store i64 0, ptr %.sroa.560.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !563
  invoke void @_RNvNtCscWUIX17zZnI_3zip4read17parse_extra_field(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.h)
          to label %bb.id unwind label %bb.ic, !noalias !564

bb.ic:                                            ; preds = %bb.ih, %bb.ib
  %i.uv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip5types11ZipFileDataECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(232) %i.h) #22
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEECskVIURZGHVHJ_12tensor_tools.exit232.i.i.i.i.i.i unwind label %bb.il, !noalias !564

bb.id:                                            ; preds = %bb.ib
  %i.uw = load i64, ptr %i.g, align 8, !range !466, !noalias !563, !noundef !8 ; 2 uses
  %.not165.i.i.i.i.i.i = icmp eq i64 %i.uw, -2
  br i1 %.not165.i.i.i.i.i.i, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %.sroa.24.8.copyload56.i.i.i.i.i = load i64, ptr %.sroa.24.8..sroa_idx55.i.i.i.i.i, align 8, !noalias !571
  %.sroa.31.8.copyload59.i.i.i.i.i = load i64, ptr %.sroa.31.8..sroa_idx58.i.i.i.i.i, align 8, !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !563
  br label %.loopexit181.i.i.i.i

bb.if:                                            ; preds = %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !563
  %.val201.i.i.i.i.i.i = load i16, ptr %i.do, align 8, !range !22, !noalias !563, !noundef !8
  %.val202.i.i.i.i.i.i = load i16, ptr %i.dp, align 2, !noalias !563
  %.not.i.i.i.i.i43.i.i = icmp ne i16 %.val201.i.i.i.i.i.i, 0
  %i.ux = icmp eq i16 %.val202.i.i.i.i.i.i, 99
  %.sroa.0.0.i218.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i43.i.i, i1 %i.ux, i1 false
  %i.uy = load i16, ptr %i.ei, align 8, !range !572, !noalias !563
  %.not166.i.i.i.i.i.i = icmp eq i16 %i.uy, 0
  %or.cond.i.i.i.i44.i.i = select i1 %.sroa.0.0.i218.i.i.i.i.i.i, i1 %.not166.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i44.i.i, label %.loopexit181.i.i.i.i, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %i.uz = load i64, ptr %i.ed, align 8, !noalias !563, !noundef !8 ; 2 uses
  %i.va = add i64 %i.uz, %.sroa.0107.0.copyload.i.i ; 2 uses
  %i.vb = icmp ult i64 %i.va, %i.uz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !563
  br i1 %i.vb, label %bb.ij, label %bb.ih, !prof !9

bb.ih:                                            ; preds = %bb.ig
  store i64 -1, ptr %i.f, align 8, !alias.scope !573, !noalias !563
  store ptr @12, ptr %.sroa.4.0..sroa_idx.i219.i.i.i.i.i.i, align 8, !alias.scope !573, !noalias !563
  store i64 27, ptr %.sroa.5.0..sroa_idx.i220.i.i.i.i.i.i, align 8, !alias.scope !573, !noalias !563
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip6result8ZipErrorECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f)
          to label %bb.ii unwind label %bb.ic, !noalias !564

bb.ii:                                            ; preds = %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !563
  store i64 %i.va, ptr %i.ed, align 8, !noalias !563
  %.sroa.050.0.copyload.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !571 ; 2 uses
  %.sroa.1451.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.1451.0..sroa_idx.i.i.i.i.i, align 8, !noalias !571 ; 2 uses
  %.sroa.24.0.copyload.i.i.i.i.i = load i64, ptr %i.ee, align 8, !noalias !571 ; 2 uses
  %.sroa.31.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.31.0..sroa_idx.i.i.i.i.i, align 8, !noalias !571 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.36.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(200) %i.ek, i64 200, i1 false), !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !563
  %i.vc = icmp eq i64 %i.sk, 0
  br i1 %i.vc, label %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i223.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i223.i.i.i.i.i.i: ; preds = %bb.ii
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sj, i64 noundef %i.sk, i64 noundef 1) #23, !noalias !564
  br label %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i

bb.ij:                                            ; preds = %bb.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !563
  br label %.loopexit181.i.i.i.i

.loopexit181.i.i.i.i:                             ; preds = %bb.if, %bb.ij, %bb.ie
  %.sroa.24.2.i.i.i.i.i = phi i64 [ %.sroa.24.8.copyload56.i.i.i.i.i, %bb.ie ], [ ptrtoint (ptr @12 to i64), %bb.ij ], [ ptrtoint (ptr @13 to i64), %bb.if ]
  %.sroa.1451.2.i.i.i.i.i = phi i64 [ %i.uw, %bb.ie ], [ -1, %bb.ij ], [ -1, %bb.if ]
  %.sroa.31.2.i.i.i.i.i = phi i64 [ %.sroa.31.8.copyload59.i.i.i.i.i, %bb.ie ], [ 27, %bb.ij ], [ 43, %bb.if ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip5types11ZipFileDataECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(232) %i.h)
          to label %bb.ik unwind label %bb.hx, !noalias !564

bb.ik:                                            ; preds = %.loopexit181.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !563
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit207.i.i.i.i.i.i.a: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i206.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i
  br i1 %.sroa.085.6.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit209.i.i.i.i.i.i, label %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i210.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit209.i.i.i.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i42.i.i, %bb.gq, %2
  %.sroa.24.3.i.i.i.i.i = phi i64 [ %.sroa.24.1.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit209.i.i.i.i.i.i ], [ %.sroa.24.1.i.i.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i210.i.i.i.i.i.i ], [ %4, %bb.gq ], [ %4, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i42.i.i ], [ %3, %2 ] ; 2 uses
  %.sroa.1451.3.i.i.i.i.i = phi i64 [ %.sroa.1451.1.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit209.i.i.i.i.i.i ], [ %.sroa.1451.1.i.i.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i210.i.i.i.i.i.i ], [ %i.si, %bb.gq ], [ %i.si, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i42.i.i ], [ %i.sd, %2 ] ; 2 uses
  %.sroa.31.3.i.i.i.i.i = phi i64 [ %.sroa.31.1.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit209.i.i.i.i.i.i ], [ %.sroa.31.1.i.i.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i210.i.i.i.i.i.i ], [ %i.sk, %bb.gq ], [ %i.sk, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i42.i.i ], [ %i.sf, %2 ] ; 2 uses
  %i.vd = icmp eq i64 %i.rz, 0
  br i1 %i.vd, label %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i225.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i225.i.i.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ry, i64 noundef %i.rz, i64 noundef 1) #23, !noalias !564
  br label %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i.i

bb.il:                                            ; preds = %bb.ic
  %i.ve = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !564
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit217.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i216.i.i.i.i.i.i, %bb.ia
  %i.vf = icmp eq i64 %.sroa.11.3.i.i.i.i.i.i, 0
  br i1 %i.vf, label %.thread295.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i227.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i227.i.i.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit217.i.i.i.i.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0255.3.i.i.i.i.i.i, i64 noundef %.sroa.11.3.i.i.i.i.i.i, i64 noundef 1) #23, !noalias !564
  br label %.thread295.i.i.i.i.i.i

.thread295.i.i.i.i.i.i:                           ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i227.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit217.i.i.i.i.i.i, %.thread306.i.i.i.i.i.i
  %.sroa.11.3.i.i788.i.i.i.i = phi i64 [ %.sroa.11.3.i.i.i.i.i.i, %.thread306.i.i.i.i.i.i ], [ %.sroa.11.3.i.i.i.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i227.i.i.i.i.i.i ], [ 0, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit217.i.i.i.i.i.i ]
  %.pn300.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i.i.i, %.thread306.i.i.i.i.i.i ], [ %i.uk, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i227.i.i.i.i.i.i ], [ %i.uk, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit217.i.i.i.i.i.i ] ; 2 uses
  %.sroa.085.8299.i.i.i.i.i.i = phi i1 [ true, %.thread306.i.i.i.i.i.i ], [ false, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i227.i.i.i.i.i.i ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit217.i.i.i.i.i.i ]
  %i.vg = icmp eq i64 %.sroa.11259.0.i.i.i.i.i.i, 0
  br i1 %i.vg, label %.thread301.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i229.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i229.i.i.i.i.i.i: ; preds = %.thread295.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0258.0.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0258.0.i.i.i.i.i.i, i64 noundef %.sroa.11259.0.i.i.i.i.i.i, i64 noundef 1) #23, !noalias !564
  br label %.thread301.i.i.i.i.i.i

.thread282.i.i.i.i.i.i:                           ; preds = %.thread282.i.i.loopexit.split-lp.i.i.i.i, %.thread282.i.i.loopexit.i.i.i.i, %.thread301.i.i.i.i.i.i
  %.pn.pn290.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn300.i.i.i.i.i.i, %.thread301.i.i.i.i.i.i ], [ %lpad.loopexit178.i.i.i.i, %.thread282.i.i.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp179.i.i.i.i, %.thread282.i.i.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.0255.1288.i.i.i.i.i.i = phi ptr [ %.sroa.0255.3.i.i.i.i.i.i, %.thread301.i.i.i.i.i.i ], [ %.sroa.0255.2.i.i.ph.i.i.i.i, %.thread282.i.i.loopexit.i.i.i.i ], [ %.sroa.0255.2.i.i.ph177.i.i.i.i, %.thread282.i.i.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.sroa.11.1287.i.i.i.i.i.i = phi i64 [ %.sroa.11.3.i.i788.i.i.i.i, %.thread301.i.i.i.i.i.i ], [ %.sroa.11.2.i.i.ph.i.i.i.i, %.thread282.i.i.loopexit.i.i.i.i ], [ %.sroa.11.2.i.i.ph176.i.i.i.i, %.thread282.i.i.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %i.vh = icmp eq i64 %.sroa.11.1287.i.i.i.i.i.i, 0
  br i1 %i.vh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEECskVIURZGHVHJ_12tensor_tools.exit232.i.i.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i231.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i231.i.i.i.i.i.i: ; preds = %.thread282.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0255.1288.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0255.1288.i.i.i.i.i.i, i64 noundef %.sroa.11.1287.i.i.i.i.i.i, i64 noundef 1) #23, !noalias !564
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxeEECskVIURZGHVHJ_12tensor_tools.exit232.i.i.i.i.i.i

bb.im:                                            ; preds = %.thread278.i.i.i.i.i.i, %bb.go
  %.pn170281.i.i.i.i.i.i = phi { ptr, i32 } [ %i.sh, %.thread278.i.i.i.i.i.i ], [ %.pn.pn.pn.i.i.i.i.i.i, %bb.go ] ; 2 uses
  %i.vi = icmp eq i64 %i.sf, 0
  br i1 %i.vi, label %bb.in, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i233.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i233.i.i.i.i.i.i: ; preds = %bb.im
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.se, i64 noundef %i.sf, i64 noundef 1) #23, !noalias !564
  br label %bb.in

bb.in:                                            ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i233.i.i.i.i.i.i, %bb.im, %bb.gl
  %.pn172.ph.i.i.i.i.i.i = phi { ptr, i32 } [ %i.sc, %bb.gl ], [ %.pn170281.i.i.i.i.i.i, %bb.im ], [ %.pn170281.i.i.i.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i233.i.i.i.i.i.i ] ; 2 uses
  %i.vj = icmp eq i64 %i.rz, 0
  br i1 %i.vj, label %.body.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i235.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i235.i.i.i.i.i.i: ; preds = %bb.in
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ry, i64 noundef %i.rz, i64 noundef 1) #23, !noalias !564
  br label %.body.i.i.i.i

_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i225.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit207.i.i.i.i.i.i.a, %bb.gj
  %.sroa.24.4.ph.i.i.i.i.i = phi i64 [ %i.sa, %bb.gj ], [ %.sroa.24.0.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit207.i.i.i.i.i.i.a ], [ %.sroa.24.3.i.i.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i225.i.i.i.i.i.i ], [ %.sroa.24.3.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i ]
  %.sroa.1451.4.ph.i.i.i.i.i = phi i64 [ %i.rx, %bb.gj ], [ %.sroa.1451.0.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit207.i.i.i.i.i.i.a ], [ %.sroa.1451.3.i.i.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i225.i.i.i.i.i.i ], [ %.sroa.1451.3.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i ]
  %.sroa.31.4.ph.i.i.i.i.i = phi i64 [ %i.rz, %bb.gj ], [ %.sroa.31.0.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit207.i.i.i.i.i.i.a ], [ %.sroa.31.3.i.i.i.i.i, %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i225.i.i.i.i.i.i ], [ %.sroa.31.3.i.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxShEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !558
  br label %.loopexit182.i.i.i.i

_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i223.i.i.i.i.i.i, %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !558
  %i.vk = icmp eq i64 %.sroa.050.0.copyload.i.i.i.i.i, 2
  br i1 %i.vk, label %.loopexit182.i.i.i.i, label %bb.io

.loopexit182.i.i.i.i:                             ; preds = %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i.i
  %.sroa.31.4189.i.i.i.i.i = phi i64 [ %.sroa.31.4.ph.i.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i.i ], [ %.sroa.31.0.copyload.i.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.1451.4188.i.i.i.i.i = phi i64 [ %.sroa.1451.4.ph.i.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i.i ], [ %.sroa.1451.0.copyload.i.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.24.4187.i.i.i.i.i = phi i64 [ %.sroa.24.4.ph.i.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i.i ], [ %.sroa.24.0.copyload.i.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36.i.i.i.i.i)
  %.sroa.10.sroa.12.0.extract.shift109.i.i.i.i = and i64 %.sroa.1451.4188.i.i.i.i.i, -1099511627776
  %.sroa.25.sroa.0.0.extract.trunc42.i.i.i.i = trunc i64 %.sroa.31.4189.i.i.i.i.i to i8
  %.sroa.25.sroa.8.0.extract.shift47.i.i.i.i = lshr i64 %.sroa.31.4189.i.i.i.i.i, 8
  %.sroa.25.sroa.8.0.extract.trunc48.i.i.i.i = trunc i64 %.sroa.25.sroa.8.0.extract.shift47.i.i.i.i to i16
  %.sroa.25.sroa.9.0.extract.shift53.i.i.i.i = lshr i64 %.sroa.31.4189.i.i.i.i.i, 24
  %.sroa.25.sroa.9.0.extract.trunc54.i.i.i.i = trunc i64 %.sroa.25.sroa.9.0.extract.shift53.i.i.i.i to i16
  %.sroa.25.sroa.10.0.extract.shift59.i.i.i.i = lshr i64 %.sroa.31.4189.i.i.i.i.i, 40
  %.sroa.25.sroa.10.0.extract.trunc60.i.i.i.i = trunc i64 %.sroa.25.sroa.10.0.extract.shift59.i.i.i.i to i16
  %.sroa.25.sroa.11.0.extract.shift65.i.i.i.i = lshr i64 %.sroa.31.4189.i.i.i.i.i, 56
  %.sroa.25.sroa.11.0.extract.trunc66.i.i.i.i = trunc nuw i64 %.sroa.25.sroa.11.0.extract.shift65.i.i.i.i to i8
  br label %.noexc33.i.i.i.i

bb.io:                                            ; preds = %_RINvNtCscWUIX17zZnI_3zip4read32central_header_to_zip_file_innerINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.512.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.36.i.i.i.i.i, i64 200, i1 false), !noalias !558
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.36.i.i.i.i.i)
  store i64 %.sroa.050.0.copyload.i.i.i.i.i, ptr %i.s, align 8, !noalias !558
  store i64 %.sroa.1451.0.copyload.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !558
  store i64 %.sroa.24.0.copyload.i.i.i.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !558
  store i64 %.sroa.31.0.copyload.i.i.i.i.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i, align 8, !noalias !558
  %i.vl = invoke { i64, ptr } @_RNvXs7_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io4seek4Seek15stream_positionCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bi)
          to label %bb.iq unwind label %bb.ip, !noalias !574 ; 2 uses

bb.ip:                                            ; preds = %bb.ir, %bb.io
  %i.vm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip5types11ZipFileDataECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(232) %i.s) #22
          to label %.body.i.i.i.i unwind label %bb.iu, !noalias !574

bb.iq:                                            ; preds = %bb.io
  %i.vn = extractvalue { i64, ptr } %i.vl, 0
  %i.vo = extractvalue { i64, ptr } %i.vl, 1      ; 2 uses
  %i.vp = trunc nuw i64 %i.vn to i1
  br i1 %i.vp, label %.loopexit183.i.i.i.i, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.vq = ptrtoint ptr %i.vo to i64
  %i.vr = invoke { i64, ptr } @_RNvXs7_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileENtNtNtCsf3Ta7LF998c_4core2io4seek4Seek4seekCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bi, i64 noundef 0, i64 noundef %i.vq)
          to label %bb.is unwind label %bb.ip, !noalias !574 ; 2 uses

bb.is:                                            ; preds = %bb.ir
  %i.vs = extractvalue { i64, ptr } %i.vr, 0
  %i.vt = trunc nuw i64 %i.vs to i1
  br i1 %i.vt, label %bb.it, label %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i

bb.it:                                            ; preds = %bb.is
  %i.vu = extractvalue { i64, ptr } %i.vr, 1
  br label %.loopexit183.i.i.i.i

.loopexit183.i.i.i.i:                             ; preds = %bb.iq, %bb.it
  %.sink.i29.i.i.i.i = phi ptr [ %i.vu, %bb.it ], [ %i.vo, %bb.iq ]
  %i.vv = ptrtoint ptr %.sink.i29.i.i.i.i to i64
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip5types11ZipFileDataECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef align 8 dereferenceable(232) %i.s)
          to label %.noexc33.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !557

.noexc33.i.i.i.i:                                 ; preds = %.loopexit183.i.i.i.i, %.loopexit182.i.i.i.i
  %.sroa.10.sroa.12.0.i.i40.i.i = phi i64 [ %.sroa.10.sroa.12.0.extract.shift109.i.i.i.i, %.loopexit182.i.i.i.i ], [ -9223372036854775808, %.loopexit183.i.i.i.i ]
  %.sroa.10.sroa.0.0.i.i41.i.i = phi i64 [ %.sroa.1451.4188.i.i.i.i.i, %.loopexit182.i.i.i.i ], [ 0, %.loopexit183.i.i.i.i ]
  %.sroa.19.sroa.11.0.in.in.i.i.i.i = phi i64 [ %.sroa.24.4187.i.i.i.i.i, %.loopexit182.i.i.i.i ], [ %i.vv, %.loopexit183.i.i.i.i ]
  %.sroa.25.sroa.11.0.i.i.i.i = phi i8 [ %.sroa.25.sroa.11.0.extract.trunc66.i.i.i.i, %.loopexit182.i.i.i.i ], [ undef, %.loopexit183.i.i.i.i ]
  %.sroa.25.sroa.10.0.i.i.i.i = phi i16 [ %.sroa.25.sroa.10.0.extract.trunc60.i.i.i.i, %.loopexit182.i.i.i.i ], [ undef, %.loopexit183.i.i.i.i ]
  %.sroa.25.sroa.9.0.i.i.i.i = phi i16 [ %.sroa.25.sroa.9.0.extract.trunc54.i.i.i.i, %.loopexit182.i.i.i.i ], [ undef, %.loopexit183.i.i.i.i ]
  %.sroa.25.sroa.8.0.i.i.i.i = phi i16 [ %.sroa.25.sroa.8.0.extract.trunc48.i.i.i.i, %.loopexit182.i.i.i.i ], [ undef, %.loopexit183.i.i.i.i ]
  %.sroa.25.sroa.0.0.i.i.i.i = phi i8 [ %.sroa.25.sroa.0.0.extract.trunc42.i.i.i.i, %.loopexit182.i.i.i.i ], [ undef, %.loopexit183.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !558
  br label %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i

bb.iu:                                            ; preds = %bb.ip
  %i.vw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !574
  unreachable

_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i: ; preds = %bb.is
  %i.vx = load <4 x i64>, ptr %i.s, align 8, !noalias !575 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.31.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.512.0..sroa_idx.i.i.i.i.i, i64 200, i1 false), !noalias !575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !558
  %i.vy = extractelement <4 x i64> %i.vx, i64 0
  %i.vz = icmp eq i64 %i.vy, 2
  br i1 %i.vz, label %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i, label %bb.iv

_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i: ; preds = %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i
  %i.wa = extractelement <4 x i64> %i.vx, i64 1   ; 2 uses
  %.sroa.10.sroa.12.0.extract.shift.le.i.i.i.i = and i64 %i.wa, -1099511627776
  %i.wb = extractelement <4 x i64> %i.vx, i64 3   ; 4 uses
  %.sroa.25.sroa.0.0.extract.trunc.le.i.i.i.i = trunc i64 %i.wb to i8
  %.sroa.25.sroa.8.0.extract.shift.le.i.i.i.i = lshr i64 %i.wb, 8
  %.sroa.25.sroa.8.0.extract.trunc.le.i.i.i.i = trunc i64 %.sroa.25.sroa.8.0.extract.shift.le.i.i.i.i to i16
  %.sroa.25.sroa.9.0.extract.shift.le.i.i.i.i = lshr i64 %i.wb, 24
  %.sroa.25.sroa.9.0.extract.trunc.le.i.i.i.i = trunc i64 %.sroa.25.sroa.9.0.extract.shift.le.i.i.i.i to i16
  %.sroa.25.sroa.10.0.extract.shift.le.i.i.i.i = lshr i64 %i.wb, 40
  %.sroa.25.sroa.10.0.extract.trunc.le.i.i.i.i = trunc i64 %.sroa.25.sroa.10.0.extract.shift.le.i.i.i.i to i16
  %i.wc = bitcast <4 x i64> %i.vx to <32 x i8>
  %.sroa.25.sroa.11.0.extract.trunc.le.i.i.i.i = extractelement <32 x i8> %i.wc, i64 31
  %i.wd = extractelement <4 x i64> %i.vx, i64 2
  br label %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i

_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i: ; preds = %.noexc.i.i29.i.i, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i, %.noexc33.i.i.i.i, %.loopexit170.i.i.i.i
  %.sroa.25.sroa.0.1169.i.i.i.i = phi i8 [ %.sroa.25.sroa.0.0.i.i.i.i, %.noexc33.i.i.i.i ], [ %.sroa.15.sroa.0.0.ph.i.i.i.i.i, %.loopexit170.i.i.i.i ], [ %.sroa.25.sroa.0.0.extract.trunc.le.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i ], [ undef, %.noexc.i.i29.i.i ]
  %.sroa.25.sroa.8.1168.i.i.i.i = phi i16 [ %.sroa.25.sroa.8.0.i.i.i.i, %.noexc33.i.i.i.i ], [ %.sroa.15.sroa.8.0.ph.i.i.i.i.i, %.loopexit170.i.i.i.i ], [ %.sroa.25.sroa.8.0.extract.trunc.le.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i ], [ undef, %.noexc.i.i29.i.i ]
  %.sroa.25.sroa.9.1167.i.i.i.i = phi i16 [ %.sroa.25.sroa.9.0.i.i.i.i, %.noexc33.i.i.i.i ], [ %.sroa.15.sroa.9.0.ph.i.i.i.i.i, %.loopexit170.i.i.i.i ], [ %.sroa.25.sroa.9.0.extract.trunc.le.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i ], [ undef, %.noexc.i.i29.i.i ]
  %.sroa.25.sroa.10.1166.i.i.i.i = phi i16 [ %.sroa.25.sroa.10.0.i.i.i.i, %.noexc33.i.i.i.i ], [ %.sroa.15.sroa.10.0.ph.i.i.i.i.i, %.loopexit170.i.i.i.i ], [ %.sroa.25.sroa.10.0.extract.trunc.le.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i ], [ undef, %.noexc.i.i29.i.i ]
  %.sroa.25.sroa.11.1165.i.i.i.i = phi i8 [ %.sroa.25.sroa.11.0.i.i.i.i, %.noexc33.i.i.i.i ], [ %.sroa.15.sroa.11.0.ph.i.i.i.i.i, %.loopexit170.i.i.i.i ], [ %.sroa.25.sroa.11.0.extract.trunc.le.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i ], [ undef, %.noexc.i.i29.i.i ]
  %.sroa.19.sroa.0.1164.in.i.i.i.i = phi i64 [ %.sroa.19.sroa.11.0.in.in.i.i.i.i, %.noexc33.i.i.i.i ], [ %i.rn, %.loopexit170.i.i.i.i ], [ %i.wd, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i ], [ %i.qn, %.noexc.i.i29.i.i ]
  %.sroa.10.sroa.11.1159.i.i.i.i = phi i64 [ %.sroa.10.sroa.0.0.i.i41.i.i, %.noexc33.i.i.i.i ], [ %.sroa.10.0.ph.i.i.i.i.i, %.loopexit170.i.i.i.i ], [ %i.wa, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i ], [ 0, %.noexc.i.i29.i.i ]
  %.sroa.10.sroa.12.1158.i.i.i.i = phi i64 [ %.sroa.10.sroa.12.0.i.i40.i.i, %.noexc33.i.i.i.i ], [ %.sroa.0117.sroa.0.5.extract.shift.i.i.i.i.i, %.loopexit170.i.i.i.i ], [ %.sroa.10.sroa.12.0.extract.shift.le.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.loopexit.split.loop.exit.i.i.i.i ], [ -9223372036854775808, %.noexc.i.i29.i.i ]
  %.sroa.10.sroa.10.0.insert.insert.i.i.i.i = and i64 %.sroa.10.sroa.11.1159.i.i.i.i, 1099511627775
  %.sroa.10.sroa.0.0.insert.insert.i.i.i.i = or i64 %.sroa.10.sroa.10.0.insert.insert.i.i.i.i, %.sroa.10.sroa.12.1158.i.i.i.i
  %.sroa.25.sroa.11.0.insert.ext.i.i.i.i = zext i8 %.sroa.25.sroa.11.1165.i.i.i.i to i64
  %.sroa.25.sroa.11.0.insert.shift.i.i.i.i = shl nuw i64 %.sroa.25.sroa.11.0.insert.ext.i.i.i.i, 56
  %.sroa.25.sroa.10.0.insert.ext.i.i.i.i = zext i16 %.sroa.25.sroa.10.1166.i.i.i.i to i64
  %.sroa.25.sroa.10.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.25.sroa.10.0.insert.ext.i.i.i.i, 40
  %.sroa.25.sroa.10.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.25.sroa.11.0.insert.shift.i.i.i.i, %.sroa.25.sroa.10.0.insert.shift.i.i.i.i
  %.sroa.25.sroa.9.0.insert.ext.i.i.i.i = zext i16 %.sroa.25.sroa.9.1167.i.i.i.i to i64
  %.sroa.25.sroa.9.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.25.sroa.9.0.insert.ext.i.i.i.i, 24
  %.sroa.25.sroa.9.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.25.sroa.10.0.insert.insert.i.i.i.i, %.sroa.25.sroa.9.0.insert.shift.i.i.i.i
  %.sroa.25.sroa.8.0.insert.ext.i.i.i.i = zext i16 %.sroa.25.sroa.8.1168.i.i.i.i to i64
  %.sroa.25.sroa.8.0.insert.shift.i.i.i.i = shl nuw nsw i64 %.sroa.25.sroa.8.0.insert.ext.i.i.i.i, 8
  %.sroa.25.sroa.8.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.25.sroa.9.0.insert.insert.i.i.i.i, %.sroa.25.sroa.8.0.insert.shift.i.i.i.i
  %.sroa.25.sroa.0.0.insert.ext.i.i.i.i = zext i8 %.sroa.25.sroa.0.1169.i.i.i.i to i64
  %.sroa.25.sroa.0.0.insert.insert.i.i.i.i = or disjoint i64 %.sroa.25.sroa.8.0.insert.insert.i.i.i.i, %.sroa.25.sroa.0.0.insert.ext.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.i.i.i.i)
  br label %bb.iz

bb.iv:                                            ; preds = %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.8.0..sroa_idx15.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.31.i.i.i.i, i64 200, i1 false), !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.31.i.i.i.i)
  store <4 x i64> %i.vx, ptr %i.t, align 8, !noalias !555
  %i.we = load i64, ptr %i.cu, align 8, !alias.scope !576, !noalias !555, !noundef !8 ; 3 uses
  %i.wf = load i64, ptr %i.u, align 8, !range !19, !alias.scope !576, !noalias !555, !noundef !8
  %i.wg = icmp eq i64 %i.we, %i.wf
  br i1 %i.wg, label %bb.iw, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataE8push_mutCskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i

bb.iw:                                            ; preds = %bb.iv
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataE8grow_oneCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataE8push_mutCskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i unwind label %bb.ix, !noalias !577

bb.ix:                                            ; preds = %bb.iw
  %i.wh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCscWUIX17zZnI_3zip5types11ZipFileDataECskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.t) #22
          to label %.body.i.i.i.i unwind label %bb.iy, !noalias !557

bb.iy:                                            ; preds = %bb.ix
  %i.wi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !noalias !557
  unreachable

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataE8push_mutCskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i: ; preds = %bb.iw, %bb.iv
  %i.wj = load ptr, ptr %i.ct, align 8, !alias.scope !576, !noalias !555, !nonnull !8, !noundef !8 ; 2 uses
  %i.wk = getelementptr inbounds nuw [232 x i8], ptr %i.wj, i64 %i.we
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.wk, ptr noundef nonnull align 8 dereferenceable(232) %i.t, i64 232, i1 false), !noalias !557
  %i.wl = add i64 %i.we, 1                        ; 2 uses
  store i64 %i.wl, ptr %i.cu, align 8, !alias.scope !576, !noalias !555
  %exitcond.not.i.i.i.i = icmp eq i64 %i.qj, %.sroa.5109.0.copyload.i.i
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i.i.i

bb.iz:                                            ; preds = %bb.je, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i
  %.sroa.1074.1.i.i = phi i64 [ -9223372036854775808, %bb.je ], [ %.sroa.10.sroa.0.0.insert.insert.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i ]
  %.sroa.1776.1.i.i = phi i64 [ %i.ws, %bb.je ], [ %.sroa.19.sroa.0.1164.in.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i ]
  %.sroa.2279.1.i.i = phi i64 [ undef, %bb.je ], [ %.sroa.25.sroa.0.0.insert.insert.i.i.i.i, %_RINvNtCscWUIX17zZnI_3zip4read26central_header_to_zip_fileINtNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreader9BufReaderNtNtCs5Xr050g3D4S_3std2fs4FileEECskVIURZGHVHJ_12tensor_tools.exit.thread.i.i.i.i ]
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCskVIURZGHVHJ_12tensor_tools(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.jc unwind label %bb.ja, !noalias !557

bb.ja:                                            ; preds = %bb.iz
  %i.wm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !578, !noalias !555 ; 2 uses
  %i.wn = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.wn, label %.thread158.i.i, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %.val3.i.i.i.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !578, !noalias !555, !nonnull !8, !noundef !8
  %i.wo = mul nuw i64 %.val2.i.i.i.i.i, 232
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %i.wo, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !557
  br label %.thread158.i.i

bb.jc:                                            ; preds = %bb.iz
  %.val.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !578, !noalias !555 ; 2 uses
  %i.wp = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.wp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %.val1.i.i.i.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !578, !noalias !555, !nonnull !8, !noundef !8
  %i.wq = mul nuw i64 %.val.i.i.i.i.i, 232
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.wq, i64 noundef range(i64 1, -9223372036854775807) 8) #23, !noalias !557
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCscWUIX17zZnI_3zip5types11ZipFileDataEECskVIURZGHVHJ_12tensor_tools.exit.i.i.i.i: ; preds = %bb.jd, %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !555
  br label %.thread170.i.i

bb.je:                                            ; preds = %bb.fv
  %i.wr = extractvalue { i64, ptr } %i.qg, 1
  %i.ws = ptrtoint ptr %i.wr to i64
  br label %bb.iz

bb.jf:                                            ; preds = %.body.i.i.i.i
  %i.wt = landingpad { ptr, i32 }
end_hunk_0
