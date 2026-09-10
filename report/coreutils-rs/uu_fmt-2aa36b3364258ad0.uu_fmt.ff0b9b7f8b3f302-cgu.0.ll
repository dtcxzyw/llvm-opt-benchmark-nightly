Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_fmt-2aa36b3364258ad0.uu_fmt.ff0b9b7f8b3f302-cgu.0?download=true
inline.NumInlined: 782
inline.NumDeleted: 499
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs2_Cs1mQHuhqOwPS_6uu_fmtNtB5_8FmtErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
.lr.ph150.i273:                                   ; preds = %.preheader.i271, %bb.bv
  %.sroa.0.4149.i274 = phi ptr [ %i.ly, %bb.bv ], [ %.sroa.0.0.i264, %.preheader.i271 ] ; 2 uses
  %.sroa.26.4148.i275 = phi i64 [ %i.lx, %bb.bv ], [ %.sroa.26.0.i263, %.preheader.i271 ]
  %.sroa.084.4147.i276 = phi i64 [ %i.ma, %bb.bv ], [ 0, %.preheader.i271 ]
  %i.ls = load i8, ptr %.sroa.0.4149.i274, align 1, !alias.scope !1716, !noalias !1717, !noundef !4
  %i.lt = zext i8 %i.ls to i32
  %i.lu = add nsw i32 %i.lt, -48                  ; 2 uses
  %i.lv = icmp ult i32 %i.lu, 10
  br i1 %i.lv, label %bb.bv, label %.loopexit529

bb.bv:                                            ; preds = %.lr.ph150.i273
  %i.lw = mul i64 %.sroa.084.4147.i276, 10
  %i.lx = add nsw i64 %.sroa.26.4148.i275, -1     ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i274, i64 1
  %i.lz = zext nneg i32 %i.lu to i64
  %i.ma = add i64 %i.lw, %i.lz                    ; 2 uses
  %.not105.i277 = icmp eq i64 %i.lx, 0
  br i1 %.not105.i277, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit280, label %.lr.ph150.i273

.loopexit:                                        ; preds = %.lr.ph.i, %bb.i, %bb.h, %.lr.ph141.i, %.preheader111.i, %bb.m, %bb.n, %.lr.ph150.i, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs1mQHuhqOwPS_6uu_fmt.exit, %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ay, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload388, i64 noundef %.sroa.8.0.copyload391) #22
  %i.mb = load i8, ptr %i.ay, align 8, !range !15, !noundef !4
  %i.mc = trunc nuw i8 %i.mb to i1
  br i1 %i.mc, label %bb.by, label %bb.bz

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.j, %bb.k, %bb.o, %bb.p, %.preheader.i, %.preheader114.i
  %.sroa.15395.0 = phi i64 [ %i.dk, %bb.p ], [ %i.cn, %bb.k ], [ %i.db, %bb.o ], [ 0, %.preheader.i ], [ 0, %.preheader114.i ], [ %i.ce, %bb.j ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 4, i64 noundef %.sroa.15395.0) #23
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bz, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aw) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.md = icmp eq i64 %.sroa.0.0.copyload385, 0
  br i1 %i.md, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit283, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload388, i64 noundef %.sroa.0.0.copyload385, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1718
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit283

bb.by:                                            ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store i64 %.sroa.0.0.copyload385, ptr %i.ax, align 8
  %.sroa.5.0..sroa_idx386 = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sroa.5.0.copyload388, ptr %.sroa.5.0..sroa_idx386, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %.sroa.8.0.copyload391, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ax) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 22, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aw) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit283

bb.bz:                                            ; preds = %.loopexit
  %i.me = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.mf = load double, ptr %i.me, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 4, double noundef %i.mf) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.bw

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit283: ; preds = %bb.bx, %bb.bw, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store ptr %i.bb, ptr %i.av, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.423.0..sroa_idx, align 8
  %i.mg = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.mh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8, !nonnull !4, !align !6, !noundef !4
  %i.mj = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.mg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.mi, ptr noundef nonnull @96, ptr noundef nonnull %i.av) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !1719)
  %.val.i284 = load i64, ptr %i.bb, align 8, !range !5, !alias.scope !1719, !noundef !4 ; 2 uses
  %i.mk = icmp eq i64 %.val.i284, 0
  br i1 %i.mk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit286, label %bb.ca

