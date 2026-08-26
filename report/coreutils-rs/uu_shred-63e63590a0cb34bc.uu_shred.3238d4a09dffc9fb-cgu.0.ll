Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_shred-63e63590a0cb34bc.uu_shred.3238d4a09dffc9fb-cgu.0?download=true
inline.NumInlined: 951
inline.NumDeleted: 514
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvCs4jkuqUqsG0h_8uu_shred9wipe_file:bb.a
  %i.um = icmp ne i64 %i.ti, 2305843009213693951
  call void @llvm.assume(i1 %i.um)
  %i.un = icmp ult i64 %i.uc, %i.tg
  br i1 %i.un, label %bb.ee, label %bb.ec

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  %i.uo = load i64, ptr %i.ae, align 8, !range !79, !alias.scope !1270, !noalias !1263, !noundef !16
  %i.up = icmp eq i64 %i.uc, %i.uo
  br i1 %i.up, label %bb.ef, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit42.i.i

bb.ef:                                            ; preds = %bb.ee
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae) #27, !noalias !1263
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit42.i.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit42.i.i: ; preds = %bb.ef, %bb.ee
  %i.uq = load ptr, ptr %i.tb, align 8, !alias.scope !1270, !noalias !1263, !nonnull !16, !noundef !16 ; 2 uses
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.uc
  store i32 2, ptr %i.ur, align 1, !noalias !1273
  %i.us = add nuw nsw i64 %i.ti, 2                ; 2 uses
  store i64 %i.us, ptr %i.tc, align 8, !alias.scope !1270, !noalias !1263
  %i.ut = add nuw nsw i64 %.sroa.011.044.i.i, 1
  %i.uu = add i64 %.sroa.07.046.i.i, 1
  br label %bb.ec

_RNvCs4jkuqUqsG0h_8uu_shred37generate_patterns_with_middle_randoms.exitthread-pre-split.i: ; preds = %bb.ec, %.lr.ph.split.i.i
  %.sroa.625.0.copyload.pr.i = phi i64 [ %i.ul, %bb.ec ], [ %i.ti, %.lr.ph.split.i.i ] ; 5 uses
  %.sroa.023.0.copyload.i = load i64, ptr %i.ae, align 8, !noalias !1274 ; 2 uses
  %.sroa.424.0.copyload.i = load ptr, ptr %i.tb, align 8, !noalias !1274, !nonnull !16, !noundef !16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1263
  %i.uv = load i64, ptr %i.sw, align 8, !noalias !1231, !noundef !16 ; 5 uses
  %i.uw = load i64, ptr %i.ag, align 8, !range !79, !noalias !1231, !noundef !16 ; 3 uses
  %i.ux = sub i64 %i.uw, %i.uv
  %i.uy = icmp ugt i64 %.sroa.625.0.copyload.pr.i, %i.ux
  br i1 %i.uy, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.thread.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.i.i, !prof !22

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.thread.i.i: ; preds = %_RNvCs4jkuqUqsG0h_8uu_shred37generate_patterns_with_middle_randoms.exitthread-pre-split.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag, i64 noundef %i.uv, i64 noundef %.sroa.625.0.copyload.pr.i, i64 noundef 1, i64 noundef 4) #26, !noalias !1231
  %i.uz = load i64, ptr %i.sw, align 8, !noalias !1231, !noundef !16 ; 2 uses
  %i.va = icmp ult i64 %i.uz, 2305843009213693952
  call void @llvm.assume(i1 %i.va)
  %.pre.pre.i = load i64, ptr %i.ag, align 8, !range !79, !noalias !1231
  br label %bb.eg

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.i.i: ; preds = %_RNvCs4jkuqUqsG0h_8uu_shred37generate_patterns_with_middle_randoms.exitthread-pre-split.i
  %i.vb = icmp ult i64 %i.uv, 2305843009213693952
  call void @llvm.assume(i1 %i.vb)
  %.not.i16.i = icmp eq i64 %.sroa.625.0.copyload.pr.i, 0
  br i1 %.not.i16.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE15append_elementsBG_.exit.i, label %bb.eg

bb.eg:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.thread.i.i
  %.pre.i = phi i64 [ %.pre.pre.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.thread.i.i ], [ %i.uw, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.i.i ]
  %i.vc = phi i64 [ %i.uz, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.thread.i.i ], [ %i.uv, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.i.i ] ; 2 uses
  %i.vd = load ptr, ptr %i.sv, align 8, !noalias !1231, !nonnull !16, !noundef !16
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %i.vc
  %i.vf = shl nuw nsw i64 %.sroa.625.0.copyload.pr.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ve, ptr nonnull readonly align 1 %.sroa.424.0.copyload.i, i64 %i.vf, i1 false), !noalias !1275
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE15append_elementsBG_.exit.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE15append_elementsBG_.exit.i: ; preds = %bb.eg, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.i.i
  %i.vg = phi i64 [ %.pre.i, %bb.eg ], [ %i.uw, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.i.i ]
  %i.vh = phi i64 [ %i.vc, %bb.eg ], [ %i.uv, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE7reserveBG_.exit.i.i ]
  %i.vi = add i64 %i.vh, %.sroa.625.0.copyload.pr.i ; 4 uses
  store i64 %i.vi, ptr %i.sw, align 8, !noalias !1231
  %i.vj = icmp eq i64 %i.vi, %i.vg
  br i1 %i.vj, label %bb.eh, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit17.i

