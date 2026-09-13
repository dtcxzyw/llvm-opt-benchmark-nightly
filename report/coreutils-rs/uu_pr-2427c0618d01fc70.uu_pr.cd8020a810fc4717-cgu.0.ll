Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_pr-2427c0618d01fc70.uu_pr.cd8020a810fc4717-cgu.0?download=true
inline.NumInlined: 1527
inline.NumDeleted: 885
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvCshDScVpnq8df_5uu_pr13build_options:bb.a
  store i64 -9223372036854775808, ptr %i.and, align 8
  %.sroa.4314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4314.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4314, i64 24, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4314)
  br label %bb.mc

bb.ma:                                            ; preds = %bb.lx
  %i.ane = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %.val.i.i775 = load i64, ptr %i.ane, align 8
  %.sroa.02.0.i.i = select i1 %.not574, i64 0, i64 %.val.i.i775
  %.sroa.0316.0 = select i1 %i.dy, i64 %3, i64 %.sroa.02.0.i.i
  %i.anf = icmp ult i64 %.sroa.0316.0, 2          ; 3 uses
  %brmerge = or i1 %.not574, %i.anf
  %.sroa.6234.0.mux = select i1 %i.anf, i64 %.sroa.6234.0, i64 72
  %.sroa.0233.0.mux = select i1 %i.anf, i64 %.sroa.0233.0, i64 1
  br i1 %brmerge, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtCshDScVpnq8df_5uu_pr17ColumnModeOptionsE6map_orjNCNvBL_13build_optionssi_0EBL_.exit, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %.val.i777 = load i64, ptr %.sroa.gep, align 8, !alias.scope !2130, !noundef !4
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtCshDScVpnq8df_5uu_pr17ColumnModeOptionsE6map_orjNCNvBL_13build_optionssi_0EBL_.exit

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtCshDScVpnq8df_5uu_pr17ColumnModeOptionsE6map_orjNCNvBL_13build_optionssi_0EBL_.exit: ; preds = %bb.ma, %bb.mb, %bb.lx
  %.sroa.6234.1 = phi i64 [ %.sroa.6234.0.mux, %bb.ma ], [ undef, %bb.lx ], [ %.val.i777, %bb.mb ]
  %.sroa.0233.1 = phi i64 [ %.sroa.0233.0.mux, %bb.ma ], [ 0, %bb.lx ], [ 1, %bb.mb ]
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.cy, i64 48, i1 false)
  %i.ang = zext i1 %i.rj to i8
  %i.anh = zext i1 %i.du to i8
  %i.ani = zext i1 %i.amy to i8
  store i64 %.sroa.0119.1, ptr %0, align 8
  %.sroa.4322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5121.1, ptr %.sroa.4322.0..sroa_idx, align 8
  %.sroa.5323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select1172, ptr %.sroa.5323.0..sroa_idx, align 8
  %.sroa.6324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %3, ptr %.sroa.6324.0..sroa_idx, align 8
  %.sroa.7325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0233.1, ptr %.sroa.7325.0..sroa_idx, align 8
  %.sroa.8326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.6234.1, ptr %.sroa.8326.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.val4.pn.i, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ep, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.val4.pn.i, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.10327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 1, ptr %.sroa.10327.0..sroa_idx, align 8
  %.sroa.10327.sroa.4.0..sroa.10327.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.rr, ptr %.sroa.10327.sroa.4.0..sroa.10327.0..sroa_idx.sroa_idx, align 8
  %.sroa.10327.sroa.5.0..sroa.10327.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 1, ptr %.sroa.10327.sroa.5.0..sroa.10327.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.9844.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.7841.0, ptr %.sroa.11.sroa.4.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.9844.0, ptr %.sroa.11.sroa.5.0..sroa.11.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.0850.0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.7852.0, ptr %.sroa.12.sroa.4.0..sroa.12.0..sroa_idx.sroa_idx, align 8
  %.sroa.12.sroa.5.0..sroa.12.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.9855.0, ptr %.sroa.12.sroa.5.0..sroa.12.0..sroa_idx.sroa_idx, align 8
  %.sroa.13328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.sroa.0877.0, ptr %.sroa.13328.0..sroa_idx, align 8
  %.sroa.13328.sroa.4.0..sroa.13328.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.7879.0, ptr %.sroa.13328.sroa.4.0..sroa.13328.0..sroa_idx.sroa_idx, align 8
  %.sroa.13328.sroa.5.0..sroa.13328.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %.sroa.9882.0, ptr %.sroa.13328.sroa.5.0..sroa.13328.0..sroa_idx.sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false)
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %.sroa.0804.0, ptr %.sroa.15.0..sroa_idx, align 8
  %.sroa.15.sroa.4.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %.sroa.8806.0, ptr %.sroa.15.sroa.4.0..sroa.15.0..sroa_idx.sroa_idx, align 8
  %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 1, ptr %.sroa.15.sroa.5.0..sroa.15.0..sroa_idx.sroa_idx, align 8
  %.sroa.15.sroa.6.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %.sroa.11812.0, ptr %.sroa.15.sroa.6.0..sroa.15.0..sroa_idx.sroa_idx, align 8
  %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %.sroa.12815.0, ptr %.sroa.15.sroa.7.0..sroa.15.0..sroa_idx.sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %.sroa.758.0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 %.sroa.1061.0, ptr %.sroa.18.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 %.sroa.0870.0, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %.sroa.0205.0, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 %.sroa.0303.0, ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 %i.ang, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 313
  store i8 %.sroa.0204.1, ptr %.sroa.23.0..sroa_idx, align 1
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 314
  store i8 %i.anh, ptr %.sroa.24.0..sroa_idx, align 2
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 315
  store i8 %i.ani, ptr %.sroa.25.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit796

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit796: ; preds = %bb.mi, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeEEBZ_.exit, %bb.c, %bb.e, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRNtCshDScVpnq8df_5uu_pr17ColumnModeOptionsE6map_orjNCNvBL_13build_optionssi_0EBL_.exit
  ret void

