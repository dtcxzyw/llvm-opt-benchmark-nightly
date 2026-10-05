Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.00?download=true
inline.NumInlined: 1326
inline.NumDeleted: 379
begin_hunk_0_@_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser11parse_array:bb.a
  %i.ge = icmp eq i8 %i.ga, 7, !dbg !34521
  br i1 %i.ge, label %bb.bn, label %bb.bp, !dbg !34521

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5288.0.copyload.i) ]
    #dbg_value(ptr %.sroa.5288.0.copyload.i, !34205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33387)
    #dbg_value(i64 %.sroa.6289.0.copyload.i, !34205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33387)
    #dbg_value(ptr %.sroa.5288.0.copyload.i, !34285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33493)
    #dbg_value(i64 %.sroa.6289.0.copyload.i, !34285, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33493)
    #dbg_value(ptr poison, !34292, !DIExpression(), !33494)
    #dbg_value(ptr poison, !34286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33493)
    #dbg_value(i64 3, !34286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33493)
    #dbg_value(ptr poison, !34293, !DIExpression(), !33495)
    #dbg_value(i64 %.sroa.6289.0.copyload.i, !34287, !DIExpression(), !33496)
    #dbg_value(i64 %.sroa.6289.0.copyload.i, !34295, !DIExpression(), !33503)
    #dbg_value(i64 %.sroa.6289.0.copyload.i, !34298, !DIExpression(), !33504)
  %i.gf = icmp eq i64 %.sroa.6289.0.copyload.i, 3, !dbg !34522
  br i1 %i.gf, label %bb.bo, label %bb.bp, !dbg !34522

bb.bo:                                            ; preds = %bb.bn
    #dbg_value(ptr %.sroa.5288.0.copyload.i, !34296, !DIExpression(), !33503)
    #dbg_value(ptr poison, !34297, !DIExpression(), !33503)
  %i.gg = load i16, ptr %.sroa.5288.0.copyload.i, align 1, !dbg !34523
  %i.gh = xor i16 %i.gg, 28518, !dbg !34523
  %i.gi = getelementptr i8, ptr %.sroa.5288.0.copyload.i, i64 2, !dbg !34523
  %i.gj = load i8, ptr %i.gi, align 1, !dbg !34523
  %i.gk = zext i8 %i.gj to i16, !dbg !34523
  %i.gl = xor i16 %i.gk, 114, !dbg !34523
  %i.gm = or i16 %i.gh, %i.gl, !dbg !34523
  %i.gn = icmp ne i16 %i.gm, 0, !dbg !34523
  %i.go = zext i1 %i.gn to i32, !dbg !34523
  %i.gp = icmp eq i32 %i.go, 0, !dbg !34523
  br i1 %i.gp, label %bb.bq, label %bb.bp, !dbg !34521

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !dbg !34524, !noalias !34281
  store i8 %i.ga, ptr %i.be, align 8, !dbg !34524, !noalias !34281
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1, !dbg !34524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i, i64 7, i1 false), !dbg !34524, !noalias !34281
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !34524
  store ptr %.sroa.5288.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !34524, !noalias !34281
  %.sroa.631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !34524
  store i64 %.sroa.6289.0.copyload.i, ptr %.sroa.631.0..sroa_idx.i, align 8, !dbg !34524, !noalias !34281
  %.sroa.734.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24, !dbg !34524
  store i64 %.sroa.7290.0.copyload.i, ptr %.sroa.734.0..sroa_idx.i, align 8, !dbg !34524, !noalias !34281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !34525, !noalias !34281
    #dbg_value(ptr %i.be, !33828, !DIExpression(), !33505)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !34526, !noalias !34281
  store ptr %i.be, ptr %i.bb, align 8, !dbg !34526, !noalias !34281
  %.sroa.4307.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8, !dbg !34526
  store ptr @_RNvXs_NtNtCs5yXxDE1DkoT_4tera7parsing5lexerNtB4_5TokenNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4307.0..sroa_idx.i, align 8, !dbg !34526, !noalias !34281
    #dbg_value(ptr @111, !34303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34305)
    #dbg_value(ptr %i.bb, !34303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34305)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33509)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33509)
    #dbg_value(ptr poison, !3324, !DIExpression(), !33509)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !33510)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !33512)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bc, ptr noundef nonnull @111, ptr noundef nonnull %i.bb)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit291 unwind label %bb.fy, !dbg !34527

bb.bq:                                            ; preds = %bb.bo
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 1, !dbg !34528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.462.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.i, i64 7, i1 false), !dbg !34529, !noalias !34281
    #dbg_value(i8 %i.ga, !33912, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !33513)
    #dbg_value(ptr %.sroa.5288.0.copyload.i, !33912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33513)
    #dbg_value(i64 %.sroa.6289.0.copyload.i, !33912, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33513)
    #dbg_value(i64 %.sroa.7290.0.copyload.i, !33912, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !33513)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.11.i), !dbg !34518
    #dbg_value(i8 %i.ga, !33832, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !33514)
    #dbg_value(ptr %.sroa.5288.0.copyload.i, !33832, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33514)
    #dbg_value(i64 %.sroa.6289.0.copyload.i, !33832, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33514)
    #dbg_value(i64 %.sroa.7290.0.copyload.i, !33832, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !33514)
  %.sroa.462.sroa.7.0..sroa.462.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 32, !dbg !34528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.462.sroa.7.0..sroa.462.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.723.sroa.10.sroa.8.i, i64 48, i1 false), !dbg !34509
  store i8 7, ptr %i.bg, align 8, !dbg !34528, !noalias !34281
  %.sroa.462.sroa.4.0..sroa.462.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8, !dbg !34528
  store ptr %.sroa.5288.0.copyload.i, ptr %.sroa.462.sroa.4.0..sroa.462.0..sroa_idx.sroa_idx.i, align 8, !dbg !34528, !noalias !34281
  %.sroa.462.sroa.5.0..sroa.462.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16, !dbg !34528
  store i64 3, ptr %.sroa.462.sroa.5.0..sroa.462.0..sroa_idx.sroa_idx.i, align 8, !dbg !34528, !noalias !34281
  %.sroa.462.sroa.6.0..sroa.462.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 24, !dbg !34528
  store i64 %.sroa.7290.0.copyload.i, ptr %.sroa.462.sroa.6.0..sroa.462.0..sroa_idx.sroa_idx.i, align 8, !dbg !34528, !noalias !34281
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.bg)
          to label %bb.br unwind label %bb.bj, !dbg !34530, !noalias !34282, !inline_history !33481

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !dbg !34530, !noalias !34281
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.888.sroa.0.i), !dbg !34531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !34532, !noalias !34281
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser13next_or_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1)
          to label %bb.bs unwind label %bb.bj, !dbg !34533, !inline_history !33481

bb.bs:                                            ; preds = %bb.br
  %i.gq = load i8, ptr %i.k, align 8, !dbg !34534, !range !3290, !noundef !1314 ; 3 uses
  %i.gr = icmp eq i8 %i.gq, -1, !dbg !34534
  br i1 %i.gr, label %bb.bt, label %bb.bu, !dbg !34535

bb.bt:                                            ; preds = %bb.bs
  %i.gs = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !34536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.gs, i64 72, i1 false), !dbg !34537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !34538, !noalias !34281
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.888.sroa.0.i), !dbg !34539
  br label %bb.fx, !dbg !34519

bb.bu:                                            ; preds = %bb.bs
  %.sroa.4338.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !34540
    #dbg_value(i8 %i.gq, !33835, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !33515)
  %.sroa.497.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 1, !dbg !34541
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.497.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4338.0..sroa_idx.i, i64 79, i1 false), !dbg !34532
  store i8 %i.gq, ptr %i.az, align 8, !dbg !34541, !noalias !34281
  %i.gt = icmp eq i8 %i.gq, 7, !dbg !34542
  br i1 %i.gt, label %bb.bv, label %bb.bw, !dbg !34542

bb.bv:                                            ; preds = %bb.bu
  %i.gu = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !34543
  %i.gv = load ptr, ptr %i.gu, align 8, !dbg !34543, !noalias !34281, !nonnull !1314, !noundef !1314
  %i.gw = getelementptr inbounds nuw i8, ptr %i.az, i64 16, !dbg !34543
  %i.gx = load i64, ptr %i.gw, align 8, !dbg !34543, !noalias !34281, !noundef !1314
    #dbg_value(ptr %i.gv, !33936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33516)
    #dbg_value(i64 %i.gx, !33936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33516)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !33516)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !33516)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !33516)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !33516)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !33516)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !33516)
    #dbg_value(i8 -1, !33936, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !33516)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.az)
          to label %.thread373 unwind label %bb.bj, !dbg !34538, !noalias !34282, !inline_history !33481

.thread373:                                       ; preds = %bb.bv
    #dbg_value(i8 -1, !33936, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !33516)
    #dbg_value(ptr %i.gv, !33936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33516)
    #dbg_value(i64 %i.gx, !33936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33516)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !33516)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !33516)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !33516)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !33516)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !33516)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !33516)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !34538, !noalias !34281
  br label %bb.cb, !dbg !34544

bb.bw:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !dbg !34545, !noalias !34281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false), !dbg !34545, !noalias !34281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !dbg !34546, !noalias !34281
    #dbg_value(ptr %i.ay, !33840, !DIExpression(), !33517)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !34547, !noalias !34281
  store ptr %i.ay, ptr %i.av, align 8, !dbg !34547, !noalias !34281
  %.sroa.4342.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8, !dbg !34547
  store ptr @_RNvXs_NtNtCs5yXxDE1DkoT_4tera7parsing5lexerNtB4_5TokenNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4342.0..sroa_idx.i, align 8, !dbg !34547, !noalias !34281
    #dbg_value(ptr @56, !34303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34307)
    #dbg_value(ptr %i.av, !34303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34307)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33520)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33520)
    #dbg_value(ptr poison, !3324, !DIExpression(), !33520)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !33521)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !33523)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aw, ptr noundef nonnull @56, ptr noundef nonnull %i.av)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit289 unwind label %bb.by, !dbg !34548

bb.bx:                                            ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !34549, !noalias !34281
    #dbg_value(i8 %.sroa.086.0.copyload.i, !33936, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !33516)
    #dbg_value(ptr %.sroa.888.sroa.6.0.copyload.i, !33936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33516)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33516)
    #dbg_value(i64 %.sroa.888.sroa.9.sroa.12.0.copyload.i, !33936, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !33516)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !33516)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !33516)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !33516)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !33516)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !33516)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !34538, !noalias !34281
  %.not792.i = icmp eq i8 %.sroa.086.0.copyload.i, -1, !dbg !34550
  br i1 %.not792.i, label %bb.cb, label %bb.ca, !dbg !34544

bb.by:                                            ; preds = %bb.bw, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit289
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ay) #25
          to label %bb.gc unwind label %bb.dj, !dbg !34549, !noalias !34282, !inline_history !33481

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit289: ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !34551, !noalias !34281
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ax, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cm)
          to label %bb.bz unwind label %bb.by, !dbg !34546, !noalias !34282, !inline_history !33481

bb.bz:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit289
  %.sroa.086.0.copyload.i = load i8, ptr %i.ax, align 8, !dbg !34552, !noalias !34281 ; 2 uses
    #dbg_value(i8 %.sroa.086.0.copyload.i, !33936, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !33516)
  %.sroa.888.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 1, !dbg !34552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.888.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.888.0..sroa_idx.i, i64 7, i1 false), !dbg !34552, !noalias !34281
  %.sroa.888.sroa.6.0..sroa.888.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8, !dbg !34552
  %.sroa.888.sroa.6.0.copyload.i = load ptr, ptr %.sroa.888.sroa.6.0..sroa.888.0..sroa_idx.sroa_idx.i, align 8, !dbg !34552, !noalias !34281 ; 2 uses
    #dbg_value(ptr %.sroa.888.sroa.6.0.copyload.i, !33936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33516)
  %.sroa.888.sroa.8.0..sroa.888.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16, !dbg !34552 ; 2 uses
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33516)
  %i.gz = load <2 x i64>, ptr %.sroa.888.sroa.8.0..sroa.888.0..sroa_idx.sroa_idx.i, align 8, !dbg !34552, !noalias !34281
  %.sroa.888.sroa.8.0.copyload.i = load i64, ptr %.sroa.888.sroa.8.0..sroa.888.0..sroa_idx.sroa_idx.i, align 8, !dbg !34552, !noalias !34281
    #dbg_value(i64 %.sroa.888.sroa.8.0.copyload.i, !33936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33516)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !33516)
  %.sroa.888.sroa.9.sroa.8.0..sroa.888.sroa.9.0..sroa.888.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 32, !dbg !34552
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !33516)
  %i.ha = load <2 x i64>, ptr %.sroa.888.sroa.9.sroa.8.0..sroa.888.sroa.9.0..sroa.888.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !dbg !34552, !noalias !34281
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !33516)
  %.sroa.888.sroa.9.sroa.10.0..sroa.888.sroa.9.0..sroa.888.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 48, !dbg !34552
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !33516)
  %i.hb = load <2 x i64>, ptr %.sroa.888.sroa.9.sroa.10.0..sroa.888.sroa.9.0..sroa.888.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !dbg !34552, !noalias !34281
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !33516)
  %.sroa.888.sroa.9.sroa.12.0..sroa.888.sroa.9.0..sroa.888.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 64, !dbg !34552
  %.sroa.888.sroa.9.sroa.12.0.copyload.i = load i64, ptr %.sroa.888.sroa.9.sroa.12.0..sroa.888.sroa.9.0..sroa.888.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !dbg !34552, !noalias !34281
    #dbg_value(i64 %.sroa.888.sroa.9.sroa.12.0.copyload.i, !33936, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !33516)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !34553, !noalias !34281
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ay)
          to label %bb.bx unwind label %bb.bj, !dbg !34549, !noalias !34282, !inline_history !33481

bb.ca:                                            ; preds = %bb.bx
  %.sroa.4389.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !34554
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4389.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.888.sroa.0.i, i64 7, i1 false), !dbg !34555, !noalias !34283
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.888.sroa.0.i), !dbg !34539
    #dbg_value(i8 %.sroa.086.0.copyload.i, !33843, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !33524)
    #dbg_value(i8 %.sroa.086.0.copyload.i, !33797, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !33525)
    #dbg_value(ptr %.sroa.888.sroa.6.0.copyload.i, !33843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33524)
    #dbg_value(ptr %.sroa.888.sroa.6.0.copyload.i, !33797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33525)
    #dbg_value(i64 poison, !33843, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33524)
    #dbg_value(i64 poison, !33797, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33525)
    #dbg_value(i64 poison, !33843, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !33524)
    #dbg_value(i64 poison, !33797, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !33525)
    #dbg_value(i64 poison, !33843, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !33524)
    #dbg_value(i64 poison, !33797, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !33525)
    #dbg_value(i64 poison, !33843, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !33524)
    #dbg_value(i64 poison, !33797, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !33525)
    #dbg_value(i64 poison, !33843, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !33524)
    #dbg_value(i64 poison, !33797, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !33525)
    #dbg_value(i64 poison, !33843, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !33524)
    #dbg_value(i64 poison, !33797, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !33525)
    #dbg_value(i64 %.sroa.888.sroa.9.sroa.12.0.copyload.i, !33843, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !33524)
    #dbg_value(i64 %.sroa.888.sroa.9.sroa.12.0.copyload.i, !33797, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !33525)
    #dbg_value(i8 %.sroa.086.0.copyload.i, !33801, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !33526)
    #dbg_value(ptr %.sroa.888.sroa.6.0.copyload.i, !33801, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33526)
    #dbg_value(i64 poison, !33801, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33526)
    #dbg_value(i64 poison, !33801, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !33526)
    #dbg_value(i64 poison, !33801, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !33526)
    #dbg_value(i64 poison, !33801, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !33526)
    #dbg_value(i64 poison, !33801, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !33526)
    #dbg_value(i64 poison, !33801, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !33526)
    #dbg_value(i64 %.sroa.888.sroa.9.sroa.12.0.copyload.i, !33801, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !33526)
  store i8 %.sroa.086.0.copyload.i, ptr %0, align 8, !dbg !34554, !alias.scope !34186, !noalias !34283
  %.sroa.5390.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34554
  store ptr %.sroa.888.sroa.6.0.copyload.i, ptr %.sroa.5390.0..sroa_idx.i, align 8, !dbg !34554, !alias.scope !34186, !noalias !34283
  %.sroa.6391.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !34554
  store <2 x i64> %i.gz, ptr %.sroa.6391.0..sroa_idx.i, align 8, !dbg !34554, !alias.scope !34186, !noalias !34283
  %.sroa.8393.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !34554
  store <2 x i64> %i.ha, ptr %.sroa.8393.0..sroa_idx.i, align 8, !dbg !34554, !alias.scope !34186, !noalias !34283
  %.sroa.10395.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !34554
  store <2 x i64> %i.hb, ptr %.sroa.10395.0..sroa_idx.i, align 8, !dbg !34554, !alias.scope !34186, !noalias !34283
  %.sroa.12397.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !34554
  store i64 %.sroa.888.sroa.9.sroa.12.0.copyload.i, ptr %.sroa.12397.0..sroa_idx.i, align 8, !dbg !34554, !alias.scope !34186, !noalias !34283
  br label %bb.fx, !dbg !34556

bb.cb:                                            ; preds = %.thread373, %bb.bx
  %.sroa.888.sroa.6.0.i385 = phi ptr [ %i.gv, %.thread373 ], [ %.sroa.888.sroa.6.0.copyload.i, %bb.bx ]
  %.sroa.888.sroa.8.0.i384 = phi i64 [ %i.gx, %.thread373 ], [ %.sroa.888.sroa.8.0.copyload.i, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.888.sroa.0.i), !dbg !34539
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !dbg !34557, !noalias !34281
  store ptr %.sroa.888.sroa.6.0.i385, ptr %i.ba, align 8, !dbg !34557, !noalias !34281, !captures !4048
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8, !dbg !34557 ; 4 uses
  store i64 %.sroa.888.sroa.8.0.i384, ptr %i.hc, align 8, !dbg !34557, !noalias !34281
    #dbg_value(ptr @98, !34309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33529)
    #dbg_value(i64 16, !34309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33529)
    #dbg_value(ptr %i.ba, !34310, !DIExpression(), !33529)
  %i.hd = invoke noundef zeroext i1 @_RNvXsf_NtNtCsf3Ta7LF998c_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @98, i64 noundef 16)
          to label %bb.cc unwind label %bb.bj, !dbg !34558, !noalias !34282, !inline_history !33481

bb.cc:                                            ; preds = %bb.cb
  br i1 %i.hd, label %bb.ce, label %bb.cd, !dbg !34559

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !34560, !noalias !34281
  store i64 -1, ptr %i.ar, align 8, !dbg !34561, !noalias !34281
  %i.he = load i8, ptr %i.cz, align 8, !dbg !34562, !range !3052, !alias.scope !34187, !noalias !34282, !noundef !1314
  %cond.i = icmp eq i8 %i.he, 33, !dbg !34563
  br i1 %cond.i, label %bb.cg, label %bb.cf, !dbg !34563

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !34564, !noalias !34281
    #dbg_value(ptr %i.ba, !33846, !DIExpression(), !33530)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !34565, !noalias !34281
  store ptr %i.ba, ptr %i.as, align 8, !dbg !34565, !noalias !34281
  %.sroa.4401.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !34565
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs5yXxDE1DkoT_4tera, ptr %.sroa.4401.0..sroa_idx.i, align 8, !dbg !34565, !noalias !34281
    #dbg_value(ptr @112, !34303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34312)
    #dbg_value(ptr %i.as, !34303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34312)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33533)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33533)
    #dbg_value(ptr poison, !3324, !DIExpression(), !33533)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !33534)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !33536)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.at, ptr noundef nonnull @112, ptr noundef nonnull %i.as)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit287 unwind label %bb.bj, !dbg !34566

bb.cf:                                            ; preds = %bb.dg, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !34567, !noalias !34281
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7181.sroa.11.i), !dbg !34568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !34569, !noalias !34281
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser13next_or_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1)
          to label %bb.dl unwind label %bb.ci, !dbg !34570, !noalias !34282, !inline_history !33481

bb.cg:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !34571, !noalias !34281
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser13next_or_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1)
          to label %bb.cj unwind label %bb.ci, !dbg !34572, !inline_history !33481

bb.ch:                                            ; preds = %bb.fp
  br i1 %.sroa.0285.2.i.ph, label %.thread387, label %.thread336, !dbg !34573

bb.ci:                                            ; preds = %bb.cz, %bb.fr, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB13_.exit279, %bb.ds, %bb.dr, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit283, %bb.db, %bb.cy, %bb.cw, %bb.cu, %bb.cq, %bb.cm, %bb.cl, %bb.cg, %bb.cf
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %.thread387

bb.cj:                                            ; preds = %bb.cg
  %i.hg = load i8, ptr %i.j, align 8, !dbg !34574, !range !3290, !noundef !1314 ; 2 uses
  %i.hh = icmp eq i8 %i.hg, -1, !dbg !34574
  br i1 %i.hh, label %bb.ck, label %bb.cl, !dbg !34575

bb.ck:                                            ; preds = %bb.cj
  %i.hi = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !34576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.hi, i64 72, i1 false), !dbg !34577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !34578, !noalias !34281
  br label %bb.dk, !dbg !34579

bb.cl:                                            ; preds = %bb.cj
  %.sroa.4405.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1, !dbg !34580
    #dbg_value(i8 %i.hg, !33851, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !33537)
  %.sroa.4118.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 1, !dbg !34581
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4118.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4405.0..sroa_idx.i, i64 79, i1 false), !dbg !34571
  store i8 %i.hg, ptr %i.aq, align 8, !dbg !34581, !noalias !34281
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.aq)
          to label %bb.cm unwind label %bb.ci, !dbg !34578, !noalias !34282, !inline_history !33481

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !34578, !noalias !34281
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8149.sroa.0.i), !dbg !34582
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !34583, !noalias !34281
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser13next_or_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1)
          to label %bb.cn unwind label %bb.ci, !dbg !34584, !inline_history !33481

bb.cn:                                            ; preds = %bb.cm
  %i.hj = load i8, ptr %i.i, align 8, !dbg !34585, !range !3290, !noundef !1314 ; 3 uses
  %i.hk = icmp eq i8 %i.hj, -1, !dbg !34585
  br i1 %i.hk, label %bb.co, label %bb.cp, !dbg !34586

bb.co:                                            ; preds = %bb.cn
  %i.hl = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !34587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.hl, i64 72, i1 false), !dbg !34588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !34589, !noalias !34281
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8149.sroa.0.i), !dbg !34590
  br label %bb.dk, !dbg !34579

bb.cp:                                            ; preds = %bb.cn
  %.sroa.4407.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1, !dbg !34591
    #dbg_value(i8 %i.hj, !33854, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !33538)
  %.sroa.4158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 1, !dbg !34592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4158.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4407.0..sroa_idx.i, i64 79, i1 false), !dbg !34583
  store i8 %i.hj, ptr %i.ao, align 8, !dbg !34592, !noalias !34281
  %i.hm = icmp eq i8 %i.hj, 7, !dbg !34593
  br i1 %i.hm, label %bb.cq, label %bb.cr, !dbg !34593

bb.cq:                                            ; preds = %bb.cp
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !34594
  %i.ho = load ptr, ptr %i.hn, align 8, !dbg !34594, !noalias !34281, !nonnull !1314, !noundef !1314
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !34594
  %i.hq = load i64, ptr %i.hp, align 8, !dbg !34594, !noalias !34281, !noundef !1314
    #dbg_value(ptr %i.ho, !33936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33539)
    #dbg_value(i64 %i.hq, !33936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33539)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !33539)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !33539)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !33539)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !33539)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !33539)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !33539)
    #dbg_value(i8 -1, !33936, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !33539)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ao)
          to label %.thread391 unwind label %bb.ci, !dbg !34589, !noalias !34282, !inline_history !33481

.thread391:                                       ; preds = %bb.cq
    #dbg_value(i8 -1, !33936, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !33539)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !33539)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !33539)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !33539)
    #dbg_value(ptr %i.ho, !33936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33539)
    #dbg_value(i64 %i.hq, !33936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33539)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !33539)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !33539)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !33539)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !34589, !noalias !34281
  br label %bb.cw, !dbg !34595

bb.cr:                                            ; preds = %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !34596, !noalias !34281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false), !dbg !34596, !noalias !34281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !34597, !noalias !34281
    #dbg_value(ptr %i.an, !33859, !DIExpression(), !33540)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !34598, !noalias !34281
  store ptr %i.an, ptr %i.ak, align 8, !dbg !34598, !noalias !34281
  %.sroa.4411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !34598
  store ptr @_RNvXs_NtNtCs5yXxDE1DkoT_4tera7parsing5lexerNtB4_5TokenNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4411.0..sroa_idx.i, align 8, !dbg !34598, !noalias !34281
    #dbg_value(ptr @56, !34303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34315)
    #dbg_value(ptr %i.ak, !34303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34315)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33543)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33543)
    #dbg_value(ptr poison, !3324, !DIExpression(), !33543)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !33544)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !33546)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noundef nonnull @56, ptr noundef nonnull %i.ak)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit285 unwind label %bb.ct, !dbg !34599

bb.cs:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !34600, !noalias !34281
    #dbg_value(i8 %.sroa.0147.0.copyload.i, !33936, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !33539)
    #dbg_value(i64 %.sroa.8149.sroa.9.sroa.12.0.copyload.i, !33936, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !33539)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !33539)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !33539)
    #dbg_value(ptr %.sroa.8149.sroa.6.0.copyload.i, !33936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33539)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33539)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !33539)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !33539)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !33539)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !34589, !noalias !34281
  %.not.i = icmp eq i8 %.sroa.0147.0.copyload.i, -1, !dbg !34601
  br i1 %.not.i, label %bb.cw, label %bb.cv, !dbg !34595

bb.ct:                                            ; preds = %bb.cr, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit285
  %i.hr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.an) #25
          to label %.thread387 unwind label %bb.dj, !dbg !34600, !noalias !34282, !inline_history !33481

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit285: ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !34602, !noalias !34281
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.am, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cm)
          to label %bb.cu unwind label %bb.ct, !dbg !34597, !noalias !34282, !inline_history !33481

bb.cu:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit285
  %.sroa.0147.0.copyload.i = load i8, ptr %i.am, align 8, !dbg !34603, !noalias !34281 ; 2 uses
    #dbg_value(i8 %.sroa.0147.0.copyload.i, !33936, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !33539)
  %.sroa.8149.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !34603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8149.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8149.0..sroa_idx.i, i64 7, i1 false), !dbg !34603, !noalias !34281
  %.sroa.8149.sroa.6.0..sroa.8149.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !34603
  %.sroa.8149.sroa.6.0.copyload.i = load ptr, ptr %.sroa.8149.sroa.6.0..sroa.8149.0..sroa_idx.sroa_idx.i, align 8, !dbg !34603, !noalias !34281 ; 2 uses
    #dbg_value(ptr %.sroa.8149.sroa.6.0.copyload.i, !33936, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33539)
  %.sroa.8149.sroa.8.0..sroa.8149.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16, !dbg !34603 ; 2 uses
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33539)
  %i.hs = load <2 x i64>, ptr %.sroa.8149.sroa.8.0..sroa.8149.0..sroa_idx.sroa_idx.i, align 8, !dbg !34603, !noalias !34281
  %.sroa.8149.sroa.8.0.copyload.i = load i64, ptr %.sroa.8149.sroa.8.0..sroa.8149.0..sroa_idx.sroa_idx.i, align 8, !dbg !34603, !noalias !34281
    #dbg_value(i64 %.sroa.8149.sroa.8.0.copyload.i, !33936, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33539)
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !33539)
  %.sroa.8149.sroa.9.sroa.8.0..sroa.8149.sroa.9.0..sroa.8149.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32, !dbg !34603
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !33539)
  %i.ht = load <2 x i64>, ptr %.sroa.8149.sroa.9.sroa.8.0..sroa.8149.sroa.9.0..sroa.8149.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !dbg !34603, !noalias !34281
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !33539)
  %.sroa.8149.sroa.9.sroa.10.0..sroa.8149.sroa.9.0..sroa.8149.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 48, !dbg !34603
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !33539)
  %i.hu = load <2 x i64>, ptr %.sroa.8149.sroa.9.sroa.10.0..sroa.8149.sroa.9.0..sroa.8149.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !dbg !34603, !noalias !34281
    #dbg_value(i64 poison, !33936, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !33539)
  %.sroa.8149.sroa.9.sroa.12.0..sroa.8149.sroa.9.0..sroa.8149.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 64, !dbg !34603
  %.sroa.8149.sroa.9.sroa.12.0.copyload.i = load i64, ptr %.sroa.8149.sroa.9.sroa.12.0..sroa.8149.sroa.9.0..sroa.8149.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !dbg !34603, !noalias !34281
    #dbg_value(i64 %.sroa.8149.sroa.9.sroa.12.0.copyload.i, !33936, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !33539)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !34604, !noalias !34281
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.an)
          to label %bb.cs unwind label %bb.ci, !dbg !34600, !noalias !34282, !inline_history !33481

bb.cv:                                            ; preds = %bb.cs
  %.sroa.4461.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !34605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4461.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8149.sroa.0.i, i64 7, i1 false), !dbg !34606, !noalias !34283
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8149.sroa.0.i), !dbg !34590
    #dbg_value(i8 %.sroa.0147.0.copyload.i, !33862, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !33547)
    #dbg_value(i8 %.sroa.0147.0.copyload.i, !33797, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !33548)
    #dbg_value(ptr %.sroa.8149.sroa.6.0.copyload.i, !33862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33547)
    #dbg_value(ptr %.sroa.8149.sroa.6.0.copyload.i, !33797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33548)
    #dbg_value(i64 poison, !33862, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33547)
    #dbg_value(i64 poison, !33797, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33548)
    #dbg_value(i64 poison, !33862, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !33547)
    #dbg_value(i64 poison, !33797, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !33548)
    #dbg_value(i64 poison, !33862, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !33547)
    #dbg_value(i64 poison, !33797, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !33548)
    #dbg_value(i64 poison, !33862, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !33547)
    #dbg_value(i64 poison, !33797, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !33548)
    #dbg_value(i64 poison, !33862, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !33547)
    #dbg_value(i64 poison, !33797, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !33548)
    #dbg_value(i64 poison, !33862, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !33547)
    #dbg_value(i64 poison, !33797, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !33548)
    #dbg_value(i64 %.sroa.8149.sroa.9.sroa.12.0.copyload.i, !33862, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !33547)
    #dbg_value(i64 %.sroa.8149.sroa.9.sroa.12.0.copyload.i, !33797, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !33548)
    #dbg_value(i8 %.sroa.0147.0.copyload.i, !33804, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !33549)
    #dbg_value(ptr %.sroa.8149.sroa.6.0.copyload.i, !33804, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33549)
    #dbg_value(i64 poison, !33804, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33549)
    #dbg_value(i64 poison, !33804, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !33549)
    #dbg_value(i64 poison, !33804, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !33549)
    #dbg_value(i64 poison, !33804, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !33549)
    #dbg_value(i64 poison, !33804, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !33549)
    #dbg_value(i64 poison, !33804, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !33549)
    #dbg_value(i64 %.sroa.8149.sroa.9.sroa.12.0.copyload.i, !33804, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !33549)
  store i8 %.sroa.0147.0.copyload.i, ptr %0, align 8, !dbg !34605, !alias.scope !34186, !noalias !34283
  %.sroa.5462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !34605
  store ptr %.sroa.8149.sroa.6.0.copyload.i, ptr %.sroa.5462.0..sroa_idx.i, align 8, !dbg !34605, !alias.scope !34186, !noalias !34283
  %.sroa.6463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !34605
  store <2 x i64> %i.hs, ptr %.sroa.6463.0..sroa_idx.i, align 8, !dbg !34605, !alias.scope !34186, !noalias !34283
  %.sroa.8465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !34605
  store <2 x i64> %i.ht, ptr %.sroa.8465.0..sroa_idx.i, align 8, !dbg !34605, !alias.scope !34186, !noalias !34283
  %.sroa.10467.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !34605
  store <2 x i64> %i.hu, ptr %.sroa.10467.0..sroa_idx.i, align 8, !dbg !34605, !alias.scope !34186, !noalias !34283
  %.sroa.12469.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !34605
  store i64 %.sroa.8149.sroa.9.sroa.12.0.copyload.i, ptr %.sroa.12469.0..sroa_idx.i, align 8, !dbg !34605, !alias.scope !34186, !noalias !34283
  br label %bb.dk, !dbg !34607

bb.cw:                                            ; preds = %.thread391, %bb.cs
  %.sroa.8149.sroa.6.0.i403 = phi ptr [ %i.ho, %.thread391 ], [ %.sroa.8149.sroa.6.0.copyload.i, %bb.cs ] ; 2 uses
  %.sroa.8149.sroa.8.0.i402 = phi i64 [ %i.hq, %.thread391 ], [ %.sroa.8149.sroa.8.0.copyload.i, %bb.cs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8149.sroa.0.i), !dbg !34590
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !34608, !noalias !34281
  store ptr %.sroa.8149.sroa.6.0.i403, ptr %i.ap, align 8, !dbg !34608, !noalias !34281, !captures !4048
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ap, i64 8, !dbg !34608
  store i64 %.sroa.8149.sroa.8.0.i402, ptr %i.hv, align 8, !dbg !34608, !noalias !34281
    #dbg_value(ptr @98, !34309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33551)
    #dbg_value(i64 16, !34309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33551)
    #dbg_value(ptr %i.ap, !34310, !DIExpression(), !33551)
  %i.hw = invoke noundef zeroext i1 @_RNvXsf_NtNtCsf3Ta7LF998c_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ap, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @98, i64 noundef 16)
          to label %bb.cx unwind label %bb.ci, !dbg !34609, !noalias !34282, !inline_history !33481

bb.cx:                                            ; preds = %bb.cw
  br i1 %i.hw, label %bb.cz, label %bb.cy, !dbg !34610

bb.cy:                                            ; preds = %bb.cx
  %i.hx = load ptr, ptr %i.ba, align 8, !dbg !34611, !noalias !34281, !nonnull !1314, !noundef !1314
  %i.hy = load i64, ptr %i.hc, align 8, !dbg !34611, !noalias !34281, !noundef !1314 ; 6 uses
    #dbg_value(ptr %i.hx, !34226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33552)
    #dbg_value(ptr %i.hx, !34220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33553)
    #dbg_value(ptr %i.hx, !34221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33554)
    #dbg_value(ptr %i.hx, !34217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33555)
    #dbg_value(ptr %i.hx, !34214, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33556)
    #dbg_value(i64 %i.hy, !34226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33552)
    #dbg_value(i64 %i.hy, !34220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33553)
    #dbg_value(i64 %i.hy, !34221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33554)
    #dbg_value(i64 %i.hy, !34217, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33555)
    #dbg_value(i64 %i.hy, !34214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33556)
    #dbg_value(ptr %i.hx, !34212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33557)
    #dbg_value(ptr %i.hx, !34210, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33558)
    #dbg_value(ptr %i.hx, !34208, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33559)
    #dbg_value(ptr %i.hx, !34230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33560)
    #dbg_value(i64 %i.hy, !34212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33557)
    #dbg_value(i64 %i.hy, !34210, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33558)
    #dbg_value(i64 %i.hy, !34208, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33559)
    #dbg_value(i64 %i.hy, !34230, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33560)
    #dbg_value(i64 %i.hy, !34231, !DIExpression(), !33561)
    #dbg_value(i64 %i.hy, !34239, !DIExpression(), !33562)
    #dbg_value(i64 %i.hy, !34242, !DIExpression(), !33563)
    #dbg_value(i64 %i.hy, !34317, !DIExpression(), !33566)
    #dbg_value(i64 %i.hy, !34321, !DIExpression(), !33569)
    #dbg_value(i64 %i.hy, !34245, !DIExpression(), !33570)
    #dbg_value(i64 %i.hy, !34256, !DIExpression(), !33432)
    #dbg_value(i64 1, !34246, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33570)
    #dbg_value(i64 1, !34257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33432)
    #dbg_value(i64 1, !34246, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33570)
    #dbg_value(i64 1, !34257, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33432)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !34612, !noalias !34281
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.hy, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.da unwind label %bb.ci, !dbg !34612, !noalias !34282, !inline_history !33481

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !34613, !noalias !34281
    #dbg_value(ptr %i.ap, !33865, !DIExpression(), !33571)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !34614, !noalias !34281
  store ptr %i.ap, ptr %i.ah, align 8, !dbg !34614, !noalias !34281
  %.sroa.4473.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !34614
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs5yXxDE1DkoT_4tera, ptr %.sroa.4473.0..sroa_idx.i, align 8, !dbg !34614, !noalias !34281
    #dbg_value(ptr @112, !34303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !34325)
    #dbg_value(ptr %i.ah, !34303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !34325)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33574)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33574)
    #dbg_value(ptr poison, !3324, !DIExpression(), !33574)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !33575)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !33577)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noundef nonnull @112, ptr noundef nonnull %i.ah)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit283 unwind label %bb.ci, !dbg !34615

bb.da:                                            ; preds = %bb.cy
  %i.hz = load i64, ptr %i.h, align 8, !dbg !34612, !range !3205, !noalias !34281, !noundef !1314
  %i.ia = trunc nuw i64 %i.hz to i1, !dbg !34616
  %i.ib = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !34617
  %i.ic = load i64, ptr %i.ib, align 8, !dbg !34617, !range !3206, !noalias !34281, !noundef !1314 ; 4 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !34617 ; 2 uses
  br i1 %i.ia, label %bb.db, label %bb.dc, !dbg !34616, !prof !3207

bb.db:                                            ; preds = %bb.da
  %i.ie = load i64, ptr %i.id, align 8, !dbg !34618, !noalias !34281
    #dbg_value(i64 %i.ic, !34248, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33578)
    #dbg_value(i64 %i.ie, !34248, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33578)
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ic, i64 %i.ie) #27
          to label %bb.dh unwind label %bb.ci, !dbg !34619, !noalias !34282, !inline_history !33481

bb.dc:                                            ; preds = %bb.da
  %i.if = load ptr, ptr %i.id, align 8, !dbg !34620, !noalias !34281, !nonnull !1314, !noundef !1314 ; 3 uses
    #dbg_value(i64 %i.ic, !34247, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33579)
    #dbg_value(ptr %i.if, !34247, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33579)
    #dbg_value(ptr poison, !34255, !DIExpression(), !33580)
  %i.ig = icmp ule i64 %i.hy, %i.ic, !dbg !34621
    #dbg_value(i1 true, !34327, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !33583)
  call void @llvm.assume(i1 %i.ig), !dbg !34622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !34623, !noalias !34281
    #dbg_value(i64 %i.ic, !34329, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33586)
    #dbg_value(i64 %i.ic, !34232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !33587)
    #dbg_value(ptr %i.if, !34329, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33586)
    #dbg_value(ptr %i.if, !34232, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !33587)
    #dbg_value(i64 0, !34329, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33586)
    #dbg_value(i64 0, !34232, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33587)
  %.not794.i = icmp eq i64 %i.hy, 0, !dbg !34624
  br i1 %.not794.i, label %bb.dd, label %bb.de, !dbg !34624

bb.dd:                                            ; preds = %bb.de, %bb.dc
    #dbg_value(i64 %i.hy, !34232, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33587)
    #dbg_value(i64 %i.hy, !34329, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33586)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ar)
          to label %bb.dg unwind label %bb.df, !dbg !34625, !noalias !34282, !inline_history !33481

bb.de:                                            ; preds = %bb.dc
    #dbg_value(ptr %i.hx, !34318, !DIExpression(), !33566)
    #dbg_value(ptr %i.hx, !34322, !DIExpression(), !33569)
    #dbg_value(ptr %i.if, !34319, !DIExpression(), !33566)
    #dbg_value(ptr %i.if, !34323, !DIExpression(), !33569)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.if, ptr nonnull align 1 %i.hx, i64 %i.hy, i1 false), !dbg !34626, !noalias !34282
    #dbg_value(i64 %i.hy, !34329, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33586)
    #dbg_value(i64 %i.hy, !34232, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !33587)
  br label %bb.dd, !dbg !34627

bb.df:                                            ; preds = %bb.dd
  %i.ih = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ic, ptr %i.ar, align 8, !dbg !34625, !noalias !34281
  %.sroa.5484.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !34625
  store ptr %i.if, ptr %.sroa.5484.0..sroa_idx.i, align 8, !dbg !34625, !noalias !34281
  %.sroa.6487.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16, !dbg !34625
  store i64 %i.hy, ptr %.sroa.6487.0..sroa_idx.i, align 8, !dbg !34625, !noalias !34281
  br label %.thread387, !dbg !34625

bb.dg:                                            ; preds = %bb.dd
  store i64 %i.ic, ptr %i.ar, align 8, !dbg !34625, !noalias !34281
  %.sroa.5484.0..sroa_idx485.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !34625
  store ptr %i.if, ptr %.sroa.5484.0..sroa_idx485.i, align 8, !dbg !34625, !noalias !34281
  %.sroa.6487.0..sroa_idx488.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16, !dbg !34625
  store i64 %i.hy, ptr %.sroa.6487.0..sroa_idx488.i, align 8, !dbg !34625, !noalias !34281
  store ptr %.sroa.8149.sroa.6.0.i403, ptr %i.ba, align 8, !dbg !34628, !noalias !34281, !captures !4048
  store i64 %.sroa.8149.sroa.8.0.i402, ptr %i.hc, align 8, !dbg !34628, !noalias !34281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !34629, !noalias !34281
  br label %bb.cf, !dbg !34630

end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser11parse_array:bb.a
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !34802
  unreachable, !dbg !34802

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1e_.exit: ; preds = %bb.gl
    #dbg_value(ptr %i.cf, !3613, !DIExpression(), !33738)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cf), !dbg !34804
  br label %bb.ai, !dbg !34440

.thread336:                                       ; preds = %.thread355.loopexit, %.thread355.loopexit.split-lp, %bb.ch, %bb.gc, %bb.gd, %bb.gi, %.thread425, %bb.i, %bb.aq, %bb.t, %bb.bb, %bb.at, %bb.w, %bb.l
  %.pn328 = phi { ptr, i32 } [ %i.ey, %bb.bb ], [ %lpad.thr_comm.split-lp421, %.thread425 ], [ %i.es, %bb.at ], [ %i.ed, %bb.w ], [ %i.du, %bb.l ], [ %i.dq, %bb.i ], [ %i.eo, %bb.aq ], [ %i.dz, %bb.t ], [ %.pn804.i.ph, %bb.ch ], [ %.pn808.i.ph, %bb.gc ], [ %i.ln, %bb.gd ], [ %i.lr, %bb.gi ], [ %lpad.loopexit, %.thread355.loopexit ], [ %lpad.loopexit.split-lp, %.thread355.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ArrayEntryEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cf) #25
          to label %common.resume522 unwind label %bb.o, !dbg !34440
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser11parse_ident(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !34845 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !35246, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !35260)
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !35255, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !35263)
  %i.h = alloca [80 x i8], align 8                ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !35248, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !35266)
    #dbg_declare(ptr poison, !35248, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !35266)
  %i.m = alloca [72 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [72 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !35247, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !35267)
    #dbg_declare(ptr poison, !35243, !DIExpression(DW_OP_LLVM_fragment, 8, 568), !35268)
  %i.p = alloca [64 x i8], align 8                ; 13 uses
  %i.q = alloca [72 x i8], align 8                ; 6 uses
  %i.r = alloca [48 x i8], align 8                ; 9 uses
  %i.s = alloca [96 x i8], align 8                ; 8 uses
  %i.t = alloca [48 x i8], align 8                ; 9 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [56 x i8], align 8                ; 4 uses
  %.sroa.594 = alloca [56 x i8], align 8          ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 2 uses
  %i.y = alloca [72 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !35247, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !35269)
    #dbg_declare(ptr poison, !35234, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !35270)
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 2 uses
  %i.ab = alloca [72 x i8], align 8               ; 13 uses
  %i.ac = alloca [32 x i8], align 8               ; 9 uses
  %i.ad = alloca [80 x i8], align 8               ; 14 uses
  %.sroa.6632 = alloca [7 x i8], align 1          ; 6 uses
    #dbg_value(ptr poison, !3222, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !34858)
    #dbg_value(ptr %.sroa.6632, !3222, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !34858)
  %.sroa.870.sroa.0 = alloca [7 x i8], align 1    ; 6 uses
    #dbg_declare(ptr %.sroa.870.sroa.0, !35271, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !35276)
    #dbg_value(ptr poison, !4145, !DIExpression(), !34863)
    #dbg_value(ptr poison, !4145, !DIExpression(), !34865)
  %i.ae = alloca [16 x i8], align 8               ; 6 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 2 uses
  %i.ah = alloca [72 x i8], align 8               ; 4 uses
  %i.ai = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.741 = alloca [79 x i8], align 1          ; 5 uses
    #dbg_declare(ptr %.sroa.741, !35277, !DIExpression(DW_OP_LLVM_fragment, 8, 632), !35290)
  %.sroa.636 = alloca [79 x i8], align 1          ; 4 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 2 uses
  %i.al = alloca [72 x i8], align 8               ; 4 uses
  %i.am = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.7 = alloca [79 x i8], align 1            ; 5 uses
    #dbg_declare(ptr %.sroa.7, !35277, !DIExpression(DW_OP_LLVM_fragment, 8, 632), !35292)
  %.sroa.615 = alloca [79 x i8], align 1          ; 4 uses
  %i.an = alloca [72 x i8], align 8               ; 6 uses
  %i.ao = alloca [48 x i8], align 16              ; 5 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [48 x i8], align 8               ; 8 uses
  %i.ar = alloca [48 x i8], align 8               ; 7 uses
    #dbg_declare(ptr poison, !35247, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !35293)
    #dbg_declare(ptr poison, !35247, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !35293)
    #dbg_declare(ptr poison, !35191, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !35294)
    #dbg_declare(ptr poison, !35191, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !35294)
  %i.as = alloca [24 x i8], align 8               ; 4 uses
    #dbg_value(ptr poison, !4145, !DIExpression(), !34878)
    #dbg_value(ptr poison, !3339, !DIExpression(), !34880)
    #dbg_value(ptr %1, !35187, !DIExpression(), !35295)
    #dbg_value(ptr %2, !35188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35295)
    #dbg_value(ptr %2, !35296, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35300)
    #dbg_value(ptr %2, !35301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35305)
    #dbg_value(ptr %2, !35306, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35314)
    #dbg_value(ptr %2, !35307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35315)
    #dbg_value(ptr %2, !35316, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35320)
    #dbg_value(ptr %2, !35296, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35322)
    #dbg_value(ptr %2, !35323, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35329)
    #dbg_value(i64 %3, !35188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35295)
    #dbg_value(i64 %3, !35296, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35300)
    #dbg_value(i64 %3, !35301, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35305)
    #dbg_value(i64 %3, !35306, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35314)
    #dbg_value(i64 %3, !35307, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35315)
    #dbg_value(i64 %3, !35316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35320)
    #dbg_value(i64 %3, !35296, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35322)
    #dbg_value(i64 %3, !35323, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35329)
    #dbg_declare(ptr %i.as, !35190, !DIExpression(), !35333)
    #dbg_declare(ptr %i.m, !35334, !DIExpression(), !35339)
    #dbg_declare(ptr %i.p, !35193, !DIExpression(), !35340)
    #dbg_declare(ptr %i.an, !35341, !DIExpression(), !35348)
    #dbg_declare(ptr poison, !35247, !DIExpression(), !35351)
    #dbg_declare(ptr %i.i, !35277, !DIExpression(), !35353)
    #dbg_declare(ptr poison, !35247, !DIExpression(), !35356)
    #dbg_declare(ptr %i.am, !35203, !DIExpression(), !35357)
    #dbg_declare(ptr poison, !35247, !DIExpression(), !35360)
    #dbg_declare(ptr %i.h, !35277, !DIExpression(), !35363)
    #dbg_declare(ptr poison, !35247, !DIExpression(), !35366)
    #dbg_declare(ptr %i.ai, !35216, !DIExpression(), !35367)
    #dbg_declare(ptr poison, !35247, !DIExpression(), !35370)
    #dbg_declare(ptr %i.ae, !35223, !DIExpression(), !35371)
    #dbg_declare(ptr %i.ae, !35323, !DIExpression(), !35373)
    #dbg_declare(ptr %i.ae, !35323, !DIExpression(), !35375)
    #dbg_declare(ptr %i.ae, !35323, !DIExpression(), !35377)
    #dbg_declare(ptr %i.ae, !35323, !DIExpression(), !35379)
    #dbg_declare(ptr %i.ae, !35323, !DIExpression(), !35381)
    #dbg_declare(ptr %i.ae, !35301, !DIExpression(), !35383)
    #dbg_declare(ptr %i.ae, !35306, !DIExpression(), !35386)
    #dbg_declare(ptr %i.ae, !35311, !DIExpression(), !35387)
    #dbg_declare(ptr %i.ae, !35316, !DIExpression(), !35390)
    #dbg_declare(ptr %i.ae, !35296, !DIExpression(), !35393)
    #dbg_declare(ptr %i.ad, !35277, !DIExpression(), !35395)
    #dbg_declare(ptr %i.ac, !35229, !DIExpression(), !35396)
    #dbg_declare(ptr %i.q, !35341, !DIExpression(), !35398)
    #dbg_declare(ptr poison, !35247, !DIExpression(), !35401)
    #dbg_declare(ptr %i.e, !35402, !DIExpression(), !35407)
    #dbg_declare(ptr poison, !35281, !DIExpression(), !35408)
    #dbg_declare(ptr poison, !35285, !DIExpression(), !35409)
    #dbg_declare(ptr poison, !35410, !DIExpression(), !35416)
    #dbg_declare(ptr poison, !35421, !DIExpression(), !35435)
    #dbg_declare(ptr poison, !35436, !DIExpression(), !35440)
    #dbg_declare(ptr poison, !35441, !DIExpression(), !35445)
    #dbg_declare(ptr poison, !35446, !DIExpression(), !35461)
    #dbg_value(i64 0, !35462, !DIExpression(), !35468)
    #dbg_declare(ptr poison, !35410, !DIExpression(), !35475)
    #dbg_declare(ptr poison, !35421, !DIExpression(), !35478)
    #dbg_declare(ptr poison, !35436, !DIExpression(), !35481)
    #dbg_declare(ptr poison, !35441, !DIExpression(), !35484)
    #dbg_declare(ptr poison, !35446, !DIExpression(), !35487)
    #dbg_value(i64 0, !35462, !DIExpression(), !35490)
    #dbg_value(ptr @62, !35302, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35492)
    #dbg_value(i64 63, !35302, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35492)
    #dbg_value(ptr @62, !35308, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35495)
    #dbg_value(i64 63, !35308, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35495)
    #dbg_value(ptr @62, !35309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35496)
    #dbg_value(i64 63, !35309, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35496)
    #dbg_value(ptr @62, !35317, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35499)
    #dbg_value(i64 63, !35317, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35499)
    #dbg_value(ptr @62, !35297, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35502)
    #dbg_value(i64 63, !35297, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35502)
    #dbg_declare(ptr poison, !35410, !DIExpression(), !35509)
    #dbg_declare(ptr poison, !35421, !DIExpression(), !35512)
    #dbg_declare(ptr poison, !35436, !DIExpression(), !35515)
    #dbg_declare(ptr poison, !35441, !DIExpression(), !35518)
    #dbg_declare(ptr poison, !35446, !DIExpression(), !35521)
    #dbg_value(i64 0, !35462, !DIExpression(), !35524)
    #dbg_value(ptr poison, !35325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35525)
    #dbg_value(i64 5, !35325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35525)
    #dbg_value(ptr poison, !35325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35526)
    #dbg_value(i64 6, !35325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35526)
    #dbg_value(ptr poison, !35325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35527)
    #dbg_value(i64 5, !35325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35527)
    #dbg_value(ptr poison, !35325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35528)
    #dbg_value(i64 4, !35325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35528)
    #dbg_value(ptr poison, !35325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35529)
    #dbg_value(i64 6, !35325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35529)
    #dbg_declare(ptr poison, !35410, !DIExpression(), !35543)
    #dbg_declare(ptr poison, !35421, !DIExpression(), !35546)
    #dbg_declare(ptr poison, !35436, !DIExpression(), !35549)
    #dbg_declare(ptr poison, !35441, !DIExpression(), !35552)
    #dbg_declare(ptr poison, !35446, !DIExpression(), !35555)
    #dbg_value(i64 0, !35462, !DIExpression(), !35558)
    #dbg_declare(ptr poison, !35410, !DIExpression(), !35565)
    #dbg_declare(ptr poison, !35421, !DIExpression(), !35568)
    #dbg_declare(ptr poison, !35436, !DIExpression(), !35571)
    #dbg_declare(ptr poison, !35441, !DIExpression(), !35574)
    #dbg_declare(ptr poison, !35446, !DIExpression(), !35577)
    #dbg_value(i64 0, !35462, !DIExpression(), !35580)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 400, !dbg !35916 ; 9 uses
    #dbg_value(ptr %i.at, !4145, !DIExpression(), !34931)
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 416, !dbg !35917
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 432, !dbg !35918
  %i.aw = load <4 x i64>, ptr %i.au, align 8, !dbg !35917, !alias.scope !35581, !noalias !35582 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 408, !dbg !35919
  %i.ay = load <2 x i64>, ptr %i.at, align 8, !dbg !35919, !alias.scope !35581, !noalias !35582
  %.val.i = load i64, ptr %i.at, align 8, !dbg !35919, !alias.scope !35583, !noalias !35582, !noundef !1314
    #dbg_value(i64 poison, !35189, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !35584)
    #dbg_value(i64 poison, !35189, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !35584)
    #dbg_value(i64 poison, !35189, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !35584)
    #dbg_value(i64 poison, !35189, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !35584)
    #dbg_value(i64 %.val.i, !35189, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35584)
    #dbg_value(i64 poison, !35189, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35584)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !35920 ; 3 uses
  %i.ba = load i8, ptr %i.az, align 8, !dbg !35920, !range !3052, !noundef !1314
  %cond = icmp eq i8 %i.ba, 38, !dbg !35921
  br i1 %cond, label %bb.c, label %bb.b, !dbg !35921

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !35922
    #dbg_value(ptr %2, !35417, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35585)
    #dbg_value(ptr %2, !35419, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35586)
    #dbg_value(ptr %2, !35411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35587)
    #dbg_value(ptr %2, !35422, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35588)
    #dbg_value(ptr %2, !35589, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35601)
    #dbg_value(i64 %3, !35417, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35585)
    #dbg_value(i64 %3, !35419, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35586)
    #dbg_value(i64 %3, !35411, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35587)
    #dbg_value(i64 %3, !35422, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35588)
    #dbg_value(i64 %3, !35589, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35601)
    #dbg_value(i64 %3, !35425, !DIExpression(), !35605)
    #dbg_value(i64 %3, !35437, !DIExpression(), !35606)
    #dbg_value(i64 %3, !35442, !DIExpression(), !35607)
    #dbg_value(i64 %3, !35608, !DIExpression(), !35614)
    #dbg_value(i64 %3, !35615, !DIExpression(), !35621)
    #dbg_value(i64 %3, !35447, !DIExpression(), !35622)
    #dbg_value(i64 %3, !35464, !DIExpression(), !35490)
    #dbg_value(i64 %3, !35591, !DIExpression(), !35623)
    #dbg_value(i64 %3, !35624, !DIExpression(), !35635)
    #dbg_value(i64 %3, !35627, !DIExpression(), !35636)
    #dbg_value(i64 1, !35448, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35622)
    #dbg_value(i64 1, !35465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35490)
    #dbg_value(i64 1, !35448, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35622)
    #dbg_value(i64 1, !35465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35490)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !35923
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !35923
  %i.bb = load i64, ptr %i.k, align 8, !dbg !35923, !range !3205, !noundef !1314
  %i.bc = trunc nuw i64 %i.bb to i1, !dbg !35924
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !35622
  %i.be = load i64, ptr %i.bd, align 8, !dbg !35622, !range !3206, !noundef !1314 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !35622 ; 2 uses
  br i1 %i.bc, label %bb.o, label %bb.p, !dbg !35924, !prof !3207

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !35925
  call fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser12parse_kwargs(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.m, ptr noalias nofree noundef align 8 dereferenceable(488) %1), !dbg !35926
  %i.bg = load i8, ptr %i.m, align 8, !dbg !35927, !range !3289, !noundef !1314 ; 2 uses
  %.not413 = icmp eq i8 %i.bg, -1, !dbg !35927
  br i1 %.not413, label %bb.e, label %bb.d, !dbg !35928

bb.d:                                             ; preds = %bb.c
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !35929
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !35929
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !35930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5119.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5116.0..sroa_idx, i64 40, i1 false), !dbg !35929
    #dbg_value(i8 %i.bg, !35191, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !35637)
    #dbg_value(i8 %i.bg, !35247, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !35638)
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !35930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4118.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4115.0..sroa_idx, i64 31, i1 false), !dbg !35931
    #dbg_value(i8 %i.bg, !35248, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !35639)
  br label %bb.k, !dbg !35932

bb.e:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !35933 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !dbg !35338
    #dbg_value(ptr undef, !3339, !DIExpression(), !34880)
    #dbg_value(ptr %i.at, !3343, !DIExpression(), !34880)
    #dbg_value(i64 poison, !35189, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !35584)
  %i.bi = load <2 x i64>, ptr %i.av, align 8, !dbg !35934, !alias.scope !35641, !noalias !35642
    #dbg_value(i64 poison, !35189, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !35584)
  %i.bj = load i64, ptr %i.ax, align 8, !dbg !35935, !alias.scope !35641, !noalias !35642, !noundef !1314
    #dbg_value(i64 %i.bj, !35189, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35584)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !35936
    #dbg_value(ptr %2, !35417, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35643)
    #dbg_value(ptr %2, !35419, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35644)
    #dbg_value(ptr %2, !35411, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35645)
    #dbg_value(ptr %2, !35422, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35646)
    #dbg_value(i64 %3, !35417, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35643)
    #dbg_value(i64 %3, !35419, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35644)
    #dbg_value(i64 %3, !35411, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35645)
    #dbg_value(i64 %3, !35422, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35646)
    #dbg_value(i64 %3, !35423, !DIExpression(), !35647)
    #dbg_value(i64 %3, !35437, !DIExpression(), !35648)
    #dbg_value(i64 %3, !35442, !DIExpression(), !35649)
    #dbg_value(i64 %3, !35608, !DIExpression(), !35651)
    #dbg_value(i64 %3, !35615, !DIExpression(), !35653)
    #dbg_value(i64 %3, !35447, !DIExpression(), !35654)
    #dbg_value(i64 %3, !35464, !DIExpression(), !35468)
    #dbg_value(i64 1, !35448, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35654)
    #dbg_value(i64 1, !35465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35468)
    #dbg_value(i64 1, !35448, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35654)
    #dbg_value(i64 1, !35465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35468)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !35937
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.f unwind label %bb.m, !dbg !35937

bb.f:                                             ; preds = %bb.e
  %i.bk = load i64, ptr %i.l, align 8, !dbg !35937, !range !3205, !noundef !1314
  %i.bl = trunc nuw i64 %i.bk to i1, !dbg !35938
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !35654
  %i.bn = load i64, ptr %i.bm, align 8, !dbg !35654, !range !3206, !noundef !1314 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !35654 ; 2 uses
  br i1 %i.bl, label %bb.g, label %bb.h, !dbg !35938, !prof !3207

bb.g:                                             ; preds = %bb.f
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !35939
    #dbg_value(i64 %i.bn, !35450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35655)
    #dbg_value(i64 %i.bp, !35450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35655)
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.bn, i64 %i.bp) #27
          to label %bb.l unwind label %bb.m, !dbg !35940

bb.h:                                             ; preds = %bb.f
  %i.bq = load ptr, ptr %i.bo, align 8, !dbg !35941, !nonnull !1314, !noundef !1314 ; 2 uses
    #dbg_value(i64 %i.bn, !35449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35656)
    #dbg_value(ptr %i.bq, !35449, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35656)
    #dbg_value(ptr poison, !35463, !DIExpression(), !35657)
  %i.br = icmp ule i64 %3, %i.bn, !dbg !35942
    #dbg_value(i1 true, !35658, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !35661)
  tail call void @llvm.assume(i1 %i.br), !dbg !35943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !35944
    #dbg_value(i64 %i.bn, !35662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35665)
    #dbg_value(i64 %i.bn, !35424, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35666)
    #dbg_value(ptr %i.bq, !35662, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35665)
    #dbg_value(ptr %i.bq, !35424, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35666)
    #dbg_value(i64 0, !35662, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !35665)
    #dbg_value(i64 0, !35424, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !35666)
  %.not414 = icmp eq i64 %3, 0, !dbg !35945
  br i1 %.not414, label %bb.i, label %bb.j, !dbg !35945

bb.i:                                             ; preds = %bb.j, %bb.h
    #dbg_value(i64 %3, !35424, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !35666)
    #dbg_value(i64 %3, !35662, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !35665)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 24, !dbg !35936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !dbg !35946
  store i64 %i.bn, ptr %i.ar, align 8, !dbg !35936
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !35936
  store ptr %i.bq, ptr %.sroa.4124.0..sroa_idx, align 8, !dbg !35936
  %.sroa.5125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16, !dbg !35936
  store i64 %3, ptr %.sroa.5125.0..sroa_idx, align 8, !dbg !35936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !35947
  store i64 %.val.i, ptr %i.aq, align 8, !dbg !35947
  %.sroa.6473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8, !dbg !35947
  store i64 %i.bj, ptr %.sroa.6473.0..sroa_idx, align 8, !dbg !35947
  %.sroa.9474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16, !dbg !35947
  %i.bt = extractelement <4 x i64> %i.aw, i64 0, !dbg !35947
  store i64 %i.bt, ptr %.sroa.9474.0..sroa_idx, align 8, !dbg !35947
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24, !dbg !35947
  %i.bu = extractelement <4 x i64> %i.aw, i64 1, !dbg !35947
  store i64 %i.bu, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !35947
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32, !dbg !35947
  store <2 x i64> %i.bi, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !35947
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !35948
  call void @_RNvMNtCs5yXxDE1DkoT_4tera5utilsINtB2_7SpannedNtNtNtB4_7parsing3ast12FunctionCallE3newB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %.sroa.410.0..sroa_idx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.aq), !dbg !35949
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !35950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !35950
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !35948
  store i64 12, ptr %i.bv, align 8, !dbg !35948
  br label %bb.k, !dbg !35951

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %2, !35609, !DIExpression(), !35651)
    #dbg_value(ptr %2, !35616, !DIExpression(), !35653)
    #dbg_value(ptr %i.bq, !35610, !DIExpression(), !35651)
    #dbg_value(ptr %i.bq, !35617, !DIExpression(), !35653)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr nonnull align 1 %2, i64 %3, i1 false), !dbg !35952
    #dbg_value(i64 %3, !35662, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !35665)
    #dbg_value(i64 %3, !35424, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !35666)
  br label %bb.i, !dbg !35953

bb.k:                                             ; preds = %bb.i, %bb.d
  store i8 %i.bg, ptr %0, align 8, !dbg !35584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !35951
  br label %bb.cs, !dbg !35932

bb.l:                                             ; preds = %bb.br, %bb.g
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit: ; preds = %bb.bp, %bb.m, %.thread544
  %.pn415 = phi { ptr, i32 } [ %lpad.phi592, %bb.bp ], [ %lpad.thr_comm, %bb.m ], [ %.pn532, %.thread544 ]
  resume { ptr, i32 } %.pn415, !dbg !35954

bb.m:                                             ; preds = %bb.g, %bb.e
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.as, !3794, !DIExpression(), !34960)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit unwind label %bb.n, !dbg !35955

bb.n:                                             ; preds = %bb.m, %.thread544, %bb.bp, %bb.be, %bb.at, %bb.ai
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !35954
  unreachable, !dbg !35954

bb.o:                                             ; preds = %bb.b
  %i.bx = load i64, ptr %i.bf, align 8, !dbg !35956
    #dbg_value(i64 %i.be, !35452, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35667)
    #dbg_value(i64 %i.bx, !35452, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35667)
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.be, i64 %i.bx) #27, !dbg !35957
  unreachable, !dbg !35957

bb.p:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser11parse_ident:bb.a
  %i.hy = load i64, ptr %i.hx, align 8, !dbg !36160
    #dbg_value(i64 %i.hw, !35454, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35908)
    #dbg_value(i64 %i.hy, !35454, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35908)
  br label %.invoke, !dbg !36161

bb.cp:                                            ; preds = %bb.cn
  %i.hz = load ptr, ptr %i.hx, align 8, !dbg !36162, !nonnull !1314, !noundef !1314 ; 2 uses
    #dbg_value(i64 %i.hw, !35453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35909)
    #dbg_value(ptr %i.hz, !35453, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35909)
    #dbg_value(ptr poison, !35463, !DIExpression(), !35910)
  %i.ia = icmp samesign ugt i64 %i.hw, 62, !dbg !36163
    #dbg_value(i1 true, !35658, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !35912)
  call void @llvm.assume(i1 %i.ia), !dbg !36164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !36165
    #dbg_value(i64 %i.hw, !35662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35914)
    #dbg_value(i64 %i.hw, !35428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !35915)
    #dbg_value(ptr %i.hz, !35662, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35914)
    #dbg_value(ptr %i.hz, !35428, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !35915)
    #dbg_value(i64 0, !35662, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !35914)
    #dbg_value(i64 0, !35428, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !35915)
    #dbg_value(ptr @62, !35609, !DIExpression(), !35692)
    #dbg_value(ptr @62, !35616, !DIExpression(), !35695)
    #dbg_value(ptr %i.hz, !35610, !DIExpression(), !35692)
    #dbg_value(ptr %i.hz, !35617, !DIExpression(), !35695)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.hz, ptr noundef nonnull align 1 dereferenceable(63) @62, i64 63, i1 false), !dbg !36166
    #dbg_value(i64 63, !35662, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !35914)
    #dbg_value(i64 63, !35428, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !35915)
  store i64 %i.hw, ptr %i.n, align 8, !dbg !36167
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !36167
  store ptr %i.hz, ptr %.sroa.4133.0..sroa_idx, align 8, !dbg !36167
  %.sroa.6134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !36167
  store i64 63, ptr %.sroa.6134.0..sroa_idx, align 8, !dbg !36167
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.at)
          to label %bb.cq unwind label %.thread557.loopexit.split-lp, !dbg !36009

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !36168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !36169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !36170
  br label %bb.cr, !dbg !36018

bb.cr:                                            ; preds = %bb.bb, %bb.bj, %bb.ac, %bb.ck, %bb.cq, %bb.an, %bb.ay, %bb.cb
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.p), !dbg !36171
  br label %bb.cs, !dbg !36171

bb.cs:                                            ; preds = %bb.cl, %bb.cr, %bb.k, %bb.s
  ret void, !dbg !35975

.thread544:                                       ; preds = %bb.al, %.thread557.loopexit.split-lp, %.thread557.loopexit, %bb.cf, %bb.ai, %bb.at, %bb.be, %bb.ci, %bb.bh, %bb.aw
  %.pn532 = phi { ptr, i32 } [ %i.fc, %bb.bh ], [ %i.hr, %bb.ci ], [ %i.ep, %bb.aw ], [ %i.ed, %bb.ai ], [ %i.el, %bb.at ], [ %i.ez, %bb.be ], [ %i.ho, %bb.cf ], [ %lpad.loopexit, %.thread557.loopexit ], [ %lpad.loopexit.split-lp, %.thread557.loopexit.split-lp ], [ %i.eh, %bb.al ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.p) #25
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit unwind label %bb.n, !dbg !36171
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser12parse_filter(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !36184 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !36270, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !36277)
    #dbg_declare(ptr poison, !36270, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !36277)
    #dbg_declare(ptr poison, !36278, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !36283)
    #dbg_declare(ptr poison, !36278, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !36283)
  %i.b = alloca [72 x i8], align 8                ; 5 uses
    #dbg_declare(ptr poison, !36273, !DIExpression(DW_OP_LLVM_fragment, 320, 128), !36286)
    #dbg_declare(ptr poison, !36273, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !36286)
    #dbg_declare(ptr poison, !36287, !DIExpression(DW_OP_LLVM_fragment, 320, 128), !36292)
    #dbg_declare(ptr poison, !36287, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !36292)
    #dbg_declare(ptr poison, !36289, !DIExpression(DW_OP_LLVM_fragment, 256, 128), !36294)
    #dbg_declare(ptr poison, !36272, !DIExpression(DW_OP_LLVM_fragment, 256, 192), !36297)
    #dbg_declare(ptr poison, !36272, !DIExpression(DW_OP_LLVM_fragment, 448, 128), !36297)
    #dbg_declare(ptr poison, !36298, !DIExpression(DW_OP_LLVM_fragment, 256, 192), !36303)
    #dbg_declare(ptr poison, !36298, !DIExpression(DW_OP_LLVM_fragment, 448, 128), !36303)
    #dbg_declare(ptr poison, !36300, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !36304)
    #dbg_declare(ptr poison, !36300, !DIExpression(DW_OP_LLVM_fragment, 320, 192), !36304)
    #dbg_declare(ptr poison, !36300, !DIExpression(DW_OP_LLVM_fragment, 512, 128), !36304)
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [112 x i8], align 8               ; 8 uses
    #dbg_declare(ptr poison, !36271, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !36307)
    #dbg_declare(ptr poison, !36271, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !36307)
    #dbg_declare(ptr poison, !36267, !DIExpression(DW_OP_LLVM_fragment, 8, 248), !36308)
    #dbg_declare(ptr poison, !36267, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !36308)
  %i.e = alloca [24 x i8], align 8                ; 11 uses
    #dbg_declare(ptr poison, !36264, !DIExpression(DW_OP_LLVM_fragment, 320, 128), !36309)
    #dbg_declare(ptr poison, !36271, !DIExpression(DW_OP_LLVM_fragment, 320, 128), !36310)
    #dbg_declare(ptr poison, !36271, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !36310)
    #dbg_declare(ptr poison, !36264, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !36309)
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [72 x i8], align 8                ; 10 uses
  %i.i = alloca [32 x i8], align 8                ; 9 uses
    #dbg_declare(ptr poison, !36258, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !36311)
    #dbg_declare(ptr poison, !36256, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !36312)
    #dbg_declare(ptr poison, !36256, !DIExpression(DW_OP_LLVM_fragment, 320, 192), !36312)
    #dbg_declare(ptr poison, !36271, !DIExpression(DW_OP_LLVM_fragment, 256, 192), !36313)
    #dbg_declare(ptr poison, !36271, !DIExpression(DW_OP_LLVM_fragment, 448, 128), !36313)
    #dbg_declare(ptr poison, !36255, !DIExpression(DW_OP_LLVM_fragment, 256, 192), !36314)
    #dbg_declare(ptr poison, !36255, !DIExpression(DW_OP_LLVM_fragment, 448, 128), !36314)
  %i.j = alloca [80 x i8], align 8                ; 15 uses
  %.sroa.619.sroa.12 = alloca [24 x i8], align 8  ; 4 uses
  %.sroa.619.sroa.13 = alloca [16 x i8], align 8  ; 6 uses
  %.sroa.6200 = alloca [7 x i8], align 1          ; 6 uses
    #dbg_value(ptr poison, !3222, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36199)
    #dbg_value(ptr %.sroa.6200, !3222, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !36199)
  %.sroa.814.sroa.0 = alloca [7 x i8], align 1    ; 6 uses
  %.sroa.814.sroa.9.sroa.9 = alloca [16 x i8], align 8 ; 8 uses
    #dbg_declare(ptr %.sroa.814.sroa.9.sroa.9, !36288, !DIExpression(DW_OP_LLVM_fragment, 320, 128), !36315)
    #dbg_declare(ptr %.sroa.814.sroa.0, !36288, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !36315)
  %.sroa.9.sroa.8 = alloca [16 x i8], align 8     ; 7 uses
  %.sroa.6140 = alloca [16 x i8], align 8         ; 5 uses
    #dbg_declare(ptr %.sroa.6140, !36254, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !36316)
    #dbg_value(ptr poison, !3339, !DIExpression(), !36201)
    #dbg_value(ptr %1, !36251, !DIExpression(), !36317)
    #dbg_declare(ptr %2, !36252, !DIExpression(), !36318)
    #dbg_declare(ptr %i.j, !36299, !DIExpression(), !36319)
    #dbg_declare(ptr %i.i, !36259, !DIExpression(), !36320)
    #dbg_declare(ptr %i.e, !36266, !DIExpression(), !36321)
    #dbg_declare(ptr %i.b, !36279, !DIExpression(), !36322)
    #dbg_declare(ptr %i.b, !36280, !DIExpression(DW_OP_plus_uconst, 8), !36323)
    #dbg_declare(ptr poison, !36324, !DIExpression(), !36334)
    #dbg_declare(ptr poison, !36348, !DIExpression(), !36354)
    #dbg_declare(ptr poison, !36355, !DIExpression(), !36359)
    #dbg_declare(ptr poison, !36360, !DIExpression(), !36364)
    #dbg_declare(ptr poison, !36365, !DIExpression(), !36372)
    #dbg_value(i64 0, !36373, !DIExpression(), !36379)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.8), !dbg !36291
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.814.sroa.0), !dbg !36442
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.814.sroa.9.sroa.9), !dbg !36442
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6200), !dbg !36302
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619.sroa.13), !dbg !36302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !36302
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser13next_or_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.j, ptr noalias nofree noundef align 8 dereferenceable(488) %1)
          to label %bb.c unwind label %bb.b, !dbg !36443

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit135: ; preds = %.thread190
  br i1 %.sroa.044.1194, label %.thread, label %bb.ae, !dbg !36444

bb.b:                                             ; preds = %bb.p, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i126, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.j, align 8, !dbg !36445, !range !3290, !noundef !1314 ; 3 uses
  %i.m = icmp eq i8 %i.l, -1, !dbg !36445
  br i1 %i.m, label %bb.d, label %bb.e, !dbg !36446

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !36447
  %.sroa.0222.0.copyload = load ptr, ptr %i.n, align 8, !dbg !36447
    #dbg_value(ptr %.sroa.0222.0.copyload, !36298, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36380)
  %.sroa.4223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !36447
    #dbg_value(i64 poison, !36298, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36380)
    #dbg_value(i64 poison, !36298, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36380)
  %.sroa.6225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !36447
  %.sroa.6225.0.copyload = load i64, ptr %.sroa.6225.0..sroa_idx, align 8, !dbg !36447
    #dbg_value(i64 %.sroa.6225.0.copyload, !36298, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !36380)
  %.sroa.7226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !36447
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.619.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7226.0..sroa_idx, i64 24, i1 false), !dbg !36447
  %.sroa.8227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64, !dbg !36447
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.sroa.13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8227.0..sroa_idx, i64 16, i1 false), !dbg !36447
    #dbg_value(ptr %.sroa.0222.0.copyload, !36255, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36381)
    #dbg_value(ptr %.sroa.0222.0.copyload, !36271, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36382)
    #dbg_value(i64 poison, !36255, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36381)
    #dbg_value(i64 poison, !36271, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36382)
    #dbg_value(i64 poison, !36255, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36381)
    #dbg_value(i64 poison, !36271, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36382)
    #dbg_value(i64 %.sroa.6225.0.copyload, !36255, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !36381)
    #dbg_value(i64 %.sroa.6225.0.copyload, !36271, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !36382)
  %.sroa.7232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !36448
  %.sroa.8233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !36448
    #dbg_value(ptr %.sroa.0222.0.copyload, !36272, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36383)
    #dbg_value(i64 poison, !36272, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36383)
    #dbg_value(i64 poison, !36272, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36383)
    #dbg_value(i64 %.sroa.6225.0.copyload, !36272, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !36383)
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36448
  %i.o = load <2 x i64>, ptr %.sroa.4223.0..sroa_idx, align 8, !dbg !36447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !36449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7232.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.619.sroa.12, i64 24, i1 false), !dbg !36449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8233.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.619.sroa.13, i64 16, i1 false), !dbg !36449
  store ptr %.sroa.0222.0.copyload, ptr %0, align 8, !dbg !36448
  store <2 x i64> %i.o, ptr %.sroa.4229.0..sroa_idx, align 8, !dbg !36448
  %.sroa.6231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !36448
  store i64 %.sroa.6225.0.copyload, ptr %.sroa.6231.0..sroa_idx, align 8, !dbg !36448
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619.sroa.13), !dbg !36450
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6200), !dbg !36450
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.814.sroa.0), !dbg !36451
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.814.sroa.9.sroa.9), !dbg !36451
  br label %bb.ad, !dbg !36452

bb.e:                                             ; preds = %bb.c
    #dbg_value(i8 %i.l, !36300, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36385)
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1, !dbg !36453
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6200, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.446.0..sroa_idx, i64 7, i1 false), !dbg !36453
  %.sroa.446.sroa.4.0..sroa.446.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !36453
  %.sroa.446.sroa.4.0.copyload = load ptr, ptr %.sroa.446.sroa.4.0..sroa.446.0..sroa_idx.sroa_idx, align 8, !dbg !36453 ; 3 uses
    #dbg_value(ptr %.sroa.446.sroa.4.0.copyload, !36300, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36385)
  %.sroa.446.sroa.5.0..sroa.446.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !36453 ; 2 uses
    #dbg_value(i64 poison, !36300, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36385)
  %i.p = load <2 x i64>, ptr %.sroa.446.sroa.5.0..sroa.446.0..sroa_idx.sroa_idx, align 8, !dbg !36453
  %.sroa.446.sroa.5.0.copyload = load i64, ptr %.sroa.446.sroa.5.0..sroa.446.0..sroa_idx.sroa_idx, align 8, !dbg !36453
    #dbg_value(i64 %.sroa.446.sroa.5.0.copyload, !36300, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36385)
    #dbg_value(i64 poison, !36300, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !36385)
  %.sroa.446.sroa.7.0..sroa.446.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !36453
  %.sroa.446.sroa.7.0.copyload = load i64, ptr %.sroa.446.sroa.7.0..sroa.446.0..sroa_idx.sroa_idx, align 8, !dbg !36453
    #dbg_value(i64 %.sroa.446.sroa.7.0.copyload, !36300, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !36385)
  %.sroa.446.sroa.8.0..sroa.446.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !36453
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.619.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.446.sroa.8.0..sroa.446.0..sroa_idx.sroa_idx, i64 24, i1 false), !dbg !36453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !36449
    #dbg_value(i8 %i.l, !36256, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36386)
    #dbg_value(ptr %.sroa.446.sroa.4.0.copyload, !36256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36386)
    #dbg_value(i64 %.sroa.446.sroa.5.0.copyload, !36256, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36386)
    #dbg_value(i64 poison, !36256, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !36386)
    #dbg_value(i64 %.sroa.446.sroa.7.0.copyload, !36256, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !36386)
  %i.q = icmp eq i8 %i.l, 7, !dbg !36454
  br i1 %i.q, label %.thread177, label %bb.f, !dbg !36454

.thread177:                                       ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.446.sroa.4.0.copyload) ]
    #dbg_value(ptr %.sroa.446.sroa.4.0.copyload, !36257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36387)
    #dbg_value(i64 poison, !36257, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36387)
    #dbg_value(i64 %.sroa.446.sroa.7.0.copyload, !36258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36387)
    #dbg_value(i64 poison, !36258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36387)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.619.sroa.12, i64 8, !dbg !36455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.814.sroa.9.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !dbg !36455
    #dbg_value(i64 poison, !36258, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !36387)
    #dbg_value(i64 poison, !36258, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !36387)
    #dbg_value(ptr %.sroa.446.sroa.4.0.copyload, !36288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36388)
    #dbg_value(i64 poison, !36288, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36388)
    #dbg_value(i64 %.sroa.446.sroa.7.0.copyload, !36288, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !36388)
    #dbg_value(i64 poison, !36288, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !36388)
    #dbg_value(i64 poison, !36288, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !36388)
    #dbg_value(i64 poison, !36288, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !36388)
    #dbg_value(i8 -1, !36288, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36388)
    #dbg_value(ptr undef, !3222, !DIExpression(), !36199)
    #dbg_value(i64 poison, !36288, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !36388)
    #dbg_value(i64 poison, !36288, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !36388)
    #dbg_value(i64 poison, !36288, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !36388)
    #dbg_value(i64 %.sroa.446.sroa.7.0.copyload, !36288, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !36388)
    #dbg_value(i8 -1, !36288, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36388)
    #dbg_value(ptr %.sroa.446.sroa.4.0.copyload, !36288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36388)
    #dbg_value(i64 poison, !36288, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36388)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619.sroa.13), !dbg !36450
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6200), !dbg !36450
  br label %bb.m, !dbg !36456

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !36457
  store i8 %i.l, ptr %i.i, align 8, !dbg !36457
  %.sroa.6200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 1, !dbg !36457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6200.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6200, i64 7, i1 false), !dbg !36457
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !36457 ; 4 uses
  store ptr %.sroa.446.sroa.4.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !36457
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !36457
  store <2 x i64> %i.p, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !36457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !36458
    #dbg_value(ptr %i.i, !36261, !DIExpression(), !36389)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !36459
  store ptr %i.i, ptr %i.f, align 8, !dbg !36459
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !36459
  store ptr @_RNvXs_NtNtCs5yXxDE1DkoT_4tera7parsing5lexerNtB4_5TokenNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.450.0..sroa_idx, align 8, !dbg !36459
    #dbg_value(ptr @56, !36390, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36394)
    #dbg_value(ptr %i.f, !36390, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36394)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36221)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36221)
    #dbg_value(ptr poison, !3324, !DIExpression(), !36221)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !36222)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !36224)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @56, ptr noundef nonnull %i.f)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit unwind label %bb.g, !dbg !36460

.noexc129:                                        ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i126, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !36461
    #dbg_value(i64 poison, !36288, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !36388)
    #dbg_value(i64 poison, !36288, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !36388)
    #dbg_value(i64 poison, !36288, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !36388)
    #dbg_value(i64 poison, !36288, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !36388)
    #dbg_value(i8 %.sroa.012.0.copyload, !36288, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36388)
    #dbg_value(ptr %.sroa.814.sroa.6.0.copyload, !36288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36388)
    #dbg_value(i64 %.sroa.814.sroa.8.0.copyload, !36288, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36388)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.619.sroa.13), !dbg !36450
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6200), !dbg !36450
  %.not117 = icmp eq i8 %.sroa.012.0.copyload, -1, !dbg !36462
  br i1 %.not117, label %bb.m, label %bb.l, !dbg !36456

bb.g:                                             ; preds = %bb.f, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #25
          to label %.thread unwind label %bb.ac, !dbg !36461

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !36463
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 400, !dbg !36464
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t)
          to label %bb.h unwind label %bb.g, !dbg !36458

bb.h:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit
  %.sroa.012.0.copyload = load i8, ptr %i.h, align 8, !dbg !36465 ; 2 uses
    #dbg_value(i8 %.sroa.012.0.copyload, !36288, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36388)
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 1, !dbg !36465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.814.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.814.0..sroa_idx, i64 7, i1 false), !dbg !36465
  %.sroa.814.sroa.6.0..sroa.814.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !36465
  %.sroa.814.sroa.6.0.copyload = load ptr, ptr %.sroa.814.sroa.6.0..sroa.814.0..sroa_idx.sroa_idx, align 8, !dbg !36465 ; 2 uses
    #dbg_value(ptr %.sroa.814.sroa.6.0.copyload, !36288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36388)
  %.sroa.814.sroa.8.0..sroa.814.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !36465
  %.sroa.814.sroa.8.0.copyload = load i64, ptr %.sroa.814.sroa.8.0..sroa.814.0..sroa_idx.sroa_idx, align 8, !dbg !36465 ; 2 uses
    #dbg_value(i64 %.sroa.814.sroa.8.0.copyload, !36288, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36388)
  %.sroa.814.sroa.9.0..sroa.814.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !36465 ; 2 uses
    #dbg_value(i64 poison, !36288, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !36388)
  %i.u = load <2 x i64>, ptr %.sroa.814.sroa.9.0..sroa.814.0..sroa_idx.sroa_idx, align 8, !dbg !36465
  %.sroa.814.sroa.9.sroa.0.0.copyload = load i64, ptr %.sroa.814.sroa.9.0..sroa.814.0..sroa_idx.sroa_idx, align 8, !dbg !36465
    #dbg_value(i64 %.sroa.814.sroa.9.sroa.0.0.copyload, !36288, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !36388)
    #dbg_value(i64 poison, !36288, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !36388)
  %.sroa.814.sroa.9.sroa.9.0..sroa.814.sroa.9.0..sroa.814.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40, !dbg !36465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.814.sroa.9.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.814.sroa.9.sroa.9.0..sroa.814.sroa.9.0..sroa.814.0..sroa_idx.sroa_idx.sroa_idx, i64 16, i1 false), !dbg !36465
  %.sroa.814.sroa.9.sroa.10.0..sroa.814.sroa.9.0..sroa.814.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56, !dbg !36465
    #dbg_value(i64 poison, !36288, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !36388)
  %i.v = load <2 x i64>, ptr %.sroa.814.sroa.9.sroa.10.0..sroa.814.sroa.9.0..sroa.814.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !36465
    #dbg_value(i64 poison, !36288, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !36388)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !36466
    #dbg_value(ptr %i.i, !3222, !DIExpression(), !36226)
  %i.w = load i8, ptr %i.i, align 8, !dbg !36467, !range !3228, !alias.scope !36395, !noundef !1314
  %i.x = icmp eq i8 %i.w, 8, !dbg !36467
  br i1 %i.x, label %bb.i, label %.noexc129, !dbg !36467

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %.sroa.7.0..sroa_idx, !3230, !DIExpression(), !36230)
    #dbg_value(ptr %.sroa.7.0..sroa_idx, !3235, !DIExpression(), !36232)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i126 unwind label %bb.j, !dbg !36468

bb.j:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %.sroa.7.0..sroa_idx, !3240, !DIExpression(), !36234)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx)
          to label %.thread unwind label %bb.k, !dbg !36469

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !36468
  unreachable, !dbg !36468

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i126: ; preds = %bb.i
    #dbg_value(ptr %.sroa.7.0..sroa_idx, !3240, !DIExpression(), !36236)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx)
          to label %.noexc129 unwind label %bb.b, !dbg !36470

bb.l:                                             ; preds = %.noexc129
    #dbg_value(i8 %.sroa.012.0.copyload, !36287, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36396)
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !36471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.466.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.814.sroa.0, i64 7, i1 false), !dbg !36472
    #dbg_value(ptr %.sroa.814.sroa.6.0.copyload, !36287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36396)
    #dbg_value(i64 %.sroa.814.sroa.8.0.copyload, !36287, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36396)
    #dbg_value(i64 poison, !36287, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !36396)
    #dbg_value(i64 poison, !36287, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !36396)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.814.sroa.9.sroa.9, i64 16, i1 false), !dbg !36472
    #dbg_value(i64 poison, !36287, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !36396)
    #dbg_value(i64 poison, !36287, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !36396)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.814.sroa.0), !dbg !36451
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.814.sroa.9.sroa.9), !dbg !36451
    #dbg_value(i8 %.sroa.012.0.copyload, !36264, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36397)
    #dbg_value(i8 %.sroa.012.0.copyload, !36271, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36398)
    #dbg_value(ptr %.sroa.814.sroa.6.0.copyload, !36264, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36397)
    #dbg_value(ptr %.sroa.814.sroa.6.0.copyload, !36271, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36398)
    #dbg_value(i64 %.sroa.814.sroa.8.0.copyload, !36264, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36397)
    #dbg_value(i64 %.sroa.814.sroa.8.0.copyload, !36271, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36398)
    #dbg_value(i64 poison, !36271, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !36398)
    #dbg_value(i64 poison, !36264, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !36397)
    #dbg_value(i64 poison, !36271, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !36398)
    #dbg_value(i64 poison, !36264, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !36397)
  %.sroa.769.sroa.5.0..sroa.769.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !36471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.769.sroa.5.0..sroa.769.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.8, i64 16, i1 false), !dbg !36451
    #dbg_value(i64 poison, !36271, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !36398)
    #dbg_value(i64 poison, !36264, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !36397)
    #dbg_value(i64 poison, !36271, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !36398)
    #dbg_value(i64 poison, !36264, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !36397)
    #dbg_value(i8 %.sroa.012.0.copyload, !36273, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36399)
    #dbg_value(ptr %.sroa.814.sroa.6.0.copyload, !36273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36399)
    #dbg_value(i64 %.sroa.814.sroa.8.0.copyload, !36273, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36399)
    #dbg_value(i64 poison, !36273, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !36399)
    #dbg_value(i64 poison, !36273, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !36399)
    #dbg_value(i64 poison, !36273, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !36399)
    #dbg_value(i64 poison, !36273, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !36399)
  store i8 %.sroa.012.0.copyload, ptr %0, align 8, !dbg !36471
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !36471
  store ptr %.sroa.814.sroa.6.0.copyload, ptr %.sroa.567.0..sroa_idx, align 8, !dbg !36471
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !36471
  store i64 %.sroa.814.sroa.8.0.copyload, ptr %.sroa.668.0..sroa_idx, align 8, !dbg !36471
  %.sroa.769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !36471
  store <2 x i64> %i.u, ptr %.sroa.769.0..sroa_idx, align 8, !dbg !36471
  %.sroa.769.sroa.6.0..sroa.769.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !36471
  store <2 x i64> %i.v, ptr %.sroa.769.sroa.6.0..sroa.769.0..sroa_idx.sroa_idx, align 8, !dbg !36471
  br label %bb.ad, !dbg !36473

bb.m:                                             ; preds = %.thread177, %.noexc129
  %.sroa.814.sroa.6.0188 = phi ptr [ %.sroa.446.sroa.4.0.copyload, %.thread177 ], [ %.sroa.814.sroa.6.0.copyload, %.noexc129 ]
  %.sroa.814.sroa.8.0187 = phi i64 [ %.sroa.446.sroa.5.0.copyload, %.thread177 ], [ %.sroa.814.sroa.8.0.copyload, %.noexc129 ] ; 5 uses
  %.sroa.814.sroa.9.sroa.0.0186 = phi i64 [ %.sroa.446.sroa.7.0.copyload, %.thread177 ], [ %.sroa.814.sroa.9.sroa.0.0.copyload, %.noexc129 ]
    #dbg_value(ptr %.sroa.814.sroa.6.0188, !36289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36400)
    #dbg_value(i64 %.sroa.814.sroa.8.0187, !36289, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36400)
    #dbg_value(i64 %.sroa.814.sroa.9.sroa.0.0186, !36289, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !36400)
    #dbg_value(i64 poison, !36289, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !36400)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.814.sroa.9.sroa.9, i64 16, i1 false), !dbg !36474
    #dbg_value(i64 poison, !36289, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !36400)
    #dbg_value(i64 poison, !36289, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !36400)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.814.sroa.0), !dbg !36451
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.814.sroa.9.sroa.9), !dbg !36451
    #dbg_value(ptr %.sroa.814.sroa.6.0188, !36253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36401)
    #dbg_value(ptr %.sroa.814.sroa.6.0188, !36335, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36402)
    #dbg_value(ptr %.sroa.814.sroa.6.0188, !36337, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36403)
    #dbg_value(ptr %.sroa.814.sroa.6.0188, !36338, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36404)
    #dbg_value(ptr %.sroa.814.sroa.6.0188, !36340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36405)
    #dbg_value(ptr %.sroa.814.sroa.6.0188, !36342, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36406)
    #dbg_value(i64 %.sroa.814.sroa.8.0187, !36253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36401)
    #dbg_value(i64 %.sroa.814.sroa.8.0187, !36335, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36402)
    #dbg_value(i64 %.sroa.814.sroa.8.0187, !36337, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36403)
    #dbg_value(i64 %.sroa.814.sroa.8.0187, !36338, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36404)
    #dbg_value(i64 %.sroa.814.sroa.8.0187, !36340, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36405)
    #dbg_value(i64 %.sroa.814.sroa.8.0187, !36342, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36406)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6140), !dbg !36475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6140, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.8, i64 16, i1 false), !dbg !36291
    #dbg_value(i64 %.sroa.814.sroa.9.sroa.0.0186, !36254, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36401)
    #dbg_value(i64 poison, !36254, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36401)
    #dbg_value(i64 poison, !36254, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !36401)
    #dbg_value(i64 poison, !36254, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !36401)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.8), !dbg !36473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !36476
  store ptr null, ptr %i.e, align 8, !dbg !36477
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !36477
  store i64 0, ptr %i.aa, align 8, !dbg !36477
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !36478
  %i.ac = load i8, ptr %i.ab, align 8, !dbg !36478, !range !3052, !noundef !1314
  %cond = icmp eq i8 %i.ac, 38, !dbg !36479
  br i1 %cond, label %bb.n, label %bb.t, !dbg !36479

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser12parse_kwargs(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef align 8 dereferenceable(488) %1)
          to label %bb.o unwind label %.thread196, !dbg !36480

.thread196:                                       ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.thread190, !dbg !36481

bb.o:                                             ; preds = %bb.n
  %i.ae = load i8, ptr %i.b, align 8, !dbg !36482, !range !3289, !noundef !1314 ; 2 uses
  %.not = icmp eq i8 %i.ae, -1, !dbg !36482
  br i1 %.not, label %bb.q, label %bb.p, !dbg !36483

bb.p:                                             ; preds = %bb.o
    #dbg_value(i8 %i.ae, !36278, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36408)
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !36484
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !36484
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !36485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.578.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.575.0..sroa_idx, i64 40, i1 false), !dbg !36484
    #dbg_value(i8 %i.ae, !36267, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36409)
    #dbg_value(i8 %i.ae, !36271, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36410)
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !36485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.477.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.474.0..sroa_idx, i64 31, i1 false), !dbg !36486
    #dbg_value(i8 %i.ae, !36270, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !36411)
  store i8 %i.ae, ptr %0, align 8, !dbg !36485
    #dbg_value(ptr %i.e, !3794, !DIExpression(), !36239)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit unwind label %bb.b, !dbg !36487

bb.q:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !36488 ; 2 uses
    #dbg_value(ptr %i.e, !3794, !DIExpression(), !36241)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit133 unwind label %bb.r, !dbg !36489

bb.r:                                             ; preds = %bb.q
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !dbg !36490
  br label %.thread190, !dbg !36486

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit133: ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !dbg !36490
  br label %bb.t, !dbg !36491

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !36481
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6140), !dbg !36444
  br label %bb.s, !dbg !36452

bb.s:                                             ; preds = %bb.ad, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %2), !dbg !36444
  br label %bb.aa, !dbg !36444

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit133, %bb.m
    #dbg_value(ptr undef, !3339, !DIExpression(), !36201)
    #dbg_value(ptr %1, !3343, !DIExpression(DW_OP_plus_uconst, 400, DW_OP_stack_value), !36201)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 432, !dbg !36492
    #dbg_value(i64 poison, !36254, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !36401)
  %i.ai = load <2 x i64>, ptr %i.ah, align 8, !dbg !36492, !alias.scope !36412, !noalias !36413
    #dbg_value(i64 poison, !36254, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !36401)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 408, !dbg !36493
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !36493, !alias.scope !36412, !noalias !36413, !noundef !1314
    #dbg_value(i64 %i.ak, !36254, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36401)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !36494
    #dbg_value(ptr %.sroa.814.sroa.6.0188, !36344, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36414)
    #dbg_value(ptr %.sroa.814.sroa.6.0188, !36346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36415)
    #dbg_value(ptr %.sroa.814.sroa.6.0188, !36325, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36416)
    #dbg_value(ptr %.sroa.814.sroa.6.0188, !36349, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !36417)
    #dbg_value(i64 %.sroa.814.sroa.8.0187, !36344, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36414)
    #dbg_value(i64 %.sroa.814.sroa.8.0187, !36346, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36415)
    #dbg_value(i64 %.sroa.814.sroa.8.0187, !36325, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36416)
    #dbg_value(i64 %.sroa.814.sroa.8.0187, !36349, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !36417)
    #dbg_value(i64 %.sroa.814.sroa.8.0187, !36350, !DIExpression(), !36418)
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser14parse_for_loop:bb.a
    #dbg_value(i64 2, !38303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38307)
    #dbg_value(i64 72, !38269, !DIExpression(), !38314)
    #dbg_value(ptr poison, !38303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38322)
    #dbg_value(i64 4, !38303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38322)
    #dbg_declare(ptr poison, !38225, !DIExpression(), !38336)
    #dbg_declare(ptr poison, !38250, !DIExpression(), !38339)
    #dbg_declare(ptr poison, !38259, !DIExpression(), !38342)
    #dbg_declare(ptr poison, !38264, !DIExpression(), !38345)
    #dbg_value(i64 1, !38269, !DIExpression(), !38354)
    #dbg_declare(ptr poison, !38284, !DIExpression(), !38357)
    #dbg_value(i64 0, !38294, !DIExpression(), !38360)
    #dbg_value(i64 1, !38269, !DIExpression(), !38363)
    #dbg_value(ptr %1, !38364, !DIExpression(), !38368)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 400, !dbg !38566 ; 8 uses
    #dbg_value(ptr %i.az, !4145, !DIExpression(), !37800)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 416, !dbg !38567
  %i.bb = load <2 x i64>, ptr %i.ba, align 8, !dbg !38567, !alias.scope !38369, !noalias !38370
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 432, !dbg !38568
  %i.bd = load <2 x i64>, ptr %i.bc, align 8, !dbg !38568, !alias.scope !38369, !noalias !38370
  %i.be = load <2 x i64>, ptr %i.az, align 8, !dbg !38569, !alias.scope !38369, !noalias !38370
    #dbg_value(i64 0, !38365, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38368)
    #dbg_value(i64 0, !4751, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38371)
    #dbg_value(i64 0, !4760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38372)
    #dbg_value(i64 poison, !4760, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !38372)
    #dbg_value(i64 poison, !4751, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !38371)
    #dbg_value(i64 poison, !38365, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !38368)
    #dbg_value(i64 poison, !4760, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !38372)
    #dbg_value(i64 poison, !4751, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !38371)
    #dbg_value(i64 poison, !38365, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !38368)
    #dbg_value(i64 poison, !4760, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !38372)
    #dbg_value(i64 poison, !4751, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !38371)
    #dbg_value(i64 poison, !38365, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !38368)
    #dbg_value(i64 poison, !4760, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !38372)
    #dbg_value(i64 poison, !4751, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !38371)
    #dbg_value(i64 poison, !38365, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !38368)
    #dbg_value(i64 poison, !4760, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !38372)
    #dbg_value(i64 poison, !4751, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !38371)
    #dbg_value(i64 poison, !38365, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !38368)
    #dbg_value(i64 poison, !4760, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !38372)
    #dbg_value(i64 poison, !4751, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !38371)
    #dbg_value(i64 poison, !38365, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !38368)
    #dbg_value(ptr %1, !4756, !DIExpression(), !37806)
    #dbg_value(ptr %1, !4765, !DIExpression(), !37808)
    #dbg_value(i64 72, !4770, !DIExpression(), !37811)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !38570 ; 4 uses
  %i.bg = load i64, ptr %i.bf, align 8, !dbg !38570, !alias.scope !38373, !noalias !38374, !noundef !1314 ; 3 uses
    #dbg_value(i64 %i.bg, !4757, !DIExpression(), !37815)
    #dbg_value(i64 %i.bg, !4775, !DIExpression(), !37817)
    #dbg_value(ptr %1, !4773, !DIExpression(), !37818)
  %i.bh = load i64, ptr %1, align 8, !dbg !38571, !range !3278, !alias.scope !38373, !noalias !38374, !noundef !1314
  %i.bi = icmp eq i64 %i.bg, %i.bh, !dbg !38572
  br i1 %i.bi, label %bb.b, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCs5yXxDE1DkoT_4tera7parsing6parser11BodyContextNtNtBM_5utils4SpanEE8push_mutBM_.exit, !dbg !38572

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs5yXxDE1DkoT_4tera7parsing6parser11BodyContextNtNtBT_5utils4SpanEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #29, !dbg !38573, !noalias !38374
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCs5yXxDE1DkoT_4tera7parsing6parser11BodyContextNtNtBM_5utils4SpanEE8push_mutBM_.exit, !dbg !38574

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCs5yXxDE1DkoT_4tera7parsing6parser11BodyContextNtNtBM_5utils4SpanEE8push_mutBM_.exit: ; preds = %bb.a, %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !38575
  %i.bk = load ptr, ptr %i.bj, align 8, !dbg !38575, !alias.scope !38373, !noalias !38374, !nonnull !1314, !noundef !1314
    #dbg_value(ptr %i.bk, !4776, !DIExpression(), !37817)
  %i.bl = getelementptr inbounds nuw [72 x i8], ptr %i.bk, i64 %i.bg, !dbg !38576 ; 4 uses
    #dbg_value(ptr %i.bl, !4758, !DIExpression(), !37822)
    #dbg_value(ptr %i.bl, !4763, !DIExpression(), !37823)
  store i64 0, ptr %i.bl, align 8, !dbg !38577
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 24, !dbg !38577
  store <2 x i64> %i.be, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !38577
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 40, !dbg !38577
  store <2 x i64> %i.bb, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !38577
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 56, !dbg !38577
  store <2 x i64> %i.bd, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !38577
  %i.bm = add i64 %i.bg, 1, !dbg !38578
  store i64 %i.bm, ptr %i.bf, align 8, !dbg !38578, !alias.scope !38373, !noalias !38374
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.831.sroa.0), !dbg !38579
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6804), !dbg !38138
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.636.sroa.10.sroa.8), !dbg !38138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !dbg !38138
  call fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser13next_or_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.ax, ptr noalias nofree noundef align 8 dereferenceable(488) %1), !dbg !38580
  %i.bn = load i8, ptr %i.ax, align 8, !dbg !38581, !range !3290, !noundef !1314 ; 3 uses
  %i.bo = icmp eq i8 %i.bn, -1, !dbg !38581
  br i1 %i.bo, label %bb.c, label %bb.d, !dbg !38582

bb.c:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCs5yXxDE1DkoT_4tera7parsing6parser11BodyContextNtNtBM_5utils4SpanEE8push_mutBM_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 8, !dbg !38583
  %.sroa.0813.0.copyload = load ptr, ptr %i.bp, align 8, !dbg !38583
  %.sroa.4814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16, !dbg !38583
  %.sroa.636.sroa.10.sroa.8.0..sroa.5815.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32, !dbg !38583
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.636.sroa.10.sroa.8, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.636.sroa.10.sroa.8.0..sroa.5815.0..sroa_idx.sroa_idx, i64 48, i1 false), !dbg !38583
    #dbg_value(ptr %.sroa.0813.0.copyload, !37941, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38375)
    #dbg_value(ptr %.sroa.0813.0.copyload, !38031, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38376)
    #dbg_value(i64 poison, !37941, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38375)
    #dbg_value(i64 poison, !38031, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38376)
  %.sroa.636.sroa.10.sroa.8.0..sroa.5818.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !38584
    #dbg_value(ptr %.sroa.0813.0.copyload, !38032, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38377)
    #dbg_value(i64 poison, !38032, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38377)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !38585
  %.sroa.4817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !38585
  %i.br = load <2 x i64>, ptr %.sroa.4814.0..sroa_idx, align 8, !dbg !38583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !38584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.636.sroa.10.sroa.8.0..sroa.5818.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.636.sroa.10.sroa.8, i64 48, i1 false), !dbg !38584
  store ptr %.sroa.0813.0.copyload, ptr %i.bq, align 8, !dbg !38585
  store <2 x i64> %i.br, ptr %.sroa.4817.0..sroa_idx, align 8, !dbg !38585
  store i64 -1, ptr %0, align 8, !dbg !38585
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.636.sroa.10.sroa.8), !dbg !38586
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6804), !dbg !38586
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.831.sroa.0), !dbg !38587
  br label %bb.dj, !dbg !38588

bb.d:                                             ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCs5yXxDE1DkoT_4tera7parsing6parser11BodyContextNtNtBM_5utils4SpanEE8push_mutBM_.exit
  %.sroa.4277.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 1, !dbg !38589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6804, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4277.0..sroa_idx, i64 7, i1 false), !dbg !38589
  %.sroa.4277.sroa.4.0..sroa.4277.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8, !dbg !38589
  %.sroa.4277.sroa.4.0.copyload = load ptr, ptr %.sroa.4277.sroa.4.0..sroa.4277.0..sroa_idx.sroa_idx, align 8, !dbg !38589 ; 3 uses
  %.sroa.4277.sroa.5.0..sroa.4277.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16, !dbg !38589 ; 2 uses
  %i.bs = load <2 x i64>, ptr %.sroa.4277.sroa.5.0..sroa.4277.0..sroa_idx.sroa_idx, align 8, !dbg !38589
  %.sroa.4277.sroa.5.0.copyload = load i64, ptr %.sroa.4277.sroa.5.0..sroa.4277.0..sroa_idx.sroa_idx, align 8, !dbg !38589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !dbg !38584
  %i.bt = icmp eq i8 %i.bn, 7, !dbg !38590
  br i1 %i.bt, label %.thread, label %bb.e, !dbg !38590

.thread:                                          ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4277.sroa.4.0.copyload) ]
    #dbg_value(i8 -1, !38121, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !38379)
    #dbg_value(ptr undef, !3222, !DIExpression(), !37759)
    #dbg_value(ptr %.sroa.4277.sroa.4.0.copyload, !38121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38379)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38379)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !38379)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !38379)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !38379)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !38379)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !38379)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !38379)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.636.sroa.10.sroa.8), !dbg !38586
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6804), !dbg !38586
  br label %bb.m, !dbg !38591

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !dbg !38592
  store i8 %i.bn, ptr %i.aw, align 8, !dbg !38592
  %.sroa.6804.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 1, !dbg !38592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6804.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6804, i64 7, i1 false), !dbg !38592
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !38592 ; 4 uses
  store ptr %.sroa.4277.sroa.4.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !38592
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !38592
  store <2 x i64> %i.bs, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !38592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !38593
    #dbg_value(ptr %i.aw, !37947, !DIExpression(), !38380)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !dbg !38594
  store ptr %i.aw, ptr %i.at, align 8, !dbg !38594
  %.sroa.4281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !38594
  store ptr @_RNvXs_NtNtCs5yXxDE1DkoT_4tera7parsing5lexerNtB4_5TokenNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4281.0..sroa_idx, align 8, !dbg !38594
    #dbg_value(ptr @56, !38381, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38385)
    #dbg_value(ptr %i.at, !38381, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38385)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37826)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37826)
    #dbg_value(ptr poison, !3324, !DIExpression(), !37826)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !37827)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !37829)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.au, ptr noundef nonnull @56, ptr noundef nonnull %i.at)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit unwind label %bb.g, !dbg !38595

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i737, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !38596
    #dbg_value(i8 %.sroa.029.0.copyload, !38121, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !38379)
    #dbg_value(ptr %.sroa.831.sroa.6.0.copyload, !38121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38379)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38379)
    #dbg_value(i64 %.sroa.831.sroa.9.sroa.12.0.copyload, !38121, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !38379)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !38379)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !38379)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !38379)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !38379)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !38379)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.636.sroa.10.sroa.8), !dbg !38586
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6804), !dbg !38586
  %.not702 = icmp eq i8 %.sroa.029.0.copyload, -1, !dbg !38597
  br i1 %.not702, label %bb.m, label %bb.l, !dbg !38591

bb.g:                                             ; preds = %bb.e, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aw) #25
          to label %common.resume unwind label %bb.av, !dbg !38596

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !38598
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.av, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.az)
          to label %bb.h unwind label %bb.g, !dbg !38593

bb.h:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit
  %.sroa.029.0.copyload = load i8, ptr %i.av, align 8, !dbg !38599 ; 2 uses
    #dbg_value(i8 %.sroa.029.0.copyload, !38121, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !38379)
  %.sroa.831.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 1, !dbg !38599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.831.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.831.0..sroa_idx, i64 7, i1 false), !dbg !38599
  %.sroa.831.sroa.6.0..sroa.831.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8, !dbg !38599
  %.sroa.831.sroa.6.0.copyload = load ptr, ptr %.sroa.831.sroa.6.0..sroa.831.0..sroa_idx.sroa_idx, align 8, !dbg !38599 ; 2 uses
    #dbg_value(ptr %.sroa.831.sroa.6.0.copyload, !38121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38379)
  %.sroa.831.sroa.8.0..sroa.831.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16, !dbg !38599 ; 2 uses
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38379)
  %i.bv = load <2 x i64>, ptr %.sroa.831.sroa.8.0..sroa.831.0..sroa_idx.sroa_idx, align 8, !dbg !38599
  %.sroa.831.sroa.8.0.copyload = load i64, ptr %.sroa.831.sroa.8.0..sroa.831.0..sroa_idx.sroa_idx, align 8, !dbg !38599
    #dbg_value(i64 %.sroa.831.sroa.8.0.copyload, !38121, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38379)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !38379)
  %.sroa.831.sroa.9.sroa.8.0..sroa.831.sroa.9.0..sroa.831.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 32, !dbg !38599
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !38379)
  %i.bw = load <2 x i64>, ptr %.sroa.831.sroa.9.sroa.8.0..sroa.831.sroa.9.0..sroa.831.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !38599
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !38379)
  %.sroa.831.sroa.9.sroa.10.0..sroa.831.sroa.9.0..sroa.831.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 48, !dbg !38599
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !38379)
  %i.bx = load <2 x i64>, ptr %.sroa.831.sroa.9.sroa.10.0..sroa.831.sroa.9.0..sroa.831.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !38599
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !38379)
  %.sroa.831.sroa.9.sroa.12.0..sroa.831.sroa.9.0..sroa.831.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 64, !dbg !38599
  %.sroa.831.sroa.9.sroa.12.0.copyload = load i64, ptr %.sroa.831.sroa.9.sroa.12.0..sroa.831.sroa.9.0..sroa.831.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !38599
    #dbg_value(i64 %.sroa.831.sroa.9.sroa.12.0.copyload, !38121, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !38379)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !38600
    #dbg_value(ptr %i.aw, !3222, !DIExpression(), !37831)
  %i.by = load i8, ptr %i.aw, align 8, !dbg !38601, !range !3228, !alias.scope !38386, !noundef !1314
  %i.bz = icmp eq i8 %i.by, 8, !dbg !38601
  br i1 %i.bz, label %bb.i, label %bb.f, !dbg !38601

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %.sroa.7.0..sroa_idx, !3230, !DIExpression(), !37835)
    #dbg_value(ptr %.sroa.7.0..sroa_idx, !3235, !DIExpression(), !37837)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i737 unwind label %bb.j, !dbg !38602

bb.j:                                             ; preds = %bb.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %.sroa.7.0..sroa_idx, !3240, !DIExpression(), !37839)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx)
          to label %common.resume unwind label %bb.k, !dbg !38603

bb.k:                                             ; preds = %bb.j
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !38602
  unreachable, !dbg !38602

common.resume:                                    ; preds = %bb.g, %bb.q, %.thread787, %bb.ay, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.dw, %bb.ay ], [ %i.ca, %bb.j ], [ %.pn717790, %.thread787 ], [ %.pn715, %bb.q ], [ %i.bu, %bb.g ]
  resume { ptr, i32 } %common.resume.op, !dbg !38136

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i737: ; preds = %bb.i
    #dbg_value(ptr %.sroa.7.0..sroa_idx, !3240, !DIExpression(), !37841)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx), !dbg !38604
  br label %bb.f, !dbg !38601

bb.l:                                             ; preds = %bb.f
  %.sroa.4327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !38605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4327.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.831.sroa.0, i64 7, i1 false), !dbg !38606
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.831.sroa.0), !dbg !38587
    #dbg_value(i8 %.sroa.029.0.copyload, !37950, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !38387)
    #dbg_value(i8 %.sroa.029.0.copyload, !38031, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !38388)
    #dbg_value(ptr %.sroa.831.sroa.6.0.copyload, !37950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38387)
    #dbg_value(ptr %.sroa.831.sroa.6.0.copyload, !38031, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38388)
    #dbg_value(i64 poison, !37950, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38387)
    #dbg_value(i64 poison, !38031, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38388)
    #dbg_value(i64 poison, !37950, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !38387)
    #dbg_value(i64 poison, !38031, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !38388)
    #dbg_value(i64 poison, !37950, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !38387)
    #dbg_value(i64 poison, !38031, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !38388)
    #dbg_value(i64 poison, !37950, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !38387)
    #dbg_value(i64 poison, !38031, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !38388)
    #dbg_value(i64 poison, !37950, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !38387)
    #dbg_value(i64 poison, !38031, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !38388)
    #dbg_value(i64 poison, !37950, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !38387)
    #dbg_value(i64 poison, !38031, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !38388)
    #dbg_value(i64 %.sroa.831.sroa.9.sroa.12.0.copyload, !37950, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !38387)
    #dbg_value(i64 %.sroa.831.sroa.9.sroa.12.0.copyload, !38031, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !38388)
    #dbg_value(i8 %.sroa.029.0.copyload, !38033, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !38389)
    #dbg_value(ptr %.sroa.831.sroa.6.0.copyload, !38033, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38389)
    #dbg_value(i64 poison, !38033, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38389)
    #dbg_value(i64 poison, !38033, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !38389)
    #dbg_value(i64 poison, !38033, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !38389)
    #dbg_value(i64 poison, !38033, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !38389)
    #dbg_value(i64 poison, !38033, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !38389)
    #dbg_value(i64 poison, !38033, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !38389)
    #dbg_value(i64 %.sroa.831.sroa.9.sroa.12.0.copyload, !38033, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !38389)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !38605
  store i8 %.sroa.029.0.copyload, ptr %i.cc, align 8, !dbg !38605
  %.sroa.5328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !38605
  store ptr %.sroa.831.sroa.6.0.copyload, ptr %.sroa.5328.0..sroa_idx, align 8, !dbg !38605
  %.sroa.6329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !38605
  store <2 x i64> %i.bv, ptr %.sroa.6329.0..sroa_idx, align 8, !dbg !38605
  %.sroa.8331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !38605
  store <2 x i64> %i.bw, ptr %.sroa.8331.0..sroa_idx, align 8, !dbg !38605
  %.sroa.10333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !38605
  store <2 x i64> %i.bx, ptr %.sroa.10333.0..sroa_idx, align 8, !dbg !38605
  %.sroa.12335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !38605
  store i64 %.sroa.831.sroa.9.sroa.12.0.copyload, ptr %.sroa.12335.0..sroa_idx, align 8, !dbg !38605
  store i64 -1, ptr %0, align 8, !dbg !38605
  br label %bb.dj, !dbg !38607

bb.m:                                             ; preds = %.thread, %bb.f
  %.sroa.831.sroa.6.0786 = phi ptr [ %.sroa.4277.sroa.4.0.copyload, %.thread ], [ %.sroa.831.sroa.6.0.copyload, %bb.f ]
  %.sroa.831.sroa.8.0785 = phi i64 [ %.sroa.4277.sroa.5.0.copyload, %.thread ], [ %.sroa.831.sroa.8.0.copyload, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.831.sroa.0), !dbg !38587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !dbg !38608
  store ptr %.sroa.831.sroa.6.0786, ptr %i.ay, align 8, !dbg !38608, !captures !4048
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8, !dbg !38608 ; 4 uses
  store i64 %.sroa.831.sroa.8.0785, ptr %i.cd, align 8, !dbg !38608
    #dbg_value(ptr @98, !38390, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38394)
    #dbg_value(i64 16, !38390, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38394)
    #dbg_value(ptr %i.ay, !38391, !DIExpression(), !38394)
  %i.ce = call noundef zeroext i1 @_RNvXsf_NtNtCsf3Ta7LF998c_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @98, i64 noundef 16), !dbg !38609
  br i1 %i.ce, label %.split, label %bb.n, !dbg !38610

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !38611
  store i64 -1, ptr %i.aq, align 8, !dbg !38612
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !38613 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 8, !dbg !38613, !range !3052, !noundef !1314
  %cond = icmp eq i8 %i.cg, 33, !dbg !38614
  br i1 %cond, label %bb.p, label %bb.o, !dbg !38614

.split:                                           ; preds = %bb.m
    #dbg_value(ptr %i.ay, !37953, !DIExpression(), !38395)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !38615
  store ptr %i.ay, ptr %i.ar, align 8, !dbg !38615
  %.sroa.4339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !38615
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs5yXxDE1DkoT_4tera, ptr %.sroa.4339.0..sroa_idx, align 8, !dbg !38615
    #dbg_value(ptr @93, !38381, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38398)
    #dbg_value(ptr %i.ar, !38381, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38398)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37844)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37844)
    #dbg_value(ptr poison, !3324, !DIExpression(), !37844)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !37845)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !37847)
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, ptr noundef nonnull @93, ptr noundef nonnull %i.ar), !dbg !38616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !38617
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !38618
  call void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ch, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.az), !dbg !38619
  store i64 -1, ptr %0, align 8, !dbg !38618
  br label %bb.dx, !dbg !38620

bb.o:                                             ; preds = %bb.n, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !38116
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7123.sroa.11), !dbg !38621
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !38157
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser13next_or_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.af, ptr noalias nofree noundef align 8 dereferenceable(488) %1)
          to label %bb.ba unwind label %bb.r, !dbg !38622

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !38142
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser13next_or_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.k, ptr noalias nofree noundef align 8 dereferenceable(488) %1)
          to label %bb.s unwind label %bb.r, !dbg !38623

bb.q:                                             ; preds = %bb.bk
  br i1 %.sroa.0275.3, label %.thread787, label %common.resume, !dbg !38624

bb.r:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i833, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i753, %bb.bh, %bb.al, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i, %bb.dp, %bb.bg, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit742, %bb.an, %bb.ak, %bb.ai, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_.exit, %bb.p, %bb.o
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.thread787

bb.s:                                             ; preds = %bb.p
  %i.cj = load i8, ptr %i.k, align 8, !dbg !38625, !range !3290, !noundef !1314 ; 3 uses
  %i.ck = icmp eq i8 %i.cj, -1, !dbg !38625
  br i1 %i.ck, label %bb.t, label %bb.u, !dbg !38626

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !38627
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !38628
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cm, ptr noundef nonnull align 8 dereferenceable(72) %i.cl, i64 72, i1 false), !dbg !38629
  store i64 -1, ptr %0, align 8, !dbg !38628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !38630
  br label %bb.aw, !dbg !38631

bb.u:                                             ; preds = %bb.s
  %.sroa.4343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 1, !dbg !38632
    #dbg_value(i8 %i.cj, !37958, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !38401)
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 1, !dbg !38129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.460.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4343.0..sroa_idx, i64 79, i1 false), !dbg !38142
  store i8 %i.cj, ptr %i.ap, align 8, !dbg !38129
    #dbg_value(ptr %i.ap, !3336, !DIExpression(), !37849)
    #dbg_value(ptr %i.ap, !3222, !DIExpression(), !37851)
  %i.cn = icmp eq i8 %i.cj, 8, !dbg !38633
  br i1 %i.cn, label %bb.v, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_.exit, !dbg !38633

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %i.ap, i64 8, !dbg !38633 ; 3 uses
    #dbg_value(ptr %i.co, !3230, !DIExpression(), !37853)
    #dbg_value(ptr %i.co, !3235, !DIExpression(), !37855)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i unwind label %bb.w, !dbg !38634

bb.w:                                             ; preds = %bb.v
  %i.cp = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.co, !3240, !DIExpression(), !37857)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %.thread787 unwind label %bb.x, !dbg !38635

bb.x:                                             ; preds = %bb.w
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !38634
  unreachable, !dbg !38634

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i: ; preds = %bb.v
    #dbg_value(ptr %i.co, !3240, !DIExpression(), !37859)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_.exit unwind label %bb.r, !dbg !38636

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_.exit: ; preds = %bb.u, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !38630
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.891.sroa.0), !dbg !38637
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser13next_or_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.j, ptr noalias nofree noundef align 8 dereferenceable(488) %1)
          to label %bb.y unwind label %bb.r, !dbg !38638

bb.y:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_.exit
  %i.cr = load i8, ptr %i.j, align 8, !dbg !38639, !range !3290, !noundef !1314 ; 3 uses
  %i.cs = icmp eq i8 %i.cr, -1, !dbg !38639
  %i.ct = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !38640 ; 2 uses
  br i1 %i.cs, label %bb.z, label %bb.aa, !dbg !38641

bb.z:                                             ; preds = %bb.y
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !38642
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cu, ptr noundef nonnull align 8 dereferenceable(72) %i.ct, i64 72, i1 false), !dbg !38643
  store i64 -1, ptr %0, align 8, !dbg !38642
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.891.sroa.0), !dbg !38644
  br label %bb.aw, !dbg !38631

bb.aa:                                            ; preds = %bb.y
  %.sroa.7.1.copyload = load ptr, ptr %i.ct, align 8, !dbg !38640 ; 3 uses
  %.sroa.8.1..sroa.4345.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !38640
  %.sroa.8.1.copyload = load i64, ptr %.sroa.8.1..sroa.4345.0..sroa_idx.sroa_idx, align 8, !dbg !38640 ; 2 uses
  %i.cv = icmp eq i8 %i.cr, 7, !dbg !38645
  br i1 %i.cv, label %.thread791, label %bb.ab, !dbg !38645

.thread791:                                       ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.copyload) ]
    #dbg_value(ptr %.sroa.7.1.copyload, !38121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38402)
    #dbg_value(i64 %.sroa.8.1.copyload, !38121, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38402)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !38402)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !38402)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !38402)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !38402)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !38402)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !38402)
    #dbg_value(i8 -1, !38121, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !38402)
    #dbg_value(ptr undef, !3222, !DIExpression(), !37752)
    #dbg_value(ptr %.sroa.7.1.copyload, !38121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38402)
    #dbg_value(i64 %.sroa.8.1.copyload, !38121, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38402)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !38402)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !38402)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !38402)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !38402)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !38402)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !38402)
  br label %bb.ai, !dbg !38646

bb.ab:                                            ; preds = %bb.aa
  %.sroa.9.1..sroa.4345.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !38640
  %.sroa.9.sroa.0.0.copyload = load i64, ptr %.sroa.9.1..sroa.4345.0..sroa_idx.sroa_idx, align 8, !dbg !38640
  %.sroa.4345.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1, !dbg !38647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !38648
  store i8 %i.cr, ptr %i.an, align 8, !dbg !38648
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 1, !dbg !38648
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4345.0..sroa_idx, i64 7, i1 false), !dbg !38648
  %.sroa.7.0..sroa_idx840 = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !38648 ; 4 uses
  store ptr %.sroa.7.1.copyload, ptr %.sroa.7.0..sroa_idx840, align 8, !dbg !38648
  %.sroa.8.0..sroa_idx841 = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !38648
  store i64 %.sroa.8.1.copyload, ptr %.sroa.8.0..sroa_idx841, align 8, !dbg !38648
  %.sroa.9.0..sroa_idx842 = getelementptr inbounds nuw i8, ptr %i.an, i64 24, !dbg !38648
  store i64 %.sroa.9.sroa.0.0.copyload, ptr %.sroa.9.0..sroa_idx842, align 8, !dbg !38648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !38649
    #dbg_value(ptr %i.an, !37966, !DIExpression(), !38403)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !38650
  store ptr %i.an, ptr %i.ak, align 8, !dbg !38650
  %.sroa.4349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !38650
  store ptr @_RNvXs_NtNtCs5yXxDE1DkoT_4tera7parsing5lexerNtB4_5TokenNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4349.0..sroa_idx, align 8, !dbg !38650
    #dbg_value(ptr @56, !38381, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38406)
    #dbg_value(ptr %i.ak, !38381, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38406)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37861)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37861)
    #dbg_value(ptr poison, !3324, !DIExpression(), !37861)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !37862)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !37864)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, ptr noundef nonnull @56, ptr noundef nonnull %i.ak)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit740 unwind label %bb.ac, !dbg !38651

.noexc836:                                        ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i833, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !38652
    #dbg_value(i8 %.sroa.089.0.copyload, !38121, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !38402)
    #dbg_value(ptr %.sroa.891.sroa.6.0.copyload, !38121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38402)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38402)
    #dbg_value(i64 %.sroa.891.sroa.9.sroa.12.0.copyload, !38121, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !38402)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !38402)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !38402)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !38402)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !38402)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !38402)
  %.not = icmp eq i8 %.sroa.089.0.copyload, -1, !dbg !38653
  br i1 %.not, label %bb.ai, label %bb.ah, !dbg !38646

bb.ac:                                            ; preds = %bb.ab, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit740
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.an) #25
          to label %.thread787 unwind label %bb.av, !dbg !38652

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit740: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !38654
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.am, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.az)
          to label %bb.ad unwind label %bb.ac, !dbg !38649

bb.ad:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit740
  %.sroa.089.0.copyload = load i8, ptr %i.am, align 8, !dbg !38655 ; 2 uses
    #dbg_value(i8 %.sroa.089.0.copyload, !38121, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !38402)
  %.sroa.891.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !38655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.891.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.891.0..sroa_idx, i64 7, i1 false), !dbg !38655
  %.sroa.891.sroa.6.0..sroa.891.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !38655
  %.sroa.891.sroa.6.0.copyload = load ptr, ptr %.sroa.891.sroa.6.0..sroa.891.0..sroa_idx.sroa_idx, align 8, !dbg !38655 ; 2 uses
    #dbg_value(ptr %.sroa.891.sroa.6.0.copyload, !38121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38402)
  %.sroa.891.sroa.8.0..sroa.891.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16, !dbg !38655 ; 2 uses
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38402)
  %i.cx = load <2 x i64>, ptr %.sroa.891.sroa.8.0..sroa.891.0..sroa_idx.sroa_idx, align 8, !dbg !38655
  %.sroa.891.sroa.8.0.copyload = load i64, ptr %.sroa.891.sroa.8.0..sroa.891.0..sroa_idx.sroa_idx, align 8, !dbg !38655
    #dbg_value(i64 %.sroa.891.sroa.8.0.copyload, !38121, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38402)
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !38402)
  %.sroa.891.sroa.9.sroa.8.0..sroa.891.sroa.9.0..sroa.891.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32, !dbg !38655
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !38402)
  %i.cy = load <2 x i64>, ptr %.sroa.891.sroa.9.sroa.8.0..sroa.891.sroa.9.0..sroa.891.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !38655
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !38402)
  %.sroa.891.sroa.9.sroa.10.0..sroa.891.sroa.9.0..sroa.891.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 48, !dbg !38655
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !38402)
  %i.cz = load <2 x i64>, ptr %.sroa.891.sroa.9.sroa.10.0..sroa.891.sroa.9.0..sroa.891.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !38655
    #dbg_value(i64 poison, !38121, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !38402)
  %.sroa.891.sroa.9.sroa.12.0..sroa.891.sroa.9.0..sroa.891.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 64, !dbg !38655
  %.sroa.891.sroa.9.sroa.12.0.copyload = load i64, ptr %.sroa.891.sroa.9.sroa.12.0..sroa.891.sroa.9.0..sroa.891.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !38655
    #dbg_value(i64 %.sroa.891.sroa.9.sroa.12.0.copyload, !38121, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !38402)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !38656
    #dbg_value(ptr %i.an, !3222, !DIExpression(), !37866)
  %i.da = load i8, ptr %i.an, align 8, !dbg !38657, !range !3228, !alias.scope !38407, !noundef !1314
  %i.db = icmp eq i8 %i.da, 8, !dbg !38657
  br i1 %i.db, label %bb.ae, label %.noexc836, !dbg !38657

bb.ae:                                            ; preds = %bb.ad
    #dbg_value(ptr %.sroa.7.0..sroa_idx840, !3230, !DIExpression(), !37870)
    #dbg_value(ptr %.sroa.7.0..sroa_idx840, !3235, !DIExpression(), !37872)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx840)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i833 unwind label %bb.af, !dbg !38658

bb.af:                                            ; preds = %bb.ae
  %i.dc = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %.sroa.7.0..sroa_idx840, !3240, !DIExpression(), !37874)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx840)
          to label %.thread787 unwind label %bb.ag, !dbg !38659

bb.ag:                                            ; preds = %bb.af
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !38658
  unreachable, !dbg !38658

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i833: ; preds = %bb.ae
    #dbg_value(ptr %.sroa.7.0..sroa_idx840, !3240, !DIExpression(), !37876)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx840)
          to label %.noexc836 unwind label %bb.r, !dbg !38660

bb.ah:                                            ; preds = %.noexc836
  %.sroa.4399.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !38661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4399.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.891.sroa.0, i64 7, i1 false), !dbg !38662
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.891.sroa.0), !dbg !38644
    #dbg_value(i8 %.sroa.089.0.copyload, !37969, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !38408)
    #dbg_value(i8 %.sroa.089.0.copyload, !38031, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !38409)
    #dbg_value(ptr %.sroa.891.sroa.6.0.copyload, !37969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38408)
    #dbg_value(ptr %.sroa.891.sroa.6.0.copyload, !38031, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38409)
    #dbg_value(i64 poison, !37969, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38408)
    #dbg_value(i64 poison, !38031, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38409)
    #dbg_value(i64 poison, !37969, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !38408)
    #dbg_value(i64 poison, !38031, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !38409)
    #dbg_value(i64 poison, !37969, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !38408)
    #dbg_value(i64 poison, !38031, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !38409)
    #dbg_value(i64 poison, !37969, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !38408)
    #dbg_value(i64 poison, !38031, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !38409)
    #dbg_value(i64 poison, !37969, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !38408)
    #dbg_value(i64 poison, !38031, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !38409)
    #dbg_value(i64 poison, !37969, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !38408)
    #dbg_value(i64 poison, !38031, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !38409)
    #dbg_value(i64 %.sroa.891.sroa.9.sroa.12.0.copyload, !37969, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !38408)
    #dbg_value(i64 %.sroa.891.sroa.9.sroa.12.0.copyload, !38031, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !38409)
    #dbg_value(i8 %.sroa.089.0.copyload, !38036, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !38410)
    #dbg_value(ptr %.sroa.891.sroa.6.0.copyload, !38036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38410)
    #dbg_value(i64 poison, !38036, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38410)
    #dbg_value(i64 poison, !38036, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !38410)
    #dbg_value(i64 poison, !38036, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !38410)
    #dbg_value(i64 poison, !38036, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !38410)
    #dbg_value(i64 poison, !38036, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !38410)
    #dbg_value(i64 poison, !38036, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !38410)
    #dbg_value(i64 %.sroa.891.sroa.9.sroa.12.0.copyload, !38036, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !38410)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !38661
  store i8 %.sroa.089.0.copyload, ptr %i.de, align 8, !dbg !38661
  %.sroa.5400.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !38661
  store ptr %.sroa.891.sroa.6.0.copyload, ptr %.sroa.5400.0..sroa_idx, align 8, !dbg !38661
  %.sroa.6401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !38661
  store <2 x i64> %i.cx, ptr %.sroa.6401.0..sroa_idx, align 8, !dbg !38661
  %.sroa.8403.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !38661
  store <2 x i64> %i.cy, ptr %.sroa.8403.0..sroa_idx, align 8, !dbg !38661
  %.sroa.10405.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !38661
  store <2 x i64> %i.cz, ptr %.sroa.10405.0..sroa_idx, align 8, !dbg !38661
  %.sroa.12407.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !38661
  store i64 %.sroa.891.sroa.9.sroa.12.0.copyload, ptr %.sroa.12407.0..sroa_idx, align 8, !dbg !38661
  store i64 -1, ptr %0, align 8, !dbg !38661
  br label %bb.aw, !dbg !38663

bb.ai:                                            ; preds = %.thread791, %.noexc836
  %.sroa.891.sroa.6.0803 = phi ptr [ %.sroa.7.1.copyload, %.thread791 ], [ %.sroa.891.sroa.6.0.copyload, %.noexc836 ] ; 2 uses
  %.sroa.891.sroa.8.0802 = phi i64 [ %.sroa.8.1.copyload, %.thread791 ], [ %.sroa.891.sroa.8.0.copyload, %.noexc836 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.891.sroa.0), !dbg !38644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !38664
  store ptr %.sroa.891.sroa.6.0803, ptr %i.ao, align 8, !dbg !38664, !captures !4048
  %i.df = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !38664
  store i64 %.sroa.891.sroa.8.0802, ptr %i.df, align 8, !dbg !38664
    #dbg_value(ptr @98, !38390, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38412)
    #dbg_value(i64 16, !38390, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38412)
    #dbg_value(ptr %i.ao, !38391, !DIExpression(), !38412)
  %i.dg = invoke noundef zeroext i1 @_RNvXsf_NtNtCsf3Ta7LF998c_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ao, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @98, i64 noundef 16)
          to label %bb.aj unwind label %bb.r, !dbg !38665

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.dg, label %bb.al, label %bb.ak, !dbg !38666

bb.ak:                                            ; preds = %bb.aj
  %i.dh = load ptr, ptr %i.ay, align 8, !dbg !38667, !nonnull !1314, !noundef !1314
  %i.di = load i64, ptr %i.cd, align 8, !dbg !38667, !noundef !1314 ; 6 uses
    #dbg_value(ptr %i.dh, !38236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38413)
    #dbg_value(ptr %i.dh, !38238, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38414)
    #dbg_value(ptr %i.dh, !38239, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38415)
    #dbg_value(ptr %i.dh, !38242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38416)
    #dbg_value(ptr %i.dh, !38244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38417)
    #dbg_value(i64 %i.di, !38236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38413)
    #dbg_value(i64 %i.di, !38238, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38414)
    #dbg_value(i64 %i.di, !38239, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38415)
    #dbg_value(i64 %i.di, !38242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38416)
    #dbg_value(i64 %i.di, !38244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38417)
    #dbg_value(ptr %i.dh, !38246, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38418)
    #dbg_value(ptr %i.dh, !38248, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38419)
    #dbg_value(ptr %i.dh, !38226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38420)
    #dbg_value(ptr %i.dh, !38251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38421)
    #dbg_value(i64 %i.di, !38246, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38418)
    #dbg_value(i64 %i.di, !38248, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38419)
    #dbg_value(i64 %i.di, !38226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38420)
    #dbg_value(i64 %i.di, !38251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38421)
    #dbg_value(i64 %i.di, !38252, !DIExpression(), !38422)
    #dbg_value(i64 %i.di, !38260, !DIExpression(), !38423)
    #dbg_value(i64 %i.di, !38265, !DIExpression(), !38424)
    #dbg_value(i64 %i.di, !38425, !DIExpression(), !38430)
    #dbg_value(i64 %i.di, !38431, !DIExpression(), !38436)
    #dbg_value(i64 %i.di, !38285, !DIExpression(), !38437)
    #dbg_value(i64 %i.di, !38296, !DIExpression(), !38300)
    #dbg_value(i64 1, !38286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38437)
    #dbg_value(i64 1, !38297, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38300)
    #dbg_value(i64 1, !38286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38437)
    #dbg_value(i64 1, !38297, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38300)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !38668
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %i.di, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.am unwind label %bb.r, !dbg !38668

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !38669
    #dbg_value(ptr %i.ao, !37972, !DIExpression(), !38438)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !38670
  store ptr %i.ao, ptr %i.ah, align 8, !dbg !38670
  %.sroa.4411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !38670
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs5yXxDE1DkoT_4tera, ptr %.sroa.4411.0..sroa_idx, align 8, !dbg !38670
    #dbg_value(ptr @93, !38381, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38441)
    #dbg_value(ptr %i.ah, !38381, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38441)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !37880)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !37880)
    #dbg_value(ptr poison, !3324, !DIExpression(), !37880)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !37881)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !37883)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noundef nonnull @93, ptr noundef nonnull %i.ah)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit742 unwind label %bb.r, !dbg !38671

bb.am:                                            ; preds = %bb.ak
  %i.dj = load i64, ptr %i.i, align 8, !dbg !38668, !range !3205, !noundef !1314
  %i.dk = trunc nuw i64 %i.dj to i1, !dbg !38672
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !38437
  %i.dm = load i64, ptr %i.dl, align 8, !dbg !38437, !range !3206, !noundef !1314 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !38437 ; 2 uses
  br i1 %i.dk, label %bb.an, label %bb.ao, !dbg !38672, !prof !3207

bb.an:                                            ; preds = %bb.am
  %i.do = load i64, ptr %i.dn, align 8, !dbg !38673
    #dbg_value(i64 %i.dm, !38288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38442)
    #dbg_value(i64 %i.do, !38288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38442)
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.dm, i64 %i.do) #27
          to label %bb.at unwind label %bb.r, !dbg !38674

bb.ao:                                            ; preds = %bb.am
  %i.dp = load ptr, ptr %i.dn, align 8, !dbg !38675, !nonnull !1314, !noundef !1314 ; 3 uses
    #dbg_value(i64 %i.dm, !38287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38443)
    #dbg_value(ptr %i.dp, !38287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38443)
    #dbg_value(ptr poison, !38295, !DIExpression(), !38444)
    #dbg_value(ptr poison, !38270, !DIExpression(), !38445)
  %i.dq = icmp ule i64 %i.di, %i.dm, !dbg !38676
    #dbg_value(i1 true, !38446, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !38449)
  call void @llvm.assume(i1 %i.dq), !dbg !38677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !38678
    #dbg_value(i64 %i.dm, !38253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !38450)
    #dbg_value(ptr %i.dp, !38253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !38450)
    #dbg_value(i64 0, !38253, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38450)
  %.not704 = icmp eq i64 %i.di, 0, !dbg !38679
  br i1 %.not704, label %bb.ap, label %bb.aq, !dbg !38679

bb.ap:                                            ; preds = %bb.aq, %bb.ao
    #dbg_value(i64 %i.di, !38253, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !38450)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgCecv3eZDcN_5alloc6string6StringEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aq)
          to label %bb.as unwind label %bb.ar, !dbg !38680

bb.aq:                                            ; preds = %bb.ao
    #dbg_value(ptr %i.dh, !38426, !DIExpression(), !38430)
    #dbg_value(ptr %i.dh, !38432, !DIExpression(), !38436)
    #dbg_value(ptr %i.dp, !38427, !DIExpression(), !38430)
    #dbg_value(ptr %i.dp, !38433, !DIExpression(), !38436)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dp, ptr nonnull align 1 %i.dh, i64 %i.di, i1 false), !dbg !38681
end_hunk_3
begin_hunk_4_@_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser22inner_parse_expression:bb.a

bb.fr:                                            ; preds = %bb.fp
    #dbg_value(i8 %i.rw, !41131, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !40839)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4195.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4386.0..sroa_idx.i, i64 79, i1 false), !dbg !42173
  store i8 %i.rw, ptr %i.au, align 8, !dbg !42180, !noalias !41397
    #dbg_value(ptr %i.au, !3336, !DIExpression(), !40841)
    #dbg_value(ptr %i.au, !3222, !DIExpression(), !40843)
  %i.rz = icmp eq i8 %i.rw, 8, !dbg !42181
  br i1 %i.rz, label %bb.fs, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_.exit, !dbg !42181

bb.fs:                                            ; preds = %bb.fr
    #dbg_value(ptr %i.fq, !3230, !DIExpression(), !40845)
    #dbg_value(ptr %i.fq, !3235, !DIExpression(), !40847)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fq)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i unwind label %bb.ft, !dbg !42182, !noalias !41277

bb.ft:                                            ; preds = %bb.fs
  %i.sa = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.fq, !3240, !DIExpression(), !40849)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fq)
          to label %.thread227 unwind label %bb.fu, !dbg !42183, !noalias !41277

bb.fu:                                            ; preds = %bb.ft
  %i.sb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !42182, !noalias !41277
  unreachable, !dbg !42182

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i: ; preds = %bb.fs
    #dbg_value(ptr %i.fq, !3240, !DIExpression(), !40851)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fq)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_.exit unwind label %.thread231.loopexit.loopexit.split-lp, !dbg !42184

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_.exit: ; preds = %bb.fr, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !42179, !noalias !41397
    #dbg_value(i8 1, !41092, !DIExpression(), !40401)
  br label %bb.fm, !dbg !42185

bb.fv:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7), !dbg !42186
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6218.i.sroa.8), !dbg !42187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !42187, !noalias !41397
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser22inner_parse_expression(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.aq, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1, i8 noundef %.sroa.9.0.i)
          to label %bb.hh unwind label %.thread231.loopexit.loopexit.split-lp, !dbg !42188, !noalias !41277, !inline_history !40322

bb.fw:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6198.sroa.7.i), !dbg !42189
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !dbg !42189, !noalias !41397
  call void @llvm.experimental.noalias.scope.decl(metadata !41605), !dbg !42190
  call void @llvm.experimental.noalias.scope.decl(metadata !41606), !dbg !42190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !42191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !42191
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.619.sroa.12.i), !dbg !42191
    #dbg_declare(ptr %.sroa.6140.i, !41025, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !40855)
    #dbg_value(ptr poison, !3339, !DIExpression(), !40857)
    #dbg_value(ptr %1, !41022, !DIExpression(), !40858)
    #dbg_declare(ptr %i.ar, !41023, !DIExpression(), !40859)
    #dbg_declare(ptr %i.j, !41607, !DIExpression(), !40864)
    #dbg_declare(ptr %i.i, !41030, !DIExpression(), !40865)
    #dbg_declare(ptr %i.e, !41037, !DIExpression(), !40866)
    #dbg_declare(ptr %i.b, !41611, !DIExpression(), !40871)
    #dbg_declare(ptr poison, !41615, !DIExpression(), !40887)
    #dbg_declare(ptr poison, !41631, !DIExpression(), !40892)
    #dbg_declare(ptr poison, !41636, !DIExpression(), !40895)
    #dbg_declare(ptr poison, !41639, !DIExpression(), !40898)
    #dbg_declare(ptr poison, !41642, !DIExpression(), !40903)
    #dbg_value(i64 0, !41648, !DIExpression(), !40906)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.8.i), !dbg !42191
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.814.sroa.0.i), !dbg !42192
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.814.sroa.9.sroa.9.i), !dbg !42192
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6200.i), !dbg !42193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !42193, !noalias !41653
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser13next_or_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1)
          to label %bb.fy unwind label %bb.fx, !dbg !42194, !noalias !41654, !inline_history !40908

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit135.i: ; preds = %.thread190.i
  br i1 %.sroa.044.1194.i, label %.thread.i, label %.thread221, !dbg !42195

bb.fx:                                            ; preds = %bb.gl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i126.i, %bb.fw
  %i.sc = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.fy:                                            ; preds = %bb.fw
  %i.sd = load i8, ptr %i.j, align 8, !dbg !42196, !range !3290, !noalias !41653, !noundef !1314 ; 3 uses
  %i.se = icmp eq i8 %i.sd, -1, !dbg !42196
  br i1 %i.se, label %bb.fz, label %bb.ga, !dbg !42197

bb.fz:                                            ; preds = %bb.fy
  %.sroa.0222.0.copyload.i = load ptr, ptr %.sroa.446.sroa.4.0..sroa.446.0..sroa_idx.sroa_idx.i, align 8, !dbg !42198, !noalias !41653 ; 2 uses
  %.sroa.6225.0.copyload.i = load i64, ptr %.sroa.446.sroa.7.0..sroa.446.0..sroa_idx.sroa_idx.i, align 8, !dbg !42198, !noalias !41653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.619.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.446.sroa.8.0..sroa.446.0..sroa_idx.sroa_idx.i, i64 24, i1 false), !dbg !42198, !noalias !41653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.769.sroa.6.0..sroa.769.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8227.0..sroa_idx.i, i64 16, i1 false), !dbg !42198, !noalias !41655
  %i.sf = load <2 x i64>, ptr %.sroa.446.sroa.5.0..sroa.446.0..sroa_idx.sroa_idx.i, align 8, !dbg !42198, !noalias !41653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !42199, !noalias !41653
    #dbg_value(ptr %.sroa.0222.0.copyload.i, !41026, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40909)
    #dbg_value(ptr %.sroa.0222.0.copyload.i, !41016, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40910)
    #dbg_value(i64 poison, !41026, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40909)
    #dbg_value(i64 poison, !41016, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40910)
    #dbg_value(i64 poison, !41026, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40909)
    #dbg_value(i64 poison, !41016, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40910)
    #dbg_value(i64 %.sroa.6225.0.copyload.i, !41026, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !40909)
    #dbg_value(i64 %.sroa.6225.0.copyload.i, !41016, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !40910)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.769.sroa.4.0..sroa.769.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.619.sroa.12.i, i64 24, i1 false), !dbg !42199, !noalias !41655
    #dbg_value(ptr %.sroa.0222.0.copyload.i, !41017, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40911)
    #dbg_value(i64 poison, !41017, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40911)
    #dbg_value(i64 poison, !41017, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40911)
    #dbg_value(i64 %.sroa.6225.0.copyload.i, !41017, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !40911)
  store ptr %.sroa.0222.0.copyload.i, ptr %i.at, align 8, !dbg !42200, !alias.scope !41605, !noalias !41655
  store <2 x i64> %i.sf, ptr %i.fs, align 8, !dbg !42200, !alias.scope !41605, !noalias !41655
  store i64 %.sroa.6225.0.copyload.i, ptr %.sroa.769.0..sroa_idx.i, align 8, !dbg !42200, !alias.scope !41605, !noalias !41655
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6200.i), !dbg !42201
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.814.sroa.0.i), !dbg !42202
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.814.sroa.9.sroa.9.i), !dbg !42202
  %i.sg = ptrtoint ptr %.sroa.0222.0.copyload.i to i64, !dbg !42203
  %i.sh = trunc i64 %i.sg to i8, !dbg !42203
  br label %bb.gy, !dbg !42203

bb.ga:                                            ; preds = %bb.fy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6200.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.446.0..sroa_idx.i, i64 7, i1 false), !dbg !42204, !noalias !41653
  %.sroa.446.sroa.4.0.copyload.i = load ptr, ptr %.sroa.446.sroa.4.0..sroa.446.0..sroa_idx.sroa_idx.i, align 8, !dbg !42204, !noalias !41653 ; 3 uses
  %i.si = load <2 x i64>, ptr %.sroa.446.sroa.5.0..sroa.446.0..sroa_idx.sroa_idx.i, align 8, !dbg !42204, !noalias !41653
  %.sroa.446.sroa.5.0.copyload.i = load i64, ptr %.sroa.446.sroa.5.0..sroa.446.0..sroa_idx.sroa_idx.i, align 8, !dbg !42204, !noalias !41653
  %.sroa.446.sroa.7.0.copyload.i = load i64, ptr %.sroa.446.sroa.7.0..sroa.446.0..sroa_idx.sroa_idx.i, align 8, !dbg !42204, !noalias !41653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.619.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.446.sroa.8.0..sroa.446.0..sroa_idx.sroa_idx.i, i64 24, i1 false), !dbg !42204, !noalias !41653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !42199, !noalias !41653
  %i.sj = icmp eq i8 %i.sd, 7, !dbg !42205
  br i1 %i.sj, label %.thread177.i, label %bb.gb, !dbg !42205

.thread177.i:                                     ; preds = %bb.ga
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.446.sroa.4.0.copyload.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.814.sroa.9.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(16) %i.gl, i64 16, i1 false), !dbg !42206, !noalias !41653
    #dbg_value(ptr undef, !3222, !DIExpression(), !39925)
    #dbg_value(i64 poison, !41150, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !40912)
    #dbg_value(i64 poison, !41150, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !40912)
    #dbg_value(i64 poison, !41150, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !40912)
    #dbg_value(i64 %.sroa.446.sroa.7.0.copyload.i, !41150, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !40912)
    #dbg_value(i8 -1, !41150, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !40912)
    #dbg_value(ptr %.sroa.446.sroa.4.0.copyload.i, !41150, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40912)
    #dbg_value(i64 poison, !41150, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40912)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6200.i), !dbg !42201
  br label %bb.gi, !dbg !42207

bb.gb:                                            ; preds = %bb.ga
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !42208, !noalias !41653
  store i8 %i.sd, ptr %i.i, align 8, !dbg !42208, !noalias !41653
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6200.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6200.i, i64 7, i1 false), !dbg !42208, !noalias !41653
  store ptr %.sroa.446.sroa.4.0.copyload.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !42208, !noalias !41653
  store <2 x i64> %i.si, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !42208, !noalias !41653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !42209, !noalias !41653
    #dbg_value(ptr %i.i, !41032, !DIExpression(), !40913)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !42210, !noalias !41653
  store ptr %i.i, ptr %i.f, align 8, !dbg !42210, !noalias !41653
  store ptr @_RNvXs_NtNtCs5yXxDE1DkoT_4tera7parsing5lexerNtB4_5TokenNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.450.0..sroa_idx.i, align 8, !dbg !42210, !noalias !41653
    #dbg_value(ptr @56, !41657, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40916)
    #dbg_value(ptr %i.f, !41657, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40916)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40918)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40918)
    #dbg_value(ptr poison, !3324, !DIExpression(), !40918)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !40919)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !40921)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @56, ptr noundef nonnull %i.f)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit.i unwind label %bb.gc, !dbg !42211, !noalias !41654, !inline_history !40908

.noexc129.i:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i126.i, %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !42212, !noalias !41653
    #dbg_value(i64 poison, !41150, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !40912)
    #dbg_value(i64 poison, !41150, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !40912)
    #dbg_value(i64 poison, !41150, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !40912)
    #dbg_value(i64 poison, !41150, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !40912)
    #dbg_value(i8 %.sroa.012.0.copyload.i, !41150, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !40912)
    #dbg_value(ptr %.sroa.814.sroa.6.0.copyload.i, !41150, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40912)
    #dbg_value(i64 %.sroa.814.sroa.8.0.copyload.i, !41150, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40912)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6200.i), !dbg !42201
  %.not117.i = icmp eq i8 %.sroa.012.0.copyload.i, -1, !dbg !42213
  br i1 %.not117.i, label %bb.gi, label %bb.gh, !dbg !42207

bb.gc:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit.i, %bb.gb
  %i.sk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #25
          to label %.thread.i unwind label %bb.gx, !dbg !42212, !noalias !41654, !inline_history !40908

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !42214, !noalias !41653
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.fe)
          to label %bb.gd unwind label %bb.gc, !dbg !42209, !noalias !41654, !inline_history !40908

bb.gd:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit.i
  %.sroa.012.0.copyload.i = load i8, ptr %i.h, align 8, !dbg !42215, !noalias !41653 ; 3 uses
    #dbg_value(i8 %.sroa.012.0.copyload.i, !41150, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !40912)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.814.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.814.0..sroa_idx.i, i64 7, i1 false), !dbg !42215, !noalias !41653
  %.sroa.814.sroa.6.0.copyload.i = load ptr, ptr %.sroa.814.sroa.6.0..sroa.814.0..sroa_idx.sroa_idx.i, align 8, !dbg !42215, !noalias !41653 ; 2 uses
    #dbg_value(ptr %.sroa.814.sroa.6.0.copyload.i, !41150, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40912)
  %.sroa.814.sroa.8.0.copyload.i = load i64, ptr %.sroa.814.sroa.8.0..sroa.814.0..sroa_idx.sroa_idx.i, align 8, !dbg !42215, !noalias !41653 ; 2 uses
    #dbg_value(i64 %.sroa.814.sroa.8.0.copyload.i, !41150, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40912)
    #dbg_value(i64 poison, !41150, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !40912)
  %i.sl = load <2 x i64>, ptr %.sroa.814.sroa.9.0..sroa.814.0..sroa_idx.sroa_idx.i, align 8, !dbg !42215, !noalias !41653
  %.sroa.814.sroa.9.sroa.0.0.copyload.i = load i64, ptr %.sroa.814.sroa.9.0..sroa.814.0..sroa_idx.sroa_idx.i, align 8, !dbg !42215, !noalias !41653
    #dbg_value(i64 %.sroa.814.sroa.9.sroa.0.0.copyload.i, !41150, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !40912)
    #dbg_value(i64 poison, !41150, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !40912)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.814.sroa.9.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.814.sroa.9.sroa.9.0..sroa.814.sroa.9.0..sroa.814.0..sroa_idx.sroa_idx.sroa_idx.i, i64 16, i1 false), !dbg !42215, !noalias !41653
    #dbg_value(i64 poison, !41150, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !40912)
  %i.sm = load <2 x i64>, ptr %.sroa.814.sroa.9.sroa.10.0..sroa.814.sroa.9.0..sroa.814.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !dbg !42215, !noalias !41653
    #dbg_value(i64 poison, !41150, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !40912)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !42216, !noalias !41653
    #dbg_value(ptr %i.i, !3222, !DIExpression(), !40923)
  %i.sn = load i8, ptr %i.i, align 8, !dbg !42217, !range !3228, !alias.scope !41660, !noalias !41653, !noundef !1314
  %i.so = icmp eq i8 %i.sn, 8, !dbg !42217
  br i1 %i.so, label %bb.ge, label %.noexc129.i, !dbg !42217

bb.ge:                                            ; preds = %bb.gd
    #dbg_value(ptr %.sroa.7.0..sroa_idx.i, !3230, !DIExpression(), !40927)
    #dbg_value(ptr %.sroa.7.0..sroa_idx.i, !3235, !DIExpression(), !40929)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i126.i unwind label %bb.gf, !dbg !42218, !noalias !41654, !inline_history !40908

bb.gf:                                            ; preds = %bb.ge
  %i.sp = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %.sroa.7.0..sroa_idx.i, !3240, !DIExpression(), !40931)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i)
          to label %.thread.i unwind label %bb.gg, !dbg !42219, !noalias !41654, !inline_history !40908

bb.gg:                                            ; preds = %bb.gf
  %i.sq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !42218, !noalias !41654, !inline_history !40908
  unreachable, !dbg !42218

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i126.i: ; preds = %bb.ge
    #dbg_value(ptr %.sroa.7.0..sroa_idx.i, !3240, !DIExpression(), !40933)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx.i)
          to label %.noexc129.i unwind label %bb.fx, !dbg !42220, !noalias !41654, !inline_history !40908

bb.gh:                                            ; preds = %.noexc129.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.466.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.814.sroa.0.i, i64 7, i1 false), !dbg !42221, !noalias !41655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.814.sroa.9.sroa.9.i, i64 16, i1 false), !dbg !42221, !noalias !41653
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.814.sroa.0.i), !dbg !42202
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.814.sroa.9.sroa.9.i), !dbg !42202
    #dbg_value(i8 %.sroa.012.0.copyload.i, !41035, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !40934)
    #dbg_value(i8 %.sroa.012.0.copyload.i, !41016, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !40935)
    #dbg_value(ptr %.sroa.814.sroa.6.0.copyload.i, !41035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40934)
    #dbg_value(ptr %.sroa.814.sroa.6.0.copyload.i, !41016, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40935)
    #dbg_value(i64 %.sroa.814.sroa.8.0.copyload.i, !41035, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40934)
    #dbg_value(i64 %.sroa.814.sroa.8.0.copyload.i, !41016, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40935)
    #dbg_value(i64 poison, !41016, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !40935)
    #dbg_value(i64 poison, !41035, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !40934)
    #dbg_value(i64 poison, !41016, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !40935)
    #dbg_value(i64 poison, !41035, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !40934)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.769.sroa.5.0..sroa.769.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.8.i, i64 16, i1 false), !dbg !42202, !noalias !41655
    #dbg_value(i64 poison, !41016, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !40935)
    #dbg_value(i64 poison, !41035, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !40934)
    #dbg_value(i64 poison, !41016, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !40935)
    #dbg_value(i64 poison, !41035, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !40934)
    #dbg_value(i8 %.sroa.012.0.copyload.i, !41018, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !40936)
    #dbg_value(ptr %.sroa.814.sroa.6.0.copyload.i, !41018, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40936)
    #dbg_value(i64 %.sroa.814.sroa.8.0.copyload.i, !41018, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !40936)
    #dbg_value(i64 poison, !41018, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !40936)
    #dbg_value(i64 poison, !41018, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !40936)
    #dbg_value(i64 poison, !41018, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !40936)
    #dbg_value(i64 poison, !41018, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !40936)
  store i8 %.sroa.012.0.copyload.i, ptr %i.at, align 8, !dbg !42222, !alias.scope !41605, !noalias !41655
  store ptr %.sroa.814.sroa.6.0.copyload.i, ptr %i.fs, align 8, !dbg !42222, !alias.scope !41605, !noalias !41655
  store i64 %.sroa.814.sroa.8.0.copyload.i, ptr %.sroa.4388.0..sroa_idx.i, align 8, !dbg !42222, !alias.scope !41605, !noalias !41655
  store <2 x i64> %i.sl, ptr %.sroa.769.0..sroa_idx.i, align 8, !dbg !42222, !alias.scope !41605, !noalias !41655
  store <2 x i64> %i.sm, ptr %.sroa.769.sroa.6.0..sroa.769.0..sroa_idx.sroa_idx.i, align 8, !dbg !42222, !alias.scope !41605, !noalias !41655
  br label %bb.gy, !dbg !42223

bb.gi:                                            ; preds = %.noexc129.i, %.thread177.i
  %.sroa.814.sroa.6.0188.i = phi ptr [ %.sroa.446.sroa.4.0.copyload.i, %.thread177.i ], [ %.sroa.814.sroa.6.0.copyload.i, %.noexc129.i ]
  %.sroa.814.sroa.8.0187.i = phi i64 [ %.sroa.446.sroa.5.0.copyload.i, %.thread177.i ], [ %.sroa.814.sroa.8.0.copyload.i, %.noexc129.i ] ; 5 uses
  %.sroa.814.sroa.9.sroa.0.0186.i = phi i64 [ %.sroa.446.sroa.7.0.copyload.i, %.thread177.i ], [ %.sroa.814.sroa.9.sroa.0.0.copyload.i, %.noexc129.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.814.sroa.9.sroa.9.i, i64 16, i1 false), !dbg !42224, !noalias !41653
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.814.sroa.0.i), !dbg !42202
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.814.sroa.9.sroa.9.i), !dbg !42202
    #dbg_value(ptr %.sroa.814.sroa.6.0188.i, !41024, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40937)
    #dbg_value(ptr %.sroa.814.sroa.6.0188.i, !41629, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40938)
    #dbg_value(ptr %.sroa.814.sroa.6.0188.i, !41626, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40939)
    #dbg_value(ptr %.sroa.814.sroa.6.0188.i, !41627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40940)
    #dbg_value(ptr %.sroa.814.sroa.6.0188.i, !41624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40941)
    #dbg_value(ptr %.sroa.814.sroa.6.0188.i, !41622, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40942)
    #dbg_value(i64 %.sroa.814.sroa.8.0187.i, !41024, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40937)
    #dbg_value(i64 %.sroa.814.sroa.8.0187.i, !41629, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40938)
    #dbg_value(i64 %.sroa.814.sroa.8.0187.i, !41626, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40939)
    #dbg_value(i64 %.sroa.814.sroa.8.0187.i, !41627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40940)
    #dbg_value(i64 %.sroa.814.sroa.8.0187.i, !41624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40941)
    #dbg_value(i64 %.sroa.814.sroa.8.0187.i, !41622, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40942)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6140.i), !dbg !42225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6140.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.8.i, i64 16, i1 false), !dbg !42191, !noalias !41653
    #dbg_value(i64 %.sroa.814.sroa.9.sroa.0.0186.i, !41025, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40937)
    #dbg_value(i64 poison, !41025, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40937)
    #dbg_value(i64 poison, !41025, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !40937)
    #dbg_value(i64 poison, !41025, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !40937)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.sroa.8.i), !dbg !42223
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !42226, !noalias !41653
  store ptr null, ptr %i.e, align 8, !dbg !42227, !noalias !41653
  store i64 0, ptr %i.gm, align 8, !dbg !42227, !noalias !41653
  %i.sr = load i8, ptr %i.ez, align 8, !dbg !42228, !range !3052, !alias.scope !41606, !noalias !41654, !noundef !1314
  %cond.i491 = icmp eq i8 %i.sr, 38, !dbg !42229
  br i1 %cond.i491, label %bb.gj, label %bb.gp, !dbg !42229

bb.gj:                                            ; preds = %bb.gi
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser12parse_kwargs(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1)
          to label %bb.gk unwind label %.thread196.i, !dbg !42230, !noalias !41654, !inline_history !40908

.thread196.i:                                     ; preds = %bb.gj
  %i.ss = landingpad { ptr, i32 }
          cleanup
  br label %.thread190.i, !dbg !42231

bb.gk:                                            ; preds = %bb.gj
  %i.st = load i8, ptr %i.b, align 8, !dbg !42232, !range !3289, !noalias !41653, !noundef !1314 ; 2 uses
  %.not.i492 = icmp eq i8 %i.st, -1, !dbg !42232
  br i1 %.not.i492, label %bb.gm, label %bb.gl, !dbg !42233

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.769.sroa.4.0..sroa.769.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.575.0..sroa_idx.i, i64 40, i1 false), !dbg !42234, !noalias !41655
    #dbg_value(i8 %i.st, !41038, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !40945)
    #dbg_value(i8 %i.st, !41016, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !40946)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.466.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.474.0..sroa_idx.i, i64 31, i1 false), !dbg !42235, !noalias !41655
    #dbg_value(i8 %i.st, !41015, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !40947)
    #dbg_value(ptr %i.e, !3794, !DIExpression(), !40949)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit.i unwind label %bb.fx, !dbg !42236, !noalias !41654, !inline_history !40908

bb.gm:                                            ; preds = %bb.gk
    #dbg_value(ptr %i.e, !3794, !DIExpression(), !40951)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit133.i unwind label %bb.gn, !dbg !42237, !noalias !41654, !inline_history !40908

bb.gn:                                            ; preds = %bb.gm
  %i.su = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.gn, i64 24, i1 false), !dbg !42238, !noalias !41653
  br label %.thread190.i, !dbg !42235

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit133.i: ; preds = %bb.gm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.gn, i64 24, i1 false), !dbg !42238, !noalias !41653
  br label %bb.gp, !dbg !42239

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit.i: ; preds = %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !42231, !noalias !41653
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6140.i), !dbg !42195
  br label %bb.go, !dbg !42203

bb.go:                                            ; preds = %bb.gy, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit.i
  %.pr497 = phi i8 [ %.pr497595, %bb.gy ], [ %i.st, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit.i ] ; 2 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.ar)
          to label %bb.ha unwind label %.loopexit.split-lp, !dbg !42195, !inline_history !40908

bb.gp:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB21_.exit133.i, %bb.gi
    #dbg_value(ptr undef, !3339, !DIExpression(), !40857)
    #dbg_value(ptr %1, !3343, !DIExpression(DW_OP_plus_uconst, 400, DW_OP_stack_value), !40857)
    #dbg_value(i64 poison, !41025, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !40937)
  %i.sv = load <2 x i64>, ptr %i.fu, align 8, !dbg !42240, !alias.scope !41661, !noalias !41662
    #dbg_value(i64 poison, !41025, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !40937)
  %i.sw = load i64, ptr %i.fw, align 8, !dbg !42241, !alias.scope !41661, !noalias !41662, !noundef !1314
    #dbg_value(i64 %i.sw, !41025, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40937)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !42242, !noalias !41653
    #dbg_value(ptr %.sroa.814.sroa.6.0188.i, !41620, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40955)
    #dbg_value(ptr %.sroa.814.sroa.6.0188.i, !41618, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40956)
    #dbg_value(ptr %.sroa.814.sroa.6.0188.i, !41616, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40957)
    #dbg_value(ptr %.sroa.814.sroa.6.0188.i, !41632, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40958)
    #dbg_value(i64 %.sroa.814.sroa.8.0187.i, !41620, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40955)
    #dbg_value(i64 %.sroa.814.sroa.8.0187.i, !41618, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40956)
    #dbg_value(i64 %.sroa.814.sroa.8.0187.i, !41616, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40957)
    #dbg_value(i64 %.sroa.814.sroa.8.0187.i, !41632, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40958)
    #dbg_value(i64 %.sroa.814.sroa.8.0187.i, !41633, !DIExpression(), !40959)
    #dbg_value(i64 %.sroa.814.sroa.8.0187.i, !41637, !DIExpression(), !40960)
    #dbg_value(i64 %.sroa.814.sroa.8.0187.i, !41640, !DIExpression(), !40961)
    #dbg_value(i64 %.sroa.814.sroa.8.0187.i, !41663, !DIExpression(), !40964)
    #dbg_value(i64 %.sroa.814.sroa.8.0187.i, !41667, !DIExpression(), !40967)
    #dbg_value(i64 %.sroa.814.sroa.8.0187.i, !41643, !DIExpression(), !40968)
    #dbg_value(i64 %.sroa.814.sroa.8.0187.i, !41650, !DIExpression(), !40906)
    #dbg_value(i64 1, !41644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40968)
    #dbg_value(i64 1, !41651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !40906)
    #dbg_value(i64 1, !41644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40968)
    #dbg_value(i64 1, !41651, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !40906)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !42243, !noalias !41653
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.814.sroa.8.0187.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.gr unwind label %.loopexit502, !dbg !42243, !noalias !41654, !inline_history !40908

.loopexit502:                                     ; preds = %bb.gp
  %lpad.loopexit504 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

.loopexit.split-lp503:                            ; preds = %bb.gs
  %lpad.loopexit.split-lp505 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

bb.gq:                                            ; preds = %.loopexit.split-lp503, %.loopexit502
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit504, %.loopexit502 ], [ %lpad.loopexit.split-lp505, %.loopexit.split-lp503 ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.ar) #25
          to label %.thread190.i unwind label %bb.gx, !dbg !42244, !noalias !41605, !inline_history !40908

bb.gr:                                            ; preds = %bb.gp
  %i.sx = load i64, ptr %i.a, align 8, !dbg !42243, !range !3205, !noalias !41653, !noundef !1314
end_hunk_4
begin_hunk_5_@_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser27parse_dotted_component_name:bb.a
    #dbg_declare(ptr poison, !47969, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !47989)
    #dbg_declare(ptr poison, !47968, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !47990)
    #dbg_declare(ptr poison, !47968, !DIExpression(DW_OP_LLVM_fragment, 192, 448), !47990)
    #dbg_declare(ptr poison, !47945, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !47991)
    #dbg_declare(ptr poison, !47939, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !47992)
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [72 x i8], align 8                ; 10 uses
  %i.f = alloca [32 x i8], align 8                ; 10 uses
    #dbg_declare(ptr poison, !47931, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !47993)
    #dbg_declare(ptr poison, !47931, !DIExpression(DW_OP_LLVM_fragment, 192, 448), !47993)
    #dbg_declare(ptr poison, !47945, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !47994)
    #dbg_declare(ptr poison, !47930, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !47995)
  %i.g = alloca [80 x i8], align 8                ; 14 uses
  %.sroa.689.sroa.10.sroa.8 = alloca [48 x i8], align 8 ; 7 uses
  %.sroa.6397 = alloca [7 x i8], align 1          ; 6 uses
    #dbg_value(ptr poison, !3222, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !47780)
    #dbg_value(ptr %.sroa.6397, !3222, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !47780)
  %.sroa.884.sroa.0 = alloca [7 x i8], align 1    ; 6 uses
    #dbg_declare(ptr %.sroa.884.sroa.0, !47956, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !47996)
    #dbg_declare(ptr poison, !47928, !DIExpression(DW_OP_LLVM_fragment, 8, 632), !47997)
  %i.h = alloca [80 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 13 uses
    #dbg_declare(ptr poison, !47945, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !47998)
    #dbg_declare(ptr poison, !47924, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !47999)
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %i.l = alloca [72 x i8], align 8                ; 10 uses
  %i.m = alloca [32 x i8], align 8                ; 10 uses
    #dbg_declare(ptr poison, !47916, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !48000)
    #dbg_declare(ptr poison, !47916, !DIExpression(DW_OP_LLVM_fragment, 192, 448), !48000)
    #dbg_declare(ptr poison, !47945, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !48001)
    #dbg_declare(ptr poison, !47915, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !48002)
  %i.n = alloca [80 x i8], align 8                ; 14 uses
  %.sroa.630.sroa.10.sroa.8 = alloca [48 x i8], align 8 ; 7 uses
  %.sroa.6390 = alloca [7 x i8], align 1          ; 6 uses
    #dbg_value(ptr poison, !3222, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !47782)
    #dbg_value(ptr %.sroa.6390, !3222, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !47782)
  %.sroa.825.sroa.0 = alloca [7 x i8], align 1    ; 6 uses
    #dbg_declare(ptr %.sroa.825.sroa.0, !47956, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !48003)
    #dbg_value(ptr %1, !47913, !DIExpression(), !48004)
    #dbg_declare(ptr %i.n, !47967, !DIExpression(), !48005)
    #dbg_declare(ptr %i.m, !47919, !DIExpression(), !48006)
    #dbg_declare(ptr %i.i, !47926, !DIExpression(), !48007)
    #dbg_declare(ptr %i.a, !47967, !DIExpression(), !48008)
    #dbg_declare(ptr poison, !47927, !DIExpression(), !48009)
    #dbg_declare(ptr poison, !47945, !DIExpression(), !48012)
    #dbg_declare(ptr %i.g, !47967, !DIExpression(), !48013)
    #dbg_declare(ptr %i.f, !47934, !DIExpression(), !48014)
    #dbg_declare(ptr poison, !47971, !DIExpression(), !48015)
    #dbg_declare(ptr poison, !47948, !DIExpression(), !48016)
    #dbg_declare(ptr poison, !48017, !DIExpression(), !48027)
    #dbg_declare(ptr poison, !48041, !DIExpression(), !48047)
    #dbg_declare(ptr poison, !48048, !DIExpression(), !48052)
    #dbg_declare(ptr poison, !48053, !DIExpression(), !48057)
    #dbg_declare(ptr poison, !48058, !DIExpression(), !48065)
    #dbg_value(i64 0, !48066, !DIExpression(), !48072)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.825.sroa.0), !dbg !48185
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6390), !dbg !47988
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.630.sroa.10.sroa.8), !dbg !47988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !47988
  call fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser13next_or_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.n, ptr noalias nofree noundef align 8 dereferenceable(488) %1), !dbg !48186
  %i.o = load i8, ptr %i.n, align 8, !dbg !48187, !range !3290, !noundef !1314 ; 3 uses
  %i.p = icmp eq i8 %i.o, -1, !dbg !48187
  br i1 %i.p, label %bb.b, label %bb.c, !dbg !48188

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !48189
  %.sroa.0411.0.copyload = load ptr, ptr %i.q, align 8, !dbg !48189
    #dbg_value(ptr %.sroa.0411.0.copyload, !47969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48073)
  %.sroa.4412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !48189
  %.sroa.4412.0.copyload = load i64, ptr %.sroa.4412.0..sroa_idx, align 8, !dbg !48189
    #dbg_value(i64 %.sroa.4412.0.copyload, !47969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48073)
  %.sroa.5413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !48189
  %.sroa.630.sroa.10.sroa.0.0.copyload455 = load i64, ptr %.sroa.5413.0..sroa_idx, align 8, !dbg !48189
  %.sroa.630.sroa.10.sroa.8.0..sroa.5413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !48189
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.630.sroa.10.sroa.8, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.630.sroa.10.sroa.8.0..sroa.5413.0..sroa_idx.sroa_idx, i64 48, i1 false), !dbg !48189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !48190
    #dbg_value(ptr %.sroa.0411.0.copyload, !47915, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48074)
    #dbg_value(ptr %.sroa.0411.0.copyload, !47945, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48075)
    #dbg_value(i64 %.sroa.4412.0.copyload, !47915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48074)
    #dbg_value(i64 %.sroa.4412.0.copyload, !47945, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48075)
  %.sroa.5416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !48191
  store i64 %.sroa.630.sroa.10.sroa.0.0.copyload455, ptr %.sroa.5416.0..sroa_idx, align 8, !dbg !48190
  %.sroa.630.sroa.10.sroa.8.0..sroa.5416.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !48190
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.630.sroa.10.sroa.8.0..sroa.5416.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.630.sroa.10.sroa.8, i64 48, i1 false), !dbg !48190
    #dbg_value(ptr %.sroa.0411.0.copyload, !47946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48076)
    #dbg_value(i64 %.sroa.4412.0.copyload, !47946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48076)
  store ptr %.sroa.0411.0.copyload, ptr %0, align 8, !dbg !48191
  %.sroa.4415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48191
  store i64 %.sroa.4412.0.copyload, ptr %.sroa.4415.0..sroa_idx, align 8, !dbg !48191
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.630.sroa.10.sroa.8), !dbg !48192
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6390), !dbg !48192
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.825.sroa.0), !dbg !48193
  br label %bb.ap, !dbg !48194

bb.c:                                             ; preds = %bb.a
    #dbg_value(i8 %i.o, !47968, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !48078)
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !48195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6390, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4110.0..sroa_idx, i64 7, i1 false), !dbg !48195
  %.sroa.4110.sroa.4.0..sroa.4110.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !48195
  %.sroa.4110.sroa.4.0.copyload = load ptr, ptr %.sroa.4110.sroa.4.0..sroa.4110.0..sroa_idx.sroa_idx, align 8, !dbg !48195 ; 3 uses
    #dbg_value(ptr %.sroa.4110.sroa.4.0.copyload, !47968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48078)
  %.sroa.4110.sroa.5.0..sroa.4110.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !48195
  %.sroa.4110.sroa.5.0.copyload = load i64, ptr %.sroa.4110.sroa.5.0..sroa.4110.0..sroa_idx.sroa_idx, align 8, !dbg !48195 ; 2 uses
    #dbg_value(i64 %.sroa.4110.sroa.5.0.copyload, !47968, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48078)
  %.sroa.4110.sroa.6.0..sroa.4110.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !48195
  %.sroa.630.sroa.10.sroa.0.0.copyload456 = load i64, ptr %.sroa.4110.sroa.6.0..sroa.4110.0..sroa_idx.sroa_idx, align 8, !dbg !48195
  %.sroa.630.sroa.10.sroa.8.0..sroa.4110.sroa.6.0..sroa.4110.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !48195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.630.sroa.10.sroa.8, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.630.sroa.10.sroa.8.0..sroa.4110.sroa.6.0..sroa.4110.0..sroa_idx.sroa_idx.sroa_idx, i64 48, i1 false), !dbg !48195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !48190
    #dbg_value(i8 %i.o, !47916, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !48079)
    #dbg_value(ptr %.sroa.4110.sroa.4.0.copyload, !47916, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48079)
    #dbg_value(i64 %.sroa.4110.sroa.5.0.copyload, !47916, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48079)
  %i.r = icmp eq i8 %i.o, 7, !dbg !48196
  br i1 %i.r, label %.thread, label %bb.d, !dbg !48196

.thread:                                          ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4110.sroa.4.0.copyload) ]
    #dbg_value(i8 -1, !47956, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !48080)
    #dbg_value(ptr undef, !3222, !DIExpression(), !47782)
    #dbg_value(ptr %.sroa.4110.sroa.4.0.copyload, !47956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48080)
    #dbg_value(i64 %.sroa.4110.sroa.5.0.copyload, !47956, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48080)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !48080)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !48080)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !48080)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !48080)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !48080)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !48080)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.630.sroa.10.sroa.8), !dbg !48192
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6390), !dbg !48192
  br label %bb.l, !dbg !48197

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !48198
  store i8 %i.o, ptr %i.m, align 8, !dbg !48198
  %.sroa.6390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !48198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6390.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6390, i64 7, i1 false), !dbg !48198
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !48198 ; 4 uses
  store ptr %.sroa.4110.sroa.4.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !48198
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !48198
  store i64 %.sroa.4110.sroa.5.0.copyload, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !48198
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !48198
  store i64 %.sroa.630.sroa.10.sroa.0.0.copyload456, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !48198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !48199
    #dbg_value(ptr %i.m, !47921, !DIExpression(), !48081)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !48200
  store ptr %i.m, ptr %i.j, align 8, !dbg !48200
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !48200
  store ptr @_RNvXs_NtNtCs5yXxDE1DkoT_4tera7parsing5lexerNtB4_5TokenNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4114.0..sroa_idx, align 8, !dbg !48200
    #dbg_value(ptr @56, !48082, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48086)
    #dbg_value(ptr %i.j, !48082, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48086)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !47802)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !47802)
    #dbg_value(ptr poison, !3324, !DIExpression(), !47802)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !47803)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !47805)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull @56, ptr noundef nonnull %i.j)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit unwind label %bb.f, !dbg !48201

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i325, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !48202
    #dbg_value(i8 %.sroa.023.0.copyload, !47956, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !48080)
    #dbg_value(ptr %.sroa.825.sroa.6.0.copyload, !47956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48080)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48080)
    #dbg_value(i64 %.sroa.825.sroa.9.sroa.12.0.copyload, !47956, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !48080)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !48080)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !48080)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !48080)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !48080)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !48080)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.630.sroa.10.sroa.8), !dbg !48192
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6390), !dbg !48192
  %.not316 = icmp eq i8 %.sroa.023.0.copyload, -1, !dbg !48203
  br i1 %.not316, label %bb.l, label %bb.k, !dbg !48197

bb.f:                                             ; preds = %bb.d, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #25
          to label %common.resume unwind label %bb.al, !dbg !48202

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !48204
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 400, !dbg !48205
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t)
          to label %bb.g unwind label %bb.f, !dbg !48199

bb.g:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit
  %.sroa.023.0.copyload = load i8, ptr %i.l, align 8, !dbg !48206 ; 2 uses
    #dbg_value(i8 %.sroa.023.0.copyload, !47956, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !48080)
  %.sroa.825.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 1, !dbg !48206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.825.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.825.0..sroa_idx, i64 7, i1 false), !dbg !48206
  %.sroa.825.sroa.6.0..sroa.825.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !48206
  %.sroa.825.sroa.6.0.copyload = load ptr, ptr %.sroa.825.sroa.6.0..sroa.825.0..sroa_idx.sroa_idx, align 8, !dbg !48206 ; 2 uses
    #dbg_value(ptr %.sroa.825.sroa.6.0.copyload, !47956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48080)
  %.sroa.825.sroa.8.0..sroa.825.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !48206 ; 2 uses
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48080)
  %i.u = load <2 x i64>, ptr %.sroa.825.sroa.8.0..sroa.825.0..sroa_idx.sroa_idx, align 8, !dbg !48206
  %.sroa.825.sroa.8.0.copyload = load i64, ptr %.sroa.825.sroa.8.0..sroa.825.0..sroa_idx.sroa_idx, align 8, !dbg !48206
    #dbg_value(i64 %.sroa.825.sroa.8.0.copyload, !47956, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48080)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !48080)
  %.sroa.825.sroa.9.sroa.8.0..sroa.825.sroa.9.0..sroa.825.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32, !dbg !48206
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !48080)
  %i.v = load <2 x i64>, ptr %.sroa.825.sroa.9.sroa.8.0..sroa.825.sroa.9.0..sroa.825.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !48206
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !48080)
  %.sroa.825.sroa.9.sroa.10.0..sroa.825.sroa.9.0..sroa.825.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48, !dbg !48206
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !48080)
  %i.w = load <2 x i64>, ptr %.sroa.825.sroa.9.sroa.10.0..sroa.825.sroa.9.0..sroa.825.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !48206
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !48080)
  %.sroa.825.sroa.9.sroa.12.0..sroa.825.sroa.9.0..sroa.825.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64, !dbg !48206
  %.sroa.825.sroa.9.sroa.12.0.copyload = load i64, ptr %.sroa.825.sroa.9.sroa.12.0..sroa.825.sroa.9.0..sroa.825.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !48206
    #dbg_value(i64 %.sroa.825.sroa.9.sroa.12.0.copyload, !47956, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !48080)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !48207
    #dbg_value(ptr %i.m, !3222, !DIExpression(), !47807)
  %i.x = load i8, ptr %i.m, align 8, !dbg !48208, !range !3228, !alias.scope !48087, !noundef !1314
  %i.y = icmp eq i8 %i.x, 8, !dbg !48208
  br i1 %i.y, label %bb.h, label %bb.e, !dbg !48208

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr %.sroa.7.0..sroa_idx, !3230, !DIExpression(), !47811)
    #dbg_value(ptr %.sroa.7.0..sroa_idx, !3235, !DIExpression(), !47813)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i325 unwind label %bb.i, !dbg !48209

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %.sroa.7.0..sroa_idx, !3240, !DIExpression(), !47815)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx)
          to label %common.resume unwind label %bb.j, !dbg !48210

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !48209
  unreachable, !dbg !48209

common.resume:                                    ; preds = %bb.f, %.body, %bb.an, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.bv, %bb.an ], [ %i.z, %bb.i ], [ %.pn, %.body ], [ %i.s, %bb.f ]
  resume { ptr, i32 } %common.resume.op, !dbg !48004

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i325: ; preds = %bb.h
    #dbg_value(ptr %.sroa.7.0..sroa_idx, !3240, !DIExpression(), !47817)
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx), !dbg !48211
  br label %bb.e, !dbg !48208

bb.k:                                             ; preds = %bb.e
    #dbg_value(i8 %.sroa.023.0.copyload, !47958, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !48088)
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !48212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4163.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.825.sroa.0, i64 7, i1 false), !dbg !48213
    #dbg_value(ptr %.sroa.825.sroa.6.0.copyload, !47958, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48088)
    #dbg_value(i64 poison, !47958, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48088)
    #dbg_value(i64 poison, !47958, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !48088)
    #dbg_value(i64 poison, !47958, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !48088)
    #dbg_value(i64 poison, !47958, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !48088)
    #dbg_value(i64 poison, !47958, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !48088)
    #dbg_value(i64 poison, !47958, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !48088)
    #dbg_value(i64 %.sroa.825.sroa.9.sroa.12.0.copyload, !47958, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !48088)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.825.sroa.0), !dbg !48193
    #dbg_value(i8 %.sroa.023.0.copyload, !47924, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !48089)
    #dbg_value(i8 %.sroa.023.0.copyload, !47945, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !48090)
    #dbg_value(ptr %.sroa.825.sroa.6.0.copyload, !47924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48089)
    #dbg_value(ptr %.sroa.825.sroa.6.0.copyload, !47945, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48090)
    #dbg_value(i64 poison, !47924, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48089)
    #dbg_value(i64 poison, !47945, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48090)
    #dbg_value(i64 poison, !47924, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !48089)
    #dbg_value(i64 poison, !47945, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !48090)
    #dbg_value(i64 poison, !47924, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !48089)
    #dbg_value(i64 poison, !47945, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !48090)
    #dbg_value(i64 poison, !47924, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !48089)
    #dbg_value(i64 poison, !47945, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !48090)
    #dbg_value(i64 poison, !47924, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !48089)
    #dbg_value(i64 poison, !47945, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !48090)
    #dbg_value(i64 poison, !47924, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !48089)
    #dbg_value(i64 poison, !47945, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !48090)
    #dbg_value(i64 %.sroa.825.sroa.9.sroa.12.0.copyload, !47924, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !48089)
    #dbg_value(i64 %.sroa.825.sroa.9.sroa.12.0.copyload, !47945, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !48090)
    #dbg_value(i8 %.sroa.023.0.copyload, !47947, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !48091)
    #dbg_value(ptr %.sroa.825.sroa.6.0.copyload, !47947, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48091)
    #dbg_value(i64 poison, !47947, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48091)
    #dbg_value(i64 poison, !47947, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !48091)
    #dbg_value(i64 poison, !47947, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !48091)
    #dbg_value(i64 poison, !47947, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !48091)
    #dbg_value(i64 poison, !47947, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !48091)
    #dbg_value(i64 poison, !47947, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !48091)
    #dbg_value(i64 %.sroa.825.sroa.9.sroa.12.0.copyload, !47947, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !48091)
  store i8 %.sroa.023.0.copyload, ptr %0, align 8, !dbg !48212
  %.sroa.5164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48212
  store ptr %.sroa.825.sroa.6.0.copyload, ptr %.sroa.5164.0..sroa_idx, align 8, !dbg !48212
  %.sroa.6165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !48212
  store <2 x i64> %i.u, ptr %.sroa.6165.0..sroa_idx, align 8, !dbg !48212
  %.sroa.8167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !48212
  store <2 x i64> %i.v, ptr %.sroa.8167.0..sroa_idx, align 8, !dbg !48212
  %.sroa.10169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !48212
  store <2 x i64> %i.w, ptr %.sroa.10169.0..sroa_idx, align 8, !dbg !48212
  %.sroa.12171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !48212
  store i64 %.sroa.825.sroa.9.sroa.12.0.copyload, ptr %.sroa.12171.0..sroa_idx, align 8, !dbg !48212
  br label %bb.ap, !dbg !48214

bb.l:                                             ; preds = %.thread, %bb.e
  %.sroa.825.sroa.6.0356 = phi ptr [ %.sroa.4110.sroa.4.0.copyload, %.thread ], [ %.sroa.825.sroa.6.0.copyload, %bb.e ]
  %.sroa.825.sroa.8.0355 = phi i64 [ %.sroa.4110.sroa.5.0.copyload, %.thread ], [ %.sroa.825.sroa.8.0.copyload, %bb.e ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.825.sroa.0), !dbg !48193
    #dbg_value(ptr %.sroa.825.sroa.6.0356, !47914, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48092)
    #dbg_value(ptr %.sroa.825.sroa.6.0356, !48028, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48093)
    #dbg_value(ptr %.sroa.825.sroa.6.0356, !48030, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48094)
    #dbg_value(ptr %.sroa.825.sroa.6.0356, !48031, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48095)
    #dbg_value(ptr %.sroa.825.sroa.6.0356, !48033, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48096)
    #dbg_value(ptr %.sroa.825.sroa.6.0356, !48035, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48097)
    #dbg_value(i64 %.sroa.825.sroa.8.0355, !47914, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48092)
    #dbg_value(i64 %.sroa.825.sroa.8.0355, !48028, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48093)
    #dbg_value(i64 %.sroa.825.sroa.8.0355, !48030, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48094)
    #dbg_value(i64 %.sroa.825.sroa.8.0355, !48031, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48095)
    #dbg_value(i64 %.sroa.825.sroa.8.0355, !48033, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48096)
    #dbg_value(i64 %.sroa.825.sroa.8.0355, !48035, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48097)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !48215
    #dbg_value(ptr %.sroa.825.sroa.6.0356, !48037, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48098)
    #dbg_value(ptr %.sroa.825.sroa.6.0356, !48039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48099)
    #dbg_value(ptr %.sroa.825.sroa.6.0356, !48018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48100)
    #dbg_value(ptr %.sroa.825.sroa.6.0356, !48042, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48101)
    #dbg_value(i64 %.sroa.825.sroa.8.0355, !48037, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48098)
    #dbg_value(i64 %.sroa.825.sroa.8.0355, !48039, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48099)
    #dbg_value(i64 %.sroa.825.sroa.8.0355, !48018, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48100)
    #dbg_value(i64 %.sroa.825.sroa.8.0355, !48042, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48101)
    #dbg_value(i64 %.sroa.825.sroa.8.0355, !48043, !DIExpression(), !48102)
    #dbg_value(i64 %.sroa.825.sroa.8.0355, !48049, !DIExpression(), !48103)
    #dbg_value(i64 %.sroa.825.sroa.8.0355, !48054, !DIExpression(), !48104)
    #dbg_value(i64 %.sroa.825.sroa.8.0355, !48105, !DIExpression(), !48110)
    #dbg_value(i64 %.sroa.825.sroa.8.0355, !48111, !DIExpression(), !48116)
    #dbg_value(i64 %.sroa.825.sroa.8.0355, !48059, !DIExpression(), !48117)
    #dbg_value(i64 %.sroa.825.sroa.8.0355, !48068, !DIExpression(), !48072)
    #dbg_value(i64 1, !48060, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48117)
    #dbg_value(i64 1, !48069, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48072)
    #dbg_value(i64 1, !48060, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48117)
    #dbg_value(i64 1, !48069, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48072)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !48216
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.825.sroa.8.0355, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !48216
  %i.ab = load i64, ptr %i.b, align 8, !dbg !48216, !range !3205, !noundef !1314
  %i.ac = trunc nuw i64 %i.ab to i1, !dbg !48217
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !48117
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !48117, !range !3206, !noundef !1314 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !48117 ; 2 uses
  br i1 %i.ac, label %bb.m, label %bb.n, !dbg !48217, !prof !3207

bb.m:                                             ; preds = %bb.l
  %i.ag = load i64, ptr %i.af, align 8, !dbg !48218
    #dbg_value(i64 %i.ae, !48062, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48118)
    #dbg_value(i64 %i.ag, !48062, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48118)
  call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.ae, i64 %i.ag) #27, !dbg !48219
  unreachable, !dbg !48219

bb.n:                                             ; preds = %bb.l
  %i.ah = load ptr, ptr %i.af, align 8, !dbg !48220, !nonnull !1314, !noundef !1314 ; 2 uses
    #dbg_value(i64 %i.ae, !48061, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48119)
    #dbg_value(ptr %i.ah, !48061, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48119)
    #dbg_value(ptr poison, !48067, !DIExpression(), !48120)
  %i.ai = icmp ule i64 %.sroa.825.sroa.8.0355, %i.ae, !dbg !48221
    #dbg_value(i1 true, !48121, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !48124)
  call void @llvm.assume(i1 %i.ai), !dbg !48222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !48223
    #dbg_value(i64 %i.ae, !48125, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48128)
    #dbg_value(i64 %i.ae, !48044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48129)
    #dbg_value(ptr %i.ah, !48125, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48128)
    #dbg_value(ptr %i.ah, !48044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48129)
    #dbg_value(i64 0, !48125, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48128)
    #dbg_value(i64 0, !48044, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48129)
  %.not317 = icmp eq i64 %.sroa.825.sroa.8.0355, 0, !dbg !48224
  br i1 %.not317, label %bb.o, label %bb.p, !dbg !48224

bb.o:                                             ; preds = %bb.p, %bb.n
    #dbg_value(i64 %.sroa.825.sroa.8.0355, !48044, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48129)
    #dbg_value(i64 %.sroa.825.sroa.8.0355, !48125, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48128)
  store i64 %i.ae, ptr %i.i, align 8, !dbg !48225
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !48225 ; 3 uses
  store ptr %i.ah, ptr %.sroa.4160.0..sroa_idx, align 8, !dbg !48225
  %.sroa.6161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !48225 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  store i64 %.sroa.825.sroa.8.0355, ptr %.sroa.6161.0..sroa_idx, align 8, !dbg !48092
  %i.ak = load i8, ptr %i.aj, align 8, !dbg !48226, !range !3052, !noundef !1314
  %cond380 = icmp eq i8 %i.ak, 30, !dbg !48227
  br i1 %cond380, label %.lr.ph, label %._crit_edge, !dbg !48227

.lr.ph:                                           ; preds = %bb.o
  %.sroa.4173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %.sroa.4175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 400
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.884.sroa.6.0..sroa.884.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.884.sroa.8.0..sroa.884.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.884.sroa.9.sroa.8.0..sroa.884.sroa.9.0..sroa.884.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.884.sroa.9.sroa.10.0..sroa.884.sroa.9.0..sroa.884.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.884.sroa.9.sroa.12.0..sroa.884.sroa.9.0..sroa.884.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %.sroa.4175.sroa.4.0..sroa.4175.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4175.sroa.5.0..sroa.4175.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.4175.sroa.6.0..sroa.4175.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.6397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 1
end_hunk_5
begin_hunk_6_@_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser27parse_dotted_component_name:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !48231
  store i8 -1, ptr %0, align 8, !dbg !48230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !48232
  br label %bb.ap, !dbg !48233

bb.q:                                             ; preds = %.lr.ph, %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs5yXxDE1DkoT_4tera.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !47978
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser13next_or_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef align 8 dereferenceable(488) %1)
          to label %bb.s unwind label %bb.r, !dbg !48234

.body:                                            ; preds = %bb.af, %bb.w, %bb.r, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.ac ], [ %i.ap, %bb.r ], [ %i.au, %bb.w ], [ %i.bg, %bb.af ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #25
          to label %common.resume unwind label %bb.al, !dbg !48232

bb.r:                                             ; preds = %bb.aj, %bb.ai, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i336, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_.exit, %bb.q
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.q
  %i.aq = load i8, ptr %i.a, align 8, !dbg !48235, !range !3290, !noundef !1314 ; 3 uses
  %i.ar = icmp eq i8 %i.aq, -1, !dbg !48235
  br i1 %i.ar, label %bb.t, label %bb.u, !dbg !48236

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !48237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.as, i64 72, i1 false), !dbg !48238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !48239
  br label %bb.am, !dbg !48240

bb.u:                                             ; preds = %bb.s
    #dbg_value(i8 %i.aq, !47970, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !48131)
    #dbg_value(i8 %i.aq, !47928, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !48132)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(79) %.sroa.453.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(79) %.sroa.4173.0..sroa_idx, i64 79, i1 false), !dbg !47978
  store i8 %i.aq, ptr %i.h, align 8, !dbg !47997
    #dbg_value(ptr %i.h, !3336, !DIExpression(), !47823)
    #dbg_value(ptr %i.h, !3222, !DIExpression(), !47825)
  %i.at = icmp eq i8 %i.aq, 8, !dbg !48241
  br i1 %i.at, label %bb.v, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_.exit, !dbg !48241

bb.v:                                             ; preds = %bb.u
    #dbg_value(ptr %i.al, !3230, !DIExpression(), !47827)
    #dbg_value(ptr %i.al, !3235, !DIExpression(), !47829)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i unwind label %bb.w, !dbg !48242

bb.w:                                             ; preds = %bb.v
  %i.au = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.al, !3240, !DIExpression(), !47831)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %.body unwind label %bb.x, !dbg !48243

bb.x:                                             ; preds = %bb.w
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !48242
  unreachable, !dbg !48242

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i: ; preds = %bb.v
    #dbg_value(ptr %i.al, !3240, !DIExpression(), !47833)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_.exit unwind label %bb.r, !dbg !48244

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_.exit: ; preds = %bb.u, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !48239
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.884.sroa.0), !dbg !48245
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6397), !dbg !48246
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.689.sroa.10.sroa.8), !dbg !48246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !48246
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser13next_or_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.g, ptr noalias nofree noundef align 8 dereferenceable(488) %1)
          to label %bb.y unwind label %bb.r, !dbg !48247

bb.y:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_.exit
  %i.aw = load i8, ptr %i.g, align 8, !dbg !48248, !range !3290, !noundef !1314 ; 3 uses
  %i.ax = icmp eq i8 %i.aw, -1, !dbg !48248
  br i1 %i.ax, label %bb.z, label %bb.aa, !dbg !48249

bb.z:                                             ; preds = %bb.y
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !48250
  %.sroa.0420.0.copyload = load ptr, ptr %i.ay, align 8, !dbg !48250
    #dbg_value(ptr %.sroa.0420.0.copyload, !47966, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48133)
  %.sroa.4421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !48250
  %.sroa.4421.0.copyload = load i64, ptr %.sroa.4421.0..sroa_idx, align 8, !dbg !48250
    #dbg_value(i64 %.sroa.4421.0.copyload, !47966, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48133)
  %.sroa.5422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !48250
  %.sroa.689.sroa.10.sroa.0.0.copyload457 = load i64, ptr %.sroa.5422.0..sroa_idx, align 8, !dbg !48250
  %.sroa.689.sroa.10.sroa.8.0..sroa.5422.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !48250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.689.sroa.10.sroa.8, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.689.sroa.10.sroa.8.0..sroa.5422.0..sroa_idx.sroa_idx, i64 48, i1 false), !dbg !48250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !48251
    #dbg_value(ptr %.sroa.0420.0.copyload, !47930, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48134)
    #dbg_value(ptr %.sroa.0420.0.copyload, !47945, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48135)
    #dbg_value(i64 %.sroa.4421.0.copyload, !47930, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48134)
    #dbg_value(i64 %.sroa.4421.0.copyload, !47945, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48135)
  %.sroa.5425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !48252
  store i64 %.sroa.689.sroa.10.sroa.0.0.copyload457, ptr %.sroa.5425.0..sroa_idx, align 8, !dbg !48251
  %.sroa.689.sroa.10.sroa.8.0..sroa.5425.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !48251
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.689.sroa.10.sroa.8.0..sroa.5425.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.689.sroa.10.sroa.8, i64 48, i1 false), !dbg !48251
    #dbg_value(ptr %.sroa.0420.0.copyload, !47949, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48136)
    #dbg_value(i64 %.sroa.4421.0.copyload, !47949, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48136)
  store ptr %.sroa.0420.0.copyload, ptr %0, align 8, !dbg !48252
  %.sroa.4424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48252
  store i64 %.sroa.4421.0.copyload, ptr %.sroa.4424.0..sroa_idx, align 8, !dbg !48252
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.689.sroa.10.sroa.8), !dbg !48253
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6397), !dbg !48253
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.884.sroa.0), !dbg !48254
  br label %bb.am, !dbg !48240

bb.aa:                                            ; preds = %bb.y
    #dbg_value(i8 %i.aw, !47972, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !48137)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6397, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4175.0..sroa_idx, i64 7, i1 false), !dbg !48255
  %.sroa.4175.sroa.4.0.copyload = load ptr, ptr %.sroa.4175.sroa.4.0..sroa.4175.0..sroa_idx.sroa_idx, align 8, !dbg !48255 ; 3 uses
    #dbg_value(ptr %.sroa.4175.sroa.4.0.copyload, !47972, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48137)
  %.sroa.4175.sroa.5.0.copyload = load i64, ptr %.sroa.4175.sroa.5.0..sroa.4175.0..sroa_idx.sroa_idx, align 8, !dbg !48255 ; 2 uses
    #dbg_value(i64 %.sroa.4175.sroa.5.0.copyload, !47972, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48137)
  %.sroa.689.sroa.10.sroa.0.0.copyload458 = load i64, ptr %.sroa.4175.sroa.6.0..sroa.4175.0..sroa_idx.sroa_idx, align 8, !dbg !48255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.689.sroa.10.sroa.8, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.689.sroa.10.sroa.8.0..sroa.4175.sroa.6.0..sroa.4175.0..sroa_idx.sroa_idx.sroa_idx, i64 48, i1 false), !dbg !48255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !48251
    #dbg_value(i8 %i.aw, !47931, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !48138)
    #dbg_value(ptr %.sroa.4175.sroa.4.0.copyload, !47931, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48138)
    #dbg_value(i64 %.sroa.4175.sroa.5.0.copyload, !47931, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48138)
  %i.az = icmp eq i8 %i.aw, 7, !dbg !48256
  br i1 %i.az, label %.thread357, label %bb.ab, !dbg !48256

.thread357:                                       ; preds = %bb.aa
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4175.sroa.4.0.copyload) ]
    #dbg_value(ptr undef, !3222, !DIExpression(), !47780)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !48139)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !48139)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !48139)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !48139)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !48139)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !48139)
    #dbg_value(i8 -1, !47956, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !48139)
    #dbg_value(ptr %.sroa.4175.sroa.4.0.copyload, !47956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48139)
    #dbg_value(i64 %.sroa.4175.sroa.5.0.copyload, !47956, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48139)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.689.sroa.10.sroa.8), !dbg !48253
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6397), !dbg !48253
  br label %bb.ai, !dbg !48257

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !48258
  store i8 %i.aw, ptr %i.f, align 8, !dbg !48258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6397.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6397, i64 7, i1 false), !dbg !48258
  store ptr %.sroa.4175.sroa.4.0.copyload, ptr %i.an, align 8, !dbg !48258
  store i64 %.sroa.4175.sroa.5.0.copyload, ptr %.sroa.8399.0..sroa_idx, align 8, !dbg !48258
  store i64 %.sroa.689.sroa.10.sroa.0.0.copyload458, ptr %.sroa.9400.0..sroa_idx, align 8, !dbg !48258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !48259
    #dbg_value(ptr %i.f, !47936, !DIExpression(), !48140)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !48260
  store ptr %i.f, ptr %i.c, align 8, !dbg !48260
  store ptr @_RNvXs_NtNtCs5yXxDE1DkoT_4tera7parsing5lexerNtB4_5TokenNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4179.0..sroa_idx, align 8, !dbg !48260
    #dbg_value(ptr @56, !48082, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48143)
    #dbg_value(ptr %i.c, !48082, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48143)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !47835)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !47835)
    #dbg_value(ptr poison, !3324, !DIExpression(), !47835)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !47836)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !47838)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @56, ptr noundef nonnull %i.c)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit334 unwind label %bb.ac, !dbg !48261

.noexc339:                                        ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i336, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !48262
    #dbg_value(i64 %.sroa.884.sroa.9.sroa.12.0.copyload, !47956, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !48139)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !48139)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !48139)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !48139)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !48139)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !48139)
    #dbg_value(i8 %.sroa.082.0.copyload, !47956, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !48139)
    #dbg_value(ptr %.sroa.884.sroa.6.0.copyload, !47956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48139)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48139)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.689.sroa.10.sroa.8), !dbg !48253
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6397), !dbg !48253
  %.not = icmp eq i8 %.sroa.082.0.copyload, -1, !dbg !48263
  br i1 %.not, label %bb.ai, label %bb.ah, !dbg !48257

bb.ac:                                            ; preds = %bb.ab, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit334
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #25
          to label %.body unwind label %bb.al, !dbg !48262

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit334: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !48264
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.am)
          to label %bb.ad unwind label %bb.ac, !dbg !48259

bb.ad:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit334
  %.sroa.082.0.copyload = load i8, ptr %i.e, align 8, !dbg !48265 ; 2 uses
    #dbg_value(i8 %.sroa.082.0.copyload, !47956, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !48139)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.884.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.884.0..sroa_idx, i64 7, i1 false), !dbg !48265
  %.sroa.884.sroa.6.0.copyload = load ptr, ptr %.sroa.884.sroa.6.0..sroa.884.0..sroa_idx.sroa_idx, align 8, !dbg !48265 ; 2 uses
    #dbg_value(ptr %.sroa.884.sroa.6.0.copyload, !47956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48139)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48139)
  %i.bb = load <2 x i64>, ptr %.sroa.884.sroa.8.0..sroa.884.0..sroa_idx.sroa_idx, align 8, !dbg !48265
  %.sroa.884.sroa.8.0.copyload = load i64, ptr %.sroa.884.sroa.8.0..sroa.884.0..sroa_idx.sroa_idx, align 8, !dbg !48265
    #dbg_value(i64 %.sroa.884.sroa.8.0.copyload, !47956, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48139)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !48139)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !48139)
  %i.bc = load <2 x i64>, ptr %.sroa.884.sroa.9.sroa.8.0..sroa.884.sroa.9.0..sroa.884.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !48265
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !48139)
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !48139)
  %i.bd = load <2 x i64>, ptr %.sroa.884.sroa.9.sroa.10.0..sroa.884.sroa.9.0..sroa.884.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !48265
    #dbg_value(i64 poison, !47956, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !48139)
  %.sroa.884.sroa.9.sroa.12.0.copyload = load i64, ptr %.sroa.884.sroa.9.sroa.12.0..sroa.884.sroa.9.0..sroa.884.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !48265
    #dbg_value(i64 %.sroa.884.sroa.9.sroa.12.0.copyload, !47956, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !48139)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !48266
    #dbg_value(ptr %i.f, !3222, !DIExpression(), !47840)
  %i.be = load i8, ptr %i.f, align 8, !dbg !48267, !range !3228, !alias.scope !48144, !noundef !1314
  %i.bf = icmp eq i8 %i.be, 8, !dbg !48267
  br i1 %i.bf, label %bb.ae, label %.noexc339, !dbg !48267

bb.ae:                                            ; preds = %bb.ad
    #dbg_value(ptr %i.an, !3230, !DIExpression(), !47844)
    #dbg_value(ptr %i.an, !3235, !DIExpression(), !47846)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i336 unwind label %bb.af, !dbg !48268

bb.af:                                            ; preds = %bb.ae
  %i.bg = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.an, !3240, !DIExpression(), !47848)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.body unwind label %bb.ag, !dbg !48269

bb.ag:                                            ; preds = %bb.af
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !48268
  unreachable, !dbg !48268

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i336: ; preds = %bb.ae
    #dbg_value(ptr %i.an, !3240, !DIExpression(), !47850)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %.noexc339 unwind label %bb.r, !dbg !48270

bb.ah:                                            ; preds = %.noexc339
    #dbg_value(i8 %.sroa.082.0.copyload, !47955, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !48145)
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !48271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4229.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.884.sroa.0, i64 7, i1 false), !dbg !48272
    #dbg_value(ptr %.sroa.884.sroa.6.0.copyload, !47955, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48145)
    #dbg_value(i64 poison, !47955, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48145)
    #dbg_value(i64 poison, !47955, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !48145)
    #dbg_value(i64 poison, !47955, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !48145)
    #dbg_value(i64 poison, !47955, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !48145)
    #dbg_value(i64 poison, !47955, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !48145)
    #dbg_value(i64 poison, !47955, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !48145)
    #dbg_value(i64 %.sroa.884.sroa.9.sroa.12.0.copyload, !47955, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !48145)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.884.sroa.0), !dbg !48254
    #dbg_value(i8 %.sroa.082.0.copyload, !47939, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !48146)
    #dbg_value(i8 %.sroa.082.0.copyload, !47945, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !48147)
    #dbg_value(ptr %.sroa.884.sroa.6.0.copyload, !47939, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48146)
    #dbg_value(ptr %.sroa.884.sroa.6.0.copyload, !47945, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48147)
    #dbg_value(i64 poison, !47939, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48146)
    #dbg_value(i64 poison, !47945, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48147)
    #dbg_value(i64 poison, !47939, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !48146)
    #dbg_value(i64 poison, !47945, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !48147)
    #dbg_value(i64 poison, !47939, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !48146)
    #dbg_value(i64 poison, !47945, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !48147)
    #dbg_value(i64 poison, !47939, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !48146)
    #dbg_value(i64 poison, !47945, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !48147)
    #dbg_value(i64 poison, !47939, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !48146)
    #dbg_value(i64 poison, !47945, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !48147)
    #dbg_value(i64 poison, !47939, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !48146)
    #dbg_value(i64 poison, !47945, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !48147)
    #dbg_value(i64 %.sroa.884.sroa.9.sroa.12.0.copyload, !47939, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !48146)
    #dbg_value(i64 %.sroa.884.sroa.9.sroa.12.0.copyload, !47945, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !48147)
    #dbg_value(i8 %.sroa.082.0.copyload, !47942, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !48148)
    #dbg_value(ptr %.sroa.884.sroa.6.0.copyload, !47942, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48148)
    #dbg_value(i64 poison, !47942, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !48148)
    #dbg_value(i64 poison, !47942, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !48148)
    #dbg_value(i64 poison, !47942, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !48148)
    #dbg_value(i64 poison, !47942, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !48148)
    #dbg_value(i64 poison, !47942, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !48148)
    #dbg_value(i64 poison, !47942, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !48148)
    #dbg_value(i64 %.sroa.884.sroa.9.sroa.12.0.copyload, !47942, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !48148)
  store i8 %.sroa.082.0.copyload, ptr %0, align 8, !dbg !48271
  %.sroa.5230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48271
  store ptr %.sroa.884.sroa.6.0.copyload, ptr %.sroa.5230.0..sroa_idx, align 8, !dbg !48271
  %.sroa.6231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !48271
  store <2 x i64> %i.bb, ptr %.sroa.6231.0..sroa_idx, align 8, !dbg !48271
  %.sroa.8233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !48271
  store <2 x i64> %i.bc, ptr %.sroa.8233.0..sroa_idx, align 8, !dbg !48271
  %.sroa.10235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !48271
  store <2 x i64> %i.bd, ptr %.sroa.10235.0..sroa_idx, align 8, !dbg !48271
  %.sroa.12237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !48271
  store i64 %.sroa.884.sroa.9.sroa.12.0.copyload, ptr %.sroa.12237.0..sroa_idx, align 8, !dbg !48271
  br label %bb.am, !dbg !48273

bb.ai:                                            ; preds = %.thread357, %.noexc339
  %.sroa.884.sroa.6.0369 = phi ptr [ %.sroa.4175.sroa.4.0.copyload, %.thread357 ], [ %.sroa.884.sroa.6.0.copyload, %.noexc339 ] ; 2 uses
  %.sroa.884.sroa.8.0368 = phi i64 [ %.sroa.4175.sroa.5.0.copyload, %.thread357 ], [ %.sroa.884.sroa.8.0.copyload, %.noexc339 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.884.sroa.0), !dbg !48254
    #dbg_value(ptr %.sroa.884.sroa.6.0369, !47929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48149)
    #dbg_value(ptr %.sroa.884.sroa.6.0369, !48150, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48154)
    #dbg_value(i64 %.sroa.884.sroa.8.0368, !47929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48149)
    #dbg_value(i64 %.sroa.884.sroa.8.0368, !48150, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48154)
    #dbg_value(ptr %i.i, !4056, !DIExpression(), !47853)
    #dbg_value(ptr %i.i, !4064, !DIExpression(), !47855)
    #dbg_value(ptr %i.i, !4069, !DIExpression(), !47857)
    #dbg_value(i32 46, !4060, !DIExpression(), !47853)
  %i.bi = load i64, ptr %.sroa.6161.0..sroa_idx, align 8, !dbg !48274, !alias.scope !48155, !noundef !1314 ; 3 uses
    #dbg_value(i64 %i.bi, !4061, !DIExpression(), !47861)
    #dbg_value(i64 %i.bi, !4076, !DIExpression(), !47863)
  %i.bj = icmp sgt i64 %i.bi, -1, !dbg !48275
  call void @llvm.assume(i1 %i.bj), !dbg !48276
    #dbg_value(i64 1, !4062, !DIExpression(), !47864)
    #dbg_value(i64 1, !4073, !DIExpression(), !47857)
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef 1)
          to label %bb.aj unwind label %bb.r, !dbg !48277

bb.aj:                                            ; preds = %bb.ai
    #dbg_value(ptr %i.i, !4082, !DIExpression(), !47866)
  %i.bk = load ptr, ptr %.sroa.4160.0..sroa_idx, align 8, !dbg !48278, !alias.scope !48155, !nonnull !1314, !noundef !1314
    #dbg_value(ptr %i.bk, !4077, !DIExpression(), !47863)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bi, !dbg !48279
    #dbg_value(i32 46, !4086, !DIExpression(), !47871)
    #dbg_value(ptr %i.bl, !4087, !DIExpression(), !47871)
    #dbg_value(i64 1, !4088, !DIExpression(), !47872)
  store i8 46, ptr %i.bl, align 1, !dbg !48280
    #dbg_value(ptr %i.i, !4094, !DIExpression(), !47874)
  %i.bm = add nuw i64 %i.bi, 1, !dbg !48281
    #dbg_value(i64 %i.bm, !4095, !DIExpression(), !47875)
  store i64 %i.bm, ptr %.sroa.6161.0..sroa_idx, align 8, !dbg !48282, !alias.scope !48155
    #dbg_value(ptr %i.i, !48151, !DIExpression(), !48156)
    #dbg_value(ptr %i.i, !48157, !DIExpression(), !48161)
    #dbg_value(ptr %i.i, !48162, !DIExpression(), !48167)
    #dbg_value(ptr %.sroa.884.sroa.6.0369, !48158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48161)
    #dbg_value(i64 %.sroa.884.sroa.8.0368, !48158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48161)
    #dbg_value(ptr %.sroa.884.sroa.6.0369, !48163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48167)
    #dbg_value(!DIArgList(ptr %.sroa.884.sroa.6.0369, i64 %.sroa.884.sroa.8.0368), !48163, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !48167)
    #dbg_value(ptr poison, !48169, !DIExpression(), !48175)
    #dbg_value(ptr poison, !48176, !DIExpression(), !48182)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.884.sroa.6.0369) ], !dbg !48283
    #dbg_value(ptr %.sroa.884.sroa.6.0369, !48164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !48183)
    #dbg_value(i64 %.sroa.884.sroa.8.0368, !48164, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !48183)
    #dbg_value(ptr %i.i, !5208, !DIExpression(), !47884)
    #dbg_value(ptr %i.i, !5214, !DIExpression(), !47886)
    #dbg_value(ptr %i.i, !5220, !DIExpression(), !47888)
    #dbg_value(ptr %i.i, !5222, !DIExpression(), !47890)
    #dbg_value(ptr %.sroa.884.sroa.6.0369, !5212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !47884)
    #dbg_value(ptr %.sroa.884.sroa.6.0369, !5216, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !47886)
    #dbg_value(i64 %.sroa.884.sroa.8.0368, !5212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !47884)
    #dbg_value(i64 %.sroa.884.sroa.8.0368, !5216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !47886)
    #dbg_value(i64 %.sroa.884.sroa.8.0368, !5217, !DIExpression(), !47891)
    #dbg_value(i64 %.sroa.884.sroa.8.0368, !5224, !DIExpression(), !47893)
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %.sroa.884.sroa.8.0368)
          to label %.noexc342 unwind label %bb.r, !dbg !48284

.noexc342:                                        ; preds = %bb.aj
  %i.bn = load i64, ptr %.sroa.6161.0..sroa_idx, align 8, !dbg !48285, !alias.scope !48184, !noundef !1314 ; 3 uses
    #dbg_value(i64 %i.bn, !5218, !DIExpression(), !47896)
    #dbg_value(i64 %i.bn, !5228, !DIExpression(), !47898)
  %i.bo = icmp sgt i64 %i.bn, -1, !dbg !48286
  call void @llvm.assume(i1 %i.bo), !dbg !48287
  %.not.i = icmp eq i64 %.sroa.884.sroa.8.0368, 0, !dbg !48288
  br i1 %.not.i, label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs5yXxDE1DkoT_4tera.exit, label %bb.ak, !dbg !48288

bb.ak:                                            ; preds = %.noexc342
    #dbg_value(ptr %.sroa.884.sroa.6.0369, !5225, !DIExpression(), !47893)
  %i.bp = load ptr, ptr %.sroa.4160.0..sroa_idx, align 8, !dbg !48289, !alias.scope !48184, !nonnull !1314, !noundef !1314
    #dbg_value(ptr %i.bp, !5229, !DIExpression(), !47898)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn, !dbg !48290
    #dbg_value(ptr %i.bq, !5226, !DIExpression(), !47893)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr nonnull readonly align 1 %.sroa.884.sroa.6.0369, i64 %.sroa.884.sroa.8.0368, i1 false), !dbg !48291
  %.pre.i = load i64, ptr %.sroa.6161.0..sroa_idx, align 8, !dbg !48292, !alias.scope !48184
  br label %_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs5yXxDE1DkoT_4tera.exit, !dbg !48293

_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE15append_elementsCs5yXxDE1DkoT_4tera.exit: ; preds = %.noexc342, %bb.ak
  %i.br = phi i64 [ %.pre.i, %bb.ak ], [ %i.bn, %.noexc342 ], !dbg !48292
  %i.bs = add i64 %i.br, %.sroa.884.sroa.8.0368, !dbg !48292
  store i64 %i.bs, ptr %.sroa.6161.0..sroa_idx, align 8, !dbg !48092
  %i.bt = load i8, ptr %i.aj, align 8, !dbg !48226, !range !3052, !noundef !1314
  %cond = icmp eq i8 %i.bt, 30, !dbg !48227
  br i1 %cond, label %bb.q, label %._crit_edge, !dbg !48227

bb.al:                                            ; preds = %bb.ac, %.body, %bb.f
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !48294
  unreachable, !dbg !48294

bb.am:                                            ; preds = %bb.z, %bb.ah, %bb.t
    #dbg_value(ptr %i.i, !3230, !DIExpression(), !47903)
    #dbg_value(ptr %i.i, !3235, !DIExpression(), !47905)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit unwind label %bb.an, !dbg !48295

bb.an:                                            ; preds = %bb.am
  %i.bv = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.i, !3240, !DIExpression(), !47907)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.ao, !dbg !48296

bb.ao:                                            ; preds = %bb.an
  %i.bw = landingpad { ptr, i32 }
end_hunk_6
begin_hunk_7_@_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser9parse_tag:bb.a
  %i.zf = getelementptr inbounds nuw i8, ptr %1, i64 400, !dbg !58500
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.gz, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.gy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.zf)
          to label %bb.ix unwind label %bb.iw, !dbg !58473

bb.ix:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1481
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !58501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.zg, ptr noundef nonnull align 8 dereferenceable(72) %i.gz, i64 72, i1 false), !dbg !58501
  store i64 -2, ptr %0, align 8, !dbg !58501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz), !dbg !58502
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ha)
          to label %bb.iy unwind label %bb.x, !dbg !58498

bb.iy:                                            ; preds = %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha), !dbg !58498
  br label %bb.iz, !dbg !58480

bb.iz:                                            ; preds = %bb.iy, %bb.ik
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.645.sroa.10), !dbg !58480
  br label %bb.aj, !dbg !57958

.noexc1483:                                       ; preds = %bb.g
  %i.zh = load i8, ptr %i.cg, align 8, !dbg !58503, !range !3290, !noalias !56710, !noundef !1314 ; 3 uses
  %i.zi = icmp eq i8 %i.zh, -1, !dbg !58503
  br i1 %i.zi, label %bb.ja, label %bb.jb, !dbg !58504

bb.ja:                                            ; preds = %.noexc1483
  %i.zj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !58505
  %.sroa.02033.0.copyload = load i64, ptr %i.zj, align 8, !dbg !58505, !noalias !56710 ; 2 uses
  %.sroa.42034.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 16, !dbg !58505
  %.sroa.42034.0.copyload = load ptr, ptr %.sroa.42034.0..sroa_idx, align 8, !dbg !58505, !noalias !56710
  %.sroa.52035.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 24, !dbg !58505
  %i.zk = load <2 x i64>, ptr %.sroa.52035.0..sroa_idx, align 8, !dbg !58505, !noalias !56710
  %.sroa.72037.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 40, !dbg !58505
  %i.zl = load <2 x i64>, ptr %.sroa.72037.0..sroa_idx, align 8, !dbg !58505, !noalias !56710
  %.sroa.92039.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 56, !dbg !58505
  %i.zm = load <2 x i64>, ptr %.sroa.92039.0..sroa_idx, align 8, !dbg !58505, !noalias !56710
  %.sroa.112041.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 72, !dbg !58505
  %.sroa.112041.0.copyload = load i64, ptr %.sroa.112041.0..sroa_idx, align 8, !dbg !58505, !noalias !56710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !dbg !58506, !noalias !56710
    #dbg_value(i64 %.sroa.02033.0.copyload, !55289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57460)
    #dbg_value(i64 %.sroa.02033.0.copyload, !57461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57478)
    #dbg_value(ptr %.sroa.42034.0.copyload, !55289, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57460)
    #dbg_value(ptr %.sroa.42034.0.copyload, !57461, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57478)
    #dbg_value(i64 poison, !55289, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57460)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57478)
    #dbg_value(i64 poison, !55289, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57460)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57478)
    #dbg_value(i64 poison, !55289, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57460)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57478)
    #dbg_value(i64 poison, !55289, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57460)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57478)
    #dbg_value(i64 poison, !55289, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57460)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57478)
    #dbg_value(i64 poison, !55289, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57460)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57478)
    #dbg_value(i64 %.sroa.112041.0.copyload, !55289, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57460)
    #dbg_value(i64 %.sroa.112041.0.copyload, !57461, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57478)
    #dbg_value(i64 %.sroa.02033.0.copyload, !57464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57480)
    #dbg_value(ptr %.sroa.42034.0.copyload, !57464, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57480)
    #dbg_value(i64 poison, !57464, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57480)
    #dbg_value(i64 poison, !57464, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57480)
    #dbg_value(i64 poison, !57464, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57480)
    #dbg_value(i64 poison, !57464, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57480)
    #dbg_value(i64 poison, !57464, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57480)
    #dbg_value(i64 poison, !57464, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57480)
    #dbg_value(i64 %.sroa.112041.0.copyload, !57464, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57480)
  %.sroa.20.sroa.0.0.extract.trunc1778 = trunc i64 %.sroa.02033.0.copyload to i8, !dbg !58507
    #dbg_value(i8 %.sroa.20.sroa.0.0.extract.trunc1778, !57482, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57500)
  %.sroa.20.sroa.20.0.extract.shift1801 = lshr i64 %.sroa.02033.0.copyload, 8, !dbg !58507
  %.sroa.20.sroa.20.0.extract.trunc1802 = trunc nuw i64 %.sroa.20.sroa.20.0.extract.shift1801 to i56, !dbg !58507
    #dbg_value(i56 %.sroa.20.sroa.20.0.extract.trunc1802, !57482, !DIExpression(DW_OP_LLVM_fragment, 72, 56), !57500)
    #dbg_value(ptr %.sroa.42034.0.copyload, !57482, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57500)
    #dbg_value(i64 %.sroa.112041.0.copyload, !57482, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57500)
    #dbg_value(i64 -1, !57482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57500)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.62894), !dbg !58508
  br label %bb.md, !dbg !58509

bb.jb:                                            ; preds = %.noexc1483
    #dbg_value(i8 %i.zh, !55256, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54396)
  %.sroa.4169.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 1, !dbg !58510
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.62894, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4169.0..sroa_idx.i, i64 7, i1 false), !dbg !58510, !noalias !56710
  %.sroa.4169.i.sroa.4.0..sroa.4169.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 8, !dbg !58510
  %.sroa.4169.i.sroa.4.0.copyload = load i64, ptr %.sroa.4169.i.sroa.4.0..sroa.4169.0..sroa_idx.i.sroa_idx, align 8, !dbg !58510, !noalias !56710 ; 2 uses
    #dbg_value(i64 %.sroa.4169.i.sroa.4.0.copyload, !55256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57502)
  %.sroa.4169.i.sroa.5.0..sroa.4169.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 16, !dbg !58510
  %.sroa.4169.i.sroa.5.0.copyload = load ptr, ptr %.sroa.4169.i.sroa.5.0..sroa.4169.0..sroa_idx.i.sroa_idx, align 8, !dbg !58510, !noalias !56710
    #dbg_value(ptr %.sroa.4169.i.sroa.5.0.copyload, !55256, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57502)
  %.sroa.4169.i.sroa.6.0..sroa.4169.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.cg, i64 24, !dbg !58510
  %.sroa.4169.i.sroa.6.0.copyload = load i64, ptr %.sroa.4169.i.sroa.6.0..sroa.4169.0..sroa_idx.i.sroa_idx, align 8, !dbg !58510, !noalias !56710
    #dbg_value(i64 %.sroa.4169.i.sroa.6.0.copyload, !55256, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57502)
    #dbg_value(i64 poison, !55256, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57502)
    #dbg_value(i64 poison, !55256, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57502)
    #dbg_value(i64 poison, !55256, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57502)
    #dbg_value(i64 poison, !55256, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57502)
    #dbg_value(i64 poison, !55256, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57502)
    #dbg_value(i64 poison, !55256, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57502)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !dbg !58506, !noalias !56710
    #dbg_value(i8 %i.zh, !55290, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54397)
    #dbg_value(i64 %.sroa.4169.i.sroa.4.0.copyload, !55290, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57503)
    #dbg_value(ptr %.sroa.4169.i.sroa.5.0.copyload, !55290, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57503)
    #dbg_value(i64 %.sroa.4169.i.sroa.6.0.copyload, !55290, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57503)
    #dbg_value(i64 poison, !55290, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57503)
    #dbg_value(i64 poison, !55290, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57503)
    #dbg_value(i64 poison, !55290, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57503)
    #dbg_value(i64 poison, !55290, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57503)
    #dbg_value(i64 poison, !55290, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57503)
    #dbg_value(i64 poison, !55290, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57503)
  %i.zn = ptrtoint ptr %.sroa.4169.i.sroa.5.0.copyload to i64, !dbg !58511 ; 2 uses
  %i.zo = icmp eq i8 %i.zh, 7, !dbg !58512
  br i1 %i.zo, label %.thread2768, label %bb.jc, !dbg !58512

.thread2768:                                      ; preds = %bb.jb
  %i.zp = inttoptr i64 %.sroa.4169.i.sroa.4.0.copyload to ptr, !dbg !58513
    #dbg_value(ptr undef, !3222, !DIExpression(), !53724)
    #dbg_value(i56 poison, !57504, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !57508)
    #dbg_value(i8 -1, !57504, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54402)
    #dbg_value(ptr %i.zp, !57504, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54402)
    #dbg_value(i64 %i.zn, !57504, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !54402)
    #dbg_value(i64 poison, !57504, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !54402)
    #dbg_value(i64 poison, !57504, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !54402)
    #dbg_value(i64 poison, !57504, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !54402)
    #dbg_value(i64 poison, !57504, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !54402)
    #dbg_value(i64 poison, !57504, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !54402)
    #dbg_value(i64 poison, !57504, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !54402)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.62894), !dbg !58508
  br label %bb.ji, !dbg !58514

bb.jc:                                            ; preds = %bb.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !dbg !58515, !noalias !56710
  store i8 %i.zh, ptr %i.cf, align 8, !dbg !58515, !noalias !56710
  %.sroa.62894.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 1, !dbg !58515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.62894.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.62894, i64 7, i1 false), !dbg !58515, !noalias !56710
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8, !dbg !58515 ; 4 uses
  store i64 %.sroa.4169.i.sroa.4.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !58515, !noalias !56710
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 16, !dbg !58515
  store i64 %i.zn, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !58515, !noalias !56710
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 24, !dbg !58515
  store i64 %.sroa.4169.i.sroa.6.0.copyload, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !58515, !noalias !56710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !dbg !58516, !noalias !56710
    #dbg_value(ptr %i.cf, !55295, !DIExpression(), !54403)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !dbg !58517, !noalias !56710
  store ptr %i.cf, ptr %i.cc, align 8, !dbg !58517, !noalias !56710
  %.sroa.4173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8, !dbg !58517
  store ptr @_RNvXs_NtNtCs5yXxDE1DkoT_4tera7parsing5lexerNtB4_5TokenNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4173.0..sroa_idx.i, align 8, !dbg !58517, !noalias !56710
    #dbg_value(ptr @56, !57509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57511)
    #dbg_value(ptr %i.cc, !57509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57511)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54407)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54407)
    #dbg_value(ptr poison, !3324, !DIExpression(), !54407)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !54408)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !54410)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cd, ptr noundef nonnull @56, ptr noundef nonnull %i.cc)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1542 unwind label %bb.jd, !dbg !58518

.noexc1539:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i1536, %bb.je
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !dbg !58519, !noalias !56710
    #dbg_value(i56 %.sroa.825.sroa.0.i.sroa.0.0.copyload, !57504, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !57508)
    #dbg_value(i8 %.sroa.023.0.copyload.i, !57504, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54402)
    #dbg_value(ptr %.sroa.825.sroa.6.0.copyload.i, !57504, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54402)
    #dbg_value(i64 poison, !57504, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !54402)
    #dbg_value(i64 %.sroa.825.sroa.9.sroa.12.0.copyload.i, !57504, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !54402)
    #dbg_value(i64 poison, !57504, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !54402)
    #dbg_value(i64 poison, !57504, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !54402)
    #dbg_value(i64 poison, !57504, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !54402)
    #dbg_value(i64 poison, !57504, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !54402)
    #dbg_value(i64 poison, !57504, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !54402)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.62894), !dbg !58508
  %.not445.i = icmp eq i8 %.sroa.023.0.copyload.i, -1, !dbg !58520
  br i1 %.not445.i, label %bb.ji, label %bb.md, !dbg !58514

bb.jd:                                            ; preds = %bb.jc, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1542
  %i.zq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.cf) #25
          to label %.body1492 unwind label %bb.jw, !dbg !58519, !noalias !57513, !inline_history !54118

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1542: ; preds = %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !dbg !58521, !noalias !56710
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ce, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ic)
          to label %bb.je unwind label %bb.jd, !dbg !58516, !noalias !57513, !inline_history !54118

bb.je:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1542
  %.sroa.023.0.copyload.i = load i8, ptr %i.ce, align 8, !dbg !58522, !noalias !56710 ; 2 uses
    #dbg_value(i8 %.sroa.023.0.copyload.i, !57504, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54402)
  %.sroa.825.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 1, !dbg !58522
  %.sroa.825.sroa.0.i.sroa.0.0.copyload = load i56, ptr %.sroa.825.0..sroa_idx.i, align 1, !dbg !58522, !noalias !56710
    #dbg_value(i56 %.sroa.825.sroa.0.i.sroa.0.0.copyload, !57504, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !57508)
  %.sroa.825.sroa.6.0..sroa.825.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8, !dbg !58522
  %.sroa.825.sroa.6.0.copyload.i = load ptr, ptr %.sroa.825.sroa.6.0..sroa.825.0..sroa_idx.sroa_idx.i, align 8, !dbg !58522, !noalias !56710 ; 2 uses
    #dbg_value(ptr %.sroa.825.sroa.6.0.copyload.i, !57504, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54402)
  %.sroa.825.sroa.8.0..sroa.825.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 16, !dbg !58522 ; 2 uses
    #dbg_value(i64 poison, !57504, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !54402)
  %i.zr = load <2 x i64>, ptr %.sroa.825.sroa.8.0..sroa.825.0..sroa_idx.sroa_idx.i, align 8, !dbg !58522, !noalias !56710
  %.sroa.825.sroa.8.0.copyload.i = load i64, ptr %.sroa.825.sroa.8.0..sroa.825.0..sroa_idx.sroa_idx.i, align 8, !dbg !58522, !noalias !56710
    #dbg_value(i64 %.sroa.825.sroa.8.0.copyload.i, !57504, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !54402)
    #dbg_value(i64 poison, !57504, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !54402)
  %.sroa.825.sroa.9.sroa.8.0..sroa.825.sroa.9.0..sroa.825.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 32, !dbg !58522
    #dbg_value(i64 poison, !57504, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !54402)
  %i.zs = load <2 x i64>, ptr %.sroa.825.sroa.9.sroa.8.0..sroa.825.sroa.9.0..sroa.825.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !dbg !58522, !noalias !56710
    #dbg_value(i64 poison, !57504, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !54402)
  %.sroa.825.sroa.9.sroa.10.0..sroa.825.sroa.9.0..sroa.825.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 48, !dbg !58522
    #dbg_value(i64 poison, !57504, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !54402)
  %i.zt = load <2 x i64>, ptr %.sroa.825.sroa.9.sroa.10.0..sroa.825.sroa.9.0..sroa.825.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !dbg !58522, !noalias !56710
    #dbg_value(i64 poison, !57504, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !54402)
  %.sroa.825.sroa.9.sroa.12.0..sroa.825.sroa.9.0..sroa.825.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 64, !dbg !58522
  %.sroa.825.sroa.9.sroa.12.0.copyload.i = load i64, ptr %.sroa.825.sroa.9.sroa.12.0..sroa.825.sroa.9.0..sroa.825.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !dbg !58522, !noalias !56710
    #dbg_value(i64 %.sroa.825.sroa.9.sroa.12.0.copyload.i, !57504, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !54402)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !dbg !58523, !noalias !56710
    #dbg_value(ptr %i.cf, !3222, !DIExpression(), !54412)
  %i.zu = load i8, ptr %i.cf, align 8, !dbg !58524, !range !3228, !alias.scope !57514, !noundef !1314
  %i.zv = icmp eq i8 %i.zu, 8, !dbg !58524
  br i1 %i.zv, label %bb.jf, label %.noexc1539, !dbg !58524

bb.jf:                                            ; preds = %bb.je
    #dbg_value(ptr %.sroa.7.0..sroa_idx, !3230, !DIExpression(), !54416)
    #dbg_value(ptr %.sroa.7.0..sroa_idx, !3235, !DIExpression(), !54418)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i1536 unwind label %bb.jg, !dbg !58525

bb.jg:                                            ; preds = %bb.jf
  %i.zw = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %.sroa.7.0..sroa_idx, !3240, !DIExpression(), !54420)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx)
          to label %.body1492 unwind label %bb.jh, !dbg !58526

bb.jh:                                            ; preds = %bb.jg
  %i.zx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !58525
  unreachable, !dbg !58525

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera.exit.i1536: ; preds = %bb.jf
    #dbg_value(ptr %.sroa.7.0..sroa_idx, !3240, !DIExpression(), !54422)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx)
          to label %.noexc1539 unwind label %bb.x, !dbg !58527

bb.ji:                                            ; preds = %.thread2768, %.noexc1539
  %.sroa.825.sroa.6.0.i2781 = phi ptr [ %i.zp, %.thread2768 ], [ %.sroa.825.sroa.6.0.copyload.i, %.noexc1539 ] ; 3 uses
  %.sroa.825.sroa.8.0.i2780 = phi i64 [ %i.zn, %.thread2768 ], [ %.sroa.825.sroa.8.0.copyload.i, %.noexc1539 ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !dbg !58528, !noalias !56710
  store ptr %.sroa.825.sroa.6.0.i2781, ptr %i.ch, align 8, !dbg !58528, !noalias !56710, !captures !4048
  %i.zy = getelementptr inbounds nuw i8, ptr %i.ch, i64 8, !dbg !58528
  store i64 %.sroa.825.sroa.8.0.i2780, ptr %i.zy, align 8, !dbg !58528, !noalias !56710
    #dbg_value(ptr @98, !57515, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54425)
    #dbg_value(i64 16, !57515, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54425)
    #dbg_value(ptr %i.ch, !57516, !DIExpression(), !54425)
  %i.zz = invoke noundef zeroext i1 @_RNvXsf_NtNtCsf3Ta7LF998c_4core5slice3cmpReNtB5_13SliceContains14slice_containsCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ch, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @98, i64 noundef 16)
          to label %.noexc1486 unwind label %bb.x, !dbg !58529, !inline_history !54118

.noexc1486:                                       ; preds = %bb.ji
  br i1 %i.zz, label %.split.i, label %bb.jj, !dbg !58530

bb.jj:                                            ; preds = %.noexc1486
  %i.aaa = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !58531 ; 2 uses
  %i.aab = load i8, ptr %i.aaa, align 8, !dbg !58531, !range !3052, !alias.scope !56591, !noalias !57513, !noundef !1314 ; 2 uses
  switch i8 %i.aab, label %bb.jk [
    i8 29, label %bb.jm
    i8 28, label %bb.jl
    i8 5, label %bb.jl
  ], !dbg !58532

.split.i:                                         ; preds = %.noexc1486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !dbg !58533, !noalias !56710
    #dbg_value(ptr %i.ch, !55301, !DIExpression(), !54426)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !dbg !58534, !noalias !56710
  store ptr %i.ch, ptr %i.bz, align 8, !dbg !58534, !noalias !56710
  %.sroa.4231.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8, !dbg !58534
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCs5yXxDE1DkoT_4tera, ptr %.sroa.4231.0..sroa_idx.i, align 8, !dbg !58534, !noalias !56710
    #dbg_value(ptr @143, !57509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57518)
    #dbg_value(ptr %i.bz, !57509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57518)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54429)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54429)
    #dbg_value(ptr poison, !3324, !DIExpression(), !54429)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !54430)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !54432)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ca, ptr noundef nonnull @143, ptr noundef nonnull %i.bz)
          to label %.noexc1487 unwind label %bb.x, !dbg !58535

.noexc1487:                                       ; preds = %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !dbg !58536, !noalias !56710
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.cb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ca, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ic)
          to label %.noexc1488 unwind label %bb.x, !dbg !58533, !inline_history !54118

.noexc1488:                                       ; preds = %.noexc1487
  %.sroa.20.8.copyload1582 = load i64, ptr %i.cb, align 8, !dbg !58537, !noalias !56591 ; 2 uses
  %.sroa.20.sroa.0.0.extract.trunc1777 = trunc i64 %.sroa.20.8.copyload1582 to i8, !dbg !58537
    #dbg_value(i8 %.sroa.20.sroa.0.0.extract.trunc1777, !57482, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57500)
  %.sroa.20.sroa.20.0.extract.shift1799 = lshr i64 %.sroa.20.8.copyload1582, 8, !dbg !58537
  %.sroa.20.sroa.20.0.extract.trunc1800 = trunc nuw i64 %.sroa.20.sroa.20.0.extract.shift1799 to i56, !dbg !58537
    #dbg_value(i56 %.sroa.20.sroa.20.0.extract.trunc1800, !57482, !DIExpression(DW_OP_LLVM_fragment, 72, 56), !57500)
  %.sroa.41.8..sroa_idx1604 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8, !dbg !58537
  %.sroa.41.8.copyload1605 = load ptr, ptr %.sroa.41.8..sroa_idx1604, align 8, !dbg !58537, !noalias !56591
    #dbg_value(ptr %.sroa.41.8.copyload1605, !57482, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57500)
  %.sroa.43.8..sroa_idx1627 = getelementptr inbounds nuw i8, ptr %i.cb, i64 16, !dbg !58537
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57500)
  %i.aac = load <2 x i64>, ptr %.sroa.43.8..sroa_idx1627, align 8, !dbg !58537, !noalias !56591
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57500)
  %.sroa.47.8..sroa_idx1673 = getelementptr inbounds nuw i8, ptr %i.cb, i64 32, !dbg !58537
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57500)
  %i.aad = load <2 x i64>, ptr %.sroa.47.8..sroa_idx1673, align 8, !dbg !58537, !noalias !56591
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57500)
  %.sroa.50.8..sroa_idx1717 = getelementptr inbounds nuw i8, ptr %i.cb, i64 48, !dbg !58537
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57500)
  %i.aae = load <2 x i64>, ptr %.sroa.50.8..sroa_idx1717, align 8, !dbg !58537, !noalias !56591
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57500)
  %.sroa.53.8..sroa_idx1761 = getelementptr inbounds nuw i8, ptr %i.cb, i64 64, !dbg !58537
  %.sroa.53.8.copyload1762 = load i64, ptr %.sroa.53.8..sroa_idx1761, align 8, !dbg !58537, !noalias !56591
    #dbg_value(i64 %.sroa.53.8.copyload1762, !57482, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57500)
    #dbg_value(i64 -1, !57482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57500)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !dbg !58538, !noalias !56710
  br label %bb.mc, !dbg !58539

bb.jk:                                            ; preds = %bb.jj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !58540, !noalias !56710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !dbg !58541, !noalias !56710
    #dbg_value(ptr @144, !56631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54433)
    #dbg_value(ptr @144, !56629, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54434)
    #dbg_value(ptr @144, !56627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54435)
    #dbg_value(ptr @144, !56634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54436)
    #dbg_value(i64 79, !56631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54433)
    #dbg_value(i64 79, !56629, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54434)
    #dbg_value(i64 79, !56627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54435)
    #dbg_value(i64 79, !56634, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54436)
    #dbg_value(i64 79, !56635, !DIExpression(), !54437)
    #dbg_value(i64 79, !56643, !DIExpression(), !54438)
    #dbg_value(i64 79, !56646, !DIExpression(), !54439)
    #dbg_value(i64 79, !57521, !DIExpression(), !54442)
    #dbg_value(i64 79, !57525, !DIExpression(), !54445)
    #dbg_value(i64 79, !56659, !DIExpression(), !54446)
    #dbg_value(i64 79, !56670, !DIExpression(), !54059)
    #dbg_value(i64 1, !56660, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54446)
    #dbg_value(i64 1, !56671, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54059)
    #dbg_value(i64 1, !56660, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54446)
    #dbg_value(i64 1, !56671, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54059)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !58542, !noalias !56710
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, i64 noundef 79, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc1489 unwind label %bb.x, !dbg !58542, !inline_history !54118

.noexc1489:                                       ; preds = %bb.jk
  %i.aaf = load i64, ptr %i.as, align 8, !dbg !58542, !range !3205, !noalias !56710, !noundef !1314
  %i.aag = trunc nuw i64 %i.aaf to i1, !dbg !58543
  %i.aah = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !58544
  %i.aai = load i64, ptr %i.aah, align 8, !dbg !58544, !range !3206, !noalias !56710, !noundef !1314 ; 3 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.as, i64 16, !dbg !58544 ; 2 uses
  br i1 %i.aag, label %bb.ma, label %bb.mb, !dbg !58543, !prof !3207

bb.jl:                                            ; preds = %bb.jj, %bb.jj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !dbg !58545, !noalias !56710
  store i64 0, ptr %i.bq, align 8, !dbg !58546, !noalias !56710
  %i.aak = getelementptr inbounds nuw i8, ptr %i.bq, i64 8, !dbg !58546 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.aak, align 8, !dbg !58546, !noalias !56710
  %i.aal = getelementptr inbounds nuw i8, ptr %i.bq, i64 16, !dbg !58546 ; 4 uses
  store i64 0, ptr %i.aal, align 8, !dbg !57597, !noalias !57513
  %cond.i2863 = icmp eq i8 %i.aab, 28, !dbg !58547
  br i1 %cond.i2863, label %.lr.ph, label %._crit_edge, !dbg !58547

.lr.ph:                                           ; preds = %bb.jl
  %.sroa.4258.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %.sroa.4258.i.sroa.4.0..sroa.4258.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %.sroa.4258.i.sroa.5.0..sroa.4258.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %.sroa.4258.i.sroa.6.0..sroa.4258.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 2 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.aan = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.aao = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.aap = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %.sroa.42325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %.sroa.62327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %.sroa.82329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 48 ; 2 uses
  %.sroa.102331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 64 ; 2 uses
  %.sroa.6106.i.sroa.8.7..sroa_idx2310 = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.6106.i.sroa.10.7..sroa_idx2314 = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.sroa.6106.i.sroa.12.7..sroa_idx2318 = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %.sroa.6106.i.sroa.14.7..sroa_idx2322 = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  br label %bb.jn, !dbg !58547

bb.jm:                                            ; preds = %bb.jj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !dbg !58548, !noalias !56710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !dbg !58549, !noalias !56710
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser13next_or_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.bx, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1)
          to label %.noexc1490 unwind label %bb.x, !dbg !58550, !inline_history !54118

.noexc1490:                                       ; preds = %bb.jm
  %i.aaq = load i8, ptr %i.bx, align 8, !dbg !58551, !range !3290, !noalias !56710, !noundef !1314 ; 3 uses
  %i.aar = icmp eq i8 %i.aaq, -1, !dbg !58551
  br i1 %i.aar, label %bb.ll, label %bb.lm, !dbg !58552

._crit_edge:                                      ; preds = %bb.kg, %bb.jl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !dbg !58553, !noalias !56710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !dbg !58554, !noalias !56710
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser13next_or_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.bd, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1)
          to label %bb.ki unwind label %.loopexit.split-lp, !dbg !58555, !noalias !57513, !inline_history !54118

bb.jn:                                            ; preds = %.lr.ph, %bb.kg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !dbg !58554, !noalias !56710
end_hunk_7
begin_hunk_8_@_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser9parse_tag:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !dbg !58576, !noalias !56710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !dbg !58577, !noalias !56710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !dbg !58578, !noalias !56710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !dbg !58579, !noalias !56710
  store i8 3, ptr %i.bh, align 8, !dbg !58580, !alias.scope !57544, !noalias !56710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !dbg !58581, !noalias !56710
  call void @llvm.experimental.noalias.scope.decl(metadata !57545), !dbg !58582
  call void @llvm.experimental.noalias.scope.decl(metadata !57546), !dbg !58582
    #dbg_value(ptr %i.ic, !4145, !DIExpression(), !54472)
  %i.abh = load <2 x i64>, ptr %i.id, align 8, !dbg !58583, !alias.scope !57546, !noalias !57547
  store <2 x i64> %i.abh, ptr %i.aam, align 16, !dbg !58584, !alias.scope !57545, !noalias !57548
  %i.abi = load <2 x i64>, ptr %i.if, align 8, !dbg !58585, !alias.scope !57546, !noalias !57547
  store <2 x i64> %i.abi, ptr %i.aan, align 16, !dbg !58584, !alias.scope !57545, !noalias !57548
  %i.abj = load <2 x i64>, ptr %i.ic, align 8, !dbg !58586, !alias.scope !57546, !noalias !57547
  store <2 x i64> %i.abj, ptr %i.bg, align 16, !dbg !58584, !alias.scope !57545, !noalias !57548
  invoke void @_RNvMNtCs5yXxDE1DkoT_4tera5utilsINtB2_7SpannedNtNtB4_5value5ValueE3newB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bi, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.bg)
          to label %bb.jz unwind label %bb.jx, !dbg !58578, !noalias !57513, !inline_history !54118

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !dbg !58575, !noalias !56710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !dbg !58575, !noalias !56710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aao, ptr noundef nonnull align 8 dereferenceable(56) %i.bi, i64 56, i1 false), !dbg !58577, !noalias !56710
  store i64 0, ptr %i.bj, align 8, !dbg !58577, !noalias !56710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !dbg !58587, !noalias !56710
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser12parse_filter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.bk, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.bj)
          to label %bb.ka unwind label %.loopexit, !dbg !58588, !noalias !57513, !inline_history !54118

bb.ka:                                            ; preds = %bb.jz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !dbg !58589, !noalias !56710
  %i.abk = load i8, ptr %i.bk, align 8, !dbg !58590, !range !3289, !noalias !56710, !noundef !1314 ; 2 uses
  %.not451.i = icmp eq i8 %i.abk, -1, !dbg !58590
  br i1 %.not451.i, label %bb.kc, label %bb.kb, !dbg !58591

bb.kb:                                            ; preds = %bb.ka
  %.sroa.4270.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 1, !dbg !58592
  %.sroa.4270.i.sroa.0.0.copyload = load i56, ptr %.sroa.4270.0..sroa_idx.i, align 1, !dbg !58592, !noalias !56710
  %.sroa.4270.i.sroa.4.0.copyload = load ptr, ptr %i.aap, align 8, !dbg !58592, !noalias !56710
  %i.abl = load <2 x i64>, ptr %.sroa.42325.0..sroa_idx, align 8, !dbg !58592, !noalias !56710
  %i.abm = load <2 x i64>, ptr %.sroa.62327.0..sroa_idx, align 8, !dbg !58592, !noalias !56710
  %i.abn = load <2 x i64>, ptr %.sroa.82329.0..sroa_idx, align 8, !dbg !58592, !noalias !56710
  %.sroa.4270.i.sroa.11.0.copyload = load i64, ptr %.sroa.102331.0..sroa_idx, align 8, !dbg !58592, !noalias !56710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !dbg !58593, !noalias !56710
    #dbg_value(i8 %i.abk, !57461, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54474)
    #dbg_value(i56 %.sroa.4270.i.sroa.0.0.copyload, !57461, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !57550)
    #dbg_value(ptr %.sroa.4270.i.sroa.4.0.copyload, !57461, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57550)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57550)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57550)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57550)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57550)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57550)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57550)
    #dbg_value(i64 %.sroa.4270.i.sroa.11.0.copyload, !57461, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57550)
    #dbg_value(i8 %i.abk, !57482, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57500)
    #dbg_value(i56 %.sroa.4270.i.sroa.0.0.copyload, !57482, !DIExpression(DW_OP_LLVM_fragment, 72, 56), !57500)
    #dbg_value(ptr %.sroa.4270.i.sroa.4.0.copyload, !57482, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57500)
    #dbg_value(i64 %.sroa.4270.i.sroa.11.0.copyload, !57482, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57500)
    #dbg_value(i64 -1, !57482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57500)
  br label %bb.kh, !dbg !58561

bb.kc:                                            ; preds = %bb.ka
  %.sroa.02324.0.copyload = load ptr, ptr %i.aap, align 8, !dbg !58594, !noalias !56710
  %.sroa.102331.0.copyload = load i64, ptr %.sroa.102331.0..sroa_idx, align 8, !dbg !58594, !noalias !56710
  %i.abo = load <2 x i64>, ptr %.sroa.42325.0..sroa_idx, align 8, !dbg !58594, !noalias !56710
  %i.abp = load <2 x i64>, ptr %.sroa.62327.0..sroa_idx, align 8, !dbg !58594, !noalias !56710
  %i.abq = load <2 x i64>, ptr %.sroa.82329.0..sroa_idx, align 8, !dbg !58594, !noalias !56710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !dbg !58593, !noalias !56710
  store ptr %.sroa.02324.0.copyload, ptr %i.bf, align 8, !dbg !58576, !noalias !56710
  store <2 x i64> %i.abo, ptr %.sroa.6106.i.sroa.8.7..sroa_idx2310, align 8, !dbg !58576, !noalias !56710
  store <2 x i64> %i.abp, ptr %.sroa.6106.i.sroa.10.7..sroa_idx2314, align 8, !dbg !58576, !noalias !56710
  store <2 x i64> %i.abq, ptr %.sroa.6106.i.sroa.12.7..sroa_idx2318, align 8, !dbg !58576, !noalias !56710
  store i64 %.sroa.102331.0.copyload, ptr %.sroa.6106.i.sroa.14.7..sroa_idx2322, align 8, !dbg !58576, !noalias !56710
    #dbg_value(ptr %i.bq, !56965, !DIExpression(), !54476)
    #dbg_value(ptr %i.bq, !56974, !DIExpression(), !54478)
    #dbg_declare(ptr %i.bf, !56969, !DIExpression(), !54479)
    #dbg_declare(ptr %i.bf, !56979, !DIExpression(), !54481)
    #dbg_value(i64 64, !56984, !DIExpression(), !54484)
  %i.abr = load i64, ptr %i.aal, align 8, !dbg !58595, !alias.scope !57551, !noalias !57552, !noundef !1314 ; 3 uses
    #dbg_value(i64 %i.abr, !56970, !DIExpression(), !54488)
    #dbg_value(i64 %i.abr, !56995, !DIExpression(), !54490)
    #dbg_value(ptr %i.bq, !56991, !DIExpression(), !54491)
  %i.abs = load i64, ptr %i.bq, align 8, !dbg !58596, !range !3278, !alias.scope !57551, !noalias !57552, !noundef !1314
  %i.abt = icmp eq i64 %i.abr, %i.abs, !dbg !58597
  br i1 %i.abt, label %bb.kd, label %bb.kg, !dbg !58597

bb.kd:                                            ; preds = %bb.kc
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %bb.kg unwind label %bb.ke, !dbg !58598, !noalias !57552

bb.ke:                                            ; preds = %bb.kd
  %i.abu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.bf) #25
          to label %.body1520 unwind label %bb.kf, !dbg !58599, !noalias !57513

bb.kf:                                            ; preds = %bb.ke
  %i.abv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !58600, !noalias !57552
  unreachable, !dbg !58600

bb.kg:                                            ; preds = %bb.kd, %bb.kc
  %i.abw = load ptr, ptr %i.aak, align 8, !dbg !58601, !alias.scope !57551, !noalias !57552, !nonnull !1314, !noundef !1314
    #dbg_value(ptr %i.abw, !56998, !DIExpression(), !54490)
  %i.abx = getelementptr inbounds nuw [64 x i8], ptr %i.abw, i64 %i.abr, !dbg !58602
    #dbg_value(ptr %i.abx, !56972, !DIExpression(), !54495)
    #dbg_value(ptr %i.abx, !56982, !DIExpression(), !54496)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.abx, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.bf, i64 64, i1 false), !dbg !58603, !noalias !57513
  %i.aby = add i64 %i.abr, 1, !dbg !58604
  store i64 %i.aby, ptr %i.aal, align 8, !dbg !57597, !noalias !57513
  %i.abz = load i8, ptr %i.aaa, align 8, !dbg !58605, !range !3052, !alias.scope !56591, !noalias !57513, !noundef !1314
  %cond.i = icmp eq i8 %i.abz, 28, !dbg !58547
  br i1 %cond.i, label %bb.jn, label %._crit_edge, !dbg !58547

bb.kh:                                            ; preds = %bb.lk, %bb.kq, %bb.kb, %bb.jv
  %.sroa.20.sroa.20.sroa.0.3 = phi i56 [ %.sroa.20.sroa.20.sroa.0.6, %bb.jv ], [ %.sroa.4270.i.sroa.0.0.copyload, %bb.kb ], [ %.sroa.20.sroa.20.sroa.0.2, %bb.kq ], [ %.sroa.20.sroa.20.sroa.0.5, %bb.lk ], !dbg !58573
  %.sroa.20.sroa.0.3 = phi i8 [ %.sroa.20.sroa.0.6, %bb.jv ], [ %i.abk, %bb.kb ], [ %.sroa.20.sroa.0.2, %bb.kq ], [ %.sroa.20.sroa.0.5, %bb.lk ], !dbg !58573
  %.sroa.53.3 = phi i64 [ %.sroa.53.6, %bb.jv ], [ %.sroa.4270.i.sroa.11.0.copyload, %bb.kb ], [ %.sroa.53.2, %bb.kq ], [ %.sroa.53.5, %bb.lk ], !dbg !58573
  %.sroa.41.3 = phi ptr [ %.sroa.41.6, %bb.jv ], [ %.sroa.4270.i.sroa.4.0.copyload, %bb.kb ], [ %.sroa.41.2, %bb.kq ], [ %.sroa.41.5, %bb.lk ], !dbg !58573
  %i.aca = phi <2 x i64> [ %i.abc, %bb.jv ], [ %i.abl, %bb.kb ], [ %i.acr, %bb.kq ], [ %i.aeh, %bb.lk ], !dbg !58573
  %i.acb = phi <2 x i64> [ %i.abd, %bb.jv ], [ %i.abm, %bb.kb ], [ %i.acs, %bb.kq ], [ %i.aei, %bb.lk ], !dbg !58573
  %i.acc = phi <2 x i64> [ %i.abe, %bb.jv ], [ %i.abn, %bb.kb ], [ %i.act, %bb.kq ], [ %i.aej, %bb.lk ], !dbg !58573
    #dbg_value(i64 -1, !57482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57500)
    #dbg_value(ptr %.sroa.41.3, !57482, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57500)
    #dbg_value(i64 %.sroa.53.3, !57482, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57500)
    #dbg_value(i8 %.sroa.20.sroa.0.3, !57482, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57500)
    #dbg_value(i56 %.sroa.20.sroa.20.sroa.0.3, !57482, !DIExpression(DW_OP_LLVM_fragment, 72, 56), !57500)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bq)
          to label %.noexc1491 unwind label %bb.x, !dbg !58556, !inline_history !54118

.noexc1491:                                       ; preds = %bb.kh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !dbg !58556, !noalias !56710
  br label %bb.mc, !dbg !58539

bb.ki:                                            ; preds = %._crit_edge
  %i.acd = load i8, ptr %i.bd, align 8, !dbg !58606, !range !3290, !noalias !56710, !noundef !1314 ; 3 uses
  %i.ace = icmp eq i8 %i.acd, -1, !dbg !58606
  br i1 %i.ace, label %bb.kj, label %bb.kk, !dbg !58607

bb.kj:                                            ; preds = %bb.ki
  %i.acf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8, !dbg !58608
  %.sroa.02368.0.copyload = load i64, ptr %i.acf, align 8, !dbg !58608, !noalias !56710
  %.sroa.42369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16, !dbg !58608
  %.sroa.42369.0.copyload = load ptr, ptr %.sroa.42369.0..sroa_idx, align 8, !dbg !58608, !noalias !56710
  %.sroa.52370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24, !dbg !58608
  %i.acg = load <2 x i64>, ptr %.sroa.52370.0..sroa_idx, align 8, !dbg !58608, !noalias !56710
  %.sroa.72372.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 40, !dbg !58608
  %i.ach = load <2 x i64>, ptr %.sroa.72372.0..sroa_idx, align 8, !dbg !58608, !noalias !56710
  %.sroa.92374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 56, !dbg !58608
  %i.aci = load <2 x i64>, ptr %.sroa.92374.0..sroa_idx, align 8, !dbg !58608, !noalias !56710
  %.sroa.112376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 72, !dbg !58608
  %.sroa.112376.0.copyload = load i64, ptr %.sroa.112376.0..sroa_idx, align 8, !dbg !58608, !noalias !56710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !58560, !noalias !56710
    #dbg_value(i64 %.sroa.02368.0.copyload, !57461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57553)
    #dbg_value(ptr %.sroa.42369.0.copyload, !57461, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57553)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57553)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57553)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57553)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57553)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57553)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57553)
    #dbg_value(i64 %.sroa.112376.0.copyload, !57461, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57553)
    #dbg_value(i64 %.sroa.02368.0.copyload, !57482, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !57500)
    #dbg_value(i64 %.sroa.02368.0.copyload, !57482, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 56, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 72, 56), !57500)
    #dbg_value(ptr %.sroa.42369.0.copyload, !57482, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57500)
    #dbg_value(i64 %.sroa.112376.0.copyload, !57482, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57500)
    #dbg_value(i64 -1, !57482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57500)
  br label %bb.kq, !dbg !58561

bb.kk:                                            ; preds = %bb.ki
    #dbg_value(i8 %i.acd, !55266, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54498)
  %.sroa.4274.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 1, !dbg !58609
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5128.i.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4274.0..sroa_idx.i, i64 7, i1 false), !dbg !58609, !noalias !56710
  %.sroa.4274.i.sroa.4.0..sroa.4274.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8, !dbg !58609
  %.sroa.4274.i.sroa.4.0.copyload = load i64, ptr %.sroa.4274.i.sroa.4.0..sroa.4274.0..sroa_idx.i.sroa_idx, align 8, !dbg !58609, !noalias !56710 ; 2 uses
    #dbg_value(i64 %.sroa.4274.i.sroa.4.0.copyload, !55266, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57555)
  %.sroa.4274.i.sroa.5.0..sroa.4274.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16, !dbg !58609
  %.sroa.4274.i.sroa.5.0.copyload = load ptr, ptr %.sroa.4274.i.sroa.5.0..sroa.4274.0..sroa_idx.i.sroa_idx, align 8, !dbg !58609, !noalias !56710 ; 2 uses
    #dbg_value(ptr %.sroa.4274.i.sroa.5.0.copyload, !55266, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57555)
  %.sroa.4274.i.sroa.6.0..sroa.4274.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24, !dbg !58609 ; 2 uses
    #dbg_value(i64 poison, !55266, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57555)
  %i.acj = load <2 x i64>, ptr %.sroa.4274.i.sroa.6.0..sroa.4274.0..sroa_idx.i.sroa_idx, align 8, !dbg !58609, !noalias !56710
  %.sroa.4274.i.sroa.6.0.copyload = load i64, ptr %.sroa.4274.i.sroa.6.0..sroa.4274.0..sroa_idx.i.sroa_idx, align 8, !dbg !58609, !noalias !56710
    #dbg_value(i64 %.sroa.4274.i.sroa.6.0.copyload, !55266, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57555)
    #dbg_value(i64 poison, !55266, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57555)
  %.sroa.4274.i.sroa.8.0..sroa.4274.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 40, !dbg !58609
    #dbg_value(i64 poison, !55266, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57555)
  %i.ack = load <2 x i64>, ptr %.sroa.4274.i.sroa.8.0..sroa.4274.0..sroa_idx.i.sroa_idx, align 8, !dbg !58609, !noalias !56710
    #dbg_value(i64 poison, !55266, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57555)
  %.sroa.4274.i.sroa.10.0..sroa.4274.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 56, !dbg !58609
    #dbg_value(i64 poison, !55266, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57555)
  %i.acl = load <2 x i64>, ptr %.sroa.4274.i.sroa.10.0..sroa.4274.0..sroa_idx.i.sroa_idx, align 8, !dbg !58609, !noalias !56710
    #dbg_value(i64 poison, !55266, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57555)
  %.sroa.4274.i.sroa.12.0..sroa.4274.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 72, !dbg !58609
  %.sroa.4274.i.sroa.12.0.copyload = load i64, ptr %.sroa.4274.i.sroa.12.0..sroa.4274.0..sroa_idx.i.sroa_idx, align 8, !dbg !58609, !noalias !56710
    #dbg_value(i64 %.sroa.4274.i.sroa.12.0.copyload, !55266, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57555)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !dbg !58560, !noalias !56710
    #dbg_value(ptr poison, !55340, !DIExpression(), !54499)
    #dbg_value(ptr poison, !55342, !DIExpression(), !54500)
  %i.acm = icmp eq i8 %i.acd, 5, !dbg !58563
  br i1 %i.acm, label %bb.km, label %bb.kl, !dbg !58563

bb.kl:                                            ; preds = %bb.kk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !dbg !58564, !noalias !56710
  store i8 %i.acd, ptr %i.bc, align 8, !dbg !58564, !noalias !56710
  %.sroa.5128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 1, !dbg !58564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5128.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5128.i.sroa.0, i64 7, i1 false), !dbg !58564, !noalias !56710
  %.sroa.5128.i.sroa.5.0..sroa.5128.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8, !dbg !58564
  store i64 %.sroa.4274.i.sroa.4.0.copyload, ptr %.sroa.5128.i.sroa.5.0..sroa.5128.0..sroa_idx.i.sroa_idx, align 8, !dbg !58564, !noalias !56710
  %.sroa.5128.i.sroa.6.0..sroa.5128.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16, !dbg !58564
  store ptr %.sroa.4274.i.sroa.5.0.copyload, ptr %.sroa.5128.i.sroa.6.0..sroa.5128.0..sroa_idx.i.sroa_idx, align 8, !dbg !58564, !noalias !56710
  %.sroa.5128.i.sroa.7.0..sroa.5128.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24, !dbg !58564
  store i64 %.sroa.4274.i.sroa.6.0.copyload, ptr %.sroa.5128.i.sroa.7.0..sroa.5128.0..sroa_idx.i.sroa_idx, align 8, !dbg !58564, !noalias !56710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !dbg !58610, !noalias !56710
    #dbg_value(ptr %i.bc, !55345, !DIExpression(), !54501)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !dbg !58611, !noalias !56710
  store ptr %i.bc, ptr %i.az, align 8, !dbg !58611, !noalias !56710
  %.sroa.4278.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8, !dbg !58611
  store ptr @_RNvXs_NtNtCs5yXxDE1DkoT_4tera7parsing5lexerNtB4_5TokenNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4278.0..sroa_idx.i, align 8, !dbg !58611, !noalias !56710
    #dbg_value(ptr @2, !57509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57556)
    #dbg_value(ptr %i.az, !57509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57556)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54504)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54504)
    #dbg_value(ptr poison, !3324, !DIExpression(), !54504)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !54505)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !54507)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ba, ptr noundef nonnull @2, ptr noundef nonnull %i.az)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1519 unwind label %bb.kn, !dbg !58612

bb.km:                                            ; preds = %bb.kk
    #dbg_value(i8 %i.acd, !55339, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54508)
    #dbg_value(i8 %i.acd, !55255, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54509)
  %.sroa.4133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 1, !dbg !58613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4133.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5128.i.sroa.0, i64 7, i1 false), !dbg !58614, !noalias !56710
    #dbg_value(i64 %.sroa.4274.i.sroa.4.0.copyload, !55255, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57558)
    #dbg_value(ptr %.sroa.4274.i.sroa.5.0.copyload, !55255, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57558)
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57558)
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57558)
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57558)
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57558)
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57558)
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57558)
    #dbg_value(i64 %.sroa.4274.i.sroa.12.0.copyload, !55255, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57558)
    #dbg_value(i8 %i.acd, !55268, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54510)
    #dbg_value(i64 %.sroa.4274.i.sroa.4.0.copyload, !55268, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57559)
    #dbg_value(ptr %.sroa.4274.i.sroa.5.0.copyload, !55268, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57559)
    #dbg_value(i64 poison, !55268, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57559)
    #dbg_value(i64 poison, !55268, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57559)
    #dbg_value(i64 poison, !55268, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57559)
    #dbg_value(i64 poison, !55268, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57559)
    #dbg_value(i64 poison, !55268, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57559)
    #dbg_value(i64 poison, !55268, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57559)
    #dbg_value(i64 %.sroa.4274.i.sroa.12.0.copyload, !55268, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57559)
    #dbg_value(i8 %i.acd, !55349, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54511)
    #dbg_value(i64 %.sroa.4274.i.sroa.4.0.copyload, !55349, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57560)
    #dbg_value(ptr %.sroa.4274.i.sroa.5.0.copyload, !55349, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57560)
    #dbg_value(i64 poison, !55349, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57560)
    #dbg_value(i64 poison, !55349, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57560)
    #dbg_value(i64 poison, !55349, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57560)
    #dbg_value(i64 poison, !55349, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57560)
    #dbg_value(i64 poison, !55349, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57560)
    #dbg_value(i64 poison, !55349, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57560)
    #dbg_value(i64 %.sroa.4274.i.sroa.12.0.copyload, !55349, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57560)
  store i8 5, ptr %i.be, align 8, !dbg !58613, !noalias !56710
  %.sroa.4133.i.sroa.4.0..sroa.4133.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !58613
  store i64 %.sroa.4274.i.sroa.4.0.copyload, ptr %.sroa.4133.i.sroa.4.0..sroa.4133.0..sroa_idx.i.sroa_idx, align 8, !dbg !58613, !noalias !56710
  %.sroa.4133.i.sroa.5.0..sroa.4133.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16, !dbg !58613
  store ptr %.sroa.4274.i.sroa.5.0.copyload, ptr %.sroa.4133.i.sroa.5.0..sroa.4133.0..sroa_idx.i.sroa_idx, align 8, !dbg !58613, !noalias !56710
  %.sroa.4133.i.sroa.6.0..sroa.4133.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24, !dbg !58613
  store <2 x i64> %i.acj, ptr %.sroa.4133.i.sroa.6.0..sroa.4133.0..sroa_idx.i.sroa_idx, align 8, !dbg !58613, !noalias !56710
  %.sroa.4133.i.sroa.8.0..sroa.4133.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 40, !dbg !58613
  store <2 x i64> %i.ack, ptr %.sroa.4133.i.sroa.8.0..sroa.4133.0..sroa_idx.i.sroa_idx, align 8, !dbg !58613, !noalias !56710
  %.sroa.4133.i.sroa.10.0..sroa.4133.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 56, !dbg !58613
  store <2 x i64> %i.acl, ptr %.sroa.4133.i.sroa.10.0..sroa.4133.0..sroa_idx.i.sroa_idx, align 8, !dbg !58613, !noalias !56710
  %.sroa.4133.i.sroa.12.0..sroa.4133.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 72, !dbg !58613
  store i64 %.sroa.4274.i.sroa.12.0.copyload, ptr %.sroa.4133.i.sroa.12.0..sroa.4133.0..sroa_idx.i.sroa_idx, align 8, !dbg !58613, !noalias !56710
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.be)
          to label %bb.kr unwind label %.loopexit.split-lp, !dbg !58615, !noalias !57513, !inline_history !54118

bb.kn:                                            ; preds = %bb.kl, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1519
  %i.acn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bc) #25
          to label %.body1520 unwind label %bb.jw, !dbg !58568, !noalias !57513, !inline_history !54118

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1519: ; preds = %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !dbg !58616, !noalias !56710
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ic)
          to label %bb.ko unwind label %bb.kn, !dbg !58610, !noalias !57513, !inline_history !54118

bb.ko:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1519
  %.sroa.7118.i.sroa.6.7.copyload = load i64, ptr %i.bb, align 8, !dbg !58617, !noalias !56710
    #dbg_value(i64 %.sroa.7118.i.sroa.6.7.copyload, !55255, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57558)
  %.sroa.7118.i.sroa.9.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8, !dbg !58617
  %.sroa.7118.i.sroa.9.7.copyload = load ptr, ptr %.sroa.7118.i.sroa.9.7..sroa_idx, align 8, !dbg !58617, !noalias !56710
    #dbg_value(ptr %.sroa.7118.i.sroa.9.7.copyload, !55255, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57558)
  %.sroa.7118.i.sroa.10.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16, !dbg !58617
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57558)
  %i.aco = load <2 x i64>, ptr %.sroa.7118.i.sroa.10.7..sroa_idx, align 8, !dbg !58617, !noalias !56710
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57558)
  %.sroa.7118.i.sroa.12.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 32, !dbg !58617
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57558)
  %i.acp = load <2 x i64>, ptr %.sroa.7118.i.sroa.12.7..sroa_idx, align 8, !dbg !58617, !noalias !56710
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57558)
  %.sroa.7118.i.sroa.14.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 48, !dbg !58617
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57558)
  %i.acq = load <2 x i64>, ptr %.sroa.7118.i.sroa.14.7..sroa_idx, align 8, !dbg !58617, !noalias !56710
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57558)
  %.sroa.7118.i.sroa.16.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 64, !dbg !58617
  %.sroa.7118.i.sroa.16.7.copyload = load i64, ptr %.sroa.7118.i.sroa.16.7..sroa_idx, align 8, !dbg !58617, !noalias !56710
    #dbg_value(i64 %.sroa.7118.i.sroa.16.7.copyload, !55255, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57558)
    #dbg_value(i8 -1, !55255, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54509)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !dbg !58618, !noalias !56710
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bc)
          to label %bb.kp unwind label %.loopexit.split-lp, !dbg !58568, !noalias !57513, !inline_history !54118

bb.kp:                                            ; preds = %bb.ko
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !dbg !58568, !noalias !56710
    #dbg_value(i64 %.sroa.7118.i.sroa.6.7.copyload, !57461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57561)
    #dbg_value(ptr %.sroa.7118.i.sroa.9.7.copyload, !57461, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57561)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57561)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57561)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57561)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57561)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57561)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57561)
    #dbg_value(i64 %.sroa.7118.i.sroa.16.7.copyload, !57461, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57561)
    #dbg_value(i64 %.sroa.7118.i.sroa.6.7.copyload, !57482, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !57500)
    #dbg_value(i64 %.sroa.7118.i.sroa.6.7.copyload, !57482, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 56, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 72, 56), !57500)
    #dbg_value(ptr %.sroa.7118.i.sroa.9.7.copyload, !57482, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57500)
    #dbg_value(i64 %.sroa.7118.i.sroa.16.7.copyload, !57482, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57500)
    #dbg_value(i64 -1, !57482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57500)
  br label %bb.kq, !dbg !58615

bb.kq:                                            ; preds = %bb.kp, %bb.kj
  %.sroa.20.sroa.20.sroa.0.2.in.in = phi i64 [ %.sroa.02368.0.copyload, %bb.kj ], [ %.sroa.7118.i.sroa.6.7.copyload, %bb.kp ] ; 2 uses
  %.sroa.53.2 = phi i64 [ %.sroa.112376.0.copyload, %bb.kj ], [ %.sroa.7118.i.sroa.16.7.copyload, %bb.kp ], !dbg !58573
  %.sroa.41.2 = phi ptr [ %.sroa.42369.0.copyload, %bb.kj ], [ %.sroa.7118.i.sroa.9.7.copyload, %bb.kp ], !dbg !58573
  %i.acr = phi <2 x i64> [ %i.acg, %bb.kj ], [ %i.aco, %bb.kp ], !dbg !58573
  %i.acs = phi <2 x i64> [ %i.ach, %bb.kj ], [ %i.acp, %bb.kp ], !dbg !58573
  %i.act = phi <2 x i64> [ %i.aci, %bb.kj ], [ %i.acq, %bb.kp ], !dbg !58573
  %.sroa.20.sroa.0.2 = trunc i64 %.sroa.20.sroa.20.sroa.0.2.in.in to i8, !dbg !58573
  %.sroa.20.sroa.20.sroa.0.2.in = lshr i64 %.sroa.20.sroa.20.sroa.0.2.in.in, 8, !dbg !58573
  %.sroa.20.sroa.20.sroa.0.2 = trunc nuw i64 %.sroa.20.sroa.20.sroa.0.2.in to i56, !dbg !58573
    #dbg_value(i64 -1, !57482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57500)
    #dbg_value(ptr %.sroa.41.2, !57482, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57500)
    #dbg_value(i64 %.sroa.53.2, !57482, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57500)
    #dbg_value(i8 %.sroa.20.sroa.0.2, !57482, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57500)
    #dbg_value(i56 %.sroa.20.sroa.20.sroa.0.2, !57482, !DIExpression(DW_OP_LLVM_fragment, 72, 56), !57500)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !58615, !noalias !56710
  br label %bb.kh, !dbg !58561

bb.kr:                                            ; preds = %bb.km
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !58615, !noalias !56710
    #dbg_value(ptr %1, !57563, !DIExpression(), !54515)
    #dbg_value(i64 4, !57564, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57566)
    #dbg_value(i64 4, !4751, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57567)
    #dbg_value(i64 4, !4760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57568)
    #dbg_value(ptr @146, !57564, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57566)
    #dbg_value(ptr @146, !4751, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57567)
    #dbg_value(ptr @146, !4760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57568)
    #dbg_value(i64 11, !57564, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57566)
    #dbg_value(i64 11, !4751, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57567)
    #dbg_value(i64 11, !4760, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57568)
    #dbg_value(i64 poison, !57564, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57566)
    #dbg_value(i64 poison, !4751, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57567)
    #dbg_value(i64 poison, !4760, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57568)
    #dbg_value(i64 poison, !57564, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57566)
    #dbg_value(i64 poison, !4751, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57567)
    #dbg_value(i64 poison, !4760, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57568)
    #dbg_value(i64 poison, !57564, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57566)
    #dbg_value(i64 poison, !4751, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57567)
end_hunk_8
begin_hunk_9_@_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser9parse_tag:bb.a
  %.sroa.4293.i.sroa.6.0..sroa.4293.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 24, !dbg !58653
    #dbg_value(i64 poison, !55254, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57582)
    #dbg_value(i64 poison, !55254, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57582)
  %.sroa.4293.i.sroa.8.0..sroa.4293.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 40, !dbg !58653
    #dbg_value(i64 poison, !55254, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57582)
    #dbg_value(i64 poison, !55254, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57582)
  %.sroa.4293.i.sroa.10.0..sroa.4293.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 56, !dbg !58653
    #dbg_value(i64 poison, !55254, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57582)
    #dbg_value(i64 poison, !55254, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57582)
  %.sroa.4293.i.sroa.12.0..sroa.4293.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 72, !dbg !58653
  %.sroa.4293.i.sroa.12.0.copyload = load i64, ptr %.sroa.4293.i.sroa.12.0..sroa.4293.0..sroa_idx.i.sroa_idx, align 8, !dbg !58653, !noalias !56710
    #dbg_value(i64 %.sroa.4293.i.sroa.12.0.copyload, !55254, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57582)
    #dbg_value(i8 %i.adp, !55354, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54548)
    #dbg_value(i64 %.sroa.4293.i.sroa.4.0.copyload, !55354, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57583)
    #dbg_value(ptr %.sroa.4293.i.sroa.5.0.copyload, !55354, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57583)
    #dbg_value(i64 poison, !55354, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57583)
    #dbg_value(i64 poison, !55354, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57583)
    #dbg_value(i64 poison, !55354, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57583)
    #dbg_value(i64 poison, !55354, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57583)
    #dbg_value(i64 poison, !55354, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57583)
    #dbg_value(i64 poison, !55354, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57583)
    #dbg_value(i64 %.sroa.4293.i.sroa.12.0.copyload, !55354, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57583)
  %.sroa.4153.i.sroa.4.0..sroa.4153.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !58654
  %.sroa.4153.i.sroa.5.0..sroa.4153.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !58654
  %.sroa.4153.i.sroa.6.0..sroa.4153.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24, !dbg !58654
  %i.adv = load <2 x i64>, ptr %.sroa.4293.i.sroa.6.0..sroa.4293.0..sroa_idx.i.sroa_idx, align 8, !dbg !58653, !noalias !56710
  %.sroa.4153.i.sroa.8.0..sroa.4153.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 40, !dbg !58654
  %i.adw = load <2 x i64>, ptr %.sroa.4293.i.sroa.8.0..sroa.4293.0..sroa_idx.i.sroa_idx, align 8, !dbg !58653, !noalias !56710
  %.sroa.4153.i.sroa.10.0..sroa.4153.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 56, !dbg !58654
  %i.adx = load <2 x i64>, ptr %.sroa.4293.i.sroa.10.0..sroa.4293.0..sroa_idx.i.sroa_idx, align 8, !dbg !58653, !noalias !56710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !58650, !noalias !56710
  store i8 %i.adp, ptr %i.aw, align 8, !dbg !58654, !noalias !56710
  store i64 %.sroa.4293.i.sroa.4.0.copyload, ptr %.sroa.4153.i.sroa.4.0..sroa.4153.0..sroa_idx.i.sroa_idx, align 8, !dbg !58654, !noalias !56710
  store ptr %.sroa.4293.i.sroa.5.0.copyload, ptr %.sroa.4153.i.sroa.5.0..sroa.4153.0..sroa_idx.i.sroa_idx, align 8, !dbg !58654, !noalias !56710
  store <2 x i64> %i.adv, ptr %.sroa.4153.i.sroa.6.0..sroa.4153.0..sroa_idx.i.sroa_idx, align 8, !dbg !58654, !noalias !56710
  store <2 x i64> %i.adw, ptr %.sroa.4153.i.sroa.8.0..sroa.4153.0..sroa_idx.i.sroa_idx, align 8, !dbg !58654, !noalias !56710
  store <2 x i64> %i.adx, ptr %.sroa.4153.i.sroa.10.0..sroa.4153.0..sroa_idx.i.sroa_idx, align 8, !dbg !58654, !noalias !56710
  %.sroa.4153.i.sroa.12.0..sroa.4153.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 72, !dbg !58654
  store i64 %.sroa.4293.i.sroa.12.0.copyload, ptr %.sroa.4153.i.sroa.12.0..sroa.4153.0..sroa_idx.i.sroa_idx, align 8, !dbg !58654, !noalias !56710
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.aw)
          to label %bb.ld unwind label %bb.kz, !dbg !58652, !noalias !57513, !inline_history !54118

bb.ld:                                            ; preds = %bb.lc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !dbg !58652, !noalias !56710
    #dbg_value(ptr %.sroa.825.sroa.6.0.i2781, !56631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54549)
    #dbg_value(ptr %.sroa.825.sroa.6.0.i2781, !56629, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54550)
    #dbg_value(ptr %.sroa.825.sroa.6.0.i2781, !56627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54551)
    #dbg_value(ptr %.sroa.825.sroa.6.0.i2781, !56634, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54552)
    #dbg_value(i64 %.sroa.825.sroa.8.0.i2780, !56631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54549)
    #dbg_value(i64 %.sroa.825.sroa.8.0.i2780, !56629, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54550)
    #dbg_value(i64 %.sroa.825.sroa.8.0.i2780, !56627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54551)
    #dbg_value(i64 %.sroa.825.sroa.8.0.i2780, !56634, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54552)
    #dbg_value(i64 %.sroa.825.sroa.8.0.i2780, !56639, !DIExpression(), !54553)
    #dbg_value(i64 %.sroa.825.sroa.8.0.i2780, !56643, !DIExpression(), !54554)
    #dbg_value(i64 %.sroa.825.sroa.8.0.i2780, !56646, !DIExpression(), !54555)
    #dbg_value(i64 %.sroa.825.sroa.8.0.i2780, !57521, !DIExpression(), !54557)
    #dbg_value(i64 %.sroa.825.sroa.8.0.i2780, !57525, !DIExpression(), !54559)
    #dbg_value(i64 %.sroa.825.sroa.8.0.i2780, !56659, !DIExpression(), !54560)
    #dbg_value(i64 %.sroa.825.sroa.8.0.i2780, !56670, !DIExpression(), !54109)
    #dbg_value(i64 1, !56660, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54560)
    #dbg_value(i64 1, !56671, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54109)
    #dbg_value(i64 1, !56660, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54560)
    #dbg_value(i64 1, !56671, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54109)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !58655, !noalias !56710
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, i64 noundef %.sroa.825.sroa.8.0.i2780, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.le unwind label %bb.kz, !dbg !58655, !noalias !57513, !inline_history !54118

bb.le:                                            ; preds = %bb.ld
  %i.ady = load i64, ptr %i.aq, align 8, !dbg !58655, !range !3205, !noalias !56710, !noundef !1314
  %i.adz = trunc nuw i64 %i.ady to i1, !dbg !58656
  %i.aea = getelementptr inbounds nuw i8, ptr %i.aq, i64 8, !dbg !58657
  %i.aeb = load i64, ptr %i.aea, align 8, !dbg !58657, !range !3206, !noalias !56710, !noundef !1314 ; 3 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aq, i64 16, !dbg !58657 ; 2 uses
  br i1 %i.adz, label %bb.lf, label %bb.lg, !dbg !58656, !prof !3207

bb.lf:                                            ; preds = %bb.le
  %i.aed = load i64, ptr %i.aec, align 8, !dbg !58658, !noalias !56710
    #dbg_value(i64 %i.aeb, !56666, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54561)
    #dbg_value(i64 %i.aed, !56666, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54561)
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.aeb, i64 %i.aed) #27
          to label %bb.lj unwind label %bb.kz, !dbg !58659, !noalias !57513, !inline_history !54118

bb.lg:                                            ; preds = %bb.le
  %i.aee = load ptr, ptr %i.aec, align 8, !dbg !58660, !noalias !56710, !nonnull !1314, !noundef !1314 ; 2 uses
    #dbg_value(i64 %i.aeb, !56665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54562)
    #dbg_value(ptr %i.aee, !56665, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54562)
    #dbg_value(ptr poison, !56669, !DIExpression(), !54563)
    #dbg_value(ptr poison, !56649, !DIExpression(), !54564)
  %i.aef = icmp ule i64 %.sroa.825.sroa.8.0.i2780, %i.aeb, !dbg !58661
    #dbg_value(i1 true, !57576, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !54566)
  call void @llvm.assume(i1 %i.aef), !dbg !58662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !58663, !noalias !56710
    #dbg_value(i64 %i.aeb, !57585, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54569)
    #dbg_value(i64 %i.aeb, !56640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54570)
    #dbg_value(ptr %i.aee, !57585, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54569)
    #dbg_value(ptr %i.aee, !56640, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54570)
    #dbg_value(i64 0, !57585, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !54569)
    #dbg_value(i64 0, !56640, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !54570)
  %.not450.i = icmp eq i64 %.sroa.825.sroa.8.0.i2780, 0, !dbg !58664
  br i1 %.not450.i, label %bb.lh, label %bb.li, !dbg !58664

bb.lh:                                            ; preds = %bb.li, %bb.lg
    #dbg_value(i64 %.sroa.825.sroa.8.0.i2780, !56640, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !54570)
    #dbg_value(i64 %.sroa.825.sroa.8.0.i2780, !57585, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !54569)
  %.sroa.01994.0.copyload = load i64, ptr %i.bq, align 8, !dbg !58665, !noalias !56710
  %.sroa.41995.0.copyload = load i64, ptr %i.aak, align 8, !dbg !58665, !noalias !56710
  %.sroa.51996.0.copyload = load i64, ptr %i.aal, align 8, !dbg !58665, !noalias !56710
  %.sroa.0165.i.sroa.0.0.copyload = load i64, ptr %i.ay, align 8, !dbg !58666, !noalias !56710
  %.sroa.0165.i.sroa.4.0.copyload = load i64, ptr %.sroa.42456.0..sroa_idx, align 8, !dbg !58666, !noalias !56710
  %.sroa.4166.0.copyload.i = load i64, ptr %.sroa.52457.0..sroa_idx, align 8, !dbg !58666, !noalias !56710
  %i.aeg = zext i1 %i.ib to i8, !dbg !58667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !58646, !noalias !56710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !dbg !58556, !noalias !56710
  br label %bb.me, !dbg !58556

bb.li:                                            ; preds = %bb.lg
    #dbg_value(ptr %.sroa.825.sroa.6.0.i2781, !57522, !DIExpression(), !54557)
    #dbg_value(ptr %.sroa.825.sroa.6.0.i2781, !57526, !DIExpression(), !54559)
    #dbg_value(ptr %i.aee, !57523, !DIExpression(), !54557)
    #dbg_value(ptr %i.aee, !57527, !DIExpression(), !54559)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aee, ptr align 1 %.sroa.825.sroa.6.0.i2781, i64 %.sroa.825.sroa.8.0.i2780, i1 false), !dbg !58668, !noalias !57513
    #dbg_value(i64 %.sroa.825.sroa.8.0.i2780, !57585, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !54569)
    #dbg_value(i64 %.sroa.825.sroa.8.0.i2780, !56640, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !54570)
  br label %bb.lh, !dbg !58669

bb.lj:                                            ; preds = %bb.lw, %bb.lf
  unreachable

bb.lk:                                            ; preds = %bb.lb, %bb.kv
  %.sroa.20.sroa.20.sroa.0.5 = phi i56 [ %.sroa.20.sroa.20.0.extract.trunc1786, %bb.lb ], [ %.sroa.4287.i.sroa.0.0.copyload, %bb.kv ], !dbg !58573
  %.sroa.20.sroa.0.5 = phi i8 [ %.sroa.20.sroa.0.0.extract.trunc1770, %bb.lb ], [ %i.adc, %bb.kv ], !dbg !58573
  %.sroa.53.5 = phi i64 [ %.sroa.112505.0.copyload, %bb.lb ], [ %.sroa.5288.i.sroa.7.0.copyload, %bb.kv ], !dbg !58573
  %.sroa.41.5 = phi ptr [ %.sroa.42498.0.copyload, %bb.lb ], [ %.sroa.4287.i.sroa.4.0.copyload, %bb.kv ], !dbg !58573
  %i.aeh = phi <2 x i64> [ %i.ads, %bb.lb ], [ %i.add, %bb.kv ], !dbg !58573
  %i.aei = phi <2 x i64> [ %i.adt, %bb.lb ], [ %i.ade, %bb.kv ], !dbg !58573
  %i.aej = phi <2 x i64> [ %i.adu, %bb.lb ], [ %i.adf, %bb.kv ], !dbg !58573
    #dbg_value(i64 -1, !57482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57500)
    #dbg_value(ptr %.sroa.41.5, !57482, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57500)
    #dbg_value(i64 %.sroa.53.5, !57482, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57500)
    #dbg_value(i8 %.sroa.20.sroa.0.5, !57482, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57500)
    #dbg_value(i56 %.sroa.20.sroa.20.sroa.0.5, !57482, !DIExpression(DW_OP_LLVM_fragment, 72, 56), !57500)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !dbg !58646, !noalias !56710
  br label %bb.kh, !dbg !58561

bb.ll:                                            ; preds = %.noexc1490
  %i.aek = getelementptr inbounds nuw i8, ptr %i.bx, i64 8, !dbg !58670
  %.sroa.02078.0.copyload = load i64, ptr %i.aek, align 8, !dbg !58670, !noalias !56710
  %.sroa.42079.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16, !dbg !58670
  %.sroa.42079.0.copyload = load ptr, ptr %.sroa.42079.0..sroa_idx, align 8, !dbg !58670, !noalias !56710
  %.sroa.52080.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 24, !dbg !58670
  %i.ael = load <2 x i64>, ptr %.sroa.52080.0..sroa_idx, align 8, !dbg !58670, !noalias !56710
  %.sroa.72082.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 40, !dbg !58670
  %i.aem = load <2 x i64>, ptr %.sroa.72082.0..sroa_idx, align 8, !dbg !58670, !noalias !56710
  %.sroa.92084.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 56, !dbg !58670
  %i.aen = load <2 x i64>, ptr %.sroa.92084.0..sroa_idx, align 8, !dbg !58670, !noalias !56710
  %.sroa.112086.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 72, !dbg !58670
  %.sroa.112086.0.copyload = load i64, ptr %.sroa.112086.0..sroa_idx, align 8, !dbg !58670, !noalias !56710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !dbg !58671, !noalias !56710
    #dbg_value(i64 %.sroa.02078.0.copyload, !57461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57587)
    #dbg_value(ptr %.sroa.42079.0.copyload, !57461, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57587)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57587)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57587)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57587)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57587)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57587)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57587)
    #dbg_value(i64 %.sroa.112086.0.copyload, !57461, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57587)
    #dbg_value(i64 %.sroa.02078.0.copyload, !57482, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !57500)
    #dbg_value(i64 %.sroa.02078.0.copyload, !57482, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 56, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 72, 56), !57500)
    #dbg_value(ptr %.sroa.42079.0.copyload, !57482, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57500)
    #dbg_value(i64 %.sroa.112086.0.copyload, !57482, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57500)
    #dbg_value(i64 -1, !57482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57500)
  br label %bb.lr, !dbg !58539

bb.lm:                                            ; preds = %.noexc1490
    #dbg_value(i8 %i.aaq, !55258, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54572)
  %.sroa.4238.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 1, !dbg !58672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.566.i.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4238.0..sroa_idx.i, i64 7, i1 false), !dbg !58672, !noalias !56710
  %.sroa.4238.i.sroa.4.0..sroa.4238.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 8, !dbg !58672
  %.sroa.4238.i.sroa.4.0.copyload = load i64, ptr %.sroa.4238.i.sroa.4.0..sroa.4238.0..sroa_idx.i.sroa_idx, align 8, !dbg !58672, !noalias !56710 ; 2 uses
    #dbg_value(i64 %.sroa.4238.i.sroa.4.0.copyload, !55258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57589)
  %.sroa.4238.i.sroa.5.0..sroa.4238.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16, !dbg !58672
  %.sroa.4238.i.sroa.5.0.copyload = load ptr, ptr %.sroa.4238.i.sroa.5.0..sroa.4238.0..sroa_idx.i.sroa_idx, align 8, !dbg !58672, !noalias !56710 ; 2 uses
    #dbg_value(ptr %.sroa.4238.i.sroa.5.0.copyload, !55258, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57589)
  %.sroa.4238.i.sroa.6.0..sroa.4238.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 24, !dbg !58672 ; 2 uses
    #dbg_value(i64 poison, !55258, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57589)
  %i.aeo = load <2 x i64>, ptr %.sroa.4238.i.sroa.6.0..sroa.4238.0..sroa_idx.i.sroa_idx, align 8, !dbg !58672, !noalias !56710
  %.sroa.4238.i.sroa.6.0.copyload = load i64, ptr %.sroa.4238.i.sroa.6.0..sroa.4238.0..sroa_idx.i.sroa_idx, align 8, !dbg !58672, !noalias !56710
    #dbg_value(i64 %.sroa.4238.i.sroa.6.0.copyload, !55258, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57589)
    #dbg_value(i64 poison, !55258, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57589)
  %.sroa.4238.i.sroa.8.0..sroa.4238.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 40, !dbg !58672
    #dbg_value(i64 poison, !55258, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57589)
  %i.aep = load <2 x i64>, ptr %.sroa.4238.i.sroa.8.0..sroa.4238.0..sroa_idx.i.sroa_idx, align 8, !dbg !58672, !noalias !56710
    #dbg_value(i64 poison, !55258, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57589)
  %.sroa.4238.i.sroa.10.0..sroa.4238.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 56, !dbg !58672
    #dbg_value(i64 poison, !55258, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57589)
  %i.aeq = load <2 x i64>, ptr %.sroa.4238.i.sroa.10.0..sroa.4238.0..sroa_idx.i.sroa_idx, align 8, !dbg !58672, !noalias !56710
    #dbg_value(i64 poison, !55258, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57589)
  %.sroa.4238.i.sroa.12.0..sroa.4238.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 72, !dbg !58672
  %.sroa.4238.i.sroa.12.0.copyload = load i64, ptr %.sroa.4238.i.sroa.12.0..sroa.4238.0..sroa_idx.i.sroa_idx, align 8, !dbg !58672, !noalias !56710
    #dbg_value(i64 %.sroa.4238.i.sroa.12.0.copyload, !55258, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57589)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !dbg !58671, !noalias !56710
    #dbg_value(ptr poison, !55308, !DIExpression(), !54573)
    #dbg_value(ptr poison, !55310, !DIExpression(), !54574)
  %i.aer = icmp eq i8 %i.aaq, 29, !dbg !58673
  br i1 %i.aer, label %bb.lo, label %bb.ln, !dbg !58673

bb.ln:                                            ; preds = %bb.lm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !dbg !58674, !noalias !56710
  store i8 %i.aaq, ptr %i.bw, align 8, !dbg !58674, !noalias !56710
  %.sroa.566.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 1, !dbg !58674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.566.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.566.i.sroa.0, i64 7, i1 false), !dbg !58674, !noalias !56710
  %.sroa.566.i.sroa.5.0..sroa.566.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8, !dbg !58674
  store i64 %.sroa.4238.i.sroa.4.0.copyload, ptr %.sroa.566.i.sroa.5.0..sroa.566.0..sroa_idx.i.sroa_idx, align 8, !dbg !58674, !noalias !56710
  %.sroa.566.i.sroa.6.0..sroa.566.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16, !dbg !58674
  store ptr %.sroa.4238.i.sroa.5.0.copyload, ptr %.sroa.566.i.sroa.6.0..sroa.566.0..sroa_idx.i.sroa_idx, align 8, !dbg !58674, !noalias !56710
  %.sroa.566.i.sroa.7.0..sroa.566.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24, !dbg !58674
  store i64 %.sroa.4238.i.sroa.6.0.copyload, ptr %.sroa.566.i.sroa.7.0..sroa.566.0..sroa_idx.i.sroa_idx, align 8, !dbg !58674, !noalias !56710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !dbg !58675, !noalias !56710
    #dbg_value(ptr %i.bw, !55313, !DIExpression(), !54575)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !dbg !58676, !noalias !56710
  store ptr %i.bw, ptr %i.bt, align 8, !dbg !58676, !noalias !56710
  %.sroa.4242.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8, !dbg !58676
  store ptr @_RNvXs_NtNtCs5yXxDE1DkoT_4tera7parsing5lexerNtB4_5TokenNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4242.0..sroa_idx.i, align 8, !dbg !58676, !noalias !56710
    #dbg_value(ptr @74, !57509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57590)
    #dbg_value(ptr %i.bt, !57509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57590)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54578)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54578)
    #dbg_value(ptr poison, !3324, !DIExpression(), !54578)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !54579)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !54581)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bu, ptr noundef nonnull @74, ptr noundef nonnull %i.bt)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1515 unwind label %bb.lp, !dbg !58677

bb.lo:                                            ; preds = %bb.lm
    #dbg_value(i8 %i.aaq, !55307, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54582)
    #dbg_value(i8 %i.aaq, !55255, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54583)
  %.sroa.471.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 1, !dbg !58678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.471.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.566.i.sroa.0, i64 7, i1 false), !dbg !58679, !noalias !56710
    #dbg_value(i64 %.sroa.4238.i.sroa.4.0.copyload, !55255, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57592)
    #dbg_value(ptr %.sroa.4238.i.sroa.5.0.copyload, !55255, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57592)
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57592)
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57592)
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57592)
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57592)
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57592)
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57592)
    #dbg_value(i64 %.sroa.4238.i.sroa.12.0.copyload, !55255, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57592)
    #dbg_value(i8 %i.aaq, !55260, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54584)
    #dbg_value(i64 %.sroa.4238.i.sroa.4.0.copyload, !55260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57593)
    #dbg_value(ptr %.sroa.4238.i.sroa.5.0.copyload, !55260, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57593)
    #dbg_value(i64 poison, !55260, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57593)
    #dbg_value(i64 poison, !55260, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57593)
    #dbg_value(i64 poison, !55260, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57593)
    #dbg_value(i64 poison, !55260, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57593)
    #dbg_value(i64 poison, !55260, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57593)
    #dbg_value(i64 poison, !55260, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57593)
    #dbg_value(i64 %.sroa.4238.i.sroa.12.0.copyload, !55260, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57593)
    #dbg_value(i8 %i.aaq, !55317, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54585)
    #dbg_value(i64 %.sroa.4238.i.sroa.4.0.copyload, !55317, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57594)
    #dbg_value(ptr %.sroa.4238.i.sroa.5.0.copyload, !55317, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57594)
    #dbg_value(i64 poison, !55317, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57594)
    #dbg_value(i64 poison, !55317, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57594)
    #dbg_value(i64 poison, !55317, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57594)
    #dbg_value(i64 poison, !55317, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57594)
    #dbg_value(i64 poison, !55317, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57594)
    #dbg_value(i64 poison, !55317, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57594)
    #dbg_value(i64 %.sroa.4238.i.sroa.12.0.copyload, !55317, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57594)
  store i8 29, ptr %i.by, align 8, !dbg !58678, !noalias !56710
  %.sroa.471.i.sroa.4.0..sroa.471.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8, !dbg !58678
  store i64 %.sroa.4238.i.sroa.4.0.copyload, ptr %.sroa.471.i.sroa.4.0..sroa.471.0..sroa_idx.i.sroa_idx, align 8, !dbg !58678, !noalias !56710
  %.sroa.471.i.sroa.5.0..sroa.471.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 16, !dbg !58678
  store ptr %.sroa.4238.i.sroa.5.0.copyload, ptr %.sroa.471.i.sroa.5.0..sroa.471.0..sroa_idx.i.sroa_idx, align 8, !dbg !58678, !noalias !56710
  %.sroa.471.i.sroa.6.0..sroa.471.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 24, !dbg !58678
  store <2 x i64> %i.aeo, ptr %.sroa.471.i.sroa.6.0..sroa.471.0..sroa_idx.i.sroa_idx, align 8, !dbg !58678, !noalias !56710
  %.sroa.471.i.sroa.8.0..sroa.471.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 40, !dbg !58678
  store <2 x i64> %i.aep, ptr %.sroa.471.i.sroa.8.0..sroa.471.0..sroa_idx.i.sroa_idx, align 8, !dbg !58678, !noalias !56710
  %.sroa.471.i.sroa.10.0..sroa.471.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 56, !dbg !58678
  store <2 x i64> %i.aeq, ptr %.sroa.471.i.sroa.10.0..sroa.471.0..sroa_idx.i.sroa_idx, align 8, !dbg !58678, !noalias !56710
  %.sroa.471.i.sroa.12.0..sroa.471.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 72, !dbg !58678
  store i64 %.sroa.4238.i.sroa.12.0.copyload, ptr %.sroa.471.i.sroa.12.0..sroa.471.0..sroa_idx.i.sroa_idx, align 8, !dbg !58678, !noalias !56710
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.by)
          to label %.noexc1494 unwind label %bb.x, !dbg !58680, !inline_history !54118

.noexc1494:                                       ; preds = %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !dbg !58680, !noalias !56710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !dbg !58681, !noalias !56710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !dbg !58682, !noalias !56710
    #dbg_value(ptr %1, !3097, !DIExpression(), !54587)
    #dbg_value(i8 0, !3101, !DIExpression(), !54587)
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser22inner_parse_expression(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.br, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1, i8 noundef 0)
          to label %.noexc1495 unwind label %bb.x, !dbg !58683, !inline_history !54588

.noexc1495:                                       ; preds = %.noexc1494
  %i.aes = load i8, ptr %i.br, align 8, !dbg !58684, !range !3289, !noalias !56710, !noundef !1314 ; 2 uses
  %.not447.i = icmp eq i8 %i.aes, -1, !dbg !58684
  br i1 %.not447.i, label %bb.lt, label %bb.ls, !dbg !58685

bb.lp:                                            ; preds = %bb.ln, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1515
  %i.aet = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bw) #25
          to label %.body1492 unwind label %bb.jw, !dbg !58686, !noalias !57513, !inline_history !54118

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1515: ; preds = %bb.ln
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !dbg !58687, !noalias !56710
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.bv, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ic)
          to label %bb.lq unwind label %bb.lp, !dbg !58675, !noalias !57513, !inline_history !54118

bb.lq:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1515
  %.sroa.756.i.sroa.6.7.copyload = load i64, ptr %i.bv, align 8, !dbg !58688, !noalias !56710
    #dbg_value(i64 %.sroa.756.i.sroa.6.7.copyload, !55255, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57592)
  %.sroa.756.i.sroa.9.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8, !dbg !58688
  %.sroa.756.i.sroa.9.7.copyload = load ptr, ptr %.sroa.756.i.sroa.9.7..sroa_idx, align 8, !dbg !58688, !noalias !56710
    #dbg_value(ptr %.sroa.756.i.sroa.9.7.copyload, !55255, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57592)
  %.sroa.756.i.sroa.10.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16, !dbg !58688
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57592)
  %i.aeu = load <2 x i64>, ptr %.sroa.756.i.sroa.10.7..sroa_idx, align 8, !dbg !58688, !noalias !56710
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57592)
  %.sroa.756.i.sroa.12.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 32, !dbg !58688
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57592)
  %i.aev = load <2 x i64>, ptr %.sroa.756.i.sroa.12.7..sroa_idx, align 8, !dbg !58688, !noalias !56710
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57592)
  %.sroa.756.i.sroa.14.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 48, !dbg !58688
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57592)
  %i.aew = load <2 x i64>, ptr %.sroa.756.i.sroa.14.7..sroa_idx, align 8, !dbg !58688, !noalias !56710
    #dbg_value(i64 poison, !55255, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57592)
  %.sroa.756.i.sroa.16.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 64, !dbg !58688
  %.sroa.756.i.sroa.16.7.copyload = load i64, ptr %.sroa.756.i.sroa.16.7..sroa_idx, align 8, !dbg !58688, !noalias !56710
    #dbg_value(i64 %.sroa.756.i.sroa.16.7.copyload, !55255, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57592)
    #dbg_value(i8 -1, !55255, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54583)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !dbg !58689, !noalias !56710
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bw)
          to label %.noexc1496 unwind label %bb.x, !dbg !58686, !inline_history !54118

.noexc1496:                                       ; preds = %bb.lq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !dbg !58686, !noalias !56710
    #dbg_value(i64 %.sroa.756.i.sroa.6.7.copyload, !57461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57595)
    #dbg_value(ptr %.sroa.756.i.sroa.9.7.copyload, !57461, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57595)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57595)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57595)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57595)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57595)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57595)
    #dbg_value(i64 poison, !57461, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57595)
    #dbg_value(i64 %.sroa.756.i.sroa.16.7.copyload, !57461, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57595)
    #dbg_value(i64 %.sroa.756.i.sroa.6.7.copyload, !57482, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !57500)
    #dbg_value(i64 %.sroa.756.i.sroa.6.7.copyload, !57482, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 56, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 72, 56), !57500)
    #dbg_value(ptr %.sroa.756.i.sroa.9.7.copyload, !57482, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57500)
    #dbg_value(i64 %.sroa.756.i.sroa.16.7.copyload, !57482, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57500)
    #dbg_value(i64 -1, !57482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57500)
  br label %bb.lr, !dbg !58680

bb.lr:                                            ; preds = %.noexc1496, %bb.ll
  %.sroa.20.sroa.20.sroa.0.7.in.in = phi i64 [ %.sroa.02078.0.copyload, %bb.ll ], [ %.sroa.756.i.sroa.6.7.copyload, %.noexc1496 ] ; 2 uses
  %.sroa.53.7 = phi i64 [ %.sroa.112086.0.copyload, %bb.ll ], [ %.sroa.756.i.sroa.16.7.copyload, %.noexc1496 ], !dbg !58690
  %.sroa.41.7 = phi ptr [ %.sroa.42079.0.copyload, %bb.ll ], [ %.sroa.756.i.sroa.9.7.copyload, %.noexc1496 ], !dbg !58690
  %i.aex = phi <2 x i64> [ %i.ael, %bb.ll ], [ %i.aeu, %.noexc1496 ], !dbg !58690
  %i.aey = phi <2 x i64> [ %i.aem, %bb.ll ], [ %i.aev, %.noexc1496 ], !dbg !58690
  %i.aez = phi <2 x i64> [ %i.aen, %bb.ll ], [ %i.aew, %.noexc1496 ], !dbg !58690
  %.sroa.20.sroa.0.7 = trunc i64 %.sroa.20.sroa.20.sroa.0.7.in.in to i8, !dbg !58690
  %.sroa.20.sroa.20.sroa.0.7.in = lshr i64 %.sroa.20.sroa.20.sroa.0.7.in.in, 8, !dbg !58690
  %.sroa.20.sroa.20.sroa.0.7 = trunc nuw i64 %.sroa.20.sroa.20.sroa.0.7.in to i56, !dbg !58690
    #dbg_value(i64 -1, !57482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57500)
    #dbg_value(ptr %.sroa.41.7, !57482, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57500)
    #dbg_value(i64 poison, !57482, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57500)
    #dbg_value(i64 %.sroa.53.7, !57482, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57500)
    #dbg_value(i8 %.sroa.20.sroa.0.7, !57482, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57500)
    #dbg_value(i56 %.sroa.20.sroa.20.sroa.0.7, !57482, !DIExpression(DW_OP_LLVM_fragment, 72, 56), !57500)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !dbg !58680, !noalias !56710
  br label %bb.mc, !dbg !58539

bb.ls:                                            ; preds = %.noexc1495
  %.sroa.4250.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 1, !dbg !58691
  %.sroa.4250.i.sroa.0.0.copyload = load i56, ptr %.sroa.4250.0..sroa_idx.i, align 1, !dbg !58691, !noalias !56710
  %.sroa.4250.i.sroa.4.0..sroa.4250.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8, !dbg !58691
  %.sroa.4250.i.sroa.4.0.copyload = load ptr, ptr %.sroa.4250.i.sroa.4.0..sroa.4250.0..sroa_idx.i.sroa_idx, align 8, !dbg !58691, !noalias !56710
  %.sroa.4250.i.sroa.5.0..sroa.4250.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 16, !dbg !58691
end_hunk_9
begin_hunk_10_@_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser9parse_tag:bb.a
    #dbg_value(i64 poison, !55361, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57609)
    #dbg_value(i64 poison, !54934, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57606)
    #dbg_value(i64 poison, !55361, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57609)
    #dbg_value(i64 poison, !54934, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57606)
    #dbg_value(i64 poison, !55361, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57609)
    #dbg_value(i64 poison, !54934, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57606)
    #dbg_value(i64 poison, !55361, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57609)
    #dbg_value(i64 poison, !54934, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57606)
    #dbg_value(i64 poison, !55361, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57609)
    #dbg_value(i64 %.sroa.53.8.ph, !54934, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57606)
    #dbg_value(i64 %.sroa.53.8.ph, !55361, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57609)
    #dbg_value(i64 %.sroa.20.sroa.0.0.insert.insert, !55363, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57610)
    #dbg_value(ptr %.sroa.41.8.ph, !55363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57610)
    #dbg_value(i64 poison, !55363, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57610)
    #dbg_value(i64 poison, !55363, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57610)
    #dbg_value(i64 poison, !55363, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57610)
    #dbg_value(i64 poison, !55363, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57610)
    #dbg_value(i64 poison, !55363, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57610)
    #dbg_value(i64 poison, !55363, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57610)
    #dbg_value(i64 %.sroa.53.8.ph, !55363, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57610)
  %i.agf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !58724
  store i64 %.sroa.20.sroa.0.0.insert.insert, ptr %i.agf, align 8, !dbg !58724
  %.sroa.41953.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !58724
  store ptr %.sroa.41.8.ph, ptr %.sroa.41953.0..sroa_idx, align 8, !dbg !58724
  %.sroa.51954.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !58724
  store <2 x i64> %i.agc, ptr %.sroa.51954.0..sroa_idx, align 8, !dbg !58724
  %.sroa.71956.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !58724
  store <2 x i64> %i.agd, ptr %.sroa.71956.0..sroa_idx, align 8, !dbg !58724
  %.sroa.91958.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !58724
  store <2 x i64> %i.age, ptr %.sroa.91958.0..sroa_idx, align 8, !dbg !58724
  %.sroa.111960.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !58724
  store i64 %.sroa.53.8.ph, ptr %.sroa.111960.0..sroa_idx, align 8, !dbg !58724
  store i64 -2, ptr %0, align 8, !dbg !58724
  br label %bb.aj, !dbg !57958

bb.me:                                            ; preds = %bb.ly, %bb.lh
  %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.5.i.sroa.6.0 = phi i64 [ %.sroa.82188.0.copyload, %bb.ly ], [ %.sroa.51996.0.copyload, %bb.lh ], !dbg !57597
  %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.5.i.sroa.5.0 = phi i64 [ %.sroa.72187.0.copyload, %bb.ly ], [ %.sroa.41995.0.copyload, %bb.lh ], !dbg !57597
  %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.5.i.sroa.0.0 = phi i64 [ %.sroa.62186.0.copyload, %bb.ly ], [ %.sroa.01994.0.copyload, %bb.lh ], !dbg !57597
  %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.6.i.sroa.5.0 = phi i64 [ %.sroa.102190.0.copyload, %bb.ly ], [ %.sroa.0165.i.sroa.4.0.copyload, %bb.lh ], !dbg !57597
  %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.6.i.sroa.0.0 = phi i64 [ %.sroa.92189.0.copyload, %bb.ly ], [ %.sroa.0165.i.sroa.0.0.copyload, %bb.lh ], !dbg !57597
  %.sroa.3.sroa.0.sroa.0.sroa.3.0.i = phi i64 [ %i.afk, %bb.ly ], [ %.sroa.4166.0.copyload.i, %bb.lh ], !dbg !57597
  %.sroa.3.sroa.0.sroa.5.0.i = phi i64 [ %.sroa.825.sroa.8.0.i2780, %bb.ly ], [ undef, %bb.lh ]
  %.sroa.3.sroa.0.sroa.3.0.i = phi i8 [ %.sroa.4252.8.extract.trunc.i, %bb.ly ], [ %i.aeg, %bb.lh ], !dbg !57597
  %.sroa.3.sroa.0.sroa.4.sroa.0.0.i = phi i56 [ %.sroa.4252.9.extract.trunc.i, %bb.ly ], [ undef, %bb.lh ], !dbg !57597
  %.sroa.3.sroa.3.0.i = phi i8 [ %i.afq, %bb.ly ], [ undef, %bb.lh ]
  %.sroa.047.0.i = phi i64 [ 17, %bb.ly ], [ 18, %bb.lh ], !dbg !57597
  %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.0.0.i = phi i64 [ %i.afe, %bb.ly ], [ %i.aeb, %bb.lh ], !dbg !57597
  %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.3.0.i = phi ptr [ %i.aff, %bb.ly ], [ %i.aee, %bb.lh ], !dbg !57597
  %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.4.0.i = phi i64 [ %.sroa.52185.0.copyload, %bb.ly ], [ %.sroa.825.sroa.8.0.i2780, %bb.lh ], !dbg !57597
    #dbg_value(i64 %.sroa.047.0.i, !57482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57500)
    #dbg_value(i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.0.0.i, !57482, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !57500)
    #dbg_value(i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.0.0.i, !57482, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 56, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 72, 56), !57500)
    #dbg_value(ptr %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.3.0.i, !57482, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57500)
    #dbg_value(i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.4.0.i, !57482, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57500)
    #dbg_value(i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.5.i.sroa.0.0, !57482, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57500)
    #dbg_value(i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.5.i.sroa.5.0, !57482, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57500)
    #dbg_value(i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.5.i.sroa.6.0, !57482, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57500)
    #dbg_value(i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.6.i.sroa.0.0, !57482, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57500)
    #dbg_value(i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.6.i.sroa.5.0, !57482, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57500)
    #dbg_value(i64 %.sroa.3.sroa.0.sroa.0.sroa.3.0.i, !57482, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57500)
    #dbg_value(i8 %.sroa.3.sroa.0.sroa.3.0.i, !57482, !DIExpression(DW_OP_LLVM_fragment, 640, 8), !57500)
    #dbg_value(i56 %.sroa.3.sroa.0.sroa.4.sroa.0.0.i, !57482, !DIExpression(DW_OP_LLVM_fragment, 648, 56), !57500)
    #dbg_value(i64 %.sroa.3.sroa.0.sroa.5.0.i, !57482, !DIExpression(DW_OP_LLVM_fragment, 704, 64), !57500)
    #dbg_value(i8 %.sroa.3.sroa.3.0.i, !57482, !DIExpression(DW_OP_LLVM_fragment, 768, 8), !57500)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !dbg !58721, !noalias !56710
    #dbg_value(i64 %.sroa.047.0.i, !57482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57500)
    #dbg_value(ptr %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.3.0.i, !57482, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57500)
    #dbg_value(i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.4.0.i, !57482, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57500)
    #dbg_value(i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.5.i.sroa.0.0, !57482, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57500)
    #dbg_value(i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.5.i.sroa.5.0, !57482, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57500)
    #dbg_value(i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.5.i.sroa.6.0, !57482, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57500)
    #dbg_value(i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.6.i.sroa.0.0, !57482, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57500)
    #dbg_value(i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.6.i.sroa.5.0, !57482, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57500)
    #dbg_value(i64 %.sroa.3.sroa.0.sroa.0.sroa.3.0.i, !57482, !DIExpression(DW_OP_LLVM_fragment, 576, 64), !57500)
    #dbg_value(i8 %.sroa.3.sroa.0.sroa.3.0.i, !57482, !DIExpression(DW_OP_LLVM_fragment, 640, 8), !57500)
    #dbg_value(i56 %.sroa.3.sroa.0.sroa.4.sroa.0.0.i, !57482, !DIExpression(DW_OP_LLVM_fragment, 648, 56), !57500)
    #dbg_value(i64 %.sroa.3.sroa.0.sroa.5.0.i, !57482, !DIExpression(DW_OP_LLVM_fragment, 704, 64), !57500)
    #dbg_value(i8 %.sroa.3.sroa.3.0.i, !57482, !DIExpression(DW_OP_LLVM_fragment, 768, 8), !57500)
    #dbg_value(i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.0.0.i, !57482, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !57500)
    #dbg_value(i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.0.0.i, !57482, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 56, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 72, 56), !57500)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !dbg !58722
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5128.i.sroa.0), !dbg !58722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !dbg !58722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !dbg !58722
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.599.i.sroa.0), !dbg !58722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !dbg !58722
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.566.i.sroa.0), !dbg !58722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !dbg !58722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !dbg !58722
  store i64 %.sroa.047.0.i, ptr %0, align 8, !dbg !58725
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !58725
  store i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.0.0.i, ptr %.sroa.541.0..sroa_idx, align 8, !dbg !58725
  %.sroa.541.sroa.5.0..sroa.541.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !58725
  store ptr %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.3.0.i, ptr %.sroa.541.sroa.5.0..sroa.541.0..sroa_idx.sroa_idx, align 8, !dbg !58725
  %.sroa.541.sroa.6.0..sroa.541.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !58725
  store i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.4.0.i, ptr %.sroa.541.sroa.6.0..sroa.541.0..sroa_idx.sroa_idx, align 8, !dbg !58725
  %.sroa.541.sroa.7.0..sroa.541.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !58725
  store i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.5.i.sroa.0.0, ptr %.sroa.541.sroa.7.0..sroa.541.0..sroa_idx.sroa_idx, align 8, !dbg !58725
  %.sroa.541.sroa.8.0..sroa.541.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !58725
  store i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.5.i.sroa.5.0, ptr %.sroa.541.sroa.8.0..sroa.541.0..sroa_idx.sroa_idx, align 8, !dbg !58725
  %.sroa.541.sroa.9.0..sroa.541.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !58725
  store i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.5.i.sroa.6.0, ptr %.sroa.541.sroa.9.0..sroa.541.0..sroa_idx.sroa_idx, align 8, !dbg !58725
  %.sroa.541.sroa.10.0..sroa.541.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !58725
  store i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.6.i.sroa.0.0, ptr %.sroa.541.sroa.10.0..sroa.541.0..sroa_idx.sroa_idx, align 8, !dbg !58725
  %.sroa.541.sroa.11.0..sroa.541.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !58725
  store i64 %.sroa.3.sroa.0.sroa.0.sroa.0.sroa.6.i.sroa.5.0, ptr %.sroa.541.sroa.11.0..sroa.541.0..sroa_idx.sroa_idx, align 8, !dbg !58725
  %.sroa.541.sroa.12.0..sroa.541.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !58725
  store i64 %.sroa.3.sroa.0.sroa.0.sroa.3.0.i, ptr %.sroa.541.sroa.12.0..sroa.541.0..sroa_idx.sroa_idx, align 8, !dbg !58725
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !58725
  store i8 %.sroa.3.sroa.0.sroa.3.0.i, ptr %.sroa.642.0..sroa_idx, align 8, !dbg !58725
  %.sroa.642.sroa.5.0..sroa.642.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 81, !dbg !58725
  store i56 %.sroa.3.sroa.0.sroa.4.sroa.0.0.i, ptr %.sroa.642.sroa.5.0..sroa.642.0..sroa_idx.sroa_idx, align 1, !dbg !58725
  %.sroa.642.sroa.6.0..sroa.642.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !58725
  store i64 %.sroa.3.sroa.0.sroa.5.0.i, ptr %.sroa.642.sroa.6.0..sroa.642.0..sroa_idx.sroa_idx, align 8, !dbg !58725
  %.sroa.642.sroa.7.0..sroa.642.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !58725
  store i8 %.sroa.3.sroa.3.0.i, ptr %.sroa.642.sroa.7.0..sroa.642.0..sroa_idx.sroa_idx, align 8, !dbg !58725
  br label %bb.an, !dbg !58726

bb.mf:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !dbg !58727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !dbg !58728
    #dbg_value(ptr @158, !55962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57611)
    #dbg_value(ptr @158, !55964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57612)
    #dbg_value(ptr @158, !55956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57613)
    #dbg_value(ptr @158, !55967, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57614)
    #dbg_value(i64 66, !55962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57611)
    #dbg_value(i64 66, !55964, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57612)
    #dbg_value(i64 66, !55956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57613)
    #dbg_value(i64 66, !55967, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57614)
    #dbg_value(i64 66, !55986, !DIExpression(), !57615)
    #dbg_value(i64 66, !55992, !DIExpression(), !57616)
    #dbg_value(i64 66, !55997, !DIExpression(), !57617)
    #dbg_value(i64 66, !56533, !DIExpression(), !57619)
    #dbg_value(i64 66, !56539, !DIExpression(), !57622)
    #dbg_value(i64 66, !56017, !DIExpression(), !57623)
    #dbg_value(i64 66, !56047, !DIExpression(), !56515)
    #dbg_value(i64 1, !56018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57623)
    #dbg_value(i64 1, !56048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !56515)
    #dbg_value(i64 1, !56018, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57623)
    #dbg_value(i64 1, !56048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !56515)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !dbg !58729
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ck, i64 noundef 66, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ps unwind label %bb.x, !dbg !58729

bb.mg:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6361.sroa.7.sroa.8), !dbg !55396
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20), !dbg !55396
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27.sroa.20.sroa.20), !dbg !55396
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57624), !dbg !58730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !58731
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5123.i.sroa.0), !dbg !58731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !58731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !58731
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.590.i.sroa.0), !dbg !58731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !58731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !58731
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.554.i.sroa.0), !dbg !58731
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !58731
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.532.i.sroa.0), !dbg !58731
    #dbg_value(ptr %1, !55126, !DIExpression(), !54624)
    #dbg_declare(ptr %i.ap, !55128, !DIExpression(), !54625)
    #dbg_declare(ptr %i.ao, !55229, !DIExpression(), !54626)
    #dbg_declare(ptr %i.an, !55131, !DIExpression(), !54627)
    #dbg_declare(ptr %i.am, !55249, !DIExpression(), !54628)
    #dbg_declare(ptr %i.ak, !55206, !DIExpression(), !54629)
    #dbg_declare(ptr %i.aj, !55140, !DIExpression(), !54630)
    #dbg_declare(ptr %i.ae, !55206, !DIExpression(), !54631)
    #dbg_declare(ptr %i.ad, !55153, !DIExpression(), !54632)
    #dbg_declare(ptr %i.z, !55160, !DIExpression(), !54633)
    #dbg_declare(ptr %i.y, !55239, !DIExpression(), !54634)
    #dbg_declare(ptr %i.t, !55206, !DIExpression(), !54635)
    #dbg_declare(ptr %i.s, !55173, !DIExpression(), !54636)
    #dbg_declare(ptr %i.o, !55180, !DIExpression(), !54637)
    #dbg_declare(ptr %i.n, !55229, !DIExpression(), !54638)
    #dbg_declare(ptr %i.i, !55206, !DIExpression(), !54639)
    #dbg_declare(ptr %i.h, !55193, !DIExpression(), !54640)
    #dbg_value(i64 72, !57625, !DIExpression(), !54649)
    #dbg_declare(ptr poison, !57634, !DIExpression(), !54658)
    #dbg_declare(ptr poison, !57634, !DIExpression(), !54660)
    #dbg_declare(ptr poison, !57646, !DIExpression(), !54676)
    #dbg_declare(ptr poison, !57662, !DIExpression(), !54681)
    #dbg_declare(ptr poison, !57667, !DIExpression(), !54684)
    #dbg_declare(ptr poison, !57670, !DIExpression(), !54687)
    #dbg_value(i64 1, !57625, !DIExpression(), !54695)
    #dbg_declare(ptr poison, !57682, !DIExpression(), !54700)
    #dbg_value(i64 0, !57688, !DIExpression(), !54703)
    #dbg_value(i64 1, !57625, !DIExpression(), !54705)
  %i.agg = getelementptr inbounds nuw i8, ptr %1, i64 400, !dbg !58732 ; 8 uses
    #dbg_value(ptr %i.agg, !4145, !DIExpression(), !54707)
  %i.agh = getelementptr inbounds nuw i8, ptr %1, i64 416, !dbg !58733
  %i.agi = getelementptr inbounds nuw i8, ptr %1, i64 432, !dbg !58734
  %i.agj = load <4 x i64>, ptr %i.agh, align 8, !dbg !58733, !alias.scope !57693, !noalias !57694 ; 3 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %1, i64 408, !dbg !58735
  %i.agl = load <2 x i64>, ptr %i.agg, align 8, !dbg !58735, !alias.scope !57693, !noalias !57694
  %.val.i1570 = load i64, ptr %i.agg, align 8, !dbg !58735, !alias.scope !57695, !noalias !57694, !noundef !1314
    #dbg_value(i64 poison, !55127, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57696)
    #dbg_value(i64 poison, !55127, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57696)
    #dbg_value(i64 poison, !55127, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57696)
    #dbg_value(i64 poison, !55127, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57696)
    #dbg_value(i64 %.val.i1570, !55127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57696)
    #dbg_value(i64 poison, !55127, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57696)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !58736, !noalias !57697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !58737, !noalias !57697
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser27parse_dotted_component_name(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1)
          to label %.noexc1508 unwind label %bb.x, !dbg !58738, !inline_history !54714

.noexc1508:                                       ; preds = %bb.mg
  %i.agm = load i8, ptr %i.ao, align 8, !dbg !58739, !range !3289, !noalias !57697, !noundef !1314 ; 2 uses
  %.not.i1503 = icmp eq i8 %i.agm, -1, !dbg !58739
  br i1 %.not.i1503, label %bb.mh, label %.thread2823, !dbg !58740

.thread2823:                                      ; preds = %.noexc1508
    #dbg_value(i8 %i.agm, !55231, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54715)
  %.sroa.4137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 1, !dbg !58741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4137.0..sroa_idx.i, i64 7, i1 false), !dbg !58741, !noalias !57624
  %.sroa.4137.i.sroa.4.0..sroa.4137.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !58741
    #dbg_value(i64 poison, !55231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57698)
  %i.agn = load <2 x i64>, ptr %.sroa.4137.i.sroa.4.0..sroa.4137.0..sroa_idx.i.sroa_idx, align 8, !dbg !58741, !noalias !57697
    #dbg_value(i64 poison, !55231, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57698)
  %.sroa.4137.i.sroa.5.sroa.4.0..sroa.4137.i.sroa.5.0..sroa.4137.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24, !dbg !58741
  %.sroa.4137.i.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.4137.i.sroa.5.sroa.4.0..sroa.4137.i.sroa.5.0..sroa.4137.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !dbg !58741, !noalias !57697
    #dbg_value(i64 %.sroa.4137.i.sroa.5.sroa.4.0.copyload, !55231, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57698)
  %.sroa.5138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32, !dbg !58741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.27.sroa.20.sroa.20, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5138.0..sroa_idx.i, i64 40, i1 false), !dbg !58741, !noalias !57624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !58742, !noalias !57697
    #dbg_value(i8 %i.agm, !55129, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54716)
    #dbg_value(i8 %i.agm, !55111, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54717)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57699)
    #dbg_value(i64 poison, !55129, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57700)
    #dbg_value(i64 poison, !55129, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57700)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57699)
    #dbg_value(i64 %.sroa.4137.i.sroa.5.sroa.4.0.copyload, !55129, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57700)
    #dbg_value(i64 %.sroa.4137.i.sroa.5.sroa.4.0.copyload, !55111, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57699)
    #dbg_value(i8 %i.agm, !55112, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54718)
    #dbg_value(i64 poison, !55112, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57701)
    #dbg_value(i64 poison, !55112, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57701)
    #dbg_value(i64 %.sroa.4137.i.sroa.5.sroa.4.0.copyload, !55112, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57701)
    #dbg_value(i8 %i.agm, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.4137.i.sroa.5.sroa.4.0.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
    #dbg_value(i8 %i.agm, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !58743, !noalias !57697
    #dbg_value(i8 %i.agm, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5123.i.sroa.0), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.590.i.sroa.0), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.554.i.sroa.0), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.532.i.sroa.0), !dbg !58744
  br label %bb.pp, !dbg !58745

bb.mh:                                            ; preds = %.noexc1508
  %i.ago = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !58746
  %.sroa.42538.sroa.4.0..sroa.42538.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24, !dbg !58746
  %.sroa.42538.sroa.4.0.copyload = load i64, ptr %.sroa.42538.sroa.4.0..sroa.42538.0..sroa_idx.sroa_idx, align 8, !dbg !58746, !noalias !57697
    #dbg_value(i64 poison, !55130, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57703)
    #dbg_value(i64 poison, !55130, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57703)
    #dbg_value(i64 %.sroa.42538.sroa.4.0.copyload, !55130, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57703)
  %.sroa.42536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8, !dbg !58747 ; 2 uses
  %i.agp = load <2 x i64>, ptr %i.ago, align 8, !dbg !58746, !noalias !57697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !58742, !noalias !57697
  store <2 x i64> %i.agp, ptr %i.ap, align 16, !dbg !58747, !noalias !57697
  %.sroa.42536.sroa.4.0..sroa.42536.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16, !dbg !58747
  store i64 %.sroa.42538.sroa.4.0.copyload, ptr %.sroa.42536.sroa.4.0..sroa.42536.0..sroa_idx.sroa_idx, align 16, !dbg !58747, !noalias !57697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !58748, !noalias !57697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !58749, !noalias !57697
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser26parse_component_attributes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1)
          to label %bb.mk unwind label %bb.mj, !dbg !58750, !noalias !57704, !inline_history !54714

bb.mi:                                            ; preds = %.split, %bb.ns, %bb.pn, %bb.mj
  %.pn334.i = phi { ptr, i32 } [ %i.agq, %bb.mj ], [ %.pn332.i.ph, %bb.pn ], [ %.pn.i1505, %bb.ns ], [ %lpad.thr_comm.split-lp, %.split ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap) #25
          to label %.body1492 unwind label %bb.mx, !dbg !58743, !noalias !57704, !inline_history !54714

bb.mj:                                            ; preds = %bb.pj, %bb.mh
  %i.agq = landingpad { ptr, i32 }
          cleanup
  br label %bb.mi

bb.mk:                                            ; preds = %bb.mh
  %i.agr = load i8, ptr %i.am, align 8, !dbg !58751, !range !3289, !noalias !57697, !noundef !1314 ; 2 uses
  %.not323.i = icmp eq i8 %i.agr, -1, !dbg !58751
  br i1 %.not323.i, label %bb.mm, label %bb.ml, !dbg !58752

bb.ml:                                            ; preds = %bb.mk
    #dbg_value(i8 %i.agr, !55248, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54719)
  %.sroa.4146.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 1, !dbg !58753
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4146.0..sroa_idx.i, i64 7, i1 false), !dbg !58753, !noalias !57624
  %.sroa.4146.i.sroa.4.0..sroa.4146.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !58753
    #dbg_value(i64 poison, !55248, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57705)
  %i.ags = load <2 x i64>, ptr %.sroa.4146.i.sroa.4.0..sroa.4146.0..sroa_idx.i.sroa_idx, align 8, !dbg !58753, !noalias !57697
    #dbg_value(i64 poison, !55248, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57705)
  %.sroa.4146.i.sroa.5.sroa.4.0..sroa.4146.i.sroa.5.0..sroa.4146.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !58753
  %.sroa.4146.i.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.4146.i.sroa.5.sroa.4.0..sroa.4146.i.sroa.5.0..sroa.4146.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !dbg !58753, !noalias !57697
    #dbg_value(i64 %.sroa.4146.i.sroa.5.sroa.4.0.copyload, !55248, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57705)
  %.sroa.5147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 32, !dbg !58753
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.27.sroa.20.sroa.20, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5147.0..sroa_idx.i, i64 40, i1 false), !dbg !58753, !noalias !57624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !58754, !noalias !57697
    #dbg_value(i8 %i.agr, !55132, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54720)
    #dbg_value(i8 %i.agr, !55111, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54721)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57706)
    #dbg_value(i64 poison, !55132, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57707)
    #dbg_value(i64 poison, !55132, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57707)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57706)
    #dbg_value(i64 %.sroa.4146.i.sroa.5.sroa.4.0.copyload, !55132, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57707)
    #dbg_value(i64 %.sroa.4146.i.sroa.5.sroa.4.0.copyload, !55111, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57706)
    #dbg_value(i8 %i.agr, !55113, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54722)
    #dbg_value(i64 poison, !55113, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57708)
    #dbg_value(i64 poison, !55113, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57708)
    #dbg_value(i64 %.sroa.4146.i.sroa.5.sroa.4.0.copyload, !55113, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57708)
    #dbg_value(i8 %i.agr, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.4146.i.sroa.5.sroa.4.0.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
  br label %bb.pk, !dbg !58755

bb.mm:                                            ; preds = %bb.mk
  %i.agt = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !58756
  %.sroa.42544.sroa.4.0..sroa.42544.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !58756
  %.sroa.42544.sroa.4.0.copyload = load i64, ptr %.sroa.42544.sroa.4.0..sroa.42544.0..sroa_idx.sroa_idx, align 8, !dbg !58756, !noalias !57697
    #dbg_value(i64 poison, !55133, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57710)
    #dbg_value(i64 poison, !55133, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57710)
    #dbg_value(i64 %.sroa.42544.sroa.4.0.copyload, !55133, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57710)
  %i.agu = load <2 x i64>, ptr %i.agt, align 8, !dbg !58756, !noalias !57697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !58754, !noalias !57697
  store <2 x i64> %i.agu, ptr %i.an, align 16, !dbg !58757, !noalias !57697
  %.sroa.42542.sroa.4.0..sroa.42542.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !58757
  store i64 %.sroa.42544.sroa.4.0.copyload, ptr %.sroa.42542.sroa.4.0..sroa.42542.0..sroa_idx.sroa_idx, align 16, !dbg !58757, !noalias !57697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !58758, !noalias !57697
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.618.i.sroa.8), !dbg !58758
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.618.i.sroa.10.sroa.8), !dbg !58758
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.sroa.9), !dbg !58759
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.sroa.11.sroa.8.sroa.8), !dbg !58759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !58760, !noalias !57697
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser13next_or_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1)
          to label %bb.mo unwind label %bb.mn, !dbg !58761, !noalias !57704, !inline_history !54714

bb.mn:                                            ; preds = %bb.nj, %bb.pg, %bb.nk, %bb.nf, %bb.nd, %bb.my, %bb.mu, %bb.ms, %bb.mm
  %i.agv = landingpad { ptr, i32 }
          cleanup
  br label %bb.pn

bb.mo:                                            ; preds = %bb.mm
  %i.agw = load i8, ptr %i.ak, align 8, !dbg !58762, !range !3290, !noalias !57697, !noundef !1314 ; 3 uses
  %i.agx = icmp eq i8 %i.agw, -1, !dbg !58762
  br i1 %i.agx, label %bb.mp, label %bb.mq, !dbg !58763

bb.mp:                                            ; preds = %bb.mo
  %i.agy = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !58764
  %.sroa.02559.0.copyload = load i8, ptr %i.agy, align 8, !dbg !58764, !noalias !57697
    #dbg_value(i8 %.sroa.02559.0.copyload, !55208, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57711)
  %.sroa.42560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 9, !dbg !58764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.727.i.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.42560.0..sroa_idx, i64 7, i1 false), !dbg !58764
  %.sroa.52561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !58764
    #dbg_value(i64 poison, !55208, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57711)
  %i.agz = load <2 x i64>, ptr %.sroa.52561.0..sroa_idx, align 8, !dbg !58764, !noalias !57697
    #dbg_value(i64 poison, !55208, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57711)
  %.sroa.62562.sroa.4.0..sroa.62562.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32, !dbg !58764
  %.sroa.62562.sroa.4.sroa.0.0.copyload = load i64, ptr %.sroa.62562.sroa.4.0..sroa.62562.0..sroa_idx.sroa_idx, align 8, !dbg !58764, !noalias !57697
    #dbg_value(i64 %.sroa.62562.sroa.4.sroa.0.0.copyload, !55208, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57711)
  %.sroa.62562.sroa.4.sroa.4.0..sroa.62562.sroa.4.0..sroa.62562.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40, !dbg !58764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.727.i.sroa.10.sroa.8.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.62562.sroa.4.sroa.4.0..sroa.62562.sroa.4.0..sroa.62562.0..sroa_idx.sroa_idx.sroa_idx, i64 40, i1 false), !dbg !58764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !58765, !noalias !57697
    #dbg_value(i8 %.sroa.02559.0.copyload, !55134, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57712)
    #dbg_value(i8 %.sroa.02559.0.copyload, !55111, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57713)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.727.i.sroa.8, i64 7, i1 false), !dbg !58765
    #dbg_value(i64 poison, !55134, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57712)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57713)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57713)
    #dbg_value(i64 poison, !55134, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57712)
    #dbg_value(i64 %.sroa.62562.sroa.4.sroa.0.0.copyload, !55134, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57712)
    #dbg_value(i64 %.sroa.62562.sroa.4.sroa.0.0.copyload, !55111, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57713)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.27.sroa.20.sroa.20, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.727.i.sroa.10.sroa.8.sroa.8, i64 40, i1 false), !dbg !58765
    #dbg_value(i8 %.sroa.02559.0.copyload, !55114, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57714)
    #dbg_value(i64 poison, !55114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57714)
    #dbg_value(i64 poison, !55114, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57714)
    #dbg_value(i64 %.sroa.62562.sroa.4.sroa.0.0.copyload, !55114, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57714)
    #dbg_value(i8 %.sroa.02559.0.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.62562.sroa.4.sroa.0.0.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.sroa.9), !dbg !58766
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.sroa.11.sroa.8.sroa.8), !dbg !58766
  br label %bb.mw, !dbg !58767

bb.mq:                                            ; preds = %bb.mo
    #dbg_value(i8 %i.agw, !55207, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54723)
  %.sroa.4152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 1, !dbg !58768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.532.i.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4152.0..sroa_idx.i, i64 7, i1 false), !dbg !58768, !noalias !57697
  %.sroa.4152.i.sroa.4.0..sroa.4152.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !58768
  %.sroa.4152.i.sroa.4.0.copyload = load i8, ptr %.sroa.4152.i.sroa.4.0..sroa.4152.0..sroa_idx.i.sroa_idx, align 8, !dbg !58768, !noalias !57697 ; 2 uses
    #dbg_value(i8 %.sroa.4152.i.sroa.4.0.copyload, !55207, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57716)
  %.sroa.4152.i.sroa.5.0..sroa.4152.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 9, !dbg !58768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.727.i.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4152.i.sroa.5.0..sroa.4152.0..sroa_idx.i.sroa_idx, i64 7, i1 false), !dbg !58768
  %.sroa.4152.i.sroa.6.0..sroa.4152.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16, !dbg !58768 ; 2 uses
    #dbg_value(i64 poison, !55207, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57716)
  %.sroa.4152.i.sroa.7.0..sroa.4152.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24, !dbg !58768
    #dbg_value(i64 poison, !55207, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57716)
  %i.aha = load <2 x i64>, ptr %.sroa.4152.i.sroa.7.0..sroa.4152.0..sroa_idx.i.sroa_idx, align 8, !dbg !58768, !noalias !57697
  %i.ahb = load <2 x i64>, ptr %.sroa.4152.i.sroa.6.0..sroa.4152.0..sroa_idx.i.sroa_idx, align 8, !dbg !58768, !noalias !57697
  %.sroa.4152.i.sroa.6.0.copyload = load i64, ptr %.sroa.4152.i.sroa.6.0..sroa.4152.0..sroa_idx.i.sroa_idx, align 8, !dbg !58768, !noalias !57697
    #dbg_value(i64 poison, !55207, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57716)
    #dbg_value(i64 poison, !55207, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57716)
  %.sroa.4152.i.sroa.7.sroa.4.sroa.4.0..sroa.4152.i.sroa.7.sroa.4.0..sroa.4152.i.sroa.7.0..sroa.4152.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 40, !dbg !58768
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.727.i.sroa.10.sroa.8.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4152.i.sroa.7.sroa.4.sroa.4.0..sroa.4152.i.sroa.7.sroa.4.0..sroa.4152.i.sroa.7.0..sroa.4152.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx, i64 40, i1 false), !dbg !58768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !58765, !noalias !57697
    #dbg_value(ptr poison, !55137, !DIExpression(), !54724)
    #dbg_value(ptr poison, !55139, !DIExpression(), !54725)
  %i.ahc = icmp eq i8 %i.agw, 22, !dbg !58769
  br i1 %i.ahc, label %bb.ms, label %bb.mr, !dbg !58769

bb.mr:                                            ; preds = %bb.mq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !58770, !noalias !57697
  store i8 %i.agw, ptr %i.aj, align 8, !dbg !58770, !noalias !57697
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 1, !dbg !58770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.532.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.532.i.sroa.0, i64 7, i1 false), !dbg !58770, !noalias !57697
  %.sroa.532.i.sroa.5.0..sroa.532.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !58770
  store i8 %.sroa.4152.i.sroa.4.0.copyload, ptr %.sroa.532.i.sroa.5.0..sroa.532.0..sroa_idx.i.sroa_idx, align 8, !dbg !58770, !noalias !57697
  %.sroa.532.i.sroa.6.0..sroa.532.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 9, !dbg !58770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.532.i.sroa.6.0..sroa.532.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.727.i.sroa.8, i64 7, i1 false), !dbg !58770
  %.sroa.532.i.sroa.7.0..sroa.532.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !58770
  store <2 x i64> %i.ahb, ptr %.sroa.532.i.sroa.7.0..sroa.532.0..sroa_idx.i.sroa_idx, align 8, !dbg !58770, !noalias !57697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !58771, !noalias !57697
    #dbg_value(ptr %i.aj, !55142, !DIExpression(), !54726)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !58772, !noalias !57697
  store ptr %i.aj, ptr %i.ag, align 8, !dbg !58772, !noalias !57697
  %.sroa.4156.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !58772
  store ptr @_RNvXs_NtNtCs5yXxDE1DkoT_4tera7parsing5lexerNtB4_5TokenNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4156.0..sroa_idx.i, align 8, !dbg !58772, !noalias !57697
    #dbg_value(ptr @114, !57717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57719)
    #dbg_value(ptr %i.ag, !57717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57719)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54730)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54730)
    #dbg_value(ptr poison, !3324, !DIExpression(), !54730)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !54731)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !54733)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noundef nonnull @114, ptr noundef nonnull %i.ag)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1569 unwind label %bb.mt, !dbg !58773

bb.ms:                                            ; preds = %bb.mq
    #dbg_value(i8 %i.agw, !55136, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54734)
    #dbg_value(i8 %i.agw, !55206, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54735)
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 1, !dbg !58774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.436.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.532.i.sroa.0, i64 7, i1 false), !dbg !58775, !noalias !57697
    #dbg_value(i8 %.sroa.4152.i.sroa.4.0.copyload, !55206, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57721)
    #dbg_value(i64 poison, !55206, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57721)
    #dbg_value(i64 poison, !55206, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57721)
    #dbg_value(i64 poison, !55206, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57721)
    #dbg_value(i8 %i.agw, !55209, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54736)
    #dbg_value(i8 %.sroa.4152.i.sroa.4.0.copyload, !55209, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57722)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.618.i.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.727.i.sroa.8, i64 7, i1 false), !dbg !58776
    #dbg_value(i64 poison, !55209, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57722)
    #dbg_value(i64 poison, !55209, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57722)
    #dbg_value(i64 poison, !55209, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57722)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.618.i.sroa.10.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.727.i.sroa.10.sroa.8.sroa.8, i64 40, i1 false), !dbg !58776
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.sroa.9), !dbg !58766
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.sroa.11.sroa.8.sroa.8), !dbg !58766
    #dbg_value(i8 %i.agw, !55146, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54737)
    #dbg_value(i8 %.sroa.4152.i.sroa.4.0.copyload, !55146, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57723)
  %.sroa.436.i.sroa.5.0..sroa.436.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 9, !dbg !58774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.436.i.sroa.5.0..sroa.436.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.727.i.sroa.8, i64 7, i1 false), !dbg !58758
    #dbg_value(i64 poison, !55146, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57723)
    #dbg_value(i64 poison, !55146, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57723)
    #dbg_value(i64 poison, !55146, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57723)
  %.sroa.436.i.sroa.7.sroa.5.0..sroa.436.i.sroa.7.0..sroa.436.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 40, !dbg !58774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.436.i.sroa.7.sroa.5.0..sroa.436.i.sroa.7.0..sroa.436.0..sroa_idx.i.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.727.i.sroa.10.sroa.8.sroa.8, i64 40, i1 false), !dbg !58758
  store i8 22, ptr %i.al, align 8, !dbg !58774, !noalias !57697
  %.sroa.436.i.sroa.4.0..sroa.436.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !58774
  store i8 %.sroa.4152.i.sroa.4.0.copyload, ptr %.sroa.436.i.sroa.4.0..sroa.436.0..sroa_idx.i.sroa_idx, align 8, !dbg !58774, !noalias !57697
  %.sroa.436.i.sroa.6.0..sroa.436.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16, !dbg !58774
  store i64 %.sroa.4152.i.sroa.6.0.copyload, ptr %.sroa.436.i.sroa.6.0..sroa.436.0..sroa_idx.i.sroa_idx, align 8, !dbg !58774, !noalias !57697
  %.sroa.436.i.sroa.7.0..sroa.436.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24, !dbg !58774
  store <2 x i64> %i.aha, ptr %.sroa.436.i.sroa.7.0..sroa.436.0..sroa_idx.i.sroa_idx, align 8, !dbg !58774, !noalias !57697
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.al)
          to label %bb.my unwind label %bb.mn, !dbg !58777, !noalias !57704, !inline_history !54714

bb.mt:                                            ; preds = %bb.mr, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1569
  %i.ahd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aj) #25
          to label %bb.pn unwind label %bb.mx, !dbg !58778, !noalias !57704, !inline_history !54714

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1569: ; preds = %bb.mr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !58779, !noalias !57697
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ai, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.agg)
          to label %bb.mu unwind label %bb.mt, !dbg !58771, !noalias !57704, !inline_history !54714

bb.mu:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1569
  %.sroa.7.i.sroa.6.7.copyload = load i8, ptr %i.ai, align 8, !dbg !58780, !noalias !57697
    #dbg_value(i8 %.sroa.7.i.sroa.6.7.copyload, !55206, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57721)
  %.sroa.7.i.sroa.9.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 1, !dbg !58780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.sroa.9.7..sroa_idx, i64 7, i1 false), !dbg !58780, !noalias !57697
  %.sroa.7.i.sroa.10.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !58780
    #dbg_value(i64 poison, !55206, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57721)
  %i.ahe = load <2 x i64>, ptr %.sroa.7.i.sroa.10.7..sroa_idx, align 8, !dbg !58780, !noalias !57697
    #dbg_value(i64 poison, !55206, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57721)
  %.sroa.7.i.sroa.11.sroa.8.0..sroa.7.i.sroa.11.7..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24, !dbg !58780
  %.sroa.7.i.sroa.11.sroa.8.sroa.0.0.copyload = load i64, ptr %.sroa.7.i.sroa.11.sroa.8.0..sroa.7.i.sroa.11.7..sroa_idx.sroa_idx, align 8, !dbg !58780, !noalias !57697
    #dbg_value(i64 %.sroa.7.i.sroa.11.sroa.8.sroa.0.0.copyload, !55206, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57721)
  %.sroa.7.i.sroa.11.sroa.8.sroa.8.0..sroa.7.i.sroa.11.sroa.8.0..sroa.7.i.sroa.11.7..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 32, !dbg !58780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %.sroa.7.i.sroa.11.sroa.8.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i.sroa.11.sroa.8.sroa.8.0..sroa.7.i.sroa.11.sroa.8.0..sroa.7.i.sroa.11.7..sroa_idx.sroa_idx.sroa_idx, i64 40, i1 false), !dbg !58780, !noalias !57697
    #dbg_value(i8 -1, !55206, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54735)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !58781, !noalias !57697
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aj)
          to label %bb.mv unwind label %bb.mn, !dbg !58778, !noalias !57704, !inline_history !54714

bb.mv:                                            ; preds = %bb.mu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !58778, !noalias !57697
    #dbg_value(i8 %.sroa.7.i.sroa.6.7.copyload, !55210, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57724)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.618.i.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.i.sroa.9, i64 7, i1 false), !dbg !58782, !noalias !57697
    #dbg_value(i64 poison, !55210, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57724)
    #dbg_value(i64 poison, !55210, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57724)
    #dbg_value(i64 %.sroa.7.i.sroa.11.sroa.8.sroa.0.0.copyload, !55210, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57724)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.618.i.sroa.10.sroa.8, ptr noundef nonnull align 1 dereferenceable(40) %.sroa.7.i.sroa.11.sroa.8.sroa.8, i64 40, i1 false), !dbg !58782, !noalias !57697
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.sroa.9), !dbg !58766
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.sroa.11.sroa.8.sroa.8), !dbg !58766
    #dbg_value(i8 %.sroa.7.i.sroa.6.7.copyload, !55145, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57725)
    #dbg_value(i8 %.sroa.7.i.sroa.6.7.copyload, !55111, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57726)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.618.i.sroa.8, i64 7, i1 false), !dbg !58766, !noalias !57624
    #dbg_value(i64 poison, !55145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57725)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57726)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57726)
    #dbg_value(i64 poison, !55145, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57725)
    #dbg_value(i64 %.sroa.7.i.sroa.11.sroa.8.sroa.0.0.copyload, !55111, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57726)
    #dbg_value(i64 %.sroa.7.i.sroa.11.sroa.8.sroa.0.0.copyload, !55145, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57725)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.27.sroa.20.sroa.20, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.618.i.sroa.10.sroa.8, i64 40, i1 false), !dbg !58766, !noalias !57624
    #dbg_value(i8 %.sroa.7.i.sroa.6.7.copyload, !55115, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57727)
    #dbg_value(i64 poison, !55115, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57727)
    #dbg_value(i64 poison, !55115, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57727)
    #dbg_value(i64 %.sroa.7.i.sroa.11.sroa.8.sroa.0.0.copyload, !55115, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57727)
    #dbg_value(i8 %.sroa.7.i.sroa.6.7.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.7.i.sroa.11.sroa.8.sroa.0.0.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
  br label %bb.mw, !dbg !58777

bb.mw:                                            ; preds = %bb.mv, %bb.mp
  %.sroa.27.sroa.20.sroa.0.0 = phi i64 [ %.sroa.62562.sroa.4.sroa.0.0.copyload, %bb.mp ], [ %.sroa.7.i.sroa.11.sroa.8.sroa.0.0.copyload, %bb.mv ], !dbg !58783
  %.sroa.01853.2 = phi i8 [ %.sroa.02559.0.copyload, %bb.mp ], [ %.sroa.7.i.sroa.6.7.copyload, %bb.mv ], !dbg !58783
  %i.ahf = phi <2 x i64> [ %i.agz, %bb.mp ], [ %i.ahe, %bb.mv ], !dbg !58783
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.27.sroa.20.sroa.0.0, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
    #dbg_value(i8 %.sroa.01853.2, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618.i.sroa.8), !dbg !58777
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618.i.sroa.10.sroa.8), !dbg !58777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !58777, !noalias !57697
  br label %bb.pj, !dbg !58767

bb.mx:                                            ; preds = %bb.pn, %.thread2814, %bb.oq, %bb.oj, %bb.ny, %bb.ne, %bb.mt, %bb.mi
  %i.ahg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !58784, !noalias !57704, !inline_history !54714
  unreachable, !dbg !58784

bb.my:                                            ; preds = %bb.ms
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618.i.sroa.8), !dbg !58777
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618.i.sroa.10.sroa.8), !dbg !58777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !dbg !58777, !noalias !57697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !58785, !noalias !57697
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.639.i.sroa.8), !dbg !58785
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.639.i.sroa.10.sroa.8), !dbg !58785
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.744.i.sroa.9), !dbg !58759
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.744.i.sroa.11.sroa.8.sroa.8), !dbg !58759
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !58760, !noalias !57697
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser13next_or_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1)
          to label %bb.mz unwind label %bb.mn, !dbg !58761, !noalias !57704, !inline_history !54714

bb.mz:                                            ; preds = %bb.my
  %i.ahh = load i8, ptr %i.ae, align 8, !dbg !58786, !range !3290, !noalias !57697, !noundef !1314 ; 3 uses
  %i.ahi = icmp eq i8 %i.ahh, -1, !dbg !58786
  br i1 %i.ahi, label %bb.na, label %bb.nb, !dbg !58787

bb.na:                                            ; preds = %bb.mz
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !58788
  %.sroa.02605.0.copyload = load i8, ptr %i.ahj, align 8, !dbg !58788, !noalias !57697
    #dbg_value(i8 %.sroa.02605.0.copyload, !55212, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57729)
  %.sroa.42606.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 9, !dbg !58788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.749.i.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.42606.0..sroa_idx, i64 7, i1 false), !dbg !58788
  %.sroa.52607.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !58788
    #dbg_value(i64 poison, !55212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57729)
  %i.ahk = load <2 x i64>, ptr %.sroa.52607.0..sroa_idx, align 8, !dbg !58788, !noalias !57697
    #dbg_value(i64 poison, !55212, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57729)
  %.sroa.62608.sroa.4.0..sroa.62608.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 32, !dbg !58788
  %.sroa.62608.sroa.4.sroa.0.0.copyload = load i64, ptr %.sroa.62608.sroa.4.0..sroa.62608.0..sroa_idx.sroa_idx, align 8, !dbg !58788, !noalias !57697
    #dbg_value(i64 %.sroa.62608.sroa.4.sroa.0.0.copyload, !55212, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57729)
  %.sroa.62608.sroa.4.sroa.4.0..sroa.62608.sroa.4.0..sroa.62608.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40, !dbg !58788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.749.i.sroa.10.sroa.8.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.62608.sroa.4.sroa.4.0..sroa.62608.sroa.4.0..sroa.62608.0..sroa_idx.sroa_idx.sroa_idx, i64 40, i1 false), !dbg !58788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !58765, !noalias !57697
    #dbg_value(i8 %.sroa.02605.0.copyload, !55147, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57730)
    #dbg_value(i8 %.sroa.02605.0.copyload, !55111, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57731)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.749.i.sroa.8, i64 7, i1 false), !dbg !58765
    #dbg_value(i64 poison, !55147, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57730)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57731)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57731)
    #dbg_value(i64 poison, !55147, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57730)
    #dbg_value(i64 %.sroa.62608.sroa.4.sroa.0.0.copyload, !55147, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57730)
    #dbg_value(i64 %.sroa.62608.sroa.4.sroa.0.0.copyload, !55111, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57731)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.27.sroa.20.sroa.20, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.749.i.sroa.10.sroa.8.sroa.8, i64 40, i1 false), !dbg !58765
    #dbg_value(i8 %.sroa.02605.0.copyload, !55116, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57732)
    #dbg_value(i64 poison, !55116, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57732)
    #dbg_value(i64 poison, !55116, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57732)
    #dbg_value(i64 %.sroa.62608.sroa.4.sroa.0.0.copyload, !55116, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57732)
    #dbg_value(i8 %.sroa.02605.0.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.62608.sroa.4.sroa.0.0.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.744.i.sroa.9), !dbg !58789
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.744.i.sroa.11.sroa.8.sroa.8), !dbg !58789
  br label %bb.nh, !dbg !58767

bb.nb:                                            ; preds = %bb.mz
    #dbg_value(i8 %i.ahh, !55211, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54738)
  %.sroa.4162.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 1, !dbg !58790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.554.i.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4162.0..sroa_idx.i, i64 7, i1 false), !dbg !58790, !noalias !57697
  %.sroa.4162.i.sroa.4.0..sroa.4162.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !58790
  %.sroa.4162.i.sroa.4.0.copyload = load i8, ptr %.sroa.4162.i.sroa.4.0..sroa.4162.0..sroa_idx.i.sroa_idx, align 8, !dbg !58790, !noalias !57697 ; 2 uses
    #dbg_value(i8 %.sroa.4162.i.sroa.4.0.copyload, !55211, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57733)
  %.sroa.4162.i.sroa.5.0..sroa.4162.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 9, !dbg !58790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.749.i.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4162.i.sroa.5.0..sroa.4162.0..sroa_idx.i.sroa_idx, i64 7, i1 false), !dbg !58790
  %.sroa.4162.i.sroa.6.0..sroa.4162.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16, !dbg !58790 ; 2 uses
    #dbg_value(i64 poison, !55211, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57733)
  %.sroa.4162.i.sroa.7.0..sroa.4162.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24, !dbg !58790
    #dbg_value(i64 poison, !55211, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57733)
  %i.ahl = load <2 x i64>, ptr %.sroa.4162.i.sroa.7.0..sroa.4162.0..sroa_idx.i.sroa_idx, align 8, !dbg !58790, !noalias !57697
  %i.ahm = load <2 x i64>, ptr %.sroa.4162.i.sroa.6.0..sroa.4162.0..sroa_idx.i.sroa_idx, align 8, !dbg !58790, !noalias !57697
  %.sroa.4162.i.sroa.6.0.copyload = load i64, ptr %.sroa.4162.i.sroa.6.0..sroa.4162.0..sroa_idx.i.sroa_idx, align 8, !dbg !58790, !noalias !57697
    #dbg_value(i64 poison, !55211, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57733)
    #dbg_value(i64 poison, !55211, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57733)
  %.sroa.4162.i.sroa.7.sroa.4.sroa.4.0..sroa.4162.i.sroa.7.sroa.4.0..sroa.4162.i.sroa.7.0..sroa.4162.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 40, !dbg !58790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.749.i.sroa.10.sroa.8.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4162.i.sroa.7.sroa.4.sroa.4.0..sroa.4162.i.sroa.7.sroa.4.0..sroa.4162.i.sroa.7.0..sroa.4162.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx, i64 40, i1 false), !dbg !58790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !58765, !noalias !57697
    #dbg_value(ptr poison, !55150, !DIExpression(), !54739)
    #dbg_value(ptr poison, !55152, !DIExpression(), !54740)
  %i.ahn = icmp eq i8 %i.ahh, 5, !dbg !58769
  br i1 %i.ahn, label %bb.nd, label %bb.nc, !dbg !58769

bb.nc:                                            ; preds = %bb.nb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !58770, !noalias !57697
  store i8 %i.ahh, ptr %i.ad, align 8, !dbg !58770, !noalias !57697
  %.sroa.554.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 1, !dbg !58770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.554.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.554.i.sroa.0, i64 7, i1 false), !dbg !58770, !noalias !57697
  %.sroa.554.i.sroa.5.0..sroa.554.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !58770
  store i8 %.sroa.4162.i.sroa.4.0.copyload, ptr %.sroa.554.i.sroa.5.0..sroa.554.0..sroa_idx.i.sroa_idx, align 8, !dbg !58770, !noalias !57697
  %.sroa.554.i.sroa.6.0..sroa.554.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 9, !dbg !58770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.554.i.sroa.6.0..sroa.554.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.749.i.sroa.8, i64 7, i1 false), !dbg !58770
  %.sroa.554.i.sroa.7.0..sroa.554.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16, !dbg !58770
  store <2 x i64> %i.ahm, ptr %.sroa.554.i.sroa.7.0..sroa.554.0..sroa_idx.i.sroa_idx, align 8, !dbg !58770, !noalias !57697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !58791, !noalias !57697
    #dbg_value(ptr %i.ad, !55155, !DIExpression(), !54741)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !58792, !noalias !57697
  store ptr %i.ad, ptr %i.aa, align 8, !dbg !58792, !noalias !57697
  %.sroa.4166.0..sroa_idx.i1504 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !58792
  store ptr @_RNvXs_NtNtCs5yXxDE1DkoT_4tera7parsing5lexerNtB4_5TokenNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4166.0..sroa_idx.i1504, align 8, !dbg !58792, !noalias !57697
    #dbg_value(ptr @2, !57717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57734)
    #dbg_value(ptr %i.aa, !57717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57734)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54744)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54744)
    #dbg_value(ptr poison, !3324, !DIExpression(), !54744)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !54745)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !54747)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noundef nonnull @2, ptr noundef nonnull %i.aa)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1567 unwind label %bb.ne, !dbg !58793

bb.nd:                                            ; preds = %bb.nb
    #dbg_value(i8 %i.ahh, !55149, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54748)
    #dbg_value(i8 %i.ahh, !55206, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54749)
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 1, !dbg !58794
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.459.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.554.i.sroa.0, i64 7, i1 false), !dbg !58795, !noalias !57697
    #dbg_value(i8 %.sroa.4162.i.sroa.4.0.copyload, !55206, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57736)
    #dbg_value(i64 poison, !55206, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57736)
    #dbg_value(i64 poison, !55206, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57736)
    #dbg_value(i64 poison, !55206, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57736)
    #dbg_value(i8 %i.ahh, !55213, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54750)
    #dbg_value(i8 %.sroa.4162.i.sroa.4.0.copyload, !55213, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57737)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.639.i.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.749.i.sroa.8, i64 7, i1 false), !dbg !58796
    #dbg_value(i64 poison, !55213, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57737)
    #dbg_value(i64 poison, !55213, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57737)
    #dbg_value(i64 poison, !55213, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57737)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.639.i.sroa.10.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.749.i.sroa.10.sroa.8.sroa.8, i64 40, i1 false), !dbg !58796
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.744.i.sroa.9), !dbg !58789
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.744.i.sroa.11.sroa.8.sroa.8), !dbg !58789
    #dbg_value(i8 %i.ahh, !55159, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54751)
    #dbg_value(i8 %.sroa.4162.i.sroa.4.0.copyload, !55159, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57738)
  %.sroa.459.i.sroa.5.0..sroa.459.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 9, !dbg !58794
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.459.i.sroa.5.0..sroa.459.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.749.i.sroa.8, i64 7, i1 false), !dbg !58785
    #dbg_value(i64 poison, !55159, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57738)
    #dbg_value(i64 poison, !55159, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57738)
    #dbg_value(i64 poison, !55159, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57738)
  %.sroa.459.i.sroa.7.sroa.5.0..sroa.459.i.sroa.7.0..sroa.459.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 40, !dbg !58794
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.459.i.sroa.7.sroa.5.0..sroa.459.i.sroa.7.0..sroa.459.0..sroa_idx.i.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.749.i.sroa.10.sroa.8.sroa.8, i64 40, i1 false), !dbg !58785
  store i8 5, ptr %i.af, align 8, !dbg !58794, !noalias !57697
  %.sroa.459.i.sroa.4.0..sroa.459.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !58794
  store i8 %.sroa.4162.i.sroa.4.0.copyload, ptr %.sroa.459.i.sroa.4.0..sroa.459.0..sroa_idx.i.sroa_idx, align 8, !dbg !58794, !noalias !57697
  %.sroa.459.i.sroa.6.0..sroa.459.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !58794
  store i64 %.sroa.4162.i.sroa.6.0.copyload, ptr %.sroa.459.i.sroa.6.0..sroa.459.0..sroa_idx.i.sroa_idx, align 8, !dbg !58794, !noalias !57697
  %.sroa.459.i.sroa.7.0..sroa.459.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24, !dbg !58794
  store <2 x i64> %i.ahl, ptr %.sroa.459.i.sroa.7.0..sroa.459.0..sroa_idx.i.sroa_idx, align 8, !dbg !58794, !noalias !57697
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.af)
          to label %bb.ni unwind label %bb.mn, !dbg !58797, !noalias !57704, !inline_history !54714

bb.ne:                                            ; preds = %bb.nc, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1567
  %i.aho = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ad) #25
          to label %bb.pn unwind label %bb.mx, !dbg !58778, !noalias !57704, !inline_history !54714

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1567: ; preds = %bb.nc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !58798, !noalias !57697
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ac, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.agg)
          to label %bb.nf unwind label %bb.ne, !dbg !58791, !noalias !57704, !inline_history !54714

bb.nf:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1567
  %.sroa.744.i.sroa.6.7.copyload = load i8, ptr %i.ac, align 8, !dbg !58799, !noalias !57697
    #dbg_value(i8 %.sroa.744.i.sroa.6.7.copyload, !55206, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57736)
  %.sroa.744.i.sroa.9.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 1, !dbg !58799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.744.i.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.744.i.sroa.9.7..sroa_idx, i64 7, i1 false), !dbg !58799, !noalias !57697
  %.sroa.744.i.sroa.10.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8, !dbg !58799
    #dbg_value(i64 poison, !55206, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57736)
  %i.ahp = load <2 x i64>, ptr %.sroa.744.i.sroa.10.7..sroa_idx, align 8, !dbg !58799, !noalias !57697
    #dbg_value(i64 poison, !55206, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57736)
  %.sroa.744.i.sroa.11.sroa.8.0..sroa.744.i.sroa.11.7..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24, !dbg !58799
  %.sroa.744.i.sroa.11.sroa.8.sroa.0.0.copyload = load i64, ptr %.sroa.744.i.sroa.11.sroa.8.0..sroa.744.i.sroa.11.7..sroa_idx.sroa_idx, align 8, !dbg !58799, !noalias !57697
    #dbg_value(i64 %.sroa.744.i.sroa.11.sroa.8.sroa.0.0.copyload, !55206, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57736)
  %.sroa.744.i.sroa.11.sroa.8.sroa.8.0..sroa.744.i.sroa.11.sroa.8.0..sroa.744.i.sroa.11.7..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32, !dbg !58799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %.sroa.744.i.sroa.11.sroa.8.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.744.i.sroa.11.sroa.8.sroa.8.0..sroa.744.i.sroa.11.sroa.8.0..sroa.744.i.sroa.11.7..sroa_idx.sroa_idx.sroa_idx, i64 40, i1 false), !dbg !58799, !noalias !57697
    #dbg_value(i8 -1, !55206, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54749)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !58800, !noalias !57697
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ad)
          to label %bb.ng unwind label %bb.mn, !dbg !58778, !noalias !57704, !inline_history !54714

bb.ng:                                            ; preds = %bb.nf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !58778, !noalias !57697
    #dbg_value(i8 %.sroa.744.i.sroa.6.7.copyload, !55214, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57739)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.639.i.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.744.i.sroa.9, i64 7, i1 false), !dbg !58801, !noalias !57697
    #dbg_value(i64 poison, !55214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57739)
    #dbg_value(i64 poison, !55214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57739)
    #dbg_value(i64 %.sroa.744.i.sroa.11.sroa.8.sroa.0.0.copyload, !55214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57739)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.639.i.sroa.10.sroa.8, ptr noundef nonnull align 1 dereferenceable(40) %.sroa.744.i.sroa.11.sroa.8.sroa.8, i64 40, i1 false), !dbg !58801, !noalias !57697
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.744.i.sroa.9), !dbg !58789
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.744.i.sroa.11.sroa.8.sroa.8), !dbg !58789
    #dbg_value(i8 %.sroa.744.i.sroa.6.7.copyload, !55158, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57740)
    #dbg_value(i8 %.sroa.744.i.sroa.6.7.copyload, !55111, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57741)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.639.i.sroa.8, i64 7, i1 false), !dbg !58789, !noalias !57624
    #dbg_value(i64 poison, !55158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57740)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57741)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57741)
    #dbg_value(i64 poison, !55158, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57740)
    #dbg_value(i64 %.sroa.744.i.sroa.11.sroa.8.sroa.0.0.copyload, !55111, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57741)
    #dbg_value(i64 %.sroa.744.i.sroa.11.sroa.8.sroa.0.0.copyload, !55158, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57740)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.27.sroa.20.sroa.20, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.639.i.sroa.10.sroa.8, i64 40, i1 false), !dbg !58789, !noalias !57624
    #dbg_value(i8 %.sroa.744.i.sroa.6.7.copyload, !55117, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57742)
    #dbg_value(i64 poison, !55117, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57742)
    #dbg_value(i64 poison, !55117, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57742)
    #dbg_value(i64 %.sroa.744.i.sroa.11.sroa.8.sroa.0.0.copyload, !55117, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57742)
    #dbg_value(i8 %.sroa.744.i.sroa.6.7.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.744.i.sroa.11.sroa.8.sroa.0.0.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
  br label %bb.nh, !dbg !58797

bb.nh:                                            ; preds = %bb.ng, %bb.na
  %.sroa.27.sroa.20.sroa.0.1 = phi i64 [ %.sroa.62608.sroa.4.sroa.0.0.copyload, %bb.na ], [ %.sroa.744.i.sroa.11.sroa.8.sroa.0.0.copyload, %bb.ng ], !dbg !58783
  %.sroa.01853.4 = phi i8 [ %.sroa.02605.0.copyload, %bb.na ], [ %.sroa.744.i.sroa.6.7.copyload, %bb.ng ], !dbg !58783
  %i.ahq = phi <2 x i64> [ %i.ahk, %bb.na ], [ %i.ahp, %bb.ng ], !dbg !58783
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.27.sroa.20.sroa.0.1, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
    #dbg_value(i8 %.sroa.01853.4, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.639.i.sroa.8), !dbg !58797
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.639.i.sroa.10.sroa.8), !dbg !58797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !58797, !noalias !57697
  br label %bb.pj, !dbg !58767

bb.ni:                                            ; preds = %bb.nd
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.639.i.sroa.8), !dbg !58797
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.639.i.sroa.10.sroa.8), !dbg !58797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !58797, !noalias !57697
    #dbg_value(ptr %1, !57743, !DIExpression(), !54754)
    #dbg_value(ptr undef, !4145, !DIExpression(), !53629)
    #dbg_value(i64 4, !57744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57746)
    #dbg_value(i64 4, !4751, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57747)
    #dbg_value(i64 4, !4760, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57748)
    #dbg_value(ptr @118, !57744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57746)
    #dbg_value(ptr @118, !4751, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57747)
    #dbg_value(ptr @118, !4760, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57748)
    #dbg_value(i64 14, !57744, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57746)
    #dbg_value(i64 14, !4751, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57747)
    #dbg_value(i64 14, !4760, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57748)
    #dbg_value(i64 poison, !4760, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57748)
    #dbg_value(i64 poison, !4751, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57747)
    #dbg_value(i64 poison, !57744, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57746)
    #dbg_value(i64 poison, !4760, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57748)
    #dbg_value(i64 poison, !4751, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57747)
    #dbg_value(i64 poison, !57744, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57746)
    #dbg_value(i64 poison, !4760, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57748)
    #dbg_value(i64 poison, !4751, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57747)
    #dbg_value(i64 poison, !57744, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57746)
    #dbg_value(i64 poison, !4760, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57748)
    #dbg_value(i64 poison, !4751, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57747)
    #dbg_value(i64 poison, !57744, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !57746)
    #dbg_value(i64 poison, !4760, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57748)
    #dbg_value(i64 poison, !4751, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57747)
    #dbg_value(i64 poison, !57744, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !57746)
    #dbg_value(i64 poison, !4760, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57748)
    #dbg_value(i64 poison, !4751, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57747)
    #dbg_value(i64 poison, !57744, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !57746)
    #dbg_value(ptr %1, !4756, !DIExpression(), !54757)
    #dbg_value(ptr %1, !4765, !DIExpression(), !54759)
    #dbg_value(i64 72, !4770, !DIExpression(), !54762)
  %i.ahr = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !58802 ; 4 uses
  %i.ahs = load i64, ptr %i.ahr, align 8, !dbg !58802, !alias.scope !57749, !noalias !57750, !noundef !1314 ; 3 uses
    #dbg_value(i64 %i.ahs, !4757, !DIExpression(), !54766)
    #dbg_value(i64 %i.ahs, !4775, !DIExpression(), !54768)
    #dbg_value(ptr %1, !4773, !DIExpression(), !54769)
  %i.aht = load i64, ptr %1, align 8, !dbg !58803, !range !3278, !alias.scope !57749, !noalias !57750, !noundef !1314
  %i.ahu = icmp eq i64 %i.ahs, %i.aht, !dbg !58804
  br i1 %i.ahu, label %bb.nj, label %bb.nk, !dbg !58804

bb.nj:                                            ; preds = %bb.ni
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs5yXxDE1DkoT_4tera7parsing6parser11BodyContextNtNtBT_5utils4SpanEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1) #29
          to label %bb.nk unwind label %bb.mn, !dbg !58805

bb.nk:                                            ; preds = %bb.ni, %bb.nj
  %i.ahv = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !58806
  %i.ahw = load ptr, ptr %i.ahv, align 8, !dbg !58806, !alias.scope !57749, !noalias !57750, !nonnull !1314, !noundef !1314
    #dbg_value(ptr %i.ahw, !4776, !DIExpression(), !54768)
  %i.ahx = getelementptr inbounds nuw [72 x i8], ptr %i.ahw, i64 %i.ahs, !dbg !58807 ; 5 uses
    #dbg_value(ptr %i.ahx, !4758, !DIExpression(), !54773)
    #dbg_value(ptr %i.ahx, !4763, !DIExpression(), !54774)
  store i64 4, ptr %i.ahx, align 8, !dbg !58808, !noalias !57704
  %.sroa.42516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8, !dbg !58808
  store ptr @118, ptr %.sroa.42516.0..sroa_idx, align 8, !dbg !58808, !noalias !57704
  %.sroa.52517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahx, i64 16, !dbg !58808
  store i64 14, ptr %.sroa.52517.0..sroa_idx, align 8, !dbg !58808, !noalias !57704
  %.sroa.62518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahx, i64 24, !dbg !58808
  store <2 x i64> %i.agl, ptr %.sroa.62518.0..sroa_idx, align 8, !dbg !58808, !noalias !57704
  %.sroa.62518.sroa.5.0..sroa.62518.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahx, i64 40, !dbg !58808
  store <4 x i64> %i.agj, ptr %.sroa.62518.sroa.5.0..sroa.62518.0..sroa_idx.sroa_idx, align 8, !dbg !58808, !noalias !57704
  %i.ahy = add i64 %i.ahs, 1, !dbg !58809
  store i64 %i.ahy, ptr %i.ahr, align 8, !dbg !58809, !alias.scope !57749, !noalias !57750
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !58810, !noalias !57697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !58811, !noalias !57697
  invoke fastcc void @_RINvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB5_6Parser11parse_untilNCNvB2_25parse_component_with_body0EB9_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1)
          to label %bb.nl unwind label %bb.mn, !dbg !58812, !noalias !57704, !inline_history !54714

bb.nl:                                            ; preds = %bb.nk
  %i.ahz = load i8, ptr %i.y, align 8, !dbg !58813, !range !3289, !noalias !57697, !noundef !1314 ; 2 uses
  %.not324.i = icmp eq i8 %i.ahz, -1, !dbg !58813
  br i1 %.not324.i, label %bb.nn, label %bb.nm, !dbg !58814

bb.nm:                                            ; preds = %bb.nl
    #dbg_value(i8 %i.ahz, !55238, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54775)
  %.sroa.4175.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 1, !dbg !58815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4175.0..sroa_idx.i, i64 7, i1 false), !dbg !58815, !noalias !57624
  %.sroa.4175.i.sroa.4.0..sroa.4175.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !58815
    #dbg_value(i64 poison, !55238, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57751)
  %i.aia = load <2 x i64>, ptr %.sroa.4175.i.sroa.4.0..sroa.4175.0..sroa_idx.i.sroa_idx, align 8, !dbg !58815, !noalias !57697
    #dbg_value(i64 poison, !55238, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57751)
  %.sroa.4175.i.sroa.5.sroa.4.0..sroa.4175.i.sroa.5.0..sroa.4175.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24, !dbg !58815
  %.sroa.4175.i.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.4175.i.sroa.5.sroa.4.0..sroa.4175.i.sroa.5.0..sroa.4175.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !dbg !58815, !noalias !57697
    #dbg_value(i64 %.sroa.4175.i.sroa.5.sroa.4.0.copyload, !55238, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57751)
  %.sroa.5176.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32, !dbg !58815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.27.sroa.20.sroa.20, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5176.0..sroa_idx.i, i64 40, i1 false), !dbg !58815, !noalias !57624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !58816, !noalias !57697
    #dbg_value(i8 %i.ahz, !55161, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54776)
    #dbg_value(i8 %i.ahz, !55111, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54777)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57752)
    #dbg_value(i64 poison, !55161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57753)
    #dbg_value(i64 poison, !55161, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57753)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57752)
    #dbg_value(i64 %.sroa.4175.i.sroa.5.sroa.4.0.copyload, !55161, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57753)
    #dbg_value(i64 %.sroa.4175.i.sroa.5.sroa.4.0.copyload, !55111, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57752)
    #dbg_value(i8 %i.ahz, !55118, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54778)
    #dbg_value(i64 poison, !55118, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57754)
    #dbg_value(i64 poison, !55118, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57754)
    #dbg_value(i64 %.sroa.4175.i.sroa.5.sroa.4.0.copyload, !55118, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57754)
    #dbg_value(i8 %i.ahz, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.4175.i.sroa.5.sroa.4.0.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
  br label %bb.pi, !dbg !58767

bb.nn:                                            ; preds = %bb.nl
  %i.aib = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !58817
  %.sroa.42642.sroa.4.0..sroa.42642.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24, !dbg !58817
  %.sroa.42642.sroa.4.0.copyload = load i64, ptr %.sroa.42642.sroa.4.0..sroa.42642.0..sroa_idx.sroa_idx, align 8, !dbg !58817, !noalias !57697
    #dbg_value(i64 poison, !55162, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57755)
    #dbg_value(i64 poison, !55162, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57755)
    #dbg_value(i64 %.sroa.42642.sroa.4.0.copyload, !55162, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57755)
  %i.aic = load <2 x i64>, ptr %i.aib, align 8, !dbg !58817, !noalias !57697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !58816, !noalias !57697
  store <2 x i64> %i.aic, ptr %i.z, align 16, !dbg !58818, !noalias !57697
  %.sroa.42640.sroa.4.0..sroa.42640.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !58818
  store i64 %.sroa.42642.sroa.4.0.copyload, ptr %.sroa.42640.sroa.4.0..sroa.42640.0..sroa_idx.sroa_idx, align 16, !dbg !58818, !noalias !57697
    #dbg_value(ptr %1, !57632, !DIExpression(), !54779)
    #dbg_value(ptr %1, !57630, !DIExpression(), !54780)
    #dbg_value(ptr %1, !57756, !DIExpression(), !54783)
  %i.aid = load i64, ptr %i.ahr, align 8, !dbg !58819, !alias.scope !57624, !noalias !57704, !noundef !1314 ; 3 uses
  %i.aie = icmp eq i64 %i.aid, 0, !dbg !58819
  br i1 %i.aie, label %bb.np, label %bb.no, !dbg !58819

bb.no:                                            ; preds = %bb.nn
  %i.aif = add nsw i64 %i.aid, -1, !dbg !58820    ; 2 uses
  store i64 %i.aif, ptr %i.ahr, align 8, !dbg !58820, !alias.scope !57624, !noalias !57704
  %i.aig = load i64, ptr %1, align 8, !dbg !58821, !range !3278, !alias.scope !57624, !noalias !57704, !noundef !1314
  %i.aih = icmp samesign ult i64 %i.aif, %i.aig, !dbg !58822
    #dbg_value(i1 true, !57758, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !54786)
  call void @llvm.assume(i1 %i.aih), !dbg !58823
  %i.aii = icmp ult i64 %i.aid, 128102389400760777, !dbg !58824
  call void @llvm.assume(i1 %i.aii), !dbg !58825
  br label %bb.np, !dbg !58826

bb.np:                                            ; preds = %bb.no, %bb.nn
    #dbg_value(ptr %1, !57760, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !54789)
    #dbg_value(ptr %1, !57765, !DIExpression(DW_OP_plus_uconst, 96, DW_OP_stack_value), !54792)
  %i.aij = load i8, ptr %i.ho, align 8, !dbg !58827, !range !3052, !alias.scope !57624, !noalias !57704, !noundef !1314
  %.not325.i = icmp eq i8 %i.aij, -2, !dbg !58827
  br i1 %.not325.i, label %bb.nr, label %bb.nq, !dbg !58828

bb.nq:                                            ; preds = %bb.np
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !58829, !noalias !57697
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.675.i.sroa.8), !dbg !58829
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.675.i.sroa.10.sroa.8), !dbg !58829
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.780.i.sroa.9), !dbg !58830
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.780.i.sroa.11.sroa.8.sroa.8), !dbg !58830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !58831, !noalias !57697
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser13next_or_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.t, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1)
          to label %bb.nt unwind label %.split.thread, !dbg !58832, !noalias !57704, !inline_history !54714

bb.nr:                                            ; preds = %bb.np
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !58833, !noalias !57697
    #dbg_value(ptr %i.ap, !55164, !DIExpression(), !54793)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !58834, !noalias !57697
  store ptr %i.ap, ptr %i.v, align 8, !dbg !58834, !noalias !57697
  %.sroa.4183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !58834
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4183.0..sroa_idx.i, align 8, !dbg !58834, !noalias !57697
    #dbg_value(ptr @115, !57717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57768)
    #dbg_value(ptr %i.v, !57717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57768)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54796)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54796)
    #dbg_value(ptr poison, !3324, !DIExpression(), !54796)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !54797)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !54799)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @115, ptr noundef nonnull %i.v)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1561 unwind label %.split.thread, !dbg !58835

bb.ns:                                            ; preds = %bb.oj
  br i1 %.sroa.0131.2.i, label %.thread2814, label %bb.mi, !dbg !58836

.split.thread:                                    ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1561, %bb.nr, %bb.pd, %bb.oc, %bb.nx, %bb.nz, %bb.nq
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread2814, !dbg !58836

.split:                                           ; preds = %bb.pa
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.mi, !dbg !58836

bb.nt:                                            ; preds = %bb.nq
  %i.aik = load i8, ptr %i.t, align 8, !dbg !58837, !range !3290, !noalias !57697, !noundef !1314 ; 3 uses
  %i.ail = icmp eq i8 %i.aik, -1, !dbg !58837
  br i1 %i.ail, label %bb.nu, label %bb.nv, !dbg !58838

bb.nu:                                            ; preds = %bb.nt
  %i.aim = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !58839
  %.sroa.02657.0.copyload = load i8, ptr %i.aim, align 8, !dbg !58839, !noalias !57697
    #dbg_value(i8 %.sroa.02657.0.copyload, !55216, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57770)
  %.sroa.42658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 9, !dbg !58839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.785.i.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.42658.0..sroa_idx, i64 7, i1 false), !dbg !58839
  %.sroa.52659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !58839
    #dbg_value(i64 poison, !55216, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57770)
  %i.ain = load <2 x i64>, ptr %.sroa.52659.0..sroa_idx, align 8, !dbg !58839, !noalias !57697
    #dbg_value(i64 poison, !55216, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57770)
  %.sroa.62660.sroa.4.0..sroa.62660.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32, !dbg !58839
  %.sroa.62660.sroa.4.sroa.0.0.copyload = load i64, ptr %.sroa.62660.sroa.4.0..sroa.62660.0..sroa_idx.sroa_idx, align 8, !dbg !58839, !noalias !57697
    #dbg_value(i64 %.sroa.62660.sroa.4.sroa.0.0.copyload, !55216, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57770)
  %.sroa.62660.sroa.4.sroa.4.0..sroa.62660.sroa.4.0..sroa.62660.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40, !dbg !58839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.785.i.sroa.10.sroa.8.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.62660.sroa.4.sroa.4.0..sroa.62660.sroa.4.0..sroa.62660.0..sroa_idx.sroa_idx.sroa_idx, i64 40, i1 false), !dbg !58839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !58840, !noalias !57697
    #dbg_value(i8 %.sroa.02657.0.copyload, !55167, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57771)
    #dbg_value(i8 %.sroa.02657.0.copyload, !55111, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57772)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.785.i.sroa.8, i64 7, i1 false), !dbg !58840
    #dbg_value(i64 poison, !55167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57771)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57772)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57772)
    #dbg_value(i64 poison, !55167, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57771)
    #dbg_value(i64 %.sroa.62660.sroa.4.sroa.0.0.copyload, !55167, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57771)
    #dbg_value(i64 %.sroa.62660.sroa.4.sroa.0.0.copyload, !55111, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57772)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.27.sroa.20.sroa.20, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.785.i.sroa.10.sroa.8.sroa.8, i64 40, i1 false), !dbg !58840
    #dbg_value(i8 %.sroa.02657.0.copyload, !55119, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57773)
    #dbg_value(i64 poison, !55119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57773)
    #dbg_value(i64 poison, !55119, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57773)
    #dbg_value(i64 %.sroa.62660.sroa.4.sroa.0.0.copyload, !55119, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57773)
    #dbg_value(i8 %.sroa.02657.0.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.62660.sroa.4.sroa.0.0.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.780.i.sroa.9), !dbg !58841
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.780.i.sroa.11.sroa.8.sroa.8), !dbg !58841
  br label %bb.ob, !dbg !58842

bb.nv:                                            ; preds = %bb.nt
    #dbg_value(i8 %i.aik, !55215, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54800)
  %.sroa.4187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 1, !dbg !58843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.590.i.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4187.0..sroa_idx.i, i64 7, i1 false), !dbg !58843, !noalias !57697
  %.sroa.4187.i.sroa.4.0..sroa.4187.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8, !dbg !58843
  %.sroa.4187.i.sroa.4.0.copyload = load i8, ptr %.sroa.4187.i.sroa.4.0..sroa.4187.0..sroa_idx.i.sroa_idx, align 8, !dbg !58843, !noalias !57697 ; 2 uses
    #dbg_value(i8 %.sroa.4187.i.sroa.4.0.copyload, !55215, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57775)
  %.sroa.4187.i.sroa.5.0..sroa.4187.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 9, !dbg !58843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.785.i.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4187.i.sroa.5.0..sroa.4187.0..sroa_idx.i.sroa_idx, i64 7, i1 false), !dbg !58843
  %.sroa.4187.i.sroa.6.0..sroa.4187.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16, !dbg !58843 ; 2 uses
    #dbg_value(i64 poison, !55215, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57775)
  %.sroa.4187.i.sroa.7.0..sroa.4187.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24, !dbg !58843
    #dbg_value(i64 poison, !55215, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57775)
  %i.aio = load <2 x i64>, ptr %.sroa.4187.i.sroa.7.0..sroa.4187.0..sroa_idx.i.sroa_idx, align 8, !dbg !58843, !noalias !57697
  %i.aip = load <2 x i64>, ptr %.sroa.4187.i.sroa.6.0..sroa.4187.0..sroa_idx.i.sroa_idx, align 8, !dbg !58843, !noalias !57697
  %.sroa.4187.i.sroa.6.0.copyload = load i64, ptr %.sroa.4187.i.sroa.6.0..sroa.4187.0..sroa_idx.i.sroa_idx, align 8, !dbg !58843, !noalias !57697
    #dbg_value(i64 poison, !55215, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57775)
    #dbg_value(i64 poison, !55215, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57775)
  %.sroa.4187.i.sroa.7.sroa.4.sroa.4.0..sroa.4187.i.sroa.7.sroa.4.0..sroa.4187.i.sroa.7.0..sroa.4187.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40, !dbg !58843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.785.i.sroa.10.sroa.8.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4187.i.sroa.7.sroa.4.sroa.4.0..sroa.4187.i.sroa.7.sroa.4.0..sroa.4187.i.sroa.7.0..sroa.4187.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx, i64 40, i1 false), !dbg !58843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !58840, !noalias !57697
    #dbg_value(ptr poison, !55170, !DIExpression(), !54801)
    #dbg_value(ptr poison, !55172, !DIExpression(), !54802)
  %i.aiq = icmp eq i8 %i.aik, 21, !dbg !58844
  br i1 %i.aiq, label %bb.nx, label %bb.nw, !dbg !58844

bb.nw:                                            ; preds = %bb.nv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !58845, !noalias !57697
  store i8 %i.aik, ptr %i.s, align 8, !dbg !58845, !noalias !57697
  %.sroa.590.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1, !dbg !58845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.590.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.590.i.sroa.0, i64 7, i1 false), !dbg !58845, !noalias !57697
  %.sroa.590.i.sroa.5.0..sroa.590.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !58845
  store i8 %.sroa.4187.i.sroa.4.0.copyload, ptr %.sroa.590.i.sroa.5.0..sroa.590.0..sroa_idx.i.sroa_idx, align 8, !dbg !58845, !noalias !57697
  %.sroa.590.i.sroa.6.0..sroa.590.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 9, !dbg !58845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.590.i.sroa.6.0..sroa.590.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.785.i.sroa.8, i64 7, i1 false), !dbg !58845
  %.sroa.590.i.sroa.7.0..sroa.590.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !58845
  store <2 x i64> %i.aip, ptr %.sroa.590.i.sroa.7.0..sroa.590.0..sroa_idx.i.sroa_idx, align 8, !dbg !58845, !noalias !57697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !58846, !noalias !57697
    #dbg_value(ptr %i.s, !55175, !DIExpression(), !54803)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !58847, !noalias !57697
  store ptr %i.s, ptr %i.p, align 8, !dbg !58847, !noalias !57697
  %.sroa.4191.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !58847
  store ptr @_RNvXs_NtNtCs5yXxDE1DkoT_4tera7parsing5lexerNtB4_5TokenNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4191.0..sroa_idx.i, align 8, !dbg !58847, !noalias !57697
    #dbg_value(ptr @116, !57717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57776)
    #dbg_value(ptr %i.p, !57717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57776)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54806)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54806)
    #dbg_value(ptr poison, !3324, !DIExpression(), !54806)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !54807)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !54809)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @116, ptr noundef nonnull %i.p)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1559 unwind label %bb.ny, !dbg !58848

bb.nx:                                            ; preds = %bb.nv
    #dbg_value(i8 %i.aik, !55169, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54810)
    #dbg_value(i8 %i.aik, !55206, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54811)
  %.sroa.495.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 1, !dbg !58849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.495.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.590.i.sroa.0, i64 7, i1 false), !dbg !58850, !noalias !57697
    #dbg_value(i8 %.sroa.4187.i.sroa.4.0.copyload, !55206, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57778)
    #dbg_value(i64 poison, !55206, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57778)
    #dbg_value(i64 poison, !55206, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57778)
    #dbg_value(i64 poison, !55206, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57778)
    #dbg_value(i8 %i.aik, !55217, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54812)
    #dbg_value(i8 %.sroa.4187.i.sroa.4.0.copyload, !55217, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57779)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.675.i.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.785.i.sroa.8, i64 7, i1 false), !dbg !58851
    #dbg_value(i64 poison, !55217, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57779)
    #dbg_value(i64 poison, !55217, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57779)
    #dbg_value(i64 poison, !55217, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57779)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.675.i.sroa.10.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.785.i.sroa.10.sroa.8.sroa.8, i64 40, i1 false), !dbg !58851
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.780.i.sroa.9), !dbg !58841
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.780.i.sroa.11.sroa.8.sroa.8), !dbg !58841
    #dbg_value(i8 %i.aik, !55179, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54813)
    #dbg_value(i8 %.sroa.4187.i.sroa.4.0.copyload, !55179, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57780)
  %.sroa.495.i.sroa.5.0..sroa.495.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 9, !dbg !58849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.495.i.sroa.5.0..sroa.495.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.785.i.sroa.8, i64 7, i1 false), !dbg !58829
    #dbg_value(i64 poison, !55179, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57780)
    #dbg_value(i64 poison, !55179, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57780)
    #dbg_value(i64 poison, !55179, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57780)
  %.sroa.495.i.sroa.7.sroa.5.0..sroa.495.i.sroa.7.0..sroa.495.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40, !dbg !58849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.495.i.sroa.7.sroa.5.0..sroa.495.i.sroa.7.0..sroa.495.0..sroa_idx.i.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.785.i.sroa.10.sroa.8.sroa.8, i64 40, i1 false), !dbg !58829
  store i8 21, ptr %i.u, align 8, !dbg !58849, !noalias !57697
  %.sroa.495.i.sroa.4.0..sroa.495.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !58849
  store i8 %.sroa.4187.i.sroa.4.0.copyload, ptr %.sroa.495.i.sroa.4.0..sroa.495.0..sroa_idx.i.sroa_idx, align 8, !dbg !58849, !noalias !57697
  %.sroa.495.i.sroa.6.0..sroa.495.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !58849
  store i64 %.sroa.4187.i.sroa.6.0.copyload, ptr %.sroa.495.i.sroa.6.0..sroa.495.0..sroa_idx.i.sroa_idx, align 8, !dbg !58849, !noalias !57697
  %.sroa.495.i.sroa.7.0..sroa.495.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24, !dbg !58849
  store <2 x i64> %i.aio, ptr %.sroa.495.i.sroa.7.0..sroa.495.0..sroa_idx.i.sroa_idx, align 8, !dbg !58849, !noalias !57697
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.u)
          to label %bb.oc unwind label %.split.thread, !dbg !58852, !noalias !57704, !inline_history !54714

bb.ny:                                            ; preds = %bb.nw, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1559
  %i.air = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.s) #25
          to label %.thread2814 unwind label %bb.mx, !dbg !58853, !noalias !57704, !inline_history !54714

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1559: ; preds = %bb.nw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !58854, !noalias !57697
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.agg)
          to label %bb.nz unwind label %bb.ny, !dbg !58846, !noalias !57704, !inline_history !54714

bb.nz:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1559
  %.sroa.780.i.sroa.6.7.copyload = load i8, ptr %i.r, align 8, !dbg !58855, !noalias !57697
    #dbg_value(i8 %.sroa.780.i.sroa.6.7.copyload, !55206, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57778)
  %.sroa.780.i.sroa.9.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 1, !dbg !58855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.780.i.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.780.i.sroa.9.7..sroa_idx, i64 7, i1 false), !dbg !58855, !noalias !57697
  %.sroa.780.i.sroa.10.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !58855
    #dbg_value(i64 poison, !55206, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57778)
  %i.ais = load <2 x i64>, ptr %.sroa.780.i.sroa.10.7..sroa_idx, align 8, !dbg !58855, !noalias !57697
    #dbg_value(i64 poison, !55206, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57778)
  %.sroa.780.i.sroa.11.sroa.8.0..sroa.780.i.sroa.11.7..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24, !dbg !58855
  %.sroa.780.i.sroa.11.sroa.8.sroa.0.0.copyload = load i64, ptr %.sroa.780.i.sroa.11.sroa.8.0..sroa.780.i.sroa.11.7..sroa_idx.sroa_idx, align 8, !dbg !58855, !noalias !57697
    #dbg_value(i64 %.sroa.780.i.sroa.11.sroa.8.sroa.0.0.copyload, !55206, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57778)
  %.sroa.780.i.sroa.11.sroa.8.sroa.8.0..sroa.780.i.sroa.11.sroa.8.0..sroa.780.i.sroa.11.7..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32, !dbg !58855
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %.sroa.780.i.sroa.11.sroa.8.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.780.i.sroa.11.sroa.8.sroa.8.0..sroa.780.i.sroa.11.sroa.8.0..sroa.780.i.sroa.11.7..sroa_idx.sroa_idx.sroa_idx, i64 40, i1 false), !dbg !58855, !noalias !57697
    #dbg_value(i8 -1, !55206, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54811)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !58856, !noalias !57697
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.s)
          to label %bb.oa unwind label %.split.thread, !dbg !58853, !noalias !57704, !inline_history !54714

bb.oa:                                            ; preds = %bb.nz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !58853, !noalias !57697
    #dbg_value(i8 %.sroa.780.i.sroa.6.7.copyload, !55218, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57781)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.675.i.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.780.i.sroa.9, i64 7, i1 false), !dbg !58857, !noalias !57697
    #dbg_value(i64 poison, !55218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57781)
    #dbg_value(i64 poison, !55218, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57781)
    #dbg_value(i64 %.sroa.780.i.sroa.11.sroa.8.sroa.0.0.copyload, !55218, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57781)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.675.i.sroa.10.sroa.8, ptr noundef nonnull align 1 dereferenceable(40) %.sroa.780.i.sroa.11.sroa.8.sroa.8, i64 40, i1 false), !dbg !58857, !noalias !57697
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.780.i.sroa.9), !dbg !58841
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.780.i.sroa.11.sroa.8.sroa.8), !dbg !58841
    #dbg_value(i8 %.sroa.780.i.sroa.6.7.copyload, !55178, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57782)
    #dbg_value(i8 %.sroa.780.i.sroa.6.7.copyload, !55111, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57783)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.675.i.sroa.8, i64 7, i1 false), !dbg !58841, !noalias !57624
    #dbg_value(i64 poison, !55178, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57782)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57783)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57783)
    #dbg_value(i64 poison, !55178, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57782)
    #dbg_value(i64 %.sroa.780.i.sroa.11.sroa.8.sroa.0.0.copyload, !55111, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57783)
    #dbg_value(i64 %.sroa.780.i.sroa.11.sroa.8.sroa.0.0.copyload, !55178, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57782)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.27.sroa.20.sroa.20, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.675.i.sroa.10.sroa.8, i64 40, i1 false), !dbg !58841, !noalias !57624
    #dbg_value(i8 %.sroa.780.i.sroa.6.7.copyload, !55120, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57784)
    #dbg_value(i64 poison, !55120, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57784)
    #dbg_value(i64 poison, !55120, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57784)
    #dbg_value(i64 %.sroa.780.i.sroa.11.sroa.8.sroa.0.0.copyload, !55120, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57784)
    #dbg_value(i8 %.sroa.780.i.sroa.6.7.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.780.i.sroa.11.sroa.8.sroa.0.0.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
  br label %bb.ob, !dbg !58852

bb.ob:                                            ; preds = %bb.oa, %bb.nu
  %.sroa.27.sroa.20.sroa.0.2 = phi i64 [ %.sroa.62660.sroa.4.sroa.0.0.copyload, %bb.nu ], [ %.sroa.780.i.sroa.11.sroa.8.sroa.0.0.copyload, %bb.oa ], !dbg !58858
  %.sroa.01853.6 = phi i8 [ %.sroa.02657.0.copyload, %bb.nu ], [ %.sroa.780.i.sroa.6.7.copyload, %bb.oa ], !dbg !58858
  %i.ait = phi <2 x i64> [ %i.ain, %bb.nu ], [ %i.ais, %bb.oa ], !dbg !58858
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.27.sroa.20.sroa.0.2, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
    #dbg_value(i8 %.sroa.01853.6, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675.i.sroa.8), !dbg !58852
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675.i.sroa.10.sroa.8), !dbg !58852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !58852, !noalias !57697
  br label %bb.pg, !dbg !58842

bb.oc:                                            ; preds = %bb.nx
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675.i.sroa.8), !dbg !58852
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.675.i.sroa.10.sroa.8), !dbg !58852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !58852, !noalias !57697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !58859, !noalias !57697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !58860, !noalias !57697
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser27parse_dotted_component_name(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1)
          to label %bb.od unwind label %.split.thread, !dbg !58861, !noalias !57704, !inline_history !54714

bb.od:                                            ; preds = %bb.oc
  %i.aiu = load i8, ptr %i.n, align 8, !dbg !58862, !range !3289, !noalias !57697, !noundef !1314 ; 2 uses
  %.not326.i = icmp eq i8 %i.aiu, -1, !dbg !58862
  br i1 %.not326.i, label %bb.of, label %bb.oe, !dbg !58863

bb.oe:                                            ; preds = %bb.od
    #dbg_value(i8 %i.aiu, !55228, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54814)
  %.sroa.4200.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !58864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4200.0..sroa_idx.i, i64 7, i1 false), !dbg !58864, !noalias !57624
  %.sroa.4200.i.sroa.4.0..sroa.4200.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !58864
    #dbg_value(i64 poison, !55228, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57786)
  %i.aiv = load <2 x i64>, ptr %.sroa.4200.i.sroa.4.0..sroa.4200.0..sroa_idx.i.sroa_idx, align 8, !dbg !58864, !noalias !57697
    #dbg_value(i64 poison, !55228, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57786)
  %.sroa.4200.i.sroa.5.sroa.4.0..sroa.4200.i.sroa.5.0..sroa.4200.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !58864
  %.sroa.4200.i.sroa.5.sroa.4.0.copyload = load i64, ptr %.sroa.4200.i.sroa.5.sroa.4.0..sroa.4200.i.sroa.5.0..sroa.4200.0..sroa_idx.i.sroa_idx.sroa_idx, align 8, !dbg !58864, !noalias !57697
    #dbg_value(i64 %.sroa.4200.i.sroa.5.sroa.4.0.copyload, !55228, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57786)
  %.sroa.5201.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !58864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.27.sroa.20.sroa.20, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5201.0..sroa_idx.i, i64 40, i1 false), !dbg !58864, !noalias !57624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !58865, !noalias !57697
    #dbg_value(i8 %i.aiu, !55181, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54815)
    #dbg_value(i8 %i.aiu, !55111, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54816)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57787)
    #dbg_value(i64 poison, !55181, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57788)
    #dbg_value(i64 poison, !55181, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57788)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57787)
    #dbg_value(i64 %.sroa.4200.i.sroa.5.sroa.4.0.copyload, !55181, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57788)
    #dbg_value(i64 %.sroa.4200.i.sroa.5.sroa.4.0.copyload, !55111, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57787)
    #dbg_value(i8 %i.aiu, !55121, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54817)
    #dbg_value(i64 poison, !55121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57789)
    #dbg_value(i64 poison, !55121, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57789)
    #dbg_value(i64 %.sroa.4200.i.sroa.5.sroa.4.0.copyload, !55121, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57789)
    #dbg_value(i8 %i.aiu, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.4200.i.sroa.5.sroa.4.0.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
  br label %bb.pf, !dbg !58842

bb.of:                                            ; preds = %bb.od
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !58866
  %.sroa.42694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !58866
  %.sroa.42694.sroa.4.0..sroa.42694.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !58866
  %.sroa.42694.sroa.4.0.copyload = load i64, ptr %.sroa.42694.sroa.4.0..sroa.42694.0..sroa_idx.sroa_idx, align 8, !dbg !58866, !noalias !57697 ; 3 uses
    #dbg_value(i64 poison, !55182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57790)
    #dbg_value(i64 poison, !55182, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57790)
    #dbg_value(i64 %.sroa.42694.sroa.4.0.copyload, !55182, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57790)
  %.sroa.42694.sroa.0.0.copyload = load i64, ptr %.sroa.42694.0..sroa_idx, align 8, !dbg !58866, !noalias !57697
  %i.aix = load <2 x i64>, ptr %i.aiw, align 8, !dbg !58866, !noalias !57697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !58865, !noalias !57697
  store <2 x i64> %i.aix, ptr %i.o, align 16, !dbg !58867, !noalias !57697
  %.sroa.42692.sroa.4.0..sroa.42692.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !58867
  store i64 %.sroa.42694.sroa.4.0.copyload, ptr %.sroa.42692.sroa.4.0..sroa.42692.0..sroa_idx.sroa_idx, align 16, !dbg !58867, !noalias !57697
    #dbg_value(ptr %i.o, !57643, !DIExpression(), !54818)
    #dbg_value(ptr %i.o, !57640, !DIExpression(), !54819)
    #dbg_value(ptr %i.ap, !57644, !DIExpression(), !54820)
    #dbg_value(ptr %i.ap, !57641, !DIExpression(), !54819)
    #dbg_value(ptr %i.o, !57637, !DIExpression(), !54821)
    #dbg_value(ptr %i.o, !57635, !DIExpression(), !54822)
    #dbg_value(ptr %i.o, !57791, !DIExpression(), !54825)
    #dbg_value(ptr %i.o, !57793, !DIExpression(), !54828)
    #dbg_value(ptr %i.o, !57795, !DIExpression(), !54831)
    #dbg_value(ptr %i.ap, !57638, !DIExpression(), !54832)
    #dbg_value(ptr %i.ap, !57635, !DIExpression(), !54833)
    #dbg_value(ptr %i.ap, !57791, !DIExpression(), !54835)
    #dbg_value(ptr %i.ap, !57793, !DIExpression(), !54837)
    #dbg_value(ptr %i.ap, !57795, !DIExpression(), !54839)
    #dbg_value(ptr poison, !57800, !DIExpression(), !54846)
    #dbg_value(i64 %.sroa.42694.sroa.4.0.copyload, !57807, !DIExpression(), !54847)
    #dbg_value(i64 %.sroa.42694.sroa.4.0.copyload, !57802, !DIExpression(), !54846)
    #dbg_value(i64 %.sroa.42694.sroa.4.0.copyload, !57803, !DIExpression(), !54848)
    #dbg_value(ptr poison, !57805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54849)
    #dbg_value(i64 %.sroa.42694.sroa.4.0.copyload, !57805, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54849)
    #dbg_value(ptr poison, !57801, !DIExpression(), !54846)
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.ap, i64 16, !dbg !58868 ; 2 uses
  %i.aiz = load i64, ptr %i.aiy, align 16, !dbg !58868, !noalias !57697, !noundef !1314
    #dbg_value(ptr poison, !57806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54849)
    #dbg_value(i64 %i.aiz, !57806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54849)
  %i.aja = icmp eq i64 %.sroa.42694.sroa.4.0.copyload, %i.aiz, !dbg !58869
  br i1 %i.aja, label %bb.og, label %bb.oh, !dbg !58869

bb.og:                                            ; preds = %bb.of
  %i.ajb = inttoptr i64 %.sroa.42694.sroa.0.0.copyload to ptr, !dbg !58869
  %i.ajc = load ptr, ptr %.sroa.42536.0..sroa_idx, align 8, !dbg !58870, !noalias !57697, !nonnull !1314, !noundef !1314
    #dbg_value(ptr %i.ajc, !57801, !DIExpression(), !54846)
    #dbg_value(ptr %i.ajc, !57806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54849)
    #dbg_value(ptr %i.ajb, !57800, !DIExpression(), !54846)
    #dbg_value(ptr %i.ajb, !57805, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54849)
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.ajb, ptr nonnull %i.ajc, i64 %.sroa.42694.sroa.4.0.copyload), !dbg !58871, !noalias !57704, !inline_history !54714
  %.not327.i = icmp eq i32 %bcmp.i, 0, !dbg !58871
  br i1 %.not327.i, label %bb.oi, label %bb.oh, !dbg !58872

bb.oh:                                            ; preds = %bb.og, %bb.of
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !58873, !noalias !57697
    #dbg_value(ptr %i.o, !55184, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54856)
    #dbg_value(ptr %i.ap, !55184, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54856)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !58874, !noalias !57697
  store ptr %i.o, ptr %i.k, align 8, !dbg !58874, !noalias !57697
  %.sroa.4208.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !58874
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4208.0..sroa_idx.i, align 8, !dbg !58874, !noalias !57697
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !58874
  store ptr %i.ap, ptr %i.ajd, align 8, !dbg !58874, !noalias !57697
  %.sroa.4212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !58874
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4212.0..sroa_idx.i, align 8, !dbg !58874, !noalias !57697
    #dbg_value(ptr @117, !57717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57812)
    #dbg_value(ptr %i.k, !57717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57812)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54859)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54859)
    #dbg_value(ptr poison, !3324, !DIExpression(), !54859)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !54860)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !54862)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @117, ptr noundef nonnull %i.k)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1557 unwind label %bb.ok, !dbg !58875

bb.oi:                                            ; preds = %bb.og
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !58876, !noalias !57697
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6108.i.sroa.8), !dbg !58876
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6108.i.sroa.10.sroa.8), !dbg !58876
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7113.i.sroa.9), !dbg !58877
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7113.i.sroa.11.sroa.8.sroa.8), !dbg !58877
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !58878, !noalias !57697
  invoke fastcc void @_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser13next_or_error(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(488) %1)
          to label %bb.ol unwind label %bb.ok, !dbg !58879, !noalias !57704, !inline_history !54714

bb.oj:                                            ; preds = %bb.oq, %bb.ok
  %.sroa.0131.2.i = phi i1 [ %.sroa.0131.3.i, %bb.ok ], [ true, %bb.oq ], !dbg !58818
  %.pn.i1505 = phi { ptr, i32 } [ %i.aje, %bb.ok ], [ %i.ajm, %bb.oq ] ; 2 uses
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #25
          to label %bb.ns unwind label %bb.mx, !dbg !58880, !noalias !57704, !inline_history !54714

bb.ok:                                            ; preds = %bb.oh, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1557, %bb.oy, %bb.ow, %bb.ou, %bb.or, %bb.op, %bb.oi
  %.sroa.0131.3.i = phi i1 [ true, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1557 ], [ true, %bb.oh ], [ true, %bb.ow ], [ false, %bb.oy ], [ true, %bb.ou ], [ true, %bb.oi ], [ true, %bb.op ], [ true, %bb.or ], !dbg !57728
  %i.aje = landingpad { ptr, i32 }
          cleanup
  br label %bb.oj

bb.ol:                                            ; preds = %bb.oi
  %i.ajf = load i8, ptr %i.i, align 8, !dbg !58881, !range !3290, !noalias !57697, !noundef !1314 ; 3 uses
  %i.ajg = icmp eq i8 %i.ajf, -1, !dbg !58881
  br i1 %i.ajg, label %bb.om, label %bb.on, !dbg !58882

bb.om:                                            ; preds = %bb.ol
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !58883
  %.sroa.02709.0.copyload = load i8, ptr %i.ajh, align 8, !dbg !58883, !noalias !57697
    #dbg_value(i8 %.sroa.02709.0.copyload, !55220, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57814)
  %.sroa.42710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 9, !dbg !58883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7118.i1499.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.42710.0..sroa_idx, i64 7, i1 false), !dbg !58883
  %.sroa.52711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !58883
    #dbg_value(i64 poison, !55220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57814)
  %i.aji = load <2 x i64>, ptr %.sroa.52711.0..sroa_idx, align 8, !dbg !58883, !noalias !57697
    #dbg_value(i64 poison, !55220, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57814)
  %.sroa.62712.sroa.4.0..sroa.62712.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !58883
  %.sroa.62712.sroa.4.sroa.0.0.copyload = load i64, ptr %.sroa.62712.sroa.4.0..sroa.62712.0..sroa_idx.sroa_idx, align 8, !dbg !58883, !noalias !57697
    #dbg_value(i64 %.sroa.62712.sroa.4.sroa.0.0.copyload, !55220, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57814)
  %.sroa.62712.sroa.4.sroa.4.0..sroa.62712.sroa.4.0..sroa.62712.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !58883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7118.i1499.sroa.10.sroa.8.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.62712.sroa.4.sroa.4.0..sroa.62712.sroa.4.0..sroa.62712.0..sroa_idx.sroa_idx.sroa_idx, i64 40, i1 false), !dbg !58883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !58884, !noalias !57697
    #dbg_value(i8 %.sroa.02709.0.copyload, !55187, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57815)
    #dbg_value(i8 %.sroa.02709.0.copyload, !55111, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57816)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7118.i1499.sroa.8, i64 7, i1 false), !dbg !58884
    #dbg_value(i64 poison, !55187, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57815)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57816)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57816)
    #dbg_value(i64 poison, !55187, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57815)
    #dbg_value(i64 %.sroa.62712.sroa.4.sroa.0.0.copyload, !55187, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57815)
    #dbg_value(i64 %.sroa.62712.sroa.4.sroa.0.0.copyload, !55111, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57816)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.27.sroa.20.sroa.20, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7118.i1499.sroa.10.sroa.8.sroa.8, i64 40, i1 false), !dbg !58884
    #dbg_value(i8 %.sroa.02709.0.copyload, !55122, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57817)
    #dbg_value(i64 poison, !55122, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57817)
    #dbg_value(i64 poison, !55122, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57817)
    #dbg_value(i64 %.sroa.62712.sroa.4.sroa.0.0.copyload, !55122, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57817)
    #dbg_value(i8 %.sroa.02709.0.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.62712.sroa.4.sroa.0.0.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7113.i.sroa.9), !dbg !58885
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7113.i.sroa.11.sroa.8.sroa.8), !dbg !58885
  br label %bb.ot, !dbg !58886

bb.on:                                            ; preds = %bb.ol
    #dbg_value(i8 %i.ajf, !55219, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54863)
  %.sroa.4216.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1, !dbg !58887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5123.i.sroa.0, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4216.0..sroa_idx.i, i64 7, i1 false), !dbg !58887, !noalias !57697
  %.sroa.4216.i.sroa.4.0..sroa.4216.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !58887
  %.sroa.4216.i.sroa.4.0.copyload = load i8, ptr %.sroa.4216.i.sroa.4.0..sroa.4216.0..sroa_idx.i.sroa_idx, align 8, !dbg !58887, !noalias !57697 ; 2 uses
    #dbg_value(i8 %.sroa.4216.i.sroa.4.0.copyload, !55219, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57819)
  %.sroa.4216.i.sroa.5.0..sroa.4216.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 9, !dbg !58887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7118.i1499.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4216.i.sroa.5.0..sroa.4216.0..sroa_idx.i.sroa_idx, i64 7, i1 false), !dbg !58887
  %.sroa.4216.i.sroa.6.0..sroa.4216.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !58887 ; 2 uses
    #dbg_value(i64 poison, !55219, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57819)
  %.sroa.4216.i.sroa.7.0..sroa.4216.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !58887
    #dbg_value(i64 poison, !55219, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57819)
  %i.ajj = load <2 x i64>, ptr %.sroa.4216.i.sroa.7.0..sroa.4216.0..sroa_idx.i.sroa_idx, align 8, !dbg !58887, !noalias !57697
  %i.ajk = load <2 x i64>, ptr %.sroa.4216.i.sroa.6.0..sroa.4216.0..sroa_idx.i.sroa_idx, align 8, !dbg !58887, !noalias !57697
  %.sroa.4216.i.sroa.6.0.copyload = load i64, ptr %.sroa.4216.i.sroa.6.0..sroa.4216.0..sroa_idx.i.sroa_idx, align 8, !dbg !58887, !noalias !57697
    #dbg_value(i64 poison, !55219, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57819)
    #dbg_value(i64 poison, !55219, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57819)
  %.sroa.4216.i.sroa.7.sroa.4.sroa.4.0..sroa.4216.i.sroa.7.sroa.4.0..sroa.4216.i.sroa.7.0..sroa.4216.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40, !dbg !58887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7118.i1499.sroa.10.sroa.8.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4216.i.sroa.7.sroa.4.sroa.4.0..sroa.4216.i.sroa.7.sroa.4.0..sroa.4216.i.sroa.7.0..sroa.4216.0..sroa_idx.i.sroa_idx.sroa_idx.sroa_idx, i64 40, i1 false), !dbg !58887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !58884, !noalias !57697
    #dbg_value(ptr poison, !55190, !DIExpression(), !54864)
    #dbg_value(ptr poison, !55192, !DIExpression(), !54865)
  %i.ajl = icmp eq i8 %i.ajf, 22, !dbg !58888
  br i1 %i.ajl, label %bb.op, label %bb.oo, !dbg !58888

bb.oo:                                            ; preds = %bb.on
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !58889, !noalias !57697
  store i8 %i.ajf, ptr %i.h, align 8, !dbg !58889, !noalias !57697
  %.sroa.5123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1, !dbg !58889
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5123.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5123.i.sroa.0, i64 7, i1 false), !dbg !58889, !noalias !57697
  %.sroa.5123.i.sroa.5.0..sroa.5123.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !58889
  store i8 %.sroa.4216.i.sroa.4.0.copyload, ptr %.sroa.5123.i.sroa.5.0..sroa.5123.0..sroa_idx.i.sroa_idx, align 8, !dbg !58889, !noalias !57697
  %.sroa.5123.i.sroa.6.0..sroa.5123.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 9, !dbg !58889
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5123.i.sroa.6.0..sroa.5123.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7118.i1499.sroa.8, i64 7, i1 false), !dbg !58889
  %.sroa.5123.i.sroa.7.0..sroa.5123.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !58889
  store <2 x i64> %i.ajk, ptr %.sroa.5123.i.sroa.7.0..sroa.5123.0..sroa_idx.i.sroa_idx, align 8, !dbg !58889, !noalias !57697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !58890, !noalias !57697
    #dbg_value(ptr %i.h, !55195, !DIExpression(), !54866)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !58891, !noalias !57697
  store ptr %i.h, ptr %i.e, align 8, !dbg !58891, !noalias !57697
  %.sroa.4220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !58891
  store ptr @_RNvXs_NtNtCs5yXxDE1DkoT_4tera7parsing5lexerNtB4_5TokenNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.4220.0..sroa_idx.i, align 8, !dbg !58891, !noalias !57697
    #dbg_value(ptr @114, !57717, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57820)
    #dbg_value(ptr %i.e, !57717, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57820)
    #dbg_value(ptr null, !3303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54869)
    #dbg_value(i64 undef, !3303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54869)
    #dbg_value(ptr poison, !3324, !DIExpression(), !54869)
    #dbg_declare(ptr poison, !3325, !DIExpression(), !54870)
    #dbg_value(ptr poison, !3329, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !54872)
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @114, ptr noundef nonnull %i.e)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1555 unwind label %bb.oq, !dbg !58892

bb.op:                                            ; preds = %bb.on
    #dbg_value(i8 %i.ajf, !55189, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54873)
    #dbg_value(i8 %i.ajf, !55206, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54874)
  %.sroa.4128.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1, !dbg !58893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4128.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5123.i.sroa.0, i64 7, i1 false), !dbg !58894, !noalias !57697
    #dbg_value(i8 %.sroa.4216.i.sroa.4.0.copyload, !55206, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57822)
    #dbg_value(i64 poison, !55206, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57822)
    #dbg_value(i64 poison, !55206, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57822)
    #dbg_value(i64 poison, !55206, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57822)
    #dbg_value(i8 %i.ajf, !55221, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54875)
    #dbg_value(i8 %.sroa.4216.i.sroa.4.0.copyload, !55221, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57823)
    #dbg_value(i64 poison, !55221, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57823)
    #dbg_value(i64 poison, !55221, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57823)
    #dbg_value(i64 poison, !55221, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57823)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7113.i.sroa.9), !dbg !58885
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7113.i.sroa.11.sroa.8.sroa.8), !dbg !58885
    #dbg_value(i8 %i.ajf, !55199, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54876)
    #dbg_value(i8 %.sroa.4216.i.sroa.4.0.copyload, !55199, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57824)
  %.sroa.4128.i.sroa.5.0..sroa.4128.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 9, !dbg !58893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4128.i.sroa.5.0..sroa.4128.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7118.i1499.sroa.8, i64 7, i1 false), !dbg !58876
    #dbg_value(i64 poison, !55199, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57824)
    #dbg_value(i64 poison, !55199, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57824)
    #dbg_value(i64 poison, !55199, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57824)
  %.sroa.4128.i.sroa.7.sroa.5.0..sroa.4128.i.sroa.7.0..sroa.4128.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40, !dbg !58893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4128.i.sroa.7.sroa.5.0..sroa.4128.i.sroa.7.0..sroa.4128.0..sroa_idx.i.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7118.i1499.sroa.10.sroa.8.sroa.8, i64 40, i1 false), !dbg !58876
  store i8 22, ptr %i.j, align 8, !dbg !58893, !noalias !57697
  %.sroa.4128.i.sroa.4.0..sroa.4128.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !58893
  store i8 %.sroa.4216.i.sroa.4.0.copyload, ptr %.sroa.4128.i.sroa.4.0..sroa.4128.0..sroa_idx.i.sroa_idx, align 8, !dbg !58893, !noalias !57697
  %.sroa.4128.i.sroa.6.0..sroa.4128.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !58893
  store i64 %.sroa.4216.i.sroa.6.0.copyload, ptr %.sroa.4128.i.sroa.6.0..sroa.4128.0..sroa_idx.i.sroa_idx, align 8, !dbg !58893, !noalias !57697
  %.sroa.4128.i.sroa.7.0..sroa.4128.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !58893
  store <2 x i64> %i.ajj, ptr %.sroa.4128.i.sroa.7.0..sroa.4128.0..sroa_idx.i.sroa_idx, align 8, !dbg !58893, !noalias !57697
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenNtNtBI_5utils4SpanEEBI_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.j)
          to label %bb.ou unwind label %bb.ok, !dbg !58895, !noalias !57704, !inline_history !54714

bb.oq:                                            ; preds = %bb.oo, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1555
  %i.ajm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #25
          to label %bb.oj unwind label %bb.mx, !dbg !58896, !noalias !57704, !inline_history !54714

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1555: ; preds = %bb.oo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !58897, !noalias !57697
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.agg)
          to label %bb.or unwind label %bb.oq, !dbg !58890, !noalias !57704, !inline_history !54714

bb.or:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1555
  %.sroa.7113.i.sroa.6.7.copyload = load i8, ptr %i.g, align 8, !dbg !58898, !noalias !57697
    #dbg_value(i8 %.sroa.7113.i.sroa.6.7.copyload, !55206, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !57822)
  %.sroa.7113.i.sroa.9.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1, !dbg !58898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7113.i.sroa.9, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7113.i.sroa.9.7..sroa_idx, i64 7, i1 false), !dbg !58898, !noalias !57697
  %.sroa.7113.i.sroa.10.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !58898
    #dbg_value(i64 poison, !55206, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57822)
  %i.ajn = load <2 x i64>, ptr %.sroa.7113.i.sroa.10.7..sroa_idx, align 8, !dbg !58898, !noalias !57697
    #dbg_value(i64 poison, !55206, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57822)
  %.sroa.7113.i.sroa.11.sroa.8.0..sroa.7113.i.sroa.11.7..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !58898
  %.sroa.7113.i.sroa.11.sroa.8.sroa.0.0.copyload = load i64, ptr %.sroa.7113.i.sroa.11.sroa.8.0..sroa.7113.i.sroa.11.7..sroa_idx.sroa_idx, align 8, !dbg !58898, !noalias !57697
    #dbg_value(i64 %.sroa.7113.i.sroa.11.sroa.8.sroa.0.0.copyload, !55206, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57822)
  %.sroa.7113.i.sroa.11.sroa.8.sroa.8.0..sroa.7113.i.sroa.11.sroa.8.0..sroa.7113.i.sroa.11.7..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32, !dbg !58898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %.sroa.7113.i.sroa.11.sroa.8.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7113.i.sroa.11.sroa.8.sroa.8.0..sroa.7113.i.sroa.11.sroa.8.0..sroa.7113.i.sroa.11.7..sroa_idx.sroa_idx.sroa_idx, i64 40, i1 false), !dbg !58898, !noalias !57697
    #dbg_value(i8 -1, !55206, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !54874)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !58899, !noalias !57697
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h)
          to label %bb.os unwind label %bb.ok, !dbg !58896, !noalias !57704, !inline_history !54714

bb.os:                                            ; preds = %bb.or
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !58896, !noalias !57697
    #dbg_value(i8 %.sroa.7113.i.sroa.6.7.copyload, !55205, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57825)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6108.i.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7113.i.sroa.9, i64 7, i1 false), !dbg !58900, !noalias !57697
    #dbg_value(i64 poison, !55205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57825)
    #dbg_value(i64 poison, !55205, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57825)
    #dbg_value(i64 %.sroa.7113.i.sroa.11.sroa.8.sroa.0.0.copyload, !55205, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57825)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6108.i.sroa.10.sroa.8, ptr noundef nonnull align 1 dereferenceable(40) %.sroa.7113.i.sroa.11.sroa.8.sroa.8, i64 40, i1 false), !dbg !58900, !noalias !57697
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7113.i.sroa.9), !dbg !58885
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7113.i.sroa.11.sroa.8.sroa.8), !dbg !58885
    #dbg_value(i8 %.sroa.7113.i.sroa.6.7.copyload, !55198, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57826)
    #dbg_value(i8 %.sroa.7113.i.sroa.6.7.copyload, !55111, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57827)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6108.i.sroa.8, i64 7, i1 false), !dbg !58885, !noalias !57624
    #dbg_value(i64 poison, !55198, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57826)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57827)
    #dbg_value(i64 poison, !55111, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57827)
    #dbg_value(i64 poison, !55198, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57826)
    #dbg_value(i64 %.sroa.7113.i.sroa.11.sroa.8.sroa.0.0.copyload, !55111, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57827)
    #dbg_value(i64 %.sroa.7113.i.sroa.11.sroa.8.sroa.0.0.copyload, !55198, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57826)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.27.sroa.20.sroa.20, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6108.i.sroa.10.sroa.8, i64 40, i1 false), !dbg !58885, !noalias !57624
    #dbg_value(i8 %.sroa.7113.i.sroa.6.7.copyload, !55110, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57828)
    #dbg_value(i64 poison, !55110, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57828)
    #dbg_value(i64 poison, !55110, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57828)
    #dbg_value(i64 %.sroa.7113.i.sroa.11.sroa.8.sroa.0.0.copyload, !55110, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57828)
    #dbg_value(i8 %.sroa.7113.i.sroa.6.7.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.7113.i.sroa.11.sroa.8.sroa.0.0.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
  br label %bb.ot, !dbg !58895

bb.ot:                                            ; preds = %bb.os, %bb.om
  %.sroa.27.sroa.20.sroa.0.3 = phi i64 [ %.sroa.62712.sroa.4.sroa.0.0.copyload, %bb.om ], [ %.sroa.7113.i.sroa.11.sroa.8.sroa.0.0.copyload, %bb.os ], !dbg !58901
  %.sroa.01853.10 = phi i8 [ %.sroa.02709.0.copyload, %bb.om ], [ %.sroa.7113.i.sroa.6.7.copyload, %bb.os ], !dbg !58901
  %i.ajo = phi <2 x i64> [ %i.aji, %bb.om ], [ %i.ajn, %bb.os ], !dbg !58901
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.27.sroa.20.sroa.0.3, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
    #dbg_value(i8 %.sroa.01853.10, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6108.i.sroa.8), !dbg !58895
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6108.i.sroa.10.sroa.8), !dbg !58895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !58895, !noalias !57697
  br label %bb.pd, !dbg !58886

bb.ou:                                            ; preds = %bb.op
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6108.i.sroa.8), !dbg !58895
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6108.i.sroa.10.sroa.8), !dbg !58895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !58895, !noalias !57697
    #dbg_value(ptr undef, !3339, !DIExpression(), !53631)
    #dbg_value(ptr %i.agg, !3343, !DIExpression(), !53631)
    #dbg_value(i64 poison, !55127, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !57696)
  %i.ajp = load <2 x i64>, ptr %i.agi, align 8, !dbg !58902, !alias.scope !57830, !noalias !57831
    #dbg_value(i64 poison, !55127, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !57696)
  %i.ajq = load i64, ptr %i.agk, align 8, !dbg !58903, !alias.scope !57830, !noalias !57831, !noundef !1314
    #dbg_value(i64 %i.ajq, !55127, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57696)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !58904, !noalias !57697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !58905, !noalias !57697
    #dbg_value(ptr %i.ap, !57660, !DIExpression(), !54880)
    #dbg_value(ptr %i.ap, !57657, !DIExpression(), !54881)
    #dbg_value(ptr %i.ap, !57832, !DIExpression(), !54884)
    #dbg_value(ptr %i.ap, !57834, !DIExpression(), !54887)
  %i.ajr = load ptr, ptr %.sroa.42536.0..sroa_idx, align 8, !dbg !58906, !noalias !57697, !nonnull !1314, !noundef !1314
  %i.ajs = load i64, ptr %i.aiy, align 16, !dbg !58907, !noalias !57697, !noundef !1314 ; 5 uses
    #dbg_value(ptr %i.ajr, !57658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54893)
    #dbg_value(ptr %i.ajr, !57655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54894)
    #dbg_value(ptr %i.ajr, !57653, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54895)
    #dbg_value(i64 %i.ajs, !57658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54893)
    #dbg_value(i64 %i.ajs, !57655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54894)
    #dbg_value(i64 %i.ajs, !57653, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54895)
    #dbg_value(ptr %i.ajr, !57651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54896)
    #dbg_value(ptr %i.ajr, !57649, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54897)
    #dbg_value(ptr %i.ajr, !57647, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54898)
    #dbg_value(ptr %i.ajr, !57663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54899)
    #dbg_value(i64 %i.ajs, !57651, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54896)
    #dbg_value(i64 %i.ajs, !57649, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54897)
    #dbg_value(i64 %i.ajs, !57647, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54898)
    #dbg_value(i64 %i.ajs, !57663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54899)
    #dbg_value(i64 %i.ajs, !57664, !DIExpression(), !54900)
    #dbg_value(i64 %i.ajs, !57668, !DIExpression(), !54901)
    #dbg_value(i64 %i.ajs, !57671, !DIExpression(), !54902)
    #dbg_value(i64 %i.ajs, !57840, !DIExpression(), !54905)
    #dbg_value(i64 %i.ajs, !57844, !DIExpression(), !54908)
    #dbg_value(i64 %i.ajs, !57683, !DIExpression(), !54909)
    #dbg_value(i64 %i.ajs, !57690, !DIExpression(), !54703)
    #dbg_value(i64 1, !57684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54909)
    #dbg_value(i64 1, !57691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54703)
    #dbg_value(i64 1, !57684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54909)
    #dbg_value(i64 1, !57691, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !54703)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !58908, !noalias !57697
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ajs, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ov unwind label %bb.ok, !dbg !58908, !noalias !57704, !inline_history !54714

bb.ov:                                            ; preds = %bb.ou
  %i.ajt = load i64, ptr %i.a, align 8, !dbg !58908, !range !3205, !noalias !57697, !noundef !1314
  %i.aju = trunc nuw i64 %i.ajt to i1, !dbg !58909
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !58910
  %i.ajw = load i64, ptr %i.ajv, align 8, !dbg !58910, !range !3206, !noalias !57697, !noundef !1314 ; 3 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !58910 ; 2 uses
  br i1 %i.aju, label %bb.ow, label %bb.ox, !dbg !58909, !prof !3207

end_hunk_10
begin_hunk_11_@_RNvMs_NtNtCs5yXxDE1DkoT_4tera7parsing6parserNtB4_6Parser9parse_tag:bb.a
    #dbg_value(i64 %.sroa.4130.i.sroa.0.0.copyload, !55200, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57848)
  %.sroa.4130.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !58924
  %.sroa.4130.i.sroa.4.0.copyload = load i64, ptr %.sroa.4130.i.sroa.4.0..sroa_idx, align 8, !dbg !58924, !noalias !57697
    #dbg_value(i64 %.sroa.4130.i.sroa.4.0.copyload, !55200, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57848)
  %.sroa.4130.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !58924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.27.sroa.20.sroa.20, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4130.i.sroa.5.0..sroa_idx, i64 40, i1 false), !dbg !58924, !noalias !57624
    #dbg_value(i64 11, !55200, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !54917)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !58925, !noalias !57697
    #dbg_value(i64 11, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
    #dbg_value(i64 %.sroa.4130.i.sroa.0.0.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.4130.i.sroa.4.0.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
    #dbg_value(i8 -1, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.pb unwind label %.split, !dbg !58880, !noalias !57704, !inline_history !54714

bb.pb:                                            ; preds = %bb.pa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !58880, !noalias !57697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !58836, !noalias !57697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !58926, !noalias !57697
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.thread2818 unwind label %bb.x, !dbg !58743, !inline_history !54714

.thread2818:                                      ; preds = %bb.pb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !58743, !noalias !57697
    #dbg_value(i8 -1, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 11, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5123.i.sroa.0), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.590.i.sroa.0), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.554.i.sroa.0), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.532.i.sroa.0), !dbg !58744
  %i.akg = insertelement <2 x i64> <i64 11, i64 poison>, i64 %.sroa.4130.i.sroa.0.0.copyload, i64 1
  br label %bb.pq, !dbg !58745

bb.pc:                                            ; preds = %bb.ow
  unreachable

bb.pd:                                            ; preds = %bb.pe, %bb.ot
  %.sroa.27.sroa.20.sroa.0.4 = phi i64 [ %.sroa.27.sroa.20.sroa.0.3, %bb.ot ], [ %.sroa.27.sroa.20.sroa.0.0.copyload, %bb.pe ], !dbg !57829
  %.sroa.01853.9 = phi i8 [ %.sroa.01853.10, %bb.ot ], [ %.sroa.01853.0.copyload1856, %bb.pe ], !dbg !57829
  %i.akh = phi <2 x i64> [ %i.ajo, %bb.ot ], [ %i.aki, %bb.pe ], !dbg !57829
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.27.sroa.20.sroa.0.4, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
    #dbg_value(i8 %.sroa.01853.9, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.pf unwind label %.split.thread, !dbg !58880, !noalias !57704, !inline_history !54714

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1557: ; preds = %bb.oh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !58927, !noalias !57697
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.agg)
          to label %bb.pe unwind label %bb.ok, !dbg !58873, !noalias !57704, !inline_history !54714

bb.pe:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1557
  %.sroa.01853.0.copyload1856 = load i8, ptr %i.m, align 8, !dbg !58928, !noalias !57624
    #dbg_value(i8 %.sroa.01853.0.copyload1856, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
  %.sroa.20.0..sroa_idx1865 = getelementptr inbounds nuw i8, ptr %i.m, i64 1, !dbg !58928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20.0..sroa_idx1865, i64 7, i1 false), !dbg !58928, !noalias !57624
  %.sroa.25.0..sroa_idx1876 = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !58928
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
  %i.aki = load <2 x i64>, ptr %.sroa.25.0..sroa_idx1876, align 8, !dbg !58928, !noalias !57624
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
  %.sroa.27.sroa.20.0..sroa.27.0..sroa_idx1896.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24, !dbg !58928
  %.sroa.27.sroa.20.sroa.0.0.copyload = load i64, ptr %.sroa.27.sroa.20.0..sroa.27.0..sroa_idx1896.sroa_idx, align 8, !dbg !58928, !noalias !57624
    #dbg_value(i64 %.sroa.27.sroa.20.sroa.0.0.copyload, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
  %.sroa.27.sroa.20.sroa.20.0..sroa.27.sroa.20.0..sroa.27.0..sroa_idx1896.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32, !dbg !58928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.27.sroa.20.sroa.20, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.27.sroa.20.sroa.20.0..sroa.27.sroa.20.0..sroa.27.0..sroa_idx1896.sroa_idx.sroa_idx, i64 40, i1 false), !dbg !58928, !noalias !57624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !58929, !noalias !57697
  br label %bb.pd, !dbg !58886

bb.pf:                                            ; preds = %bb.pd, %bb.oe
  %.sroa.27.sroa.20.sroa.0.5 = phi i64 [ %.sroa.27.sroa.20.sroa.0.4, %bb.pd ], [ %.sroa.4200.i.sroa.5.sroa.4.0.copyload, %bb.oe ], !dbg !58858
  %.sroa.01853.8 = phi i8 [ %.sroa.01853.9, %bb.pd ], [ %i.aiu, %bb.oe ], !dbg !58858
  %i.akj = phi <2 x i64> [ %i.akh, %bb.pd ], [ %i.aiv, %bb.oe ], !dbg !58858
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.27.sroa.20.sroa.0.5, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
    #dbg_value(i8 %.sroa.01853.8, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !58880, !noalias !57697
  br label %bb.pg, !dbg !58842

bb.pg:                                            ; preds = %bb.ph, %bb.pf, %bb.ob
  %.sroa.27.sroa.20.sroa.0.6 = phi i64 [ %.sroa.27.sroa.20.sroa.0.0.copyload2933, %bb.ph ], [ %.sroa.27.sroa.20.sroa.0.2, %bb.ob ], [ %.sroa.27.sroa.20.sroa.0.5, %bb.pf ], !dbg !57785
  %.sroa.01853.7 = phi i8 [ %.sroa.01853.0.copyload1860, %bb.ph ], [ %.sroa.01853.6, %bb.ob ], [ %.sroa.01853.8, %bb.pf ], !dbg !57785
  %i.akk = phi <2 x i64> [ %i.akl, %bb.ph ], [ %i.ait, %bb.ob ], [ %i.akj, %bb.pf ], !dbg !57785
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.27.sroa.20.sroa.0.6, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
    #dbg_value(i8 %.sroa.01853.7, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z)
          to label %bb.pi unwind label %bb.mn, !dbg !58836, !noalias !57704, !inline_history !54714

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1561: ; preds = %bb.nr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !58930, !noalias !57697
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.agg)
          to label %bb.ph unwind label %.split.thread, !dbg !58833, !noalias !57704, !inline_history !54714

bb.ph:                                            ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs5yXxDE1DkoT_4tera.exit1561
  %.sroa.01853.0.copyload1860 = load i8, ptr %i.x, align 8, !dbg !58931, !noalias !57624
    #dbg_value(i8 %.sroa.01853.0.copyload1860, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
  %.sroa.20.0..sroa_idx1869 = getelementptr inbounds nuw i8, ptr %i.x, i64 1, !dbg !58931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20.0..sroa_idx1869, i64 7, i1 false), !dbg !58931, !noalias !57624
  %.sroa.25.0..sroa_idx1884 = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !58931
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
  %i.akl = load <2 x i64>, ptr %.sroa.25.0..sroa_idx1884, align 8, !dbg !58931, !noalias !57624
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
  %.sroa.27.sroa.20.0..sroa.27.0..sroa_idx1900.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !58931
  %.sroa.27.sroa.20.sroa.0.0.copyload2933 = load i64, ptr %.sroa.27.sroa.20.0..sroa.27.0..sroa_idx1900.sroa_idx, align 8, !dbg !58931, !noalias !57624
    #dbg_value(i64 %.sroa.27.sroa.20.sroa.0.0.copyload2933, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
  %.sroa.27.sroa.20.sroa.20.0..sroa.27.sroa.20.0..sroa.27.0..sroa_idx1900.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32, !dbg !58931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.27.sroa.20.sroa.20, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.27.sroa.20.sroa.20.0..sroa.27.sroa.20.0..sroa.27.0..sroa_idx1900.sroa_idx.sroa_idx, i64 40, i1 false), !dbg !58931, !noalias !57624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !58932, !noalias !57697
  br label %bb.pg, !dbg !58842

bb.pi:                                            ; preds = %bb.pg, %bb.nm
  %.sroa.27.sroa.20.sroa.0.7 = phi i64 [ %.sroa.27.sroa.20.sroa.0.6, %bb.pg ], [ %.sroa.4175.i.sroa.5.sroa.4.0.copyload, %bb.nm ], !dbg !57728
  %.sroa.01853.5 = phi i8 [ %.sroa.01853.7, %bb.pg ], [ %i.ahz, %bb.nm ], !dbg !57728
  %i.akm = phi <2 x i64> [ %i.akk, %bb.pg ], [ %i.aia, %bb.nm ], !dbg !57728
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.27.sroa.20.sroa.0.7, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
    #dbg_value(i8 %.sroa.01853.5, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !58836, !noalias !57697
  br label %bb.pj, !dbg !58767

.thread2814:                                      ; preds = %.split.thread, %bb.ny, %bb.ns
  %.pn330.i2817 = phi { ptr, i32 } [ %.pn.i1505, %bb.ns ], [ %i.air, %bb.ny ], [ %lpad.thr_comm, %.split.thread ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast4NodeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #25
          to label %bb.pn unwind label %bb.mx, !dbg !58836, !noalias !57704, !inline_history !54714

bb.pj:                                            ; preds = %bb.pi, %bb.nh, %bb.mw
  %.sroa.27.sroa.20.sroa.0.8 = phi i64 [ %.sroa.27.sroa.20.sroa.0.0, %bb.mw ], [ %.sroa.27.sroa.20.sroa.0.1, %bb.nh ], [ %.sroa.27.sroa.20.sroa.0.7, %bb.pi ], !dbg !57728
  %.sroa.01853.3 = phi i8 [ %.sroa.01853.2, %bb.mw ], [ %.sroa.01853.4, %bb.nh ], [ %.sroa.01853.5, %bb.pi ], !dbg !57728
  %i.akn = phi <2 x i64> [ %i.ahf, %bb.mw ], [ %i.ahq, %bb.nh ], [ %i.akm, %bb.pi ], !dbg !57728
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.27.sroa.20.sroa.0.8, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
    #dbg_value(i8 %.sroa.01853.3, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an)
          to label %bb.pk unwind label %bb.mj, !dbg !58926, !noalias !57704, !inline_history !54714

bb.pk:                                            ; preds = %bb.pj, %bb.ml
  %.sroa.27.sroa.20.sroa.0.9 = phi i64 [ %.sroa.27.sroa.20.sroa.0.8, %bb.pj ], [ %.sroa.4146.i.sroa.5.sroa.4.0.copyload, %bb.ml ], !dbg !58933 ; 2 uses
  %.sroa.01853.1 = phi i8 [ %.sroa.01853.3, %bb.pj ], [ %i.agr, %bb.ml ], !dbg !58933 ; 2 uses
  %i.ako = phi <2 x i64> [ %i.akn, %bb.pj ], [ %i.ags, %bb.ml ], !dbg !58933 ; 2 uses
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.27.sroa.20.sroa.0.9, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
    #dbg_value(i8 %.sroa.01853.1, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !58926, !noalias !57697
    #dbg_value(ptr %i.ap, !3230, !DIExpression(), !54919)
    #dbg_value(ptr %i.ap, !3235, !DIExpression(), !54921)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i unwind label %bb.pl, !dbg !58934

bb.pl:                                            ; preds = %bb.pk
  %i.akp = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ap, !3240, !DIExpression(), !54923)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.body1492 unwind label %bb.pm, !dbg !58935

bb.pm:                                            ; preds = %bb.pl
  %i.akq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #26, !dbg !58934
  unreachable, !dbg !58934

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.pk
    #dbg_value(ptr %i.ap, !3240, !DIExpression(), !54925)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.po unwind label %bb.x, !dbg !58936

bb.pn:                                            ; preds = %bb.mn, %.thread2814, %bb.ne, %bb.mt
  %.pn332.i.ph = phi { ptr, i32 } [ %i.ahd, %bb.mt ], [ %i.aho, %bb.ne ], [ %.pn330.i2817, %.thread2814 ], [ %i.agv, %bb.mn ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast8MapEntryEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.an) #25
          to label %bb.mi unwind label %bb.mx, !dbg !58926, !noalias !57704, !inline_history !54714

bb.po:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECs5yXxDE1DkoT_4tera.exit.i
    #dbg_value(i8 %.sroa.01853.1, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !58743, !noalias !57697
    #dbg_value(i8 %.sroa.01853.1, !55391, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57702)
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5123.i.sroa.0), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.590.i.sroa.0), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.554.i.sroa.0), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !58744
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.532.i.sroa.0), !dbg !58744
  %.not1370 = icmp eq i8 %.sroa.01853.1, -1, !dbg !58937
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57702)
  br i1 %.not1370, label %bb.pq, label %bb.pp, !dbg !58745

bb.pp:                                            ; preds = %.thread2823, %bb.po
  %.sroa.27.sroa.20.sroa.0.10 = phi i64 [ %.sroa.27.sroa.20.sroa.0.9, %bb.po ], [ %.sroa.4137.i.sroa.5.sroa.4.0.copyload, %.thread2823 ], !dbg !58938
  %.sroa.01853.02828 = phi i8 [ %.sroa.01853.1, %bb.po ], [ %i.agm, %.thread2823 ]
  %i.akr = phi <2 x i64> [ %i.ako, %bb.po ], [ %i.agn, %.thread2823 ]
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.27.sroa.20.sroa.0.10, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
    #dbg_value(i8 %.sroa.01853.02828, !55390, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57850)
  %.sroa.4695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !58939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4695.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.20, i64 7, i1 false), !dbg !58940
    #dbg_value(i64 poison, !55390, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57850)
    #dbg_value(i64 poison, !55390, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57850)
    #dbg_value(i64 %.sroa.27.sroa.20.sroa.0.10, !55390, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57850)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6361.sroa.7.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.27.sroa.20.sroa.20, i64 40, i1 false), !dbg !58940
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20), !dbg !58941
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27.sroa.20.sroa.20), !dbg !58941
    #dbg_value(i8 %.sroa.01853.02828, !55095, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57851)
    #dbg_value(i8 %.sroa.01853.02828, !55361, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57852)
    #dbg_value(i64 poison, !55361, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57852)
    #dbg_value(i64 poison, !55095, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57851)
    #dbg_value(i64 poison, !55095, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57851)
    #dbg_value(i64 poison, !55361, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57852)
    #dbg_value(i64 %.sroa.27.sroa.20.sroa.0.10, !55095, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57851)
    #dbg_value(i64 %.sroa.27.sroa.20.sroa.0.10, !55361, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57852)
  %.sroa.4695.sroa.5.sroa.5.0..sroa.4695.sroa.5.0..sroa.4695.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !58939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4695.sroa.5.sroa.5.0..sroa.4695.sroa.5.0..sroa.4695.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6361.sroa.7.sroa.8, i64 40, i1 false), !dbg !58941
    #dbg_value(i8 %.sroa.01853.02828, !55358, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !57853)
    #dbg_value(i64 poison, !55358, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57853)
    #dbg_value(i64 poison, !55358, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57853)
    #dbg_value(i64 %.sroa.27.sroa.20.sroa.0.10, !55358, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57853)
  %i.aks = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !58939
  store i8 %.sroa.01853.02828, ptr %i.aks, align 8, !dbg !58939
  %.sroa.4695.sroa.4.0..sroa.4695.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !58939
  store <2 x i64> %i.akr, ptr %.sroa.4695.sroa.4.0..sroa.4695.0..sroa_idx.sroa_idx, align 8, !dbg !58939
  %.sroa.4695.sroa.5.sroa.4.0..sroa.4695.sroa.5.0..sroa.4695.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !58939
  store i64 %.sroa.27.sroa.20.sroa.0.10, ptr %.sroa.4695.sroa.5.sroa.4.0..sroa.4695.sroa.5.0..sroa.4695.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !58939
  store i64 -2, ptr %0, align 8, !dbg !58939
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6361.sroa.7.sroa.8), !dbg !58942
  br label %bb.aj, !dbg !57958

bb.pq:                                            ; preds = %.thread2818, %bb.po
  %.sroa.27.sroa.20.sroa.0.11 = phi i64 [ %.sroa.27.sroa.20.sroa.0.9, %bb.po ], [ %.sroa.4130.i.sroa.4.0.copyload, %.thread2818 ], !dbg !57728
  %i.akt = phi <2 x i64> [ %i.ako, %bb.po ], [ %i.akg, %.thread2818 ]
    #dbg_value(i64 poison, !55391, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57702)
    #dbg_value(i64 %.sroa.27.sroa.20.sroa.0.11, !55391, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !57702)
    #dbg_value(i64 poison, !55394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57854)
    #dbg_value(i64 poison, !55394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57854)
    #dbg_value(i64 %.sroa.27.sroa.20.sroa.0.11, !55394, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57854)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6361.sroa.7.sroa.8, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.27.sroa.20.sroa.20, i64 40, i1 false), !dbg !58943
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20), !dbg !58941
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27.sroa.20.sroa.20), !dbg !58941
    #dbg_value(i64 poison, !55094, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57855)
    #dbg_value(i64 poison, !55094, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57855)
    #dbg_value(i64 %.sroa.27.sroa.20.sroa.0.11, !55094, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57855)
  %.sroa.4370.sroa.4.sroa.5.0..sroa.4370.sroa.4.0..sroa.4370.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !58944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4370.sroa.4.sroa.5.0..sroa.4370.sroa.4.0..sroa.4370.0..sroa_idx.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6361.sroa.7.sroa.8, i64 40, i1 false), !dbg !55396
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6361.sroa.7.sroa.8), !dbg !58942
  store i64 16, ptr %0, align 8, !dbg !58944
  %.sroa.4370.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !58944
  store <2 x i64> %i.akt, ptr %.sroa.4370.0..sroa_idx, align 8, !dbg !58944
  %.sroa.4370.sroa.4.sroa.4.0..sroa.4370.sroa.4.0..sroa.4370.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !58944
  store i64 %.sroa.27.sroa.20.sroa.0.11, ptr %.sroa.4370.sroa.4.sroa.4.0..sroa.4370.sroa.4.0..sroa.4370.0..sroa_idx.sroa_idx.sroa_idx, align 8, !dbg !58944
  br label %bb.an, !dbg !58945

bb.pr:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_.exit1439, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing5lexer5TokenEBH_.exit, %bb.b
  ret void, !dbg !57978

bb.ps:                                            ; preds = %bb.mf
  %i.aku = load i64, ptr %i.ck, align 8, !dbg !58729, !range !3205, !noundef !1314
  %i.akv = trunc nuw i64 %i.aku to i1, !dbg !58946
  %i.akw = getelementptr inbounds nuw i8, ptr %i.ck, i64 8, !dbg !57623
  %i.akx = load i64, ptr %i.akw, align 8, !dbg !57623, !range !3206, !noundef !1314 ; 3 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %i.ck, i64 16, !dbg !57623 ; 2 uses
  br i1 %i.akv, label %bb.pt, label %bb.pu, !dbg !58946, !prof !3207

bb.pt:                                            ; preds = %bb.ps
  %i.akz = load i64, ptr %i.aky, align 8, !dbg !58947
    #dbg_value(i64 %i.akx, !56041, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57856)
    #dbg_value(i64 %i.akz, !56041, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57856)
  br label %.invoke, !dbg !58948

bb.pu:                                            ; preds = %bb.ps
  %i.ala = load ptr, ptr %i.aky, align 8, !dbg !58949, !nonnull !1314, !noundef !1314 ; 2 uses
    #dbg_value(i64 %i.akx, !56040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57857)
    #dbg_value(ptr %i.ala, !56040, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57857)
    #dbg_value(ptr poison, !56046, !DIExpression(), !57858)
    #dbg_value(ptr poison, !56002, !DIExpression(), !57859)
  %i.alb = icmp samesign ugt i64 %i.akx, 65, !dbg !58950
    #dbg_value(i1 true, !56952, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !57861)
  tail call void @llvm.assume(i1 %i.alb), !dbg !58951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !dbg !58952
    #dbg_value(i64 %i.akx, !57184, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57863)
    #dbg_value(i64 %i.akx, !55987, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57864)
    #dbg_value(ptr %i.ala, !57184, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57863)
    #dbg_value(ptr %i.ala, !55987, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57864)
    #dbg_value(i64 0, !57184, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57863)
    #dbg_value(i64 0, !55987, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57864)
    #dbg_value(ptr @158, !56534, !DIExpression(), !57619)
    #dbg_value(ptr @158, !56540, !DIExpression(), !57622)
    #dbg_value(ptr %i.ala, !56535, !DIExpression(), !57619)
    #dbg_value(ptr %i.ala, !56541, !DIExpression(), !57622)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(66) %i.ala, ptr noundef nonnull align 1 dereferenceable(66) @158, i64 66, i1 false), !dbg !58953
    #dbg_value(i64 66, !57184, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57863)
    #dbg_value(i64 66, !55987, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57864)
  store i64 %i.akx, ptr %i.di, align 8, !dbg !58954
  %.sroa.4688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 8, !dbg !58954
  store ptr %i.ala, ptr %.sroa.4688.0..sroa_idx, align 8, !dbg !58954
  %.sroa.6689.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 16, !dbg !58954
  store i64 66, ptr %.sroa.6689.0..sroa_idx, align 8, !dbg !58954
  %i.alc = getelementptr inbounds nuw i8, ptr %1, i64 400, !dbg !58955
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.dj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.di, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.alc)
          to label %bb.pv unwind label %bb.x, !dbg !58727

bb.pv:                                            ; preds = %bb.pu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !dbg !58956
  %i.ald = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !58957
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ald, ptr noundef nonnull align 8 dereferenceable(72) %i.dj, i64 72, i1 false), !dbg !58957
  store i64 -2, ptr %0, align 8, !dbg !58957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !dbg !58958
  br label %bb.an, !dbg !58958

bb.pw:                                            ; preds = %.thread2758
  %i.ale = load i64, ptr %i.de, align 8, !dbg !57886, !range !3205, !noundef !1314
  %i.alf = trunc nuw i64 %i.ale to i1, !dbg !58959
  %i.alg = getelementptr inbounds nuw i8, ptr %i.de, i64 8, !dbg !56545
  %i.alh = load i64, ptr %i.alg, align 8, !dbg !56545, !range !3206, !noundef !1314 ; 3 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %i.de, i64 16, !dbg !56545 ; 2 uses
  br i1 %i.alf, label %bb.px, label %bb.py, !dbg !58959, !prof !3207

bb.px:                                            ; preds = %bb.pw
  %i.alj = load i64, ptr %i.ali, align 8, !dbg !58960
    #dbg_value(i64 %i.alh, !56020, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57865)
    #dbg_value(i64 %i.alj, !56020, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57865)
  br label %.invoke, !dbg !58961

bb.py:                                            ; preds = %bb.pw
  %i.alk = load ptr, ptr %i.ali, align 8, !dbg !58962, !nonnull !1314, !noundef !1314 ; 2 uses
    #dbg_value(i64 %i.alh, !56019, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57866)
    #dbg_value(ptr %i.alk, !56019, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57866)
    #dbg_value(ptr poison, !56046, !DIExpression(), !57867)
    #dbg_value(ptr poison, !56002, !DIExpression(), !57868)
  %i.all = icmp samesign ugt i64 %i.alh, 10, !dbg !58963
    #dbg_value(i1 true, !56952, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !57870)
  tail call void @llvm.assume(i1 %i.all), !dbg !58964
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !dbg !58965
    #dbg_value(i64 %i.alh, !57184, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57872)
    #dbg_value(i64 %i.alh, !55969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !57873)
    #dbg_value(ptr %i.alk, !57184, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57872)
    #dbg_value(ptr %i.alk, !55969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !57873)
    #dbg_value(i64 0, !57184, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57872)
    #dbg_value(i64 0, !55969, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57873)
    #dbg_value(ptr @147, !56534, !DIExpression(), !56538)
    #dbg_value(ptr @147, !56540, !DIExpression(), !56544)
    #dbg_value(ptr %i.alk, !56535, !DIExpression(), !56538)
    #dbg_value(ptr %i.alk, !56541, !DIExpression(), !56544)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.alk, ptr noundef nonnull align 1 dereferenceable(11) @147, i64 11, i1 false), !dbg !58966
    #dbg_value(i64 11, !57184, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57872)
    #dbg_value(i64 11, !55969, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !57873)
  store i64 %i.alh, ptr %i.dg, align 8, !dbg !58967
  %.sroa.4403.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 8, !dbg !58967
  store ptr %i.alk, ptr %.sroa.4403.0..sroa_idx, align 8, !dbg !58967
  %.sroa.6404.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 16, !dbg !58967
  store i64 11, ptr %.sroa.6404.0..sroa_idx, align 8, !dbg !58967
  %i.alm = getelementptr inbounds nuw i8, ptr %1, i64 400, !dbg !58968
  invoke void @_RNvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB5_5Error12syntax_error(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.dh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.dg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.alm)
          to label %bb.pz unwind label %bb.x, !dbg !57884

bb.pz:                                            ; preds = %bb.py
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !dbg !58969
  %i.aln = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !58970
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aln, ptr noundef nonnull align 8 dereferenceable(72) %i.dh, i64 72, i1 false), !dbg !58970
  store i64 -2, ptr %0, align 8, !dbg !58970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !dbg !58971
  br label %bb.an, !dbg !58971
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define internal fastcc noundef range(i8 -1, 8) i8 @_RNvMsk_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB5_4Type10from_value(i8 %.0.val) unnamed_addr #5 !dbg !58972 {
switch.lookup:
    #dbg_value(ptr poison, !58978, !DIExpression(), !58980)
    #dbg_value(ptr poison, !58981, !DIExpression(), !58984)
  %i.a = icmp ne i8 %.0.val, 10, !dbg !58985
  tail call void @llvm.assume(i1 %i.a), !dbg !58985
  %i.b = add nsw i8 %.0.val, -2, !dbg !58985
  %i.c = icmp samesign ugt i8 %.0.val, 1, !dbg !58985
  %narrow = select i1 %i.c, i8 %i.b, i8 8, !dbg !58985
  %i.d = zext nneg i8 %narrow to i64, !dbg !58986
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMsk_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB5_4Type10from_value, i64 %i.d, !dbg !58986
  %switch.load = load i8, ptr %switch.gep, align 1, !dbg !58986
  ret i8 %switch.load, !dbg !58987
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(inaccessiblemem: write) uwtable
define internal fastcc noundef zeroext i1 @_RNvMsk_NtNtCs5yXxDE1DkoT_4tera7parsing3astNtB5_4Type13matches_value(i8 %.0.val, i8 %.0.val1) unnamed_addr #4 !dbg !58988 {
bb.a:
    #dbg_value(ptr poison, !59000, !DIExpression(), !59003)
    #dbg_value(ptr poison, !59001, !DIExpression(), !59003)
    #dbg_value(ptr poison, !59004, !DIExpression(), !59008)
    #dbg_value(ptr poison, !59009, !DIExpression(), !59012)
end_hunk_11
