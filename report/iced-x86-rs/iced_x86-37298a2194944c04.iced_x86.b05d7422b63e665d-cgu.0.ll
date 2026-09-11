Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iced-x86-rs/original/iced_x86-37298a2194944c04.iced_x86.b05d7422b63e665d-cgu.0?download=true
inline.NumInlined: 5815
inline.NumDeleted: 1335
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvMs_NtNtCsf8MNnN4IDbl_8iced_x867encoder7op_codeNtB4_10OpCodeInfo3new:bb.a
          to label %.noexc230 unwind label %.loopexit

.noexc230:                                        ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i207.i
  %i.abn = load i64, ptr %i.sf, align 8, !alias.scope !10569, !noalias !10498, !noundef !21
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit208.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit208.i: ; preds = %.noexc230, %bb.gz
  %.sink392.i = phi i64 [ %i.abn, %.noexc230 ], [ %i.abj, %bb.gz ] ; 3 uses
  %i.abo = icmp sgt i64 %.sink392.i, -1
  call void @llvm.assume(i1 %i.abo)
  %i.abp = load ptr, ptr %i.ss, align 8, !alias.scope !10569, !noalias !10498, !nonnull !21, !noundef !21
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 %.sink392.i
  store i32 946627954, ptr %i.abq, align 1, !noalias !10571
  %i.abr = add nuw i64 %.sink392.i, 4
  store i64 %i.abr, ptr %i.sf, align 8, !alias.scope !10569, !noalias !10498
  br label %.noexc189

bb.ha:                                            ; preds = %bb.eu, %bb.eu
  call void @llvm.experimental.noalias.scope.decl(metadata !10572)
  %i.abs = load i64, ptr %i.sf, align 8, !alias.scope !10573, !noalias !10498, !noundef !21 ; 3 uses
  %i.abt = load i64, ptr %7, align 8, !range !22, !alias.scope !10573, !noalias !10498, !noundef !21
  %i.abu = sub i64 %i.abt, %i.abs
  %i.abv = icmp ult i64 %i.abu, 5
  br i1 %i.abv, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i210.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit211.i, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i210.i: ; preds = %bb.ha
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.abs, i64 noundef 5, i64 noundef 1, i64 noundef 1)
          to label %.noexc231 unwind label %.loopexit

.noexc231:                                        ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i210.i
  %i.abw = load i64, ptr %i.sf, align 8, !alias.scope !10572, !noalias !10498, !noundef !21
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit211.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit211.i: ; preds = %.noexc231, %bb.ha
  %.sink393.i = phi i64 [ %i.abw, %.noexc231 ], [ %i.abs, %bb.ha ] ; 3 uses
  %i.abx = icmp sgt i64 %.sink393.i, -1
  call void @llvm.assume(i1 %i.abx)
  %i.aby = load ptr, ptr %i.ss, align 8, !alias.scope !10572, !noalias !10498, !nonnull !21, !noundef !21
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 %.sink393.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.abz, ptr noundef nonnull align 1 dereferenceable(5) @178, i64 5, i1 false), !noalias !10574
  %i.aca = add nuw i64 %.sink393.i, 5
  store i64 %i.aca, ptr %i.sf, align 8, !alias.scope !10572, !noalias !10498
  br label %.noexc189

bb.hb:                                            ; preds = %bb.eu, %bb.eu, %bb.eu
  call void @llvm.experimental.noalias.scope.decl(metadata !10575)
  %i.acb = load i64, ptr %i.sf, align 8, !alias.scope !10576, !noalias !10498, !noundef !21 ; 3 uses
  %i.acc = load i64, ptr %7, align 8, !range !22, !alias.scope !10576, !noalias !10498, !noundef !21
  %i.acd = sub i64 %i.acc, %i.acb
  %i.ace = icmp ult i64 %i.acd, 5
  br i1 %i.ace, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i213.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit214.i, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i213.i: ; preds = %bb.hb
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.acb, i64 noundef 5, i64 noundef 1, i64 noundef 1)
          to label %.noexc232 unwind label %.loopexit

.noexc232:                                        ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i213.i
  %i.acf = load i64, ptr %i.sf, align 8, !alias.scope !10575, !noalias !10498, !noundef !21
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit214.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit214.i: ; preds = %.noexc232, %bb.hb
  %.sink394.i = phi i64 [ %i.acf, %.noexc232 ], [ %i.acb, %bb.hb ] ; 3 uses
  %i.acg = icmp sgt i64 %.sink394.i, -1
  call void @llvm.assume(i1 %i.acg)
  %i.ach = load ptr, ptr %i.ss, align 8, !alias.scope !10575, !noalias !10498, !nonnull !21, !noundef !21
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 %.sink394.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.aci, ptr noundef nonnull align 1 dereferenceable(5) @179, i64 5, i1 false), !noalias !10577
  %i.acj = add nuw i64 %.sink394.i, 5
  store i64 %i.acj, ptr %i.sf, align 8, !alias.scope !10575, !noalias !10498
  br label %.noexc189

bb.hc:                                            ; preds = %bb.eu
  call void @llvm.experimental.noalias.scope.decl(metadata !10578)
  %i.ack = load i64, ptr %i.sf, align 8, !alias.scope !10579, !noalias !10498, !noundef !21 ; 3 uses
  %i.acl = load i64, ptr %7, align 8, !range !22, !alias.scope !10579, !noalias !10498, !noundef !21
  %i.acm = sub i64 %i.acl, %i.ack
  %i.acn = icmp ult i64 %i.acm, 6
  br i1 %i.acn, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i216.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit217.i, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i216.i: ; preds = %bb.hc
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.ack, i64 noundef 6, i64 noundef 1, i64 noundef 1)
          to label %.noexc233 unwind label %.loopexit

.noexc233:                                        ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i216.i
  %i.aco = load i64, ptr %i.sf, align 8, !alias.scope !10578, !noalias !10498, !noundef !21
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit217.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit217.i: ; preds = %.noexc233, %bb.hc
  %.sink395.i = phi i64 [ %i.aco, %.noexc233 ], [ %i.ack, %bb.hc ] ; 3 uses
  %i.acp = icmp sgt i64 %.sink395.i, -1
  call void @llvm.assume(i1 %i.acp)
  %i.acq = load ptr, ptr %i.ss, align 8, !alias.scope !10578, !noalias !10498, !nonnull !21, !noundef !21
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 %.sink395.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.acr, ptr noundef nonnull align 1 dereferenceable(6) @180, i64 6, i1 false), !noalias !10580
  %i.acs = add nuw i64 %.sink395.i, 6
  store i64 %i.acs, ptr %i.sf, align 8, !alias.scope !10578, !noalias !10498
  br label %.noexc189

bb.hd:                                            ; preds = %bb.eu
  call void @llvm.experimental.noalias.scope.decl(metadata !10581)
  %i.act = load i64, ptr %i.sf, align 8, !alias.scope !10582, !noalias !10498, !noundef !21 ; 3 uses
  %i.acu = load i64, ptr %7, align 8, !range !22, !alias.scope !10582, !noalias !10498, !noundef !21
  %i.acv = sub i64 %i.acu, %i.act
  %i.acw = icmp ult i64 %i.acv, 6
  br i1 %i.acw, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i219.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit220.i, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i219.i: ; preds = %bb.hd
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.act, i64 noundef 6, i64 noundef 1, i64 noundef 1)
          to label %.noexc234 unwind label %.loopexit

.noexc234:                                        ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i219.i
  %i.acx = load i64, ptr %i.sf, align 8, !alias.scope !10581, !noalias !10498, !noundef !21
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit220.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit220.i: ; preds = %.noexc234, %bb.hd
  %.sink396.i = phi i64 [ %i.acx, %.noexc234 ], [ %i.act, %bb.hd ] ; 3 uses
  %i.acy = icmp sgt i64 %.sink396.i, -1
  call void @llvm.assume(i1 %i.acy)
  %i.acz = load ptr, ptr %i.ss, align 8, !alias.scope !10581, !noalias !10498, !nonnull !21, !noundef !21
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 %.sink396.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.ada, ptr noundef nonnull align 1 dereferenceable(6) @181, i64 6, i1 false), !noalias !10583
  %i.adb = add nuw i64 %.sink396.i, 6
  store i64 %i.adb, ptr %i.sf, align 8, !alias.scope !10581, !noalias !10498
  br label %.noexc189