.split531:                                        ; preds = %bb.ly
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4312)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx)
  store i64 0, ptr %i.cx, align 8
  %.sroa.4507.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.amt, ptr %.sroa.4507.0..sroa_idx, align 8
  %.sroa.5508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i64 %i.amv, ptr %.sroa.5508.0..sroa_idx, align 8
  %i.anj = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i8 1, ptr %i.anj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  store ptr %i.cx, ptr %i.cw, align 8
  %.sroa.4512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4512.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4312, ptr noundef nonnull @77, ptr noundef nonnull %i.cw) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx)
  %i.ank = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.ank, align 8
  %.sroa.4312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4312.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4312, i64 24, i1 false)
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4312)
  br label %bb.mc

bb.mc:                                            ; preds = %.split531, %.split
  %.0.val.off.i = add nsw i64 %i.amh, -1
  %switch.i = icmp ult i64 %.0.val.off.i, -2
  br i1 %switch.i, label %bb.md, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshDScVpnq8df_5uu_pr17ColumnModeOptionsEEBZ_.exit

bb.md:                                            ; preds = %bb.mc
  %i.anl = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.val610 = load ptr, ptr %i.anl, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val610, i64 noundef %i.amh, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2131
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshDScVpnq8df_5uu_pr17ColumnModeOptionsEEBZ_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshDScVpnq8df_5uu_pr17ColumnModeOptionsEEBZ_.exit: ; preds = %bb.mc, %bb.md
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit764

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit764: ; preds = %bb.ky, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultjNtCshDScVpnq8df_5uu_pr7PrErrorEEB10_.exit770, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshDScVpnq8df_5uu_pr17ColumnModeOptionsEEBZ_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  %i.anm = icmp eq i64 %.sroa.0877.0, 0
  br i1 %i.anm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit782, label %bb.me

bb.me:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit764
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7879.0) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7879.0, i64 noundef %.sroa.0877.0, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2132
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit782

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit782: ; preds = %bb.il, %bb.iz, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit753, %bb.kc, %bb.jx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit764, %bb.me, %bb.iy, %bb.hz
  %i.ann = icmp eq i64 %.sroa.0850.0, 0
  br i1 %i.ann, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit791, label %bb.mf

bb.mf:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit782
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7852.0, i64 noundef %.sroa.0850.0, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2133
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit791

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit791: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit782, %bb.mf
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.rr, i64 noundef 1, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2134
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7841.0, i64 noundef %.sroa.9844.0, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2135
  br label %bb.mg

bb.mg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit791, %bb.cy
  br i1 %switch.i793.not, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeEEBZ_.exit, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8806.0) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8806.0, i64 noundef %.sroa.0804.0, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2136
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeEEBZ_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeEEBZ_.exit: ; preds = %bb.bi, %bb.mg, %bb.mh, %bb.s
  br i1 %i.em, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit796, label %bb.mi