bb.ca:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit283
  %i.ml = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.val1.i285 = load ptr, ptr %i.ml, align 8, !alias.scope !1719, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i285, i64 noundef %.val.i284, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1719
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit286

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit286: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit283, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.cb

bb.cb:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit384, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit243, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit378, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit338, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit332, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit292, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit286
  %.sroa.0.1.in = phi i1 [ %i.mj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit286 ], [ %i.do, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit ], [ %i.mu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit292 ], [ %i.pf, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit332 ], [ %i.pq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit338 ], [ %i.rg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit378 ], [ %i.jq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit243 ], [ %i.rr, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit384 ]
  ret i1 %.sroa.0.1.in

.loopexit505:                                     ; preds = %.lr.ph.i166, %bb.z, %bb.y, %.lr.ph141.i176, %.preheader111.i183, %bb.ad, %bb.ae, %.lr.ph150.i191, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs1mQHuhqOwPS_6uu_fmt.exit164, %bb.u, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ap, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5398.0.copyload400, i64 noundef %.sroa.8402.0.copyload404) #22
  %i.mm = load i8, ptr %i.ap, align 8, !range !15, !noundef !4
  %i.mn = trunc nuw i8 %i.mm to i1
  br i1 %i.mn, label %bb.ce, label %bb.cf

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit198: ; preds = %bb.aa, %bb.ab, %bb.af, %bb.ag, %.preheader.i189, %.preheader114.i174
  %.sroa.15409.0 = phi i64 [ %i.fy, %bb.ag ], [ %i.fb, %bb.ab ], [ %i.fp, %bb.af ], [ 0, %.preheader.i189 ], [ 0, %.preheader114.i174 ], [ %i.es, %bb.aa ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 5, i64 noundef %.sroa.15409.0) #23
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cf, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.an) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.mo = icmp eq i64 %.sroa.0396.0.copyload397, 0
  br i1 %i.mo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit289, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5398.0.copyload400, i64 noundef %.sroa.0396.0.copyload397, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1720
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit289

bb.ce:                                            ; preds = %.loopexit505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i64 %.sroa.0396.0.copyload397, ptr %i.ao, align 8
  %.sroa.5398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %.sroa.5398.0.copyload400, ptr %.sroa.5398.0..sroa_idx, align 8
  %.sroa.8402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 %.sroa.8402.0.copyload404, ptr %.sroa.8402.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ao) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 23, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.an) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit289

bb.cf:                                            ; preds = %.loopexit505
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.mq = load double, ptr %i.mp, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 5, double noundef %i.mq) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.cc

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit289: ; preds = %bb.cd, %bb.cc, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr %i.as, ptr %i.am, align 8
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.457.0..sroa_idx, align 8
  %i.mr = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8, !nonnull !4, !align !6, !noundef !4
  %i.mu = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.mr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.mt, ptr noundef nonnull @96, ptr noundef nonnull %i.am) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  %.val.i290 = load i64, ptr %i.as, align 8, !range !5, !alias.scope !1721, !noundef !4 ; 2 uses
  %i.mv = icmp eq i64 %.val.i290, 0
  br i1 %i.mv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit292, label %bb.cg

bb.cg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit289
  %i.mw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.val1.i291 = load ptr, ptr %i.mw, align 8, !alias.scope !1721, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i291, i64 noundef %.val.i290, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1721
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit292

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit292: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit289, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.cb

bb.ch:                                            ; preds = %bb.ah, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.ah ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.gd) #26
  unreachable

bb.ci:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gf, ptr align 1 %i.gc, i64 %i.gd, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %cond = icmp eq i64 %i.gd, 1
  %i.mx = load i8, ptr %i.gf, align 1, !alias.scope !1722, !noalias !1723 ; 2 uses
  br i1 %cond, label %bb.cj, label %thread-pre-split.i324

bb.cj:                                            ; preds = %bb.ci
  switch i8 %i.mx, label %bb.cq [
    i8 43, label %.loopexit512
    i8 45, label %.loopexit512
  ]

thread-pre-split.i324:                            ; preds = %bb.ci
  switch i8 %i.mx, label %bb.cq [
    i8 43, label %bb.ck
    i8 45, label %bb.cl
  ]

bb.ck:                                            ; preds = %thread-pre-split.i324
  %i.my = getelementptr inbounds nuw i8, ptr %i.gf, i64 1
  %i.mz = add nsw i64 %i.gd, -1
  br label %bb.cq

