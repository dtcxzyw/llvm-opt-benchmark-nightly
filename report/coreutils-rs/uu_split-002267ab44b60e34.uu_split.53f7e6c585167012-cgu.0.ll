Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_split-002267ab44b60e34.uu_split.53f7e6c585167012-cgu.0?download=true
inline.NumInlined: 1204
inline.NumDeleted: 607
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvCs7cXCwYFNYaI_8uu_split5split:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1663
  store i64 0, ptr %i.l, align 8, !noalias !1663
  store ptr inttoptr (i64 1 to ptr), ptr %i.jd, align 8, !noalias !1663
  store i64 0, ptr %i.je, align 8, !noalias !1663
  %i.jn = call fastcc { i64, ptr } @_RINvNtNtCs7tKScEop1B6_5alloc2io8buf_read18default_read_untilINtNtNtB4_8buffered9bufreader9BufReaderQINtNtB6_5boxed3BoxDNtNtB4_4read4ReadEL_EEECs7cXCwYFNYaI_8uu_split(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.o, i8 noundef %i.jm, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #26, !noalias !1664 ; 2 uses
  %i.jo = extractvalue { i64, ptr } %i.jn, 0
  %i.jp = extractvalue { i64, ptr } %i.jn, 1      ; 2 uses
  %i.jq = trunc nuw i64 %i.jo to i1
  br i1 %i.jq, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jr = icmp eq ptr %i.jp, null
  br i1 %i.jr, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.sroa.0161.0.copyload.i = load i64, ptr %i.l, align 8, !noalias !1665
  %.sroa.8162.0.copyload.i = load ptr, ptr %i.jd, align 8, !noalias !1665
  %.sroa.10163.0.copyload.i = load i64, ptr %i.je, align 8, !noalias !1665
  br label %_RNvXs5_Cs7cXCwYFNYaI_8uu_splitINtB5_12LinesWithSepINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQINtNtBV_5boxed3BoxDNtNtBT_4read4ReadEL_EEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB5_.exit.i

bb.bp:                                            ; preds = %bb.bn, %bb.bm
  %.sroa.8162.0.i = phi ptr [ %i.jp, %bb.bm ], [ undef, %bb.bn ] ; 2 uses
  %.sroa.0161.0.i = phi i64 [ -1, %bb.bm ], [ -2, %bb.bn ] ; 2 uses
  %.val.i.i = load i64, ptr %i.l, align 8, !range !13, !noalias !1663, !noundef !8 ; 2 uses
  %i.js = icmp eq i64 %.val.i.i, 0
  br i1 %i.js, label %_RNvXs5_Cs7cXCwYFNYaI_8uu_splitINtB5_12LinesWithSepINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQINtNtBV_5boxed3BoxDNtNtBT_4read4ReadEL_EEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB5_.exit.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %.val4.i.i = load ptr, ptr %i.jd, align 8, !noalias !1663, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1666
  br label %_RNvXs5_Cs7cXCwYFNYaI_8uu_splitINtB5_12LinesWithSepINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQINtNtBV_5boxed3BoxDNtNtBT_4read4ReadEL_EEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB5_.exit.i

_RNvXs5_Cs7cXCwYFNYaI_8uu_splitINtB5_12LinesWithSepINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQINtNtBV_5boxed3BoxDNtNtBT_4read4ReadEL_EEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB5_.exit.i: ; preds = %bb.bq, %bb.bp, %bb.bo
  %.sroa.10163.0.i = phi i64 [ undef, %bb.bp ], [ undef, %bb.bq ], [ %.sroa.10163.0.copyload.i, %bb.bo ] ; 7 uses
  %.sroa.8162.1.i = phi ptr [ %.sroa.8162.0.i, %bb.bp ], [ %.sroa.8162.0.i, %bb.bq ], [ %.sroa.8162.0.copyload.i, %bb.bo ] ; 11 uses
  %.sroa.0161.1.i = phi i64 [ %.sroa.0161.0.i, %bb.bp ], [ %.sroa.0161.0.i, %bb.bq ], [ %.sroa.0161.0.copyload.i, %bb.bo ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1663
  switch i64 %.sroa.0161.1.i, label %.outer.preheader.i [
    i64 -2, label %bb.cs
    i64 -1, label %bb.ct
  ]

.outer.preheader.i:                               ; preds = %_RNvXs5_Cs7cXCwYFNYaI_8uu_splitINtB5_12LinesWithSepINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQINtNtBV_5boxed3BoxDNtNtBT_4read4ReadEL_EEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB5_.exit.i
  %scevgep.i = getelementptr i8, ptr %.sroa.8162.1.i, i64 %.sroa.10163.0.i
  %i.jt = getelementptr i8, ptr %scevgep.i, i64 -1
  %i.ju = icmp eq i64 %.sroa.025.0.i, 0
  br i1 %i.ju, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %.outer.preheader.i
  %i.jv = icmp eq i64 %.sroa.10163.0.i, %.sroa.025.0.i
  %i.jw = icmp ult i64 %.sroa.025.0.i, %i.ef
  %or.cond.peel.i.peel = and i1 %i.jw, %i.jv
  br i1 %or.cond.peel.i.peel, label %bb.bs, label %bb.ca

bb.bs:                                            ; preds = %bb.br
  %i.jx = load i8, ptr %i.jt, align 1, !noalias !1654, !noundef !8
  %.not111.peel.i.peel = icmp eq i8 %i.jx, %i.jc
  br i1 %.not111.peel.i.peel, label %bb.ca, label %bb.cc

bb.bt:                                            ; preds = %.outer.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1657
  call fastcc void @_RNCINvCs7cXCwYFNYaI_8uu_split10line_bytesINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBI_2io4read4ReadEL_EE0B4_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.n, ptr %i.r, ptr nonnull readonly align 8 dereferenceable(168) %0) #27
  %i.jy = load i32, ptr %i.n, align 8, !range !17, !noalias !1657, !noundef !8
  %i.jz = trunc nuw i32 %i.jy to i1
  br i1 %i.jz, label %.loopexit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.sroa.0105.0.copyload.peel.i.peel = load i32, ptr %i.jf, align 4, !noalias !1657
  %i.ka = load <2 x ptr>, ptr %.sroa.4106.0..sroa_idx.i, align 8, !noalias !1657
  %.sroa.6108.0.copyload.peel.i.peel = load i64, ptr %.sroa.6108.0..sroa_idx.i, align 8, !noalias !1657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1657
  %i.kb = load i32, ptr %i.q, align 4, !range !7, !alias.scope !1667, !noalias !1657, !noundef !8
  %i.kc = icmp eq i32 %i.kb, 2
  br i1 %i.kc, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_RNvXs2_NtNtCs7cXCwYFNYaI_8uu_split8platform4unixNtB5_12FilterWriterNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.q) #26, !noalias !1654
  call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  %.val.i.i.i.peel.i.peel = load i32, ptr %.sroa.523.0..sroa_idx.i, align 4, !alias.scope !1669, !noalias !1657, !noundef !8 ; 2 uses
  %i.kd = icmp eq i32 %.val.i.i.i.peel.i.peel, -1
  br i1 %i.kd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs2vKOLqTMYjT_3std3sys7process4unix4unix7ProcessECs7cXCwYFNYaI_8uu_split.exit.i.i.i.peel.i.peel, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ke = call noundef i32 @close(i32 noundef %.val.i.i.i.peel.i.peel) #26, !noalias !1670 ; 0 uses
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs2vKOLqTMYjT_3std3sys7process4unix4unix7ProcessECs7cXCwYFNYaI_8uu_split.exit.i.i.i.peel.i.peel

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs2vKOLqTMYjT_3std3sys7process4unix4unix7ProcessECs7cXCwYFNYaI_8uu_split.exit.i.i.i.peel.i.peel: ; preds = %bb.bw, %bb.bv
  %.val1.i.i.i.peel.i.peel = load i32, ptr %i.jg, align 4, !alias.scope !1669, !noalias !1657, !noundef !8 ; 2 uses
  %i.kf = icmp eq i32 %.val1.i.i.i.peel.i.peel, -1
  br i1 %i.kf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.peel.i.peel, label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs2vKOLqTMYjT_3std3sys7process4unix4unix7ProcessECs7cXCwYFNYaI_8uu_split.exit.i.i.i.peel.i.peel
  %i.kg = call noundef i32 @close(i32 noundef %.val1.i.i.i.peel.i.peel) #26, !noalias !1670 ; 0 uses
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.peel.i.peel

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.peel.i.peel: ; preds = %bb.bx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs2vKOLqTMYjT_3std3sys7process4unix4unix7ProcessECs7cXCwYFNYaI_8uu_split.exit.i.i.i.peel.i.peel
  %.val2.i.i.i.peel.i.peel = load i32, ptr %.sroa.624.0..sroa_idx.i, align 4, !alias.scope !1669, !noalias !1657, !noundef !8 ; 2 uses
  %i.kh = icmp eq i32 %.val2.i.i.i.peel.i.peel, -1
  br i1 %i.kh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process11ChildStdoutEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.peel.i.peel, label %bb.by