bb.eh:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE15append_elementsBG_.exit.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag) #27, !noalias !1231
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit17.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit17.i: ; preds = %bb.eh, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE15append_elementsBG_.exit.i
  %i.vk = load ptr, ptr %i.sv, align 8, !noalias !1231, !nonnull !16, !noundef !16
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.vk, i64 %i.vi
  store i32 2, ptr %i.vl, align 1, !noalias !1278
  %i.vm = add i64 %i.vi, 1
  store i64 %i.vm, ptr %i.sw, align 8, !noalias !1231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %i.vn = icmp eq i64 %.sroa.023.0.copyload.i, 0
  br i1 %i.vn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VeclEECs4jkuqUqsG0h_8uu_shred.exit.i, label %bb.ei

bb.ei:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit17.i
  %i.vo = shl nuw i64 %.sroa.023.0.copyload.i, 2
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.424.0.copyload.i, i64 noundef %i.vo, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1231
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VeclEECs4jkuqUqsG0h_8uu_shred.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VeclEECs4jkuqUqsG0h_8uu_shred.exit.i: ; preds = %bb.ei, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit17.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.sp, i64 noundef 68, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !1231
  br label %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit

_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit: ; preds = %.loopexit.i299, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VeclEECs4jkuqUqsG0h_8uu_shred.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1231
  %.pr = load i64, ptr %i.ca, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.vp = icmp eq i64 %.pr, -1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.phi.trans.insert796 = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.pre797.a = load ptr, ptr %.phi.trans.insert796, align 8 ; 3 uses
  br i1 %i.vp, label %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit._crit_edge, label %bb.ej

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit: ; preds = %bb.di
  call fastcc void @_RNvCs4jkuqUqsG0h_8uu_shred29create_standard_pass_sequence(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cb, i64 noundef %1) #26
  %.pre801.pre = load i64, ptr %i.oh, align 8
  br label %.loopexit649

_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit._crit_edge: ; preds = %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit, %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit.thread
  %i.vq = phi ptr [ @17, %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit.thread ], [ %.pre797.a, %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit ]
  %i.vr = phi ptr [ %i.rn, %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit.thread ], [ %.pre, %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  br label %bb.el

bb.ej:                                            ; preds = %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  %.val163 = load i64, ptr %i.cb, align 8, !range !79, !noundef !16 ; 2 uses
  %i.vs = icmp eq i64 %.val163, 0
  br i1 %i.vs, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit302, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %.val164 = load ptr, ptr %i.og, align 8, !nonnull !16, !noundef !16
  %i.vt = shl nuw i64 %.val163, 2
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val164, i64 noundef %i.vt, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit302

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit302: ; preds = %bb.ej, %bb.ek
  store i64 %.pr, ptr %i.cb, align 8
  store ptr %.pre, ptr %i.og, align 8
  store ptr %.pre797.a, ptr %i.oh, align 8
  %i.vu = ptrtoint ptr %.pre797.a to i64
  br label %.loopexit649

.loopexit649:                                     ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit, %.preheader, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit302, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit
  %.pre801 = phi i64 [ %.pre801.pre, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit ], [ 0, %.preheader ], [ %i.vu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit302 ], [ %i.wf, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit ] ; 4 uses
  br i1 %6, label %bb.eo, label %bb.cm

bb.el:                                            ; preds = %bb.io, %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit._crit_edge
  %.sroa.12.1 = phi ptr [ @17, %bb.io ], [ %i.vq, %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit._crit_edge ] ; 2 uses
  %.sroa.05.1 = phi ptr [ %i.rd, %bb.io ], [ %i.vr, %_RNvCs4jkuqUqsG0h_8uu_shred31create_test_compatible_sequence.exit._crit_edge ] ; 2 uses
  %.val161 = load i64, ptr %i.cb, align 8, !range !79, !noundef !16 ; 2 uses
  %i.vv = icmp eq i64 %.val161, 0
  br i1 %i.vv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit303, label %bb.em

bb.em:                                            ; preds = %bb.el
  %.val162 = load ptr, ptr %i.og, align 8, !nonnull !16, !noundef !16
  %i.vw = shl nuw i64 %.val161, 2
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val162, i64 noundef %i.vw, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit303

.lr.ph:                                           ; preds = %.preheader, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit
  %i.vx = phi ptr [ %i.wc, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit ], [ inttoptr (i64 1 to ptr), %.preheader ]
  %i.vy = phi i64 [ %i.wd, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit ], [ 0, %.preheader ] ; 2 uses
  %i.vz = phi i64 [ %i.wf, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit ], [ 0, %.preheader ] ; 3 uses
  %.sroa.0139.0716 = phi i64 [ %i.wa, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit ], [ 0, %.preheader ]
  %i.wa = add nuw i64 %.sroa.0139.0716, 1         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  %i.wb = icmp eq i64 %i.vz, %i.vy
  br i1 %i.wb, label %bb.en, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit

bb.en:                                            ; preds = %.lr.ph
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cb) #27
  %.pre798 = load i64, ptr %i.cb, align 8, !range !79, !alias.scope !1281
  %.pre800 = load ptr, ptr %i.og, align 8, !alias.scope !1281
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit: ; preds = %.lr.ph, %bb.en
  %i.wc = phi ptr [ %i.vx, %.lr.ph ], [ %.pre800, %bb.en ] ; 2 uses
  %i.wd = phi i64 [ %i.vy, %.lr.ph ], [ %.pre798, %bb.en ]
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.wc, i64 %i.vz
  store i32 2, ptr %i.we, align 1, !noalias !1281
  %i.wf = add i64 %i.vz, 1                        ; 3 uses
  store i64 %i.wf, ptr %i.oh, align 8, !alias.scope !1281
  %exitcond.not = icmp eq i64 %i.wa, %1
  br i1 %exitcond.not, label %.loopexit649, label %.lr.ph

