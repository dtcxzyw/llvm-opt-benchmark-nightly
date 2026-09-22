Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 595
loop-unroll.NumUnrolled: 720
begin_hunk_0_@_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand7execute:bb.a
_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECskXtk6F4WjxZ_4just.exit.sink.split.i.i: ; preds = %bb.dl, %bb.dk
  %lpad.phi84.i = phi { ptr, i32 } [ %lpad.phi93.i, %bb.dl ], [ %lpad.phi86.i, %bb.dk ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.18.0.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.18.0.i, i64 noundef %.sroa.9.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !68572
  br label %common.resume

bb.dm:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !68573
  store ptr %i.ll, ptr %i.ah, align 8, !noalias !68573
  br i1 %.not.not.not.i, label %bb.dn, label %bb.du

bb.dn:                                            ; preds = %bb.dm
  %i.lo = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @541, i64 noundef 1)
          to label %.noexc.i unwind label %.thread91.i, !noalias !68566 ; 2 uses

.noexc.i:                                         ; preds = %bb.dn
  %.not.i.i.i.i = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i.i, label %bb.do, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i, !prof !29

bb.do:                                            ; preds = %.noexc.i
  %i.lp = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1)
          to label %.noexc32.i unwind label %.thread91.i, !noalias !68566 ; 2 uses

.noexc32.i:                                       ; preds = %bb.do
  %.not.i.i.i.i.i = icmp eq ptr %i.lp, null
  br i1 %.not.i.i.i.i.i, label %bb.dp, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i

bb.dp:                                            ; preds = %.noexc32.i
  %i.lq = invoke fastcc noundef ptr @_RINvNtCshTCYgcDtIbU_10serde_json3ser27format_escaped_str_contentsNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @426, i64 noundef 6)
          to label %.noexc33.i unwind label %.thread91.i, !noalias !68566 ; 2 uses

.noexc33.i:                                       ; preds = %bb.dp
  %.not5.i.i.i.i.i = icmp eq ptr %i.lq, null
  br i1 %.not5.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %.noexc33.i
  %i.lr = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1)
          to label %.noexc34.i unwind label %.thread91.i, !noalias !68566 ; 2 uses

.noexc34.i:                                       ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i
  %.not24.i.i.i.i = icmp eq ptr %i.lr, null
  br i1 %.not24.i.i.i.i, label %bb.dq, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i, !prof !33

bb.dq:                                            ; preds = %.noexc34.i
  %i.ls = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 1)
          to label %.noexc35.i unwind label %.thread91.i, !noalias !68566 ; 2 uses

.noexc35.i:                                       ; preds = %bb.dq
  %.not25.i.i.i.i = icmp eq ptr %i.ls, null
  br i1 %.not25.i.i.i.i, label %bb.dr, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i, !prof !29

bb.dr:                                            ; preds = %.noexc35.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.18.0.i) ]
  %i.lt = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1)
          to label %.noexc36.i unwind label %.thread91.i, !noalias !68566 ; 2 uses

.noexc36.i:                                       ; preds = %bb.dr
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ds, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i

bb.ds:                                            ; preds = %.noexc36.i
  %i.lu = invoke fastcc noundef ptr @_RINvNtCshTCYgcDtIbU_10serde_json3ser27format_escaped_str_contentsNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.18.0.i, i64 noundef %.sroa.24.0.i50)
          to label %.noexc37.i unwind label %.thread91.i, !noalias !68566 ; 2 uses

.noexc37.i:                                       ; preds = %bb.ds
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.lu, null
  br i1 %.not5.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %.noexc37.i
  %i.lv = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1)
          to label %.noexc38.i unwind label %.thread91.i, !noalias !68566 ; 2 uses

.noexc38.i:                                       ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %i.lv, null
  br i1 %.not.i.i.i.i.i.i, label %bb.dt, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i, !prof !33