bb.by:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.peel.i.peel
  %i.ki = call noundef i32 @close(i32 noundef %.val2.i.i.i.peel.i.peel) #26, !noalias !1670 ; 0 uses
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process11ChildStdoutEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.peel.i.peel

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process11ChildStdoutEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.peel.i.peel: ; preds = %bb.by, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.peel.i.peel
  %.val3.i.i.i.peel.i.peel = load i32, ptr %i.jh, align 4, !alias.scope !1669, !noalias !1657, !noundef !8 ; 2 uses
  %i.kj = icmp eq i32 %.val3.i.i.i.peel.i.peel, -1
  br i1 %i.kj, label %.thread.peel.i.peel, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7cXCwYFNYaI_8uu_split8platform4unix12FilterWriterEBH_.exit.sink.split.i.peel.i.peel

bb.bz:                                            ; preds = %bb.bu
  %.val.i.i.peel.i.peel = load i32, ptr %.sroa.422.0..sroa_idx.i, align 4, !range !18, !alias.scope !1671, !noalias !1657, !noundef !8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7cXCwYFNYaI_8uu_split8platform4unix12FilterWriterEBH_.exit.sink.split.i.peel.i.peel

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7cXCwYFNYaI_8uu_split8platform4unix12FilterWriterEBH_.exit.sink.split.i.peel.i.peel: ; preds = %bb.bz, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process11ChildStdoutEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.peel.i.peel
  %.val3.i.i.sink.i.peel.i.peel = phi i32 [ %.val.i.i.peel.i.peel, %bb.bz ], [ %.val3.i.i.i.peel.i.peel, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process11ChildStdoutEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.peel.i.peel ]
  %i.kk = call noundef i32 @close(i32 noundef %.val3.i.i.sink.i.peel.i.peel) #26, !noalias !1654 ; 0 uses
  br label %.thread.peel.i.peel