bb.eo:                                            ; preds = %.loopexit649
  call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  %i.wg = load i64, ptr %i.cb, align 8, !range !79, !alias.scope !1284, !noundef !16
  %i.wh = icmp eq i64 %.pre801, %i.wg
  br i1 %i.wh, label %bb.ep, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit304

bb.ep:                                            ; preds = %bb.eo
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8grow_oneBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cb) #27
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit304

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeE8push_mutBH_.exit304: ; preds = %bb.eo, %bb.ep
  %i.wi = load ptr, ptr %i.og, align 8, !alias.scope !1284, !nonnull !16, !noundef !16
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.wi, i64 %.pre801
  store i32 0, ptr %i.wj, align 1, !noalias !1284
  %i.wk = add i64 %.pre801, 1                     ; 2 uses
  store i64 %i.wk, ptr %i.oh, align 8, !alias.scope !1284
  br label %bb.cm

bb.eq:                                            ; preds = %bb.cm
  %i.wl = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.wm = load i32, ptr %i.wl, align 4, !range !1035, !alias.scope !1202, !noalias !1205, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  store i32 %i.wm, ptr %i.by, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  %i.wn = trunc nuw i64 %3 to i1
  %spec.select = select i1 %i.wn, i64 %4, i64 %.sroa.13.0.copyload ; 3 uses
  %i.wo = load ptr, ptr %i.og, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %i.wp = load i64, ptr %i.cb, align 8, !range !79, !noundef !16 ; 4 uses
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %i.oo ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 6 uses
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.ws = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.wt = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.wu = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.wv = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.4111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.5112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.ww = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.sroa.4.0..sroa_idx.i359 = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i360 = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.wy = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.wz = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.5525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.8529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.xa = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.xb = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %.sroa.6122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %.sroa.4126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.xe = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.xf = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %.sroa.4134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.xg = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.xh = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.xl = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %.not20.i.i = icmp eq ptr %7, null
  %i.xm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.xn = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.sroa.4.i.sroa.4.3..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.sroa.9.sroa.7.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.y, i64 3
  %.sroa.13.1..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.y, i64 7
  %.sroa.16.1..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 15
  %.sroa.4.0..sroa_idx.i307 = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.sroa.5.0..sroa_idx.i308 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 65540 ; 3 uses
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 65544
  %.sroa.616.sroa.6.0..sroa.616.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 65552
  %10 = and i64 %spec.select, 4095
  %.not37.not.i = icmp eq i64 %10, 0
  %.sroa.034.057.i = select i1 %.not37.not.i, i64 0, i64 4096
  %11 = add i64 %.sroa.034.057.i, %spec.select
  %i.xo = and i64 %11, -4096
  %i.xp = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %spec.select717 = select i1 %5, i64 %spec.select, i64 %i.xo ; 2 uses
  %12 = lshr i64 %spec.select717, 16              ; 2 uses
  %13 = and i64 %spec.select717, 65535
  %.sroa.16.i.308.i.308.i.308..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.16.i, i64 308
  %exitcond.not.i1069 = icmp eq i64 %12, 0
  br label %bb.er

bb.er:                                            ; preds = %bb.in, %bb.eq
  %.sroa.6514.0 = phi ptr [ %i.wo, %bb.eq ], [ %.sroa.6514.2, %bb.in ] ; 3 uses
  %.sroa.14518.0 = phi i64 [ 0, %bb.eq ], [ %.sroa.14518.1, %bb.in ] ; 3 uses
  %.sroa.0519.0 = phi i64 [ undef, %bb.eq ], [ %.sroa.0519.1, %bb.in ]
  %.sroa.6520.0 = phi i32 [ undef, %bb.eq ], [ %.sroa.6520.1, %bb.in ]
  %.sroa.10553.0 = phi i64 [ undef, %bb.eq ], [ %.sroa.10553.1, %bb.in ] ; 2 uses
  %i.xr = icmp eq ptr %.sroa.6514.0, %i.wq
  br i1 %i.xr, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextBY_.exit.i

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextBY_.exit.i: ; preds = %bb.er
  %i.xs = getelementptr inbounds nuw i8, ptr %.sroa.6514.0, i64 4 ; 2 uses
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.6514.0, align 1, !noalias !1287 ; 2 uses
  %i.xt = and i32 %.sroa.03.0.copyload.i.i, 255
  %.not.i305 = icmp eq i32 %i.xt, 255
  br i1 %.not.i305, label %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i, label %bb.es

bb.es:                                            ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextBY_.exit.i
  %i.xu = add i64 %.sroa.14518.0, 1
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeEENtNtNtB8_6traits8iterator8Iterator4nextB1X_.exit

_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i: ; preds = %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextBY_.exit.i, %bb.er
  %.sroa.6514.1 = phi ptr [ %i.wq, %bb.er ], [ %i.xs, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextBY_.exit.i ]
  %.sroa.6520.8.insert.insert = or i32 %.sroa.6520.0, 255
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeEENtNtNtB8_6traits8iterator8Iterator4nextB1X_.exit

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeEENtNtNtB8_6traits8iterator8Iterator4nextB1X_.exit: ; preds = %bb.es, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i
  %.sroa.6514.2 = phi ptr [ %.sroa.6514.1, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i ], [ %i.xs, %bb.es ]
  %.sroa.14518.1 = phi i64 [ %.sroa.14518.0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i ], [ %i.xu, %bb.es ]
  %.sroa.0519.1 = phi i64 [ %.sroa.0519.0, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i ], [ %.sroa.14518.0, %bb.es ] ; 2 uses
  %.sroa.6520.1 = phi i32 [ %.sroa.6520.8.insert.insert, %_RNvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextBY_.exit.thread.i ], [ %.sroa.03.0.copyload.i.i, %bb.es ] ; 4 uses
  %i.xv = and i32 %.sroa.6520.1, 255
  %.not151 = icmp eq i32 %i.xv, 255
  br i1 %.not151, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeEENtNtNtB8_6traits8iterator8Iterator4nextB1X_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  store i32 %.sroa.6520.1, ptr %i.bv, align 4
  br i1 %8, label %bb.go, label %bb.ez