bb.dt:                                            ; preds = %.noexc38.i
  %i.lw = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @539, i64 noundef 1)
          to label %.noexc39.i unwind label %.thread91.i, !noalias !68566 ; 2 uses

.noexc39.i:                                       ; preds = %bb.dt
  %.not27.i.i.i.i = icmp eq ptr %i.lw, null
  br i1 %.not27.i.i.i.i, label %.thread98.i, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i, !prof !29

.thread98.i:                                      ; preds = %.noexc39.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !68573
  store i64 -1, ptr %0, align 8, !alias.scope !68564, !noalias !68565
  %i.lx = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %i.lx, label %_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand7request.exit, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just7request8ResponseEBF_.exit65.sink.split.i

bb.du:                                            ; preds = %bb.dm
  %i.ly = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @541, i64 noundef 1)
          to label %.noexc40.i unwind label %.thread.i, !noalias !68566 ; 2 uses

.noexc40.i:                                       ; preds = %bb.du
  %.not.i2.i.i.i = icmp eq ptr %i.ly, null
  br i1 %.not.i2.i.i.i, label %bb.dv, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i, !prof !29

bb.dv:                                            ; preds = %.noexc40.i
  %i.lz = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1)
          to label %.noexc41.i unwind label %.thread.i, !noalias !68566 ; 2 uses

.noexc41.i:                                       ; preds = %bb.dv
  %.not.i.i4.i.i.i = icmp eq ptr %i.lz, null
  br i1 %.not.i.i4.i.i.i, label %bb.dw, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i

bb.dw:                                            ; preds = %.noexc41.i
  %i.ma = invoke fastcc noundef ptr @_RINvNtCshTCYgcDtIbU_10serde_json3ser27format_escaped_str_contentsNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @425, i64 noundef 20)
          to label %.noexc42.i unwind label %.thread.i, !noalias !68566 ; 2 uses

.noexc42.i:                                       ; preds = %bb.dw
  %.not5.i.i5.i.i.i = icmp eq ptr %i.ma, null
  br i1 %.not5.i.i5.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i6.i.i.i, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i6.i.i.i: ; preds = %.noexc42.i
  %i.mb = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1)
          to label %.noexc43.i unwind label %.thread.i, !noalias !68566 ; 2 uses

.noexc43.i:                                       ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i6.i.i.i
  %.not24.i7.i.i.i = icmp eq ptr %i.mb, null
  br i1 %.not24.i7.i.i.i, label %bb.dx, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i, !prof !33

bb.dx:                                            ; preds = %.noexc43.i
  %i.mc = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 1)
          to label %.noexc44.i unwind label %.thread.i, !noalias !68566 ; 2 uses

.noexc44.i:                                       ; preds = %bb.dx
  %.not25.i8.i.i.i = icmp eq ptr %i.mc, null
  br i1 %.not25.i8.i.i.i, label %bb.dy, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i, !prof !29

bb.dy:                                            ; preds = %.noexc44.i
  %.not.i28.i.i.i.i = icmp eq i64 %.sroa.9.0.i, -1
  br i1 %.not.i28.i.i.i.i, label %bb.em, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.18.0.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !68574)
  %i.md = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @541, i64 noundef 1)
          to label %.noexc45.i unwind label %.thread.i, !noalias !68566 ; 2 uses

.noexc45.i:                                       ; preds = %bb.dz
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ea, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i, !prof !29

bb.ea:                                            ; preds = %.noexc45.i
  %i.me = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1)
          to label %.noexc46.i unwind label %.thread.i, !noalias !68566 ; 2 uses

.noexc46.i:                                       ; preds = %bb.ea
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.me, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.eb, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i

bb.eb:                                            ; preds = %.noexc46.i
  %i.mf = invoke fastcc noundef ptr @_RINvNtCshTCYgcDtIbU_10serde_json3ser27format_escaped_str_contentsNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @546, i64 noundef 4)
          to label %.noexc47.i unwind label %.thread.i, !noalias !68566 ; 2 uses