.thread.peel.i.peel:                              ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7cXCwYFNYaI_8uu_split8platform4unix12FilterWriterEBH_.exit.sink.split.i.peel.i.peel, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process11ChildStdoutEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.peel.i.peel
  store i32 %.sroa.0105.0.copyload.peel.i.peel, ptr %i.q, align 4, !noalias !1657
  store <2 x ptr> %i.ka, ptr %.sroa.422.0..sroa_idx.i, align 4, !noalias !1657
  store i64 %.sroa.6108.0.copyload.peel.i.peel, ptr %.sroa.624.0..sroa_idx.i, align 4, !noalias !1657
  br label %bb.ca

bb.ca:                                            ; preds = %.thread.peel.i.peel, %bb.bs, %bb.br
  %.sroa.025.2186.peel.i.peel = phi i64 [ %i.ef, %.thread.peel.i.peel ], [ %.sroa.025.0.i, %bb.bs ], [ %.sroa.025.0.i, %bb.br ] ; 3 uses
  %.not112.peel.i.peel = icmp ugt i64 %.sroa.10163.0.i, %.sroa.025.2186.peel.i.peel
  br i1 %.not112.peel.i.peel, label %bb.cb, label %.loopexit242.i

bb.cb:                                            ; preds = %bb.ca
  %i.kl = icmp eq i64 %.sroa.025.2186.peel.i.peel, %i.ef
  br i1 %i.kl, label %.loopexit243.i.peel, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1657
  call fastcc void @_RNCINvCs7cXCwYFNYaI_8uu_split10line_bytesINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBI_2io4read4ReadEL_EE0B4_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.n, ptr %i.r, ptr nonnull readonly align 8 dereferenceable(168) %0) #27
  %i.km = load i32, ptr %i.n, align 8, !range !17, !noalias !1657, !noundef !8
  %i.kn = trunc nuw i32 %i.km to i1
  br i1 %i.kn, label %.loopexit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.sroa.0105.0.copyload.i.peel = load i32, ptr %i.jf, align 4, !noalias !1657
  %i.ko = load <2 x ptr>, ptr %.sroa.4106.0..sroa_idx.i, align 8, !noalias !1657
  %.sroa.6108.0.copyload.i.peel = load i64, ptr %.sroa.6108.0..sroa_idx.i, align 8, !noalias !1657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1657
  %i.kp = load i32, ptr %i.q, align 4, !range !7, !alias.scope !1667, !noalias !1657, !noundef !8
  %i.kq = icmp eq i32 %i.kp, 2
  br i1 %i.kq, label %bb.ci, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_RNvXs2_NtNtCs7cXCwYFNYaI_8uu_split8platform4unixNtB5_12FilterWriterNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.q) #26, !noalias !1654
  call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  %.val.i.i.i.i.peel = load i32, ptr %.sroa.523.0..sroa_idx.i, align 4, !alias.scope !1673, !noalias !1657, !noundef !8 ; 2 uses
  %i.kr = icmp eq i32 %.val.i.i.i.i.peel, -1
  br i1 %i.kr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs2vKOLqTMYjT_3std3sys7process4unix4unix7ProcessECs7cXCwYFNYaI_8uu_split.exit.i.i.i.i.peel, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ks = call noundef i32 @close(i32 noundef %.val.i.i.i.i.peel) #26, !noalias !1674 ; 0 uses
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs2vKOLqTMYjT_3std3sys7process4unix4unix7ProcessECs7cXCwYFNYaI_8uu_split.exit.i.i.i.i.peel

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs2vKOLqTMYjT_3std3sys7process4unix4unix7ProcessECs7cXCwYFNYaI_8uu_split.exit.i.i.i.i.peel: ; preds = %bb.cf, %bb.ce
  %.val1.i.i.i.i.peel = load i32, ptr %i.jg, align 4, !alias.scope !1673, !noalias !1657, !noundef !8 ; 2 uses
  %i.kt = icmp eq i32 %.val1.i.i.i.i.peel, -1
  br i1 %i.kt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.i.peel, label %bb.cg