bb.eu:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeEENtNtNtB8_6traits8iterator8Iterator4nextB1X_.exit
  %i.xw = icmp eq i64 %i.wp, 0
  br i1 %i.xw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEEB2b_.exit, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.xx = shl nuw i64 %i.wp, 2
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wo, i64 noundef %i.xx, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1293
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEEB2b_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEEB2b_.exit: ; preds = %bb.eu, %bb.ev
  %.not152 = icmp eq i8 %2, 0
  br i1 %.not152, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ex, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEEB2b_.exit
  %.val172 = load i32, ptr %i.by, align 4, !range !1035, !noundef !16
  %i.xy = call noundef i32 @close(i32 noundef %.val172) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  br label %bb.ey

bb.ex:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEEB2b_.exit
  %i.xz = call fastcc noundef ptr @_RNvCs4jkuqUqsG0h_8uu_shred9do_remove(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cz, i1 noundef zeroext %8, i8 noundef %2) #26
  %i.ya = call fastcc ptr @_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCs4jkuqUqsG0h_8uu_shred9wipe_files3_0EB3d_(ptr noundef %i.xz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cx, i64 noundef %i.cz) #26 ; 2 uses
  %.not153 = icmp eq ptr %i.ya, null
  br i1 %.not153, label %bb.ew, label %.thread

bb.ey:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4jkuqUqsG0h_8uu_shred.exit432, %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCs4jkuqUqsG0h_8uu_shred9wipe_files0_0EB3d_.exit, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit436, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit440, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit303, %bb.ch, %bb.ew
  %.sroa.12.2 = phi ptr [ @76, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit440 ], [ @76, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit436 ], [ @17, %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCs4jkuqUqsG0h_8uu_shred9wipe_files0_0EB3d_.exit ], [ @17, %bb.ch ], [ undef, %bb.ew ], [ %.sroa.12.5, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit303 ], [ @76, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4jkuqUqsG0h_8uu_shred.exit432 ], [ @76, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ]
  %.sroa.05.2 = phi ptr [ %i.aht, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit440 ], [ %i.ahm, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit436 ], [ %i.om, %_RINvXsc_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs6JMX4GRUq9U_4core6result6ResultuNtNtNtBL_2io5error5ErrorEINtB6_6FromIoIBH_uINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB6_6UErrorEL_EEE15map_err_contextNCNvCs4jkuqUqsG0h_8uu_shred9wipe_files0_0EB3d_.exit ], [ %i.oe, %bb.ch ], [ null, %bb.ew ], [ %.sroa.05.5, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit303 ], [ %i.aha, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs4jkuqUqsG0h_8uu_shred.exit432 ], [ %i.lp, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ]
  %i.yb = insertvalue { ptr, ptr } poison, ptr %.sroa.05.2, 0
  %i.yc = insertvalue { ptr, ptr } %i.yb, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %i.yc

.thread:                                          ; preds = %bb.ex, %bb.il, %bb.im
  %.sroa.05.3 = phi ptr [ %i.ya, %bb.ex ], [ %i.ack, %bb.il ], [ %i.ack, %bb.im ]
  %.val171 = load i32, ptr %i.by, align 4, !range !1035, !noundef !16
  %i.yd = call noundef i32 @close(i32 noundef %.val171) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtCs4jkuqUqsG0h_8uu_shred8PassTypeEEB1a_.exit303

bb.ez:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4jkuqUqsG0h_8uu_shred.exit424, %bb.et
  %.sroa.10553.1 = phi i64 [ %.sroa.10553.2619, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs4jkuqUqsG0h_8uu_shred.exit424 ], [ %.sroa.10553.0, %bb.et ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.20.i)
  %i.ye = call { i64, ptr } @_RNvXsc_NtCs2vKOLqTMYjT_3std2fsNtB5_4FileNtNtNtCs6JMX4GRUq9U_4core2io4seek4Seek4seek(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.by, i64 noundef 0, i64 noundef 0) #26, !noalias !1296 ; 2 uses
  %i.yf = extractvalue { i64, ptr } %i.ye, 0
  %i.yg = trunc nuw i64 %i.yf to i1
  %i.yh = extractvalue { i64, ptr } %i.ye, 1      ; 2 uses
  %.not56.i = icmp ne ptr %i.yh, null
  %.not.not.i = select i1 %i.yg, i1 %.not56.i, i1 false
  br i1 %.not.not.i, label %_RNvCs4jkuqUqsG0h_8uu_shred7do_pass.exit.thread, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1299
  call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  %i.yi = load i8, ptr %i.bv, align 4, !range !1304, !alias.scope !1305, !noalias !1306, !noundef !16
  switch i8 %i.yi, label %bb.fc [
    i8 2, label %bb.fb
    i8 0, label %bb.fd
  ]

bb.fb:                                            ; preds = %bb.fa
  br i1 %.not20.i.i, label %bb.fg, label %bb.ff

bb.fc:                                            ; preds = %bb.fa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65538) %i.y, i8 0, i64 65538, i1 false), !noalias !1299
  br label %bb.fe