bb.he:                                            ; preds = %bb.eu
  call void @llvm.experimental.noalias.scope.decl(metadata !10584)
  %i.adc = load i64, ptr %i.sf, align 8, !alias.scope !10585, !noalias !10498, !noundef !21 ; 3 uses
  %i.add = load i64, ptr %7, align 8, !range !22, !alias.scope !10585, !noalias !10498, !noundef !21
  %i.ade = sub i64 %i.add, %i.adc
  %i.adf = icmp ult i64 %i.ade, 6
  br i1 %i.adf, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i222.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit223.i, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i222.i: ; preds = %bb.he
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.adc, i64 noundef 6, i64 noundef 1, i64 noundef 1)
          to label %.noexc235 unwind label %.loopexit

.noexc235:                                        ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i222.i
  %i.adg = load i64, ptr %i.sf, align 8, !alias.scope !10584, !noalias !10498, !noundef !21
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit223.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit223.i: ; preds = %.noexc235, %bb.he
  %.sink397.i = phi i64 [ %i.adg, %.noexc235 ], [ %i.adc, %bb.he ] ; 3 uses
  %i.adh = icmp sgt i64 %.sink397.i, -1
  call void @llvm.assume(i1 %i.adh)
  %i.adi = load ptr, ptr %i.ss, align 8, !alias.scope !10584, !noalias !10498, !nonnull !21, !noundef !21
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 %.sink397.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.adj, ptr noundef nonnull align 1 dereferenceable(6) @182, i64 6, i1 false), !noalias !10586
  %i.adk = add nuw i64 %.sink397.i, 6
  store i64 %i.adk, ptr %i.sf, align 8, !alias.scope !10584, !noalias !10498
  br label %.noexc189

bb.hf:                                            ; preds = %bb.eu, %bb.eu, %bb.eu
  %i.adl = add i32 %.sroa.168.0, 1                ; 4 uses
  store i32 %i.adl, ptr %i.z, align 4, !noalias !10499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !10499
  store i32 %i.adl, ptr %i.y, align 4, !noalias !10587
  invoke fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter5write(ptr nonnull %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @183, i64 noundef range(i64 1, 4) 3, i1 noundef zeroext false)
          to label %.noexc236 unwind label %.loopexit

.noexc236:                                        ; preds = %bb.hf
  %.not.i.i153 = icmp eq i32 %i.adl, 0
  br i1 %.not.i.i153, label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit.i, label %bb.hg

bb.hg:                                            ; preds = %.noexc236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !10587
  store ptr %i.y, ptr %i.x, align 8, !noalias !10587
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !10587
  %i.adm = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @105, ptr noundef nonnull @104, ptr noundef nonnull %i.x)
          to label %.noexc237 unwind label %.loopexit

.noexc237:                                        ; preds = %bb.hg
  br i1 %i.adm, label %.invoke439, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i.i, !prof !32

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i.i: ; preds = %.noexc237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !10587
  br label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit.i

_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i.i, %.noexc236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !10499
  br label %.noexc189