bb.cg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs2vKOLqTMYjT_3std3sys7process4unix4unix7ProcessECs7cXCwYFNYaI_8uu_split.exit.i.i.i.i.peel
  %i.ku = call noundef i32 @close(i32 noundef %.val1.i.i.i.i.peel) #26, !noalias !1674 ; 0 uses
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.i.peel

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.i.peel: ; preds = %bb.cg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs2vKOLqTMYjT_3std3sys7process4unix4unix7ProcessECs7cXCwYFNYaI_8uu_split.exit.i.i.i.i.peel
  %.val2.i.i.i.i.peel = load i32, ptr %.sroa.624.0..sroa_idx.i, align 4, !alias.scope !1673, !noalias !1657, !noundef !8 ; 2 uses
  %i.kv = icmp eq i32 %.val2.i.i.i.i.peel, -1
  br i1 %i.kv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process11ChildStdoutEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.i.peel, label %bb.ch

bb.ch:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.i.peel
  %i.kw = call noundef i32 @close(i32 noundef %.val2.i.i.i.i.peel) #26, !noalias !1674 ; 0 uses
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process11ChildStdoutEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.i.peel

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process11ChildStdoutEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.i.peel: ; preds = %bb.ch, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process10ChildStdinEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.i.peel
  %.val3.i.i.i.i.peel = load i32, ptr %i.jh, align 4, !alias.scope !1673, !noalias !1657, !noundef !8 ; 2 uses
  %i.kx = icmp eq i32 %.val3.i.i.i.i.peel, -1
  br i1 %i.kx, label %bb.cj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7cXCwYFNYaI_8uu_split8platform4unix12FilterWriterEBH_.exit.sink.split.i.i.peel

bb.ci:                                            ; preds = %bb.cd
  %.val.i.i.i.peel = load i32, ptr %.sroa.422.0..sroa_idx.i, align 4, !range !18, !alias.scope !1671, !noalias !1657, !noundef !8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7cXCwYFNYaI_8uu_split8platform4unix12FilterWriterEBH_.exit.sink.split.i.i.peel

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7cXCwYFNYaI_8uu_split8platform4unix12FilterWriterEBH_.exit.sink.split.i.i.peel: ; preds = %bb.ci, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process11ChildStdoutEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.i.peel
  %.val3.i.i.sink.i.i.peel = phi i32 [ %.val.i.i.i.peel, %bb.ci ], [ %.val3.i.i.i.i.peel, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process11ChildStdoutEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.i.peel ]
  %i.ky = call noundef i32 @close(i32 noundef %.val3.i.i.sink.i.i.peel) #26, !noalias !1654 ; 0 uses
  br label %bb.cj