bb.cl:                                            ; preds = %thread-pre-split.i324
  %i.na = getelementptr inbounds nuw i8, ptr %i.gf, i64 1 ; 2 uses
  %i.nb = add nsw i64 %i.gd, -1                   ; 2 uses
  %i.nc = icmp samesign ult i64 %i.gd, 17
  br i1 %i.nc, label %.lr.ph141.i304, label %.lr.ph.i294

.lr.ph.i294:                                      ; preds = %bb.cl, %bb.co
  %.sroa.0.1136.i295 = phi ptr [ %i.nd, %bb.co ], [ %i.na, %bb.cl ] ; 2 uses
  %.sroa.26.1135.i296 = phi i64 [ %i.ne, %bb.co ], [ %i.nb, %bb.cl ]
  %.sroa.084.0134.i297 = phi i64 [ %i.np, %bb.co ], [ 0, %bb.cl ]
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i295, i64 1
  %i.ne = add nsw i64 %.sroa.26.1135.i296, -1     ; 2 uses
  %i.nf = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i297, i64 10) ; 2 uses
  %i.ng = extractvalue { i64, i1 } %i.nf, 0
  %i.nh = extractvalue { i64, i1 } %i.nf, 1
  br i1 %i.nh, label %.loopexit512, label %bb.cm, !prof !14

bb.cm:                                            ; preds = %.lr.ph.i294
  %i.ni = load i8, ptr %.sroa.0.1136.i295, align 1, !alias.scope !1722, !noalias !1723, !noundef !4
  %i.nj = zext i8 %i.ni to i32
  %i.nk = add nsw i32 %i.nj, -48                  ; 2 uses
  %i.nl = icmp ult i32 %i.nk, 10
  br i1 %i.nl, label %bb.cn, label %.loopexit512

bb.cn:                                            ; preds = %bb.cm
  %i.nm = zext nneg i32 %i.nk to i64
  %i.nn = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ng, i64 %i.nm) ; 2 uses
  %i.no = extractvalue { i64, i1 } %i.nn, 1
  br i1 %i.no, label %.loopexit512, label %bb.co, !prof !14

bb.co:                                            ; preds = %bb.cn
  %i.np = extractvalue { i64, i1 } %i.nn, 0       ; 2 uses
  %.not102.i299 = icmp eq i64 %i.ne, 0
  br i1 %.not102.i299, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit326, label %.lr.ph.i294

.lr.ph141.i304:                                   ; preds = %bb.cl, %bb.cp
  %.sroa.0.2140.i305 = phi ptr [ %i.nw, %bb.cp ], [ %i.na, %bb.cl ] ; 2 uses
  %.sroa.26.2139.i306 = phi i64 [ %i.nv, %bb.cp ], [ %i.nb, %bb.cl ]
  %.sroa.084.2138.i307 = phi i64 [ %i.ny, %bb.cp ], [ 0, %bb.cl ]
  %i.nq = load i8, ptr %.sroa.0.2140.i305, align 1, !alias.scope !1722, !noalias !1723, !noundef !4
  %i.nr = zext i8 %i.nq to i32
  %i.ns = add nsw i32 %i.nr, -48                  ; 2 uses
  %i.nt = icmp ult i32 %i.ns, 10
  br i1 %i.nt, label %bb.cp, label %.loopexit512

bb.cp:                                            ; preds = %.lr.ph141.i304
  %i.nu = mul i64 %.sroa.084.2138.i307, 10
  %i.nv = add nsw i64 %.sroa.26.2139.i306, -1     ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i305, i64 1
  %i.nx = zext nneg i32 %i.ns to i64
  %i.ny = sub i64 %i.nu, %i.nx                    ; 2 uses
  %.not103.i308 = icmp eq i64 %i.nv, 0
  br i1 %.not103.i308, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit326, label %.lr.ph141.i304

bb.cq:                                            ; preds = %bb.cj, %bb.ck, %thread-pre-split.i324
  %.sroa.26.0.i309 = phi i64 [ %i.mz, %bb.ck ], [ %i.gd, %thread-pre-split.i324 ], [ %i.gd, %bb.cj ] ; 3 uses
  %.sroa.0.0.i310 = phi ptr [ %i.my, %bb.ck ], [ %i.gf, %thread-pre-split.i324 ], [ %i.gf, %bb.cj ] ; 2 uses
  %i.nz = icmp samesign ult i64 %.sroa.26.0.i309, 16
  br i1 %i.nz, label %.lr.ph150.i319, label %.preheader111.i311