.noexc47.i:                                       ; preds = %bb.eb
  %.not5.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mf, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc47.i
  %i.mg = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1)
          to label %.noexc48.i unwind label %.thread.i, !noalias !68566 ; 2 uses

.noexc48.i:                                       ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  %.not24.i.i.i.i.i.i.i.i = icmp eq ptr %i.mg, null
  br i1 %.not24.i.i.i.i.i.i.i.i, label %bb.ec, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i, !prof !33

bb.ec:                                            ; preds = %.noexc48.i
  %i.mh = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 1)
          to label %.noexc49.i unwind label %.thread.i, !noalias !68566 ; 2 uses

.noexc49.i:                                       ; preds = %bb.ec
  %.not25.i.i.i.i.i.i.i.i = icmp eq ptr %i.mh, null
  br i1 %.not25.i.i.i.i.i.i.i.i, label %bb.ed, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i, !prof !29

bb.ed:                                            ; preds = %.noexc49.i
  call void @llvm.experimental.noalias.scope.decl(metadata !68575)
  call void @llvm.experimental.noalias.scope.decl(metadata !68576)
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.18.0.i, i64 %.sroa.24.0.i50
  %i.mj = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @540, i64 noundef 1)
          to label %.noexc50.i unwind label %.thread.i, !noalias !68566 ; 2 uses

.noexc50.i:                                       ; preds = %bb.ed
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ee, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i, !prof !29

bb.ee:                                            ; preds = %.noexc50.i
  %i.mk = icmp eq i64 %.sroa.24.0.i50, 0
  br i1 %i.mk, label %bb.ef, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i

bb.ef:                                            ; preds = %bb.ee
  %i.ml = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @542, i64 noundef 1)
          to label %.noexc51.i unwind label %.thread.i, !noalias !68566 ; 2 uses

.noexc51.i:                                       ; preds = %bb.ef
  %.not10.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ml, null
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs6_NtNtCsfxuqquxiU4q_10serde_core3ser5implsShNtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i, !prof !29

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ee
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ag, i64 2 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %.val7.peel.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.18.0.i, align 1, !alias.scope !68577, !noalias !68578 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !68579
  call void @llvm.experimental.noalias.scope.decl(metadata !68580)
  %i.mo = icmp ugt i8 %.val7.peel.i.i.i.i.i.i.i.i.i.i.i.i, 9
  br i1 %i.mo, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mp = zext i8 %.val7.peel.i.i.i.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.mq = mul nuw nsw i32 %i.mp, 5243
  %i.mr = lshr i32 %i.mq, 19                      ; 2 uses
  %i.ms = trunc nuw nsw i32 %i.mr to i8
  %.neg.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i32 %i.mr, -100
  %i.mt = add nsw i32 %.neg.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, %i.mp ; 2 uses
  %i.mu = shl nuw nsw i32 %i.mt, 1
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = icmp ult i32 %i.mt, 100
  call void @llvm.assume(i1 %i.mw)
  %i.mx = getelementptr inbounds nuw i8, ptr @_RNvCsb7keUx5WSfn_4itoa13DECIMAL_PAIRS, i64 %i.mv ; 2 uses
  %i.my = load i8, ptr %i.mx, align 1, !noalias !68581, !noundef !28
  store i8 %i.my, ptr %i.mn, align 1, !alias.scope !68580, !noalias !68579
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 1
  %i.na = load i8, ptr %i.mz, align 1, !noalias !68581, !noundef !28
  store i8 %i.na, ptr %i.mm, align 1, !alias.scope !68580, !noalias !68579
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.06.0.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.ms, %bb.eg ], [ %.val7.peel.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.eg ], [ 3, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.nb = icmp ne i8 %.sroa.06.0.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.nc = icmp eq i8 %.val7.peel.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.nc, %i.nb
  br i1 %or.cond.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ei, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter8write_u8NtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i

bb.ei:                                            ; preds = %bb.eh
  %i.nd = add nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.nd
  %i.nf = add nuw nsw i8 %.sroa.06.0.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, 48
  store i8 %i.nf, ptr %i.ne, align 1, !alias.scope !68580, !noalias !68579
  br label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter8write_u8NtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter8write_u8NtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ei, %bb.eh
  %.sroa.0.1.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nd, %bb.ei ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, %bb.eh ] ; 2 uses
  %i.ng = xor i64 %.sroa.0.1.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.0.1.i.i.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ni = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.nh, i64 noundef %i.ng)
          to label %.noexc52.i unwind label %.thread.i, !noalias !68566 ; 2 uses