bb.cj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs7cXCwYFNYaI_8uu_split8platform4unix12FilterWriterEBH_.exit.sink.split.i.i.peel, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std7process11ChildStdoutEECs7cXCwYFNYaI_8uu_split.exit.i.i.i.i.peel
  store i32 %.sroa.0105.0.copyload.i.peel, ptr %i.q, align 4, !noalias !1657
  store <2 x ptr> %i.ko, ptr %.sroa.422.0..sroa_idx.i, align 4, !noalias !1657
  store i64 %.sroa.6108.0.copyload.i.peel, ptr %.sroa.624.0..sroa_idx.i, align 4, !noalias !1657
  %.not112.i.peel = icmp ugt i64 %.sroa.10163.0.i, %i.ef
  br i1 %.not112.i.peel, label %.loopexit243.i.peel, label %.loopexit242.i

.loopexit243.i.peel:                              ; preds = %bb.cj, %bb.cb
  %i.kz = call fastcc noundef ptr @_RNvYNtNtCs7cXCwYFNYaI_8uu_split8platform6WriterNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allB6_(ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.8162.1.i, i64 noundef range(i64 0, -9223372036854775808) %i.ef) #26, !noalias !1675 ; 8 uses
  %.not.i131.i.peel = icmp eq ptr %i.kz, null
  br i1 %.not.i131.i.peel, label %.outer.i.peel.next, label %bb.ck

bb.ck:                                            ; preds = %.loopexit243.i.peel
  %i.la = ptrtoint ptr %i.kz to i64               ; 4 uses
  %i.lb = and i64 %i.la, 3                        ; 2 uses
  switch i64 %i.lb, label %default.unreachable [
    i64 2, label %bb.co
    i64 3, label %bb.cn
    i64 0, label %bb.cm
    i64 1, label %bb.cl
  ], !prof !10

bb.cl:                                            ; preds = %bb.ck
  %i.lc = getelementptr i8, ptr %i.kz, i64 31
  %i.ld = load i8, ptr %i.lc, align 8, !range !11, !noalias !1675, !noundef !8
  br label %_RNvCs7cXCwYFNYaI_8uu_split18ignorable_io_error.exit.i132.i.peel

bb.cm:                                            ; preds = %bb.ck
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.lf = load i8, ptr %i.le, align 8, !range !11, !noalias !1675, !noundef !8
  br label %_RNvCs7cXCwYFNYaI_8uu_split18ignorable_io_error.exit.i132.i.peel

bb.cn:                                            ; preds = %bb.ck
  %i.lg = lshr i64 %i.la, 32
  %i.lh = icmp ult ptr %i.kz, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i137.i.peel = trunc i64 %i.lg to i8 ; 2 uses
  %i.li = icmp ne i8 %switch.idx.cast.i.i.i.i.i137.i.peel, -1
  call void @llvm.assume(i1 %i.lh)
  call void @llvm.assume(i1 %i.li)
  br label %_RNvCs7cXCwYFNYaI_8uu_split18ignorable_io_error.exit.i132.i.peel

bb.co:                                            ; preds = %bb.ck
  %i.lj = lshr i64 %i.la, 32
  %i.lk = trunc nuw i64 %i.lj to i32
  %i.ll = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #26, !noalias !1675
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !noalias !1675, !nonnull !8, !noundef !8
  %i.lo = call noundef i8 %i.ln(i32 noundef %i.lk) #26, !noalias !1675, !inline_history !1491
  br label %_RNvCs7cXCwYFNYaI_8uu_split18ignorable_io_error.exit.i132.i.peel

_RNvCs7cXCwYFNYaI_8uu_split18ignorable_io_error.exit.i132.i.peel: ; preds = %bb.co, %bb.cn, %bb.cm, %bb.cl
  %.sroa.0.0.i.i.i133.i.peel = phi i8 [ %i.lo, %bb.co ], [ %switch.idx.cast.i.i.i.i.i137.i.peel, %bb.cn ], [ %i.lf, %bb.cm ], [ %i.ld, %bb.cl ]
  %i.lp = icmp eq i8 %.sroa.0.0.i.i.i133.i.peel, 11
  %.sroa.0.0.i.i134.i.peel = select i1 %i.lp, i1 %i.jj, i1 false
  br i1 %.sroa.0.0.i.i134.i.peel, label %bb.cp, label %_RINvCs7cXCwYFNYaI_8uu_split16custom_write_allNtNtB2_8platform6WriterEB2_.exit138.i