.noexc189:                                        ; preds = %.invoke438, %.invoke437, %.invoke, %bb.ik, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit230.i, %bb.ie, %bb.hy, %bb.hs, %bb.hm, %bb.ey, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit166.i, %bb.kn, %bb.kn, %bb.kn, %bb.kn, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit278.i, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit275.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit271.i, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit264.i, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit260.i, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit256.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit252.i, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit245.i, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit241.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit237.i, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit223.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit220.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit217.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit214.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit211.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit208.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit205.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit202.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit199.i, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit196.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit193.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit190.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit187.i, %.noexc206, %.noexc204, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit184.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit181.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit178.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit175.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit172.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit169.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit163.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i, %bb.eu, %bb.eu, %bb.eu, %bb.eu
  %.sroa.133.1 = phi i32 [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit163.i ], [ %.sroa.133.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit.i ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit166.i ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit169.i ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit172.i ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit175.i ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit178.i ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit181.i ], [ %.sroa.133.0, %.invoke438 ], [ %.sroa.133.0, %bb.kn ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit184.i ], [ %.sroa.133.0, %bb.ey ], [ %.sroa.133.0, %.invoke ], [ %.sroa.133.0, %bb.kn ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit223.i ], [ %.sroa.133.0, %bb.kn ], [ %.sroa.133.0, %bb.hm ], [ %.sroa.133.0, %bb.hs ], [ %.sroa.133.0, %bb.hy ], [ %.sroa.133.0, %bb.ie ], [ %.sroa.133.0, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit230.i ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit220.i ], [ %.sroa.133.0, %.invoke437 ], [ %.sroa.133.0, %.noexc204 ], [ %i.yv, %.noexc206 ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit187.i ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit237.i ], [ %.sroa.133.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit241.i ], [ %.sroa.133.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit245.i ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit252.i ], [ %.sroa.133.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit256.i ], [ %.sroa.133.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit260.i ], [ %.sroa.133.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit264.i ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit271.i ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit217.i ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit214.i ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit211.i ], [ %.sroa.133.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit275.i ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit208.i ], [ %.sroa.133.0, %bb.eu ], [ %.sroa.133.0, %bb.eu ], [ %.sroa.133.0, %bb.eu ], [ %.sroa.133.0, %bb.eu ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit205.i ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit202.i ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit199.i ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit193.i ], [ %.sroa.133.0, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit196.i ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit190.i ], [ %.sroa.133.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit278.i ], [ %.sroa.133.0, %bb.ik ], [ %.sroa.133.0, %bb.kn ]
  %.sroa.135.1 = phi i32 [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit163.i ], [ %.sroa.135.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit.i ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit166.i ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit169.i ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit172.i ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit175.i ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit178.i ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit181.i ], [ %.sroa.135.0, %.invoke438 ], [ %.sroa.135.0, %bb.kn ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit184.i ], [ %.sroa.135.0, %bb.ey ], [ %.sroa.135.0, %.invoke ], [ %.sroa.135.0, %bb.kn ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit223.i ], [ %.sroa.135.0, %bb.kn ], [ %.sroa.135.0, %bb.hm ], [ %.sroa.135.0, %bb.hs ], [ %.sroa.135.0, %bb.hy ], [ %.sroa.135.0, %bb.ie ], [ %spec.select395, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit230.i ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit220.i ], [ %.sroa.135.0, %.invoke437 ], [ %.sroa.135.0, %.noexc204 ], [ %.sroa.135.0, %.noexc206 ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit187.i ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit237.i ], [ %.sroa.135.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit241.i ], [ %.sroa.135.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit245.i ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit252.i ], [ %.sroa.135.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit256.i ], [ %.sroa.135.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit260.i ], [ %.sroa.135.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit264.i ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit271.i ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit217.i ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit214.i ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit211.i ], [ %spec.select397, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit275.i ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit208.i ], [ %.sroa.135.0, %bb.eu ], [ %.sroa.135.0, %bb.eu ], [ %.sroa.135.0, %bb.eu ], [ %.sroa.135.0, %bb.eu ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit205.i ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit202.i ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit199.i ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit193.i ], [ %.sroa.135.0, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit196.i ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit190.i ], [ %.sroa.135.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit278.i ], [ %.sroa.135.0, %bb.ik ], [ %.sroa.135.0, %bb.kn ]
  %.sroa.130.1 = phi i32 [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit163.i ], [ %.sroa.130.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit.i ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit166.i ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit169.i ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit172.i ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit175.i ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit178.i ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit181.i ], [ %.sroa.130.0, %.invoke438 ], [ %.sroa.130.0, %bb.kn ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit184.i ], [ %.sroa.130.0, %bb.ey ], [ %.sroa.130.0, %.invoke ], [ %.sroa.130.0, %bb.kn ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit223.i ], [ %.sroa.130.0, %bb.kn ], [ %.sroa.130.0, %bb.hm ], [ %.sroa.130.0, %bb.hs ], [ %.sroa.130.0, %bb.hy ], [ %.sroa.130.0, %bb.ie ], [ %.sroa.130.0, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit230.i ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit220.i ], [ %.sroa.130.0, %.invoke437 ], [ %i.yu, %.noexc204 ], [ %.sroa.130.0, %.noexc206 ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit187.i ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit237.i ], [ %.sroa.130.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit241.i ], [ %.sroa.130.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit245.i ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit252.i ], [ %.sroa.130.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit256.i ], [ %.sroa.130.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit260.i ], [ %.sroa.130.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit264.i ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit271.i ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit217.i ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit214.i ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit211.i ], [ %.sroa.130.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit275.i ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit208.i ], [ %.sroa.130.0, %bb.eu ], [ %.sroa.130.0, %bb.eu ], [ %.sroa.130.0, %bb.eu ], [ %.sroa.130.0, %bb.eu ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit205.i ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit202.i ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit199.i ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit193.i ], [ %.sroa.130.0, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit196.i ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit190.i ], [ %.sroa.130.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit278.i ], [ %.sroa.130.0, %bb.ik ], [ %.sroa.130.0, %bb.kn ]
  %.sroa.168.1 = phi i32 [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit163.i ], [ %i.adl, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit.i ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit166.i ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit169.i ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit172.i ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit175.i ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit178.i ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit181.i ], [ %.sroa.168.0, %.invoke438 ], [ %.sroa.168.0, %bb.kn ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit184.i ], [ %.sroa.168.0, %bb.ey ], [ %.sroa.168.0, %.invoke ], [ %.sroa.168.0, %bb.kn ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit223.i ], [ %.sroa.168.0, %bb.kn ], [ %.sroa.168.0, %bb.hm ], [ %.sroa.168.0, %bb.hs ], [ %.sroa.168.0, %bb.hy ], [ %.sroa.168.0, %bb.ie ], [ %.sroa.168.0, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit230.i ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit220.i ], [ %.sroa.168.0, %.invoke437 ], [ %.sroa.168.0, %.noexc204 ], [ %.sroa.168.0, %.noexc206 ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit187.i ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit237.i ], [ %.sroa.168.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit241.i ], [ %.sroa.168.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit245.i ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit252.i ], [ %.sroa.168.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit256.i ], [ %.sroa.168.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit260.i ], [ %.sroa.168.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit264.i ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit271.i ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit217.i ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit214.i ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit211.i ], [ %.sroa.168.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit275.i ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit208.i ], [ %.sroa.168.0, %bb.eu ], [ %.sroa.168.0, %bb.eu ], [ %.sroa.168.0, %bb.eu ], [ %.sroa.168.0, %bb.eu ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit205.i ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit202.i ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit199.i ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit193.i ], [ %.sroa.168.0, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit196.i ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit190.i ], [ %.sroa.168.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit278.i ], [ %.sroa.168.0, %bb.ik ], [ %.sroa.168.0, %bb.kn ]
  %.sroa.147.1 = phi i32 [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit163.i ], [ %.sroa.147.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit.i ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit166.i ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit169.i ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit172.i ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit175.i ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit178.i ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit181.i ], [ %.sroa.147.0, %.invoke438 ], [ %.sroa.147.0, %bb.kn ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit184.i ], [ %.sroa.147.0, %bb.ey ], [ %.sroa.147.0, %.invoke ], [ %.sroa.147.0, %bb.kn ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit223.i ], [ %.sroa.147.0, %bb.kn ], [ %.sroa.147.11, %bb.hm ], [ %.sroa.147.10, %bb.hs ], [ %.sroa.147.9, %bb.hy ], [ %.sroa.147.8, %bb.ie ], [ %.sroa.147.0, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit230.i ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit220.i ], [ %.sroa.147.0, %.invoke437 ], [ %.sroa.147.0, %.noexc204 ], [ %.sroa.147.0, %.noexc206 ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit187.i ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit237.i ], [ %.sroa.147.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit241.i ], [ %.sroa.147.7, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit245.i ], [ %.sroa.147.6, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit252.i ], [ %.sroa.147.5, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit256.i ], [ %.sroa.147.4, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit260.i ], [ %.sroa.147.3, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit264.i ], [ %.sroa.147.2, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit271.i ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit217.i ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit214.i ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit211.i ], [ %.sroa.147.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit275.i ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit208.i ], [ %.sroa.147.0, %bb.eu ], [ %.sroa.147.0, %bb.eu ], [ %.sroa.147.0, %bb.eu ], [ %.sroa.147.0, %bb.eu ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit205.i ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit202.i ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit199.i ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit193.i ], [ %.sroa.147.0, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit196.i ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit190.i ], [ %.sroa.147.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit278.i ], [ %.sroa.147.0, %bb.ik ], [ %.sroa.147.0, %bb.kn ]
  %.sroa.139.1 = phi i32 [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit163.i ], [ %.sroa.139.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit.i ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit166.i ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit169.i ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit172.i ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit175.i ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit178.i ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit181.i ], [ %.sroa.139.0, %.invoke438 ], [ %.sroa.139.0, %bb.kn ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit184.i ], [ %.sroa.139.0, %bb.ey ], [ %.sroa.139.0, %.invoke ], [ %.sroa.139.0, %bb.kn ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit223.i ], [ %.sroa.139.0, %bb.kn ], [ %.sroa.139.0, %bb.hm ], [ %.sroa.139.0, %bb.hs ], [ %.sroa.139.0, %bb.hy ], [ %.sroa.139.0, %bb.ie ], [ %.sroa.139.0, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit230.i ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit220.i ], [ %.sroa.139.0, %.invoke437 ], [ %.sroa.139.0, %.noexc204 ], [ %.sroa.139.0, %.noexc206 ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit187.i ], [ %i.zg, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit237.i ], [ %i.zf, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit241.i ], [ %.sroa.139.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit245.i ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit252.i ], [ %.sroa.139.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit256.i ], [ %.sroa.139.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit260.i ], [ %.sroa.139.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit264.i ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit271.i ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit217.i ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit214.i ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit211.i ], [ %.sroa.139.0, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit275.i ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit208.i ], [ %.sroa.139.0, %bb.eu ], [ %.sroa.139.0, %bb.eu ], [ %.sroa.139.0, %bb.eu ], [ %.sroa.139.0, %bb.eu ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit205.i ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit202.i ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit199.i ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit193.i ], [ %.sroa.139.0, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit196.i ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit190.i ], [ %.sroa.139.0, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit278.i ], [ %i.yq, %bb.ik ], [ %.sroa.139.0, %bb.kn ] ; 4 uses
  %.sroa.03.1.i = phi i1 [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit.i ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit163.i ], [ true, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit.i ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit166.i ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit169.i ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit172.i ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit175.i ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit178.i ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit181.i ], [ true, %.invoke438 ], [ true, %bb.kn ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit184.i ], [ true, %bb.ey ], [ true, %.invoke ], [ true, %bb.kn ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit223.i ], [ true, %bb.kn ], [ true, %bb.hm ], [ true, %bb.hs ], [ true, %bb.hy ], [ true, %bb.ie ], [ true, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit230.i ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit220.i ], [ true, %.invoke437 ], [ true, %.noexc204 ], [ true, %.noexc206 ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit187.i ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit237.i ], [ true, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit241.i ], [ true, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit245.i ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit252.i ], [ true, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit256.i ], [ true, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit260.i ], [ true, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit264.i ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit271.i ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit217.i ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit214.i ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit211.i ], [ true, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit275.i ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit208.i ], [ false, %bb.eu ], [ false, %bb.eu ], [ false, %bb.eu ], [ false, %bb.eu ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit205.i ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit202.i ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit199.i ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit193.i ], [ true, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit196.i ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit190.i ], [ true, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit278.i ], [ true, %bb.ik ], [ true, %bb.kn ]
  %i.adn = icmp eq i64 %indvars.iv.i, 0
  br i1 %i.adn, label %bb.ko, label %bb.kp