bb.fd:                                            ; preds = %bb.fa
  %i.yj = load i8, ptr %i.wr, align 1, !alias.scope !1305, !noalias !1306, !noundef !16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65538) %i.y, i8 %i.yj, i64 65538, i1 false), !noalias !1299
  %i.yk = zext i8 %i.yj to i32                    ; 2 uses
  %i.yl = shl nuw nsw i32 %i.yk, 8
  %i.ym = or disjoint i32 %i.yl, %i.yk            ; 2 uses
  %i.yn = shl nuw i32 %i.ym, 16
  %i.yo = or disjoint i32 %i.yn, %i.ym
  %i.yp = zext i8 %i.yj to i64                    ; 2 uses
  %i.yq = shl nuw nsw i64 %i.yp, 8
  %i.yr = or disjoint i64 %i.yq, %i.yp            ; 2 uses
  %i.ys = shl nuw nsw i64 %i.yr, 16
  %i.yt = or disjoint i64 %i.ys, %i.yr            ; 2 uses
  %i.yu = shl nuw i64 %i.yt, 32
  %i.yv = or disjoint i64 %i.yu, %i.yt
  %i.yw = inttoptr i64 %i.yv to ptr
  br label %.loopexit58.i

.loopexit58.loopexit.i:                           ; preds = %bb.fe
  %.sroa.9.sroa.7.0.copyload.pre.i = load i32, ptr %.sroa.9.sroa.7.0..sroa_idx.phi.trans.insert.i, align 1, !noalias !1299
  %.sroa.13.1.copyload.pre.i = load ptr, ptr %.sroa.13.1..sroa_idx.phi.trans.insert.i, align 1, !noalias !1299
  br label %.loopexit58.i

.loopexit58.i:                                    ; preds = %.loopexit58.loopexit.i, %bb.fd
  %.sroa.13.1.copyload.i = phi ptr [ %.sroa.13.1.copyload.pre.i, %.loopexit58.loopexit.i ], [ %i.yw, %bb.fd ]
  %.sroa.9.sroa.7.0.copyload.i = phi i32 [ %.sroa.9.sroa.7.0.copyload.pre.i, %.loopexit58.loopexit.i ], [ %i.yo, %bb.fd ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(65523) %.sroa.16.i, ptr noundef nonnull align 1 dereferenceable(65523) %.sroa.16.1..sroa_idx.i, i64 65523, i1 false), !noalias !1299
  br label %bb.fl

bb.fe:                                            ; preds = %bb.fe, %bb.fc
  %.sroa.511.026.i.i = phi i64 [ 65538, %bb.fc ], [ %i.za, %bb.fe ] ; 2 uses
  %.sroa.3.025.i.i = phi ptr [ %i.y, %bb.fc ], [ %i.yz, %bb.fe ] ; 4 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.sroa.3.025.i.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.3.025.i.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.wr, i64 3, i1 false), !noalias !1308
  %i.yy = getelementptr inbounds nuw i8, ptr %.sroa.3.025.i.i, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.yx, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.wr, i64 3, i1 false), !noalias !1308
  %i.yz = getelementptr inbounds nuw i8, ptr %.sroa.3.025.i.i, i64 9
  %i.za = add nsw i64 %.sroa.511.026.i.i, -9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.yy, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.wr, i64 3, i1 false), !noalias !1308
  %.not.i.i.2 = icmp slt i64 %.sroa.511.026.i.i, 12
  br i1 %.not.i.i.2, label %.loopexit58.loopexit.i, label %bb.fe

bb.ff:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1309
  %i.zb = load i64, ptr %7, align 8, !noalias !1309, !noundef !16
  %i.zc = icmp eq i64 %i.zb, 0
  br i1 %i.zc, label %bb.fh, label %bb.fi, !prof !1036

bb.fg:                                            ; preds = %bb.fb
  call fastcc void @_RINvCs7g3JyErIm42_4rand8make_rngNtNtNtB2_4rngs3std6StdRngECs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef align 4 captures(address) dereferenceable(320) %i.aa) #26, !noalias !1296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(65216) %.sroa.16.i.308.i.308.i.308..sroa_idx, i8 0, i64 65216, i1 false), !noalias !1299
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(308) %.sroa.20.i, i8 0, i64 308, i1 false), !noalias !1299
  %i.zd = load i32, ptr %i.aa, align 4, !noalias !1299
  %.sroa.4.i.sroa.4.3.copyload.i = load ptr, ptr %.sroa.4.i.sroa.4.3..sroa_idx.i, align 4, !noalias !1299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(308) %.sroa.16.i, ptr noundef nonnull align 4 dereferenceable(308) %i.xl, i64 308, i1 false), !noalias !1299
  br label %bb.fl

bb.fh:                                            ; preds = %bb.ff
  store i64 -1, ptr %7, align 8, !noalias !1309
  call void @_RNvMs2_NtCs2vKOLqTMYjT_3std2fsNtB5_4File9try_clone(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.z, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.xm) #26, !noalias !1310
  %i.ze = load i32, ptr %i.z, align 8, !range !1032, !noalias !1309, !noundef !16
  %i.zf = trunc nuw i32 %i.ze to i1
  br i1 %i.zf, label %bb.fk, label %bb.fj

bb.fi:                                            ; preds = %bb.ff
  call void @_RNvNtCs6JMX4GRUq9U_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #28, !noalias !1310
  unreachable