.noexc52.i:                                       ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter8write_u8NtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !68579
  %.not.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ni, null
  br i1 %.not.i.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRShE0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i, !prof !29

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRShE0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.noexc52.i
  %i.nj = icmp samesign eq i64 %.sroa.24.0.i50, 1
  br i1 %i.nj, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRShE0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i._crit_edge, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lr.ph

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lr.ph: ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRShE0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.18.0.i, i64 1
  br label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRShE0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc54.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nn, i64 1 ; 2 uses
  %i.nm = icmp eq ptr %i.nl, %i.mi
  br i1 %i.nm, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRShE0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i._crit_edge, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !68354

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lr.ph, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRShE0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nn = phi ptr [ %i.nk, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.nl, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRShE0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.nn, align 1, !alias.scope !68577, !noalias !68578 ; 4 uses
  %i.no = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef 1)
          to label %.noexc53.i unwind label %.loopexit.i, !noalias !68566 ; 2 uses

.noexc53.i:                                       ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i, !prof !102

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc53.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !68583
  call void @llvm.experimental.noalias.scope.decl(metadata !68584)
  %i.np = icmp ugt i8 %.val7.i.i.i.i.i.i.i.i.i.i.i.i, 9
  br i1 %i.np, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nq = zext i8 %.val7.i.i.i.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.nr = mul nuw nsw i32 %i.nq, 5243
  %i.ns = lshr i32 %i.nr, 19                      ; 2 uses
  %i.nt = trunc nuw nsw i32 %i.ns to i8
  %.neg.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i32 %i.ns, -100
  %i.nu = add nsw i32 %.neg.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.nq ; 2 uses
  %i.nv = shl nuw nsw i32 %i.nu, 1
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = icmp ult i32 %i.nu, 100
  call void @llvm.assume(i1 %i.nx)
  %i.ny = getelementptr inbounds nuw i8, ptr @_RNvCsb7keUx5WSfn_4itoa13DECIMAL_PAIRS, i64 %i.nw ; 2 uses
  %i.nz = load i8, ptr %i.ny, align 1, !noalias !68585, !noundef !28
  store i8 %i.nz, ptr %i.mn, align 1, !alias.scope !68584, !noalias !68583
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 1
  %i.ob = load i8, ptr %i.oa, align 1, !noalias !68585, !noundef !28
  store i8 %i.ob, ptr %i.mm, align 1, !alias.scope !68584, !noalias !68583
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.nt, %bb.ej ], [ %.val7.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.ej ], [ 3, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.oc = icmp ne i8 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.od = icmp eq i8 %.val7.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.od, %i.oc
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.el, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter8write_u8NtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.el:                                            ; preds = %bb.ek
  %i.oe = add nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.oe
  %i.og = add nuw nsw i8 %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 48
  store i8 %i.og, ptr %i.of, align 1, !alias.scope !68584, !noalias !68583
  br label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter8write_u8NtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter8write_u8NtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.el, %bb.ek
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.oe, %bb.el ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ek ] ; 2 uses
  %i.oh = xor i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.oj = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.oi, i64 noundef %i.oh)
          to label %.noexc54.i unwind label %.loopexit.i, !noalias !68566 ; 2 uses