.invoke438:                                       ; preds = %bb.kn, %bb.fe
  %i.ado = phi ptr [ %.450, %bb.fe ], [ @173, %bb.kn ]
  %i.adp = phi i64 [ %.451, %bb.fe ], [ 3, %bb.kn ]
  invoke fastcc void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef align 8 dereferenceable(24) %7, ptr noundef nonnull %i.ado, i64 noundef %i.adp) #45
          to label %.noexc189 unwind label %.loopexit

bb.hh:                                            ; preds = %bb.fj
  %i.adq = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br i1 %.sroa.07.1.i, label %bb.hm, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.adr = add i32 %.sroa.147.0, 1                ; 3 uses
  br i1 %.sroa.05.0.i, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hl, %bb.hi
  br label %bb.hm

bb.hk:                                            ; preds = %bb.hi
  %i.ads = icmp eq i32 %.sroa.147.0, 0
  br i1 %i.ads, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.adt = icmp eq i32 %i.adr, 2
  br i1 %i.adt, label %bb.hm, label %bb.hj

bb.hm:                                            ; preds = %bb.hl, %bb.hk, %bb.hj, %bb.hh, %bb.fj
  %.sroa.147.11 = phi i32 [ %.sroa.147.0, %bb.fj ], [ %.sroa.147.0, %bb.hh ], [ 1, %bb.hk ], [ 2, %bb.hl ], [ %i.adr, %bb.hj ]
  %.sroa.07.0.i159 = phi i32 [ 0, %bb.fj ], [ %i.adq, %bb.hh ], [ 2, %bb.hk ], [ 1, %bb.hl ], [ %i.adr, %bb.hj ] ; 2 uses
  store i32 %.sroa.07.0.i159, ptr %i.z, align 4, !noalias !10499
  invoke fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_mem(ptr nonnull %i.ap, ptr nonnull %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @146, i64 noundef 2, i32 noundef %.sroa.07.0.i159)
          to label %.noexc189 unwind label %.loopexit

bb.hn:                                            ; preds = %bb.fk
  %i.adu = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br i1 %.sroa.07.1.i, label %bb.hs, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.adv = add i32 %.sroa.147.0, 1                ; 3 uses
  br i1 %.sroa.05.0.i, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.hr, %bb.ho
  br label %bb.hs

bb.hq:                                            ; preds = %bb.ho
  %i.adw = icmp eq i32 %.sroa.147.0, 0
  br i1 %i.adw, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.adx = icmp eq i32 %i.adv, 2
  br i1 %i.adx, label %bb.hs, label %bb.hp

bb.hs:                                            ; preds = %bb.hr, %bb.hq, %bb.hp, %bb.hn, %bb.fk
  %.sroa.147.10 = phi i32 [ %.sroa.147.0, %bb.fk ], [ %.sroa.147.0, %bb.hn ], [ 1, %bb.hq ], [ 2, %bb.hr ], [ %i.adv, %bb.hp ]
  %.sroa.08.0.i158 = phi i32 [ 0, %bb.fk ], [ %i.adu, %bb.hn ], [ 2, %bb.hq ], [ 1, %bb.hr ], [ %i.adv, %bb.hp ] ; 2 uses
  store i32 %.sroa.08.0.i158, ptr %i.z, align 4, !noalias !10499
  invoke fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_mem(ptr nonnull %i.ap, ptr nonnull %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 3, i32 noundef %.sroa.08.0.i158)
          to label %.noexc189 unwind label %.loopexit

bb.ht:                                            ; preds = %bb.fl
  %i.ady = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br i1 %.sroa.07.1.i, label %bb.hy, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.adz = add i32 %.sroa.147.0, 1                ; 3 uses
  br i1 %.sroa.05.0.i, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hx, %bb.hu
  br label %bb.hy

bb.hw:                                            ; preds = %bb.hu
  %i.aea = icmp eq i32 %.sroa.147.0, 0
  br i1 %i.aea, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.aeb = icmp eq i32 %i.adz, 2
  br i1 %i.aeb, label %bb.hy, label %bb.hv

bb.hy:                                            ; preds = %bb.hx, %bb.hw, %bb.hv, %bb.ht, %bb.fl
  %.sroa.147.9 = phi i32 [ %.sroa.147.0, %bb.fl ], [ %.sroa.147.0, %bb.ht ], [ 1, %bb.hw ], [ 2, %bb.hx ], [ %i.adz, %bb.hv ]
  %.sroa.09.0.i = phi i32 [ 0, %bb.fl ], [ %i.ady, %bb.ht ], [ 2, %bb.hw ], [ 1, %bb.hx ], [ %i.adz, %bb.hv ] ; 2 uses
  store i32 %.sroa.09.0.i, ptr %i.z, align 4, !noalias !10499
  invoke fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_mem(ptr nonnull %i.ap, ptr nonnull %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 3, i32 noundef %.sroa.09.0.i)
          to label %.noexc189 unwind label %.loopexit

bb.hz:                                            ; preds = %bb.fm
  %i.aec = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br i1 %.sroa.07.1.i, label %bb.ie, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.aed = add i32 %.sroa.147.0, 1                ; 3 uses
  br i1 %.sroa.05.0.i, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %bb.id, %bb.ia
  br label %bb.ie

bb.ic:                                            ; preds = %bb.ia
  %i.aee = icmp eq i32 %.sroa.147.0, 0
  br i1 %i.aee, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.aef = icmp eq i32 %i.aed, 2
  br i1 %i.aef, label %bb.ie, label %bb.ib

bb.ie:                                            ; preds = %bb.id, %bb.ic, %bb.ib, %bb.hz, %bb.fm
  %.sroa.147.8 = phi i32 [ %.sroa.147.0, %bb.fm ], [ %.sroa.147.0, %bb.hz ], [ 1, %bb.ic ], [ 2, %bb.id ], [ %i.aed, %bb.ib ]
  %.sroa.010.0.i = phi i32 [ 0, %bb.fm ], [ %i.aec, %bb.hz ], [ 2, %bb.ic ], [ 1, %bb.id ], [ %i.aed, %bb.ib ] ; 2 uses
  store i32 %.sroa.010.0.i, ptr %i.z, align 4, !noalias !10499
  invoke fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_mem(ptr nonnull %i.ap, ptr nonnull %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 3, i32 noundef %.sroa.010.0.i)
          to label %.noexc189 unwind label %.loopexit

.noexc245:                                        ; preds = %bb.fn
  %.not.i224.i = icmp eq i32 %spec.select396, 0
  br i1 %.not.i224.i, label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit227.i, label %bb.if

bb.if:                                            ; preds = %.noexc245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !10546
  store ptr %i.w, ptr %i.v, align 8, !noalias !10546
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i225.i, align 8, !noalias !10546
  %i.aeg = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @105, ptr noundef nonnull @104, ptr noundef nonnull %i.v)
          to label %.noexc246 unwind label %.loopexit

.noexc246:                                        ; preds = %bb.if
  br i1 %i.aeg, label %.invoke439, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i226.i, !prof !32

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i226.i: ; preds = %.noexc246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !10546
  br label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit227.i

_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit227.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i226.i, %.noexc245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !10499
  call void @llvm.experimental.noalias.scope.decl(metadata !10588)
  %i.aeh = load i64, ptr %i.sf, align 8, !alias.scope !10588, !noalias !10498, !noundef !21 ; 5 uses
  %i.aei = icmp sgt i64 %i.aeh, -1
  call void @llvm.assume(i1 %i.aei)
  %i.aej = load i64, ptr %7, align 8, !range !22, !alias.scope !10589, !noalias !10498, !noundef !21
  %i.aek = icmp eq i64 %i.aej, %i.aeh
  br i1 %i.aek, label %bb.ig, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit230.i, !prof !32