bb.mi:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtCshDScVpnq8df_5uu_pr13NumberingModeEEBZ_.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ep, i64 noundef %.val4.pn.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2137
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit796
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvCshDScVpnq8df_5uu_pr15as_page_operand(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit: ; preds = %bb.a
  %rhsc = load i8, ptr %0, align 1
  %i.a = icmp eq i8 %rhsc, 43
  br i1 %i.a, label %bb.b, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11

bb.b:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit
  %i.b = add i64 %1, -1                           ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 10 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.f, %bb.b
  %i.d = phi i64 [ %i.s, %bb.f ], [ 0, %bb.b ]    ; 4 uses
  %i.e = sub nuw i64 %i.b, %i.d                   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d ; 2 uses
  %i.g = icmp samesign ult i64 %i.e, 16
  br i1 %i.g, label %.preheader.i.i.i, label %bb.c

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i
  %i.h = tail call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef range(i64 0, -9223372036854775808) %i.e) #30, !noalias !2158
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.d, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.e, %bb.d ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.d ], [ 1, %.lr.ph.i.i.i ]
  %i.i = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.j = insertvalue { i64, i64 } %i.i, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.d
  %.sroa.01.05.i.i.i = phi i64 [ %i.n, %bb.d ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.01.05.i.i.i
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !2159, !noalias !2158, !noundef !4
  %i.m = icmp eq i8 %i.l, 58
  br i1 %i.m, label %._crit_edge.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.n = add nuw nsw i64 %.sroa.01.05.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.n, %i.e
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.c
  %.merged.i.i.i = phi { i64, i64 } [ %i.j, %._crit_edge.i.i.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.o = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i
  %i.q = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 2 uses
  %i.r = add nuw i64 %i.d, 1
  %i.s = add i64 %i.r, %i.q                       ; 5 uses
  %.not12.i.i = icmp ugt i64 %i.s, %i.b
  %i.t = add i64 %i.q, %i.d                       ; 4 uses
  %or.cond.i.not.i = icmp ult i64 %i.t, %i.b
  br i1 %or.cond.i.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  br i1 %.not12.i.i, label %bb.j, label %.lr.ph.split.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %lhsc.i = load i8, ptr %i.u, align 1, !alias.scope !2160, !noalias !2161
  %i.v = icmp eq i8 %lhsc.i, 58
  br i1 %i.v, label %bb.h, label %bb.f

_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11: ; preds = %bb.l, %.lr.ph, %.lr.ph62, %bb.n, %.lr.ph64, %bb.k, %bb.m, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit, %bb.a, %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit, %bb.j, %bb.h
  %.sroa.4.0 = phi i64 [ 0, %bb.j ], [ undef, %.lr.ph62 ], [ undef, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit ], [ %i.b, %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit ], [ %i.b, %bb.m ], [ undef, %bb.h ], [ undef, %bb.a ], [ %i.b, %bb.n ], [ %i.b, %bb.k ], [ %i.b, %.lr.ph64 ], [ %i.b, %.lr.ph ], [ %i.b, %bb.l ]
  %.sroa.0.0 = phi ptr [ null, %bb.j ], [ null, %.lr.ph62 ], [ null, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit ], [ null, %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit ], [ %i.c, %bb.m ], [ null, %bb.h ], [ null, %bb.a ], [ null, %.lr.ph64 ], [ %i.c, %bb.k ], [ %i.c, %bb.n ], [ null, %.lr.ph ], [ %i.c, %bb.l ]
  %i.w = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.x = insertvalue { ptr, i64 } %i.w, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %i.x

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.s
  %i.aa = icmp eq i64 %i.t, 0
  br i1 %i.aa, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %.lr.ph62

bb.i:                                             ; preds = %.lr.ph62
  %i.ab = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  %.not.not.not.i.not.i = icmp eq ptr %i.ab, %i.y
  br i1 %.not.not.not.i.not.i, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit, label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.h, %bb.i
  %i.ac = phi ptr [ %i.ab, %bb.i ], [ %i.c, %bb.h ] ; 2 uses
  %.val.i.i = load i8, ptr %i.ac, align 1, !alias.scope !2162, !noalias !2163, !noundef !4
  %i.ad = add i8 %.val.i.i, -58
  %.sroa.0.0.i.i.i.i.i = icmp ult i8 %i.ad, -10
  br i1 %.sroa.0.0.i.i.i.i.i, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %bb.i

bb.j:                                             ; preds = %bb.f, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i
  %i.ae = icmp eq i64 %i.b, 0
  br i1 %i.ae, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr i8, ptr %0, i64 %1
  %.not.not.not.i.not.i758 = icmp eq i64 %1, 1
  br i1 %.not.not.not.i.not.i758, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %.lr.ph

bb.l:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  %.not.not.not.i.not.i7 = icmp eq ptr %i.ag, %i.af
  br i1 %.not.not.not.i.not.i7, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %i.ah = phi ptr [ %i.ag, %bb.l ], [ %i.c, %bb.k ] ; 2 uses
  %.val.i.i8 = load i8, ptr %i.ah, align 1, !alias.scope !2164, !noalias !2165, !noundef !4
  %i.ai = add i8 %.val.i.i8, -58
  %.sroa.0.0.i.i.i.i.i9 = icmp ult i8 %i.ai, -10
  br i1 %.sroa.0.0.i.i.i.i.i9, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %bb.l

_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit: ; preds = %bb.i
  %i.aj = icmp eq i64 %i.b, %i.s
  br i1 %i.aj, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %bb.m

bb.m:                                             ; preds = %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit
  %i.ak = getelementptr i8, ptr %0, i64 %1
  %i.al = add nuw nsw i64 %i.s, 1
  %.not.not.not.i.not.i1263 = icmp eq i64 %i.al, %1
  br i1 %.not.not.not.i.not.i1263, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %.lr.ph64

bb.n:                                             ; preds = %.lr.ph64
  %i.am = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %.not.not.not.i.not.i12 = icmp eq ptr %i.am, %i.ak
  br i1 %.not.not.not.i.not.i12, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.m, %bb.n
  %i.an = phi ptr [ %i.am, %bb.n ], [ %i.z, %bb.m ] ; 2 uses
  %.val.i.i13 = load i8, ptr %i.an, align 1, !alias.scope !2166, !noalias !2167, !noundef !4
  %i.ao = add i8 %.val.i.i13, -58
  %.sroa.0.0.i.i.i.i.i14 = icmp ult i8 %i.ao, -10
  br i1 %.sroa.0.0.i.i.i.i.i14, label %_RNCNvCshDScVpnq8df_5uu_pr15as_page_operand0B3_.exit11, label %bb.n
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCshDScVpnq8df_5uu_pr18recreate_arguments(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6.i = alloca [16 x i8], align 8          ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %i.g = alloca [24 x i8], align 8                ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 3 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 10 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMs3_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @93, i64 noundef 9) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !2281)
  call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  %i.u = load ptr, ptr %i.s, align 8, !alias.scope !2282, !noalias !2283, !noundef !4
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.b, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit33, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2284
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !2283
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #32, !noalias !2285
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit33: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.s, i64 32, i1 false), !alias.scope !2285, !noalias !2286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvMs3_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef 7) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !2287)
  call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  %i.x = load ptr, ptr %i.q, align 8, !alias.scope !2288, !noalias !2289, !noundef !4
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.c, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit32, !prof !8