.preheader111.i311:                               ; preds = %bb.cq, %bb.ct
  %.sroa.0.3145.i312 = phi ptr [ %i.oa, %bb.ct ], [ %.sroa.0.0.i310, %bb.cq ] ; 2 uses
  %.sroa.26.3144.i313 = phi i64 [ %i.ob, %bb.ct ], [ %.sroa.26.0.i309, %bb.cq ]
  %.sroa.084.3143.i314 = phi i64 [ %i.om, %bb.ct ], [ 0, %bb.cq ]
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i312, i64 1
  %i.ob = add nsw i64 %.sroa.26.3144.i313, -1     ; 2 uses
  %i.oc = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i314, i64 10) ; 2 uses
  %i.od = extractvalue { i64, i1 } %i.oc, 0
  %i.oe = extractvalue { i64, i1 } %i.oc, 1
  br i1 %i.oe, label %.loopexit512, label %bb.cr, !prof !14

bb.cr:                                            ; preds = %.preheader111.i311
  %i.of = load i8, ptr %.sroa.0.3145.i312, align 1, !alias.scope !1722, !noalias !1723, !noundef !4
  %i.og = zext i8 %i.of to i32
  %i.oh = add nsw i32 %i.og, -48                  ; 2 uses
  %i.oi = icmp ult i32 %i.oh, 10
  br i1 %i.oi, label %bb.cs, label %.loopexit512

bb.cs:                                            ; preds = %bb.cr
  %i.oj = zext nneg i32 %i.oh to i64
  %i.ok = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.od, i64 %i.oj) ; 2 uses
  %i.ol = extractvalue { i64, i1 } %i.ok, 1
  br i1 %i.ol, label %.loopexit512, label %bb.ct, !prof !14

bb.ct:                                            ; preds = %bb.cs
  %i.om = extractvalue { i64, i1 } %i.ok, 0       ; 2 uses
  %.not104.i316 = icmp eq i64 %i.ob, 0
  br i1 %.not104.i316, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit326, label %.preheader111.i311

.lr.ph150.i319:                                   ; preds = %bb.cq, %bb.cu
  %.sroa.0.4149.i320 = phi ptr [ %i.ot, %bb.cu ], [ %.sroa.0.0.i310, %bb.cq ] ; 2 uses
  %.sroa.26.4148.i321 = phi i64 [ %i.os, %bb.cu ], [ %.sroa.26.0.i309, %bb.cq ]
  %.sroa.084.4147.i322 = phi i64 [ %i.ov, %bb.cu ], [ 0, %bb.cq ]
  %i.on = load i8, ptr %.sroa.0.4149.i320, align 1, !alias.scope !1722, !noalias !1723, !noundef !4
  %i.oo = zext i8 %i.on to i32
  %i.op = add nsw i32 %i.oo, -48                  ; 2 uses
  %i.oq = icmp ult i32 %i.op, 10
  br i1 %i.oq, label %bb.cu, label %.loopexit512

bb.cu:                                            ; preds = %.lr.ph150.i319
  %i.or = mul i64 %.sroa.084.4147.i322, 10
  %i.os = add nsw i64 %.sroa.26.4148.i321, -1     ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i320, i64 1
  %i.ou = zext nneg i32 %i.op to i64
  %i.ov = add i64 %i.or, %i.ou                    ; 2 uses
  %.not105.i323 = icmp eq i64 %i.os, 0
  br i1 %.not105.i323, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit326, label %.lr.ph150.i319