bb.ig:                                            ; preds = %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit227.i
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.aeh, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit230.i unwind label %.loopexit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit230.i: ; preds = %bb.ig, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit227.i
  %i.ael = load ptr, ptr %i.ss, align 8, !alias.scope !10588, !noalias !10498, !nonnull !21, !noundef !21
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 %i.aeh
  store i8 47, ptr %i.aem, align 1, !noalias !10590
  %i.aen = add nuw i64 %i.aeh, 1
  store i64 %i.aen, ptr %i.sf, align 8, !alias.scope !10588, !noalias !10498
  invoke fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter12write_memory(ptr nonnull %i.ap, ptr nonnull %7)
          to label %.noexc189 unwind label %.loopexit

bb.ih:                                            ; preds = %bb.ij, %bb.fo
  br label %bb.ik

bb.ii:                                            ; preds = %bb.fo
  %i.aeo = icmp eq i32 %.sroa.139.0, 0
  br i1 %i.aeo, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.aep = icmp eq i32 %i.yq, 2
  br i1 %i.aep, label %bb.ik, label %bb.ih

bb.ik:                                            ; preds = %bb.ij, %bb.ii, %bb.ih
  %.sroa.012.0.i = phi i32 [ %i.yq, %bb.ih ], [ 2, %bb.ii ], [ 1, %bb.ij ] ; 2 uses
  store i32 %.sroa.012.0.i, ptr %i.z, align 4, !noalias !10499
  invoke fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_mem(ptr nonnull %i.ap, ptr nonnull %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @151, i64 noundef 1, i32 noundef %.sroa.012.0.i)
          to label %.noexc189 unwind label %.loopexit

bb.il:                                            ; preds = %bb.in, %bb.fu
  br label %bb.io

bb.im:                                            ; preds = %bb.fu
  %i.aeq = icmp eq i32 %.sroa.139.0, 0
  br i1 %i.aeq, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.aer = icmp eq i32 %i.zg, 2
  br i1 %i.aer, label %bb.io, label %bb.il

bb.io:                                            ; preds = %bb.in, %bb.im, %bb.il
  %.sroa.014.0.i = phi i32 [ %i.zg, %bb.il ], [ 2, %bb.im ], [ 1, %bb.in ] ; 3 uses
  store i32 %.sroa.014.0.i, ptr %i.z, align 4, !noalias !10499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !10499
  store i32 %.sroa.014.0.i, ptr %i.u, align 4, !noalias !10591
  invoke fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter5write(ptr nonnull %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @151, i64 noundef range(i64 1, 4) 1, i1 noundef zeroext false)
          to label %.noexc251 unwind label %.loopexit

.noexc251:                                        ; preds = %bb.io
  %.not.i231.i = icmp eq i32 %.sroa.014.0.i, 0
  br i1 %.not.i231.i, label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit234.i, label %bb.ip

bb.ip:                                            ; preds = %.noexc251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !10591
  store ptr %i.u, ptr %i.t, align 8, !noalias !10591
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i232.i, align 8, !noalias !10591
  %i.aes = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @105, ptr noundef nonnull @104, ptr noundef nonnull %i.t)
          to label %.noexc252 unwind label %.loopexit

.noexc252:                                        ; preds = %bb.ip
  br i1 %i.aes, label %.invoke439, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i233.i, !prof !32

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i233.i: ; preds = %.noexc252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !10591
  br label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit234.i

_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit234.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i233.i, %.noexc251
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !10499
  call void @llvm.experimental.noalias.scope.decl(metadata !10592)
  %i.aet = load i64, ptr %i.sf, align 8, !alias.scope !10593, !noalias !10498, !noundef !21 ; 3 uses
  %i.aeu = load i64, ptr %7, align 8, !range !22, !alias.scope !10593, !noalias !10498, !noundef !21
  %i.aev = sub i64 %i.aeu, %i.aet
  %i.aew = icmp ult i64 %i.aev, 2
  br i1 %i.aew, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i236.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit237.i, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i236.i: ; preds = %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit234.i
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.aet, i64 noundef 2, i64 noundef 1, i64 noundef 1)
          to label %.noexc254 unwind label %.loopexit

.noexc254:                                        ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i236.i
  %i.aex = load i64, ptr %i.sf, align 8, !alias.scope !10592, !noalias !10498, !noundef !21
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit237.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit237.i: ; preds = %.noexc254, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit234.i
  %.sink398.i = phi i64 [ %i.aex, %.noexc254 ], [ %i.aet, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit234.i ] ; 3 uses
  %i.aey = icmp sgt i64 %.sink398.i, -1
  call void @llvm.assume(i1 %i.aey)
  %i.aez = load ptr, ptr %i.ss, align 8, !alias.scope !10592, !noalias !10498, !nonnull !21, !noundef !21
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 %.sink398.i
  store i16 12587, ptr %i.afa, align 1, !noalias !10594
  %i.afb = add nuw i64 %.sink398.i, 2
  store i64 %i.afb, ptr %i.sf, align 8, !alias.scope !10592, !noalias !10498
  br label %.noexc189

bb.iq:                                            ; preds = %bb.is, %bb.ft
  br label %bb.it

bb.ir:                                            ; preds = %bb.ft
  %i.afc = icmp eq i32 %.sroa.139.0, 0
  br i1 %i.afc, label %bb.it, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.afd = icmp eq i32 %i.zf, 2
  br i1 %i.afd, label %bb.it, label %bb.iq

bb.it:                                            ; preds = %bb.is, %bb.ir, %bb.iq
  %.sroa.013.0.i = phi i32 [ %i.zf, %bb.iq ], [ 2, %bb.ir ], [ 1, %bb.is ] ; 3 uses
  store i32 %.sroa.013.0.i, ptr %i.z, align 4, !noalias !10499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !10499
  store i32 %.sroa.013.0.i, ptr %i.s, align 4, !noalias !10595
  invoke fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter5write(ptr nonnull %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @151, i64 noundef range(i64 1, 4) 1, i1 noundef zeroext false)
          to label %.noexc255 unwind label %.loopexit

.noexc255:                                        ; preds = %bb.it
  %.not.i238.i = icmp eq i32 %.sroa.013.0.i, 0
  br i1 %.not.i238.i, label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit241.i, label %bb.iu

bb.iu:                                            ; preds = %.noexc255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !10595
  store ptr %i.s, ptr %i.r, align 8, !noalias !10595
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i239.i, align 8, !noalias !10595
  %i.afe = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @105, ptr noundef nonnull @104, ptr noundef nonnull %i.r)
          to label %.noexc256 unwind label %.loopexit

.noexc256:                                        ; preds = %bb.iu
  br i1 %i.afe, label %.invoke439, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i240.i, !prof !32

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i240.i: ; preds = %.noexc256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10595
  br label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit241.i

_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit241.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i240.i, %.noexc255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !10499
  br label %.noexc189

bb.iv:                                            ; preds = %bb.fv
  %i.aff = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br i1 %.sroa.07.1.i, label %bb.ja, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.afg = add i32 %.sroa.147.0, 1                ; 3 uses
  br i1 %.sroa.05.0.i, label %bb.iy, label %bb.ix

bb.ix:                                            ; preds = %bb.iz, %bb.iw
  br label %bb.ja

bb.iy:                                            ; preds = %bb.iw
  %i.afh = icmp eq i32 %.sroa.147.0, 0
  br i1 %i.afh, label %bb.ja, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.afi = icmp eq i32 %i.afg, 2
  br i1 %i.afi, label %bb.ja, label %bb.ix

bb.ja:                                            ; preds = %bb.iz, %bb.iy, %bb.ix, %bb.iv, %bb.fv
  %.sroa.147.7 = phi i32 [ %.sroa.147.0, %bb.fv ], [ %.sroa.147.0, %bb.iv ], [ 1, %bb.iy ], [ 2, %bb.iz ], [ %i.afg, %bb.ix ]
  %.sroa.015.0.i157 = phi i32 [ 0, %bb.fv ], [ %i.aff, %bb.iv ], [ 2, %bb.iy ], [ 1, %bb.iz ], [ %i.afg, %bb.ix ] ; 3 uses
  store i32 %.sroa.015.0.i157, ptr %i.z, align 4, !noalias !10499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !10499
  store i32 %.sroa.015.0.i157, ptr %i.q, align 4, !noalias !10596
  invoke fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter5write(ptr nonnull %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @146, i64 noundef range(i64 1, 4) 2, i1 noundef zeroext false)
          to label %.noexc258 unwind label %.loopexit