bb.fj:                                            ; preds = %bb.fh
  %i.zg = load i32, ptr %i.xn, align 4, !range !1035, !noalias !1309, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1309
  %i.zh = load i64, ptr %7, align 8, !noalias !1309, !noundef !16
  %i.zi = add i64 %i.zh, 1
  store i64 %i.zi, ptr %7, align 8, !noalias !1309
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.y, i8 0, i64 3, i1 false), !noalias !1299
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65521) %.sroa.16.i, i8 0, i64 65521, i1 false), !noalias !1299
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fh
  %i.zj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.zk = load ptr, ptr %i.zj, align 8, !noalias !1309, !nonnull !16, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1309
  %i.zl = load i64, ptr %7, align 8, !noalias !1309, !noundef !16
  %i.zm = add i64 %i.zl, 1
  store i64 %i.zm, ptr %7, align 8, !noalias !1309
  br label %_RNvCs4jkuqUqsG0h_8uu_shred7do_pass.exit.thread598

bb.fl:                                            ; preds = %bb.fj, %bb.fg, %.loopexit58.i
  %.sroa.9.sroa.7.0.i = phi i32 [ %.sroa.9.sroa.7.0.copyload.i, %.loopexit58.i ], [ %i.zd, %bb.fg ], [ 0, %bb.fj ]
  %.sroa.13.0.ph.i = phi ptr [ %.sroa.13.1.copyload.i, %.loopexit58.i ], [ %.sroa.4.i.sroa.4.3.copyload.i, %bb.fg ], [ null, %bb.fj ]
  %.sroa.18.0.ph.i = phi i32 [ undef, %.loopexit58.i ], [ 0, %bb.fg ], [ %i.zg, %bb.fj ]
  %.sroa.0.049.ph.i = phi i8 [ 2, %.loopexit58.i ], [ 0, %bb.fg ], [ 1, %bb.fj ]
  store i8 %.sroa.0.049.ph.i, ptr %i.ad, align 8, !noalias !1299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.0..sroa_idx.i307, ptr noundef nonnull align 1 dereferenceable(3) %i.y, i64 3, i1 false), !noalias !1299
  store i32 %.sroa.9.sroa.7.0.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 4, !noalias !1299
  store ptr %.sroa.13.0.ph.i, ptr %.sroa.5.0..sroa_idx.i308, align 8, !noalias !1299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(65524) %.sroa.616.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(65524) %.sroa.16.i, i64 65524, i1 false), !noalias !1299
  store i32 %.sroa.18.0.ph.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i, align 4, !noalias !1299
  store i64 0, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i, align 8, !noalias !1299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.616.sroa.6.0..sroa.616.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(312) %.sroa.20.i, i64 312, i1 false), !noalias !1299
  br i1 %exitcond.not.i1069, label %._crit_edge, label %.lr.ph1071

bb.fm:                                            ; preds = %bb.fu
  %i.zn = add nuw nsw i64 %.sroa.035.0.i1070, 1   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.zn, %12
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph1071

._crit_edge:                                      ; preds = %bb.fm, %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1299
  call fastcc void @_RNvMs0_Cs4jkuqUqsG0h_8uu_shredNtB5_11BytesWriter14bytes_for_pass(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ab, ptr noalias nofree noundef align 8 dereferenceable(65864) %i.ad, i64 noundef %13) #26, !noalias !1296
  %i.zo = load ptr, ptr %i.ab, align 8, !noalias !1299, !noundef !16 ; 2 uses
  %i.zp = icmp eq ptr %i.zo, null
  br i1 %i.zp, label %bb.fn, label %bb.fo

.lr.ph1071:                                       ; preds = %bb.fl, %bb.fm
  %.sroa.035.0.i1070 = phi i64 [ %i.zn, %bb.fm ], [ 0, %bb.fl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1299
  call fastcc void @_RNvMs0_Cs4jkuqUqsG0h_8uu_shredNtB5_11BytesWriter14bytes_for_pass(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ac, ptr noalias nofree noundef align 8 dereferenceable(65864) %i.ad, i64 noundef 65536) #26, !noalias !1296
  %i.zq = load ptr, ptr %i.ac, align 8, !noalias !1299, !noundef !16 ; 2 uses
  %i.zr = icmp eq ptr %i.zq, null
  br i1 %i.zr, label %bb.ft, label %bb.fu

bb.fn:                                            ; preds = %._crit_edge
  %i.zs = load ptr, ptr %i.xq, align 8, !noalias !1299, !nonnull !16, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1299
  br label %.loopexit.i310

bb.fo:                                            ; preds = %._crit_edge
  %i.zt = load i64, ptr %i.xq, align 8, !noalias !1299, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1299
  %i.zu = call fastcc noundef ptr @_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.by, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.zo, i64 noundef %i.zt) #26, !noalias !1296 ; 2 uses
  %.not38.i = icmp eq ptr %i.zu, null
  br i1 %.not38.i, label %bb.fp, label %.loopexit.i310

bb.fp:                                            ; preds = %bb.fo
  %i.zv = call noundef ptr @_RNvMs2_NtCs2vKOLqTMYjT_3std2fsNtB5_4File9sync_data(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.by) #26, !noalias !1296 ; 2 uses
  %.not39.i = icmp eq ptr %i.zv, null
  br i1 %.not39.i, label %bb.fq, label %.loopexit.i310

bb.fq:                                            ; preds = %bb.fp
  %.val42.i = load i8, ptr %i.ad, align 8, !range !1304, !noalias !1299, !noundef !16
  %cond.i.i = icmp eq i8 %.val42.i, 1
  br i1 %cond.i.i, label %bb.fr, label %bb.in