bb.cp:                                            ; preds = %_RNvCs7cXCwYFNYaI_8uu_split18ignorable_io_error.exit.i132.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1676
  switch i64 %i.lb, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7cXCwYFNYaI_8uu_split.exit.i135.i.peel
    i64 3, label %bb.cr
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7cXCwYFNYaI_8uu_split.exit.i135.i.peel
    i64 1, label %bb.cq
  ], !prof !10

bb.cq:                                            ; preds = %bb.cp
  %i.lq = getelementptr i8, ptr %i.kz, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lq) ]
  store ptr %i.lq, ptr %i.jk, align 8, !alias.scope !1677, !noalias !1676
  store i8 3, ptr %i.j, align 8, !alias.scope !1677, !noalias !1676
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jk) #26, !noalias !1678
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7cXCwYFNYaI_8uu_split.exit.i135.i.peel

bb.cr:                                            ; preds = %bb.cp
  %i.lr = icmp ult ptr %i.kz, inttoptr (i64 188978561024 to ptr)
  %i.ls = and i64 %i.la, 1095216660480
  %i.lt = icmp ne i64 %i.ls, 1095216660480
  call void @llvm.assume(i1 %i.lr)
  call void @llvm.assume(i1 %i.lt)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7cXCwYFNYaI_8uu_split.exit.i135.i.peel

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7cXCwYFNYaI_8uu_split.exit.i135.i.peel: ; preds = %bb.cr, %bb.cq, %bb.cp, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1676
  br label %.outer.i.peel.next

.outer.i.peel.next:                               ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7cXCwYFNYaI_8uu_split.exit.i135.i.peel, %.loopexit243.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1657
  call fastcc void @_RNCINvCs7cXCwYFNYaI_8uu_split10line_bytesINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBI_2io4read4ReadEL_EE0B4_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.n, ptr %i.r, ptr nonnull readonly align 8 dereferenceable(168) %0) #27
  %i.lu = load i32, ptr %i.n, align 8, !range !17, !noalias !1657, !noundef !8
  %i.lv = trunc nuw i32 %i.lu to i1
  br i1 %i.lv, label %.loopexit.i, label %.lr.ph585

bb.cs:                                            ; preds = %_RNvXs5_Cs7cXCwYFNYaI_8uu_splitINtB5_12LinesWithSepINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQINtNtBV_5boxed3BoxDNtNtBT_4read4ReadEL_EEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB5_.exit.i
  %.val126.i = load i64, ptr %.sroa.031.sroa.2.0..sroa_idx.i, align 8, !noalias !1657, !noundef !8 ; 2 uses
  %i.lw = icmp eq i64 %.val126.i, 0
  br i1 %i.lw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtCs7cXCwYFNYaI_8uu_split12LinesWithSepINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQINtNtB1o_5boxed3BoxDNtNtB1m_4read4ReadEL_EEEEBE_.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.cs
  %.val125.i = load ptr, ptr %i.o, align 8, !noalias !1657, !nonnull !8, !noundef !8
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val125.i, i64 noundef %.val126.i, i64 noundef 1) #26, !noalias !1654
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtCs7cXCwYFNYaI_8uu_split12LinesWithSepINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQINtNtB1o_5boxed3BoxDNtNtB1m_4read4ReadEL_EEEEBE_.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtCs7cXCwYFNYaI_8uu_split12LinesWithSepINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQINtNtB1o_5boxed3BoxDNtNtB1m_4read4ReadEL_EEEEBE_.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1657
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7cXCwYFNYaI_8uu_split8platform6WriterEBF_(ptr noalias nofree noundef align 4 dereferenceable(28) %i.q) #26, !noalias !1654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1657
  br label %_RINvCs7cXCwYFNYaI_8uu_split10line_bytesINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBG_2io4read4ReadEL_EEB2_.exit