.noexc258:                                        ; preds = %bb.ja
  %.not.i242.i = icmp eq i32 %.sroa.015.0.i157, 0
  br i1 %.not.i242.i, label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit245.i, label %bb.jb

bb.jb:                                            ; preds = %.noexc258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !10596
  store ptr %i.q, ptr %i.p, align 8, !noalias !10596
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i243.i, align 8, !noalias !10596
  %i.afj = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @105, ptr noundef nonnull @104, ptr noundef nonnull %i.p)
          to label %.noexc259 unwind label %.loopexit

.noexc259:                                        ; preds = %bb.jb
  br i1 %i.afj, label %.invoke439, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i244.i, !prof !32

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i244.i: ; preds = %.noexc259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10596
  br label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit245.i

_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit245.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i244.i, %.noexc258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10499
  br label %.noexc189

bb.jc:                                            ; preds = %bb.fx
  %i.afk = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br i1 %.sroa.07.1.i, label %bb.jh, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.afl = add i32 %.sroa.147.0, 1                ; 3 uses
  br i1 %.sroa.05.0.i, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %bb.jg, %bb.jd
  br label %bb.jh

bb.jf:                                            ; preds = %bb.jd
  %i.afm = icmp eq i32 %.sroa.147.0, 0
  br i1 %i.afm, label %bb.jh, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.afn = icmp eq i32 %i.afl, 2
  br i1 %i.afn, label %bb.jh, label %bb.je

bb.jh:                                            ; preds = %bb.jg, %bb.jf, %bb.je, %bb.jc, %bb.fx
  %.sroa.147.6 = phi i32 [ %.sroa.147.0, %bb.fx ], [ %.sroa.147.0, %bb.jc ], [ 1, %bb.jf ], [ 2, %bb.jg ], [ %i.afl, %bb.je ]
  %.sroa.017.0.i = phi i32 [ 0, %bb.fx ], [ %i.afk, %bb.jc ], [ 2, %bb.jf ], [ 1, %bb.jg ], [ %i.afl, %bb.je ] ; 3 uses
  store i32 %.sroa.017.0.i, ptr %i.z, align 4, !noalias !10499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10499
  store i32 %.sroa.017.0.i, ptr %i.o, align 4, !noalias !10597
  invoke fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter5write(ptr nonnull %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef range(i64 1, 4) 3, i1 noundef zeroext false)
          to label %.noexc261 unwind label %.loopexit

.noexc261:                                        ; preds = %bb.jh
  %.not.i246.i = icmp eq i32 %.sroa.017.0.i, 0
  br i1 %.not.i246.i, label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit249.i, label %bb.ji

bb.ji:                                            ; preds = %.noexc261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10597
  store ptr %i.o, ptr %i.n, align 8, !noalias !10597
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i247.i, align 8, !noalias !10597
  %i.afo = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @105, ptr noundef nonnull @104, ptr noundef nonnull %i.n)
          to label %.noexc262 unwind label %.loopexit

.noexc262:                                        ; preds = %bb.ji
  br i1 %i.afo, label %.invoke439, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i248.i, !prof !32

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i248.i: ; preds = %.noexc262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10597
  br label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit249.i

_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit249.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i248.i, %.noexc261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10499
  call void @llvm.experimental.noalias.scope.decl(metadata !10598)
  %i.afp = load i64, ptr %i.sf, align 8, !alias.scope !10599, !noalias !10498, !noundef !21 ; 3 uses
  %i.afq = load i64, ptr %7, align 8, !range !22, !alias.scope !10599, !noalias !10498, !noundef !21
  %i.afr = sub i64 %i.afq, %i.afp
  %i.afs = icmp ult i64 %i.afr, 2
  br i1 %i.afs, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i251.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit252.i, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i251.i: ; preds = %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit249.i
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.afp, i64 noundef 2, i64 noundef 1, i64 noundef 1)
          to label %.noexc264 unwind label %.loopexit

.noexc264:                                        ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i251.i
  %i.aft = load i64, ptr %i.sf, align 8, !alias.scope !10598, !noalias !10498, !noundef !21
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit252.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit252.i: ; preds = %.noexc264, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit249.i
  %.sink399.i = phi i64 [ %i.aft, %.noexc264 ], [ %i.afp, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit249.i ] ; 3 uses
  %i.afu = icmp sgt i64 %.sink399.i, -1
  call void @llvm.assume(i1 %i.afu)
  %i.afv = load ptr, ptr %i.ss, align 8, !alias.scope !10598, !noalias !10498, !nonnull !21, !noundef !21
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 %.sink399.i
  store i16 13099, ptr %i.afw, align 1, !noalias !10600
  %i.afx = add nuw i64 %.sink399.i, 2
  store i64 %i.afx, ptr %i.sf, align 8, !alias.scope !10598, !noalias !10498
  br label %.noexc189

bb.jj:                                            ; preds = %bb.fw
  %i.afy = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br i1 %.sroa.07.1.i, label %bb.jo, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.afz = add i32 %.sroa.147.0, 1                ; 3 uses
  br i1 %.sroa.05.0.i, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %bb.jn, %bb.jk
  br label %bb.jo

bb.jm:                                            ; preds = %bb.jk
  %i.aga = icmp eq i32 %.sroa.147.0, 0
  br i1 %i.aga, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.agb = icmp eq i32 %i.afz, 2
  br i1 %i.agb, label %bb.jo, label %bb.jl

bb.jo:                                            ; preds = %bb.jn, %bb.jm, %bb.jl, %bb.jj, %bb.fw
  %.sroa.147.5 = phi i32 [ %.sroa.147.0, %bb.fw ], [ %.sroa.147.0, %bb.jj ], [ 1, %bb.jm ], [ 2, %bb.jn ], [ %i.afz, %bb.jl ]
  %.sroa.016.0.i = phi i32 [ 0, %bb.fw ], [ %i.afy, %bb.jj ], [ 2, %bb.jm ], [ 1, %bb.jn ], [ %i.afz, %bb.jl ] ; 3 uses
  store i32 %.sroa.016.0.i, ptr %i.z, align 4, !noalias !10499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10499
  store i32 %.sroa.016.0.i, ptr %i.m, align 4, !noalias !10601
  invoke fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter5write(ptr nonnull %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef range(i64 1, 4) 3, i1 noundef zeroext false)
          to label %.noexc265 unwind label %.loopexit

.noexc265:                                        ; preds = %bb.jo
  %.not.i253.i = icmp eq i32 %.sroa.016.0.i, 0
  br i1 %.not.i253.i, label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit256.i, label %bb.jp

bb.jp:                                            ; preds = %.noexc265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10601
  store ptr %i.m, ptr %i.l, align 8, !noalias !10601
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i254.i, align 8, !noalias !10601
  %i.agc = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @105, ptr noundef nonnull @104, ptr noundef nonnull %i.l)
          to label %.noexc266 unwind label %.loopexit

.noexc266:                                        ; preds = %bb.jp
  br i1 %i.agc, label %.invoke439, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i255.i, !prof !32

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i255.i: ; preds = %.noexc266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10601
  br label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit256.i

_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit256.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i255.i, %.noexc265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10499
  br label %.noexc189

bb.jq:                                            ; preds = %bb.fy
  %i.agd = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br i1 %.sroa.07.1.i, label %bb.jv, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.age = add i32 %.sroa.147.0, 1                ; 3 uses
  br i1 %.sroa.05.0.i, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.ju, %bb.jr
  br label %bb.jv

bb.jt:                                            ; preds = %bb.jr
  %i.agf = icmp eq i32 %.sroa.147.0, 0
  br i1 %i.agf, label %bb.jv, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.agg = icmp eq i32 %i.age, 2
  br i1 %i.agg, label %bb.jv, label %bb.js