bb.c:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2290
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !2289
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #32, !noalias !2291
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit32: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.q, i64 32, i1 false), !alias.scope !2291, !noalias !2292
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RNvMs3_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 3) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !2293)
  call void @llvm.experimental.noalias.scope.decl(metadata !2294)
  %i.aa = load ptr, ptr %i.o, align 8, !alias.scope !2294, !noalias !2295, !noundef !4
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.d, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit, !prof !8

bb.d:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2296
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !noalias !2295
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #32, !noalias !2297
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.o, i64 32, i1 false), !alias.scope !2297, !noalias !2298
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !2299)
  %i.ad = mul nuw nsw i64 %2, 24                  ; 2 uses
  %i.ae = icmp eq i64 %2, 0
  br i1 %i.ae, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !2300
  %i.af = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 9) 8) #30, !noalias !2300 ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.f, label %.lr.ph.preheader.i

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ad) #31, !noalias !2301
  unreachable

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.preheader.i
  %.sroa.0.021.i = phi ptr [ %i.al, %bb.g ], [ %1, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.7.020.i = phi i64 [ %i.ak, %bb.g ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.019.i = phi i64 [ %i.aj, %bb.g ], [ %2, %.lr.ph.preheader.i ]
  %i.ai = icmp eq ptr %.sroa.0.021.i, %i.ah
  br i1 %i.ai, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.aj = add nsw i64 %.sroa.10.019.i, -1         ; 2 uses
  %i.ak = add nuw nsw i64 %.sroa.7.020.i, 1
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 24
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %.sroa.7.020.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2301
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.021.i) #30, !noalias !2299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2301
  %i.an = icmp eq i64 %i.aj, 0
  br i1 %i.an, label %.loopexit, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.g, %.lr.ph.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit
  %.sroa.10.0.i29.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCshDScVpnq8df_5uu_pr.exit ], [ %i.af, %.lr.ph.i ], [ %i.af, %bb.g ]
  store i64 %2, ptr %i.n, align 8, !alias.scope !2299, !noalias !2302
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 7 uses
  store ptr %.sroa.10.0.i29.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2299, !noalias !2302
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 9 uses
  store i64 %2, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2299, !noalias !2302
  %.idx145 = mul nuw nsw i64 %2, 24
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %.idx145
  call void @llvm.experimental.noalias.scope.decl(metadata !2303)
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx4.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.7.0..sroa_idx5.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.9.0..sroa_idx6.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !2303, !noalias !2304, !nonnull !4
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !2303, !noalias !2304
  %i.aq = icmp eq i64 %2, 0
  br i1 %i.aq, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_arguments0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s_0EB2c_.exit.thread, label %.lr.ph

bb.h:                                             ; preds = %_RNCNvCshDScVpnq8df_5uu_pr18recreate_arguments0B3_.exit.thread.i.i.i.i.i
  %i.ar = icmp eq ptr %i.au, %i.ao
  br i1 %i.ar, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_arguments0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s_0EB2c_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit, %bb.h
  %i.as = phi ptr [ %i.au, %bb.h ], [ %1, %.loopexit ] ; 3 uses
  %i.at = phi i64 [ %i.bh, %bb.h ], [ 0, %.loopexit ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2305)
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !2305, !noalias !2306, !noundef !4 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !2305, !noalias !2306 ; 2 uses
  br i1 %i.ax, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_arguments0B3_.exit.i.i.i.i.i, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_arguments0B3_.exit.thread.i.i.i.i.i

_RNCNvCshDScVpnq8df_5uu_pr18recreate_arguments0B3_.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.ba = load i16, ptr %i.az, align 1
  %i.bb = icmp ne i16 %i.ba, 11565
  %i.bc = zext i1 %i.bb to i32
  %.not.i.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i.i, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_arguments0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s_0EB2c_.exit.thread, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_arguments0B3_.exit.thread.i.i.i.i.i

_RNCNvCshDScVpnq8df_5uu_pr18recreate_arguments0B3_.exit.thread.i.i.i.i.i: ; preds = %_RNCNvCshDScVpnq8df_5uu_pr18recreate_arguments0B3_.exit.i.i.i.i.i, %.lr.ph
  %i.bd = call fastcc { ptr, i64 } @_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef %i.aw) #30, !noalias !2307 ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 0
  %i.bf = extractvalue { ptr, i64 } %i.bd, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2307
  store i32 0, ptr %i.d, align 8, !noalias !2307
  store ptr %i.be, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !2307
end_hunk_0
begin_hunk_1_@_RNvCshDScVpnq8df_5uu_pr18recreate_arguments:bb.a
  %.sroa.4.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx63, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false), !noalias !2332
  %i.dw = add nuw nsw i64 %i.da, 2
  store i64 %i.dw, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2329, !noalias !2330
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_arguments0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s_0EB2c_.exit.thread