.noexc54.i:                                       ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter8write_u8NtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !68583
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.oj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRShE0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i, !prof !29, !llvm.loop !68354

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRShE0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i._crit_edge: ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRShE0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRShE0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.ok = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @542, i64 noundef 1)
          to label %.noexc55.i unwind label %.loopexit.split-lp.i, !noalias !68566 ; 2 uses

.noexc55.i:                                       ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRhINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB1N_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRShE0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i._crit_edge
  %.not.i9.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ok, null
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i.i, label %_RINvXs6_NtNtCsfxuqquxiU4q_10serde_core3ser5implsShNtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i, !prof !29

_RINvXs6_NtNtCsfxuqquxiU4q_10serde_core3ser5implsShNtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc55.i, %.noexc51.i
  %i.ol = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @539, i64 noundef 1)
          to label %.noexc56.i unwind label %.loopexit.split-lp.i, !noalias !68566 ; 2 uses

.noexc56.i:                                       ; preds = %_RINvXs6_NtNtCsfxuqquxiU4q_10serde_core3ser5implsShNtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  %.not27.i.i.i.i.i.i.i.i = icmp eq ptr %i.ol, null
  br i1 %.not27.i.i.i.i.i.i.i.i, label %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtB1s_2io5stdio6StdoutEECskXtk6F4WjxZ_4just.exit.i.i.i.i, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i, !prof !29

bb.em:                                            ; preds = %bb.dy
  %i.om = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @548, i64 noundef 4)
          to label %.noexc57.i unwind label %.thread.i, !noalias !68566 ; 2 uses

.noexc57.i:                                       ; preds = %bb.em
  %.not.i.i.i.i10.i.i.i = icmp eq ptr %i.om, null
  br i1 %.not.i.i.i.i10.i.i.i, label %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtB1s_2io5stdio6StdoutEECskXtk6F4WjxZ_4just.exit.i.i.i.i, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i, !prof !29

_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtB1s_2io5stdio6StdoutEECskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %.noexc57.i, %.noexc56.i
  %i.on = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @539, i64 noundef 1)
          to label %.noexc58.i unwind label %.loopexit.split-lp.i, !noalias !68566 ; 2 uses

.noexc58.i:                                       ; preds = %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtB1s_2io5stdio6StdoutEECskXtk6F4WjxZ_4just.exit.i.i.i.i
  %.not27.i9.i.i.i = icmp eq ptr %i.on, null
  br i1 %.not27.i9.i.i.i, label %bb.eq, label %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i, !prof !29

_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i: ; preds = %.noexc54.i, %.noexc53.i, %.noexc58.i, %.noexc57.i, %.noexc56.i, %.noexc55.i, %.noexc52.i, %.noexc51.i, %.noexc50.i, %.noexc49.i, %.noexc48.i, %.noexc47.i, %.noexc46.i, %.noexc45.i, %.noexc44.i, %.noexc43.i, %.noexc42.i, %.noexc41.i, %.noexc40.i, %.noexc39.i, %.noexc38.i, %.noexc37.i, %.noexc36.i, %.noexc35.i, %.noexc34.i, %.noexc33.i, %.noexc32.i, %.noexc.i
  %.sroa.0.0.i5.i.i.sink.i.i.sink.i.i = phi ptr [ %i.om, %.noexc57.i ], [ %i.lw, %.noexc39.i ], [ %i.ly, %.noexc40.i ], [ %i.lz, %.noexc41.i ], [ %i.mc, %.noexc44.i ], [ %i.md, %.noexc45.i ], [ %i.me, %.noexc46.i ], [ %i.mh, %.noexc49.i ], [ %i.ml, %.noexc51.i ], [ %i.on, %.noexc58.i ], [ %i.ok, %.noexc55.i ], [ %i.ol, %.noexc56.i ], [ %i.ls, %.noexc35.i ], [ %i.lt, %.noexc36.i ], [ %i.lp, %.noexc32.i ], [ %i.lo, %.noexc.i ], [ %i.lr, %.noexc34.i ], [ %i.lq, %.noexc33.i ], [ %i.lv, %.noexc38.i ], [ %i.lu, %.noexc37.i ], [ %i.mb, %.noexc43.i ], [ %i.ma, %.noexc42.i ], [ %i.mg, %.noexc48.i ], [ %i.mf, %.noexc47.i ], [ %i.mj, %.noexc50.i ], [ %i.ni, %.noexc52.i ], [ %i.no, %.noexc53.i ], [ %i.oj, %.noexc54.i ]
  %i.oo = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i5.i.i.sink.i.i.sink.i.i)
          to label %bb.en unwind label %.loopexit.split-lp.i, !noalias !68566