bb.jv:                                            ; preds = %bb.ju, %bb.jt, %bb.js, %bb.jq, %bb.fy
  %.sroa.147.4 = phi i32 [ %.sroa.147.0, %bb.fy ], [ %.sroa.147.0, %bb.jq ], [ 1, %bb.jt ], [ 2, %bb.ju ], [ %i.age, %bb.js ]
  %.sroa.018.0.i = phi i32 [ 0, %bb.fy ], [ %i.agd, %bb.jq ], [ 2, %bb.jt ], [ 1, %bb.ju ], [ %i.age, %bb.js ] ; 3 uses
  store i32 %.sroa.018.0.i, ptr %i.z, align 4, !noalias !10499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10499
  store i32 %.sroa.018.0.i, ptr %i.k, align 4, !noalias !10602
  invoke fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter5write(ptr nonnull %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef range(i64 1, 4) 3, i1 noundef zeroext false)
          to label %.noexc268 unwind label %.loopexit

.noexc268:                                        ; preds = %bb.jv
  %.not.i257.i = icmp eq i32 %.sroa.018.0.i, 0
  br i1 %.not.i257.i, label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit260.i, label %bb.jw

bb.jw:                                            ; preds = %.noexc268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10602
  store ptr %i.k, ptr %i.j, align 8, !noalias !10602
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i258.i, align 8, !noalias !10602
  %i.agh = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @105, ptr noundef nonnull @104, ptr noundef nonnull %i.j)
          to label %.noexc269 unwind label %.loopexit

.noexc269:                                        ; preds = %bb.jw
  br i1 %i.agh, label %.invoke439, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i259.i, !prof !32

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i259.i: ; preds = %.noexc269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10602
  br label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit260.i

_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit260.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i259.i, %.noexc268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10499
  br label %.noexc189

bb.jx:                                            ; preds = %bb.fz
  %i.agi = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br i1 %.sroa.07.1.i, label %bb.kc, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.agj = add i32 %.sroa.147.0, 1                ; 3 uses
  br i1 %.sroa.05.0.i, label %bb.ka, label %bb.jz

bb.jz:                                            ; preds = %bb.kb, %bb.jy
  br label %bb.kc

bb.ka:                                            ; preds = %bb.jy
  %i.agk = icmp eq i32 %.sroa.147.0, 0
  br i1 %i.agk, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.agl = icmp eq i32 %i.agj, 2
  br i1 %i.agl, label %bb.kc, label %bb.jz

bb.kc:                                            ; preds = %bb.kb, %bb.ka, %bb.jz, %bb.jx, %bb.fz
  %.sroa.147.3 = phi i32 [ %.sroa.147.0, %bb.fz ], [ %.sroa.147.0, %bb.jx ], [ 1, %bb.ka ], [ 2, %bb.kb ], [ %i.agj, %bb.jz ]
  %.sroa.019.0.i = phi i32 [ 0, %bb.fz ], [ %i.agi, %bb.jx ], [ 2, %bb.ka ], [ 1, %bb.kb ], [ %i.agj, %bb.jz ] ; 3 uses
  store i32 %.sroa.019.0.i, ptr %i.z, align 4, !noalias !10499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10499
  store i32 %.sroa.019.0.i, ptr %i.i, align 4, !noalias !10603
  invoke fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter5write(ptr nonnull %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef range(i64 1, 4) 3, i1 noundef zeroext false)
          to label %.noexc271 unwind label %.loopexit

.noexc271:                                        ; preds = %bb.kc
  %.not.i261.i = icmp eq i32 %.sroa.019.0.i, 0
  br i1 %.not.i261.i, label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit264.i, label %bb.kd

bb.kd:                                            ; preds = %.noexc271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10603
  store ptr %i.i, ptr %i.h, align 8, !noalias !10603
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i262.i, align 8, !noalias !10603
  %i.agm = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @105, ptr noundef nonnull @104, ptr noundef nonnull %i.h)
          to label %.noexc272 unwind label %.loopexit

.noexc272:                                        ; preds = %bb.kd
  br i1 %i.agm, label %.invoke439, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i263.i, !prof !32

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i263.i: ; preds = %.noexc272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10603
  br label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit264.i

_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit264.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i263.i, %.noexc271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10499
  br label %.noexc189

bb.ke:                                            ; preds = %bb.ga
  %i.agn = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br i1 %.sroa.07.1.i, label %bb.kj, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.ago = add i32 %.sroa.147.0, 1                ; 3 uses
  br i1 %.sroa.05.0.i, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.ki, %bb.kf
  br label %bb.kj

bb.kh:                                            ; preds = %bb.kf
  %i.agp = icmp eq i32 %.sroa.147.0, 0
  br i1 %i.agp, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.agq = icmp eq i32 %i.ago, 2
  br i1 %i.agq, label %bb.kj, label %bb.kg

bb.kj:                                            ; preds = %bb.ki, %bb.kh, %bb.kg, %bb.ke, %bb.ga
  %.sroa.147.2 = phi i32 [ %.sroa.147.0, %bb.ga ], [ %.sroa.147.0, %bb.ke ], [ 1, %bb.kh ], [ 2, %bb.ki ], [ %i.ago, %bb.kg ]
  %.sroa.020.0.i = phi i32 [ 0, %bb.ga ], [ %i.agn, %bb.ke ], [ 2, %bb.kh ], [ 1, %bb.ki ], [ %i.ago, %bb.kg ] ; 3 uses
  store i32 %.sroa.020.0.i, ptr %i.z, align 4, !noalias !10499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10499
  store i32 %.sroa.020.0.i, ptr %i.g, align 4, !noalias !10604
  invoke fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter5write(ptr nonnull %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef range(i64 1, 4) 3, i1 noundef zeroext false)
          to label %.noexc274 unwind label %.loopexit

.noexc274:                                        ; preds = %bb.kj
  %.not.i265.i = icmp eq i32 %.sroa.020.0.i, 0
  br i1 %.not.i265.i, label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit268.i, label %bb.kk

bb.kk:                                            ; preds = %.noexc274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10604
  store ptr %i.g, ptr %i.f, align 8, !noalias !10604
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i266.i, align 8, !noalias !10604
  %i.agr = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @105, ptr noundef nonnull @104, ptr noundef nonnull %i.f)
          to label %.noexc275 unwind label %.loopexit

.noexc275:                                        ; preds = %bb.kk
  br i1 %i.agr, label %.invoke439, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i267.i, !prof !32

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i267.i: ; preds = %.noexc275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10604
  br label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit268.i

_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit268.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i267.i, %.noexc274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10499
  call void @llvm.experimental.noalias.scope.decl(metadata !10605)
  %i.ags = load i64, ptr %i.sf, align 8, !alias.scope !10606, !noalias !10498, !noundef !21 ; 3 uses
  %i.agt = load i64, ptr %7, align 8, !range !22, !alias.scope !10606, !noalias !10498, !noundef !21
  %i.agu = sub i64 %i.agt, %i.ags
  %i.agv = icmp ult i64 %i.agu, 2
  br i1 %i.agv, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i270.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit271.i, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i270.i: ; preds = %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit268.i
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.ags, i64 noundef 2, i64 noundef 1, i64 noundef 1)
          to label %.noexc277 unwind label %.loopexit

.noexc277:                                        ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i270.i
  %i.agw = load i64, ptr %i.sf, align 8, !alias.scope !10605, !noalias !10498, !noundef !21
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit271.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit271.i: ; preds = %.noexc277, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit268.i
  %.sink400.i = phi i64 [ %i.agw, %.noexc277 ], [ %i.ags, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit268.i ] ; 3 uses
  %i.agx = icmp sgt i64 %.sink400.i, -1
  call void @llvm.assume(i1 %i.agx)
  %i.agy = load ptr, ptr %i.ss, align 8, !alias.scope !10605, !noalias !10498, !nonnull !21, !noundef !21
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agy, i64 %.sink400.i
  store i16 13099, ptr %i.agz, align 1, !noalias !10607
  %i.aha = add nuw i64 %.sink400.i, 2
  store i64 %i.aha, ptr %i.sf, align 8, !alias.scope !10605, !noalias !10498
  br label %.noexc189