bb.w:                                             ; preds = %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0B3_.exit.thread.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !nonnull !4, !noundef !4
  %i.ea = load i64, ptr %i.dx, align 8, !noundef !4
  %i.eb = call fastcc { ptr, i64 } @_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dz, i64 noundef %i.ea) #30
  %i.ec = extractvalue { ptr, i64 } %i.eb, 1
  %i.ed = icmp ult i64 %i.ec, 3
  br i1 %i.ed, label %bb.ac, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s1_0EB2c_.exit.thread

_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s1_0EB2c_.exit.thread: ; preds = %bb.j, %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0B3_.exit.i.i.i.i.i, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_arguments0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s_0EB2c_.exit.thread, %bb.w, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit
  %i.ee = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.ef = load i64, ptr %i.n, align 8, !range !6, !noundef !4
  %i.eg = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noundef !4 ; 3 uses
  %i.eh = icmp ult i64 %i.eg, 384307168202282326
  call void @llvm.assume(i1 %i.eh)
  %.idx = mul nuw nsw i64 %i.eg, 24
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !2333)
  %.not14.i.i.i.i = icmp eq i64 %i.eg, 0
  br i1 %.not14.i.i.i.i, label %_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0EB2r_EB2R_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s1_0EB2c_.exit.thread, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter15filter_try_foldNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB19_3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B2Z_.exit.i.i.i.i
  %.sroa.0.0 = phi i1 [ %.sroa.0.1, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter15filter_try_foldNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB19_3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B2Z_.exit.i.i.i.i ], [ false, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s1_0EB2c_.exit.thread ]
  %i.ej = phi ptr [ %i.ek, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter15filter_try_foldNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB19_3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B2Z_.exit.i.i.i.i ], [ %i.ee, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s1_0EB2c_.exit.thread ] ; 4 uses
  %.sroa.4.015.i.i.i.i = phi ptr [ %.pn5.i.i.i.i.i, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter15filter_try_foldNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB19_3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B2Z_.exit.i.i.i.i ], [ %i.ee, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s1_0EB2c_.exit.thread ] ; 6 uses
  %.sroa.012.0.copyload.i.i.i.i = load i64, ptr %i.ej, align 8, !noalias !2334 ; 3 uses
  %.sroa.413.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.413.0.copyload.i.i.i.i = load ptr, ptr %.sroa.413.0..sroa_idx.i.i.i.i, align 8, !noalias !2334 ; 8 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !2334 ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24 ; 2 uses
  br i1 %.sroa.0.0, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.413.0.copyload.i.i.i.i) ]
  switch i64 %.sroa.5.0.copyload.i.i.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i.i.i.i.i.i.i [
    i64 2, label %bb.y
    i64 0, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.i.i.i.i.i
  ]

bb.y:                                             ; preds = %bb.x
  %i.el = load i16, ptr %.sroa.413.0.copyload.i.i.i.i, align 1
  %i.em = icmp ne i16 %i.el, 11565
  %i.en = zext i1 %i.em to i32
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread.i.i.i.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i.i.i.i.i.i.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %rhsc.i.i.i.i.i.i.i = load i8, ptr %.sroa.413.0.copyload.i.i.i.i, align 1, !alias.scope !2335, !noalias !2336
  %rhsc.fr.i.i.i.i.i.i.i = freeze i8 %rhsc.i.i.i.i.i.i.i
  %i.ep = icmp ne i8 %rhsc.fr.i.i.i.i.i.i.i, 45
  %i.eq = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i, 1
  %or.cond.i.i.i.i.i.i.i = or i1 %i.eq, %i.ep
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.i.i.i.i.i, label %.lr.ph144

.lr.ph144:                                        ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i.i.i.i.i.i.i
  %i.er = getelementptr i8, ptr %.sroa.413.0.copyload.i.i.i.i, i64 %.sroa.5.0.copyload.i.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload.i.i.i.i, i64 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.aa
  %i.et = getelementptr inbounds nuw i8, ptr %i.eu, i64 1 ; 2 uses
  %.not.not.not.i.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.et, %i.er
  br i1 %.not.not.not.i.not.i.i.i.i.i.i.i.i.i, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread2.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph144, %bb.z
  %i.eu = phi ptr [ %i.es, %.lr.ph144 ], [ %i.et, %bb.z ] ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.eu, align 1, !alias.scope !2337, !noalias !2338, !noundef !4
  %i.ev = add i8 %.val.i.i.i.i.i.i.i.i.i.i, -58
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ev, -10
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.i.i.i.i.i, label %bb.z

_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.i.i.i.i.i: ; preds = %bb.aa, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i.i.i.i.i.i.i, %bb.x
  %i.ew = call fastcc { ptr, i64 } @_RNvCshDScVpnq8df_5uu_pr15as_page_operand(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.413.0.copyload.i.i.i.i, i64 noundef %.sroa.5.0.copyload.i.i.i.i) #30, !noalias !2336
  %i.ex = extractvalue { ptr, i64 } %i.ew, 0
  %.not1.i.i.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not1.i.i.i.i.i.i, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread.i.i.i.i.i, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread2.i.i.i.i.i

_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread2.i.i.i.i.i: ; preds = %bb.z, %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.i.i.i.i.i
  %i.ey = icmp eq i64 %.sroa.012.0.copyload.i.i.i.i, 0
  br i1 %i.ey, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter15filter_try_foldNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB19_3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B2Z_.exit.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread2.i.i.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.413.0.copyload.i.i.i.i, i64 noundef %.sroa.012.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2339
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter15filter_try_foldNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB19_3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B2Z_.exit.i.i.i.i