bb.en:                                            ; preds = %_RINvXNvNtCskXtk6F4WjxZ_4just7requests0_1__NtB5_8ResponseNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB7_.exit.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !68573
  store i64 37, ptr %0, align 8, !alias.scope !68564, !noalias !68565
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.oo, ptr %.sroa.424.0..sroa_idx.i, align 8, !alias.scope !68564, !noalias !68565
  br i1 %.not.not.not.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.op = icmp sgt i64 %.sroa.9.0.i, 0
  br i1 %i.op, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just7request8ResponseEBF_.exit65.sink.split.i, label %_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand7request.exit

bb.ep:                                            ; preds = %bb.en
  %i.oq = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %i.oq, label %_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand7request.exit, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just7request8ResponseEBF_.exit65.sink.split.i

bb.eq:                                            ; preds = %.noexc58.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !68573
  store i64 -1, ptr %0, align 8, !alias.scope !68564, !noalias !68565
  %i.or = icmp sgt i64 %.sroa.9.0.i, 0
  br i1 %i.or, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just7request8ResponseEBF_.exit65.sink.split.i, label %_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand7request.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just7request8ResponseEBF_.exit65.sink.split.i: ; preds = %bb.eq, %bb.ep, %bb.eo, %.thread98.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.18.0.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.18.0.i, i64 noundef %.sroa.9.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !68566
  br label %_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand7request.exit

_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand7request.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just7request8ResponseEBF_.exit65.sink.split.i, %bb.eq, %bb.ep, %bb.eo, %.thread98.i, %bb.ky, %bb.kx, %_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand3man.exit, %_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand4init.exit, %switch.lookup, %_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand9changelog.exit
  ret void

bb.er:                                            ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.489.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 78, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.ky

bb.es:                                            ; preds = %bb.b
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.521.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  store i64 %i.ck, ptr %i.ce, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  switch i64 %i.cj, label %bb.fp [
    i64 6, label %bb.et
    i64 8, label %bb.fq
  ]

bb.et:                                            ; preds = %bb.es
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68587)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !68588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !68588
  invoke void @_RNvNtNtNtCsaKJjC64KgbL_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1226, i64 noundef 6)
          to label %.noexc unwind label %bb.jk

.noexc:                                           ; preds = %bb.et
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68589)
  %i.os = load i64, ptr %i.ae, align 8, !range !37, !alias.scope !68590, !noalias !68591, !noundef !28
  %.not.i.i52 = icmp eq i64 %i.os, -1
  br i1 %.not.i.i52, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !alias.scope !68592, !noalias !68588
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7or_elseNCNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB1G_10Subcommand4edit0EB1I_.exit.i

bb.ev:                                            ; preds = %.noexc
  invoke void @_RNvNtNtNtCsaKJjC64KgbL_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @608, i64 noundef 6)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7or_elseNCNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB1G_10Subcommand4edit0EB1I_.exit.i unwind label %bb.jk

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7or_elseNCNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB1G_10Subcommand4edit0EB1I_.exit.i: ; preds = %bb.ev, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !68588
  %i.ot = load i64, ptr %i.af, align 8, !range !37, !noalias !68588, !noundef !28 ; 2 uses
  %.not.i53 = icmp eq i64 %i.ot, -1
  br i1 %.not.i53, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7or_elseNCNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB1G_10Subcommand4edit0EB1I_.exit.i
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.9.0.copyload.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !68588
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.13.0.copyload.i = load i64, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !68588
  br label %bb.ez