bb.fr:                                            ; preds = %bb.fq
  %.val43.i = load i32, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i, align 4, !noalias !1299
  %i.zw = call noundef i32 @close(i32 noundef %.val43.i) #26, !noalias !1296 ; 0 uses
  br label %bb.in

.loopexit.i310:                                   ; preds = %bb.fp, %bb.fo, %bb.fu, %bb.ft, %bb.fn
  %.sroa.04.1.i = phi ptr [ %i.zy, %bb.ft ], [ %i.aaa, %bb.fu ], [ %i.zs, %bb.fn ], [ %i.zu, %bb.fo ], [ %i.zv, %bb.fp ] ; 2 uses
  %.val.i311 = load i8, ptr %i.ad, align 8, !range !1304, !noalias !1299, !noundef !16
  %cond.i44.i = icmp eq i8 %.val.i311, 1
  br i1 %cond.i44.i, label %bb.fs, label %_RNvCs4jkuqUqsG0h_8uu_shred7do_pass.exit.thread598

bb.fs:                                            ; preds = %.loopexit.i310
  %.val41.i = load i32, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i, align 4, !noalias !1299
  %i.zx = call noundef i32 @close(i32 noundef %.val41.i) #26, !noalias !1296 ; 0 uses
  br label %_RNvCs4jkuqUqsG0h_8uu_shred7do_pass.exit.thread598

bb.ft:                                            ; preds = %.lr.ph1071
  %i.zy = load ptr, ptr %i.xp, align 8, !noalias !1299, !nonnull !16, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1299
  br label %.loopexit.i310

bb.fu:                                            ; preds = %.lr.ph1071
  %i.zz = load i64, ptr %i.xp, align 8, !noalias !1299, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1299
  %i.aaa = call fastcc noundef ptr @_RNvYNtNtCs2vKOLqTMYjT_3std2fs4FileNtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs4jkuqUqsG0h_8uu_shred(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.by, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.zq, i64 noundef %i.zz) #26, !noalias !1296 ; 2 uses
  %.not40.i = icmp eq ptr %i.aaa, null
  br i1 %.not40.i, label %bb.fm, label %.loopexit.i310