.loopexit512:                                     ; preds = %.lr.ph.i294, %bb.cn, %bb.cm, %.lr.ph141.i304, %.preheader111.i311, %bb.cr, %bb.cs, %.lr.ph150.i319, %bb.cj, %bb.cj, %.thread
  %.ph = phi ptr [ %i.gf, %.preheader111.i311 ], [ %i.gf, %.lr.ph141.i304 ], [ %i.gf, %.lr.ph150.i319 ], [ %i.gf, %bb.cj ], [ inttoptr (i64 1 to ptr), %.thread ], [ %i.gf, %bb.cj ], [ %i.gf, %bb.cs ], [ %i.gf, %bb.cr ], [ %i.gf, %bb.cm ], [ %i.gf, %bb.cn ], [ %i.gf, %.lr.ph.i294 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.gd) #22
  %i.ow = load i8, ptr %i.aj, align 8, !range !15, !noundef !4
  %i.ox = trunc nuw i8 %i.ow to i1
  br i1 %i.ox, label %bb.cx, label %bb.cy

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit326: ; preds = %bb.co, %bb.cp, %bb.ct, %bb.cu
  %.sroa.15416.0 = phi i64 [ %i.om, %bb.ct ], [ %i.ny, %bb.cp ], [ %i.ov, %bb.cu ], [ %i.np, %bb.co ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 5, i64 noundef %.sroa.15416.0) #23
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cy, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit326
  %i.oy = phi ptr [ %.ph, %bb.cy ], [ %i.gf, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit326 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 28, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ah) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.oz = icmp eq i64 %i.gd, 0
  br i1 %i.oz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit329, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oy, i64 noundef %i.gd, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1724
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit329

bb.cx:                                            ; preds = %.loopexit512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i64 %i.gd, ptr %i.ai, align 8
  %.sroa.5411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.ph, ptr %.sroa.5411.0..sroa_idx, align 8
  %.sroa.8412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %i.gd, ptr %.sroa.8412.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ai) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 28, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ah) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit329

bb.cy:                                            ; preds = %.loopexit512
  %i.pa = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.pb = load double, ptr %i.pa, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 5, double noundef %i.pb) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.cv

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit329: ; preds = %bb.cw, %bb.cv, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.al, ptr %i.ag, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.475.0..sroa_idx, align 8
  %i.pc = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8, !nonnull !4, !align !6, !noundef !4
  %i.pf = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.pc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.pe, ptr noundef nonnull @96, ptr noundef nonnull %i.ag) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  %.val.i330 = load i64, ptr %i.al, align 8, !range !5, !alias.scope !1725, !noundef !4 ; 2 uses
  %i.pg = icmp eq i64 %.val.i330, 0
  br i1 %i.pg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit332, label %bb.cz

bb.cz:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit329
  %i.ph = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.val1.i331 = load ptr, ptr %i.ph, align 8, !alias.scope !1725, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i331, i64 noundef %.val.i330, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1725
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit332

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit332: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit329, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.cb

.loopexit519:                                     ; preds = %.lr.ph.i204, %bb.aq, %bb.ap, %.lr.ph141.i214, %.preheader111.i221, %bb.au, %bb.av, %.lr.ph150.i229, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs1mQHuhqOwPS_6uu_fmt.exit202, %bb.al, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5419.0.copyload421, i64 noundef %.sroa.8423.0.copyload425) #22
  %i.pi = load i8, ptr %i.ac, align 8, !range !15, !noundef !4
  %i.pj = trunc nuw i8 %i.pi to i1
  br i1 %i.pj, label %bb.dc, label %bb.dd

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit236: ; preds = %bb.ar, %bb.as, %bb.aw, %bb.ax, %.preheader.i227, %.preheader114.i212
  %.sroa.15430.0 = phi i64 [ %i.io, %bb.ax ], [ %i.hr, %bb.as ], [ %i.if, %bb.aw ], [ 0, %.preheader.i227 ], [ 0, %.preheader114.i212 ], [ %i.hi, %bb.ar ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 8, i64 noundef %.sroa.15430.0) #23
  br label %bb.da

bb.da:                                            ; preds = %bb.dd, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 26, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aa) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.pk = icmp eq i64 %.sroa.0417.0.copyload418, 0
  br i1 %i.pk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit335, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5419.0.copyload421, i64 noundef %.sroa.0417.0.copyload418, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1726
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit335

bb.dc:                                            ; preds = %.loopexit519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i64 %.sroa.0417.0.copyload418, ptr %i.ab, align 8
  %.sroa.5419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %.sroa.5419.0.copyload421, ptr %.sroa.5419.0..sroa_idx, align 8
  %.sroa.8423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %.sroa.8423.0.copyload425, ptr %.sroa.8423.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ab) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 26, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aa) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit335