bb.ct:                                            ; preds = %_RNvXs5_Cs7cXCwYFNYaI_8uu_splitINtB5_12LinesWithSepINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderQINtNtBV_5boxed3BoxDNtNtBT_4read4ReadEL_EEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB5_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8162.1.i) ]
  %i.lx = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %.sroa.8162.1.i) #26, !noalias !1654 ; 2 uses
  %i.ly = extractvalue { ptr, ptr } %i.lx, 0
  %i.lz = extractvalue { ptr, ptr } %i.lx, 1
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs7cXCwYFNYaI_8uu_split.exit.i

.loopexit.i:                                      ; preds = %bb.cc, %bb.bt, %.outer.i.peel.next, %bb.dm
  %i.ma = load ptr, ptr %.sroa.4106.0..sroa_idx.i, align 8, !noalias !1657, !nonnull !8, !noundef !8
  %i.mb = load ptr, ptr %.sroa.5107.0..sroa_idx.i, align 8, !noalias !1657, !nonnull !8, !align !14, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1657
  br label %bb.cu

bb.cu:                                            ; preds = %_RINvCs7cXCwYFNYaI_8uu_split16custom_write_allNtNtB2_8platform6WriterEB2_.exit.i, %_RINvCs7cXCwYFNYaI_8uu_split16custom_write_allNtNtB2_8platform6WriterEB2_.exit138.i, %.loopexit.i
  %.sroa.8.1.i = phi ptr [ %i.mb, %.loopexit.i ], [ %i.ol, %_RINvCs7cXCwYFNYaI_8uu_split16custom_write_allNtNtB2_8platform6WriterEB2_.exit.i ], [ %i.nv, %_RINvCs7cXCwYFNYaI_8uu_split16custom_write_allNtNtB2_8platform6WriterEB2_.exit138.i ] ; 2 uses
  %.sroa.0.1.i = phi ptr [ %i.ma, %.loopexit.i ], [ %i.ok, %_RINvCs7cXCwYFNYaI_8uu_split16custom_write_allNtNtB2_8platform6WriterEB2_.exit.i ], [ %i.nu, %_RINvCs7cXCwYFNYaI_8uu_split16custom_write_allNtNtB2_8platform6WriterEB2_.exit138.i ] ; 2 uses
  %i.mc = icmp eq i64 %.sroa.0161.1.i, 0
  br i1 %i.mc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs7cXCwYFNYaI_8uu_split.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8162.1.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8162.1.i, i64 noundef %.sroa.0161.1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1654
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs7cXCwYFNYaI_8uu_split.exit.i

.loopexit242.i:                                   ; preds = %bb.ds, %bb.cj, %bb.ca
  %.sroa.075.0.ph.i.lcssa335 = phi ptr [ %.sroa.8162.1.i, %bb.ca ], [ %.sroa.8162.1.i, %bb.cj ], [ %.sroa.075.0.ph.i584, %bb.ds ]
  %.sroa.12.0.ph.i.lcssa332 = phi i64 [ %.sroa.10163.0.i, %bb.ca ], [ %.sroa.10163.0.i, %bb.cj ], [ %.sroa.12.0.ph.i583, %bb.ds ] ; 2 uses
  %.sroa.025.2186.lcssa.i = phi i64 [ %.sroa.025.2186.peel.i.peel, %bb.ca ], [ %i.ef, %bb.cj ], [ %i.ef, %bb.ds ]
  %i.md = call fastcc noundef ptr @_RNvYNtNtCs7cXCwYFNYaI_8uu_split8platform6WriterNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allB6_(ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.075.0.ph.i.lcssa335, i64 noundef range(i64 0, -9223372036854775808) %.sroa.12.0.ph.i.lcssa332) #26, !noalias !1679 ; 8 uses
  %.not.i.i = icmp eq ptr %i.md, null
  br i1 %.not.i.i, label %bb.dt, label %bb.cw

bb.cw:                                            ; preds = %.loopexit242.i
  %i.me = ptrtoint ptr %i.md to i64               ; 4 uses
  %i.mf = and i64 %i.me, 3                        ; 2 uses
  switch i64 %i.mf, label %default.unreachable [
    i64 2, label %bb.cx
    i64 3, label %bb.cy
    i64 0, label %bb.cz
    i64 1, label %bb.da
  ], !prof !10

bb.cx:                                            ; preds = %bb.cw
  %i.mg = lshr i64 %i.me, 32
  %i.mh = trunc nuw i64 %i.mg to i32
  %i.mi = call noundef nonnull align 8 ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions16get_os_functions() #26, !noalias !1679
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !noalias !1679, !nonnull !8, !noundef !8
  %i.ml = call noundef i8 %i.mk(i32 noundef %i.mh) #26, !noalias !1679, !inline_history !1491
  br label %_RNvCs7cXCwYFNYaI_8uu_split18ignorable_io_error.exit.i.i