_RNvCs4jkuqUqsG0h_8uu_shred7do_pass.exit.thread598: ; preds = %bb.fs, %bb.fk, %.loopexit.i310
  %.sroa.04.0.ph.i.ph = phi ptr [ %.sroa.04.1.i, %.loopexit.i310 ], [ %i.zk, %bb.fk ], [ %.sroa.04.1.i, %bb.fs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1299
  br label %_RNvCs4jkuqUqsG0h_8uu_shred7do_pass.exit.thread

_RNvCs4jkuqUqsG0h_8uu_shred7do_pass.exit.thread:  ; preds = %bb.ez, %_RNvCs4jkuqUqsG0h_8uu_shred7do_pass.exit.thread598
  %.sroa.04.0.i597 = phi ptr [ %.sroa.04.0.ph.i.ph, %_RNvCs4jkuqUqsG0h_8uu_shred7do_pass.exit.thread598 ], [ %i.yh, %bb.ez ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1311
  store i64 0, ptr %i.w, align 8, !noalias !1311
  %.sroa.4.0..sroa_idx.i.i313 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i313, align 8, !noalias !1311
  %.sroa.5.0..sroa_idx.i.i314 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i314, align 8, !noalias !1311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1311
  store i64 1, ptr %i.v, align 8, !noalias !1311
  %.sroa.42.0..sroa_idx.i.i315 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.cx, ptr %.sroa.42.0..sroa_idx.i.i315, align 8, !noalias !1311
  %.sroa.53.0..sroa_idx.i.i316 = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.cz, ptr %.sroa.53.0..sroa_idx.i.i316, align 8, !noalias !1311
  %i.aab = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i8 0, ptr %i.aab, align 8, !noalias !1311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1317
  store i64 0, ptr %i.r, align 8, !noalias !1317
  %.sroa.4.0..sroa_idx.i.i.i317 = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i317, align 8, !noalias !1317
  %.sroa.5.0..sroa_idx.i.i.i318 = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i318, align 8, !noalias !1317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1317
  %i.aac = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 1610612768, ptr %i.aac, align 8, !noalias !1317
  store ptr %i.r, ptr %i.q, align 8, !noalias !1317
  %i.aad = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @100, ptr %i.aad, align 8, !noalias !1317
  %i.aae = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #26, !noalias !1321
  br i1 %i.aae, label %bb.fv, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs4jkuqUqsG0h_8uu_shred.exit.i.i319, !prof !22

bb.fv:                                            ; preds = %_RNvCs4jkuqUqsG0h_8uu_shred7do_pass.exit.thread
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #28, !noalias !1321
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs4jkuqUqsG0h_8uu_shred.exit.i.i319: ; preds = %_RNvCs4jkuqUqsG0h_8uu_shred7do_pass.exit.thread
  %.sroa.0.0.copyload4.i.i320 = load i64, ptr %i.r, align 8, !noalias !1322 ; 3 uses
  %.sroa.5.0.copyload7.i.i321 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i317, align 8, !noalias !1322, !nonnull !16, !noundef !16 ; 8 uses
  %.sroa.8.0.copyload10.i.i322 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i318, align 8, !noalias !1322 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1311
  switch i64 %.sroa.8.0.copyload10.i.i322, label %thread-pre-split.i.i.i357 [
    i64 0, label %.loopexit.i.i323
    i64 1, label %bb.fw
  ]

bb.fw:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs4jkuqUqsG0h_8uu_shred.exit.i.i319
  %i.aaf = load i8, ptr %.sroa.5.0.copyload7.i.i321, align 1, !alias.scope !1323, !noalias !1326, !noundef !16 ; 2 uses
  switch i8 %i.aaf, label %bb.fx [
    i8 43, label %.loopexit.i.i323
    i8 45, label %.loopexit.i.i323
  ]

thread-pre-split.i.i.i357:                        ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs4jkuqUqsG0h_8uu_shred.exit.i.i319
  %.pr.i.i.i358 = load i8, ptr %.sroa.5.0.copyload7.i.i321, align 1, !alias.scope !1323, !noalias !1326
  br label %bb.fx

bb.fx:                                            ; preds = %thread-pre-split.i.i.i357, %bb.fw
  %i.aag = phi i8 [ %.pr.i.i.i358, %thread-pre-split.i.i.i357 ], [ %i.aaf, %bb.fw ]
  switch i8 %i.aag, label %bb.ge [
    i8 43, label %bb.fy
    i8 45, label %bb.fz
  ]

bb.fy:                                            ; preds = %bb.fx
  %i.aah = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload7.i.i321, i64 1
  %i.aai = add nsw i64 %.sroa.8.0.copyload10.i.i322, -1
  br label %bb.ge

bb.fz:                                            ; preds = %bb.fx
  %i.aaj = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload7.i.i321, i64 1 ; 2 uses
  %i.aak = add nsw i64 %.sroa.8.0.copyload10.i.i322, -1 ; 3 uses
  %i.aal = icmp samesign ult i64 %.sroa.8.0.copyload10.i.i322, 17
  br i1 %i.aal, label %.preheader114.i.i.i336, label %.lr.ph.i.i.i329

.preheader114.i.i.i336:                           ; preds = %bb.fz
  %.not103137.i.i.i337 = icmp eq i64 %i.aak, 0
  br i1 %.not103137.i.i.i337, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i334, label %.lr.ph141.i.i.i338

.lr.ph.i.i.i329:                                  ; preds = %bb.fz, %bb.gc
  %.sroa.0.1136.i.i.i330 = phi ptr [ %i.aam, %bb.gc ], [ %i.aaj, %bb.fz ] ; 2 uses
  %.sroa.26.1135.i.i.i331 = phi i64 [ %i.aan, %bb.gc ], [ %i.aak, %bb.fz ]
  %.sroa.084.0134.i.i.i332 = phi i64 [ %i.aay, %bb.gc ], [ 0, %bb.fz ]
  %i.aam = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i.i330, i64 1
  %i.aan = add nsw i64 %.sroa.26.1135.i.i.i331, -1 ; 2 uses
  %i.aao = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i.i332, i64 10) ; 2 uses
  %i.aap = extractvalue { i64, i1 } %i.aao, 0
  %i.aaq = extractvalue { i64, i1 } %i.aao, 1
  br i1 %i.aaq, label %.loopexit.i.i323, label %bb.ga, !prof !22

bb.ga:                                            ; preds = %.lr.ph.i.i.i329
  %i.aar = load i8, ptr %.sroa.0.1136.i.i.i330, align 1, !alias.scope !1323, !noalias !1326, !noundef !16
  %i.aas = zext i8 %i.aar to i32
  %i.aat = add nsw i32 %i.aas, -48                ; 2 uses
  %i.aau = icmp ult i32 %i.aat, 10
  br i1 %i.aau, label %bb.gb, label %.loopexit.i.i323

bb.gb:                                            ; preds = %bb.ga
  %i.aav = zext nneg i32 %i.aat to i64
  %i.aaw = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.aap, i64 %i.aav) ; 2 uses
  %i.aax = extractvalue { i64, i1 } %i.aaw, 1
  br i1 %i.aax, label %.loopexit.i.i323, label %bb.gc, !prof !22

bb.gc:                                            ; preds = %bb.gb
  %i.aay = extractvalue { i64, i1 } %i.aaw, 0     ; 2 uses
  %.not102.i.i.i333 = icmp eq i64 %i.aan, 0
  br i1 %.not102.i.i.i333, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i334, label %.lr.ph.i.i.i329

.lr.ph141.i.i.i338:                               ; preds = %.preheader114.i.i.i336, %bb.gd
  %.sroa.0.2140.i.i.i339 = phi ptr [ %i.abf, %bb.gd ], [ %i.aaj, %.preheader114.i.i.i336 ] ; 2 uses
  %.sroa.26.2139.i.i.i340 = phi i64 [ %i.abe, %bb.gd ], [ %i.aak, %.preheader114.i.i.i336 ]
  %.sroa.084.2138.i.i.i341 = phi i64 [ %i.abh, %bb.gd ], [ 0, %.preheader114.i.i.i336 ]
  %i.aaz = load i8, ptr %.sroa.0.2140.i.i.i339, align 1, !alias.scope !1323, !noalias !1326, !noundef !16
  %i.aba = zext i8 %i.aaz to i32
  %i.abb = add nsw i32 %i.aba, -48                ; 2 uses
  %i.abc = icmp ult i32 %i.abb, 10
  br i1 %i.abc, label %bb.gd, label %.loopexit.i.i323

bb.gd:                                            ; preds = %.lr.ph141.i.i.i338
  %i.abd = mul i64 %.sroa.084.2138.i.i.i341, 10
  %i.abe = add nsw i64 %.sroa.26.2139.i.i.i340, -1 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i.i339, i64 1
  %i.abg = zext nneg i32 %i.abb to i64
  %i.abh = sub i64 %i.abd, %i.abg                 ; 2 uses
  %.not103.i.i.i342 = icmp eq i64 %i.abe, 0
  br i1 %.not103.i.i.i342, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i334, label %.lr.ph141.i.i.i338

end_hunk_0