bb.dd:                                            ; preds = %.loopexit519
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.pm = load double, ptr %i.pl, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs1mQHuhqOwPS_6uu_fmt(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 8, double noundef %i.pm) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %bb.da

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit335: ; preds = %bb.db, %bb.da, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.af, ptr %i.z, align 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.494.0..sroa_idx, align 8
  %i.pn = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !nonnull !4, !align !6, !noundef !4
  %i.pq = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.pn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.pp, ptr noundef nonnull @96, ptr noundef nonnull %i.z) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  %.val.i336 = load i64, ptr %i.af, align 8, !range !5, !alias.scope !1727, !noundef !4 ; 2 uses
  %i.pr = icmp eq i64 %.val.i336, 0
  br i1 %i.pr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit338, label %bb.de

bb.de:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit335
  %i.ps = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val1.i337 = load ptr, ptr %i.ps, align 8, !alias.scope !1727, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i337, i64 noundef %.val.i336, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1727
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit338

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit338: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs1mQHuhqOwPS_6uu_fmt.exit335, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.cb

bb.df:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i238
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %.sroa.0.05.i) #26
  unreachable

bb.dg:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jl, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0, i64 %.sroa.0.05.i, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.pt = load i8, ptr %i.jl, align 1, !alias.scope !1728, !noalias !1729 ; 2 uses
  br i1 %i.ir, label %bb.dh, label %thread-pre-split.i370

bb.dh:                                            ; preds = %bb.dg
  switch i8 %i.pt, label %.lr.ph150.i365.preheader [
    i8 43, label %.loopexit526
    i8 45, label %.loopexit526
  ]

thread-pre-split.i370:                            ; preds = %bb.dg
  switch i8 %i.pt, label %.lr.ph150.i365.preheader [
    i8 43, label %.preheader.i363
    i8 45, label %.preheader114.i348
  ]

.preheader114.i348:                               ; preds = %thread-pre-split.i370
  br i1 %i.ir, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit372, label %.lr.ph141.i350

.lr.ph141.i350:                                   ; preds = %.preheader114.i348
  %.sroa.0.2140.i351 = getelementptr inbounds nuw i8, ptr %i.jl, i64 1
  %i.pu = load i8, ptr %.sroa.0.2140.i351, align 1, !alias.scope !1728, !noalias !1729, !noundef !4
  %i.pv = zext i8 %i.pu to i32
  %i.pw = add nsw i32 %i.pv, -48                  ; 2 uses
  %i.px = icmp ult i32 %i.pw, 10
  br i1 %i.px, label %bb.di, label %.loopexit526

bb.di:                                            ; preds = %.lr.ph141.i350
  %i.py = zext nneg i32 %i.pw to i64              ; 2 uses
  %i.pz = sub nsw i64 0, %i.py
  br i1 %.not103.i354, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit372, label %.lr.ph141.i350.1

.lr.ph141.i350.1:                                 ; preds = %bb.di
  %.sroa.0.2140.i351.1 = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  %i.qa = load i8, ptr %.sroa.0.2140.i351.1, align 1, !alias.scope !1728, !noalias !1729, !noundef !4
  %i.qb = zext i8 %i.qa to i32
  %i.qc = add nsw i32 %i.qb, -48                  ; 2 uses
  %i.qd = icmp ult i32 %i.qc, 10
  br i1 %i.qd, label %bb.dj, label %.loopexit526

bb.dj:                                            ; preds = %.lr.ph141.i350.1
  %i.qe = mul nsw i64 %i.py, -10
  %i.qf = zext nneg i32 %i.qc to i64
  %i.qg = sub nsw i64 %i.qe, %i.qf                ; 2 uses
  br i1 %.not103.i354.1, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit372, label %.lr.ph141.i350.2

.lr.ph141.i350.2:                                 ; preds = %bb.dj
  %.sroa.0.2140.i351.2 = getelementptr inbounds nuw i8, ptr %i.jl, i64 3
  %i.qh = load i8, ptr %.sroa.0.2140.i351.2, align 1, !alias.scope !1728, !noalias !1729, !noundef !4
  %i.qi = zext i8 %i.qh to i32
  %i.qj = add nsw i32 %i.qi, -48                  ; 2 uses
  %i.qk = icmp ult i32 %i.qj, 10
  br i1 %i.qk, label %bb.dk, label %.loopexit526

bb.dk:                                            ; preds = %.lr.ph141.i350.2
  %i.ql = mul nsw i64 %i.qg, 10
end_hunk_0