_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread.i.i.i.i.i: ; preds = %bb.y, %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.2 = phi i1 [ true, %.lr.ph.i.i.i.i ], [ false, %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.i.i.i.i.i ], [ true, %bb.y ]
  store i64 %.sroa.012.0.copyload.i.i.i.i, ptr %.sroa.4.015.i.i.i.i, align 8, !noalias !2334
  %.sroa.7.16..sroa.4.0.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.015.i.i.i.i, i64 8
  store ptr %.sroa.413.0.copyload.i.i.i.i, ptr %.sroa.7.16..sroa.4.0.sroa_idx.i.i.i.i, align 8, !noalias !2334
  %.sroa.8.16..sroa.4.0.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.015.i.i.i.i, i64 16
  store i64 %.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.8.16..sroa.4.0.sroa_idx.i.i.i.i, align 8, !noalias !2334
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.4.015.i.i.i.i, i64 24
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter15filter_try_foldNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB19_3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B2Z_.exit.i.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter15filter_try_foldNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB19_3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B2Z_.exit.i.i.i.i: ; preds = %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread.i.i.i.i.i, %bb.ab, %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread2.i.i.i.i.i
  %.sroa.0.1 = phi i1 [ %.sroa.0.2, %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread.i.i.i.i.i ], [ false, %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread2.i.i.i.i.i ], [ false, %bb.ab ]
  %.pn5.i.i.i.i.i = phi ptr [ %i.ez, %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread.i.i.i.i.i ], [ %.sroa.4.015.i.i.i.i, %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread2.i.i.i.i.i ], [ %.sroa.4.015.i.i.i.i, %bb.ab ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ek, %i.ei
  br i1 %.not.i.i.i.i, label %_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0EB2r_EB2R_.exit, label %.lr.ph.i.i.i.i

_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0EB2r_EB2R_.exit: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter15filter_try_foldNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB19_3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B2Z_.exit.i.i.i.i, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s1_0EB2c_.exit.thread
  %.sroa.4.0.lcssa.i.i.i.i130 = phi ptr [ %i.ee, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s1_0EB2c_.exit.thread ], [ %.pn5.i.i.i.i.i, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter15filter_try_foldNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB19_3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B2Z_.exit.i.i.i.i ]
  %i.fa = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i130 to i64
  %i.fb = ptrtoint ptr %i.ee to i64
  %i.fc = sub nuw i64 %i.fa, %i.fb
  %i.fd = udiv exact i64 %i.fc, 24
  store i64 %i.ef, ptr %0, align 8, !alias.scope !2333, !noalias !2340
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ee, ptr %i.fe, align 8, !alias.scope !2333, !noalias !2340
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fd, ptr %i.ff, align 8, !alias.scope !2333, !noalias !2340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.p) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.r) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

bb.ac:                                            ; preds = %bb.w
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !2341
  %i.fg = call noundef dereferenceable_or_null(4) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef range(i64 1, 9) 1) #30, !noalias !2341 ; 3 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4) #31
  unreachable

bb.ae:                                            ; preds = %bb.ac
  store i32 940139821, ptr %i.fg, align 1
  %i.fi = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noundef !4 ; 2 uses
  %i.fj = icmp ult i64 %i.br, %i.fi
  br i1 %i.fj, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.fk = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !nonnull !4, !noundef !4
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %i.br ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2342)
  call void @llvm.experimental.noalias.scope.decl(metadata !2343)
  %.val.i.i60 = load i64, ptr %i.fl, align 8, !range !6, !alias.scope !2344, !noundef !4 ; 2 uses
  %i.fm = icmp eq i64 %.val.i.i60, 0
  br i1 %i.fm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %.val1.i.i61 = load ptr, ptr %i.fn, align 8, !alias.scope !2344, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i61, i64 noundef %.val.i.i60, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2344
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit: ; preds = %bb.af, %bb.ag
  store i64 4, ptr %i.fl, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store ptr %i.fg, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store i64 4, ptr %.sroa.525.0..sroa_idx, align 8
  br label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s1_0EB2c_.exit.thread