bb.ex:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7or_elseNCNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB1G_10Subcommand4edit0EB1I_.exit.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !68593
  %i.ou = tail call noundef dereferenceable_or_null(3) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 3, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !68593 ; 3 uses
  %i.ov = icmp eq ptr %i.ou, null
  br i1 %i.ov, label %bb.ey, label %_RNCNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB6_10Subcommand4edits_0B8_.exit.i

bb.ey:                                            ; preds = %bb.ex
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 3) #71
          to label %.noexc62 unwind label %bb.jk

.noexc62:                                         ; preds = %bb.ey
  unreachable

_RNCNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB6_10Subcommand4edits_0B8_.exit.i: ; preds = %bb.ex
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ou, ptr noundef nonnull align 1 dereferenceable(3) @609, i64 3, i1 false), !noalias !68594
  br label %bb.ez

bb.ez:                                            ; preds = %_RNCNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB6_10Subcommand4edits_0B8_.exit.i, %bb.ew
  %.sroa.13.0.i = phi i64 [ 3, %_RNCNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB6_10Subcommand4edits_0B8_.exit.i ], [ %.sroa.13.0.copyload.i, %bb.ew ] ; 3 uses
  %.sroa.9.0.i54 = phi ptr [ %i.ou, %_RNCNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB6_10Subcommand4edits_0B8_.exit.i ], [ %.sroa.9.0.copyload.i, %bb.ew ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ 3, %_RNCNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB6_10Subcommand4edits_0B8_.exit.i ], [ %i.ot, %bb.ew ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !68588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !68588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !68588
  invoke void @_RNvMs_NtNtNtNtCsaKJjC64KgbL_3std3sys7process4unix6commonNtB4_7Command3new(ptr noalias nofree noundef nonnull sret([200 x i8]) align 8 captures(none) dereferenceable(200) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.0.i54, i64 noundef %.sroa.13.0.i)
          to label %_RINvXNtCskXtk6F4WjxZ_4just11command_extNtNtCsaKJjC64KgbL_3std7process7CommandNtB3_10CommandExt7resolveRNtNtNtBF_3ffi6os_str8OsStringEB5_.exit.i unwind label %bb.fc, !noalias !68588

bb.fa:                                            ; preds = %bb.fn, %bb.ff, %bb.fd, %bb.fc
  %.pn.i55 = phi { ptr, i32 } [ %i.pb, %bb.fn ], [ %i.pb, %bb.ff ], [ %i.oz, %bb.fd ], [ %i.ox, %bb.fc ] ; 2 uses
  %i.ow = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.ow, label %.thread, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0.i54, i64 noundef %.sroa.0.0.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !68595
  br label %.thread

bb.fc:                                            ; preds = %bb.ez
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

_RINvXNtCskXtk6F4WjxZ_4just11command_extNtNtCsaKJjC64KgbL_3std7process7CommandNtB3_10CommandExt7resolveRNtNtNtBF_3ffi6os_str8OsStringEB5_.exit.i: ; preds = %bb.ez
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %.val.i.i9.i = load ptr, ptr %i.oy, align 8, !alias.scope !68596, !noalias !68597, !nonnull !28, !noundef !28
  %.val1.i.i10.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !68596, !noalias !68597, !noundef !28
  invoke void @_RNvMs_NtNtNtNtCsaKJjC64KgbL_3std3sys7process4unix6commonNtB4_7Command3cwd(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i9.i, i64 noundef %.val1.i.i10.i)
          to label %_RINvMsi_NtCsaKJjC64KgbL_3std7processNtB6_7Command11current_dirRNtNtB8_4path7PathBufECskXtk6F4WjxZ_4just.exit.i unwind label %bb.fd, !noalias !68588

end_hunk_0