.noexc278:                                        ; preds = %bb.ge
  %.not.i272.i = icmp eq i32 %spec.select398, 0
  br i1 %.not.i272.i, label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit275.i, label %bb.kl

bb.kl:                                            ; preds = %.noexc278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10550
  store ptr %i.e, ptr %i.d, align 8, !noalias !10550
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.43.0..sroa_idx.i273.i, align 8, !noalias !10550
  %i.ahb = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @105, ptr noundef nonnull @104, ptr noundef nonnull %i.d)
          to label %.noexc279 unwind label %.loopexit

.noexc279:                                        ; preds = %bb.kl
  br i1 %i.ahb, label %.invoke439, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i274.i, !prof !32

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i274.i: ; preds = %.noexc279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10550
  br label %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit275.i

_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter13write_reg_op2.exit275.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsf8MNnN4IDbl_8iced_x86.exit.i274.i, %.noexc278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10499
  br label %.noexc189

bb.km:                                            ; preds = %.noexc223
  call void @llvm.experimental.noalias.scope.decl(metadata !10608)
  %i.ahc = load i64, ptr %i.sf, align 8, !alias.scope !10609, !noalias !10498, !noundef !21 ; 3 uses
  %i.ahd = load i64, ptr %7, align 8, !range !22, !alias.scope !10609, !noalias !10498, !noundef !21
  %i.ahe = sub i64 %i.ahd, %i.ahc
  %i.ahf = icmp ult i64 %i.ahe, 3
  br i1 %i.ahf, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i277.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit278.i, !prof !32

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i277.i: ; preds = %bb.km
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.ahc, i64 noundef 3, i64 noundef 1, i64 noundef 1)
          to label %.noexc281 unwind label %.loopexit

.noexc281:                                        ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsf8MNnN4IDbl_8iced_x86.exit.thread.i277.i
  %i.ahg = load i64, ptr %i.sf, align 8, !alias.scope !10608, !noalias !10498, !noundef !21
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit278.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsf8MNnN4IDbl_8iced_x86.exit278.i: ; preds = %.noexc281, %bb.km
  %.sink401.i = phi i64 [ %i.ahg, %.noexc281 ], [ %i.ahc, %bb.km ] ; 3 uses
  %i.ahh = icmp sgt i64 %.sink401.i, -1
  call void @llvm.assume(i1 %i.ahh)
  %i.ahi = load ptr, ptr %i.ss, align 8, !alias.scope !10608, !noalias !10498, !nonnull !21, !noundef !21
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 %.sink401.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ahj, ptr noundef nonnull align 1 dereferenceable(3) @172, i64 3, i1 false), !noalias !10610
  %i.ahk = add nuw i64 %.sink401.i, 3
  store i64 %i.ahk, ptr %i.sf, align 8, !alias.scope !10608, !noalias !10498
  br label %.noexc189

bb.kn:                                            ; preds = %.noexc223
  %i.ahl = load i16, ptr %i.ed, align 8, !range !28, !noalias !10498, !noundef !21
  switch i16 %i.ahl, label %.invoke438 [
    i16 587, label %.noexc189
    i16 588, label %.noexc189
    i16 655, label %.noexc189
    i16 656, label %.noexc189
  ]

bb.ko:                                            ; preds = %.noexc189
  %i.ahm = load i32, ptr %i.ea, align 4, !noalias !10498, !noundef !21
  %i.ahn = and i32 %i.ahm, 536870912
  %.not58.i = icmp eq i32 %i.ahn, 0
  br i1 %.not58.i, label %bb.kp, label %bb.kq

bb.kp:                                            ; preds = %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter15write_decorator.exit.i, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter19write_reg_decorator.exit.i, %bb.ko, %.noexc189
  %.sroa.139.2 = phi i32 [ %.sroa.139.1, %bb.ko ], [ %i.ahx, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter19write_reg_decorator.exit.i ], [ %i.ahx, %_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter15write_decorator.exit.i ], [ %.sroa.139.1, %.noexc189 ]
  %i.aho = icmp ne i64 %indvars.iv.i, %i.tb
  %i.ahp = load i8, ptr %i.eg, align 1, !range !50
  %.not60.i = icmp eq i8 %i.ahp, 5
  %or.cond = select i1 %i.aho, i1 true, i1 %.not60.i
  br i1 %or.cond, label %bb.lb, label %bb.lc

bb.kq:                                            ; preds = %bb.ko
  call void @llvm.experimental.noalias.scope.decl(metadata !10611)
  %i.ahq = load i64, ptr %i.sf, align 8, !alias.scope !10611, !noalias !10498, !noundef !21 ; 6 uses
  %i.ahr = icmp sgt i64 %i.ahq, -1
  call void @llvm.assume(i1 %i.ahr)
  %i.ahs = load i64, ptr %7, align 8, !range !22, !alias.scope !10612, !noalias !10498, !noundef !21
  %i.aht = icmp eq i64 %i.ahs, %i.ahq
  br i1 %i.aht, label %bb.kr, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit281.i, !prof !32

bb.kr:                                            ; preds = %bb.kq
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.ahq, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit281.i unwind label %.loopexit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit281.i: ; preds = %bb.kr, %bb.kq
  %i.ahu = load ptr, ptr %i.ss, align 8, !alias.scope !10611, !noalias !10498, !nonnull !21, !noundef !21
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 %i.ahq
  store i8 32, ptr %i.ahv, align 1, !noalias !10613
  %i.ahw = add nuw i64 %i.ahq, 1                  ; 5 uses
  store i64 %i.ahw, ptr %i.sf, align 8, !alias.scope !10611, !noalias !10498
  %i.ahx = add i32 %.sroa.139.1, 1                ; 4 uses
  br i1 %i.tc, label %bb.kt, label %bb.ks

bb.ks:                                            ; preds = %bb.ku, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit281.i
  br label %bb.kv

bb.kt:                                            ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit281.i
  %i.ahy = icmp eq i32 %.sroa.139.1, 0
  br i1 %i.ahy, label %bb.kv, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.ahz = icmp eq i32 %i.ahx, 2
  br i1 %i.ahz, label %bb.kv, label %bb.ks

bb.kv:                                            ; preds = %bb.ku, %bb.kt, %bb.ks
  %.sroa.022.0.i = phi i32 [ %i.ahx, %bb.ks ], [ 2, %bb.kt ], [ 1, %bb.ku ] ; 2 uses
  store i32 %.sroa.022.0.i, ptr %i.z, align 4, !noalias !10499
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10499
  store i32 %.sroa.022.0.i, ptr %i.c, align 4, !noalias !10499
  call void @llvm.experimental.noalias.scope.decl(metadata !10614)
  %i.aia = icmp sgt i64 %i.ahw, -1
  call void @llvm.assume(i1 %i.aia)
  %i.aib = load i64, ptr %7, align 8, !range !22, !alias.scope !10615, !noalias !10498, !noundef !21
  %i.aic = icmp eq i64 %i.aib, %i.ahw
  br i1 %i.aic, label %bb.kw, label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i.i156, !prof !32

bb.kw:                                            ; preds = %bb.kv
  invoke fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsf8MNnN4IDbl_8iced_x86(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.ahw, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i.i156 unwind label %.loopexit

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push.exit.i.i156: ; preds = %bb.kw, %bb.kv
  %i.aid = load ptr, ptr %i.ss, align 8, !alias.scope !10614, !noalias !10498, !nonnull !21, !noundef !21
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 %i.ahw
  store i8 123, ptr %i.aie, align 1, !noalias !10616
  %i.aif = add nuw i64 %i.ahq, 2
  store i64 %i.aif, ptr %i.sf, align 8, !alias.scope !10614, !noalias !10498
  invoke fastcc void @_RNvMNtNtCsf8MNnN4IDbl_8iced_x867encoder15instruction_fmtNtB2_20InstructionFormatter5write(ptr nonnull %7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @151, i64 noundef 1, i1 noundef zeroext false)
end_hunk_0