bb.ah:                                            ; preds = %bb.ae
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.br, i64 noundef %i.fi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #32
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCshDScVpnq8df_5uu_pr26parse_column_page_operands(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %2, 24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46
  %.sroa.0.0.ph144 = phi ptr [ %i.c, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46 ], [ %1, %bb.a ]
  %.sroa.0.054.ph143 = phi i64 [ %.sroa.0.054115, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46 ], [ -1, %bb.a ]
  %.sroa.7.0.ph142 = phi ptr [ %.sroa.7.0114, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46 ], [ undef, %bb.a ]
  %.sroa.9.0.ph141 = phi i64 [ %.sroa.9.0113, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46 ], [ undef, %bb.a ]
  %.sroa.10.0.ph139 = phi i64 [ %.sroa.10.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46 ], [ -1, %bb.a ] ; 4 uses
  %.sroa.14.0.ph137 = phi ptr [ %.sroa.14.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46 ], [ undef, %bb.a ] ; 4 uses
  %.sroa.16.0.ph135 = phi i64 [ %.sroa.16.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46 ], [ undef, %bb.a ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit
  %.sroa.0.0116 = phi ptr [ %.sroa.0.0.ph144, %.lr.ph ], [ %i.c, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit ] ; 3 uses
  %.sroa.0.054115 = phi i64 [ %.sroa.0.054.ph143, %.lr.ph ], [ %i.o, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit ] ; 7 uses
  %.sroa.7.0114 = phi ptr [ %.sroa.7.0.ph142, %.lr.ph ], [ %i.v, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit ] ; 5 uses
  %.sroa.9.0113 = phi i64 [ %.sroa.9.0.ph141, %.lr.ph ], [ %i.o, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0116, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0116, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0116, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 6 uses
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = load i16, ptr %i.h, align 1
  %i.j = icmp ne i16 %i.i, 11565
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.outer._crit_edge, label %.thread

bb.d:                                             ; preds = %bb.b
  %.not = icmp ne i64 %.sroa.0.054115, -1
  %.not.i.i = icmp eq i64 %i.f, 0
  %or.cond = or i1 %.not, %.not.i.i
  br i1 %or.cond, label %_RNvCshDScVpnq8df_5uu_pr17as_column_operand.exit.thread, label %._RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i_crit_edge

._RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i_crit_edge: ; preds = %bb.d
  %.pre = load ptr, ptr %i.d, align 8
  br label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i

.thread:                                          ; preds = %bb.c
  %.not55 = icmp eq i64 %.sroa.0.054115, -1
  br i1 %.not55, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i, label %_RNvCshDScVpnq8df_5uu_pr17as_column_operand.exit.thread

_RNvCshDScVpnq8df_5uu_pr17as_column_operand.exit.thread: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i, %.thread, %bb.d, %.lr.ph276
  %.not32 = icmp eq i64 %.sroa.10.0.ph139, -1
  br i1 %.not32, label %bb.j, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i: ; preds = %._RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i_crit_edge, %.thread
  %i.m = phi ptr [ %.pre, %._RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i_crit_edge ], [ %i.h, %.thread ] ; 3 uses
  %rhsc.i = load i8, ptr %i.m, align 1, !alias.scope !2359
  %rhsc.fr.i = freeze i8 %rhsc.i
  %i.n = icmp ne i8 %rhsc.fr.i, 45
  %i.o = add i64 %i.f, -1                         ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.q = icmp eq i64 %i.o, 0
  %or.cond.i = or i1 %i.q, %i.n
  br i1 %or.cond.i, label %_RNvCshDScVpnq8df_5uu_pr17as_column_operand.exit.thread, label %bb.e

bb.e:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i
  %i.r = getelementptr i8, ptr %i.m, i64 %i.f
  %.not.not.not.i.not.i.i.i275 = icmp eq i64 %i.f, 1
  br i1 %.not.not.not.i.not.i.i.i275, label %._crit_edge, label %.lr.ph276

bb.f:                                             ; preds = %.lr.ph276
  %i.s = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %.not.not.not.i.not.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.not.not.i.not.i.i.i, label %._crit_edge, label %.lr.ph276

.lr.ph276:                                        ; preds = %bb.e, %bb.f
  %i.t = phi ptr [ %i.s, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.val.i.i.i.i = load i8, ptr %i.t, align 1, !alias.scope !2360, !noalias !2361, !noundef !4
  %i.u = add i8 %.val.i.i.i.i, -58
  %.sroa.0.0.i.i.i.i.i.i.i = icmp ult i8 %i.u, -10
  br i1 %.sroa.0.0.i.i.i.i.i.i.i, label %_RNvCshDScVpnq8df_5uu_pr17as_column_operand.exit.thread, label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %.not.i = icmp slt i64 %i.o, 0
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !10

bb.g:                                             ; preds = %._crit_edge
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !2362
  %i.v = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.o, i64 noundef range(i64 1, 9) 1) #30, !noalias !2362 ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr.exit.thread66

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %.sroa.4.0.ph = phi i64 [ 1, %bb.g ], [ 0, %._crit_edge ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.o) #31
  unreachable

bb.i:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr.exit.thread66
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0114) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0114, i64 noundef %.sroa.0.054115, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2363
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr.exit.thread66, %bb.i
  %i.x = icmp eq ptr %i.c, %i.a
  br i1 %i.x, label %.outer._crit_edge, label %bb.b

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshDScVpnq8df_5uu_pr.exit.thread66: ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %i.p, i64 %i.o, i1 false)
  %i.y = icmp sgt i64 %.sroa.0.054115, 0
  br i1 %i.y, label %bb.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46: ; preds = %bb.o, %bb.l, %bb.j, %_RNvCshDScVpnq8df_5uu_pr17as_column_operand.exit.thread
  %.sroa.16.1 = phi i64 [ %.sroa.16.0.ph135, %bb.j ], [ %.sroa.16.0.ph135, %_RNvCshDScVpnq8df_5uu_pr17as_column_operand.exit.thread ], [ 0, %bb.l ], [ %i.ad, %bb.o ] ; 2 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.0.ph137, %bb.j ], [ %.sroa.14.0.ph137, %_RNvCshDScVpnq8df_5uu_pr17as_column_operand.exit.thread ], [ inttoptr (i64 1 to ptr), %bb.l ], [ %i.af, %bb.o ] ; 2 uses
  %.sroa.10.1 = phi i64 [ -1, %bb.j ], [ %.sroa.10.0.ph139, %_RNvCshDScVpnq8df_5uu_pr17as_column_operand.exit.thread ], [ 0, %bb.l ], [ %i.ad, %bb.o ] ; 2 uses
  %i.z = icmp eq ptr %i.c, %i.a
  br i1 %i.z, label %.outer._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %_RNvCshDScVpnq8df_5uu_pr17as_column_operand.exit.thread
  %i.aa = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.ab = tail call fastcc { ptr, i64 } @_RNvCshDScVpnq8df_5uu_pr15as_page_operand(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.f) #30 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0      ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ab, 1      ; 7 uses
  %.not33 = icmp eq ptr %i.ac, null
  br i1 %.not33, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not.i40 = icmp slt i64 %i.ad, 0
  br i1 %.not.i40, label %bb.n, label %bb.l, !prof !10