bb.cy:                                            ; preds = %bb.cw
  %i.mm = lshr i64 %i.me, 32
  %i.mn = icmp ult ptr %i.md, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i.i.i = trunc i64 %i.mm to i8 ; 2 uses
  %i.mo = icmp ne i8 %switch.idx.cast.i.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.mn)
  call void @llvm.assume(i1 %i.mo)
  br label %_RNvCs7cXCwYFNYaI_8uu_split18ignorable_io_error.exit.i.i

bb.cz:                                            ; preds = %bb.cw
  %i.mp = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mq = load i8, ptr %i.mp, align 8, !range !11, !noalias !1679, !noundef !8
  br label %_RNvCs7cXCwYFNYaI_8uu_split18ignorable_io_error.exit.i.i

bb.da:                                            ; preds = %bb.cw
  %i.mr = getelementptr i8, ptr %i.md, i64 31
  %i.ms = load i8, ptr %i.mr, align 8, !range !11, !noalias !1679, !noundef !8
  br label %_RNvCs7cXCwYFNYaI_8uu_split18ignorable_io_error.exit.i.i

_RNvCs7cXCwYFNYaI_8uu_split18ignorable_io_error.exit.i.i: ; preds = %bb.da, %bb.cz, %bb.cy, %bb.cx
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.ml, %bb.cx ], [ %switch.idx.cast.i.i.i.i.i.i, %bb.cy ], [ %i.mq, %bb.cz ], [ %i.ms, %bb.da ]
  %i.mt = icmp eq i8 %.sroa.0.0.i.i.i.i, 11
  %.sroa.0.0.i.i.i103 = select i1 %i.mt, i1 %i.jj, i1 false
  br i1 %.sroa.0.0.i.i.i103, label %bb.db, label %_RINvCs7cXCwYFNYaI_8uu_split16custom_write_allNtNtB2_8platform6WriterEB2_.exit.i

bb.db:                                            ; preds = %_RNvCs7cXCwYFNYaI_8uu_split18ignorable_io_error.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1680
  switch i64 %i.mf, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7cXCwYFNYaI_8uu_split.exit.i.i
    i64 3, label %bb.dc
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7cXCwYFNYaI_8uu_split.exit.i.i
    i64 1, label %bb.dd
  ], !prof !10

bb.dc:                                            ; preds = %bb.db
  %i.mu = icmp ult ptr %i.md, inttoptr (i64 188978561024 to ptr)
  %i.mv = and i64 %i.me, 1095216660480
  %i.mw = icmp ne i64 %i.mv, 1095216660480
  call void @llvm.assume(i1 %i.mu)
  call void @llvm.assume(i1 %i.mw)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7cXCwYFNYaI_8uu_split.exit.i.i

bb.dd:                                            ; preds = %bb.db
  %i.mx = getelementptr i8, ptr %i.md, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mx) ]
  store ptr %i.mx, ptr %i.jl, align 8, !alias.scope !1681, !noalias !1680
  store i8 3, ptr %i.k, align 8, !alias.scope !1681, !noalias !1680
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jl) #26, !noalias !1682
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7cXCwYFNYaI_8uu_split.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7cXCwYFNYaI_8uu_split.exit.i.i: ; preds = %bb.dd, %bb.dc, %bb.db, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1680
  br label %bb.dt

.loopexit243.i:                                   ; preds = %bb.ds
  %i.my = call fastcc noundef ptr @_RNvYNtNtCs7cXCwYFNYaI_8uu_split8platform6WriterNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allB6_(ptr noalias nofree noundef nonnull align 4 dereferenceable(28) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.075.0.ph.i584, i64 noundef range(i64 0, -9223372036854775808) %i.ef) #26, !noalias !1675 ; 8 uses
  %.not.i131.i = icmp eq ptr %i.my, null
  br i1 %.not.i131.i, label %bb.dm, label %bb.de

bb.de:                                            ; preds = %.loopexit243.i
  %i.mz = ptrtoint ptr %i.my to i64               ; 4 uses
  %i.na = and i64 %i.mz, 3                        ; 2 uses
  switch i64 %i.na, label %default.unreachable [
end_hunk_0