bb.l:                                             ; preds = %bb.k
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !2364
  %i.af = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 9) 1) #30, !noalias !2364 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.m
  %.sroa.451.0.ph = phi i64 [ 1, %bb.m ], [ 0, %bb.k ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.451.0.ph, i64 %i.ad) #31
  unreachable

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.ac, i64 %i.ad, i1 false)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46

.outer._crit_edge:                                ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit, %bb.c, %bb.a
  %.sroa.16.0.ph.lcssa = phi i64 [ %.sroa.16.0.ph135, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit ], [ undef, %bb.a ], [ %.sroa.16.0.ph135, %bb.c ], [ %.sroa.16.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46 ]
  %.sroa.14.0.ph.lcssa = phi ptr [ %.sroa.14.0.ph137, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit ], [ undef, %bb.a ], [ %.sroa.14.0.ph137, %bb.c ], [ %.sroa.14.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46 ]
  %.sroa.10.0.ph.lcssa = phi i64 [ %.sroa.10.0.ph139, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit ], [ -1, %bb.a ], [ %.sroa.10.0.ph139, %bb.c ], [ %.sroa.10.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46 ]
  %.sroa.9.0.lcssa = phi i64 [ %i.o, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit ], [ undef, %bb.a ], [ %.sroa.9.0113, %bb.c ], [ %.sroa.9.0113, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46 ]
  %.sroa.7.0.lcssa = phi ptr [ %i.v, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit ], [ undef, %bb.a ], [ %.sroa.7.0114, %bb.c ], [ %.sroa.7.0114, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46 ]
  %.sroa.0.054.lcssa = phi i64 [ %i.o, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit ], [ -1, %bb.a ], [ %.sroa.0.054115, %bb.c ], [ %.sroa.0.054115, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46 ]
  store i64 %.sroa.0.054.lcssa, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.lcssa, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0.lcssa, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.10.0.ph.lcssa, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.14.0.ph.lcssa, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.16.0.ph.lcssa, ptr %.sroa.16.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCshDScVpnq8df_5uu_pr2pr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [20 x i8], align 1                ; 4 uses
  %i.h = alloca [20 x i8], align 1                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 13 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 7 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call fastcc void @_RNvCshDScVpnq8df_5uu_pr11read_to_end(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #30
  %i.y = load i64, ptr %i.x, align 8, !range !21, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.y, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.0207.0.copyload = load i64, ptr %i.z, align 8 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.5208.0.copyload = load i64, ptr %.sroa.5208.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.y, ptr %0, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0207.0.copyload, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5208.0.copyload, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECshDScVpnq8df_5uu_pr.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.aa = tail call noundef nonnull align 8 ptr @_RNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stdout() #30
  store ptr %i.aa, ptr %i.v, align 8
  %i.ab = call noundef nonnull align 8 ptr @_RNvMsa_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.v) #30
  store ptr %i.ab, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call fastcc void @_RNvCshDScVpnq8df_5uu_pr9get_pages(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) %3, i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.0.copyload, i64 noundef %.sroa.5208.0.copyload) #30
  %.sroa.0178.0.copyload = load i64, ptr %i.u, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 8 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 288
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4 ; 2 uses
  %i.ag = icmp ugt i64 %i.af, %i.ad
  br i1 %i.ag, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.ah = icmp ult i64 %.sroa.8.0.copyload, 288230376151711744
  call void @llvm.assume(i1 %i.ah)
  %.idx = shl nuw nsw i64 %.sroa.8.0.copyload, 5
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 %.idx ; 5 uses
  %i.aj = icmp eq i64 %.sroa.8.0.copyload, 0
  br i1 %i.aj, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterTjINtB7_3VecNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB1a_.exit.thread, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterTjINtB7_3VecNtCshDScVpnq8df_5uu_pr8FileLineEEENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextB1a_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.s, align 8
  %i.ak = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s) #30
  store ptr %i.ak, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.al = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #30 ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0
  %i.an = extractvalue { ptr, i64 } %i.al, 1
  store ptr %i.am, ptr %i.r, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.an, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.r, ptr %i.q, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCshDScVpnq8df_5uu_pr, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2471
  store ptr %i.t, ptr %i.f, align 8, !noalias !2471
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr null, ptr %i.ap, align 8, !noalias !2471
  %i.aq = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @20, ptr noundef nonnull @21, ptr noundef nonnull %i.q) #30
  %i.ar = load ptr, ptr %i.ap, align 8, !noalias !2471, !noundef !4 ; 7 uses
  %.not.i5.i = icmp eq ptr %i.ar, null            ; 2 uses
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i5.i, label %bb.k, label %bb.l, !prof !8

end_hunk_1
